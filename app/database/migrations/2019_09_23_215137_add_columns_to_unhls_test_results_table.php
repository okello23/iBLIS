<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnsToUnhlsTestResultsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::update('ALTER TABLE unhls_test_results ADD COLUMN free_text_interpretation VARCHAR(50) NULL DEFAULT NULL');	
		DB::update('ALTER TABLE unhls_test_results ADD COLUMN test_type_category INT(10) NULL DEFAULT NULL AFTER sample_id');	

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
