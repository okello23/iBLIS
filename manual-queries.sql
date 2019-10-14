ALTER TABLE `unhls_equipment_inventory`
	CHANGE COLUMN `created_at` `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `service_contract`,
	CHANGE COLUMN `updated_at` `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `created_at`;

INSERT INTO `unhls_financial_years` (`year`, `created_at`, `updated_at`) VALUES ('2019/2020', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
ALTER TABLE `unhls_equipment_inventory`
	ADD COLUMN `deleted_at` TIMESTAMP NULL DEFAULT NULL AFTER `created_at`;
	
ALTER TABLE `unhls_tests`
	ADD COLUMN `equipment_id` INT NULL DEFAULT NULL AFTER `test_status_id`,
	ADD COLUMN `method_used` INT NULL DEFAULT NULL AFTER `equipment_id`;

INSERT INTO `permissions` (`name`, `display_name`, `created_at`, `updated_at`) VALUES ('approve_test_results', 'Can approve test results', '2019-09-16 00:00:00', '2019-09-16 00:00:00');
INSERT INTO `test_statuses` (`id`, `name`, `test_phase_id`) VALUES ('7', 'approved', '3');

INSERT INTO `look_ups` (`name`, `description`, `created_at`, `updated_at`) VALUES ('TEST_METHODS', 'The test method used in the the lab', '2019-09-16 00:00:00', '2019-09-16 00:00:00');

INSERT INTO `look_up_values` (`look_up_id`, `value`, `value_description`, `created_at`, `updated_at`) VALUES ('3', '1', 'Rapid Diagnostic Test', '2019-09-16 00:00:00', '2019-09-16 00:00:00');
INSERT INTO `look_up_values` (`look_up_id`, `value`, `value_description`, `created_at`, `updated_at`) VALUES ('3', '2', 'Tile Method', '2019-09-16 00:00:00', '2019-09-16 00:00:00');
INSERT INTO `look_up_values` (`look_up_id`, `value`, `value_description`, `created_at`, `updated_at`) VALUES ('3', '3', 'Tube Grouping', '2019-09-16 00:00:00', '2019-09-16 00:00:00');
INSERT INTO `look_up_values` (`look_up_id`, `value`, `value_description`, `created_at`, `updated_at`) VALUES ('3', '4', 'Slide Method', '2019-09-16 00:00:00', '2019-09-16 00:00:00');

ALTER TABLE `unhls_tests`
	ADD COLUMN `free_text_interpretation` VARCHAR(50) NULL DEFAULT NULL AFTER `method_used`;
ALTER TABLE `unhls_test_results`
	ADD COLUMN `free_text_interpretation` VARCHAR(50) NULL DEFAULT NULL;
	
INSERT INTO `look_ups` (`name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES ('POSITIVE_NEGATIVE', 'Whether positive or negative', '2019-09-17 11:54:45', '2019-09-16 00:00:00', '2019-09-16 00:00:00');
INSERT INTO `look_up_values` (`look_up_id`, `value`, `value_description`, `created_at`, `updated_at`, `deleted_at`) VALUES ('4', 'Negative', 'Negative', '2019-09-16 00:00:00', '2019-09-16 00:00:00', '2019-09-17 11:56:37');
INSERT INTO `look_up_values` (`look_up_id`, `value`, `value_description`, `created_at`, `updated_at`, `deleted_at`) VALUES ('4', 'Positive', 'Positive', '2019-09-16 00:00:00', '2019-09-16 00:00:00', '2019-09-17 11:56:37');

INSERT INTO `permissions` (`name`, `display_name`, `created_at`, `updated_at`) VALUES ('can_reset_ulin', 'Can reset ULIN', '2019-09-16 00:00:00', '2019-09-16 00:00:00');

ALTER TABLE `unhls_equipment_maintenance`
	CHANGE COLUMN `created_at` `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `comment`,
	CHANGE COLUMN `updated_at` `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `created_at`,
	DROP COLUMN `supplier_id`;


INSERT INTO `look_ups` (`id`, `name`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'EQUIPMENT_NAMES', 'The names of lab euipment', 1, NULL, '2019-09-15 21:00:00', '2019-09-15 21:00:00'),
(2, 'YES_NO', 'The yes no options', 1, NULL, '2019-09-15 21:00:00', '2019-09-15 21:00:00'),
(3, 'TEST_METHODS', 'The test method used in the the lab', 1, NULL, '2019-09-15 21:00:00', '2019-09-15 21:00:00'),
(4, 'POSITIVE_NEGATIVE', 'Whether positive or negative', 1, NULL, '2019-09-15 21:00:00', '2019-09-15 21:00:00');

INSERT INTO `look_up_values` (`id`, `look_up_id`, `value`, `value_description`, `status`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1', 'GeneXpert', 1, 1, '2019-09-15 21:00:00', '2019-09-15 21:00:00', NULL),
(2, 1, '2', 'Sysmex', 1, 1, '2019-09-15 21:00:00', '2019-09-15 21:00:00', NULL),
(3, 2, '1', 'Yes', 1, 1, '2019-09-15 21:00:00', '2019-09-15 21:00:00', NULL),
(4, 2, '0', 'No', 1, 1, '2019-09-15 21:00:00', '2019-09-15 21:00:00', NULL),
(5, 3, '1', 'Rapid Diagnostic Test', 1, 1, '2019-09-15 21:00:00', '2019-09-15 21:00:00', NULL),
(6, 3, '2', 'Tile Method', 1, 1, '2019-09-15 21:00:00', '2019-09-15 21:00:00', NULL),
(7, 3, '3', 'Tube Grouping', 1, 1, '2019-09-15 21:00:00', '2019-09-15 21:00:00', NULL),
(8, 3, '4', 'Slide Method', 1, 1, '2019-09-15 21:00:00', '2019-09-15 21:00:00', NULL),
(9, 4, 'Negative', 'Negative', 1, 1, '2019-09-15 21:00:00', '2019-09-15 21:00:00', NULL),
(10, 4, 'Positive', 'Positive', 1, 1, '2019-09-15 21:00:00', '2019-09-15 21:00:00', NULL);







