<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDatalogger extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('datalogger', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('DataAdded');
			$table->string('DeviceSerialNumber');
			$table->integer('DeviceType');
			$table->string('DeviceTypeString');
			$table->string('Operator');
			$table->string('SiteName');
			$table->string('TestId');
			$table->string('Sample');
			$table->string('IsEidSample');
			$table->string('ResultValue');
			$table->string('SpecimenSource');
			$table->string('ResultDate');
			$table->string('ErrorValue');
			$table->string('SoftwareVersion');
			$table->string('Disease');
			$table->string('CatridgeType');
			$table->string('CatridgeId');
			$table->string('CatridgeLot');
			$table->string('CatridgeExpiryDate');
			$table->integer('ResultType');
			$table->string('HasErrors');
			$table->string('IsSuppressed');
			$table->string('Qc');
			$table->string('DateApproved');
			$table->string('ApprovedBy');
			$table->string('ResultStatus');
			$table->string('ResultStatusString');
			$table->string('CatridgeLotNumberAndId');
			$table->string('ResultDateString');
			$table->string('DateAddedString');
			$table->string('CatridgeTypeString');
			$table->string('SpecimenSourceString');
			$table->string('DiseaseString');
			$table->string('CatridgeExpiryDateString');
			$table->string('ResultTypeString');
			// $table->string('Id');
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
		Schema::drop('datalogger');
	}

}
