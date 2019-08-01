<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class UuidGenerator extends Model {
	 /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'uuids';

    public $timestamps = false;

    /**
     * Reset id which is auto incremneted to required value
     *
     *
     */


    public function resetUuid($incrementNum){
        
        	$statement = 'ALTER TABLE uuids AUTO_INCREMENT = '.$incrementNum;
        	DB::statement($statement);
    }
}