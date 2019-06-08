<?php
	/**
	 * Decode all html entities of an array  
	 * @param Array $elem the array to be decoded
	 */
	function decodeHtmlEntitiesInArray(&$elem){ 
  		if (!is_array($elem)) { 
    		$elem=html_entity_decode($elem); 
		}  else  { 
			foreach ($elem as $key=>$value){
				$elem[$key]=decodeHtmlEntitiesInArray($value);
			} 
  		} 
		return $elem; 
	}
	
	# This class require_onces functions to access and use the different drop down lists within
	# this application

	/**
	 * function to return the results of an options query as array. This function assumes that
	 * the query returns two columns optionvalue and optiontext which correspond to the corresponding key
	 * and values respectively. 
	 * 
	 * The selection of the names is to avoid name collisions with database reserved words
	 * 
	 * @param String $query The database query
	 * 
	 * @return Array of values for the query 
	 */
	function getOptionValuesFromDatabaseQuery($query) {
		//$conn = getDatabaseConnection(); 
		//echo $query;
		$result = \DB::select($query);
		//print_r($result);
		//exit;
		$valuesarray = array();
		foreach ($result as $value) {
			$valuesarray[$value->optionvalue]	= htmlentities($value->optiontext);
		}
		//print_r($valuesarray);
		//exit;
		return decodeHtmlEntitiesInArray($valuesarray);
	}
      
	//get all hubs
	/*function getAllHubs(){
		$hubs = \App\Models\Facility::where('parentid', '=', NULL)->pluck('hubname', 'id');
		return $hubs;
	}
	*/
	
?>