ALTER TABLE `unhls_equipment_maintenance`
	CHANGE COLUMN `created_at` `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `comment`,
	CHANGE COLUMN `updated_at` `updated_at` TIMESTAMP NULL DEFAULT NULL AFTER `created_at`,
	ADD COLUMN `deleted_at` TIMESTAMP NULL DEFAULT NULL AFTER `updated_at`;


ALTER TABLE `unhls_equipment_breakdown`
	CHANGE COLUMN `created_at` `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `priority`,
	CHANGE COLUMN `updated_at` `updated_at` TIMESTAMP NULL DEFAULT NULL AFTER `created_at`,
	ADD COLUMN `deleted_at` TIMESTAMP NULL DEFAULT NULL AFTER `updated_at`;

alter table unhls_equipment_breakdown drop foreign key unhls_equipment_breakdown_district_id_foreign;
alter table unhls_equipment_breakdown drop foreign key unhls_equipment_breakdown_facility_id_foreign;
alter table unhls_equipment_breakdown drop foreign key unhls_equipment_breakdown_year_id_foreign;

ALTER TABLE `unhls_equipment_breakdown`
	ALTER `equipment_failure` DROP DEFAULT,
	ALTER `reporting_officer` DROP DEFAULT,
	ALTER `reporting_officer_contact` DROP DEFAULT,
	ALTER `reporting_officer_email` DROP DEFAULT,
	ALTER `intervention_authorit	y` DROP DEFAULT;
ALTER TABLE `unhls_equipment_breakdown`
	CHANGE COLUMN `equipment_failure` `equipment_failure` VARCHAR(255) NULL COLLATE 'utf8_unicode_ci' AFTER `problem`,
	CHANGE COLUMN `reporting_officer` `reporting_officer` VARCHAR(255) NULL COLLATE 'utf8_unicode_ci' AFTER `equipment_failure`,
	CHANGE COLUMN `reporting_officer_contact` `reporting_officer_contact` VARCHAR(255) NULL COLLATE 'utf8_unicode_ci' AFTER `reporting_officer`,
	CHANGE COLUMN `reporting_officer_email` `reporting_officer_email` VARCHAR(255) NULL COLLATE 'utf8_unicode_ci' AFTER `reporting_officer_contact`,
	CHANGE COLUMN `intervention_authorit	y` `intervention_authorit	y` VARCHAR(255) NULL COLLATE 'utf8_unicode_ci' AFTER `reporting_officer_email`,
	DROP COLUMN `district_id`,
	DROP COLUMN `facility_id`,
	DROP COLUMN `year_id`,
	DROP COLUMN `facility_code`,
	DROP COLUMN `facility_level`,
	DROP COLUMN `equipment_code`,
	DROP COLUMN `equipment_type`;
	
ALTER TABLE `unhls_equipment_breakdown`
	ADD COLUMN `intervention_authority` VARCHAR(255) NULL DEFAULT NULL AFTER `equipment_failure`;

ALTER TABLE `unhls_tests`
	ADD COLUMN `test_type_category` INT(11) NULL DEFAULT NULL AFTER `method_used`;

ALTER TABLE `unhls_test_results`
	ADD COLUMN `test_type_category` INT(10) NULL DEFAULT NULL AFTER `sample_id`;


INSERT INTO `referral_reasons` (`reason`) VALUES ('Equipment break down');
INSERT INTO `referral_reasons` (`reason`) VALUES ('Reagent stock out');
INSERT INTO `referral_reasons` (`reason`) VALUES ('Supplies stock out');
INSERT INTO `referral_reasons` (`reason`) VALUES ('Power outage');
INSERT INTO `referral_reasons` (`reason`) VALUES ('No testing expertise');
INSERT INTO `referral_reasons` (`reason`) VALUES ('Lack of required equipment');
INSERT INTO `referral_reasons` (`reason`) VALUES ('Confirmatory testing');
INSERT INTO `referral_reasons` (`reason`) VALUES ('For QA re-testing');
INSERT INTO `referral_reasons` (`reason`) VALUES ('Others');