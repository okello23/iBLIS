<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingTrait;

class Metric extends Model
{
	use SoftDeletingTrait;

	protected $table = 'metrics';
	protected $dates = ['deleted_at'];
}