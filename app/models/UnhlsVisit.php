<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class UnhlsVisit extends Model
{
	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'unhls_visits';

	public $timestamps = true;


	const APPOINTMENT_MADE = 1;
	const TEST_REQUEST_MADE = 2;
	const SPECIMEN_RECEIVED = 3;
	const TESTS_COMPLETED = 4;

	/**
	 * Test relationship
	 */
	public function tests()
	{
		return $this->hasMany('App\Models\UnhlsTest', 'visit_id');
	}

	/**
	 * Test relationship
	 */
	public function ward()
	{
		return $this->belongsTo('App\Models\Ward', 'ward_id');
	}

	/**
	 * Patient relationship
	 */
	public function patient()
	{
		return $this->belongsTo('App\Models\UnhlsPatient');
	}

	/**
	 * status
	 */
	public function visitStatus()
	{
		return $this->belongsTo('App\Models\VisitStatus');
	}

	public function therapy()
	{
		return $this->belongsTo('App\Models\Therapy','visit_id');
	}
	/**
	 * Specimen relationship
	 */
	public function specimens()
	{
		return $this->belongsTo('App\Models\UnhlsSpecimen', 'visit_id');
	}

	public function isAppointment()
	{
		if ($this->visit_status_id == UnhlsVisit::APPOINTMENT_MADE) {
			return true;
		}else{
			return false;
		}
	}

	public function isRequest()
	{
		if ($this->visit_status_id == UnhlsVisit::TEST_REQUEST_MADE) {
			return true;
		}else{
			return false;
		}
	}

	public function hasSpecimenReceived()
	{
		if ($this->visit_status_id == UnhlsVisit::SPECIMEN_RECEIVED) {
			return true;
		}else{
			return false;
		}
	}

	public function hasRequests()
	{
		if ($this->visit_status_id == UnhlsVisit::TEST_REQUEST_MADE ||
			$this->visit_status_id == UnhlsVisit::SPECIMEN_RECEIVED ||
			$this->visit_status_id == UnhlsVisit::TESTS_COMPLETED) {
			return true;
		}else{
			return false;
		}
	}


	public function hasBeenCompleted()
	{
		if ($this->visit_status_id == UnhlsVisit::TESTS_COMPLETED) {
			return true;
		}else{
			return false;
		}
	}

	/**
	 * Search for visits meeting the given criteria
	 *
	 * @param String $searchString
	 * @param String $visitStatusId
	 * @param String $dateFrom
	 * @param String $dateTo
	 * @return Collection
	 */
	public static function search($searchString = '', $visitStatusId = 0, $dateFrom = NULL, $dateTo = NULL)
	{
		$visits = UnhlsVisit::with('patient')->where(function($q) use ($searchString){

			$q->whereHas('patient', function($q)  use ($searchString){
				$q->where(function($q) use ($searchString){
					$q->where('external_patient_number', 'like', '%' . $searchString . '%')
					  ->orWhere('patient_number', 'like', '%' . $searchString . '%')
					  ->orWhere('name', 'like', '%' . $searchString . '%')
					  ->orWhere('ulin', 'like', '%' . $searchString . '%');
				});
			});
		});
		if ($visitStatusId > 0) {
			$visits = $visits->where(function($q) use ($visitStatusId)
			{
				$q->where('visit_status_id','=', $visitStatusId);
			});
		}
		//  put default to get content for today
		if ($dateFrom||$dateTo) {
			$visits = $visits->where(function($q) use ($dateFrom, $dateTo)
			{
				if($dateFrom)$q->where('created_at', '>=', $dateFrom);

				if($dateTo){
					$dateTo = $dateTo . ' 23:59:59';
					$q->where('created_at', '<=', $dateTo);
				}
			});
		}

		$visits = $visits->orderBy('created_at', 'ASC');

		return $visits;
	}
}
