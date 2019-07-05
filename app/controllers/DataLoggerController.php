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

		$fromRedirect = Session::pull('fromRedirect');

		$date2 = new DateTime();
		$handle = curl_init();

		curl_setopt($handle, CURLOPT_URL,  "https://admin.datapoint.abbott/api/v1/results/GetByDateAdded?StartDate=2019-01-01&amp");
		curl_setopt($handle,CURLOPT_RETURNTRANSFER, true);
		curl_setopt($handle,CURLOPT_HTTPHEADER, array(
			"Authorization: 4e6034b7bdbdceee66ae1e92bb1ffb3d",
			"Postman-Token: 09bc9c28-4da4-4451-9371-4417e80b3d1a",
			"cache-control: no-cache"
		));

		$response = curl_exec($handle);
		curl_close($handle);
		$content = json_decode($response, true);
		$results = $content['Results'];

		for($i=0; $i<sizeof($results); $i++){

			$d =  DataLogger::InsertOnDuplicate([
				'id' => $results[$i]['Id'],'dataAdded' => $results[$i]['DateAdded'],'DeviceSerialNumber' => $results[$i]['DeviceSerialNumber'],'DeviceType' => $results[$i]['DeviceSerialNumber'],'DeviceTypeString' => $results[$i]['DeviceTypeString'],'Operator' => $results[$i]['Operator'],'SiteName' => $results[$i]['SiteName'],'TestId' => $results[$i]['TestId'],'Sample' => $results[$i]['Sample'],'IsEidSample' => $results[$i]['IsEidSample'],'ResultValue' => $results[$i]['ResultValue'],'SpecimenSource' => $results[$i]['SpecimenSource'],'ResultDate' => $results[$i]['ResultDate'],'ErrorValue' => $results[$i]['ErrorValue'],'SoftwareVersion' => $results[$i]['SoftwareVersion'],'Disease' => $results[$i]['Disease'],'CatridgeType' => $results[$i]['CartridgeType'],'CatridgeId' => $results[$i]['CartridgeId'],'CatridgeLot' => $results[$i]['CartridgeLot'],'CatridgeExpiryDate' => $results[$i]['CartridgeExpiryDate'],'ResultType' => $results[$i]['ResultType'],'HasErrors' => $results[$i]['HasErrors'],'IsSuppressed' => $results[$i]['IsSuppressed'],'Qc' => $results[$i]['Qc'],'DateApproved' => $results[$i]['DateApproved'],'ApprovedBy' => $results[$i]['ApprovedBy'],'ResultStatus' => $results[$i]['ResultStatus'],'ResultStatusString' => $results[$i]['ResultStatusString'],'CatridgeLotNumberAndId' => $results[$i]['CartridgeLotNumberAndId'],'ResultDateString' => $results[$i]['ResultDateString'],'DateAddedString' => $results[$i]['DateAddedString'],'CatridgeTypeString' => $results[$i]['CartridgeTypeString'],'SpecimenSourceString' => $results[$i]['SpecimenSourceString'],'DiseaseString' => $results[$i]['DiseaseString'],'CatridgeExpiryDateString' => $results[$i]['CartridgeExpiryDateString'],'ResultTypeString' => $results[$i]['ResultTypeString']]);
				$d->save();
			}

			$logger = DataLogger::orderBy('dataAdded', 'DESC')->get();

			return View::make('datalogger.index')
			->with('logger', $logger)
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
