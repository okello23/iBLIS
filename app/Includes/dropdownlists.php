<?php

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
		$result = DB::select($query);
		$valuesarray = array();
		foreach ($result as $value) {
			$valuesarray[$value->optionvalue]	= htmlentities($value->optiontext);
		}
		return decodeHtmlEntitiesInArray($valuesarray);
	}
      
	
	
	function getEquipmentAndUniqueNumber(){
		$query = "SELECT CONCAT(name,'-',unique_number) AS 'optiontext', id as optionvalue FROM unhls_equipment_inventory";
		return getOptionValuesFromDatabaseQuery($query);
	}
	
	function getGenerateHtmlforAjaxSelect($options, $empty_string = 'Select One'){
		$select_string = '<option value="">'.$empty_string.'</option>';
		foreach($options as $key => $value){
			$select_string .= '<option value="'.$key.'">'.$value.'</option>';
		}
		return $select_string;
	}
	
?>