<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateLookup extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('lookups', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name',50);
			$table->string('description',255)->nullable();
			$table->integer('created_by')->unsigned();
			$table->smallinteger('is_active')->default(1);
			$table->timestamps();
		});

		Schema::create('lookup_values', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('lookup_id')->unsigned();
			$table->integer('created_by')->unsigned();
			$table->string('lookup_value',50);
			$table->smallinteger('is_active')->default(1);
			$table->string('lookup_value_description',255);
			$table->timestamps();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('lookup');
		Schema::drop('lookup_values');
	}

}
