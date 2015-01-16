<?php

class SanitasInterfacer implements InterfacerInterface{

    public function retrieve($labRequest)
    {
        //In sanitas case request are sent to us thus not much to do here
        //validate input
        //Check if json
        $this->process($labRequest);
    }

    /**
    *   Send is the main entry point into the interfacer
    *   We process and send the current testID and also try and resend tests that have failed to send.
    */
    public function send($testId)
    {
        //Sending current test

        $this->process($testId);
        //Sending all pending requests also
        $pendingRequests = ExternalDump::where('result_returned', 2);

        foreach ($pendingRequests as $pendingRequest) {
            $this->process($pendingRequest->test_id);
        }
    }


    /**
    * Process Sends results back to the originating system
    *
    * @param testId the id of the test to send
    * @param status either in testing stage or verification stage or edit
    */
    public function process($testId)
    {
        //if($comments==null or $comments==''){$comments = 'No Comments';

        //We use curl to send the requests
        $httpCurl = curl_init(Config::get('kblis.sanitas-url'));
        curl_setopt($httpCurl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($httpCurl, CURLOPT_POST, true);

        //Get the test and results 
        $test = Test::find($testId);
        $testResults = $test->testResults;

        //Measures
        $testTypeId = $test->testType()->get()->lists('id')[0];
        $testType = TestType::find($testTypeId);
        $testMeasures = $testType->measures;

        //Get external requests and all its children
        $externalDump = new ExternalDump();
        $externRequest = ExternalDump::where('test_id', '=', $testId)->get();

        if(empty($externRequest->first())){
            //Not a request we can send back
            return null;
        }

        $labNo = $externRequest->lists('labNo')[0];
        $externlabRequestTree = $externalDump->getLabRequestAndMeasures($labNo);

        $resultForMainTest = "";
        //IF the test has no children prepend the status to the result
        if ($externlabRequestTree->isEmpty()) {
            if($test->test_status_id == Test::COMPLETED){
                $resultForMainTest = "Done: ".$testResults->first()->result;;
            }
            elseif ($test->test_status_id == Test::VERIFIED) {
                $resultForMainTest = "Tested and verified: ".$testResults->first()->result;;
            }
        }
        //IF the test has children, prepend the status to the interpretation
        else {
            
            if($test->test_status_id == Test::COMPLETED){
                $resultForMainTest = "Done ".$test->interpretation;
            }
            elseif ($test->test_status_id == Test::VERIFIED) {
                $resultForMainTest = "Tested and verified ".$test->interpretation;
            }
        }
        $jsonResponseString = sprintf('{"labNo": "%s","requestingClinician": "%s", "result": "%s", "verifiedby": "%s", "techniciancomment": "%s"}', 
            $labNo, $test->tested_by, $resultForMainTest, $test->tested_by, $test->test_status_id);
        $this->sendRequest($httpCurl, $jsonResponseString, $labNo);

        //loop through labRequests and foreach of them get the result and put in an array
        foreach ($externlabRequestTree as $key => $externlabRequest){ 
            $mKey = array_search($externlabRequest->investigation, $testMeasures->lists('name'));
            
            if($mKey === false){
                Log::error("MEASURE NOT FOUND: Measure $externlabRequest->investigation not found in our system");
            }
            else {
                $measureId = $testMeasures->get($mKey)->id;

                $rKey = array_search($measureId, $testResults->lists('measure_id'));
                $matchingResult = $testResults->get($rKey);

                $jsonResponseString = sprintf('{"labNo": "%s","requestingClinician": "%s", "result": "%s", "verifiedby": "%s", "techniciancomment": "%s"}', 
                            $externlabRequest->labNo, $test->tested_by, $matchingResult->result, $test->tested_by, $test->test_status_id);
                $this->sendRequest($httpCurl, $jsonResponseString, $externlabRequest->labNo);
            }
        }
        curl_close($httpCurl);
    }

    /**
    *   Function to send Json request using Curl
    **/

    private function sendRequest($httpCurl, $jsonResponse, $labNo)
    {
        //Foreach result in the array of results send to sanitas-url in config
        curl_setopt($httpCurl, CURLOPT_POSTFIELDS, "labResult=".$jsonResponse);

        $response = curl_exec($httpCurl);

        //"Test updated" is the actual response 
        //TODO: Replace true with actual expected response this is just for testing
        if($response == true)
        {
            //Set status in external lab-request to `sent`
            $updatedExternalRequest = ExternalDump::where('labNo', '=', $labNo)->first();
            $updatedExternalRequest->result_returned = 1;
            $updatedExternalRequest->save();
        }
        else if($response == false)
        {
            //Set status in external lab-request to `sent`
            $updatedExternalRequest = ExternalDump::where('labNo', '=', $labNo)->first();
            $updatedExternalRequest->result_returned = 2;
            $updatedExternalRequest->save();

            Log::error("HTTP Error: SanitasInterfacer failed to send $jsonResponse : Error message "+ curl_error($httpCurl));
        }
    }

    /**
    * Function for saving the data to externalDump table
    * 
    * @param $labrequest the labrequest in array format
    * @param $testId the testID to save with the labRequest or 0 if we do not have the test
    *        in our systems.
    */
    public function saveToExternalDump($labRequest, $testId)
    {
        //Dumping all the received requests to stagingTable
        $dumper = ExternalDump::firstOrNew(array('labNo' => $labRequest['labNo']));
        $dumper->labNo = $labRequest['labNo'];
        $dumper->parentLabNo = $labRequest['parentLabNo'];
        $dumper->test_id = $testId;
        $dumper->requestingClinician = $labRequest['requestingClinician'];
        $dumper->investigation = $labRequest['investigation'];
        $dumper->provisional_diagnosis = '';
        $dumper->requestDate = $labRequest['requestDate'];
        $dumper->orderStage = $labRequest['orderStage'];
        $dumper->patientVisitNumber = $labRequest['patientVisitNumber'];
        $dumper->patient_id = $labRequest['patient']['id'];
        $dumper->fullName = $labRequest['patient']["fullName"];
        $dumper->dateOfBirth = $labRequest['patient']["dateOfBirth"];
        $dumper->gender = $labRequest['patient']['gender'];
        $dumper->address = $labRequest['address']["address"];
        $dumper->postalCode = '';
        $dumper->phoneNumber = $labRequest['address']["phoneNumber"];
        $dumper->city = $labRequest['address']["city"];
        $dumper->cost = $labRequest['cost'];
        $dumper->receiptNumber = $labRequest['receiptNumber'];
        $dumper->receiptType = $labRequest['receiptType'];
        $dumper->waiver_no = '';
        $dumper->system_id = "sanitas";
        $dumper->save();
    }
}