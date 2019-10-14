<?php

class AnalyticSpecimenRejectionReason extends Eloquent 
{
	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'analytic_specimen_rejection_reasons';

	public $timestamps =true;

	/**
	 * AnalyticSpecimenRejection relationship
	 */

	public function analyticSpecimenRejection()
	{
		return $this->hasMany('AnalyticSpecimenRejection', 'rejection_id', 'id');
	}

	/**
	 * RejectionReason
	 */
	public function rejectionReason()
	{
		return $this->hasMany('RejectionReason', 'reason_id', 'id');
	}
}