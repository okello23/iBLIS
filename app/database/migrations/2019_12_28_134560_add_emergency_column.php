<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddEmergencyColumn extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('unhls_tests', function(Blueprint $table){
			$table->integer('urgency_id')->unsigned()->default(0)->nullable();
		});
		//DB::update('ALTER TABLE unhls_tests ADD urgency_id INT(10) NULL DEFAULT (0) AFTER visit_id');
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
