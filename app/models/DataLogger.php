<?php

use Illuminate\Database\Eloquent\SoftDeletingTrait;

class DataLogger extends Eloquent
{
	use SoftDeletingTrait;
	protected $table = 'datalogger';
	protected $dates = ['deleted_at'];
	
}
