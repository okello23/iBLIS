<?php

use Illuminate\Database\Eloquent\SoftDeletingTrait;

class Facility extends Eloquent
{
	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'facilities';

	public function facilities()
	{
		return $this->hasMany('UNHLSFacility', 'level_id', 'id');
	}
	

}