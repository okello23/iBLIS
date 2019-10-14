<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnsToUnhlsEquipmentBreakdownTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::update(
			'ALTER TABLE unhls_equipment_breakdown CHANGE COLUMN created_at created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER comment');
		DB::update('ALTER TABLE unhls_equipment_breakdown CHANGE COLUMN updated_at updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER created_at');
		DB::update('ALTER TABLE unhls_equipment_breakdown ADD COLUMN deleted_at TIMESTAMP NULL DEFAULT NULL AFTER updated_at');

		DB::update('ALTER TABLE unhls_equipment_breakdown 
			CHANGE COLUMN `intervention_authorit	y` `intervention_authority` VARCHAR(255) NULL COLLATE utf8_unicode_ci AFTER reporting_officer_email');

		DB::update('ALTER TABLE unhls_equipment_breakdown ALTER COLUMN equipment_failure DROP DEFAULT');
		DB::update('ALTER TABLE unhls_equipment_breakdown ALTER COLUMN reporting_officer DROP DEFAULT');
		DB::update('ALTER TABLE unhls_equipment_breakdown ALTER COLUMN reporting_officer_contact DROP DEFAULT');
		DB::update('ALTER TABLE unhls_equipment_breakdown ALTER COLUMN reporting_officer_email DROP DEFAULT');
		DB::update('ALTER TABLE unhls_equipment_breakdown ALTER COLUMN intervention_authority DROP DEFAULT');

		DB::update('ALTER TABLE unhls_equipment_breakdown 
			CHANGE COLUMN equipment_failure equipment_failure VARCHAR(255) NULL COLLATE utf8_unicode_ci AFTER problem');
		DB::update('ALTER TABLE unhls_equipment_breakdown 
			CHANGE COLUMN reporting_officer reporting_officer VARCHAR(255) NULL COLLATE utf8_unicode_ci AFTER equipment_failure');
		DB::update('ALTER TABLE unhls_equipment_breakdown 
			CHANGE COLUMN reporting_officer_contact reporting_officer_contact VARCHAR(255) NULL COLLATE utf8_unicode_ci AFTER reporting_officer');
		DB::update('ALTER TABLE unhls_equipment_breakdown 
			CHANGE COLUMN reporting_officer_email reporting_officer_email VARCHAR(255) NULL COLLATE utf8_unicode_ci AFTER reporting_officer_contact');

		//drop FK
		DB::update('ALTER TABLE unhls_equipment_breakdown drop foreign key unhls_equipment_breakdown_district_id_foreign');
		DB::update('ALTER TABLE unhls_equipment_breakdown drop foreign key unhls_equipment_breakdown_facility_id_foreign');
		DB::update('ALTER TABLE unhls_equipment_breakdown drop foreign key unhls_equipment_breakdown_year_id_foreign');

		DB::update('ALTER TABLE unhls_equipment_breakdown DROP COLUMN district_id');
		DB::update('ALTER TABLE unhls_equipment_breakdown DROP COLUMN facility_id');
		DB::update('ALTER TABLE unhls_equipment_breakdown DROP COLUMN year_id');
		DB::update('ALTER TABLE unhls_equipment_breakdown DROP COLUMN facility_code');
		DB::update('ALTER TABLE unhls_equipment_breakdown DROP COLUMN facility_level');
		DB::update('ALTER TABLE unhls_equipment_breakdown DROP COLUMN equipment_code');
		DB::update('ALTER TABLE unhls_equipment_breakdown DROP COLUMN equipment_type');

		//DB::update('ALTER TABLE unhls_equipment_breakdown ADD COLUMN intervention_authority VARCHAR(255) NULL DEFAULT NULL AFTER equipment_failure');

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
