<?php

class MicroPatientDetail extends Eloquent
{
	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'micro_patients_details';

	public function patient()
	{
		return $this->belongsTo('UnhlsPatient');
	}

	public function drug()
	{
		return $this->belongsTo('Drug');
	}
	
}

