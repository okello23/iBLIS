<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class UpdateControlMeasureRanges extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('control_measure_ranges', function(Blueprint $table)
		{
			$table->string('flag_min')->nullable();
			$table->string('flag_max')->nullable();
			$table->string('flag_lower')->nullable();
			$table->string('flag_upper')->nullable();
		});


	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('control_measure_ranges', function(Blueprint $table)
		{
			$table->dropColumn('flag_min');
			$table->dropColumn('flag_max');
			$table->dropColumn('flag_lower');
			$table->dropColumn('flag_upper');
		});
	}

}
