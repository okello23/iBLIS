<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddEmergencyIdColumnToUnhlsVisits extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('unhls_visits', function(Blueprint $table){
			$table->integer('urgency')->unsigned()->default(0)->nullable();
		});
		//DB::update('ALTER TABLE unhls_visits ADD urgency INT(10) NULL DEFAULT (0) AFTER hospitalized');
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
