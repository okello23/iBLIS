<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddDatalogger extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('datalogger', function(Blueprint $table)
		{
			$table->string('QcType');
			$table->string('Level');
			$table->string('VId');
		  $table->string('Age');
		  $table->string('G');
		  $table->string('SId');
		  $table->string('TProv');
		  $table->string('Latitude');
		  $table->string('Longitude');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('datalogger', function(Blueprint $table)
		{

		});
	}

}
