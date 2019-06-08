<?php

class DataLoggerController extends \BaseController {

	/**
	* Display a listing of the resource.
	*
	* @return Response
	*/

	public function index()
	{
		// code...
		$logger = DataLogger::all();

		return View::make('datalogger.index')
		->with('logger', $logger);
	}

	public function logger()
	{
		$fromRedirect = Session::pull('fromRedirect');

		$date2 = new DateTime();
		$handle = curl_init();

		curl_setopt($handle, CURLOPT_URL,  "https://dp3admintest.aleredatapoint.com/api/v1/results/GetByDateAdded?StartDate=2019-05-21&amp;DeviceType=DataLogger&amp;CartridgeTypes=DetermineHiv");
		curl_setopt($handle,CURLOPT_RETURNTRANSFER, true);
		curl_setopt($handle,CURLOPT_HTTPHEADER, array(
			"Authorization: a6df55085178ff4c65c1c94c8de1cd01",
			"Postman-Token: 09bc9c28-4da4-4451-9371-4417e80b3d1a",
			"cache-control: no-cache"
		));

		$response = curl_exec($handle);
		curl_close($handle);
		$content = json_decode($response, true);
		$results = $content['Results'];

		for($i=0; $i<sizeof($results); $i++){

			$d = new DataLogger;
			$d->id = $results[$i]['Id'];
			$d->dataAdded = $results[$i]['DateAdded'];
			$d->DeviceSerialNumber = $results[$i]['DeviceSerialNumber'];
			$d->DeviceType = $results[$i]['DeviceSerialNumber'];
			$d->DeviceTypeString = $results[$i]['DeviceTypeString'];
			$d->Operator = $results[$i]['Operator'];
			$d->SiteName = $results[$i]['SiteName'];
			$d->TestId = $results[$i]['TestId'];
			$d->Sample = $results[$i]['Sample'];
			$d->IsEidSample = $results[$i]['IsEidSample'];
			$d->ResultValue =$results[$i]['ResultValue'];
			$d->SpecimenSource = $results[$i]['SpecimenSource'];
			$d->ResultDate = $results[$i]['ResultDate'];
			$d->ErrorValue = $results[$i]['ErrorValue'];
			$d->SoftwareVersion = $results[$i]['SoftwareVersion'];
			$d->Disease = $results[$i]['Disease'];
			$d->CatridgeType = $results[$i]['CartridgeType'];
			$d->CatridgeId = $results[$i]['CartridgeId'];
			$d->CatridgeLot = $results[$i]['CartridgeLot'];
			$d->CatridgeExpiryDate = $results[$i]['CartridgeExpiryDate'];
			$d->ResultType = $results[$i]['ResultType'];
			$d->HasErrors = $results[$i]['HasErrors'];
			$d->IsSuppressed = $results[$i]['IsSuppressed'];
			$d->Qc = $results[$i]['Qc'];
			$d->DateApproved = $results[$i]['DateApproved'];
			$d->ApprovedBy = $results[$i]['ApprovedBy'];
			$d->ResultStatus = $results[$i]['ResultStatus'];
			$d->ResultStatusString = $results[$i]['ResultStatusString'];
			$d->CatridgeLotNumberAndId = $results[$i]['CartridgeLotNumberAndId'];
			$d->ResultDateString = $results[$i]['ResultDateString'];
			$d->DateAddedString = $results[$i]['DateAddedString'];
			$d->CatridgeTypeString = $results[$i]['CartridgeTypeString'];
			$d->SpecimenSourceString = $results[$i]['SpecimenSourceString'];
			$d->DiseaseString = $results[$i]['DiseaseString'];
			$d->CatridgeExpiryDateString = $results[$i]['CartridgeExpiryDateString'];
			$d->ResultTypeString = $results[$i]['ResultTypeString'];
			$d->save();
		}
		return View::make('datalogger.index')
		->with('message','New Data Received');
	}


	public function create()
	{
		//
	}

	public function store()
	{
		//
	}


	/**
	* Display the specified resource.
	*
	* @param  int  $id
	* @return Response
	*/
	public function show($id)
	{
		//
	}


	/**
	* Show the form for editing the specified resource.
	*
	* @param  int  $id
	* @return Response
	*/
	public function edit($id)
	{
		//
	}

	/**
	* Update the specified resource in storage.
	*
	* @param  int  $id
	* @return Response
	*/
	public function update($id)
	{
		//
	}

	/**
	* Remove the specified resource from storage.
	*
	* @param  int  $id
	* @return Response
	*/
	public function delete($id)
	{
		//
	}
}
