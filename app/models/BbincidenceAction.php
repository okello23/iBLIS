<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingTrait;

class BbincidenceAction extends Model
{

	/**
	 * Enabling soft deletes for specimen type details.
	 *
	 */
	use SoftDeletingTrait;
	protected $dates = ['deleted_at'];

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'unhls_bbactions';

	public function bbincidence()
	{
		return $this->belongsToMany('Bbincidence', 'unhls_bbincidences_action', 'action_id', 'bbincidence_id');
	}
	

}