<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class UpdateUnhlsEquipmentInventory extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('unhls_equipment_inventory', function(Blueprint $table)
		{
			$table->integer('equipment_type')->unsigned();
			$table->string('equipment_code');
		});

		Schema::table('unhls_equipment_breakdown', function(Blueprint $table)
		{
			$table->dropColumn('equipment_type');
			$table->dropColumn('equipment_code');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('unhls_equipment_inventory', function(Blueprint $table)
		{
			Schema::table('unhls_equipment_breakdown', function(Blueprint $table)
		{
			$table->integer('equipment_type')->unsigned();
			$table->string('equipment_code');
		});

		Schema::table('unhls_equipment_inventory', function(Blueprint $table)
		{
			$table->dropColumn('equipment_type');
			$table->dropColumn('equipment_code');
		});
		});
	}

}
