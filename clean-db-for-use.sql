SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';
truncate unhls_test_results;
truncate analytic_specimen_rejection_reasons;
truncate analytic_specimen_rejections;
truncate unhls_tests;
truncate unhls_patients;
truncate unhls_visits;
truncate therapy;
truncate isolated_organisms;
truncate micro_patients_details;
truncate patient_antibiotics;
truncate poc_results;
truncate poc_tables;
truncate pre_analytic_specimen_rejections;
truncate referrals;
truncate report_diseases;
truncate specimens;
truncate uuids;
truncate unhls_equipment_maintenance;
truncate unhls_recalled_test_results;
SET foreign_key_checks = 1;

/* alsterntive to turing off foreign key constraints 
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP FUNCTION `slugify`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*