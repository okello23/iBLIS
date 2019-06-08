<?php
use Illuminate\Database\Eloquent\SoftDeletingTrait;

class Lookup extends Eloquent
{
	protected $table = "lookups";
	protected $fillable = ['name', 'description'];
	
	/**
	 * Return the values of the options for the lookup type
	 * 
	 * @param String $orderby The column to order the results by, either optiontext - the text or optionvalue the value 
	 * 
	 * @return Array containing the lookup types for the values or false if an error occurs
	 *
	 */
	function getOptionValuesAndDescription($orderby = "optiontext") {	
		
		$response_data = array();
		$response_code = 200;
	
		// TRY TO RETURN A CACHED RESPONSE
		$cache_key = $this->name;
		$lookupvalues = \Cache::get($cache_key, null);
		// IF NO CACHED RESPONSE, QUERY THE DATABASE
		if (!$lookupvalues) {
			try {
				$optionvaluesquery = "SELECT lv.lookup_value_description as optiontext, lv.lookup_value as optionvalue FROM lookups AS l , 
		lookup_values AS lv WHERE l.id =  lv.lookup_id AND l.name ='".$this->name."' ORDER BY ".$orderby;
			$lookupvalues = getOptionValuesFromDatabaseQuery($optionvaluesquery);
			
				\Cache::put($cache_key, $lookupvalues, 5);
			} catch (PDOException $ex) {
				$response_code = 500;
				$response_data['error'] = $ex->getCode();
				print_r($ex->getCode());exit;
			}
		}
		return $lookupvalues;
	}
	/**
	 * Return the description of a lookup value 
	 * 
	 * @param String $lookup The Lookuptype - passed dynamically, that is why a static method is used
	 * 
	 * @param String $lookupvalue The actual lookvalue that was saved, now needs translation 
	 * 
	 * @return Array containing the lookup types for the values or false if an error occurs
	 *
	 */
	static function getLookupValueDescription($lookup, $lookupvalue) {
	    $cache_key = $lookup;
		//try to load the lookup from cache - if it exist
	    $result = \Cache::get($cache_key, null);

	    if (!$result) {
			//pluck out the needed column
		$result = \DB::table('lookup_values as lv')->select('lv.lookup_value_description')->join('lookups as l','lv.lookup_id', 'l.id')
												->where('l.name','=',$lookup)
												->where('lv.lookup_value','=',$lookupvalue)->pluck('lv.lookup_value_description');
		//DB::table('users')->pluck('columname');
    		// add the result to the cache
			\Cache::put($cache_key, $lookup.$lookupvalue, \Config::get('app.lookup_value_cache_minutes'));
	   } 
	   return $result[0];
	}
}