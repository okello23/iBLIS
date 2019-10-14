<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFieldsToUnhlsTestsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('unhls_tests', function(Blueprint $table)
		{
			$table->integer('equipment_id')->unsigned()->nullable()->after('test_status_id');		
			$table->integer('method_used')->unsigned()->nullable()->after('equipment_id');
			$table->string('free_text_interpretation')->nullable()->after('method_used');
			$table->integer('test_type_category')->unsigned()->nullable()->after('method_used');

			$table->foreign('equipment_id')->references('id')->on('unhls_equipment_inventory');
			$table->foreign('method_used')->references('id')->on('look_up_values');
		});

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
