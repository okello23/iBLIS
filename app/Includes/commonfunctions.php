<?php
/**
 * Change a date from MySQL database Format (yyyy-mm-dd) to the format displayed on pages(mm/dd/yyyy)
 * 
 * If the date from the database is NULL, it is transformed to an empty string for display on the pages 
 *
 * @param String $mysqldate The date in MySQL format 
 * @return String the date in short date format, or an empty string if no date is provided 
 */
function changeMySQLDateToPageFormat($mysqldate) {
	if (isEmptyString($mysqldate)) {
		return $mysqldate;
	} else {
		return date('d/m/Y', strtotime($mysqldate));
	}
}

/**
 * Transform a date from the format displayed on pages(mm/dd/yyyy) to the MySQL database date format (yyyy-mm-dd). 
 * If the date from the database is an empty string or the string NULL, it is transformed to a NULL value.
 *
 * @param String $pagedate The string representing the date
 * @return String The MYSQL datetime format or NULL if the provided date is an empty string or the string NULL 
 */
function changeDateFromPageToMySQLFormat($pagedate) {
	if ($pagedate == "NULL") {
		return NULL;
	}
	if (isEmptyString($pagedate)) {
		return NULL;
	} else {
		return date("Y-m-d H:i:s", strtotime($pagedate));
	}
}


/**
 * Check whether or not the value of the key in the specified array is empty
 *
 * @param String $key The key whose value is to be checked
 * @param Array $arr The array to check  
 * 
 * @return bool Whether or not the array key is empty
 */
function isArrayKeyAnEmptyString($key, $arr) {
	if (!array_key_exists($key, $arr)) {
		return true; 
	}
	if (empty($arr[$key])) {
		return true; 
	}
	if (is_string($arr[$key])) {
		return isEmptyString($arr[$key]);
	}
	return false; 
}
/**
 * Check whether or not the string is empty. The string is emptied
 *
 * @param String $str The string to be checked
 * 
 * @return boolean Whether or not the string is empty
 */
function isNotAnEmptyString($str) {
	return ! isEmptyString($str);
}

/**
 * Return a debug message with a break tag before and two break tags after
 *
 * @param Object $obj The object to be printed
 */
function debugMessage($obj) {
	echo "<br />";
	print_r($obj);
	echo "<br /><br />";
}
/**
 * Print the Doctrine management entity
 *
 * @param Object $obj The object to be printed
 
function debugEntity($obj) {
    echo "<br />";
    \Doctrine\Common\Util\Debug::dump($obj);
    echo "<br /><br />";
}*/

/**
 *  Merge the arrays passed to the function and keep the keys intact.
 *  If two keys overlap then it is the last added key that takes precedence.
 * 
 * @return Array the merged array
 */
function array_merge_maintain_keys() {
	$args = func_get_args();
	$result = array();
	foreach ( $args as &$array ) {
		foreach ( $array as $key => &$value ) {
			$result[$key] = $value;
		}
	}
	return $result;
}

# function that trims every value of an array
function trim_value(&$value) {
	$value = trim($value);
}

/**
 * Recursively Remove empty values from an array. If any of the keys contains an 
 * array, the values are also removed.
 *
 * @param Array $input The array
 * @return Array with the specified values removed or the filtered values
 */
function array_remove_empty($arr) {
	$narr = array();
	while ( list ($key, $val) = each($arr) ) {
		if (is_array($val)) {
			$val = array_remove_empty($val);
			// does the result array contain anything?
			if (count($val) != 0) {
				// yes :-)
				$narr[$key] = $val;
			}
		} else {
			if (! isEmptyString($val)) {
				$narr[$key] = $val;
			}
		}
	}
	unset($arr);
	return $narr;

}


/**
 * Wrapper function for the encoding of the urls using base64_encode 
 *
 * @param String $str The string to be encoded
 * @return String The encoded string 
 */
function encode($str) {
	return base64_encode($str); 
}
/**
 * Wrapper function for the decoding of the urls using base64_decode 
 *
 * @param String $str The string to be decoded
 * @return String The encoded string 
 */
function decode($str) {
	return base64_decode($str); 
}

/**
 * Generate an HTML list from an array of values
 *
 * @param Array $array
 * @return String 
 */
function createHTMLListFromArray($array) {
	$str = ""; 
	// return empty string if no array is passed
	if (!is_array($array)) {
		return $str; 
	}
	// return an empty string if the array is empty
	if (!$array) {
		return $str; 
	}
	
	// opening list tag and the first li element
	$str  = "<ul><li>";
	// explode the array and generate the inner list items
	$str .= implode($array, "</li><li>");
	// close the last list item, and the ul
	$str .= "</li></ul>"; 
	
	return $str; 
}


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
	
	/**
	 * Get a database connection to execute straight SQL queries
	 * 
	 * @return Doctrine\DBAL\Connection 
	 */
	
	
	
	function isValidObject($object){
		return is_object($object) && (count(get_object_vars($object)) > 0);
	}
	
	
	
    /**
     * Return the file extension from a file name
     * @param string $filename
     * @return string The file extension
     */
    function findExtension($filename){
        return substr(strrchr($filename,'.'),1);
    }
    /** Displays the file siz in bytes, KB, MB or GB depending on your selection, from the size stored for the
     * document.
     *
     * @param integer $size The size of the file
     * @param integer $precision The number of decimal places to show  
     *
     * @return String The file size with the defined type of FALSE if there is an invalid size
     */
    function formatBytes($size, $precision = 2) {
        $base = log($size) / log(1024);
        $suffixes = array('', 'KB', 'MB', 'GB', 'TB');
    
        return round(pow(1024, $base - floor($base)), $precision) . " ".$suffixes[floor($base)];
    }
    
	
	
	
	/**
	 * Return the description of a lookup value 
	 * 
	 * @param String $lookuptype The Lookuptype - passed dynamically, that is why a static method is used
	 * 
	 * @param String $lookuptypevalue The actual lookvalue that was saved, now needs translation 
	 * 
	 * @return Array containing the lookup types for the values or false if an error occurs
	 *
	 */
	 function getLookupValueDescription($lookuptype, $lookuptypevalue) {
	    $cache_key = $lookuptype;
		//try to load the lookup from cache - if it exist
	    $result = Cache::get($cache_key, null);

	    if (!$result) {
			//pluck out the needed column
		$result = DB::table('lookuptypevalue as lv')->select('lv.lookupvaluedescription')->join('lookuptype as l','lv.lookuptypeid', 'l.id')
												->where('l.name','=',$lookuptype)
												->where('lv.lookuptypevalue','=',$lookuptypevalue)->pluck('lv.lookupvaluedescription');
		//DB::table('users')->pluck('columname');
    		// add the result to the cache
			Cache::put($cache_key, $lookuptype.$lookuptypevalue, \Config::get('app.lookup_value_cache_minutes'));
	   } 
	   return $result[0];
	}
	
	
	function generateSlug($str, $delimiter = '-'){
			$slug = strtolower(trim(preg_replace('/[\s-]+/', $delimiter, preg_replace('/[^A-Za-z0-9-]+/', $delimiter, preg_replace('/[&]/', 'and', preg_replace('/[\']/', '', iconv('UTF-8', 'ASCII//TRANSLIT', $str))))), $delimiter));
			return $slug;
		} 
	function getTimeString($date){
		//set the default timezone
		date_default_timezone_set('Africa/Kampala');
		$now_seconds = strtotime((new DateTime())->format("Y-m-d H:i:s"));
		$display_string = '';
		$message_date = strtotime($date);
		//$message_date = strtotime('2018-01-17 08:57:22');
		$seconds = $now_seconds - $message_date;
		if($seconds < 60){
			$display_string = $seconds.' seconds ago';
		}else{
			$minutes = round($seconds/60);
			if($minutes < 60){
				if($minutes < 1){
					$display_string = $minutes.' minute ago';
				}else{
					$display_string = $minutes.' minutes ago';
				}
			}else{
				$hours = round($seconds/(60*60));
				if($hours < 24){
					if($hours < 2){
						$display_string = $hours.' hour ago';
					}else{
						$display_string = $hours.' hours ago';
					}
				}else{
					$days = round(($seconds/(60*60))/24);
					if($days < 6){
						if($days < 2){
							$display_string = $days.' day ago';
						}else{
							$display_string = $days.' day ago';
						}
					}else{
						$display_string = date('d/m/Y', $message_date);
					}
				}
			}
		}
		return $display_string;
		exit;
	}

	function generateRationInput($array_data,$field_name, $style = 'inline'){
		$options_string = '';
		foreach($array_data as $key =>$value){
			$options_string .= Form::radio($field_name,  $key).' 
			<span class="input-tag">'.$value.' </span>';
		}
		return $options_string;
	}
	function getPageDateFormat($date){
		return date('d/m/Y',strtotime($date));
	}
	
	function getMysqlDateFormat($date){
		return date("Y-m-d", strtotime($date));
	}
	function getDailyRoutingForBike($hubid, $bikeid, $thedate){
		$query = "SELECT dd.numberofsamples, dd.numberofresults, f.name, lv.lookupvaluedescription as category 
		FROM dailyroutingdetail as dd 
		INNER JOIN facility as f ON (dd.facilityid = f.id ) 
		INNER JOIN lookuptypevalue lv ON (lv.id = dd.samplecategory AND lv.lookuptypeid)
		INNER JOIN lookuptype l ON (l.id = lv.lookuptypeid)
		WHERE dd.hubid = '".$hubid."' AND dd.bikeid = '".$bikeid."' AND dd.thedate = '".$thedate."'
		ORDER BY f.name ASC";
		$dailyroutingdetails = \DB::select($query);
		return $dailyroutingdetails;
	}
	


function time_elapsed($secs){
    $bit = array(
        'y' => $secs / 31556926 % 12,
        'w' => $secs / 604800 % 52,
        'd' => $secs / 86400 % 7,
        'h' => $secs / 3600 % 24,
        'm' => $secs / 60 % 60,
        's' => $secs % 60
        );
	$ret = array();
    foreach($bit as $k => $v)
        if($v > 0)$ret[] = $v . $k;
        
    return join(' ', $ret);
    }

  function getLabSection($test_type_id){
 	$query = "SELECT tc.name FROM test_types t
 	INNER JOIN test_categories tc ON(t.test_category_id = tc.id)
 	WHERE t.id = ".$test_type_id;
 	$result = DB::select($query);
 	return capitalizeFirstLetter($result[0]->name);
 }

 function getSpecimenName($specimen_id){
 	$query = "SELECT st.name FROM specimens s
 	INNER JOIN specimen_types st ON(s.specimen_type_id = st.id)
 	WHERE s.id = ".$specimen_id;
 	$result = DB::select($query);
 	return capitalizeFirstLetter($result[0]->name);
 }
 function capitalizeFirstLetter($str){
 	return ucwords(strtolower($str)); 
 }

 function getRejectionReasons($test_id){
 	$query = "SELECT rr.reason from unhls_tests t
	INNER JOIN analytic_specimen_rejections asr ON (asr.test_id = t.id)
	INNER JOIN analytic_specimen_rejection_reasons asrr ON (asrr.rejection_id = asr.id)
	LEFT JOIN rejection_reasons rr ON (asrr.reason_id = rr.id) 
	WHERE t.id = ".$test_id;
	$result = DB::select($query);
	return $result;
 }

function getIsolatedOrganismResult($isolated_organism_id, $drug_id){
	$query = "select dsm.symbol from isolated_organisms io
		left join drug_susceptibility ds on(io.id = ds.isolated_organism_id)
		left join drug_susceptibility_measures dsm on (dsm.id = ds.drug_susceptibility_measure_id)
		WHERE io.id = ".$isolated_organism_id." AND drug_id = ".$drug_id;

	//\Log::info($query);

	$processed_result = '';
	if($isolated_organism_id != '' && $drug_id != '')
	{
		$result = DB::select($query);
		
		if(count($result)){
			
			$processed_result  = $result[0]->symbol;

		}
	}
	//dd($query);
	return $processed_result;
}

function countIsolatedOrganism($test_id)
{
	$query = "select count(organism_id) FROM isolated_organisms io WHERE io.test_id = ".$test_id;
	$result = DB::select($query);
	return $result;  

}


function newAge($dateOfBirth){

		$new_age = "";
		$at = new DateTime('now');

		$dateOfBirth = new DateTime($dateOfBirth);
		$interval = $dateOfBirth->diff($at);

		$days = $interval->format('%a');

		if($days < 30){
			$new_age = $days . " days";

		}elseif ($days >= 30 && $days < 365) {
			$months = round($days/12);
			$new_age = $months . " months";
		}else{
			$years = round($days/365);
			$new_age = $years . " years";
		}
		return $new_age;
	}
	


?>