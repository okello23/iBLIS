<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class UpdateUnhlsTestResults extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('unhls_test_results', function(Blueprint $table)
		{
			$table->integer('testing_device')->unsigned()->nullable();
			$table->string('testing_device_name');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('unhls_test_results', function(Blueprint $table)
		{
			$table->dropColumn('testing_device');
			$table->dropColumn('testing_device_name');
		});
	}

}
