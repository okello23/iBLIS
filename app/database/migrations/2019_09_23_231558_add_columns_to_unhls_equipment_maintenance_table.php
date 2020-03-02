<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnsToUnhlsEquipmentMaintenanceTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::update(
			'ALTER TABLE unhls_equipment_maintenance CHANGE COLUMN created_at created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER comment');
		//DB::update('ALTER TABLE unhls_equipment_maintenance CHANGE COLUMN updated_at updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER created_at');
		DB::update('ALTER TABLE unhls_equipment_maintenance DROP COLUMN supplier_id');
		DB::update('ALTER TABLE unhls_equipment_maintenance ADD COLUMN deleted_at TIMESTAMP NULL DEFAULT NULL AFTER updated_at');	
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		
		//
	}

}
