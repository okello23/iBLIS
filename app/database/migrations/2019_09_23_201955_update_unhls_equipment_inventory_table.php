<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateUnhlsEquipmentInventoryTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::update(
			'ALTER TABLE unhls_equipment_inventory CHANGE COLUMN created_at created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER service_contract');
		DB::update('ALTER TABLE unhls_equipment_inventory CHANGE COLUMN updated_at updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER created_at');
		DB::update('ALTER TABLE unhls_equipment_inventory ADD COLUMN deleted_at TIMESTAMP NULL DEFAULT NULL AFTER created_at');
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
