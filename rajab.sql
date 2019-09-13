-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2019 at 12:04 PM
-- Server version: 5.6.17-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rajab`
--

-- --------------------------------------------------------

--
-- Table structure for table `adhoc_configs`
--

CREATE TABLE IF NOT EXISTS `adhoc_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `adhoc_configs`
--

INSERT INTO `adhoc_configs` (`id`, `name`, `option`) VALUES
(1, 'Report', 1),
(2, 'ULIN', 1),
(3, 'Clinician_UI', 2);

-- --------------------------------------------------------

--
-- Table structure for table `analytic_specimen_rejections`
--

CREATE TABLE IF NOT EXISTS `analytic_specimen_rejections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_id` int(10) unsigned NOT NULL,
  `specimen_id` int(10) unsigned NOT NULL,
  `rejected_by` int(10) unsigned NOT NULL,
  `rejection_reason_id` int(10) unsigned DEFAULT NULL,
  `reject_explained_to` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_rejected` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `analytic_specimen_rejections_rejected_by_index` (`rejected_by`),
  KEY `analytic_specimen_rejections_test_id_foreign` (`test_id`),
  KEY `analytic_specimen_rejections_specimen_id_foreign` (`specimen_id`),
  KEY `analytic_specimen_rejections_rejection_reason_id_foreign` (`rejection_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `analytic_specimen_rejection_reasons`
--

CREATE TABLE IF NOT EXISTS `analytic_specimen_rejection_reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `specimen_id` int(10) unsigned NOT NULL,
  `rejection_id` int(10) unsigned NOT NULL,
  `reason_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `analytic_specimen_rejection_reasons_specimen_id_foreign` (`specimen_id`),
  KEY `analytic_specimen_rejection_reasons_rejection_id_foreign` (`rejection_id`),
  KEY `analytic_specimen_rejection_reasons_reason_id_foreign` (`reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE IF NOT EXISTS `assigned_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_roles_user_id_foreign` (`user_id`),
  KEY `assigned_roles_role_id_foreign` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `barcode_settings`
--

CREATE TABLE IF NOT EXISTS `barcode_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `encoding_format` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `barcode_width` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `barcode_height` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text_size` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `barcode_settings`
--

INSERT INTO `barcode_settings` (`id`, `encoding_format`, `barcode_width`, `barcode_height`, `text_size`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'code39', '2', '30', '11', NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `clinicians`
--

CREATE TABLE IF NOT EXISTS `clinicians` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cadre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clinicians`
--

INSERT INTO `clinicians` (`id`, `name`, `cadre`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Mwanje Simon', 'Doctor', '0705896982', 'smuwanga@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Mubiru Henry', 'Clinician', '070859658', 'hm@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `commodities`
--

CREATE TABLE IF NOT EXISTS `commodities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `metric_id` int(10) unsigned NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `item_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `storage_req` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `commodities_metric_id_foreign` (`metric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `controls`
--

CREATE TABLE IF NOT EXISTS `controls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lot_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `controls_name_unique` (`name`),
  KEY `controls_lot_id_foreign` (`lot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `control_measures`
--

CREATE TABLE IF NOT EXISTS `control_measures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `control_id` int(10) unsigned NOT NULL,
  `control_measure_type_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `control_measures_control_measure_type_id_foreign` (`control_measure_type_id`),
  KEY `control_measures_control_id_foreign` (`control_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `control_measure_ranges`
--

CREATE TABLE IF NOT EXISTS `control_measure_ranges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upper_range` decimal(6,2) DEFAULT NULL,
  `lower_range` decimal(6,2) DEFAULT NULL,
  `alphanumeric` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `control_measure_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `control_measure_ranges_control_measure_id_foreign` (`control_measure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `control_results`
--

CREATE TABLE IF NOT EXISTS `control_results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `results` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `control_measure_id` int(10) unsigned NOT NULL,
  `control_test_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `control_results_control_test_id_foreign` (`control_test_id`),
  KEY `control_results_control_measure_id_foreign` (`control_measure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `control_tests`
--

CREATE TABLE IF NOT EXISTS `control_tests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entered_by` int(10) unsigned NOT NULL,
  `control_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `control_tests_control_id_foreign` (`control_id`),
  KEY `control_tests_entered_by_foreign` (`entered_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `culture_durations`
--

CREATE TABLE IF NOT EXISTS `culture_durations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `duration` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `culture_observations`
--

CREATE TABLE IF NOT EXISTS `culture_observations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `test_id` int(10) unsigned NOT NULL,
  `observation` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `culture_observations_user_id_foreign` (`user_id`),
  KEY `culture_observations_test_id_foreign` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_alphanumeric_counts`
--

CREATE TABLE IF NOT EXISTS `daily_alphanumeric_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) unsigned NOT NULL,
  `measure_id` int(10) unsigned NOT NULL,
  `measure_range_id` int(10) unsigned NOT NULL,
  `result_interpretation_id` int(10) unsigned DEFAULT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_alphanumeric_counts_daily_test_type_count_id_foreign` (`daily_test_type_count_id`),
  KEY `daily_alphanumeric_counts_measure_id_foreign` (`measure_id`),
  KEY `daily_alphanumeric_counts_measure_range_id_foreign` (`measure_range_id`),
  KEY `daily_alphanumeric_counts_result_interpretation_id_foreign` (`result_interpretation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_gram_stain_result_counts`
--

CREATE TABLE IF NOT EXISTS `daily_gram_stain_result_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) unsigned NOT NULL,
  `gram_stain_range_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_gram_stain_result_counts_daily_test_type_count_id_foreign` (`daily_test_type_count_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_hiv_counts`
--

CREATE TABLE IF NOT EXISTS `daily_hiv_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) unsigned NOT NULL,
  `purpose` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(10) unsigned NOT NULL,
  `measure_id` int(10) unsigned DEFAULT NULL,
  `measure_range_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_hiv_counts_daily_test_type_count_id_foreign` (`daily_test_type_count_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_negative_cultures`
--

CREATE TABLE IF NOT EXISTS `daily_negative_cultures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `organism_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_negative_gram_stains`
--

CREATE TABLE IF NOT EXISTS `daily_negative_gram_stains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gram_stain_range_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_numeric_range_counts`
--

CREATE TABLE IF NOT EXISTS `daily_numeric_range_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) unsigned NOT NULL,
  `measure_id` int(10) unsigned NOT NULL,
  `result` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `result_interpretation_id` int(10) unsigned DEFAULT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_numeric_range_counts_daily_test_type_count_id_foreign` (`daily_test_type_count_id`),
  KEY `daily_numeric_range_counts_measure_id_foreign` (`measure_id`),
  KEY `daily_numeric_range_counts_result_interpretation_id_foreign` (`result_interpretation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_organism_counts`
--

CREATE TABLE IF NOT EXISTS `daily_organism_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) unsigned NOT NULL,
  `organism_id` int(10) unsigned NOT NULL,
  `result_interpretation_id` int(10) unsigned DEFAULT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_organism_counts_organism_id_foreign` (`organism_id`),
  KEY `daily_organism_counts_result_interpretation_id_foreign` (`result_interpretation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_rejection_reason_counts`
--

CREATE TABLE IF NOT EXISTS `daily_rejection_reason_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_specimen_count_id` int(10) unsigned NOT NULL,
  `reason_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_rejection_reason_counts_daily_specimen_count_id_foreign` (`daily_specimen_count_id`),
  KEY `daily_rejection_reason_counts_reason_id_foreign` (`reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_specimen_counts`
--

CREATE TABLE IF NOT EXISTS `daily_specimen_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `all` int(10) unsigned NOT NULL,
  `accepted` int(10) unsigned NOT NULL,
  `rejected` int(10) unsigned NOT NULL,
  `referred_in` int(10) unsigned DEFAULT NULL,
  `referred_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `daily_specimen_counts_date_unique` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_specimen_type_counts`
--

CREATE TABLE IF NOT EXISTS `daily_specimen_type_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_specimen_count_id` int(10) unsigned NOT NULL,
  `specimen_type_id` int(10) unsigned NOT NULL,
  `all` int(10) unsigned NOT NULL,
  `accepted` int(10) unsigned NOT NULL,
  `rejected` int(10) unsigned NOT NULL,
  `referred_in` int(10) unsigned NOT NULL,
  `referred_out` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_specimen_type_counts_daily_specimen_count_id_foreign` (`daily_specimen_count_id`),
  KEY `daily_specimen_type_counts_specimen_type_id_foreign` (`specimen_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_susceptibility_counts`
--

CREATE TABLE IF NOT EXISTS `daily_susceptibility_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_organism_count_id` int(10) unsigned NOT NULL,
  `antibiotic_id` int(10) unsigned NOT NULL,
  `interpretation_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_susceptibility_counts_daily_organism_count_id_foreign` (`daily_organism_count_id`),
  KEY `daily_susceptibility_counts_antibiotic_id_foreign` (`antibiotic_id`),
  KEY `daily_susceptibility_counts_interpretation_id_foreign` (`interpretation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_test_counts`
--

CREATE TABLE IF NOT EXISTS `daily_test_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `all` int(10) unsigned NOT NULL,
  `referred_in` int(10) unsigned NOT NULL,
  `referred_out` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `daily_test_counts_date_unique` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_test_type_counts`
--

CREATE TABLE IF NOT EXISTS `daily_test_type_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_test_count_id` int(10) unsigned NOT NULL,
  `test_type_id` int(10) unsigned NOT NULL,
  `age_upper_limit` int(10) unsigned NOT NULL,
  `age_lower_limit` int(10) unsigned NOT NULL,
  `gender` int(10) unsigned NOT NULL,
  `all` int(10) unsigned NOT NULL,
  `referred_in` int(10) unsigned NOT NULL,
  `referred_out` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_test_type_counts_test_type_id_foreign` (`test_type_id`),
  KEY `daily_test_type_counts_daily_test_count_id_foreign` (`daily_test_count_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_turn_around_time`
--

CREATE TABLE IF NOT EXISTS `daily_turn_around_time` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) unsigned NOT NULL,
  `avg_reception_tostart` int(10) unsigned NOT NULL,
  `avg_start_tocompletion` int(10) unsigned NOT NULL,
  `avg_reception_tocompletion` int(10) unsigned NOT NULL,
  `avg_start_tovarification` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_turn_around_time_daily_test_type_count_id_foreign` (`daily_test_type_count_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE IF NOT EXISTS `diseases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `name`) VALUES
(1, 'Malaria'),
(2, 'Typhoid'),
(3, 'Shigella Dysentry');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE IF NOT EXISTS `drugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `drugs_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Amikacin', NULL, NULL, '2017-05-31 14:29:37', '2017-05-31 14:29:37'),
(2, 'Ampicillin', NULL, NULL, '2017-05-31 14:29:38', '2017-05-31 14:29:38'),
(3, 'Augmentin', NULL, NULL, '2017-05-31 14:29:38', '2017-05-31 14:29:38'),
(4, 'Cefotaxime', NULL, NULL, '2017-05-31 14:29:38', '2017-05-31 14:29:38'),
(5, 'Ceftazidime', NULL, NULL, '2017-05-31 14:29:38', '2017-05-31 14:29:38'),
(6, 'Ceftriaxone', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(7, 'Ceftizoxime', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(8, 'Cefuroxime', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(9, 'Cefuroxime oral', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(10, 'Chloramphenicol', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(11, 'Ciprofloxacin', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(12, 'Co-trimoxazole', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(13, 'Gentamicin', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(14, 'Imipenem', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(15, 'Meropenem', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(16, 'Nalidixic acid', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(17, 'Peperacillintazobactam', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(18, 'Piperacillin', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(19, 'Nitrofurantoin', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(20, 'Trimethoprim', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(21, 'Amoxycillin', NULL, NULL, '2017-05-31 14:29:41', '2017-05-31 14:29:41'),
(22, 'Cefepime', NULL, NULL, '2017-05-31 14:29:41', '2017-05-31 14:29:41'),
(23, 'Colistin', NULL, NULL, '2017-05-31 14:29:42', '2017-05-31 14:29:42'),
(24, 'Tetracycline', NULL, NULL, '2017-05-31 14:29:48', '2017-05-31 14:29:48'),
(25, 'Erythromycin', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(26, 'Clindamycin', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(27, 'Vancomycin', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(28, 'Linezolid', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(29, 'Penicillin G', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(30, 'Cefoxitin', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(31, 'Rifampicin', NULL, NULL, '2017-05-31 14:29:54', '2017-05-31 14:29:54'),
(32, 'Streptomycin', NULL, NULL, '2017-05-31 14:30:05', '2017-05-31 14:30:05'),
(33, 'Minocycline', NULL, NULL, '2017-05-31 14:30:08', '2017-05-31 14:30:08'),
(34, 'Cefexime', NULL, NULL, '2017-05-31 14:30:09', '2017-05-31 14:30:09'),
(35, 'spectinomycin', NULL, NULL, '2017-05-31 14:30:09', '2017-05-31 14:30:09'),
(36, 'Oxacillin', NULL, NULL, '2017-05-31 14:30:21', '2017-05-31 14:30:21'),
(37, 'Levofloxacin', NULL, NULL, '2017-05-31 14:30:54', '2017-05-31 14:30:54'),
(38, 'Cefuroxime Parentral', NULL, NULL, '2017-05-31 14:30:59', '2017-05-31 14:30:59'),
(39, 'High level Gentamicin', NULL, NULL, '2017-05-31 14:31:06', '2017-05-31 14:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `drug_susceptibility`
--

CREATE TABLE IF NOT EXISTS `drug_susceptibility` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `drug_id` int(10) unsigned NOT NULL,
  `isolated_organism_id` int(10) unsigned NOT NULL,
  `drug_susceptibility_measure_id` int(10) unsigned NOT NULL,
  `zone_diameter` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `drug_susceptibility_user_id_foreign` (`user_id`),
  KEY `drug_susceptibility_drug_id_foreign` (`drug_id`),
  KEY `drug_susceptibility_isolated_organism_id_foreign` (`isolated_organism_id`),
  KEY `drug_susceptibility_drug_susceptibility_measure_id_foreign` (`drug_susceptibility_measure_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `drug_susceptibility`
--

INSERT INTO `drug_susceptibility` (`id`, `user_id`, `drug_id`, `isolated_organism_id`, `drug_susceptibility_measure_id`, `zone_diameter`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 1, 21, NULL, '2019-09-06 09:49:09', '2019-09-06 09:49:09'),
(2, 1, 8, 1, 3, NULL, NULL, '2019-09-06 09:49:20', '2019-09-06 09:49:20'),
(3, 1, 10, 1, 3, 12, NULL, '2019-09-06 09:49:33', '2019-09-06 09:49:33'),
(4, 1, 13, 1, 1, 18, NULL, '2019-09-06 09:49:48', '2019-09-06 09:49:48'),
(5, 1, 19, 2, 3, 5, NULL, '2019-09-06 09:58:50', '2019-09-06 09:58:50'),
(6, 1, 14, 2, 2, 20, NULL, '2019-09-06 09:58:58', '2019-09-06 09:58:58'),
(7, 1, 4, 2, 3, NULL, NULL, '2019-09-06 09:59:36', '2019-09-06 09:59:36'),
(8, 1, 15, 2, 1, 26, NULL, '2019-09-06 09:59:52', '2019-09-06 09:59:52'),
(9, 1, 17, 2, 1, NULL, NULL, '2019-09-06 10:00:05', '2019-09-06 10:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `drug_susceptibility_measures`
--

CREATE TABLE IF NOT EXISTS `drug_susceptibility_measures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `symbol` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `interpretation` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `drug_susceptibility_measures`
--

INSERT INTO `drug_susceptibility_measures` (`id`, `symbol`, `interpretation`) VALUES
(1, 'S', 'Sensitive'),
(2, 'I', 'Intermediate'),
(3, 'R', 'Resistant');

-- --------------------------------------------------------

--
-- Table structure for table `equip_config`
--

CREATE TABLE IF NOT EXISTS `equip_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `equip_id` int(10) unsigned NOT NULL,
  `prop_id` int(10) unsigned NOT NULL,
  `prop_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `equip_config_equip_id_foreign` (`equip_id`),
  KEY `equip_config_prop_id_foreign` (`prop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `external_dump`
--

CREATE TABLE IF NOT EXISTS `external_dump` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lab_no` int(11) NOT NULL,
  `parent_lab_no` int(11) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `requesting_clinician` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investigation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provisional_diagnosis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_date` timestamp NULL DEFAULT NULL,
  `order_stage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` text COLLATE utf8_unicode_ci,
  `result_returned` int(11) DEFAULT NULL,
  `patient_visit_number` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receipt_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receipt_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `waiver_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `external_dump_lab_no_unique` (`lab_no`),
  KEY `external_dump_parent_lab_no_index` (`parent_lab_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `external_users`
--

CREATE TABLE IF NOT EXISTS `external_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internal_user_id` int(10) unsigned NOT NULL,
  `external_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `external_users_internal_user_id_unique` (`internal_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE IF NOT EXISTS `facilities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `facility_contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facility_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dhis2_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dhis2_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8456 ;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(2, 'Abako H/C III', '0772312515', '', 0, NULL, 'Abako HC III', 'yDPmjwoOIxi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3, 'Aber Hospital', '0782117574', '', 0, NULL, 'Aber Hospital', 'cDGKAJzfkpf', '2019-03-21 06:54:43', '2019-06-05 12:30:45'),
(4, 'Abim Hospital', '0772896592', '', 0, NULL, 'Abim Hospital', 'RxPKxSBe0DC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(5, 'Aboke H/C IV', '0779203475', '', 0, NULL, 'Aboke HC IV', 'UIhutvdIhqU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(6, 'Abongomola H/C III', '0772868854', '', 0, NULL, 'Abongomola HC III', 'xzRSc5XHzys', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8, 'Achol Pii H/C III', '0774253869', '', 0, NULL, 'Achol Pii HC III', 'aKoVWgIufTx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(9, 'Acholi Bur H/C III', '0774832887', '', 0, NULL, 'Acholi-Bur HC III', 'KgFiiUmrRxI', '2019-03-21 06:54:43', '2019-06-05 12:41:25'),
(10, 'Adjumani Hospital', '0772918562', '', 1, NULL, 'Adjumani   HOSPITAL', 'hvtKTUxWNrt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(11, 'Adok H/C II', '0752418166', '', 0, NULL, 'Adok HC II', 'tdWJ67qCYZK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(12, 'Aduku H/C II (NGO)', '', NULL, 0, NULL, 'Aduku Mission HC II', 'YrbvkUaWpi1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(13, 'Aduku H/C IV', '0782972445', '', 0, NULL, 'Aduku HC IV', 'WEH3aMvIS0B', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(14, 'Agali H/C III', '0772991888', '', 0, NULL, 'Agali HC III', 'I9nJzN3m8qL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(15, 'Agoro H/C III', '0711068465', '', 0, NULL, 'Lamwo Agoro HC III GOVT', 'tvKjvN8d4rR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(18, 'Agulurude H/C III', '0777583284', '', 0, NULL, 'Agulurude HC III', 'aes9vvQi4Df', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(19, 'Agwata H/C III', '0774993910', '', 0, NULL, 'Agwatta HC III', 'sYHZIUFx50X', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(20, 'Akalo H/C III', '0753761001', '', 0, NULL, 'Akalo HC III', 'h9Jydxolx2q', '2019-03-21 06:54:43', '2019-06-05 12:48:56'),
(21, 'Akokoro H/C III', '0773577763', '', 0, NULL, 'Akokoro HC III', 'rjOHz4O83zh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(22, 'Akuna Laber H/C III', '0774849340', '', 0, NULL, 'Akuna Laber HC III', 'aWMoXZucGiV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(23, 'Alebtong H/C IV', '0775306235', '', 0, NULL, 'Alebtong HC IV', 'RdmsO9Kftg9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(24, 'Alerek H/C III', '0775287200', '', 0, NULL, 'Alerek HC III', 'RLWAwgTDjSJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(25, 'Alero H/C III', '0717573999', '', 0, NULL, 'Alero HC III', 'EPyMwPkmKPx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(26, 'Alito H/C III', '0773623359', '', 0, NULL, 'Alito HC III', 'avAlXE2E7Re', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(27, 'Alive Medical Services H/C III', '0414258580/078268526', '', 0, NULL, 'Alive Medical Services HC III', 'PHhcBpjIWvL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(29, 'Amach H/C IV (Lira)', '0777647634', '', 0, NULL, 'Amach HC IV', 'ah2PY0hhVkV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(30, 'Amai Community Hospital', '0783192530', '', 0, NULL, 'Amai Community Hospital', 'Zk9bvpSxThA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(31, 'Amolatar H/C IV', '0773897355', '', 0, NULL, 'Amolatar HC IV', 'XazfKCvCCLS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(32, 'Amuca SDA H/C III', '0787324669', '', 0, NULL, 'Amuca SDA HC III', 'pNHDdE8BJt8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(35, 'Amugu H/C III', '0782681664', '', 0, NULL, 'Amugu HC III', 'acBVtDN7cmd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(37, 'Amuru H/C III', '0774848923', '', 0, NULL, 'Amuru HC III', 'aFgrVHVDqoZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(38, 'Anaka Hospital', '0774805770', '', 0, NULL, 'Anaka Hospital', 'PgRLMNQdejC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(41, 'Anyeke H/C IV', '0772660987', '', 0, NULL, 'Anyeke HC IV', 'EYklRtOZrwz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(42, 'Apac Hospital', '0774805815', '', 1, NULL, 'Apac HOSPITAL', 'OeBKA5gCBXG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(43, 'Apala Bar Owoo H/C III', '0785966224', '', 0, NULL, 'Apalabarowo HC III', 'vt2z3wXqBGE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(44, 'Apala H/C III', '0782346273', '', 0, NULL, 'Apala HC III', 'AKNaO98uuZO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(46, 'Apoi H/C III', '', '', 0, NULL, 'Apoi HC III', 'x6tiiRt28yz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(47, 'Aputi H/C III', '0773115270', '', 0, NULL, 'Aputi HC III', 'XQqrn8K8jyL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(49, 'Aromo H/C III', '0774059095', '', 0, NULL, 'Aromo HC III', 'SvBwj5ZrWMx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(50, 'Arua R R Hospital', '0702751362', '', 1, NULL, 'Arua REGIONAL REF HOSPITAL', 'THGKB3lHEUx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(52, 'Atanga H/C III', '0777204171', '', 0, NULL, 'Atanga HC III', 'SF33CGHTeUn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(53, 'Atiak H/C IV', '0775666037', '', 0, NULL, 'Atiak HC IV', 'i5CDWEBfo9n', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(57, 'Awach H/C IV (Gulu)', '0782040787', '', 0, NULL, 'Awach HC IV', 'Z1dfGmIoSeF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(62, 'Aywee H/C III', '0782123189', '', 0, NULL, 'Aywee HC III', 'aE0Yzd3YZQ9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(64, 'Baitambogwe H/C III', '0774140176', '', 0, NULL, 'Baitambogwe HC III', 'dBJMmXzJwYi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(65, 'Bala H/C III', '0779203475', '', 0, NULL, 'Bala HC III', 'rEncXrvkJ3Z', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(68, 'Barr H/C III', '0772618460', '', 0, NULL, 'Barr HC III', 'CpZY2oCsE5i', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(69, 'Bata H/C III', '0772657256', '', 0, NULL, 'Bata HC III', 'NunHrloqul7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(71, 'Bibia H/C III', '0774592062', '', 0, NULL, 'Bibia HC III', 'N00TPmBoIls', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(72, 'Biddabugya H/C III', '0785732682', '', 0, NULL, 'Bidabugya HC III', 'YTCehe1KMvF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(74, 'Bihanga H/C III (Buhweju)', '0781507660', '', 0, NULL, 'Bihanga HC III', 'Fi6rNyCYxsL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(80, 'Bitereko H/C III', '0782444026', '', 0, NULL, 'Bitereko HC III', 'aumCjLAHfAL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(83, 'Boroboro H/C III', '0777141157', '', 0, NULL, 'Boroboro HC III', 'aHYpuUgnA4P', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(84, 'Bubaare H/C III (Mbarara)', '0773006481', '', 0, NULL, 'Bubaare HC III', 'uwXTH0M0m4p', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(85, 'Bubulo H/C IV', '0752521805', '', 0, NULL, 'Bubulo HC IV', 'oIYkOMu6tdP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(87, 'Budaka H/C IV', '0782310948', '', 0, NULL, 'Budaka HC IV', 'aXPAwDqt65Q', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(88, 'Budondo H/C IV', '0782932700', '', 0, NULL, 'Budondo HC IV', 'BTNeWyNJanq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(91, 'Bufumbo H/C IV', '0782664114', '', 0, NULL, 'Bufumbo HC IV', 'zH1tLSpZuGt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(95, 'Bugambe H/C II (Hoima)', '0782323029', '', 0, NULL, 'Bugambe HC III', 'CRKrLT3w8EQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(97, 'Bugembe H/C  IV', '0772323503', '', 0, NULL, 'Bugembe HC IV', 'MmVUt93uiqa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(99, 'Bugiri Hospital', '0782309581', '', 1, NULL, 'Bugiri Hospital', 'CNG62dd4mE1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(100, 'Bugobero H/C IV', '0752521809', '', 0, NULL, 'Bugobero HC IV', 'RTB3ZNoIDhd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(101, 'Bugono H/C IV', '0712950841', '', 0, NULL, 'Bugono HC IV', 'JkMbi1FzXrX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(106, 'Buhunga H/C IV', '0701353844', '', 0, NULL, 'Buhunga HC IV', 'LLCOrTAVtpK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(107, 'Buikwe Hospital (St Charlse Lwanga)', '0784470442', '', 0, NULL, 'Buikwe St. Charles Lwanga HOSPITAL', 'aClaerhXk59', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(111, 'Buremba H/C III', '0773007418', '', 0, NULL, 'Buremba HC III', 'rRPBsggvt0q', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(113, 'Bukinda H/C III', '0775573662', '', 0, NULL, 'Bukinda HC III', 'afqb57VEJp3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(114, 'Bukomero H/C IV', '0784713664', '', 0, NULL, 'Bukomero HC IV', 'aVPeLDNBucL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(116, 'Bukulula H/C IV', '0775430480', '', 0, NULL, 'Bukulula HC IV', 'DFuALUpGId9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(118, 'Bukuya H/C III', '0712134102', '', 0, NULL, 'Bukuya HC III', 'CiNybZErM6Q', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(120, 'Bulange H/C III', '0782553672', '', 0, NULL, 'Bulange HC III', 'E0iTAuyvRrd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(121, 'Buliisa H/C IV', '0774665077', '', 0, NULL, 'Buliisa HC IV', 'TEGhWFDGruu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(123, 'Bumanya H/C IV', '0782982003', '', 0, NULL, 'Bumanya HC IV', 'dZSLpFo3Ow2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(126, 'Bungokho Mutoto H/C III', '0704312235', '', 0, NULL, 'Bungokho Mutoto HC III', 'qqNrWKGgl1e', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(128, 'Bunyiiro H/C III', '0706028527', '', 0, NULL, 'Bunyiiro Gvt HC III', 'BxF2c8dwf02', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(129, 'Buraru H/C III', '0779547224', '', 0, NULL, 'Buraru HC III', 'TJESax78KE7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(133, 'Busano H/C III', '', '', 0, NULL, 'Busano HC III', 'S3tP2Tw15nr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(134, 'Busanza H/C IV', '0773219980', '', 0, NULL, 'Busanza HC IV', 'pCvTmt48vr0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(135, 'Busesa H/C IV', '0783067378', '', 0, NULL, 'Busesa HC IV', 'FLMye24JUsV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(137, 'Bushenyi H/C IV', '0701283662', '', 0, NULL, 'Bushenyi HC IV', 'jmcxCPyDHHS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(138, 'Bushenyi Medical Centre H/C III', '0774227522', '', 0, NULL, 'Bushenyi Medical Center HC III', 'aJNgqIuVpYF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(139, 'Bushikori H/C III', '0784959757', '', 0, NULL, 'Bushikori HC III', 'b5gYOcDzgXn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(142, 'Busia H/C IV', '0777828568', 'elechualex@yahoo.com', 0, NULL, 'Busia HC IV', 'Yr843NBuL9D', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(145, 'Busiu H/C IV', '0752840585', '', 0, NULL, 'Busiu HC IV', 'zeEOtz7XwxV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(146, 'Butabika  Hospital', '0772848761', '', 0, NULL, 'Butabika NATIONAL REFERAL HOSPITAL', 'KssVUerFkyV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(148, 'Butema H/C III', '0773764156', '', 0, NULL, 'Butema HC III', 'VyKflstsoTt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(149, 'Butenga H/C IV', '0779458995', '', 0, NULL, 'Butenga HC IV', 'gBVBGJ2p9b3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(151, 'Butiru H/C III', '0772079346', '', 0, NULL, 'Butiru HC III', 'Wsm1yq3s0Lw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(153, 'Buvuma H/C IV', '0756718744', '', 0, NULL, 'Buvuma HC IV', 'ewMHVf7tjwq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(154, 'Buwaiswa H/C III', '0782899189', '0752229572', 0, NULL, 'Buwaiswa HC III', 'uja4Tx4IR8w', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(155, 'Buwambo H/C IV', '0772885227', '', 0, NULL, 'Buwambo HC IV', 'aq5a4s4nH5n', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(158, 'Buwenge H/C IV', '0774532044', '', 0, NULL, 'Buwenge HC IV', 'hYRpOD0ijAo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(159, 'Buyamba H/C III-Rakai', '0754724490', '', 0, NULL, 'Buyamba HC III', 'OQnJUNl390Z', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(160, 'Buyinja H/C IV', '0753876045', '', 0, NULL, 'Buyinja  HC IV', 'NnSbfZjOXJd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(161, 'Buyoga H/C III', '0703871112', '', 0, NULL, 'Buyoga HC III', 'RlulmyGd2XY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(162, 'Bwera Hospital', '0773981466', '', 0, NULL, 'Bwera HOSPITAL', 'HLeMhK9q6Wm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(163, 'Bwijanga H/C IV', '0783450600', '', 0, NULL, 'Bwijanga HC IV', 'ap3Cu39yPkF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(164, 'Bwindi Community Hospital', '0773838932', '', 0, NULL, 'Bwindi Community Hospital', 'VES7ks4zElA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(166, 'Bwizibwera H/C IV', '0701241770', '', 0, NULL, 'Bwizibwera HC IV', 'SMkx58aUYtC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(168, 'Chahafi H/C IV', '', '', 0, NULL, 'Chahafi HC IV', 'aK1GSPJrhjK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(176, 'Cwero H/C III', '0778402703', '', 0, NULL, 'Cwero HC III', 'apGje3lIGEP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(179, 'Dokolo H/C IV', '0751600060', '', 0, NULL, 'Dokolo HC IV', 'KBNJtdMGHlZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(180, 'Endiinzi H/C III', '0787295718', '', 0, NULL, 'Endiizi HC III', 'HUkwcrf8Ozd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(182, 'Etam H/C III', '0775362286', '', 0, NULL, 'Etam HC III', 'r4txax3dzBl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(183, 'Family Health Resource Centre Kiruhura', '0785108327', '', 0, NULL, 'Family Health Resource Centre CLINIC', 'sIXMnx11pLV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(184, 'Family Hope Centre Jinja', '0772819859', '', 0, NULL, 'Family Hope Center Jinja', 'aNxk6ghyV8u', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(185, 'Family Hope Centre Kampala', '0752528843', '', 0, NULL, 'Family Hope Center Kampala', 'X0giNVjxX76', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(187, 'FortPortal R R Hospital', '0772958345', '', 1, NULL, 'Fort Portal Regional Referral Hospital', 'Dt6WipQhr4Q', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(188, 'Galiraaya H/C III', '0752398986', '', 0, NULL, 'Galiraya HC III', 'yZIc8DX7kUx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(191, 'Gombe Hospital', '0775272856', '', 1, NULL, 'Gombe HOSPITAL', 'xuCJ8NBomxP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(192, 'Gulu Independent Hospital', '0779110252', '', 0, NULL, 'Gulu Independent Hospital', 'RsY5tCgiuHp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(193, 'Gulu Military Hospital (4th Division)', '0778938159', '', 1, NULL, 'Gulu  Military Hospital', 'x1UaYpPwx6c', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(194, 'Gulu Prison H/C III', '0754414873', '', 0, NULL, 'Gulu Prison HC III', 'i7JbInoEb2D', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(195, 'Gulu R R Hospital', '0777683228', '', 1, NULL, 'Gulu Regional Referal Hospital', 'QDc7Wijvfca', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(197, 'Hamurwa H/C IV', '0775828838', '', 0, NULL, 'Hamurwa HC IV', 'GzCsU3tbMbg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(199, 'Hoima R R Hospital', '0782888620', '', 0, NULL, 'Hoima REGIONAL REF Hospital', 'V2ylFCAVj0U', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(201, 'Ibanda Hospital', '0783406816', '', 0, NULL, 'Ibanda Hospital', 'ahn03jwJwRI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(202, 'Ibuje H/C III', '0784485391', '', 0, NULL, 'Ibuje HC III', 'M8mSJi1Qcah', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(203, 'Iceme H/C III', '0772085176', '', 0, NULL, 'Iceme Ngo HC III', 'OYENvTcFrXW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(204, 'Iganga Hospital', '0772621850', '', 0, NULL, 'Iganga Hospital', 'EKPCmrHaBSg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(206, 'Iki  Iki H/C III', '0779035400', '', 0, NULL, 'Iki-Iki HC III', 'cqonmIvPuVM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(207, 'Inomo H/C III', '0774747520', '', 0, NULL, 'Inomo HC III', 'mKvTS1QMd3x', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(210, 'Ishongororo H/C IV', '0776534734', '', 0, NULL, 'Ishongororo HC IV', 'LwODrFWsUAR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(212, 'Itojo Hospital', '0702763260', '', 0, NULL, 'Itojo Hospital', 'a7lnM83DJGy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(213, 'Ivukula H/C III', '0774250829', '', 0, NULL, 'Ivukula HC III', 'PrOL9DbHU3G', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(222, 'Jinja R R Hospital', '0712811359', '', 0, NULL, 'Jinja Regional Ref Hospital', 'SZS6IdnTKZR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(223, 'Kaabong Hospital', '0777694431', '', 0, NULL, 'Kaabong Hospital', 'pATBoZZRddT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(224, 'Kabale R R Hospital', '0779799640', '', 0, NULL, 'Kabale Regional Ref Hospital', 'K2BGHpaUluP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(225, 'Kabarole Hospital C.O.U', '0782813064', '', 0, NULL, 'Kabarole Hospital', 'gLhqifDs7hU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(228, 'Kabira H/C III (Rakai)', '0779294758', '', 0, NULL, 'Kabira HC III GOVT', 'KC28vpic105', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(231, 'Kabuwoko H/C III', '0782957686', '', 0, NULL, 'Kabuwoko Gvt HC III', 'GREWqcdtoVn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(232, 'Kabuyanda H/C IV', '0782018727', '', 0, NULL, 'Kabuyanda HC IV', 'K5Rwfv0pC4s', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(233, 'Kabwohe Clinical Research Centre', '0774251752', '', 0, NULL, 'Kabwohe Clinical Research Cenrer HC II', 'H3LpQ7tdT1P', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(234, 'Kabwohe H/C IV', '0777132750', '', 0, NULL, 'Kabwohe HC IV', 'yTiZaVCinTc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(235, 'Kabwoya H/C III', '0774642432', '', 0, NULL, 'Kabwoya HC III', 'zdhmUkPsGjH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(238, 'Kaderuna H/C III', '0783371407', '', 0, NULL, 'Kaderuna HC III', 'BUS1uU9bfh8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(240, 'Kagando Hospital', '0712325628', '', 0, NULL, 'Kagando Hospital', 'KhvLQSeeHZM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(247, 'Kakuka H/C III', '0792111918', '', 0, NULL, 'Kakuka HC III', 'kvNr0D5clU1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(249, 'Kakuuto H/C IV', '700231923', '', 0, NULL, 'Kakuuto HC IV', 'Ls1dG8v84Wu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(251, 'Kaladima H/C III', '0774922505', '', 0, NULL, 'Kaladima HC III', 'jWmjHpZqNtY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(253, 'Kalangala H/C IV', '0774022611', '', 0, NULL, 'Kalangala HC IV', 'oTXa14pgh8f', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(255, 'Kalisizo Hospital', '0706901900', '', 0, NULL, 'Kalisizo Hospital', 'eZPhMsZGZza', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(256, 'Kalongo Hospital', '0777761941', '', 0, NULL, 'Kalongo Ambrosoli Memorial HOSPITAL', 'y8q1syPdfdK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(257, 'Kalungu H/C III', '0782720124', '', 0, NULL, 'Kalungu HC III', 'wKczE4oVqOy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(259, 'Kambuga Hospital', '0772576219', '', 0, NULL, 'Kambuga Hospital', 'CCW0LpJoTnO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(260, 'Kampala  Dispensary', '', '', 0, NULL, 'Kampala Dispensery HC III', 'u0XUzxV310O', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(262, 'Kamuganguzi H/C III', '', '', 0, NULL, 'Kamuganguzi HC III', 'c9Fq5DlB3y5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(264, 'Kamukira H/C IV', '0771648484', '', 0, NULL, 'Kamukira HC IV', 'aVKmbSeBF1N', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(265, 'Kamuli District Govt Hospital', '0784996449', '', 0, NULL, 'Kamuli Hospital', 'LVFyV61bpdi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(266, 'Kamuli Mission Hospital', '0784457317', '', 0, NULL, 'Kamuli Mission Hospital', 'Zix3B1axH9x', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(267, 'Kamwenge H/C III', '0785014635', '', 0, NULL, 'Kamwenge HC III', 'ACckadqFYV7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(268, 'Kamwezi   H/C IV', '0773524034', '', 0, NULL, 'Kamwezi HC IV', 'Yy2ZLOpEx2S', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(269, 'Kamwokya Christian Caring Community', '0777335365', '', 0, NULL, 'Kamwokya Christian Caring Community HC I', 'vTqB8UrtjVT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(272, 'Kangai H/C III', '0774222224', '', 0, NULL, 'Kangai HC III', 'aP04v4fQbSd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(274, 'Kangulumira H/C IV', '0775547825', '', 0, NULL, 'Kangulumira HC IV', 'RSFwMQwN99b', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(275, 'Kanoni H/C III (Kiruhura)', '00782837423', '', 0, NULL, 'Kiruhura Kanoni HC III GOVT', 'Mr238FVwJOm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(276, 'Kanungu H/C IV', '0774521156', '', 0, NULL, 'Kanungu HC IV', 'EU9ZacQmfpW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(280, 'Kapeeka H/C III', '0771616533', '', 0, NULL, 'St. Jerome Cove Kapeeka HC III', 'jloriHnudvr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(284, 'Karenga H/C IV', '0775899843', '', 0, NULL, 'Karenga HC IV', 'RwUs7iX5S49', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(286, 'Karungu H/C III (Buhweju)', '0772830494', '', 0, NULL, 'Karungu HC III', 'Q2xPLKiCPXu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(289, 'Kasanga PHC III', '0783385210', '', 0, NULL, 'Kasanga Phc HC III', 'DUIjxnnEApZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(290, 'Kasangati H/C IV', '0772515796', '', 0, NULL, 'Kasangati HC IV', 'a4SedC8Ix2O', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(291, 'Kasasa H/C III', '0700367349', '', 0, NULL, 'Kasasa HC III', 'agw4uqikZnP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(295, 'Kassanda H/C IV', '0775964900', '', 0, NULL, 'Kassanda HC IV', 'vSPwh0RCueD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(299, 'Katabi Military Hospital', '0782872085', '', 0, NULL, 'Katabi Military HC III', 'FMhE2V9s2bo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(303, 'Katerera H/C III', '0784689180', '', 0, NULL, 'Katerera HC III', 'nLcJPspov8c', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(305, 'Katimba H/C III', '0779212201', '', 0, NULL, 'Katimba HC III', 'sTlap0cwcNo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(307, 'Katwe H/C III (Kasese)', '0700245247', '', 0, NULL, 'Kasese Katwe HC III GOVT', 'n5XFXJQhdtb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(310, 'Kawempe Home Care', '0783270837', '', 0, NULL, 'Kawempe Home Care Initiative CLINIC', 'QgAL2KJE7g4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(311, 'Kawolo Hospital', '0756200919', '', 0, NULL, 'Kawolo Hospital', 'nKKX3gA72zS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(313, 'Kayunga Hospital', '0702245839', '', 0, NULL, 'Kayunga Hospital', 'sFIS2oxchec', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(314, 'Kazo H/C IV', '0774675175', '', 0, NULL, 'Kazo HC IV', 'stVRVnZtZVM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(317, 'Kibaale H/C IV (Kibaale)', '0787574344', '', 0, NULL, 'Kibaale HC IV (Kibaale)', 'hHaqQ2NBBOs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(320, 'Kiboga Hospital', '07755999701', '', 0, NULL, 'Kiboga Hospital', 'acJji9Ruj5T', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(322, 'Kibuli Muslim Hospital', '0772318348', '', 0, NULL, 'Kibuli Hospital', 'Ygv5366dTvl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(325, 'Kidera H/C IV', '0784747717', '', 0, NULL, 'Kidera HC IV', 'KzxdCSnvGwD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(328, 'Kiganda H/C IV', '0781498913', '', 0, NULL, 'Kiganda HC IV', 'dK6URDbvHgL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(329, 'Kigandalo H/C IV', '0774725303', '', 0, NULL, 'Kigandalo HC IV', 'TOwFMUTd1XN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(331, 'Kigarama H/C III', '0782240597', '', 0, NULL, 'Kigarama HC III', 'oV7osEI51r6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(332, 'Kigorobya H/C IV', '0700604096', '', 0, NULL, 'Kigorobya HC IV', 'GUAwRRqngNN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(333, 'Kihiihi H/C IV', '0775306238', '', 0, NULL, 'Kihiihi HC IV', 'WiDK75EptX5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(337, 'Kikuube H/C IV', '0774318380', '', 0, NULL, 'Kikuube HC IV', 'ZyIU7Z6NxVX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(338, 'Kikyenkye H/C III', '0752401556', '', 0, NULL, 'Kikyenkye  HC III', 'j6kmC0qBLuy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(340, 'Kilak H/C III', '0786122574', '', 0, NULL, 'Kilak HC III', 'e2i5c23d8cq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(342, 'Kinoni H/C III (Lwengo)', '0783557603', '', 0, NULL, 'Kinoni Welfare Medical Centre CLINIC', 'l5Zt1UulNMm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(343, 'Kinoni H/C IV (Mbarara)', '0775815620', '', 0, NULL, 'Kinoni HC IV', 'ApxHwTWTekP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(347, 'Kirema H/C III', '0782667396', '', 0, NULL, 'Kirema HC III', 'kyHAWNZ9EPd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(349, 'Kiruhura H/C IV', '0752655890', '', 0, NULL, 'Kiruhura HC IV', 'GnVqZO2asFJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(350, 'Kiryandongo Hospital', '0777409094', '', 0, NULL, 'Kiryandongo Hospital', 'kzFJJnKcISy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(352, 'Kisiizi Hospital C.O.U (Rukungiri)', '0775362708', '', 0, NULL, 'Kisiizi NGO HOSPITAL', 'J5lFjhtApU5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(355, 'Kisoro Hospital', '0782879611', '', 0, NULL, 'Kisoro Hospital', 'FHIEdqBZAll', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(356, 'Kisubi Hospital', '0716380193', '', 0, NULL, 'Kisubi Hospital', 'qLLYEE7sCnd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(357, 'Kiswa H/C IV', '0782439571', '', 0, NULL, 'Kiswa HC III', 'cjC5Ij5U7le', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(358, 'Kitagata  Hospital', '0782379703', '', 0, NULL, 'Kitagata HOSPITAL', 'EMHl20viu7L', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(359, 'Kitebi H/C III', '0788400410', '', 0, NULL, 'Kitebi HC III', 'sLOvwpCrdh2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(360, 'Kitgum General Hospital', '0784340824', '', 0, NULL, 'Kitgum Hospital', 'z2LfysbyF9U', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(361, 'Kitgum Matidi H/C III', '0782994849', '', 0, NULL, 'Kitgum-Matidi HC III', 'aKgreJPVnve', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(362, 'Kitimba H/C III', '0701362998', '', 0, NULL, 'Kitimba HC III', 'O4sKsWoxekL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(365, 'Kitovu Hospital', '0753612190', '', 0, NULL, 'Kitovu Blood Bank CLINIC', 'bUDoS3JjcpY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(368, 'Kityerera H/C IV', '0774157719', '', 0, NULL, 'Kityerera HC IV', 'W65MlPtBlmF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(369, 'Kiwangala H/C IV', '0704125961', '', 0, NULL, 'Kiwangala HC IV', 'oviT3cugAEz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(370, 'Kiwoko Hospital', '0779652937', '', 0, NULL, 'Kiwoko HOSPITAL', 'OtHSbYGRmmu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(372, 'Kiyumba H/C IV', '', '', 0, NULL, 'Kiyumba HC IV', 'AjaGtzC8woM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(373, 'Kiyunga H/C IV ( Luuka)', '0782389973', '', 0, NULL, 'Kiyunga HC IV', 'a14sgIjcCoT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(376, 'Koch Goma H/C III', '0779652419', '', 0, NULL, 'Koch Goma HC III', 'NdIteLoT2FC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(378, 'Kojja H/C IV', '0782861434', '', 0, NULL, 'Kojja HC IV', 'akaiT2gUBst', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(379, 'Kolonyi H/C III', '', '', 0, NULL, 'Kolonyi HC III', 'O4hJJKkCm5r', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(380, 'Kotido H/C IV', '0788244922', '', 0, NULL, 'Kotido HC IV', 'ahrb1oS6ucq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(382, 'Kulikulinga H/C III', '0782316155', '', 0, NULL, 'Kulikulinga HC III', 'jiKuvEHVanR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(384, 'Kumi H/C IV', '0785872595', '', 0, NULL, 'Kumi HC IV', 'T7PV25xOz2Z', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(385, 'Kumi Hospital', '0779466258', '', 0, NULL, 'Kumi NGO HOSPITAL', 'ahzk9fymop1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(386, 'Kwera H/C III', '0774919190', '', 0, NULL, 'Kwera HC III', 'fxZxvguCeIw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(388, 'Kyabugimbi H/C IV', '0776554509', '', 0, NULL, 'Kyabugimbi HC IV', 'ILr03pFmrva', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(396, 'Kyazanga H/C IV', '0782343989', '', 0, NULL, 'Kyazanga HC IV', 'VhOO7DL9Y39', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(397, 'Kyebe H/C III', '0775734163', '', 0, NULL, 'Kyebe HC III', 'xP2J8wszUrR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(399, 'Kyehoro H/C III', '0783706631', '', 0, NULL, 'Kyehoro HC II', 'pa2KemeFZTD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(403, 'Labworomor H/C III', '0711994021', '', 0, NULL, 'Labworomor HC III', 'ltWFhjfI6qF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(405, 'Laguti H/C III', '0782274125', '', 0, NULL, 'Laguti HC III', 'ynatvEoBz7A', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(410, 'Laroo H/C III', '0783157225', '', 0, NULL, 'Laroo HC III', 'elqHQKpMveQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(412, 'Layibi Techo H/C III', '0782554660', '', 0, NULL, 'Layibi Techo HC III', 'n8DIemz1Xoh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(413, 'Lira  Kato H/C III (  Agago )', '0777367466', '', 0, NULL, 'Lira-Kato HC III', 'a9ZI6jNBqXx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(414, 'Lira Medical Centre', '0783463131', '', 0, NULL, 'Lira Medical Centre Ltd HC III', 'riFZJMWkiZR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(415, 'Lira Palwo H/C III', '0782404170', '', 0, NULL, 'Lira-Palwo HC III', 'aNM5X9P50rl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(416, 'Lira R R Hospital', '0772610558', '', 0, NULL, 'Lira REGIONAL REF HOSPITAL', 'cK5namCwmbW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(417, 'Lobo  rom H/C III', '0782635594', '', 0, NULL, 'Loborom HC III', 'WgmL7qQcVxV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(419, 'Lokung H/C III', '0775643537', '', 0, NULL, 'Lokung HC III', 'MV2QkTgUIz1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(423, 'Lukole H/C III', '0772923667', '', 0, NULL, 'Lukole HC III', 'RHk4V3ZlFbx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(426, 'Luwunga H/C III(1st Div Hospital)', '0788692649', '', 0, NULL, 'Luwunga Barracks HC IV', 'LKxm4CmrYYh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(428, 'Lwamaggwa H/C III', '0774678765', '', 0, NULL, 'Lwamaggwa Gvt HC III', 'oBg69iZLKtq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(430, 'Lwankoni H/C III', '0704399155', '', 0, NULL, 'Lwankoni HC III', 'FuOuXP2WFU8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(431, 'Lwebitakuli H/C III', '0702966204', '', 0, NULL, 'Lwebitakuli Gvt HC III', 'T7UcwZlbp1F', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(432, 'Lwemiyaga H/C III', '0702663871', '', 0, NULL, 'Lwemiyaga HC III', 'ioBktjTQgyS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(433, 'Lwengo H/C IV', '0752747114', '', 0, NULL, 'Lwengo HC IV', 'oFI3thMRN4h', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(434, 'Lyantonde Hospital', '0782319989', '', 0, NULL, 'Lyantonde Hospital', 'Gje6ykVPZKQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(438, 'Maddu H/C IV', '0789204819', '', 0, NULL, 'Maddu HC IV', 'r7ugOoXi8F1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(439, 'Madi Opei H/C IV', '0774262576', '', 0, NULL, 'Madi-Opei HC IV', 'Z3lDSWMFUyS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(440, 'St Elizabeth H/C IV-Magale', '0771452797', '', 0, NULL, 'Magale HC IV', 'adoijg0nE4u', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(444, 'Makonge H/C III', '0774298991', '', 0, NULL, 'Makonge HC III', 'BIiLhy7eYLl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(445, 'Makukuulu H/C III', '0757351619', '', 0, NULL, 'Makuukulu HC III', 'GUlztXJ4MRg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(446, 'Malaba H/C III (Tororo)', '0701421427', '', 0, NULL, 'Malaba HC III', 'F1z2KNSzz86', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(448, 'Malongo H/C III', '0752980622', '', 0, NULL, 'Malongo HC III', 'ao6V9sOp2DA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(449, 'Maracha Hospital (St Joseph)', '0788364706', '', 0, NULL, 'Maracha HOSPITAL', 'arpYxB8jsNy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(451, 'Masaka R R Hospital', '0777832111', '', 0, NULL, 'Masaka REGIONAL REF HOSPITAL', 'vX6kcAwvaS0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(452, 'Masindi Hospital', '0773022229', '', 0, NULL, 'Masindi Hospital', 'esxeUWbV3si', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(454, 'Mateete H/C III', '0702806337', '', 0, NULL, 'Mateete HC III', 'ajiOvkBSZBh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(456, 'Mayuge H/C III (Mayuge)', '0784012139', '', 0, NULL, 'Mayuge HC III', 'qkq6TBG0tnA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(457, 'Maziba H/C IV', '0775268505', '', 0, NULL, 'Maziba Gvt HC IV', 'KlGGom62gxM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(458, 'Mbaare H/C III', '0782878717', '', 0, NULL, 'Mbaare HC III', 'aJlqk5guS44', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(459, 'Mbale H/C II (Kyenjojo)', '0776823122', '', 0, NULL, 'Mbale HC II', 'Dakg2qxUXlR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(460, 'Mbale R R Hospital', '0781394634', '', 0, NULL, 'Mbale REGIONAL REF HOSPITAL', 'HpJYuf9iyz2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(464, 'Iss Clinic(Mbarara R R Hospital)', '', '', 0, NULL, 'Mbarara REGIONAL REF HOSPITAL', 'ZpJgSAyZtkl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(465, 'Mengo Hospital-EMTCT', '0784233988', '', 0, NULL, 'Mengo HOSPITAL', 'BnSVCAr2iAw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(469, 'Mitooma H/C IV', '0773393977', '', 0, NULL, 'Mitooma HC IV', 'VNnrhdnpSHA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(470, 'Mityana Hospital', '0755737926', '', 0, NULL, 'Mityana Hospital', 'TjEiAVNTIFy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(471, 'Rubaya H/C III (Mbarara)', '0701241770', '', 0, NULL, 'Rubaya HC III', 'nx0UdNxBNIS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(472, 'Moroto R R Hospital', '077408295', '', 0, NULL, 'Moroto Regional Refferal HOSPITAL', 'cK0jOJzBIvd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(476, 'Mparangasi H/C III', '0782593337', '', 0, NULL, 'Mparangasi HC III', 'vHdz34TAaT3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(477, 'Mparo H/C IV', '0782769421', '', 0, NULL, 'Mparo HC IV', 'eJzlHnYHBcW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(478, 'Mpigi H/C IV', '0779447373', '', 0, NULL, 'Mpigi   HC IV', 'QXVOVXOy3FM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(479, 'Mpumudde H/C IV (Jinja)', '0791164844', '', 0, NULL, 'Mpumudde HC IV', 'pAsdJsJETch', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(480, 'Mubende R R Hospital', '0774835180', '', 0, NULL, 'Mubende RR HOSPITAL', 'VLclxVcJh5v', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(481, 'Mubende Rehabilitation Centre', '0775405287', '', 0, NULL, 'Mubende Rehabilitation Centre HC III', 'PO8WHm1kFck', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(482, 'Mucwini H/C III', '0713315241', '', 0, NULL, 'Mucwini HC III', 'qKGMj34R5qZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(485, 'Muhokya H/C III', '0774552460', '', 0, NULL, 'Muhokya HC III', 'KuCGJjeYQS4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(486, 'Muhuiju H/C III', '0782569339', '', 0, NULL, 'Muhwiju HC III', 'omv0xbPKq9w', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(488, 'Muko H/C IV', '0775662135', '', 0, NULL, 'Muko HC IV', 'YTxnLBZCFwA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(489, 'Mukono H/C IV ( Town Council)', '0779256124', '', 0, NULL, 'Mukono  T.C. HC IV', 'Q6qNTXu3yRx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(490, 'Mukuju H/C IV', '0702/0772456893', '', 0, NULL, 'Mukuju HC IV', 'Txul6e5mI5M', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(494, 'Mulanda H/C IV', '0782433120', '', 0, NULL, 'Mulanda HC IV', 'ae5vXlawbYh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(497, 'St Francis Hospital (Mutolere)', '0702837989', '', 0, NULL, 'Mutolere (St. Francis) HOSPITAL', 'O9Bfy1Rf33x', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(499, 'Mwera H/C IV', '0776393401', '', 0, NULL, 'Mwera HC IV', 'SjGnJhWF7P7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(502, 'Nabigasa H/C III', '0753196368', '', 0, NULL, 'Nabigasa HC III', 'nEUuDrY5MWp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(508, 'Nakaseke  Hospital', '0782163363', '', 0, NULL, 'Nakaseke HOSPITAL', 'mlPC71DkTp5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(509, 'Nakasongola Military Hospital', '0706865209', '', 0, NULL, 'Nakasongola Military HOSPITAL', 'Jn7Sz79BL2v', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(511, 'Nakivale H/C III', '0752802360', '', 0, NULL, 'Nakivale HC III', 'lvbkNrwAFmE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(512, 'Namakwekwe H/C III', '0779002615', '', 0, NULL, 'Namakwekwe HC III', 'XJnDlwQcKju', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(514, 'Namanyonyi H/C III', '0779968470', '', 0, NULL, 'Namanyonyi HC III', 'XPlqjxDtXXO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(515, 'Namasale H/C III', '0777808255', '', 0, NULL, 'Namasale HC III', 'QhhZ8aHXOWM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(516, 'Namawanga H/C III', '0787273406', '', 0, NULL, 'Namawanga HC III', 'H21894K9xDD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(517, 'Namayumba H/C IV', '0775379510', '', 0, NULL, 'Namayumba HC IV', 'm2ROGumujet', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(518, 'Nambale H/C III', '0773131980', '', 0, NULL, 'Nambale HC III', 'tJVNDcI33wJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(519, 'Nambieso H/C III', '0777568308', '', 0, NULL, 'Nambieso HC III', 'ZgwhRJCKYcN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(520, 'Namokora H/C IV', '0782203615', '', 0, NULL, 'Naam Okora HC IV', 'iqr4dCf6xsU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(521, 'Namugongo H/C III (kaliro)', '0702301277', '', 0, NULL, 'Namugongo HC III', 'aNs3syyPTb1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(522, 'Namungalwe H/C III', '0774021328', '', 0, NULL, 'Namungalwe HC III', 'a8Qm23qwGwy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(524, 'Namutumba H/C  III (Namutumba)', '0700728077', '', 0, NULL, 'Namutumba HC III', 'aeZGyZJvaEG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(525, 'Namwendwa H/C IV', '0781430612', '', 0, NULL, 'Namwendwa HC IV', 'zyI8GDUVYdE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(526, 'Nankandulo H/C IV', '0773772209', '', 0, NULL, 'Nankandulo HC IV', 'uPAnapLaFYh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(527, 'Nankoma H/C IV', '0773058438', '', 0, NULL, 'Nankoma HC IV', 'ygGN15RPkJR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(529, 'Nawaikoke H/C III', '0774398895', '', 0, NULL, 'Nawaikoke HC III', 'W8gbvIzhIuL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(532, 'Ngai H/C III', '0774378411', '', 0, NULL, 'Ngai HC III', 'cyWgf6Xmo8Z', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(533, 'Ngando H/C III', '0774916493', '', 0, NULL, 'Ngando HC III', 'lH80zq7z1Hg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(535, 'Ngetta H/C III', '0771406225', '', 0, NULL, 'Ngetta HC III', 'OjPZpAx86iC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(539, 'Nkokonjeru Hospital (Buikwe)', '0702291173', '', 0, NULL, 'Nkokonjeru  HOSPITAL', 'aFxXtxwMU7f', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(540, 'Nkozi Hospital', '0782805974', '', 0, NULL, 'Nkozi HOSPITAL', 'vkpREtlXQxQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(542, 'Nsambya Hospital', '0757119752', '', 0, NULL, 'St. Francis Nsambya HOSPITAL', 'smr8mTNYzFP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(543, 'Nshungyezi H/C III', '0773260477', '', 0, NULL, 'Nshungyezi HC III', 'RFWwEWMyoSD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(544, 'Nsiika H/C IV', '0783388777', '', 0, NULL, 'Nsiika HC IV', 'oFMf9UXgoOr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(545, 'Nsinze H/C IV', '0774023943', '', 0, NULL, 'Nsinze HC IV', 'aOt4qHwBUAV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(549, 'Ntungamo H/C III', '0772626966', '', 0, NULL, 'Ntungamo HC IV', 'NImJbGuvUS6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(550, 'Ntuusi H/C IV', '', '', 0, NULL, 'Ntuusi HC IV', 'WuDi4LmzEWV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(551, 'Ntwetwe H/C IV', '0772434967', '', 0, NULL, 'Ntwetwe HC IV', 'QDSGcekPM4S', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(554, 'Nyabirongo H/C III', '0781552142', '', 0, NULL, 'Nyabirongo HC III', 'fIF70rtNGDv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(555, 'Nyabugando H/C III', '0755995988', '', 0, NULL, 'Nyabugando HC III', 'JbyNRdK814R', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(558, 'Nyakibale Hospital', '0782061394', '', 0, NULL, 'St. Karolii Lwanga Nyakibale HOSPITAL', 'N57ydf9ABlg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(559, 'Nyakitunda H/C III', '0753059587', '', 0, NULL, 'Nyakitunda HC III', 'iIx3m63SxVt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(565, 'Nyamuyanja H/C IV', '0753622521', '', 0, NULL, 'Nyamuyanja HC IV', 'axKfX1OmCTn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(568, 'Nyarubungo H/C III', '0774030609', '', 0, NULL, 'Nyarubungo HC III', 'dZKfMZLWA5D', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(569, 'Nyenga Hospital', '0752832172', '', 0, NULL, 'St. Francis Nyenga HOSPITAL', 'Mlh3jcaJw9n', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(575, 'Ogur H/C IV', '0779617978', '', 0, NULL, 'Ogur HC IV', 'aRxadClWcFM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(577, 'Okwongo H/C III', '07825680244', '', 0, NULL, 'Okwongo HC III', 'aqHWU5eZqU1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(579, 'Olilim H/C III', '0782578681', '', 0, NULL, 'Olilim HC III', 'G0lOXzOa53Q', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(581, 'Omiya Anyima H/C III', '0757111305', '', 0, NULL, 'Omiya Anyima HC III', 'MObVMkBVjki', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(582, 'Omoro H/C III', '0775306235', '', 0, NULL, 'Omoro HC III', 'NakSNp1eO2L', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(584, 'Ongako H/C III', '0772939754', '', 0, NULL, 'Ongako HC III', 'du8F23WZLMw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(585, 'Ongica H/C III', '0774752244', '', 0, NULL, 'Ongica HC III', 'aD1S6DBzHJV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(591, 'Orom H/C III', '0754315651', '', 0, NULL, 'Orom HC III', 'auzlyXb92mq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(592, 'Orum H/C IV', '', '', 0, NULL, 'Orum HC IV', 'FtmVm4r1H3a', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(595, 'Otwal H/C III', '0774604019', '', 0, NULL, 'Otwal HC III', 'taeUtmBHKTF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(598, 'Pabbo H/C III (Amuru Govt)', '0772033221', '', 0, NULL, 'Pabbo (Govt) HC III', 'rYNfPnt4Wko', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(599, 'Pabwo H/C III (Gulu)', '0777645760', '', 0, NULL, 'Pabwo HC III', 'WleyUUQfJK6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(600, 'Pader H/C III', '0777003811', '', 0, NULL, 'Pader HC III', 'EsyH7yKQHiP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(601, 'Padibe H/C IV', '0781399224', '', 0, NULL, 'Padibe HC IV', 'H026HbOAZFN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(603, 'Lira PAG Mission Hospital H/C IV', '0777073408', '', 0, NULL, 'Lira PAG Mission Hospital H/C IV', 'BTQIO9sgvpP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(606, 'Paimol H/C III', '0756197662', '', 0, NULL, 'Paimol HC III', 'RM8vegpr7j7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(608, 'Pajule H/C  IV', '0782973754', '', 0, NULL, 'Pajule HC IV', 'NiSWW2k1Hqt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(609, 'Palabek  Gem H/C III', '0774640138', '', 0, NULL, 'Palabek-Gem HC III', 'aNW8E8PWwck', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(610, 'Palabek Ogili H/C III', '0775989446', '', 0, NULL, 'Palabek Ogili HC III', 'lmi2JiLawTV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(611, 'Palabek-Kal H/C III', '0774612100', '', 0, NULL, 'Palabek-Kal HC III', 'VLi163AL9A0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(615, 'Paloga H/C III', '0782449096', '', 0, NULL, 'Paloga HC III', 'aod4x8edzQu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(617, 'Patiko H/C III', '0712390584', '', 0, NULL, 'Patiko HC III', 'T5RAXrLQCD6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(618, 'Patongo H/C III', '0779751238', '', 0, NULL, 'Patongo HC III', 'oUcwyNtRzrb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(619, 'Pawel H/C II', '0715557557', '', 0, NULL, 'Pawel HC II', 'mNeUlm3SpRz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(620, 'PIDC (Baylor-Mulago)', '0782012948', '', 0, NULL, 'Mulago National Hospital-PIDC COE Ward 1', 'WuohOAlguVz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(626, 'Purongo H/C III', '077578230', '', 0, NULL, 'Purongo HC III', 'fZ4QbeGxt8t', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(628, 'Rakai Health Sciences Program', '0701846263', '', 0, NULL, 'Rakai Health Sciences Program CLINIC', 'aqqJXIn2j84', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(629, 'Rakai Hospital', '0774880730', '', 0, NULL, 'Rakai Hospital', 'axNgLDj6B5Q', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(633, 'Lubaga Hospital', '0712418026', '', 0, NULL, 'Lubaga Hospital', 'dgmy0Fjx1KZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(634, 'Rubaya H/C IV (Kabale)', '0778826036', '', 0, NULL, 'Rubaya   HC IV', 'oWTRZJbQxha', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(635, 'Rubongi Military Hospital', '0772440195', '', 0, NULL, 'Rubongi Military HOSPITAL', 'ZVwFNyBsJxz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(636, 'Rubuguri H/C IV', '0778280024', '', 0, NULL, 'Rubuguri HC IV', 'GTtwaqeomFa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(637, 'Rugaaga H/C IV', '0705012059', '', 0, NULL, 'Rugaaga HC IV', 'aHuJWP6FfFo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(638, 'Rugarama Hospital', '', '', 0, NULL, 'Rugarama Hospital', 'Z6BzVrxa9xd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(639, 'Rugazi H/C IV', '0788772011', '', 0, NULL, 'Rugazi HC IV', 'VvGZi1LcYyP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(641, 'Ruhiira H/C III', '0776384538', '', 0, NULL, 'Ruhiira HC III', 'aqpJDW5rDvU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(644, 'Ruhoko H/C IV', '0782842624', '', 0, NULL, 'Ruhoko HC IV', 'QLP6OdRGJsz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(645, 'Rukiri H/C III', '0783013988', '', 0, NULL, 'Rukiri HC III', 'waacA54DZjH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(648, 'Rukungiri H/C IV', '0775979607', '', 0, NULL, 'Rukungiri HC IV', 'amaqHI7PUL2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(649, 'Rukunyu H/C IV', '0777816044', '', 0, NULL, 'Rukunyu HC IV', 'HXap310Pwnz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(650, 'Rushere Community Hospital', '0714404180', '0712587176', 0, NULL, 'Rushere Community Hospital', 'rrjDjA0JfXN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(651, 'Rushooka H/C II', '0702181604', '', 0, NULL, 'St. Mother Francisca Lechner Rushooka HC', 'y1S7Kh163t9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(656, 'Rwashamaire H/C IV', '0772654754', '', 0, NULL, 'Rwashamaire HC IV', 'CSpqU3MIZuC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(659, 'Rwekubo H/C IV', '0783884557', '', 0, NULL, 'Rwekubo HC IV', 'XWqf7PB1OaR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(662, 'Rwenyawawa H/C III', '0777316225', '', 0, NULL, 'Rwenyawawa HC III', 'Y7XKVrGNA6d', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(666, 'Rwimi H/C III', '0772329079', '', 0, NULL, 'Rwimi HC III', 'aHXEy4fCaPw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(668, 'Seeta Nazigo H/C III', '0782796891', '', 0, NULL, 'Seeta-Nazigo HC III', 'qmgb0UXgPfs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(669, 'Ssembabule H/C IV', '0782310690', '', 0, NULL, 'Ssembabule HC IV', 'SYB67Y2wfuD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(671, 'Shuku H/C IV', '0782404266', '', 0, NULL, 'Shuuku HC IV', 'x5X8VtL2T0e', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(674, 'Soroti R R Hospital', '0782550647', '', 0, NULL, 'Soroti REGIONAL REF HOSPITAL', 'Nnms2rd2gpC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(677, 'St Balikuddembe Market/Uganda Cares  AHF', '0704220598/078928808', '', 0, NULL, 'St. Balikudembe- Kitwe HC II', 'achnrImSgWR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(679, 'St Joseph Hospital  Kitgum', '0782635422', '', 0, NULL, 'St. Joseph''S Kitgum HOSPITAL', 'g6xaEQ1fTQS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(685, 'TASO Gulu', '0783210962', '', 0, NULL, 'TASO Gulu Clinic', 'atGRMXTBJaA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(686, 'TASO Jinja', '0704530620', '', 0, NULL, 'TASO Jinja CLINIC', 'zK4jOLmfhz9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(687, 'TASO Masaka', '', '', 0, NULL, 'TASO Masaka CLINIC', 'ZO1Hltpt3Ko', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(688, 'TASO Masindi', '0781224406', '', 0, NULL, 'TASO  Clinic Masindi', 'GndRfUWcoQL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(689, 'TASO Mbale', '0701128152', '', 0, NULL, 'TASO Mbale Clinic', 'a929G14p47c', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(690, 'TASO Mbarara', '0750405263', '', 0, NULL, 'TASO Mbarara CLINIC', 'k4AuRrsUWCi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(691, 'TASO Mulago', '', '', 0, NULL, 'TASO Mulago CLINIC', 'QHyLvO7sL6p', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(692, 'TASO Rukungiri', '0772893531', '', 0, NULL, 'TASO Rukungiri HC II', 'yNzhd0wG9MO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(693, 'TASO Soroti', '0776473180', '', 0, NULL, 'TASO Soroti CLINIC', 'p0fJEq6m1ew', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(694, 'TASO Tororo', '0773633460', '', 0, NULL, 'TASO Tororo  CLINIC', 'CQqWk34vLNB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(695, 'Teboke H/C III', '0776207089', '', 0, NULL, 'Teboke (Gvt) HC III', 'hVamgpmtonX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(696, 'Tokora H/C IV', '0774073626', '', 0, NULL, 'Tokora HC IV', 'oLPpU9BQsKF', '2019-03-21 06:54:43', '2019-06-05 12:30:30');
INSERT INTO `facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(698, 'Tororo District Hospital', '0783210962', '', 0, NULL, 'Tororo General HOSPITAL', 'RPJpuHyPqWP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(702, 'Villa Maria Hospital', '0783978800', '0752392501', 0, NULL, 'Villa Maria Hospital', 'NTlPENoySCQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(703, 'Virika Hospital', '0783766916', '', 0, NULL, 'Virika Hospital', 'uiLzeURGsDn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(704, 'Wabulungu H/C III', '0752604175', '', 0, NULL, 'Wabulungu HC III', 'u5jXNGfi96o', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(705, 'Wakiso H/C IV', '0774549827', '', 0, NULL, 'Wakiso HC IV', 'UTcf3vkubN9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(706, 'Walukuba H/C IV', '0782815424', '', 0, NULL, 'Walukuba HC IV', 'E2mdeU0lkNe', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(709, 'Wol H/C III', '0777223186', '', 0, NULL, 'Wol HC III', 'qOIHRAbHyeu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(712, 'Yumbe Hospital', '0752101452', '', 0, NULL, 'Yumbe Hospital', 'MUxAV5pwDbk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(713, 'Kitaasa H/C III', '0772366861', '', 0, NULL, 'St. Mechtilda Kitaasa HC III', 'agQsp6hFdZa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(715, 'Bigasa H/C III', '07828503605', '', 0, NULL, 'Bigasa HC III', 'HW6fE9RYBjI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(717, 'Nampunge Church of God H/C III', '0774532736', '', 0, NULL, 'Nampunge HC II', 'O3FdvltAUSh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(720, 'Kyeizooba H/C III', '0779664167', '', 0, NULL, 'Kyeizooba HC III', 'aL6mherCqRW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(722, 'Mpunge H/C III (Mukono)', '0782683345', '', 0, NULL, 'Mpunge HC III', 'QROYnp0n7wL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(723, 'Koome H/C III', '0772454874', '', 0, NULL, 'Koome HC III', 'fkASUL2GNdM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(727, 'St Luke KMD (Kiyinda )H/C III (Mityana)', '0779112037', '', 0, NULL, 'St. Luke Kiyinda Mityana Diocese HC III', 'ocmJzmqmXWX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(728, 'Rengen H/C III', '0777442444', '', 0, NULL, 'Rengen HC III', 'NWVYfI4QaPR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(729, 'Nagojje H/C III', '0773414353', '', 0, NULL, 'Nagojje HC III', 'VSGCAKuW01y', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(732, 'Nabutiti H/C III', '', '', 0, NULL, 'Nabutiti HC III', 'as4V8saM5sc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(734, 'Kasanje H/C III', '0784723054', '', 0, NULL, 'Kasanje HC III', 'srSDFLCcrSi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(735, 'Nsangi H/C III', '0783195419', '', 0, NULL, 'Nsangi HC III', 'aFlGqyWRQfr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(736, 'Namulonge H/C III', '0772552703', '', 0, NULL, 'Namulonge HC III', 'XvZPDBgzWFf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(738, 'Kawanda H/C III', '0712934537', '', 0, NULL, 'Kawanda HC III', 'avZWtMODscD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(742, 'St Gabriel Mirembe Maria H/C III', '0781013509', '', 0, NULL, 'Mirembe Maria HC III', 'vh8cOiWZOv9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(743, 'Buwama H/C III', '0702121442', '', 0, NULL, 'Buwama HC III', 'Vi3ibjRtMzU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(745, 'Jinja Central H/C III', '0785207777', '', 0, NULL, 'Jinja Central HC III', 'JMmqH0e4HlX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(748, 'Ssekanyonyi H/C IV', '0782959013', '', 0, NULL, 'Ssekanyonyi HC IV', 'aFuRtjSdg4X', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(749, 'Nabalanga H/C III', '0772557616', '', 0, NULL, 'Nabalanga HC III', 'sqQsFNhXH9W', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(753, 'Kitenga H/C III (Mubende)', '0750800141', '', 0, NULL, 'Kitenga  HC III', 'QBPWzy66HiY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(757, 'Kyabazaala H/C III', '0752580986', '', 0, NULL, 'Kyabazaala HC III', 'a6p3dWy4ce7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(758, 'Mpumudde H/C III (Lyantonde)', '0757380166', '', 0, NULL, 'Mpumudde HC III', 'A8vURIvnH87', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(762, 'Nakasongola H/C IV', '0772344999', '', 0, NULL, 'Nakasongola HC IV', 'h2oF7upS6k9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(763, 'Ngom-oromo H/C II', '0783774860', '', 0, NULL, 'Mgomoromo/Ngomoroma HC II', 'ahIE2es9s39', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(764, 'Nazigo H/C III', '0776269130', '', 0, NULL, 'Nazigo HC III', 'Y7AAzZu1IrM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(765, 'Lyantonde Muslim H/C III', '0706874735', '', 0, NULL, 'Lyantonde Muslim HC III', 'RYMEkOh45MP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(766, 'Katoogo H/C III', '0772572333', '', 0, NULL, 'Katoogo HC III', 'axNVMZcgPLU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(768, 'Iganga Islamic H/C III', '0782705365', '', 0, NULL, 'Iganga Islamic Medical Center HC III', 'aElqyBOYxsd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(770, 'Mpenja H/C III', '0782700305', '', 0, NULL, 'Mpenja HC III', 'CcCjT4HFRuy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(771, 'Dwoli H/C III', '0773398844', '', 0, NULL, 'Dwooli HC III', 'aPr9XQM36Dn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(772, 'Komamboga H/C III', '0701387607', '', 0, NULL, 'Komamboga HC III', 'TT8I4Fy4d5r', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(773, 'Kisugu H/C III', '0783215551', '', 0, NULL, 'Kisugu HC III', 'aKmx8C5qUZ8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(774, 'Masaka Municipal Council H/C II', '0777832111', '', 0, NULL, 'Masaka Mun. Council HCII', 'fBndBN2WUYM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(776, 'Busedde H/C III', '0753312049', '', 0, NULL, 'Busedde HC III', 't5UJ7lyEPo3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(777, 'Kaliro H/C III (Lyantonde)', '0782030841', '', 0, NULL, 'Kaliiro HC III', 'MsrKKJaEXiV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(779, 'Busembatia H/C III', '0772065683', '', 0, NULL, 'Busembatia HC III', 'RWICuGNoE6b', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(782, 'Kisenyi H/C IV (Kampala)', '0774070357', '', 0, NULL, 'Kisenyi HC III', 'hjZvWkoLzzp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(784, 'Osukuru H/C III', '0785269965', '', 0, NULL, 'Osukuru HC III', 'z5H8YZiBOtr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(785, 'Achol Pii Military H/C IV', '0783949134', '', 0, NULL, '5Th  Military Division HOSPITAL', 'auzuV39xOTU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(786, 'Njeru T/C H/C III', '0773473526', '', 0, NULL, 'Njeru T.C HC III', 'OiuyBahpmGI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(787, 'Mpugwe H/C III', '0702929961', '', 0, NULL, 'Mpugwe HC III', 'RvVYLDPIzPb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(788, 'Entebbe Hospital MCH General', '0772493489', '', 0, NULL, 'Entebbe HOSPITAL', 'yApOnywci25', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(789, 'Maanyi H/C III', '0772440735', '', 0, NULL, 'Maanyi HC III', 'tKfAzzZrSC7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(790, 'Malangala H/C III', '0782099516', '', 0, NULL, 'Malangala HC III', 'qrvgF3UwZzS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(792, 'Ikumbya H/C III (Luuka)', '0782949756', '', 0, NULL, 'Ikumbya HC III', 'Hw81fhqydaB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(796, 'Lwamata H/C III', '0779136350', '', 0, NULL, 'Lwamata HC III', 'mNMqG0YEffI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(797, 'St Agatha Lwebitakuli', '0783930972', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(798, 'Lulyambuzi H/C III', '0781556754', '', 0, NULL, 'Lulyambuzi HC III', 'Tb7BdBuiIn8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(800, 'Wakisi H/C III', '0753718182', '', 0, NULL, 'Wakisi HC III', 'an1CZjQ65h7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(802, 'Budini H/C III', '0782322010', '', 0, NULL, 'Budini HC III', 'EYPlRLvDGxp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(803, 'Nkondo H/C III', '0754605455', '', 0, NULL, 'Nkondo HC III', 'x3sV3Vm3jFW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(804, 'Namasagali H/C III', '', '', 0, NULL, 'Namasagali HC III', 'xXyZHTAldd9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(805, 'Iganga Municipal Council H/C III', '0700246406', '', 0, NULL, 'Iganga Town Council HC III', 'M6qnxgpeCA4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(806, 'Kitayunjwa H/C III', '0751674285', '', 0, NULL, 'Kitayunjwa HC III', 'UhQMDsDfW85', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(807, 'Bukonte H/C III', '0781447699', '', 0, NULL, 'Bukonte HC II', 'aPCo8FVyXXJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(808, 'Banda H/C III (Namayingo)', '', '', 0, NULL, 'Banda HC III', 'eAfaPMGjisn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(810, 'Bulopa H/C III', '0773546040', '', 0, NULL, 'Bulopa HC III', 'gNdlN0CmZX2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(811, 'Nakalama H/C III', '0712812079', '', 0, NULL, 'Nakalama HC III', 'ixwFzMD6GcM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(812, 'Buluguyi H/C III', '', '', 0, NULL, 'Buluguyi HC III', 'YbtIUFv6PHM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(813, 'Bumooli H/C III', '0773861703', '', 0, NULL, 'Bumooli HC III', 'aspYcErPY7F', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(814, 'Balawoli H/C III', '0754670380', '', 0, NULL, 'Balawoli HC III', 'X0BZOCXmDkj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(816, 'Muterere H/C III', '0774838862', '', 0, NULL, 'Muterere HC III', 'RVFMEGRSxTl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(817, 'Mayuge H/C III (Bugiri)', '0774025303', '', 0, NULL, 'Bugiri Mayuge HC III GOVT', 'bV0ljliUSvK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(818, 'Nabisoigi H/C III', '0714151556', '', 0, NULL, 'Nabisoigi HC III', 'MMhakCx4Zy7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(819, 'Mbulamuti H/C III', '0775816902', '', 0, NULL, 'Mbulamuti HC III', 'aU7ebDxE9vM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(820, 'Bulidha H/C III', '0781471217', '', 0, NULL, 'Bulidha HC III', 'KPoshqPMs2y', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(821, 'Bupadhengo H/C III', '0782301791', '', 0, NULL, 'Bupadhengo HC III', 'ECSAxXG3JMh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(829, 'Kasawo H/C III', '0772546203', '', 0, NULL, 'Kasawo HC III', 'zbDMSGLsc1J', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(830, 'Bardege H/C III', '0779116765', '', 0, NULL, 'Bar-dege HC III', 'aKP6B0Z5nbZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(831, 'Buyende H/C III', '0779224881', '', 0, NULL, 'Buyende HC III', 'a6qaoH2Xzb1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(832, 'Irundu H/C III', '0756116974', '', 0, NULL, 'Irundu HC III', 'GRE9Qa05dRS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(833, 'Nabukalu H/C III', '0773236228', '', 0, NULL, 'Nabukalu HC III', 'txcjTxewsdC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(834, 'Gadumire H/C III', '0779052792', '', 0, NULL, 'Gadumire HC III', 'Jh6Ds2pV5vS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(835, 'Magada H/C III', '0782856856', '', 0, NULL, 'Magada HC III', 'bfvn50ACB0b', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(836, 'Makuutu H/C III', '0782087299', '', 0, NULL, 'Makuutu HC III', 'SL6MqJXGcbv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(838, 'KIU Teaching Hospital', '0705764883', '', 0, NULL, 'KIU Teaching Hospital', 'sMYprHm7m3K', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(840, 'Kinuuka H/C III', '0782319989', '', 0, NULL, 'Kinuuka  HC III', 'n5xUbellHaN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(841, 'Nabirumba H/C III', '0776938773', '', 0, NULL, 'Nabirumba HC III', 'BXdPG3XpRk8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(842, 'Sigulu H/C III', '0759501297', '', 0, NULL, 'Sigulu  HC III', 'AB05Zdfd4KF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(845, 'Kyampisi H/C III', '0752822247', '', 0, NULL, 'Kyampisi HC III', 'gQ7xBJtwsF3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(847, 'Kasambya H/C IV (Mubende)', '0776747526', '', 0, NULL, 'Mubende Kasambya HC III GOVT', 'asPYa4kd1vo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(848, 'Kimuli H/C III', '0754448895', '', 0, NULL, 'Kimuli HC III', 'akLIpF5HNjE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(850, 'Ayago H/C III', '0774093016', '', 0, NULL, 'Ayago HC III', 'AXlKF4953Sh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(852, 'Namwiwa H/C III', '0772978638', '', 0, NULL, 'Namwiwa HC III', 'tcaAIOTzAjy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(856, 'Kasagama H/C III', '0782392496', '', 0, NULL, 'Kasagama HC III', 'jX2AtJy4xmQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(858, 'Bulamagi H/C III', '0779601010', '', 0, NULL, 'Bulamagi HC III', 'Hx3bgntGfm7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(859, 'Bugaya H/C III (Buvuma)', '0776562714', '', 0, NULL, 'Bugaya HC III ( Buvuma )', 'aVeE8JrylXn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(863, 'Madudu H/C III', '0774176647', '', 0, NULL, 'Madudu HC III', 'Y5ighgzxrUT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(864, 'Ndejje H/C IV (Wakiso)', '0752613587', '', 0, NULL, 'Ndejje HC IV', 'aNt5WiVHx4G', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(865, 'Kabamba H/C III', '0702006222', '', 0, NULL, 'Kabamba/Kabamba Barracks HC III', 'feHZtyy5zKn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(866, 'Lodonga H/C III', '0773832941', '', 0, NULL, 'Lodonga HC III', 'P5GTK5hmugt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(867, 'Ttikalu H/C III', '0782375250', '', 0, NULL, 'Ttikalu HC III', 'l8JCkd3nqOV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(870, 'Nakasojjo H/C II', '0779214576', '', 0, NULL, 'Nakasojjo HC II', 'Hv485zI15KB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(873, 'Kibanda H/C III (Rakai)', '0778271344', '', 0, NULL, 'Kibanda HC III', 'GbWR7VCRA6Y', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(876, 'Ngogwe H/C III', '0751230267', '', 0, NULL, 'Ngogwe HC III', 'qdW8M8091gP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(877, 'Bulesa H/C III', '0787528852', '', 0, NULL, 'Bulesa HC III', 'xbM4diuk1dB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(879, 'Kifamba H/C III (Rakai)', '', '', 0, NULL, 'Kifamba HC III', 'oHu9DJNgKaV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(880, 'Goma H/C III', '0782923738', '', 0, NULL, 'Goma HC III', 'NB0Ww6f0PiX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(881, 'Musozi H/C III', '0754420342', '', 0, NULL, 'Musozi HC III', 'MlMuBEoqA9y', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(882, 'Okidi H/C III', '0775634031', '', 0, NULL, 'Okidi HC III', 'MxcpmhA0rrA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(883, 'Nawandala H/C III', '0775114311', '', 0, NULL, 'Nawandala HC III', 'hA4k0l8StRh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(884, 'Mutumba H/C III', '0776663877', '', 0, NULL, 'Mutumba HC III', 'MAH7X3G7Bfi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(886, 'Bugulumbya H/C III', '0783907440', '', 0, NULL, 'Bugulumbya HC III', 'Pm7k3OLfbXA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(887, 'Lubira H/C III', '0784746771', '', 0, NULL, 'Lubira HC III', 'NZmcEUkHQPs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(888, 'St Matia Mulumba H/C III (Namayingo)', '0785041846', '', 0, NULL, 'Buswale St. Matia HC III', 'ayBh8ous7GK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(890, 'Bbaale H/C IV', '0774868071', '', 0, NULL, 'Bbaale HC IV', 'ptIo7ouXsPw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(892, 'Newlife H/C III', '0782171097', '', 0, NULL, 'New Life Health Centre HC II', 'v6eIpzse4SO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(894, 'Budima H/C III', '0783665019', '', 0, NULL, 'Budiima HC III', 'CfUwC7rnAVI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(895, 'Lukolo H/C III', '0756358648', '', 0, NULL, 'Lukolo HC III', 'NRHnL9b4KGT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(897, 'Nsozi H/C III', '0773627721', '', 0, NULL, 'Nsozi HC III', 'dGIRbXEYTuQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(898, 'Kiyuni H/C III (Mubende)', '0705068525', '', 0, NULL, 'Mubende Kiyuni HC III GOVT', 'BuBhkTtnfuE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(899, 'Lwampanga H/C III', '0774630725', '', 0, NULL, 'Lwampanga HC III', 'werOrHbzh72', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(903, 'Kanoni H/C III (Gomba)', '0774112997', '', 0, NULL, 'Gomba Kanoni HC III GOVT', 'XsLMulDu2aw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(905, 'Iwemba H/C III', '0772331502', '', 0, NULL, 'Iwemba HC III', 'rlXW6WfCgAp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(906, 'Kifampa H/C III (Gomba)', '0755623835', '', 0, NULL, 'Kifampa HC III', 'gMSnZfci97x', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(907, 'Buwagajjo H/C III', '0773442061', '', 0, NULL, 'Buwagajjo HC III', 'imFgSY3OUvZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(908, 'Nakayonza H/C III', '0775144458', '', 0, NULL, 'Nakayonza HC III', 'R2Cl01FXyrt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(909, 'Busabaga H/C III', '0751946283', '', 0, NULL, 'Busabaga HC III', 'analluLubfV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(912, 'Bumwoni H/C III', '0784953327', '', 0, NULL, 'Bumwoni HC III', 'CIVkMjSRVBX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(913, 'Kateta H/C III', '0779736173', '', 0, NULL, 'Kateta Gvt HC III', 'TawGPygknTa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(916, 'Kyamulibwa H/C III', '0789641470', '', 0, NULL, 'Kyamulibwa Gvt HC III', 'mgr6AHrRokx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(921, 'Kigulu H/C II', '0712211325', '', 0, NULL, 'Kigulu HC II', 'nATS7pzO63j', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(922, 'Kigungu H/C III', '0774013068', '', 0, NULL, 'Kigungu HC III', 'MeFxWKBORKq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(927, 'Najjembe H/C III', '07835801413', '', 0, NULL, 'Najjembe HC III', 'PwgfpQbQXTQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(928, 'Lugasa H/C III', '0774485472', '', 0, NULL, 'Lugasa HC III', 'AvO7fMz294Z', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(929, 'Kacheri H/C III', '0773714808', '', 0, NULL, 'Kacheri  HC III', 'IW60hf7XNQ4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(933, 'Bubutu H/C III', '0752521809', '', 0, NULL, 'Bubutu HC III', 'aCZRqIkW8s5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(935, 'Bulondo H/C III', '0775618386', '', 0, NULL, 'Bulondo HC III', 'lAyJuyzL2Oj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(936, 'Singila H/C II', '0782674946', '', 0, NULL, 'Singila HC II', 'AgA6LVX4MQQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(937, 'Banda H/C II (Wakiso)', '0782646535', '', 0, NULL, 'Wakiso Banda HC II GOVT', 'aV1BxN0b2cm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(938, 'Irongo H/C III', '0782812167', '', 0, NULL, 'Irongo HC III', 'DHRgoZsi4Mx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(940, 'Butansi H/C III', '', '', 0, NULL, 'Butansi HC III', 'nWJKeP8N21c', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(943, 'Nabitsiichi H/C III', '0777262244', '', 0, NULL, 'Nabitsikhi HC III', 'VB6z6SmiL33', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(945, 'Nagongera H/C IV', '0774353014', '', 0, NULL, 'Nagongera HC IV', 'aQPRjLfrzRx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(946, 'Mayirye H/C III', '0779109003', '', 0, NULL, 'Mayirye (Arch Bishop Kiwanuka) HC III', 'MGoloBUb8vi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(954, 'Bumbo H/C III', '0776123889', '', 0, NULL, 'Bumbo HC III', 'uiIUQsgVTAj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(958, 'Busamuzi H/C III', '0776533001', '', 0, NULL, 'Busamuzi HC III', 'afzGq7RpOTl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(960, 'Nakitoma H/C III', '0775751508', '', 0, NULL, 'Nakitoma HC III', 'ixo6xmc8VE9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(962, 'Kakaire H/C III', '0773009580', '', 0, NULL, 'Kakaire HC III', 'cDySnTOLPKt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(964, 'Buwenge Hospital', '0774174781', '', 0, NULL, 'Buwenge General Hospital', 'XiavvWaLLRz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(965, 'Hukeseho H/C III', '0778094200', '', 0, NULL, 'Hukeseho HC III', 'a4qvKbfSybp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(969, 'Chawente H/C III', '0774164916', '', 0, NULL, 'Chawente HC III', 'tvw7mudvx3r', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(970, 'Kadungulu H/C III', '0776602484', '', 0, NULL, 'Kadungulu HC III', 'FuXspRGeawu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(971, 'Kawaala H/C III', '', '', 0, NULL, 'Kawaala Health Centre HC III', 'wepUthscBkh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(972, 'Ggolo H/C III', '0779203475', '', 0, NULL, 'Ggolo HC III', 'NHQdOv9RFcN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(975, 'Bukoova H/C III', '079486623', '', 0, NULL, 'Bukoova HC III', 'd6cSq5xJr84', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(976, 'Kakooge H/C III (Nakasongola)', '0782585897', '', 0, NULL, 'Kakooge HC III', 'i1KIxI3H281', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(980, 'Kyalulangira H/C III', '0782354936', '', 0, NULL, 'Kyalulangira HC III', 'hBhHjc3o6Fa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(981, 'Kimengo H/C III', '0701913230', '', 0, NULL, 'Kimengo HC III', 'u9ESrcugDMJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(983, 'Iyolwa H/C III', '0782086004', '', 0, NULL, 'Iyolwa HC III', 'XJMwYIWSmOO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(984, 'Kazwama H/C II', '0782585897', '', 0, NULL, 'Kazwama HC II', 'hwNTd8tjyyR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(987, 'Kabale H/C III (Hoima)', '0774968571', '', 0, NULL, 'Kabaale HC III', 'SuNPmvsGklv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(991, 'Metha Hospital', '0752645220', '', 0, NULL, 'Lugazi Scoul HOSPITAL', 'achC82olIo9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(996, 'Semuto H/C IV', '0787499257', '', 0, NULL, 'Semuto HC IV', 'zPvmdjd3Hw6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(998, 'Magamaga H/C III (Jinja)', '0772471072', '', 0, NULL, 'Magamaga HC III', 'abg74s2NDzQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1006, 'Our Lady  of Lourdes H/C III (Nakasongola)', '0782777430', '', 0, NULL, 'Our Lady Nakasongola HC III', 'FWFO4gWgFSk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1011, 'Apwori H/C III', '0779633267', '', 0, NULL, 'Apwori HC III', 'CWtHofajIfs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1016, 'Nadunget H/C III', '0782110280', '', 0, NULL, 'Nadunget HC III', 'aBkmoTyWd0a', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1018, 'Bugambe H/C III (Hoima)', '0775661876', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1021, 'Nabwendo H/C III', '0785840041', '', 0, NULL, 'Nabwendo HC III', 'J64jaeaqOc6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1025, 'Bunjako H/C III', '', '', 0, NULL, 'Bunjako HC III', 'X1RkzMg2Hn1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1027, 'Panyangasi H/C III', '0773815556', '', 0, NULL, 'Panyangasi/Kidera HC III', 'qbOt8Nswoff', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1029, 'Panyadoli H/C III', '0777053388', '', 0, NULL, 'Panyadoli HC III', 'a3qKoIZXK3t', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1034, 'Masindi Port H/C III', '0772033680', '', 0, NULL, 'Masindi Port HC III', 'PwHIdfpqYWi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1036, 'St Francis Health Care Services(Njeru-Buikwe)', '075455173', '', 0, NULL, 'St. Francis Health Care Services HC III', 'tDnc44nKr26', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1038, 'St Padre Pio H/C III Busunju', '0783523378', '', 0, NULL, 'St. Padre Pio Mirembe HC III', 'l3oOKBFWJkz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1039, 'Kakiri H/C III', '0772674849', '', 0, NULL, 'Kakiri HC III', 'EAr7pVCRxF3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1040, 'Kiziba H/C III (Rakai)', '0778658435', '', 0, NULL, 'Rakai Kiziba HC II GOVT', 'UjpKmijwPjr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1042, 'Kyabadaaza H/C III', '0782447049', '', 0, NULL, 'Kyabadaza HC III', 'qYIh49gM216', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1044, 'Kiragga H/C III', '0787419829', '', 0, NULL, 'Kiragga HC III', 'aGJJ5oqd2zk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1047, 'Mutunda H/C III', '0774267099', '', 0, NULL, 'Mutunda HC III', 'T72P3ebY53q', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1048, 'Kigumba H/C III', '0782126576', '', 0, NULL, 'Kigumba HC III', 'csFo3Bw4oTt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1050, 'Busaana H/C III', '0772337351', '', 0, NULL, 'Busaana HC III', 'aLmtlWu249T', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1059, 'Moroto Army H/C IV', '0789503034', '', 0, NULL, 'Moroto Army  HC III', 'pE5320aADcw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1060, 'Mukono Hospital C.O.U', '0776666244', '', 0, NULL, 'Mukono CoU HC IV', 'MNzaqWsKyxO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1062, 'Mende H/C III', '0775922302', '', 0, NULL, 'Mende HC III', 'UkAhDd9JpYl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1063, 'Kayango H/C III', '0772317674', '', 0, NULL, 'Kayango HC III', 'BNsfT2yL0kW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1073, 'Lwanda H/C III', '0774250308', '', 0, NULL, 'Lwanda HC III', 'Lo7mfA6jWTu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1074, 'Bitooma H/C III', '0777407512', '', 0, NULL, 'Bitooma HC III', 'IgKXuBYXQFl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1076, 'Bulera H/C III', '0789496775', '', 0, NULL, 'Bulera HC III', 'archepWw0ZZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1083, 'Bweema H/C III', '0771487441', '', 0, NULL, 'Bweema HC III', 'G6GmMEAZA9r', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1088, 'Nyantonzi H/C III', '0702682155', '', 0, NULL, 'Nyantonzi HC III', 'SzShxoEQf7a', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1092, 'Diima H/C III', '0751467277', '', 0, NULL, 'Diima HC III', 'xO0dHAa2wFK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1097, 'Lacor Opit H/C III (Omoro)', '0777320900', '', 0, NULL, 'Opit HC III', 'IdUFKUbqQiQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1100, 'Kalonga H/C III', '0774105613', '', 0, NULL, 'Kalonga HC III', 'YaUCgS8WMMW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1101, 'Myanzi H/C III (Mubende)', '0781567775', '', 0, NULL, 'Myanzi HC III', 'ausfaeGjscI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1102, 'Kira H/C III', '0772335575', '', 0, NULL, 'Kira HC III', 'I2O4ZRrmyQN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1103, 'Nabiswera H/C III', '0775967443', '', 0, NULL, 'Nabiswera HC III', 'aRE0Ejk5hdp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1104, 'Wabigalo H/C III', '0772510162', '', 0, NULL, 'Wabigalo HC III', 'QxjjT8pu7tx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1108, 'Ogoko H/C II', '0774564653', '', 0, NULL, 'Ogoko HC II', 'avy7joRGT2x', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1109, 'Nyamarwa H/C III (Kibaale)', '0783984137', '', 0, NULL, 'Nyamarwa HC III', 'Q6MT6wA0bBm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1112, 'Buseruka H/C III', '0771603871', '', 0, NULL, 'Buseruka HC III', 'ccVG52jNm8D', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1113, 'Kaseeta H/C III', '0777101404', '', 0, NULL, 'Kaseeta HC II', 'k38SanlZHyl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1117, 'Kiyuni H/C III (Kyankwanzi)', '0775913798', '', 0, NULL, 'Kyankwanzi Kiyuni HC III', 'GjiT4Fcwj6P', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1118, 'Waibuga H/C III', '0753190506', '', 0, NULL, 'Waibuga HC III', 'aA2zaYJW1YT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1121, 'Kyaayi H/C III', '0757288810', '', 0, NULL, 'Kyai HC III', 'tPiPaWz3TIK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1123, 'Minakulu H/C III (Oyam)', '0752994325', '', 0, NULL, 'Minakulu Gvt HC II', 'TG4nYtwDBTr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1125, 'Ober H/C III', '', '', 0, NULL, 'Ober HC III', 'hdrTrRDuwOU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1131, 'Lukaya H/C III', '07794923791', '', 0, NULL, 'Lukaya HC III', 'IDk3QfceRQG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1139, 'Hima Cement Clinic', '0702255365', '', 0, NULL, 'Hima Star Clinic', 'FAjgEVpPiLO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1141, 'Nyabubare H/C III', '0701195071', '', 0, NULL, 'Nyabubare HC III', 'ci2uaeBv4Jg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1142, 'Kyotera Medical Centre', '0709230738', '', 0, NULL, 'Kyotera Med. Centre HC II', 'io8JhubppQo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1145, 'Wabwoko H/C III', '', '', 0, NULL, 'Wabwoko HC III', 'a7fC0KrYZzK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1146, 'Merikit H/C III', '0782307894', '', 0, NULL, 'Merikit HC III', 'rxu4zvH3DC1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1147, 'Kikamulo H/C III', '0773710558', '', 0, NULL, 'Kikamulo HC III', 'Q5qLPWNEj41', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1149, 'Wakyato H/C III', '0775330824', '', 0, NULL, 'Wakyato HC III', 'eQXTs1XHYpK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1150, 'Ngoma H/C IV (Nakaseke)', '0777386117', '', 0, NULL, 'Ngoma HC III', 'aFvqMkkSctS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1159, 'Nawanyago H/C III', '0779468841', '', 0, NULL, 'Nawanyago HC III', 'tbeQC8kTgVd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1161, 'Wesunire H/C III', '0772074771', '', 0, NULL, 'Wesunire Cath. HC II', 'KaQgUo68H9v', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1169, 'Kyamuhunga H/C III', '0704774905', '', 0, NULL, 'Kyamuhunga HC III', 'aerTdJxlEQh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1171, 'Kalungi H/C III (Nakasongola)', '0779510066', '', 0, NULL, 'Kalungi HC III', 'wgSmdZGeb5I', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1175, 'Bweyogerere H/C III', '078274922', '', 0, NULL, 'Bweyogerere HC III', 'cmB5Q4tejGP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1176, 'Kirewa H/C III', '0779112270', '', 0, NULL, 'Kirewa Comm. HC III', 'TCjLjkwPQ8c', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1177, 'Kakanju H/C III', '0782749848', '', 0, NULL, 'Kakanju HC III', 'VV5c8F4HVjw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1179, 'Kawongo H/C III', '0784074745', '', 0, NULL, 'Kawongo HC III', 'xFu5BXdkrZj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1182, 'Kabira H/C III (Mitooma)', '0751422089', '', 0, NULL, 'Mitooma Kabira HC III GOVT', 'RKTrEW3Vw7X', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1183, 'Mirambi H/C III', '0777510067', '', 0, NULL, 'Mirambi HC III', 'RWEo3tF0K1h', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1184, 'Ikoba H/C III', '0704513389', '', 0, NULL, 'Ikoba HC III', 'I9E4CMmLVbn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1185, 'Bushika H/C III', '0782152230', '', 0, NULL, 'Bushika HC III', 'J3KJzX1JSXu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1192, 'Soroti H/C III', '0782515470', '', 0, NULL, 'Soroti HC III', 'cY2kQBkzz17', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1195, 'Bulika H/C II', '0772026320', '', 0, NULL, 'Bulika HC II', 'x4zVP4YLDy7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1200, 'Magala H/C III', '0772867322', '', 0, NULL, 'Magala HC III', 'WqoBdlGeBgn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1202, 'Biharwe H/C III', '0772870408', '', 0, NULL, 'Biharwe (Nyabuhama) HC III', 'hAdnePvF54E', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1203, 'Kakoba Division H/C III', '0782777708', '', 0, NULL, 'Kakoba Domiciliary Clinic', 'WjUTld3U8r2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1205, 'Rubindi H/C III', '0773474737', '', 0, NULL, 'Rubindi HC III', 'kw2BNLtK1FZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1206, 'Mwizi H/C III', '0703009996', '', 0, NULL, 'Mwizi HC III', 'aekCLvuNCrj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1211, 'Emesco H/C IV', '0779531458', '', 0, NULL, 'EMESCO HC III', 'qXpKvhiylZz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1213, 'St Matia Mulumba H/C III (Mubende)', '0753908002', '', 0, NULL, 'St. Matia Mulumba HC III', 'Ae8byorr2lF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1217, 'Katulikire H/C III', '0773625853', '', 0, NULL, 'Katulikire HC III', 'auWHq0LQsFf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1219, 'Puranga H/C III', '0794209048', '', 0, NULL, 'Puranga HC III', 'flJx2pns0FY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1220, 'Ntenjeru H/C III', '0782421768', '', 0, NULL, 'Ntenjeru HC III', 'xKKIcgLVH9x', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1221, 'Maaji A H/C II', '0775990577', '', 0, NULL, 'Maaji A HC II', 'Lq5bORbEZDi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1223, 'Engari Community H/C III', '0784835251', '', 0, NULL, 'Engari Community HC III', 'toGKbXMtRf8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1224, 'Buteba H/C III', '0782258255', '', 0, NULL, 'Buteba HC III', 'aJgUSQQuIsM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1225, 'Katovu H/C III', '0703710311', '', 0, NULL, 'Katovu HC III', 'qp3zotdBH8Y', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1227, 'Okwang H/C III', '', '', 0, NULL, 'Okwang HC III', 'jmYDcub8QTz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1229, 'Kashambya H/C III', '0771681090', '', 0, NULL, 'Kashambya HC III', 'jtrHsubBsqd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1232, 'Kagongi H/C III', '0774615891', '', 0, NULL, 'Kagongi HC III', 'XQCqKzjyAZg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1233, 'Ndeija H/C III', '0702349311', '', 0, NULL, 'Ndeija HC III', 'w710lzfn4pu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1239, 'Mudakori H/C III', '0772/0702440973', '', 0, NULL, 'Mudakor HC III', 'ezl9nwYbSdn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1244, 'Kisozi H/C III', '0703270227', '', 0, NULL, 'Kisozi HC III GOVT', 'KNuyUySHocg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1248, 'Bukanga H/C III', '0773549059', '', 0, NULL, 'Bukanga HC III', 'edqx4oFg95R', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1256, 'Butende H/C III', '0775776565', '', 0, NULL, 'Butende HC III', 'S79Lcu8O003', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1257, 'Buwunga H/C III (Bugiri)', '0774372238', '', 0, NULL, 'Bugiri Buwunga HC III GOVT', 'yJNtR9S3CZZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1261, 'Nyarusiza H/C III', '0773258770', '', 0, NULL, 'Nyarusiza HC III', 'Pgi000QNqrV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1262, 'Kasozi H/C III (Wakiso)', '0779901695', '', 0, NULL, 'Wakiso Kasozi HC III GOVT', 'ZDdH3JVg9pD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1263, 'Busowobi H/C III', '0783900263', '', 0, NULL, 'Busowobi HC III', 'fqWdsy0CuFR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1266, 'Bugangari H/C IV', '0782473508', '', 0, NULL, 'Bugangari HC IV', 'aG2h9UI08nA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1271, 'Mwenge Estate Clinic', '0787365791', '', 0, NULL, 'Mwenge Clinic HC III', 'afJ1tepzpak', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1273, 'Buwooya H/C III', '0776147873', '', 0, NULL, 'Buwooya HC II', 'AIl1p6YgqxA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1274, 'Bison H/C III', '0779958793', '', 0, NULL, 'Bison HC III', 'aZep2aolzmX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1276, 'Bwambara H/C III', '0782741062', '', 0, NULL, 'Bwambara HC III', 'ACeIX77jOBg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1278, 'Kiyeyi H/C III', '0703565790', '', 0, NULL, 'Kiyeyi HC III', 'ZeXBMNmaaI1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1281, 'MJAP-MMC  H/C IV', '0755553579', '', 0, NULL, 'Mbarara Municipal Council HC IV', 'pCasaBs63nR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1285, 'Kanyamwirima H/C III', '0777364670', '', 0, NULL, 'Kanyamwirima Army  HC III', 'ZqwV5PWv4Pt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1287, 'Buhanika H/C III', '0774304731', '', 0, NULL, 'Buhanika HC III', 'pefIQOO4szC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1288, 'Namatala H/C IV', '0779832509', '', 0, NULL, 'Namatala HC IV', 'mAVOIO9mDPJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1291, 'Kibengo H/C II (Isingiro)', '0788528932', '', 0, NULL, 'Kibengo HC II NGO', 'oWA8scZHcEV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1293, 'Kashongi H/C III', '0704492278', '', 0, NULL, 'Kashongi HC III', 'h2IH7DjeJ21', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1298, 'Hope Clinic Lukuli', '0785037971', '', 0, NULL, 'Hope Clinic Lukuli HC II', 'Ap53MmxflW6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1300, 'Hope Again Medical Centre (Kyenjojo)', '0783030068', '', 0, NULL, 'Hope Again Medical Centre HC III', 'aLF9fK0AtT7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1302, 'Nyakayojo H/C III', '', '', 0, NULL, 'Nyakayojo HC III', 'fvak0fciiOr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1303, 'Nsambya Home Care', '0757119752', '', 0, NULL, 'Nsambya Home Care Clinic', 'isXZREUsgiH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1307, 'Kasambya H/C III (Kalungu)', '0753126432', '', 0, NULL, 'Kalungu Kasambya HC III GOVT', 'MLgsYoX2xWW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1311, 'Rushoroza H/C III', '', '', 0, NULL, 'Rushoroza HC III', 'EgNsQqE3k5S', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1314, 'Butemba H/C III', '0775412197', '', 0, NULL, 'Butemba HC III', 'JHtjwrjBlm4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1315, 'Lubya H/C II', '0775359981', '', 0, NULL, 'Lubya HC II', 'aZjBV5O7kkf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1316, 'Katwe H/C III (Kiboga)', '0784751968', '', 0, NULL, 'Kiboga Katwe HC III GOVT', 'FHtJEqFHwS4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1318, 'St Jacinta H/C III', '0784784764', '', 0, NULL, 'St. Jacinta Zigoti HC III', 'sRkrARaYj0F', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1325, 'Nkokonjeru  H/C III (Kayunga)', '0782649498', '', 0, NULL, 'Nkokonjeru HC III', 'MnlhBeOd2dx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1326, 'Nakifuma H/C III', '0782973510', '', 0, NULL, 'Nakifuma HC III', 'bAh0tns9mFX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1327, 'Kimenyedde H/C II', '0703914568', '', 0, NULL, 'Kimmenyedde HC II', 'gK0T4N1aFZu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1329, 'Burere H/C III', '0776303135', '', 0, NULL, 'Burere HC III', 'bYYKbpHb8Y7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1334, 'Mukabara H/C III', '0779428429', '', 0, NULL, 'Mukabara HC III', 'QCufWVvV6cj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1337, 'St Matia Mulumba H/C III (Buyende)', '', '', 0, NULL, 'Irundu St. Matthias Mulumba HC III', 'wVUhuXat0MO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1344, 'Nyakashashara H/C III', '0777578374', '', 0, NULL, 'Nyakashashara HC III', 'SU8JOQnA0n1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1345, 'Kisiizi  H/C III', '0772654749', '', 0, NULL, 'Kisiizi Gvt HC III', 'TsELcr5sajj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1349, 'PNC (Baylor-Mulago)', '0775135977', '', 0, NULL, 'Mulago National Hospital- Old Mulago Pos', 'mS4KHqXpvDB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1350, 'Kasaali  H/C III', '0782581121', '', 0, NULL, 'Kasaali HC III', 'ZLJUYEZegpQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1351, 'Mutukula H/C III', '0702153292', '', 0, NULL, 'Mutukula HC III', 'X7iYabwpJfR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1374, 'Kikandwa  H/C  III (Mityana)', '0774831073', '', 0, NULL, 'Kikandwa HC III', 'aVPydv9zaor', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1385, 'Mugoye H/C III', '0782026552', '', 0, NULL, 'Mugoye HC III', 'aeWNPmn3Zrf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1391, 'Kyankwanzi H/C III', '0782921669', '', 0, NULL, 'Kyankwazi HC III', 'RNfCSfnBlxh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1394, 'Kacheera H/C III', '0783782379', '', 0, NULL, 'Kacheera HC III', 'k3xgvufxeWb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1398, 'Kashare H/C III', '0773147700', '', 0, NULL, 'Kashare HC III', 'ahkQO7FQKKK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1402, 'Pakanyi H/C III', '0777318950', '', 0, NULL, 'Pakanyi HC III', 'LyUOH3aGCga', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1404, 'Kolonyi Hospital', '0783426583', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1415, 'Alenga H/C III', '0752238402', '', 0, NULL, 'Alenga HC III', 'eR77udlIWIM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1419, 'Bwendero H/C III', '0782840049', '', 0, NULL, 'Bwendero HC III', 'yOzYKPK76Bq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1424, 'Kakomo H/C III', '0779010578', '', 0, NULL, 'Kakomo HC III', 'kbiNehvstx4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1425, 'Buyanja H/C III (Rukungiri)', '0782272894', '', 0, NULL, 'Buyanja HC III', 'abHQOTY0rmo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1426, 'JOY Medical Centre(Kampala)', '0700189921', '', 0, NULL, 'Joy Medical Centre HC III', 'O2ISli6TrDu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1432, 'Kameruka H/C III', '0783248396', '', 0, NULL, 'Kameruka HC III', 'ptpCYlWn6s7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1436, 'Angal Hospital (St Luke)', '077326829', '', 0, NULL, 'Angal St. Luke HOSPITAL', 'K7Do3WBvmLa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1438, 'Ikonia H/C III', '0782949756', '', 0, NULL, 'Ikonia HC III', 'BaAs4hm4jc7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1444, 'Kinoni H/C III (Kiruhura)', '', '', 0, NULL, 'Kiruhura Kinoni HC III GOVT', 'ypTdjdfOiN7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1447, 'Kikonda H/C III', '0773095756', '', 0, NULL, 'Kikonda HC III', 'N05ZDulF2ME', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1451, 'Lambu H/C', '0776342034', '', 0, NULL, 'Lambu HC II', 'OpHCVPDEaBb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1453, 'TASO Entebbe', '0752812084', '', 0, NULL, 'TASO Entebbe CLINIC', 'tf5lSUl7OmO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1455, 'Bugaya H/C III (Buyende)', '0753404721', '', 0, NULL, 'Buyende Bugaya HC III GOVT', 'ADB4cMlJP2q', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1462, 'Health Initiative for Africa- Uganda', '0777040536', '', 0, NULL, 'Health Initiative for Africa - Uganda', 'D2O6Qzf4hl8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1464, 'Kyatiri H/C III', '0783475577', '', 0, NULL, 'Kyatiri HC III', 'g8JZTLexaAr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1467, 'Kida Hospital', '0779776333', '', 0, NULL, 'Kida Hospital', 'QEpV6yJSsCN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1468, 'Nyakitibwa H/C III', '0750506074', '', 0, NULL, 'Nyakitiibwa HC III', 'aFXkqZXMomP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1470, 'St Anthony Hospital', '0782806266', '', 0, NULL, 'St. Anthony''S Tororo HOSPITAL', 'iOwO7cTQKfH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1472, 'Nurtre  Africa H/C III', '0777335365', '', 0, NULL, 'Nurture Africa', 'dQprl8P1Uae', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1473, 'Kwapa H/C III', '0753663517', '', 0, NULL, 'Kwapa HC III', 'idW1pR7k8m2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1474, 'Kisojo H/C II (Kasese)', '0772920134', '', 0, NULL, 'Mubuku/Kisojo HC II', 'HjhLsl0DHSQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1478, 'Kabaale H/C III(KALUNGU)', '0775512013', '', 0, NULL, 'Kalungu Kabaale HC II GOVT', 'Cx3eXkf07dC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1484, 'Biiso H/C III', '0771405096', '', 0, NULL, 'Biiso HC III', 'EPMb6dGjqnz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1488, 'St Francis C H/C III (HOSFA)- Mityana', '0779492379', '', 0, NULL, 'St. Francis,  HC III', 'HVwuyUY7azZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1490, 'Bukewa H/C III', '0788308221', '', 0, NULL, 'Bukewa HC III', 'wcTUcjmdOA3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1491, 'Bukhabusi H/C III', '0773851384', '', 0, NULL, 'Bukhabusi HC III', 'JiMsrQGUs6H', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1492, 'Nakaloke H/C III', '', '', 0, NULL, 'Nakaloke HC III', 'J1vQouUOY5h', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1498, 'Mujunza H/C II', '0781029097', '', 0, NULL, 'Mujunza HC II', 'cdusFUkNTOC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1502, 'Kanyantorogo H/C III', '0782440485', '', 0, NULL, 'Kanyantorogo Gvt HC III', 'NLIAgxXVsuv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1505, 'Bukiro H/C III', '0782596463', '', 0, NULL, 'Bukiiro HC III', 'BF4V8LnfSsj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1506, 'Ruharo Mission Hospital', '', '', 0, NULL, 'Ruharo Mission Hospital', 'gBG1N1o51QR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1507, 'Kiziba H/C III (Wakiso)', '0712880371', '', 0, NULL, 'Kiziba HC III', 'gCobOTnUj2H', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1508, 'Mwenge H/C III', '0782312850', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1517, 'Lacor Hospital', '0772361901', '', 0, NULL, 'St. Mary''s Hospital Lacor', 'aPsvoBYxsDS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1521, 'Reachout (Mbuya Site)', '0776509554', '', 0, NULL, 'Reach Out - Mbuya Clinic HC II', 'lQvAAAQpBP2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1524, 'Kamonkoli H/C III', '', '', 0, NULL, 'Kamonkoli HC III', 'aEAa6essoBR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1526, 'Kasensero H/C II', '0779417473', '', 0, NULL, 'Kasensero HC II', 'KyCqBaEFJk5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1535, 'AIDS Information Centre (Mbarara)', '0702/0772-566692', '', 0, NULL, 'AIC Mbarara Main Branch CLINIC', 'sPWbPZtb3ut', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1536, 'Kamukuzi Division H/C II', '0756409117 ', '', 0, NULL, 'Kamukuzi Division HC II', 'qbh38u2Laz4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1537, 'Mbarara Community Hospital', '0774654482', '', 0, NULL, 'Mbarara Community Hospital', 'NvEq5qtAV4e', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1538, 'Muko H/C III (NGO)', '0784044472', '', 0, NULL, 'Muko Ngo HC III', 'gOFecbOs5XI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1540, 'Kyogo H/C III', '0783703691', '', 0, NULL, 'Kyogo HC III', 'TsDWptFDnmn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1543, 'Kitanga H/C III (Rukiga)', '07002915661', '', 0, NULL, 'Kitanga HC II GOVT', 'bCuS4DX8Emh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1564, 'Reachout (Banda Site)', '0754308311', '', 0, NULL, 'Reach Out - Banda CLINIC', 'F8jqYgk21HM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1565, 'Bufumira H/C III', '0773445008', '', 0, NULL, 'Bufumira HC III', 'mWaRCpc5hPU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1566, '407 Brigade H/C III', '0789801648', '', 0, NULL, '407 Brigade HC III', 'WqIs7ciPmmO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1567, 'Kijunjubwa H/C III', '0779022276', '', 0, NULL, 'Kijunjubwa HC III', 'CwftR8k7pWb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1569, 'Byakabanda H/C III', '0775072717', '', 0, NULL, 'Byakabanda HC III', 'tnBn02e8bRU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1570, 'Kashenshero H/C III', '0782204050', '', 0, NULL, 'Kashenshero HC III', 'Lu7D9BapOxL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1575, 'Kirumba H/C III (Rakai)', '07773319300', '', 0, NULL, 'Kirumba  HC III', 'alzpRLW14i8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1576, 'Muwanga H/C III', '0775307477', '', 0, NULL, 'Muwanga HC III', 'kKuqQelGUnq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1581, 'Butiaba H/C II', '0782833281', '', 0, NULL, 'Butiaba HC III', 'GnAcwCmEkxS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1583, 'Biwihi H/C II', '0772533225', '', 0, NULL, 'Biwihi HC II', 'y6p5eLimu2C', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1584, 'Mugarama H/C III (Kibaale)', '0706263108', '', 0, NULL, 'Mugarama HC III', 'JmHLIGnm4TQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1594, 'Nsambya Police H/C IV', '0782061513', '', 0, NULL, 'Nsambya Police Clinic HC III', 'nBjhoOrem20', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1596, 'Olwal H/C III', '0782593689', '', 0, NULL, 'Olwal HC III', 'vnIPfEUR8ce', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1598, 'Kibale H/C III(Palisa)', '0773623632', '', 0, NULL, 'Kibale HC III', 'BsWuppxjpNO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1599, 'Adilang H/C III', '075454588', '', 0, NULL, 'Adilang HC III', 'FvewOonC8lS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1603, 'FAD Military H/C IV (MMH)', '0701793003', '', 0, NULL, 'Masindi Military/Army Barracks HC IV', 'a4dl1FKIVQJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1604, 'St Monica H/C III (Katende)', '0776232003', '', 0, NULL, 'St. Monica Katende HC III', 'aLQq5QTDV2s', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1618, 'Bubaare H/C III (Kabale)', '0772692569', '', 0, NULL, 'Bubare HC III', 'Lz5IMmqsLcZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1620, 'Busiro H/C III', '0753409201', '', 0, NULL, 'Busiro HC III', 's3KGtzqaMyJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1621, 'Rutenga H/C III', '0774091142', '', 0, NULL, 'Rutenga HC III', 'uTkySNCx3j2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1625, 'Mella H/C III', '0782494614', '', 0, NULL, 'Mella HC III', 'hRQXf9wuHdW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1628, 'Molo H/C III', '0779774381', '', 0, NULL, 'Molo HC III', 'H0j9ehK06DJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1631, 'Aloi Mission H/C III', '0774889493', '', 0, NULL, 'Aloi Mission HC III', 'q2vSqN5xoZL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1638, 'Pajimo H/C III', '', '', 0, NULL, 'Pajimo HC III', 'f33lKK2tJNV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1639, 'Poyameri H/C III', '0751166853', '', 0, NULL, 'Poyameri HC III', 'GmcwI86bnbe', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1645, 'Kabubbu H/C III', '0782637984', '', 0, NULL, 'Kabubbu HC II', 'CWamWxvYUWQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1647, 'Petta H/C III', '0771467299', '', 0, NULL, 'Petta HC III', 'ybSnsdFkWFK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1648, 'Lwajje H/C III', '0782762164', '', 0, NULL, 'Lwajje HC II', 'bBNSvGxVrSq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1654, 'St Francis H/C   III Migyeera', '0777859113', '', 0, NULL, 'ST. Francis HC III', 'ryU8AKAQAnR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1655, 'Paya H/C III', '0781336819', '', 0, NULL, 'Paya HC III', 'SotbYUljYZa', '2019-03-21 06:54:43', '2019-06-05 12:30:30');
INSERT INTO `facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(1658, 'Bukibokolo H/C III', '', '', 0, NULL, 'Bukibokolo HC III', 'H713vHjaFbd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1659, 'St Marys Kigumba H/C III (NGO)', '0779984620', '', 0, NULL, 'St. Mary''s Kigumba  HC III', 'SSfQUjnbstd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1661, 'Kambugu H/C III (Kiboga)', '0754013674', '', 0, NULL, 'Kiboga Kambugu HC II GOVT', 'CMNFahpvV4I', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1662, 'Mirembe H/C III', '0782893593', '', 0, NULL, 'Mirembe HC III', 'UYmlNJzKbed', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1664, 'Bujugu H/C III', '0773262635', '', 0, NULL, 'Bujugu HC III', 'Ond9n3CrBxY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1668, 'Kisubba H/C III', '0774663311', '', 0, NULL, 'Kisuba HC III', 'aySqIA0RRpH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1672, 'Bupoto H/c III', '0700422756', '', 0, NULL, 'Bupoto Hc III', 'aJCkfyIurtg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1674, 'Kisoko H/C III (Tororo)', '', '', 0, NULL, 'Kisoko HC III', 'HNjaSmUnPzM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1678, 'Kyebando H/C III', '0783099516', '', 0, NULL, 'Kyebando HC III GOVT', 'vgRXnM3VETo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1681, 'Bukaya H/C II', '0779357602', '', 0, NULL, 'Bukaya HC II', 'RVSKVTxRcnF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1685, 'Atangi H/C III', '0777774206', '', 0, NULL, 'Atangi HC III', 'I3q42sKAJua', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1686, 'Kingdom Life Medical Martenity H/C II', '0774875341', '', 0, NULL, 'Kingdom Life Health Centre CLINIC', 'yfEXqa4COUS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1689, 'AIDS Information Centre (Kabale)', '0772444687', '', 0, NULL, 'AIC Kabale Main Branch Clinic', 's0sTvb5DnDP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1690, 'Uganda Muslim Supreme Council H/C III', '0782733697', '', 0, NULL, 'UMSC Mityana Clinic HC III', 'FU2kBudFOKd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1693, 'Bujuuko H/C III', '0702024884', '', 0, NULL, 'Bujuuko HC III', 'pUZjhP8bvwF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1694, 'Sekiwunga H/C III', '0782082334', '', 0, NULL, 'Sekiwunga HC III', 'CB9zwzOqEbX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1698, 'Butoolo H/C III', '0705440185', '', 0, NULL, 'Butoolo HC III', 'Co0DLFVgmGz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1704, 'Kampiringisa H/C III', '0772877014', '', 0, NULL, 'Kampiringisa HC III', 'mm6DbH6wKeQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1707, 'Busawa Manze H/C III', '', '', 0, NULL, 'Busawamanze HC III', 'rjIpxD2fcZB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1712, 'Malukhu H/C III', '0774206095', '', 0, NULL, 'Malukhu HC III', 'V2x1UIpO46L', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1713, 'China Uganda Friendship Hospital- Naguru', '0706079185', '', 0, NULL, 'Naguru  Hospital  - China Uganda Friends', 'h40pKp93Mtc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1714, 'Nyakatare H/C III', '0782272867', '', 0, NULL, 'Nyakatare HC III', 'Nm3mxuGGRG1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1717, 'Mpungu H/C III (Kanungu)', '', '', 0, NULL, 'Mpungu HC III', 's5LS26QGqzl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1718, 'Labongogali H/C III', '0783210962', '', 0, NULL, 'Labongogali HC II', 'Tvayfd3cIU2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1720, 'Ggoli H/C III (Mpigi)', '0701321776', '', 0, NULL, 'Ggoli HC III NGO', 'SzVYBCcGiM7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1725, 'St Bernards Mannya H/C III', '0751849102', '', 0, NULL, 'St. Bernards Mannya HC II', 'a7obyfFdJ8u', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1729, 'Ibulanku H/C III', '0784464139', '', 0, NULL, 'Ibulanku Community Health Centre HC III', 'kiuNceUg1Zo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1733, 'Wattuba H/C III', '07526810749', '', 0, NULL, 'Watubba HC III', 'Tr9SwdDaZNB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1734, 'Katete H/C III (Kanungu)', '0775141825', '', 0, NULL, 'Katete HC III', 'zu1VixoD4pu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1738, 'Kyetume H/C III (Lwengo)', '0772885521', '', 0, NULL, 'Kyetume HC III', 'w53Iyr73JjT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1740, 'Kikolimbo H/C III', '0772434967', '', 0, NULL, 'Kikolimbo HC II', 'KcfKx2brSuv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1743, 'Health Initiatives Association', '0775285123', '', 0, NULL, 'Health Initiative Association Uganda', 'U4PSDjSLsi2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1748, 'Taqwa H/C III', '0772019587', '', 0, NULL, 'Taqwa HC III', 'Ipvxi1nV5X4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1749, 'Masaka Police Clinic', '0752337301', '', 0, NULL, 'Masaka Police HC II', 'SWWHTLQjZXW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1750, 'Noahs Ark Family Clinic', '0773783853', '', 0, NULL, 'Noah`s Ark HC III', 'dXEcBso8rQv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1754, 'St Francis Mbiriizi H/C III', '0773837749', '', 0, NULL, 'St. Francis Mbirizi HC III', 'n3uHerzsnE1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1759, 'Bweyogerere H/C III Muslim (Hassan Tourabi H/C III)', '0782800415', '', 0, NULL, 'Bweyogerere Hassan Turabi. HC III', 'hzPoo5zzWjj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1760, 'St Apollo H/C III-Namasuba', '0779299952', '', 0, NULL, 'Namasuba Medical Care CLINIC-NR', 'bcdfCnTKqaR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1768, 'Mitukula H/C III', '0701879699', '', 0, NULL, 'Mitukula HC III', 'SElLcUjqrGg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1772, 'Namutamba H/C III  COU  (Mityana)', '0704741200', '', 0, NULL, 'Namutamba HC III', 'sf2baAzfwgW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1774, 'Kayonza H/C III (Kanungu)', '0779142064', '', 0, NULL, 'Kayonza Tea Factory HC III', 'x65jpp0WQnc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1777, 'Lacor H/C III (Amuru)', '0774848923', '', 0, NULL, 'Lacor (Amuru) HC III', 'cjnFsHrJ4M4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1779, 'Lake Mburo H/C III', '0772057442', '', 0, NULL, 'Kanyaryeru (Lake Mburo) HC III', 'GVN2Bcibhmd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1783, 'Anaka H/C II (Madi Opei)', '0787067014', '', 0, NULL, 'Anaka H/C II (Madi Opei)', 'bLzMzz5fzGQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1784, 'Zzinga H/C II', '0703351413', '', 0, NULL, 'ZINGA HC II', 'nYpQROJrK2y', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1786, 'Kibuuka H/C II', '0774880730', '', 0, NULL, 'Kibuuka HC II', 'a5K7IVmM7zJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1788, 'Zia Angelina', '0776265920', '', 0, NULL, 'Zia Angelina HC II', 'ODl6muHUdeG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1792, 'Kihefo H/C III', '0777228884', '', 0, NULL, 'Kihefo Clinic', 'B8okqr86WzK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1797, 'Kituntu H/C III', '0782057880', '', 0, NULL, 'Kituntu HC III', 'anOxR20hDCC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1798, 'Siira H/C III', '', '', 0, NULL, 'Siira HC III', 'eQUTo4Kz4Cv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1799, 'Ssanje Domiciliary Clinic', '0782407878', '', 0, NULL, 'Sanje Domeciary HC II', 'amwSlyHvRiP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1804, 'St Stephens Hospital (Mpererwe)', '0776060758', '', 0, NULL, 'St. Stephens Mpererwe HC III', 'qGVARGVRtsr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1805, 'Kyabi H/C III', '0783978800', '', 0, NULL, 'Kyabi HC III', 'u0ZXCHvbs0W', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1808, 'Kakoma H/C III', '', '', 0, NULL, 'Kakoma HC III', 'RI4Fb24F84i', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1816, 'Bihanga Army H/C II', '0777656664', '', 0, NULL, 'Bihanga Updf Barracks HC II', 'k58XY2uVEjN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1820, 'Kibanda H/C II (Kabale)', '0774481008', '', 0, NULL, 'Kibanda HC II', 'OFHXaWocktQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1833, 'Kasubi H/C III', '0772499744', '', 0, NULL, 'Kasubi HC III', 'sHwAlmYg5Hs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1834, 'Bugaana H/C II', '', '', 0, NULL, 'Bugana HC II', 'WNrSmg2aMGz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1840, 'FortPortal Prisons H/C III', '0716162250', '', 0, NULL, 'Fort Portal Women Prisons HC II', 'aZyNT3U2LGI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1850, 'Biikira H/C III', '0704247985', '', 0, NULL, 'Bikira/Bikiira Maria  HC III', 'HXw8RJKyuDz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1853, 'Mucwa H/C III', '', '', 0, NULL, 'Mucwa HC III', 'Pf3v59iyqdM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1856, 'Joy Medical Center (Mbale  )', '', '', 0, NULL, 'Joy Medical Center HC II', 'aaI3qQuFct4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1859, 'Ruti H/C', '', '', 0, NULL, 'Ruti HC II', 'tlQsh4yJwwb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1863, 'Mbale Main Prisons H/C III', '0782006378', '', 0, NULL, 'Mbale Main Prison''s HC III', 'AtuVg4C11UO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1870, 'Kahondo H/C II', '', '', 0, NULL, 'Kabarole Kahondo HC II GOVT', 'sZ9PPpo8ejT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1874, 'Lwanjusi H/C III', '0778137347', '', 0, NULL, 'Lwanjusi HC III', 'roJb8A7yXNm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1877, 'Bugali H/C II', '0755451976', '', 0, NULL, 'Bugali  HC II', 'RfYTyh0UmGQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1893, 'Kyanamuyojo H/C III', '0772354507', '', 0, NULL, 'Kyanamuyonjo HC III', 'udyIvAUWRfi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1898, 'Otwee H/C III', '0774397446', '', 0, NULL, 'Otwee HC III', 'rnSuCabTqe3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1901, 'Gadafi H/C III', '0782154269', '', 0, NULL, 'Gaddafi HC III', 'BMmhOqlF4EB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1919, 'Nyakabande H/C II', '', '', 0, NULL, 'Nyakabande HC II', 'cfVjkhcqQqr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1959, 'Bugobango H/C', '', '', 0, NULL, 'Bugobango HC II', 'a93zYnWO0cT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1960, 'Kiddawalime', '', '', 0, NULL, 'Kidawalime Nursing Home HC II', 'gt954ahlttH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(1966, 'Jinja Police H/C III (Maternity)', '0701156403', '', 0, NULL, 'Jinja Police HC III', 'QPEq1rVFQA7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2034, 'Gwere H/C II', '', '', 0, NULL, 'Gwere HC II', 'aFLv0Mbd84E', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2053, 'Kaweweta H/C III', '0775108554', '', 0, NULL, 'Kaweweta HC II', 'AUl2LinS4Zb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2058, 'Kitwe H/C IV', '0782479505', '', 0, NULL, 'Kitwe HC IV', 'FGnMVMPBCLN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2059, 'Luweero Industries', '', '', 0, NULL, 'Luweero Industries Ltd Clinic HC II', 'amOfrCsmDMr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2060, 'Franciscan H/C KAKOOGE', '', '', 0, NULL, 'Francisca Clinic - NR', 'K56hypi6AUE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2063, 'Kakoola H/C III', '0785819836', '', 0, NULL, 'Kakoola HC II (Nakasongola)', 'aNWVZ9aCbQb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2072, 'ST JOSEPH  H/ C III(Madudu)', '', '', 0, NULL, 'St. Joseph Madudu HC III', 'alZgEM25r1K', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2073, 'JCRC (Wakiso)', '0774576204', '', 0, NULL, 'Joint Clinical Research Center (JCRC)  C', 'CVoWcUh5ZPP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2075, 'Ngenge H/C III', '', '', 0, NULL, 'Ngenge HC III', 'PfIEJ2cH2SX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2079, 'Namusaala H/C II', '', '', 0, NULL, 'Namusaala HC II', 'EKbyglK4z19', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2082, 'Diika H/C II', '', '', 0, NULL, 'Diika HC II', 'Ya7rTeUc2Dy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2091, 'Karungu H/C III (Masindi)', '0785406822', NULL, 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2093, 'Avogera H/C II', '0777318720', '', 0, NULL, 'Avogera HC III', 'x5YYIG54agu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2104, 'St Marys H/C III(Kibaale)', '', '', 0, NULL, 'St Marys HC III Kakindo', 'zCodguezLzO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2111, 'Seeta H/C II', '', '', 0, NULL, 'Seeta HC II', 'llNeiWHW1oW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2126, 'Bumadada H/C III', '', '', 0, NULL, 'Bumadada HC III', 'OlaVEDuSn6W', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2127, 'Kyantungo H/C IV', '0782492377', '', 0, NULL, 'Kyantungo HC IV', 'DsaeEp9J3X4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2132, 'Kibaale  H/C II( Rakai)', '0772324018', '', 0, NULL, 'Kibaale HC II GOVT', 'AjwnALSnLrK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2142, 'Nyamityobora H/C III', '', '', 0, NULL, 'Nyamityobora HC II', 'J7hNSRvyUFC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2153, 'Naguru Police H/C IV', '0774887838', '', 0, NULL, 'Naguru Police Clinic HC II', 'foJ1bGX8luE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2204, 'Community H/C (Kaliro)', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2205, 'Makhonje H/C III', '', '', 0, NULL, 'Makhonje HC III', 'fe5T2gr64Y5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2210, 'Soroti Medical Associate Nursing Home', '0777193932', '', 0, NULL, 'Soroti Medical Associates HC II', 'HOnIGbyX0cw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2215, 'Qudrah Medical Center', '', '', 0, NULL, 'Qudrah Medical Clinic', 'VQEzkkbWHar', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2225, 'Aliwang H/C III', '0777111426', '', 0, NULL, 'Aliwang HC III', 'L4ABgSqNsXd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2226, 'Kamulegu H/C III', '0702112742', '', 0, NULL, 'Kamulegu HC III', 'VQlQ4IXDdFm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2227, 'Kyamwinula H/C III', '0772440973', '', 0, NULL, 'Kyamwinula HC II', 'aFasKwyj7DC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2230, 'Lolwe H/C III', '', '', 0, NULL, 'Lolwe HC II', 'ZFd998k7ZbK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2232, 'Kafunjo H/C II', '', '', 0, NULL, 'Kafunjo HC II', 'P3xQ9rXeVdo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2238, 'Butama H/C III', '', '', 0, NULL, 'Butama HC III', 'EV2MoBNsOm6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2248, 'Bujwanga H/C II', '0771428391', '', 0, NULL, 'Bujwanga HC II', 'rQ56RjtAmYQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2257, 'Kaliro T C', '0775246303', '', 0, NULL, 'Kaliro Town Council HC II', 'akGUnEvfeLd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2260, 'Bukunga H/C III', '0782907272', '', 0, NULL, 'Bukunga HC II', 'xbHb2porYoF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2268, 'Buchumba H/C II', '0776409201', '', 0, NULL, 'Buchumba HC II', 'g3Jd6rCEYTc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2269, 'Good Health for Women Project Clinic (MRC/UVRI)', '0772646017', '', 0, NULL, 'Medical Research Center Clinic', 'yKnFg0zI7sP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2270, 'MJAP-MUH', '', '', 0, NULL, 'Makerere University HC III', 'Y3K5vv9cdJ7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2271, 'IDI Mulago', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2272, 'MJAP (Iss Clinic) Mulago', '0755553285', '', 0, NULL, 'Mulago National Hospital- MJAP ISS Clini', 'utEt5ijWuIx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2274, 'STD/MARPI Clinic (Mulago)', '0757519064', '', 0, NULL, 'Mulago National Hospital- MARPI STI Proj', 'U6DZjzffCuQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2275, 'Mulago National Hospital-PMTCT CLINIC', '0704175203', '', 0, NULL, 'Mulago Obs&Gyn - PMTCT clinic', 'tAjQlwQ3YJu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2277, 'Holy Cross Orthodox Hospital Namungoona', '0782362505', '', 0, NULL, 'Namungoona Orthodox Hospital HC III', 'e9F9XvTFIrI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2284, 'Uganda Cares(Soroti)', '0782555940', '', 0, NULL, 'Uganda Cares Soroti', 'UhJgr2Abb0p', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2286, 'Benedict Medical Center', '', '', 0, NULL, 'Benedict Medical Centre  HC IV', 'QUd8daomu0P', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2287, 'Lwambajjo H/C II', '0776377338', '', 0, NULL, 'Lwembajjo HC II', 'U4XL5jXfjTk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2290, 'Kayanja H/C II', '0752331114', '', 0, NULL, 'Kayanja HC II Lwankoni GOVT', 'zwfMFtrP9wk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2291, 'Royal Health Care', '', '', 0, NULL, 'Royal Health Care', 'Ek95dowFfiN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2294, 'Arua Police H/C III', '', '', 0, NULL, 'Arua Police HC III', 'Oib4aFmRmve', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2295, 'Rift Valley Medical Center', '', '', 0, NULL, 'Rift Valley Medical Services Centre', 'LSpLSwpaM71', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2296, 'Equator Health Services', '', '', 0, NULL, 'Equator Health Services', 'OLmTe5kU6HD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2298, 'Rubaare H/C IV (Ntungamo)', '', '', 0, NULL, 'Rubaare HC IV', 'acuu3ktUO4t', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2300, 'Zaam Medical Centre', '', '', 0, NULL, 'Zaam Clinic HC II', 'J77zWm3xXbx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2301, 'Bugolobi Medical Centre', '', '', 0, NULL, 'Bugolobi Medical Centre HC II', 'bnKRmW2sm3g', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2303, 'Ogom H/C III', '0775077735', '', 0, NULL, 'Ogom HC III', 'au4iSDaT4wv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2304, 'Alanyi H/C III', '', '', 0, NULL, 'Alanyi HC III', 'pk373UmcJEF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2305, 'Mbale Police H/C III', '', '', 0, NULL, 'Mbale Police Clinic HC II', 'xJtAHm83ULs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2306, 'Muhoti H/C III', '', '', 0, NULL, 'Muhooti Baracks HC II', 'Y3hpndpv6cR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2307, 'Bwama H/C III', '', '', 0, NULL, 'Bwama HC III', 'aG1YMQc0jte', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2308, 'Uganda Reproductive Health Bureau(Bugiri)', '', '', 0, NULL, 'URHB Medical Centre CLINIC', 'YTYOolNiu9C', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2309, 'Kalungu Uganda Cares', '', '', 0, NULL, 'Lukaya Health Care Center (Uganda Cares)', 'mqCkkaqoMNA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2310, 'Mt.Elgon Hospital', '', '', 0, NULL, 'Mount Elgon Hospital', 's6I81Be52IE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2312, 'Nkata H/C II', '', '', 0, NULL, 'Nkata HC II', 'WezVXLK01Ry', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2313, 'Fast Line Medical Centre', '', '', 0, NULL, 'Fast Line Cinic', 'dyD1iVotBI3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2314, 'Katira H/C III', '', '', 0, NULL, 'Katira HC III', 'CbZsLxa0Zp6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2315, 'Padibe West H/C III', '', '', 0, NULL, 'Padibe West HC III', 'K74ysFimUwH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2317, 'Mpuge H/C III', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2319, 'Igombe H/CIII', '0785200943', '', 0, NULL, 'Igombe HC III', 'PP7yUJOjWsV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2322, 'Borcch Medical Centre', '0782129666', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2324, '405 Brigade HC III', '0784083246', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2326, 'St Austin H/C II(Mbale)', '0779894362', '', 0, NULL, 'St. Austin Mbale HC II', 'MtE5RAbwwNx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2327, 'Kerekerene H/C III', '', '', 0, NULL, 'Kerekerene HC III', 'u16ZU15t0aX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2329, 'Lyama H/C III', '', '', 0, NULL, 'Lyama HC III', 'z2Ye13P7ajL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2330, 'Masindi-Kitara Medical Centre', '0774840909', '', 0, NULL, 'Masindi Kitara Medical Centre  HC II', 'fYKuOZQWyuf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2331, 'Kampala Medical Chambers', '', '', 0, NULL, 'Kampala Medical Chambers HC II', 'VSDTCc2of9f', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2332, 'Barjobi H/C III', '', '', 0, NULL, 'Barjobi HC III', 'O4N8uOmlbM6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2333, 'Sirimula H/C III', '', '', 0, NULL, 'Sirimula HC II', 'Qkotq27DWuJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2334, 'Ministry of Defence Clinic', '', '', 0, NULL, 'Mbuya Military clinic (MOD Garrison)', 'zrRBi7DSECl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2335, 'St Benedict H/C II(Buikwe)', '', '', 0, NULL, 'St. Benedict''s HC III', 'OZm6EKHBeMU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2336, 'Muzito Clinic', '', '', 0, NULL, 'Muzito HC II', 'lS1i3kglzgM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2337, 'Santa Maria Medical Care', '', '', 0, NULL, 'Santa Maria Medical Centre HC III', 'a1SMwlwzCg2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2339, 'Lapul H/C III', '0771603858', '', 0, NULL, 'Lapul HC III', 'UUt3ZtL1hIJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2340, 'Anyagura H/C III', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2341, 'Facility Left Blank', '', NULL, 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2342, 'Kasozi H/C III (Luweero)', '', '', 0, NULL, 'Kasozi HC III GOVT', 'Z2Mr0fdyDaz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2343, 'Katikamu H/C III', '', NULL, 0, NULL, 'Katikamu SDA HC II', 'rRB4rWMdUS9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2344, 'Katikamu-Kisule H/C III', '', NULL, 0, NULL, 'Katikamu  HC III', 'Ec5yJybMqpe', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2345, 'Katuugo H/C II', '', NULL, 0, NULL, 'Katuugo HC II', 'cYPtAEauxNe', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2348, 'Bamunanika H/C III', '', NULL, 0, NULL, 'Bamunanika HC III', 'Y8UhpQhdeP2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2349, 'Bishop Ceaser Asili Hospital', '', NULL, 0, NULL, 'Bishop Asili Ceaser HC IV', 'adofLhuj4HH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2350, 'Bombo H/C III', '', NULL, 0, NULL, 'Bombo  HC III', 'BQrPJsVTpud', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2351, 'Bombo Military Hospital', '', NULL, 0, NULL, 'Bombo General Military HOSPITAL', 'MH0SVcF6X2F', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2352, 'Bowa H/C III', '', NULL, 0, NULL, 'Bowa HC III', 'aGisGCcp7Hz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2353, 'Bukalasa H/C III', '', NULL, 0, NULL, 'Bukalasa HC III', 'va7uRTbKCoJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2354, 'Kikoma H/C III', '', NULL, 0, NULL, 'Kikoma HC III', 'reSTu8XZgge', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2356, 'Butuntumula H/C III', '', NULL, 0, NULL, 'Butuntumula HC III', 'NGteaaEKAMh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2357, 'Kisule H/C III', '', NULL, 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2358, 'Namatale H/C II', '', NULL, 0, NULL, 'Namatale HC II', 'LDngLVQbqNI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2360, 'Nattyole H/C III', '', NULL, 0, NULL, 'St. Kizito Natyole HC II', 'M7RLcStmJql', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2361, 'Kyalugondo H/C III', '', NULL, 0, NULL, 'Kyalugondo HC III', 'E49UQK1wLQ2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2362, 'Kyangwali H/C IV', '', NULL, 0, NULL, 'Kyangwali HC IV', 'gQKXvT7RNVU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2363, 'Holy Cross H/C III (Kikyusa)', '', NULL, 0, NULL, 'Kikyusa Holy Cross HC III', 'fzBgyH6ixVC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2366, 'Luweero H/C IV', '', '', 0, NULL, 'Luweero HC IV', 'SbhXVHOtboo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2367, 'Nsawo H/C III', '', NULL, 0, NULL, 'Nsawo HC III', 'aysfx6SGoJe', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2368, 'Nyimbwa H/C IV', '', NULL, 0, NULL, 'Nyimbwa HC IV', 'aKyrbNsmNnT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2369, 'Orient Medical Centre', '', NULL, 0, NULL, 'Orient M/C HC III', 'ea1Bvu4qzmW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2370, 'Mengo Hospital Counselling and HomeCare', '0782164591', '', 0, NULL, 'Mengo Doctors Clinic', 'VxVlteqdqp3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2371, 'Reachout (Kinawataka Site)', '', '', 0, NULL, 'Reach Out - Kinawataka CLINIC', 'FzxeAP4YHxC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2372, 'Kalagala H/C IV', '', NULL, 0, NULL, 'Kalagala HC IV', 'aZw4VQefUc4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2373, 'Kamira H/C III', '', NULL, 0, NULL, 'Kamira HC III', 'SQgzVzwkRjK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2374, 'Rubaare H/C III (Kabaale)', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2375, 'Kasala H/C III', '', NULL, 0, NULL, 'Kasaala St. Mary HC III', 'DAcqiebFOcd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2376, 'Kasana H/C IV', '', NULL, 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2380, 'Ssekamuli H/C III', '', NULL, 0, NULL, 'Sekamuli HC III', 'icO7vjvZXjp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2381, 'St Jacobs Lwamaggwa H/C', '', NULL, 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2382, 'St Luke Namaliga H/C III', '', NULL, 0, NULL, 'St. Luke Namaliga HC III', 'a01gDo4KauR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2383, 'St Marys H/C Kasaala', '', NULL, 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2384, 'St Stephens Disp and Maternity Center (Luzira)', '', NULL, 0, NULL, 'St. Stephen''s Dispensary and Marternity ', 'at9KnQkgpy6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2386, 'Zirobwe H/C III', '', NULL, 0, NULL, 'Zirobwe HC III', 'ec6ZVy4whk5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2389, 'Ikan Medical Center', '', '', 0, NULL, 'Ikan Medical Center HC II', 'JScVS55awQr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2390, 'Kyetume H/C III (Mukono)', '', '', 0, NULL, 'Kyetume CBHC HC III', 'meCVGgjsn0F', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2393, 'Nabweru H/C III', '', '', 0, NULL, 'Nabweru HC III', 'akpHXftD4yu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2394, 'Barapwo H/C III', '', '', 0, NULL, 'Barapwo HC III', 'amDpMeSgs3P', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2395, 'Kitovu Mobile', '', '', 0, NULL, 'Kitovu Mobile Clinic', 'LKn50qRDDAB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2397, 'Comboni Hospital', '0785359731', '', 0, NULL, 'Comboni Hospital', 'OEhMLFc4vaU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2398, 'Bukakata H/C III', '077402576', '', 0, NULL, 'Bukakata HC III', 'aukuvrCNcqR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2399, 'Hima Gov''t H/C III', '', '', 0, NULL, 'Hiima Disp. HC III', 'D76MlGzidHn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2401, 'Katadoba H/C III', '', '', 0, NULL, 'Katodoba (Umsc) HC III', 'c39yKQqyCK3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2402, 'Karambi H/C III (Kaseese)', '', '', 0, NULL, 'Karambi Nursing Home HC II', 'rgeIuEgKqri', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2403, 'Nkuruba H/C III', '', '', 0, NULL, 'Nkuruba HC II', 'NPsUXWauJwy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2404, 'Sapiri H/C III', '', '', 0, NULL, 'Sapiri HC III', 'A6pRqAKPNFH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2405, 'Nswanjere H/C III (St Joseph)', '', '', 0, NULL, 'Nswanjere HC III', 'VXTxQRCiH2C', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2406, 'Our Lady Of Maria Assumpta', '', '', 0, NULL, 'MARIA ASSUMPTA HC III', 'F3r8Fr87Bnx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2407, 'Donna Medical Centre', '', '', 0, NULL, 'Dona Medical Centre HC III', 'rmyUGedzWB2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2408, 'Nalinya Ndagire H/C III', '', '', 0, NULL, 'Nalinnya  Ndagire HC II', 'RXMQeaZcjjG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2410, 'Kabanga H/C III', '0782179115', '', 0, NULL, 'Kabanga HC III', 'hFO29Yr6ysA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2411, 'Bundibugyo Hospital', '0782753187', '', 0, NULL, 'Bundibugyo Hospital', 'VkNdAzkYGjh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2412, 'Kuluva Hospital', '0784867378', '', 0, NULL, 'Kuluva Hospital', 'avzSINkwOx8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2413, 'Bamugolodde H/C III', '0784746699', '', 0, NULL, 'Bamugolodde HC III', 'aSMuKx05RO8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2414, 'Nyahuka H/C IV', '', '', 0, NULL, 'Nyahuka HC IV', 'Wtx8GzEga6v', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2415, 'Kyakatara H/C III', '', '', 0, NULL, 'Kyakatara HC III', 'wmzTMo2sIKx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2417, 'Kyabirukwa H/C III', '', '', 0, NULL, 'Kyabirukwa HC III', 'aTaU1OfpPkU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2418, 'Buhimba H/C III 	', '0776074816', '', 0, NULL, 'Buhimba HC III', 'a0NjFSCY24s', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2419, 'Bujalya H/C III', '0773771916', '', 0, NULL, 'Bujalya HC III', 'WcfbUI6UJkF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2420, 'Kyamusisi H/C III', '', '', 0, NULL, 'Kyamusisi HC III', 'KLRFW0OxcyN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2421, 'Kakira H/C III (Jinja)', '', '', 0, NULL, 'Kakira HC III', 'HiCwzjSmUWO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2422, 'Toro Kahuna H/C III', '0779500352', '', 0, NULL, 'Toro Kahuna HC III', 'BsqCx1RBM4V', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2423, 'Karungu H/C III (Kiryandongo)', '0785406822', '', 0, NULL, 'Karungu HC III NGO', 'QHsCNVmRURq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2424, 'Mukwaya General Hospital', '0772902696', '', 0, NULL, 'Mukwaya General  Hospital', 'Syv5X2AB8wP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2425, 'Bukuuku H/C IV', '0704753355', '', 0, NULL, 'Bukuku HC IV', 'n8cJGH7q4QK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2426, 'Kibiito H/C IV', '', '', 0, NULL, 'Kibiito HC IV', 'egswmCc8ssL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2427, 'Kataraka H/C IV', '0782750179', '', 0, NULL, 'Kataraka HC IV', 'aVcdIF2qcWc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2428, 'Kagote H/C III', '0782972575', '', 0, NULL, 'Kagote HC III', 'JOGgj0LGTiW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2429, 'Lukaya Health Care Centre (Uganda Cares)', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2430, 'Naggalama Hospital', '0700345893', '', 0, NULL, 'St. Francis HOSPITAL Naggalama', 'PSPBoL7ecNh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2431, 'Charis H/C III', '0780337500', '', 0, NULL, 'Charis HC III', 'Kc7UIYCljdS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2433, 'Nyamitanga H/C III', '0751644743', '', 0, NULL, 'Nyamitanga Gvt HC III', 'uoOrITIaKEJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2434, 'Kakira Sugar Ltd Hospital', '0774427238', '', 0, NULL, 'Kakira Worker''s Hospital', 'ikdW0m1mt7H', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2435, 'Kilembe Mines Hospital', '0775677857', '', 0, NULL, 'Kilembe Hospital', 'fq4icBr2Q9P', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2436, 'Kakinga H/C III', '0773239725', '', 0, NULL, 'Kakinga HC III (Kabarole)', 'GRmNMvXH6gl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2437, 'Kabende H/C III', '0704673787', '', 0, NULL, 'Kabende HC III', 'Nkq4sBVIoUd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2438, 'Kasunganyanja H/C III', '0782758241', '', 0, NULL, 'Kasunganyanja HC III', 'cvhndG0NLZe', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2440, 'Nyabuswa H/C III', '', '', 0, NULL, 'Nyabuswa HC II', 'OwDder9Wkwn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2441, 'Mitandi H/C III (NGO)', '0777637040', '', 0, NULL, 'Mitandi HC III', 'puvssItt4Qv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2442, 'Kasusu H/C III', '0773772235', '', 0, NULL, 'Kasusu HC III', 'aO5NU9dvqqT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2443, 'Rambia H/C III', '0778383399', '', 0, NULL, 'Rambia HC III (Kabarole)', 'YeOSUx4rjHy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2444, 'Bukasa H/C IV', '', '', 0, NULL, 'Bukasa HC IV', 'NKcfhEUaMHx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2445, 'Kiko H/C III', '074330157', '', 0, NULL, 'Kiko HC III', 'nz0c3cd4fzo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2446, 'Buziirasagama H/C II', '0787833972', '', 0, NULL, 'Buzirasagama HC II', 'ZAhGP8KMuzQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2447, 'Kandege H/C II', '0784759501', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2448, 'Lwangoli H/C III', '0774176589', '', 0, NULL, 'Lwangoli HC III', 'hC1gtogaFM0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2449, 'Bussi H/C III', '0782589306', '', 0, NULL, 'Bussi HC III', 'tBl4WduwWRw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2450, 'Awere H/C III', '0774022194', '', 0, NULL, 'Awere HC III', 'arbBXd1KN8n', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2451, 'Ggwatiro Hospital', '0700876045', '', 0, NULL, 'Ggwatiro Nursing Home HC III', 'aC6BO225r29', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2452, 'Royal Van Zanteen', '', '', 0, NULL, 'Royal Van Zanten Clinic', 'ayXdSOkMOLk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2453, 'Kitante Medical Centre', '', '', 0, NULL, 'Kitante Medical Center HC II', 'wqsIFyvLng4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2454, 'Span Medicare', '', '', 0, NULL, 'Span Medicare Centre', 'plvakokILP9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2455, 'Case Hospital', '', '', 0, NULL, 'Case Medical Centre', 'aT1aouq7op5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2456, 'Touch Namuwongo (IHK)', '0776286161', '', 0, NULL, 'Touch Clinic - Namuwongo HC II', 'F91loQ3NbZg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2457, 'Buwunga H/C III (Masaka)', '0706308207', '', 0, NULL, 'Masaka Buwunga HC III GOVT', 'F826wgZ6HPF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2458, 'Kasese Municipal Council H/C III (KMC)', '0782104903', '', 0, NULL, 'Kasese Municipal Council HC III', 'XI4OsjZYmtZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2459, 'Kyanamira H/C III', ' 0782267574', '', 0, NULL, 'Kyanamira HC III', 'bVZDLfQXL5H', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2460, 'Munobwa H/C II', '07002299429', '', 0, NULL, 'Munobwa-Hiima Tea Factory Clinic', 'Q4awDHvi4b6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2461, 'Mazinga H/C III', '0752621249', '', 0, NULL, 'Mazinga HC III', 'vM7d3ZWWl42', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2462, 'Kisomoro H/C III', '0772931104', '', 0, NULL, 'Kisomoro HC III', 'efN24flmJeb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2464, 'Rapha Medical Center(Wakiso)', '', '', 0, NULL, 'Rapha Medical Center HC III', 'm8iIXo1Saga', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2466, 'Ntoroko H/C III (Ntoroko)', ' 0773651028', '', 0, NULL, 'Ntoroko HC III', 'KPdYR8oFFSw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2467, 'International Medical Centre', '', '', 0, NULL, 'Kampala International Medical Centre HC ', 'wZ7da8feu18', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2468, 'Naguru Medical lab', '', '', 0, NULL, 'Naguru Medical Laboratory Ltd (Namela) H', 'apyOSmUxhsw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2469, 'Naiku H/C III', '0779444875', '', 0, NULL, 'Naiku HC III', 'aVEGxoGe7RS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2470, 'Bukinge H/C III', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2471, 'Kireka SDA H/C III', '0776513753', '', 0, NULL, 'Kireka SDA HC III', 'ziRKF2GJeEU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2472, 'Wanale H/C III', '0775407290', '', 0, NULL, 'Wanale HC III', 'KBk0KFmtX6p', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2473, 'St Charles Kabuwoko H/C III', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2474, 'Bukeeri H/C III', '0702930554', '', 0, NULL, 'Bukeeri HC III', 'aSsroXOZSIn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2475, 'Bukalagi H/C III', '0754138335', '', 0, NULL, 'Bukalagi  HC III', 'tw7g2aShrXi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2476, 'Kicwamba H/C III (Kabarole)', '0774204875', '', 0, NULL, 'Kicwamba HC III (Kabarole)', 'GlGBqdv4DH9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2477, 'Kijura H/C III', '0787226897', '', 0, NULL, 'Kijura HC III', 'VhofFpidxI7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2478, 'Kasenda H/C III', '0787508507', '', 0, NULL, 'Kasenda HC III', 't2B8bbXaxBm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2479, 'Bujumbura H/C III', '0775580123', '', 0, NULL, 'Bujumbura HC III', 'DyxRfkwicX2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2480, 'Naanywa H/C III', '0772575208', '', 0, NULL, 'Nanywa HC III', 'KsvZ6Mr8PYj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2481, 'Ntara H/C IV', '0785062332', '', 0, NULL, 'Ntara HC IV', 'w73evLideQA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2482, 'Rwebisengo H/C III', '077845760', '', 0, NULL, 'Rwebisengo HC III', 'wVQqiOrorr6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2483, 'Biguli H/C III', '0779200002', '', 0, NULL, 'Biguli HC III', 'Sg3h27N489f', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2484, 'Lulamba H/C III', '0782913393', '', 0, NULL, 'Lulamba HC III', 'K3E78Mqdg2A', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2485, 'Ssi H/C III', '0774463756', '', 0, NULL, 'Ssi HC III', 'TYC4xgc3ieF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2486, 'Kaswa H/C III', '0706495723', '', 0, NULL, 'Kaswa HC III', 'aQTBvjHZAw9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2487, 'Bugamba H/C IV', '0772300703', '', 0, NULL, 'Bugamba HC IV', 'cTp1LWth7hI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2490, 'Ruhija H/C III', '0773450360', '', 0, NULL, 'Ruhija Gvt HC III', 'avzQnIvljoV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2491, 'Masindi Prisons H/C III', '0779735406', '', 0, NULL, 'Masindi Prison HC III', 'sOGx0iAe1fF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2492, 'Kiyombya H/C III', '0781177043', '', 0, NULL, 'Kiyombya HC III', 'a0Tgsf83fGB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2493, 'Dricile H/C III', '0775086109', '', 0, NULL, 'Dricile HC III', 'Nz32J3zs8Cq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2494, 'Naama H/C III', '0702182998', '', 0, NULL, 'Naama HC III', 'ahYrfYMxirO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2495, 'Living Water H/C', '', '', 0, NULL, 'Living Water Community Medical Centre CL', 'skaKlRXEgCS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2496, 'Mugusu H/C III', '0783482234', '', 0, NULL, 'Mugusu HC III', 'Y3QzK6JqIXg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2497, 'Kinyara H/C III', '0700501193', '', 0, NULL, 'Kinyara Sugar Works HC III', 'ASNyZE7TMLu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2498, 'Buluba Hospital St Francis', '0783256400', '', 0, NULL, 'Buluba HOSPITAL', 'O6TYEDR7sjP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2499, 'Holy Family Hospital-Nyapea', '', '', 0, NULL, 'Nyapea HOSPITAL', 'H5hAGwZHpUb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2501, 'Epi Centre H/C IV (Butambala)', '0757895866', '', 0, NULL, 'Butambala Epi Centre HC III GOVT', 'E1TxjBqAvWB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2502, 'Naluwerere H/C III', '0782767193', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2503, 'Ankole Estate Clinic', '0705954346', '', 0, NULL, 'Ankole Tea Factory HC II', 'BoGS6ZmpQc2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2504, 'Karongo H/C III', '0703599289', '', 0, NULL, 'Karongo HC III', 'a3CefBcMInT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2505, 'Namiti H/C II', '0775489178', '', 0, NULL, 'Namiti HC II', 'Eg7Efn5rKSj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2506, 'Bwizi H/C III', '0789145742', '', 0, NULL, 'Bwizi HC III', 'a3HP4aNtOMO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2507, 'St Balikuddembe H/C III (Kyankwanzi)', '0776512783', '', 0, NULL, 'St. Balikudembe HC III', 'H461gSsRGrd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2508, 'Kyampangara H/C II', '0787508850', '', 0, NULL, 'Kyampangara HC II', 'x9A33vBF8B4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2509, 'MBN-Kampala', '', '', 0, NULL, 'MBN Clinical Lab', 'XGwQgBZBkZx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2510, 'Azur Christian H/C IV', '0783658054', '', 0, NULL, 'Azur HC III', 'rWhuHZdqFk8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2511, 'Kyabenda H/C III', '0786115444', '', 0, NULL, 'Kyabenda HC III', 'qMBXDpWSarC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2512, 'Masolya H/C II', ' 0756742331', '', 0, NULL, 'Masolya HC II', 'FJF7Vx7pjWL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2513, 'Jaguzi H/C II', '', '', 0, NULL, 'Jagusi HC II', 'xvsvbPNHC2I', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2514, 'Aids Information Center(Mbale)', '', '', 0, NULL, 'AIC Mbale Main Branch CLINIC', 'v9p3jFvYYtP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2515, 'Sagitu H/C II', '', '', 0, NULL, 'Sagitu HC II', 'jSNmUpGrQMN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2517, 'Yerya H/C III', '', '', 0, NULL, 'Yerya HC III', 'z3ldDiQ4JHT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2518, 'Kakasi C.O.U H/C III', '0775616889', '', 0, NULL, 'Kakasi Gvt HC II', 'xNphiHRcbCC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2519, 'Bigodi H/C III', '0774659610', '', 0, NULL, 'Bigodi HC III', 'd3ugFJbENWb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2520, 'Mahyoro H/C III', '0773982427', '', 0, NULL, 'Mahyoro Gvt HC III', 'S1tbgD2FoFD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2521, 'Butanda H/C III', '', '', 0, NULL, 'Butanda HC III', 'ktaPwuDxHca', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2522, 'Kyegegwa H/C IV', '', '', 0, NULL, 'Kyegegwa HC IV', 'xLXQrhFHr7A', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2523, 'Naboa H/C III', '0782310948', '', 0, NULL, 'Naboa HC III', 'G4PdJuhXqOz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2525, 'Ishaka Adventist Hospital', '0784979804', '', 0, NULL, 'Ishaka Adventist Hospital', 'H61tgLIphOZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2526, 'Rwemigina H/C II', '0782550305', '', 0, NULL, 'Rwemigyina HC II', 'xZaee0TTbQo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2527, 'Juru H/C II', '0773832296', '', 0, NULL, 'Juru  HC II NGO', 'au6l6u0QySf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2528, 'St Monica Birongo H/C III (Kalungu)', '0703625803', '', 0, NULL, 'St. Monica Birongo Kalungu HC III', 'lQ9FxeRMd8s', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2529, 'Jjanda H/C III', '0782194608', '', 0, NULL, 'Jjanda HC III', 'mfPV8jsUnyy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2530, 'Karambi H/C III (Kabarole)', '0772559998', '', 0, NULL, 'Karambi HC III (Kabarole)', 'aOKbOOqOG6Y', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2531, 'Kyenjojo Hospital', '0705774867', '', 0, NULL, 'Kyenjojo Hospital', 'DVWgXBCqWXD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2532, 'Maliba H/C III', '0753139988', '', 0, NULL, 'Maliba HC III', 'Nre05wUvCJL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2533, 'Ruteete H/C III', '0772850140', '', 0, NULL, 'Ruteete HC III', 'YzWi4kmieZt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2534, 'Katunguru H/C II (Kasese)', '0781885826', '', 0, NULL, 'Katunguru HC II', 'ai5Sfj3nu9K', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2535, 'Katojo H/C III (Prisons)', '0704300443', '', 0, NULL, 'Katojo Prisons HC III', 'TSYQk88VWVI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2536, 'Kalungi H/C III(Kalungu)', '0785012625', '', 0, NULL, 'Kalungi HC II', 'i6hyU0bywAr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2537, 'Kasenyi Art Site', '0757853398', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2538, 'Faith Mulira Health Care Center', '0782009919', '', 0, NULL, 'Faith Mulira Health Care Centre', 'BVulRfStvvn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2539, '309 BDE Kavera H/C III', '0775187620', '', 0, NULL, '307 Bde-Kavera HC III', 'nBDPw7Qhd7r', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2540, 'Karugutu H/C IV(Ntoroko)', '', '', 0, NULL, 'Karugutu HC IV', 'A6P3WOAXDru', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2541, 'Kabatunda H/C III', '', '', 0, NULL, 'Kabatunda HC III', 'sVrJn8E1ypr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2542, 'Kyanya SDA H/C III', '0784554057', '', 0, NULL, 'Kyanya Sda HC II', 'lpNOI5JV4px', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2543, 'Kyamulibwa H/C IV', '0772610159', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2544, 'Rapha Medical Centre(Gomba)', '0786346746', '', 0, NULL, 'Rapha Medical Centre', 'R4Vfx0e7HLy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2545, 'kabuga H/C III', '0785062332', '', 0, NULL, 'Kabuga HC III', 'JiXMZzyWhUb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2546, 'Kanara H/C II', '0785062332', '', 0, NULL, 'Kanara HC II', 'btYQmvsgNkg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2547, 'Rwenjasa H/C II', '0785062332', '', 0, NULL, 'Rwenjaza HC II', 'XuyO4YTaFOG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2548, 'Rwamwanja H/C III', '0782917184', '', 0, NULL, 'Rwamwanja HC III', 'CK8TCNDBPNc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2549, 'Kicheche H/C III', '0774145485', '', 0, NULL, 'Kicheche HC III', 'PjSakZGVHq5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2550, 'Bunoga H/C III', '0702456102', '', 0, NULL, 'Bunoga HC III', 'oa2Jc3fTgtD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2551, 'Padre Pio H/C III', '0779592186', '', 0, NULL, 'Padre Pio HC III', 'XuummkDfiEK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2552, 'Bihanga H/C III', '0785062332', '', 0, NULL, 'Bihanga HC II', 'rQkhTj9VFoS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2553, 'Kabambiro H/C III', '0785062332', '', 0, NULL, 'Kabambiro HC II', 'HbRR9Kem65L', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2554, 'Kimulikidongo  H/C III', '0785062332', '', 0, NULL, 'Kimulikidongo HC II', 'mMZZQTjDPfj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2555, 'Ntonwa H/C II', '0785062332', '', 0, NULL, 'Ntonwa HC II', 'H94XD2JNeOp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2556, 'Bukurungu H/C II', '0785062332', '', 0, NULL, 'Bukurungu HC II', 'PgnmZSSRbeL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2557, 'Busiriba H/C II', '0785062332', '', 0, NULL, 'Busiriba HC II', 'iR4NuGQdNOq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2558, 'Kyakarafa H/C II', '0785062332', '', 0, NULL, 'Kyakarafa HC II', 'VQqzXN2zkM8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2559, 'Rukoni H/C III', '', '', 0, NULL, 'Rukoni HC III', 'oBioSOuF497', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2560, 'St Luke Bujuni H/C III (Kibaale)', '', '', 0, NULL, 'St. Luke Bujuni Kibale HC III', 'FS1iFJzUmTm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2561, 'Kibibi Nursing Home H/C III', '', '', 0, NULL, 'Kibibi Nursing Home HC III', 'gr1CRYxuJmr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2562, 'Namoni H/C II', '0776434307', '', 0, NULL, 'Namoni HC II', 'DUDZxVy6oKw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2563, 'Kiti H/C III', '0773605460', '', 0, NULL, 'Kiti HC III', 'a5lQTv6RKkm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2564, 'Well Springs Childrens Medical Ceter - Kamutuuza H/C III', '0773605460', '', 0, NULL, 'Well Springs HC III', 'YXN5KHNVc5J', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2565, 'Kabungo H/C III', '0773605460', '', 0, NULL, 'Kabungo HC III', 'lbLwvsxtAIk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2566, 'St Francis H/C III (Butenga)', '0773605460', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2567, 'Mukwano Medical Centre', '0773605460', '', 0, NULL, 'Mukwano Medical Centre CLINIC', 'cQlhVgIOXko', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2568, 'Kitswamba H/C III', '0782666682', '', 0, NULL, 'Kitswamba HC III', 'OOJMUm6aMR4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2569, 'Nabingoola H/C III', '0777566519', '', 0, NULL, 'Nabingoola HC III', 'DgpugjmuhEo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2572, 'Stella Maris H/C III', '', '', 0, NULL, 'Stella Maris Ntoroko HC III', 'aHL2NoEwlHh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2573, 'St Pauls H/C IV', '', '', 0, NULL, 'St. Paul HC IV', 'ZhSuvqvWUin', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2574, 'Bugoye H/C III', '0783910499', '', 0, NULL, 'Bugoye HC III', 'aKmOqqxiDuQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2575, 'Meeting Point Kampala', '', '', 0, NULL, 'Meeting Point Kampala HC II', 'wJlfRRGNJ7j', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2576, 'Bubeke H/C III', '', '', 0, NULL, 'Bubeke HC III', 'ADhJXGIcCND', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2577, 'Butagaya H/C III', '0782663849', '', 0, NULL, 'Butagaya HC III', 'ga9sLsbCiMo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2578, 'Mukathi H/C III', '', '', 0, NULL, 'Mukathi HC III', 'lGAhRBCmDzT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2579, 'Rwangara H/C II', '0778995421', '', 0, NULL, 'Rwangara HC II', 'tS7W7E9zJq3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2580, 'Rwesande H/C IV', '', '', 0, NULL, 'Rwesande HC IV', 'KSrm1cFNorS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2581, 'Amudat Hospital', '0782607325', '', 0, NULL, 'Amudat Hospital', 'gVSFfQXW1J2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2582, 'Kabalega Medical Centre', '0773279191', '', 0, NULL, 'Kabalega Medical Centre HC III', 'Z89GR8j6LFL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2583, 'Kamacha H/C III', '0774520575', '', 0, NULL, 'Kamaca HC III', 'MexhLyMSilA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2584, 'Nyero H/C III', '0775635632', '', 0, NULL, 'Nyero HC III', 'ehjI0b4szUT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2585, 'Olimai  H/C III', '0778572003', '', 0, NULL, 'Olimai CBO HC III', 'aqG8bVVJdXW', '2019-03-21 06:54:43', '2019-06-05 12:30:30');
INSERT INTO `facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(2586, 'Rubondo H/C II', '0772008787', '', 0, NULL, 'Rubondo HC II', 'K295qd0SaGs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2587, 'Kanamba H/C III', '0779451943', '', 0, NULL, 'Kanamba HC III', 'aXspFLZSsut', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2589, 'Kibalinga H/C III', '070464618', '', 0, NULL, 'Kibalinga HC III', 'M5caUvrHw5q', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2590, 'Abarilela H/C III', '0779232757', '', 0, NULL, 'Abarilela HC III', 'IswqGyDbcgm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2591, 'Double Cure Medical Centre', '0705050416', '', 0, NULL, 'Double Cure Med Center CLINIC', 'aOHWQc76Dvu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2592, 'Acowa H/C III', '0702906828', '', 0, NULL, 'Acowa HC III', 'krIH36G6xhy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2593, 'Ngora H/C IV', '0773441443', '', 0, NULL, 'Ngora Gvt HC IV', 'O9q5mhryXaX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2594, 'Saidinah Abubaker Hospital', '0756632577', '', 0, NULL, 'Saidina Abubakar Islamic HOSPITAL', 'z3oqgznxuph', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2595, 'Chandaria medical', '0773146462', '', 0, NULL, 'Chandaria Medical Clinic', 'LuEKO4AaQZZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2596, 'Apapai H/C IV (Serere)', '0753415598', '', 0, NULL, 'Apapai HC IV', 'qzSy84YdUkX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2597, 'Serere H/C IV', '0775046838', '', 0, NULL, 'Serere HC IV', 'DXmJVAw33mJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2598, 'Kaberamaido Catholic H/C III', '0774998434', '', 0, NULL, 'Kaberamaido Catholic Mission HC III', 'BWY57NKHPc0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2599, 'Princess Diana H/C IV', '0784479487', '', 0, NULL, 'Princes Diana HC IV', 'KEJ7kcBumFl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2600, 'Kyarusozi H/C IV', '', '', 0, NULL, 'Kyarusozi HC IV', 'LLjCLRuuOpp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2601, 'Ngariam H/C III', '', '', 0, NULL, 'Ngariam Gvt HC III', 'XHgTvnlWtW0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2602, 'Buhara H/C III (NGO)', '', '', 0, NULL, 'Buhara (Ngo) HC III', 'a680eATOSPd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2603, 'Toroma H/C IV', '', '', 0, NULL, 'Toroma HC IV', 'Vdrd1FtUOrc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2604, 'Kapujan H/C III', '', '', 0, NULL, 'Kapujan HC III', 'uRzFsC6osk8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2605, 'Mukura H/C III', '', '', 0, NULL, 'Mukura HC III', 'c50gQsWftA9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2606, 'Kapir H/C III', '', '', 0, NULL, 'Kapir HC III', 'pGfuON6s6cD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2608, 'Gweri H/C III', '', '', 0, NULL, 'Gweri HC III', 'WY3yVWM5gaL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2609, 'Mukongoro H/C III', '', '', 0, NULL, 'Mukongoro HC III', 'agLJLYLJNK6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2610, 'Kachumbala H/C III', '', '', 0, NULL, 'Kachumbala HC III', 'BzFE9hikp6J', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2611, 'Malera H/C III', '', '', 0, NULL, 'Malera HC III', 'EdfrvsY7Giu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2612, 'Kabarwa H/C III', '', '', 0, NULL, 'Kabarwa HC III', 'aowpXPkRtAt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2613, 'Kyadondo Medical Center', '', '', 0, NULL, 'Kyadondo Medical Centre HC II', 'WDbxuHRdYY4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2614, 'Asuret H/C III', '', '', 0, NULL, 'Asuret HC III', 'AY24xwaz8Ml', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2615, 'Otuboi H/C III', '', '', 0, NULL, 'Otuboi CoU HC II', 'xRGI9XPpYLG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2616, 'Holy Innocents H/C III', '', '', 0, NULL, 'Holy Innocents Health Centre', 'TnIUAczx1Hq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2617, 'Ngora District Maternity H/C III', '', '', 0, NULL, 'Ngora District Maternity HC III', 'GLPEmICaqyp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2618, 'Lwala Hospital', '', '', 0, NULL, 'Lwala Hospital', 'UdkpzjDtHXu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2619, 'Morungatuny H/C III', '', '', 0, NULL, 'Morungatuny HC III', 'FxdgLy07xN4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2620, 'Obalanga H/C III', '', '', 0, NULL, 'Obalanga HC III', 'rbxGtvw8E8X', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2621, 'St Clare Orungo H/C III', '0774419367', '', 0, NULL, 'Ococia (Orungo) St. Clare HC III', 'jcEuyATQbMK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2622, 'Kalaki H/C III', '', '', 0, NULL, 'Kalaki HC III', 'BvO9dRkpqen', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2623, 'Kamuda H/C III', '', '', 0, NULL, 'Kamuda HC III', 'a4070sNyyVO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2624, 'Kitanda H/C III', '', '', 0, NULL, 'Kitanda HC III', 'aULXp2H2LGI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2625, 'Epi Centre H/C III (Wakiso)', '', '', 0, NULL, 'Wakiso Epi Centre HC III GOVT', 'a0plh70j00D', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2626, 'Mulombi Health Centre II', '0753027938', '', 0, NULL, 'Mulombi  HC II', 'kHostqbVYCJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2627, 'Dr Charles Farthing Memorial Clinic', '0703262797/077352694', '', 0, NULL, 'Uganda Cares Owino Clinic', 'zSlpKhPNJIB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2628, 'Kigasa H/C III', '0776111333', '', 0, NULL, 'Kigasa Ii HC II', 'ald3aEmViHB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2629, 'St Assumpta H/C III', '', '', 0, NULL, 'St. Assumpta HC III', 'GXbLbRkXwiG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2630, 'Ongutoi Health Center', '', '', 0, NULL, 'Ongutoi HC III', 'l5C1tkKf11K', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2631, 'Mitala Maria H/C III', '', '', 0, NULL, 'Mitala-Maria HC III', 'lF4U1Yzu0Ka', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2632, 'Lulagala H/C III', '', '', 0, NULL, 'Lulagala HC III', 'f5lLaEQlPzM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2633, 'Wera H/C III', '0776820225', '', 0, NULL, 'Wera HC III', 'a4Cp1oW19Lo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2634, 'Doctors Hospital Sseguku', '0758614514', '', 0, NULL, 'Doctors  Clinic Seguku Maternity And Den', 'BL7K7k0SrYh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2635, 'St Micheal HCF H/C III (Amuria)', '0777687013', '', 0, NULL, 'St. Michael Wera HC III', 'AECp7SuwokS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2636, 'Mirembe Medical Centre', '0705267125', '', 0, NULL, 'Mirembe HC III', 'zgl8cvTUMji', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2637, 'Oleba H/C III', '0784324861', '', 0, NULL, 'Oleba HC III', 'bq8JZONb0MA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2638, 'Muwumba H/C III', '0701631531', '', 0, NULL, 'Muwumba HC III', 'MW38DjLdTg7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2639, 'Ajeluk H/C III', '0777069040', '', 0, NULL, 'Ajeluk HC III', 'X8l6y8IN4z9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2640, 'Ongino H/C III', '0782607759', '', 0, NULL, 'Ongino HC III', 'aUnXgTzSLvC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2641, 'Kasese Community Health & Education Foundation (KCHEF)', '0782379334', '', 0, NULL, 'Kasese Community Health & Education Foundation (KCHEF)', 'aMrVtjXDAOU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2642, 'Kanyum H/C III', '0774092328', '', 0, NULL, 'Kanyum HC III', 'al7HcOssdLZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2643, 'Atutur Hospital', '0777800775', '', 0, NULL, 'Atutur Hospital', 'aOoSM1O7H9D', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2644, 'Bululu H/C III', '0700146458', '', 0, NULL, 'Bululu HC III', 'GRkqVpmzBgf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2645, 'Alwa H/C III', '0775899895', '', 0, NULL, 'Alwa HC III', 'VEc0XL8e8Sa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2646, 'Western Division H/C III', '0774660993', '', 0, NULL, 'Western Division HC III', 'abcJcH3EO75', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2647, 'Kobulubulu H/C III', '0779970626', '', 0, NULL, 'Kobulubulu HC III', 'UMzvOsVEnNH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2648, 'Agu H/C III', '0784133125', '', 0, NULL, 'Agu HC III', 'S70E0FJrMtU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2649, 'Metu H/C III', '0782204645', '', 0, NULL, 'Metu HC III', 'aoYoN1wkWDw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2650, 'Ayipe H/C III', '0781483591', '', 0, NULL, 'Ayipe HC III', 'mMZD31O698s', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2651, 'Lobule H/C III', '0777056621', '', 0, NULL, 'Lobule HC III', 'cacYqraIAeB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2652, 'Gborokolongo H/C III', '0774928830', '', 0, NULL, 'Gborokolongo HC III', 'gSxv8y8vQ4H', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2653, 'Dakabela H/C III', '0782240420', '', 0, NULL, 'Dakabela HC III', 'CqefEf18FFW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2654, 'Ochero H/C III', '0781322420', '', 0, NULL, 'Ochero HC III', 'rPMkkecqjqx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2655, 'Kasekulo H/C II', '', '', 0, NULL, 'Kasekulo HC II', 'FzjQcOWAApu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2656, 'Lujjabwa H/C II', '', '', 0, NULL, 'Lujjabwa Island HC II', 'RuPdGm5T2zl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2657, 'Jaana H/C II', '', '', 0, NULL, 'Jaana HC II', 'azzeotS1e0O', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2658, 'SIAAP Bugoma Clinic', '', '', 0, NULL, 'Ssese Islands African Aids Project (SIAA', 'kOlitJ9usyf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2659, 'Bumangi H/C II', '', '', 0, NULL, 'St Elizabeth Bumangi HC II', 'aaNmTnGylMb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2660, 'Mulabana H/C II', '', '', 0, NULL, 'Mulabana HC II', 'BUPmAz8RgAa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2661, 'Nyabbani H/C III', '0774018933', '', 0, NULL, 'Nyabbani HC III', 'aVLWD9zrowf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2662, 'Mpara H/C III', '', '', 0, NULL, 'Mpara HC III', 'wisJV65CjPt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2663, 'Buikwe H/C III', '', '', 0, NULL, 'Buikwe HC III', 'cK5zkZIUFsN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2664, 'Makindu H/C III', '', '', 0, NULL, 'Makindu HC III', 'CqBb08p28JJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2665, 'Kabigi H/C III', '', '', 0, NULL, 'Kabigi Muslim HC II', 'ajaZHwTza6B', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2666, 'Luyitaayita H/C III (NGO)', '', '', 0, NULL, 'Luyitayita HC II', 'NCu3t93AIns', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2667, 'Bulo H/C III', '', '', 0, NULL, 'Bulo HC III', 'laPnCXSZ0Oo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2668, 'Kalamba H/C II', '', '', 0, NULL, 'Kalamba Community HC II', 'aDGztjb0S7j', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2669, 'Kabonero H/C III', '', '', 0, NULL, 'Kabonero HC III', 'QhjzIx0abeY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2670, 'Medical Centre III', '', '', 0, NULL, 'Bukomansimbi Medical Center HC III', 'obXcd9wL3Pf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2671, 'Dabani Hospital', '0779110252', '', 0, NULL, 'Dabani HOSPITAL', 'AhDvE2o9F3L', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2672, 'Panyigoro H/C III', '0775900442', '', 0, NULL, 'Panyigoro HC III', 'S9QduX5GY1K', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2673, 'Nebbi Hospital', '0787183982', '', 0, NULL, 'Nebbi Hospital', 'iEdI13kUo0h', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2674, 'Goli H/C IV (Nebbi)', '0774926007', '', 0, NULL, 'Goli HC III NGO', 'F3VE0gdRXu1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2675, 'Alwi H/C III', '0782071537', '', 0, NULL, 'Alwi HC III', 'KLEPRYA9Nge', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2676, 'Tubur H/C III', '0774846131', '', 0, NULL, 'Tubur HC III', 'kkYUoOF74Eb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2677, 'Kichinjaji H/C III', '0774226272', '', 0, NULL, 'Northern Division HC III', 'CxzGSxEbecK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2678, 'Kyanamukaka H/C IV', '', '', 0, NULL, 'Kyannamukaaka HC IV', 'aTvsnjjZTyN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2679, 'Eastern Division H/C III', '', '', 0, NULL, 'Eastern Div. HC III', 'YS1I62rL00h', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2680, 'St Kevin H/C III', '0789476320', '', 0, NULL, 'St. Kevin Toroma HC III', 'ayC0ZVq8bSp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2681, 'Amusus H/C III', '0783900252', '', 0, NULL, 'Amusus HC III', 'kwd5xyrWwvO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2682, 'Paminya H/C III', '0775612173', '', 0, NULL, 'Paminya HC III', 't8rivYmnWIo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2683, 'Alangi H/C III', '0784311113', '', 0, NULL, 'Alangi HC III', 'apEUhKfLxjY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2684, 'Agiermach H/C III', '0787393310', '', 0, NULL, 'Warr Agiermach HC III', 'vFo5oNkc7Nn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2685, 'Kalowang H/C III', '0773123380', '', 0, NULL, 'Kalowang HC III', 'OgnUw0a7ORO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2686, 'Pakadha H/C III', '0773953411', '', 0, NULL, 'Pakadha HC III', 'M85HoV8pnUM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2687, 'Panyimur H/C III', '0753772872', '', 0, NULL, 'Panyimur HC III', 'YcMgrtcbVpk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2688, 'Katakwi Hospital', '0788334496', '', 0, NULL, 'Katakwi General Hospital', 'l5XOgabZp4j', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2689, 'Jupanziri H/C III', '', '', 0, NULL, 'Jupanziri HC III', 'T2ENFWE19Bu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2690, 'St Francis Of Assis Naddangira H/C II', '0703768372', '', 0, NULL, 'Nadangira HC III', 'TKpSl9J25U1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2692, 'Kakure H/C II', '0752300549', '', 0, NULL, 'Kakure HC II', 'cV6erj5W4Nh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2693, 'Mbehenyi H/C III', '', '', 0, NULL, 'Mbehenyi HC III', 'uxV110Fc7jo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2694, 'Masaka Prison H/C III', '0775128407', '', 0, NULL, 'Masaka Prisons Clinic HC III', 'hMXCTcwH9XJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2695, 'Bwindi H/C III', '0782053760', '', 0, NULL, 'Bwindi HC III', 'ZhpuIm9GBog', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2696, 'St Francis Acumet', '0784513357', '', 0, NULL, 'St. Francis Acumet HC III', 'GynTVP1Cc2t', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2697, 'Kasambiika H/C III', '0785481300', '', 0, NULL, 'Kasambika HC III', 'FSVMTORF0Dn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2698, 'Omugo H/C IV', '0775249346', '', 0, NULL, 'Omugo HC IV', 'ehmgxZaocae', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2699, 'St Luke H/C III Katiyi', '0777447002', '', 0, NULL, 'St. Luke Katiyi HC III', 'H5qRrAmreYp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2700, 'Kyamba H/C III', '0751601528', '', 0, NULL, 'Kagamba HC II', 'zZKvHFAuep2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2701, 'Siripi H/C III', '0776009228', '', 0, NULL, 'Siripi HC III', 'F7LKQNLd8M6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2702, 'Ukusijoni H/C III', '0772015746', '', 0, NULL, 'Ukusijoni HC III', 'Mq6H4E2PlH7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2703, 'Koboko Mission H/C III', '0779571425', '', 0, NULL, 'Koboko Mission HC III', 'aXGjPN0urzK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2704, 'Ofuwa H/C III', '0784649249', '', 0, NULL, 'Ofua HC III', 'BSrrPPLiBZo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2705, 'Robidire H/C III', '0779162640', '', 0, NULL, 'Robidire HC III', 'V8su3RPXsiK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2707, 'Triam Medical Center', '0701588780', '', 0, NULL, 'Triam Medical Centre CLINIC-NR', 'aYN6PpIj4bQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2708, 'Dranya H/C III', '0793852540', '', 0, NULL, 'Dranya HC III', 'URmGWanfgpn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2709, 'Odupi H/C III', '0775298922', '', 0, NULL, 'Odupi HC III', 'gohwVnGiMuE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2710, 'Oriajin Hospital', '0777557949', '', 0, NULL, 'Oriajini HOSPITAL', 'i1htH9vJSlc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2711, 'Latanya H/C III', '0789154682', '', 0, NULL, 'Latanya HC III', 'kBBhLlLFodJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2712, 'Sngagura H/C III', '0785493413', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2713, 'Angagura H/C III', '0777368930', '', 0, NULL, 'Angagura HC III', 'ygTUi4HvPHJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2714, 'Kidongole H/C III', '0775585829', '', 0, NULL, 'Kidongole HC III', 'L9isDZQcpuo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2715, 'Openzinzi H/C III', '0783403776', '', 0, NULL, 'Openzinzi HC III', 'SydoosT4IoO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2716, 'Yumbe H/C III', '0774402221', '', 0, NULL, 'Yumbe HC IV', 'Gs4nX12jUeA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2717, 'Moyo Mission H/C III', '0784029101', '', 0, NULL, 'Moyo Mission HC III', 'EZA6XG2Eqra', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2718, 'Kolir H/C III', '', '', 0, NULL, 'Kolir HC III', 'OMNRrYcHxCn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2719, 'Eremi H/C III', '0777456617', '', 0, NULL, 'Eremi HC III', 'r7ps4KEp5W9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2720, 'Moyo Hospital', '0782115857', '', 0, NULL, 'Moyo Hospital', 'HWKAq88M3aX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2721, 'Pallisa General Hospital', '0772974034', '', 0, NULL, 'Pallisa HOSPITAL', 'In3apXiVwke', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2722, 'Bondo H/C III', '0785557311', '', 0, NULL, 'Bondo HC III', 'aLKBDY8KNaI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2723, 'Pakwach Mission H/C III', '0756456063', '', 0, NULL, 'Pakwach Mission HC III', 'a1DNpYv02JK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2724, 'Pokwero H/C III', '0774564784', '', 0, NULL, 'Pokwero HC III', 'aBicVbbaQ8B', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2725, 'Kucwiny H/C III', '0773250281', '', 0, NULL, 'Kucwiny HC III', 'a6UyqE2Tgjx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2726, 'Rhino Camp H/C IV', '0782584341', '', 0, NULL, 'Rhino Camp HC IV', 'ccY5TpGvBqo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2727, 'Ovujo H/C III', '0783132182', '', 0, NULL, 'Ovujo HC III', 'NzNtDRq3o75', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2728, 'Warr H/C III', '0787713310', '', 0, NULL, 'Warr  HC III', 'H9PD4tw7GUE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2729, 'Orivu H/C III', '0754188866', '', 0, NULL, 'Orivu HC III', 'aM3UfhNrS2W', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2730, 'Parombo H/C III', '0776171225', '', 0, NULL, 'Parombo HC III', 'xYbII9uvF5o', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2731, 'Kijomoro H/C III', '0779203591', '', 0, NULL, 'Kijomoro HC III', 'iIrDj4WIA6O', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2732, 'Tara H/C III', '0773187620', '', 0, NULL, 'Tara HC III', 'uVzb26lWq53', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2733, 'Kango H/C III', '0783450840', '', 0, NULL, 'Kango HC III', 'aoc8dFcHiqR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2734, 'Ihandiro H/C III', '0787204214', '', 0, NULL, 'Ihandiro HC III', 'q4C8iOvwk7A', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2736, 'Kapelebyong H/C IV', '0773288510', '', 0, NULL, 'Kapelebyong HC IV', 'YJz6q902UGT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2737, 'Ndejje University H/C III', '0781157251', '', 0, NULL, 'Ndejje University HC II', 'mg6Inl2h53C', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2738, 'Adjumani Mission H/C III', '0791919994', '', 0, NULL, 'Adjumani Mission HC III', 'aoqEF4fUP18', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2739, 'Loputuk H/C III', '', '', 0, NULL, 'Loputuk HC III', 'kvZH9oA6jkJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2740, 'Obongi H/C IV', '', '', 0, NULL, 'Obongi HC IV', 'nrLW9kL9BT2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2741, 'Ntandi H/C III', '', '', 0, NULL, 'Ntandi HC III', 'FtUWKxVeXby', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2742, 'Katooke H/C III', '0782323841', '', 0, NULL, 'Katooke HC III', 'ounetWmXUdw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2743, 'Musyenene H/C III', '', '', 0, NULL, 'Musyenene HC III', 'X3ZIaE3ccDb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2744, 'Orwamuge H/C III', '0774469277', '', 0, NULL, 'Orwamuge HC III', 'pZhYWxNWH94', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2745, 'Focrev H/C III', '0773740891', '', 0, NULL, 'Lumino Foc Rev HC III', 'auwyv5FxrEm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2746, 'Rabachi H/C II', '0776663877', '', 0, NULL, 'Rabach HC II', 'H3h7DWBLt08', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2747, 'Bukedea H/C IV', '0782405232', '', 0, NULL, 'Bukedea HC IV', 'tpIyT18ybqD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2748, 'Orussi H/C III', '', '', 0, NULL, 'Orussi HC III', 'X8wfR21inSS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2749, 'Bugiri Town Council H/C II', '', '', 0, NULL, 'Bugiri T/C HC II', 'NNIbG3x0vW4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2750, 'Buyanja H/C II (Gomba)', '0702047849', '', 0, NULL, 'Buyanja  HC II (Gomba)', 'Abzyw3gTHdQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2751, 'Nagwere H/C III', '', '', 0, NULL, 'Nagwere HC III', 'rLRgiOLdAhU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2752, 'Kyere H/C III', '0782117574', '', 0, NULL, 'Kyere HC III', 'zm7m09FNPYA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2753, 'Apapai H/C II (Kaberamaido)', '0771835965', '', 0, NULL, 'Apapai HC II', 'auhs8cHBTlW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2754, 'Kotido COU H/C III', '0787010493', '', 0, NULL, 'CoU Clinic HC III', 'oekUrDpnep4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2755, 'Wabusana H/C III', '0774383544', '', 0, NULL, 'Wabusana HC III', 's1n0dG7Dw9h', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2756, 'Ludara H/C III', '0783757722', '', 0, NULL, 'Ludara HC III', 'arcJgFPVh0M', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2757, 'Asamuk H/C III', '0785783999', '', 0, NULL, 'Asamuk HC III', 'Sj7ljAIcmjq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2758, 'Oli H/C IV', '0772977414', '', 0, NULL, 'Oli', 'ANWyMZqBETz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2759, 'Aripea H/C III', '0782511861', '', 0, NULL, 'Aripea HC III', 'QF2BTAZ1r3Z', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2760, 'Yinga H/C III', '0772880181', '', 0, NULL, 'Yinga HC III', 'ipOBsWpJ0U7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2761, 'Logiri H/C III', '0780507632', '', 0, NULL, 'Logiri HC III', 'wacjVEN6pwD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2762, 'Olujobo H/C III', '0783799832', '', 0, NULL, 'Olujobo HC III', 'IuVsQCPk19T', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2763, 'Bileafe H/C III', '0777147309', '', 0, NULL, 'Bileafe HC III', 'VUB4COm63ZQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2764, 'Offaka H/C III', '0782789762', '', 0, NULL, 'Offaka HC III', 'gkUm0zE8vDx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2765, 'Inde H/C III', '0775495512', '', 0, NULL, 'Inde HC III', 'amS3L4P6obf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2766, 'Adumi H/C IV 	', '0785561119', '', 0, NULL, 'Adumi HC IV', 'H7pcxkjHX8T', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2767, 'Ediofe H/C III', '0774362039', '', 0, NULL, 'Ediofe HC III', 'sJUxokN1Svo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2768, 'Vurra H/C III', '0782240065', '', 0, NULL, 'Vurra HC III', 'pMSBcFRbW7W', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2769, 'Wandi H/C III', '0782715000', '', 0, NULL, 'Wandi HC III', 'DVPFLWaZInR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2770, 'Cilio H/C III', '0774186983', '', 0, NULL, 'Cilio HC III', 'v6DcAuQeoeA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2771, 'Pajulu H/C III (Arua)', '0772892922', '', 0, NULL, 'Pajulu HC III', 'MHiJvIzpJ05', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2772, 'Ombidri Ondrea H/C III', '0779607960', '', 0, NULL, 'Ombidriondrea HC III', 'dZRCLuC8sry', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2773, 'Riki H/C III', '0774290395', '', 0, NULL, 'Riki HC III', 'h3Vg6HpRGmB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2774, 'Pawor H/C III', '0779942870', '', 0, NULL, 'Pawor HC III', 'b583xiTbJgi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2775, 'Ciforo H/C III', '', '', 0, NULL, 'Ciforo HC III', 'Y0XE9vH5Oeg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2776, 'Dzaipi H/C III', '0775174896', '', 0, NULL, 'Dzaipi HC III', 'Krxa01FAxdW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2777, 'Kiyomoro H/C III', '0783095371', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2778, 'Eliofe H/C III', '0787542565', '', 0, NULL, 'Eliofe HC III', 'o5I1o1YMVxP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2779, 'Kamaka H/C III', '0775698811', '', 0, NULL, 'Kamaka HC III', 'S26rammWZ0Y', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2780, 'Oluvu H/C III', '', '', 0, NULL, 'Oluvu HC III', 'dqVrBFvJg3n', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2781, 'Wadra H/C III', '0773227114', '', 0, NULL, 'Wadra HC III', 'OCCcAD4aYgs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2782, 'Nyadri H/C III', '0782405200', '', 0, NULL, 'Nyadri HC III', 'acTilIN9qRy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2783, 'Biira HC III(NGO)', '0779700550', '', 0, NULL, 'Bira HC II NGO', 'atv0z4e9m8B', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2784, 'Pakele H/C III', '0785637443', '', 0, NULL, 'Pakele HC III', 'LhNgo4n9Wi9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2785, 'Mary Land H/C III', '0782830172', '', 0, NULL, 'Maryland Kocoa HC III', 'ytpNGyNQyIv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2786, 'Mungula H/C IV', '0785566663', '', 0, NULL, 'Mungula HC IV', 'a9ai8OVQ4ET', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2788, 'Aliba H/C III', '0776654623', '', 0, NULL, 'Aliba HC III', 'AZRfSZ46cbp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2789, 'Dufile H/C III', '0777226470', '', 0, NULL, 'Dufile HC III', 'Dpv2z5tBsQK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2790, 'Eria H/C III', '0785508737', '', 0, NULL, 'Eria HC III', 'FQETWwqB2VJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2791, 'Itula H/C III', '0788505184', '', 0, NULL, 'Itula HC III', 'X5ebRy9YPbR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2792, 'Laropi H/C III', '0774808658', '', 0, NULL, 'Laropi HC III', 'X00gYQ3tjMD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2793, 'Logoba H/C III', '0774502940', '', 0, NULL, 'Logoba HC III', 'gJJhhRiJvSi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2794, 'Palorinya H/C III', '0773869830', '', 0, NULL, 'Palorinya HC III', 'aQnmwOGxGcK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2795, 'Lefori H/C III', '0774351121', '', 0, NULL, 'Lefori HC III', 'Lw8YR0FJdCr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2796, 'FR.Bilbao H/C III', '0775990295', '', 0, NULL, 'Fr. Bilbao/Bilbao HC III', 'MQ5ynJIzkbh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2797, 'Nyaravur H/C III', '0775986700', '', 0, NULL, 'Nyaravur HC III', 'g4MQbbN4oR6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2798, 'Padwot Midyere H/C III', '0788400492', '', 0, NULL, 'Padwot Midyere HC III', 'eKAZwpYo3r5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2799, 'Pakia H/C III', '0752554324', '', 0, NULL, 'Pakia HC III', 'Ea3Z8ofIGDw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2800, 'Pakwach H/C IV', '', '', 0, NULL, 'Pakwach HC IV', 'R11qcaG5pbk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2802, 'Aroi H/C III', '', '', 0, NULL, 'Aroi HC III', 'l268ov5GFsR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2803, 'Ayivuni H/C III', '', '', 0, NULL, 'Ayivuni HC III', 'Ae8zVsIuHFC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2804, 'Ariwa H/C III', '0755973386', '', 0, NULL, 'Ariwa HC III', 'hcm0msXFRQJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2805, 'Bubangizi H/C III', '0773338112', '', 0, NULL, 'Bubangizi HC III', 'w9SnOvetHUQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2806, 'Kaberamaido H/C IV', '0783204882', '', 0, NULL, 'Kaberamaido HC IV', 'PQfiDO16p19', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2807, 'Kyaali H/C III (Mpigi )', '0784444617', '', 0, NULL, 'Nsamu/Kyali HC III', 'aPw8BIgtIDF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2808, 'Kichwamba H/C III (Rubirizi)', '0788772011', '', 0, NULL, 'Rubirizi Kicwamba HC III', 'deqUOFQ4Gqn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2809, 'Kigaraale H/C III', '0772479887', '', 0, NULL, 'Kigarale HC III', 'YNwbgYdigm5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2810, 'Haama H/C II', '0752468355', '', 0, NULL, 'Haama HC II', 'W7fiTCkLzlW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2811, 'Kochi H/C III (Yumbe)', '0775557133', '', 0, NULL, 'Kochi HC III', 'eagCoWlLIhR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2812, 'Syanyonja H/C II', '', '', 0, NULL, 'Syanyonja HC II', 'akc4IXZ7N3m', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2813, 'Kaboloi H/C III', '', '', 0, NULL, 'Kaboloi HC III', 'mPn3Kj2J8r0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2814, 'Karusandara H/C III', '', '', 0, NULL, 'Karusandara HC III', 'XOOHZdLmPvN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2815, 'Jangokoro H/C III', '0775288164', '', 0, NULL, 'Jangokoro HC III', 'aTH1dUHop5k', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2816, 'Magoro H/C III', '0774696954', '', 0, NULL, 'Magoro HC III', 'VZvZyX8jBB4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2817, 'Wakitaka H/C III', '0774681260', '', 0, NULL, 'Wakitaka HC III', 'uN5b8CDfZxZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2820, 'Community H/C Plan Uganda Lugoba(Kawempe)', '0784436302', '', 0, NULL, 'COMMUNITY HEALTH PLAN UGANDA', 'ws3l8HCEhHB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2821, 'Tiriri H/C IV', '0774751438', '', 0, NULL, 'ATIRIR HC IV', 'Wyvz7rsEBpd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2822, 'Hapuuyo H/C III', '0776062974', '', 0, NULL, 'Hapuuyo HC III', 'a1H4RSyoXOj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2823, 'Anyara H/C III', '0776996063', '', 0, NULL, 'Anyara HC III', 'ZOAvFhJT2vI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2824, 'Kyarumba H/C III (Government)', '0786234474', '', 0, NULL, 'Kyarumba HC III', 'zRoj2Cm4CHr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2825, 'St Francis Assisi Kitabu (Kasese)', '0787214812', '', 0, NULL, 'Kitabu Maternity/ Kitabu St. Francis HC ', 'Qh9kLj8ETu6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2826, 'Pingire H/C III 	', '', '', 0, NULL, 'Pingire HC III', 'f8m6k3MjPsf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2827, 'Kinyamaseke H/C III', '', '', 0, NULL, 'Kinyamaseke HC III', 'YGIoDeKaKA5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2828, 'Kikokwa H/C III', '', '', 0, NULL, 'Kikokwa HC III', 'HRUwvJnV3yt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2829, 'Ayira Health Services', '0781143284', '', 0, NULL, 'Ayira Health Services', 'FkTtVWHYtc1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2830, 'Amucu H/C III', '', '', 0, NULL, 'Amucu HC III', 'N8L6gKVGOCM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2831, 'Kakatunda H/C III', '', '', 0, NULL, 'Kakatunda HC III', 'SQlEN22KQM2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2832, 'Bugoto H/C II', '', '', 0, NULL, 'Bugoto HC II', 'FICwy0lTFNW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2833, 'Masafu Hospital', '', '', 0, NULL, 'Masafu General Hospital', 'XLCbIsJWmxG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2834, 'Rugyeyo H/C III', '', '', 0, NULL, 'Rugyeyo HC III', 'IdRkJotD2zZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2835, 'Matuma H/C III 	', '', '', 0, NULL, 'Matuma HC III', 'MkD1c6jagfl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2836, 'Midigo H/C IV', '', '', 0, NULL, 'Midigo HC IV', 'H8IwuI5HbgB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2837, 'Kikyo H/C IV', '', '', 0, NULL, 'Kikyo HC IV', 'm6EphK59CJo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2838, 'Pallisa Mission Kaucho H/C III', '', '', 0, NULL, 'Pallisa Mission Kaucho HC II', 'o9Cx4B22Mu5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2839, 'Mbirizi Moslem H/C III', '', '', 0, NULL, 'Mbirizi Muslim HC III', 'CijKO0Edzep', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2840, 'Apopong H/C III', '', '', 0, NULL, 'Apopong HC III', 'DE5VuZb0Xei', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2841, 'Galimagi H/C III', '', '', 0, NULL, 'Galimagi HC III', 'auY0zuO56sC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2842, 'Buhehe H/C III', '0779346042', '', 0, NULL, 'Buhehe HC III', 'YWRtcUXBxrt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2843, 'Lunyo H/C III', '0786801072', '', 0, NULL, 'Lunyo HC III', 'RkPKHtihwLz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2844, 'Kinyabwamba H/C III', '0774285319', '', 0, NULL, 'Kinyabwamba HC III', 'An4WDnoSfY0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2845, 'Bulumbi H/C III', '', '', 0, NULL, 'Bulumbi HC III', 'SeWJV46N6Qc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2846, 'EQA', '0772528222', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2847, 'St Philips H/C II', '', '', 0, NULL, 'St. Philips HC II', 'LPJ8Gxge7ig', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2848, 'Karwensanga H/C II', '0700283856', '', 0, NULL, 'Karwesanga HC II', 'COHtAqML4yd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2849, 'Kyondo H/C III', '0783390505', '', 0, NULL, 'Kyondo HC III', 'aDb2aA9qRxt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2850, 'Kitongo H/C III (Mityana)', '0773825884', '', 0, NULL, 'Kitongo HC III', 'fT2e8nED9PT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2851, 'St Lucia Kagamba H/C III', '', '', 0, NULL, 'St. Lucia Kagamba HC II', 'ND2A0GOnnnY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2852, 'Makulubita H/C III', '0784393201', '', 0, NULL, 'Makulubita HC III', 'xjHpvNlTb1J', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2853, 'Butiiti H/C III', '0779982354', '', 0, NULL, 'Butiiti HC III', 'XRMXI2fhgoK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2856, 'Agule H/C III', '', '', 0, NULL, 'Agule HC III', 'aMrHxMQoKXP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2857, 'Isule H/C III', '', '', 0, NULL, 'Isule HC III', 'dtVDXhCkmL8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2858, 'SAS Clinic Bugolobi', '0756710975', '', 0, NULL, 'SAS Clinic - Bugolobi', 'KpCgX05NrIS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2859, 'Amuria H/C IV', '0783191692', '', 0, NULL, 'Amuria HC IV', 'oRHreBW5Tyr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2860, 'Yoyo H/C III', '0773203594', '', 0, NULL, 'Yoyo HC III', 'axmLtifg8dz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2861, 'Kobwin H/C III', '0784553234', '', 0, NULL, 'Kobwin HC III', 'TTWscca1VOu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2862, 'Gogonyo H/C III', '0775986877', '', 0, NULL, 'Gogonyo HC III', 'ci6s0lgQqFZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2863, 'Kawoko Muslim H/C III', '0751075596', '', 0, NULL, 'Kawoko muslim HC III', 'A7BAVMsywaQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2864, 'Jinja Remand H/C II', '0703797948', '', 0, NULL, 'Jinja Remand Prison HC II', 'zMdacW81fkW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2865, 'Busolwe Hospital', '0756245529', '', 0, NULL, 'Busolwe Hospital', 'jBZmte6aqoD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2866, 'Kisojo H/C III (Kyenjojo)', '', '', 0, NULL, 'Kisojo HC III', 'Xvlhtzq0LcX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2867, 'Makiro H/C III', '', '', 0, NULL, 'Makiro HC III', 'TN8jN40Os3d', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2868, 'Okollo H/C III', '', '', 0, NULL, 'Okollo Refugee HC III', 'gR6hAZ1p9oi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2869, 'Rwibaale H/C III', '', '', 0, NULL, 'Rwibale -Avemaria HC III', 'Px1ZyylviYI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2870, 'Bukangama H/C III', '', '', 0, NULL, 'Bukangama HC III', 'aKxaxZSbzx9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2871, 'Busitema H/C III', '', '', 0, NULL, 'Busitema HC III', 'x2bKnIqqcFt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2872, 'Lumino H/C III', '0773628097', '', 0, NULL, 'Lumino HC III', 'eheRSS5qlxR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2873, 'Ebenezer SDA Medical H/C III', '0773530664', '', 0, NULL, 'Ebenezer SDA HC III', 'w1COt9NZVMi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2874, 'Kakabara H/C III', '0789216256', '', 0, NULL, 'Kakabara HC III', 'SbeNQXeGDyJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2875, 'Kamuge H/C III', '0784512131', '', 0, NULL, 'Kamuge HC III', 'muwJAkGOjj5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2877, 'Morulinga H/C II', '', '', 0, NULL, 'Morulinga HC II', 'ZwJpmihjbfr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2878, 'Aketa H/C III', '0783696384', '', 0, NULL, 'Aketa HC III', 'fFMFDu21aWq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2879, 'Usuk H/C III', '0774160844', '', 0, NULL, 'St. Anne Usuk HC III', 'vGFHvU2m9uE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2880, 'Lwakalolo H/C II', '0774880730', '', 0, NULL, 'Lwakalolo HC II', 'uLBT1C3Dhkh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2881, 'Busabi H/C III', '', '', 0, NULL, 'Busabi HC III', 'YFyMK0BnLsG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2882, 'Busaru H/C IV', '0779212652', '', 0, NULL, 'Busaru HC IV', 'xpfoySoqqeO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2883, 'Kasodo H/C III', '0775004551', '', 0, NULL, 'Kasodo HC III', 'QIGx6E6L3Y5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2884, 'Nabilatuk H/C IV', '', '', 0, NULL, 'Nabilatuk HC IV', 'atZjFwq6HQ5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2885, 'Butebo H/C IV', '', '', 0, NULL, 'Butebo HC IV', 'xRyghoPrl27', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2886, 'Kapchorwa Hospital', '', '', 0, NULL, 'Kapchorwa HOSPITAL', 'zpmUD2YzPnn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2887, 'Kaproron H/C IV', '', '', 0, NULL, 'Kaproron HC IV', 'IyYvTavDSou', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2888, 'Kakoro H/C III', '', '', 0, NULL, 'Kakoro   HC III', 'xz1FbbXXtew', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2889, 'Aids Information Center(Jinja)', '0789591424', '', 0, NULL, 'AIC Jinja Main Branch', 'ndyRWKL0fDH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2890, 'Bumalenga H/C II', '0775736255', '', 0, NULL, 'Bumalenge HC II', 'Zd4l6BoQjP5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2891, 'Butaleja H/C III', '0750644122', '', 0, NULL, 'Butaleja HC III', 'Tj9XBHhCMQH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2892, 'Lolachat H/C III', '0782149311', '', 0, NULL, 'Lolachat HC III', 'a82qNO5mmYT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2893, 'Jinja Main Prison H/C III', '0772432358', '', 0, NULL, 'Jinja Main Prison HC III', 'aITcTSaL6bT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2894, 'Kathile H/C III', '', '', 0, NULL, 'Kathile HC III', 'JWg30TuiiEV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2895, 'Nakwasi H/C III', '', '', 0, NULL, 'Nakwasi HC III', 'YEgOR0cGGnF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2896, 'Zombo H/C III', '', '', 0, NULL, 'Zombo HC III', 'tuYjF238GTf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2897, 'Siipi H/C III', '0777030881', '', 0, NULL, 'Sipi HC III', 'Pg3Djak7A3e', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2898, 'Kitholhu H/C III', '0779088573', '', 0, NULL, 'Kitholhu HC III', 'aDEsACuMGHZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2899, 'Kidetok Mission H/C III', '', '', 0, NULL, 'Kidetok HC III', 'mPtQJ1rZBOd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2900, 'Kigambo H/C II', '', '', 0, NULL, 'Kigambo HC III', 'czyJDi9E4Y4', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2901, 'Busaba H/C III', '0787961050', '', 0, NULL, 'Busaba HC III', 'Kz4R1fHjE7p', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2903, 'Kansambwe H/C II', '0774310376', '', 0, NULL, 'Kasambwe HC II', 'aB8VPjofx5K', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2904, 'Kabizzi H/C II', '0703410410', '', 0, NULL, 'Kabizzi HC  II', 'HtDqqOuCfA3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2905, 'St Peter and Paul H/C III', '0777763630', '', 0, NULL, 'St. Peter And Paul HC III', 'U1ijnXGUuGE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2906, 'Matany Hospital', '0755941089', '', 0, NULL, 'Matany Hospital', 'rAvayhLZRhY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2907, 'Mildmay Hospital Uganda', '0701486345', '', 0, NULL, 'Mildmay Uganda HOSPITAL', 'yznQYcViuVu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2908, 'Bubalya H/C III', '0755480363', '', 0, NULL, 'Bubalya HC III', 'acQwn1AZXQn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2909, 'Tegeres H/C III', '0706239313', '', 0, NULL, 'Tegeres HC III', 'OVHn5EkIqik', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2910, 'Chebonet H/C III', '0779917744', '', 0, NULL, 'Chebonet HC III', 'Cxa96htrVdt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2911, 'Kapkoloswo H/C III 	', '0779293977', '', 0, NULL, 'Kapkoloswo HC III', 'apNXE4NwXoP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2912, 'Acet H/C II', '0782509566', '', 0, NULL, 'Acet HC II', 'aaEtUWpmosm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2913, 'Binya H/C II', '0777273386', '', 0, NULL, 'Binya HC II', 'aGQqkkQQzXc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2914, 'Dino H/C II', '0773970005', '', 0, NULL, 'Dino HC II', 'yEukLFOEQ1X', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2916, 'Loyoajonga H/C II', '0775080156', '', 0, NULL, 'Loyoajonga HC II', 'SsSHoj0KsxS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2917, 'Omel H/C II', '0783560288', '', 0, NULL, 'Omel HC II', 'ZEEW8QXy1sS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2919, 'Lukwir H/C II', '0779747974', '', 0, NULL, 'Lukwir HC II', 'Uu40YoS0Mvr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2920, 'Bukwo H/C IV', '0784394833', '', 0, NULL, 'Bukwa  HC IV', 'rk6HnWXzl3e', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2921, 'Lujorongole H/C II', '0777365833', '', 0, NULL, 'Lujorongole HC II', 'Fw6WydOY9UR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2922, 'Palenga H/C II', '0774187621', '', 0, NULL, 'Palenga HC II', 'xxukfjPreUj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2923, 'Awoo H/C II', '0774580158', '', 0, NULL, 'Awoo HC II', 'zardxfXWmkO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2924, 'Kabwangasi H/C III', '0774696951', '', 0, NULL, 'Kabwangasi HC III', 'akKqxsRNtae', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2925, 'Nindye H/C III', '0776249149', '', 0, NULL, 'Nindye HC III', 'ZcC2OKgHUBc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2927, 'Tekulu H/C II', '0774592555', '', 0, NULL, 'Te Kullu HC II', 'H3WUcWzPtWb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2928, 'Lelaobaro H/C II', '0782893951', '', 0, NULL, 'Lela- Obaro HC II', 'tbLOoJ5HpgT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2929, 'Nakapiripirit H/C III', '0774139937', '', 0, NULL, 'Nakapiripirit HC III', 'b4ei3WhTRAH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2930, 'Lotome H/C III', '0774948316', '', 0, NULL, 'Lotome HC III', 'PLUp4qPTSvf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2931, 'Bubukwanga H/C III', '', '', 0, NULL, 'Bubukwanga HC III', 'tv8qMylVqWx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2932, 'Kasule H/C III', '', '', 0, NULL, 'Kasule HC III', 'eW5633TN0Vm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2933, 'Bugondo H/C III', '', '', 0, NULL, 'Bugondo HC III', 'UJJPDoh3skp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2934, 'Kadic Clinic Nakulabye', '0712419759', '', 0, NULL, 'Kadic Clinic HC II', 'WWlY7qs18QI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2935, 'Rwenzori Mountaineering Services', '0773989618', '', 0, NULL, 'Mt. Rwenzori Medical Centre HC III', 'OMTL4FcwFul', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2936, 'Iriiri H/C III', '0776525810', '', 0, NULL, 'Iriri HC III', 'n5OgCMvxg5S', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2937, 'Rwanjura H/C II', '0701122404', '', 0, NULL, 'Rwanjura HC II', 'UMFeO5h1QMQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2938, 'St Joseph''s Minakulu H/C II (Omoro)', '0772939354', '', 0, NULL, 'St Joseph''s Minakulu H/C II (Omoro)', 'TDEdS0suFyQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2939, 'Abwoch H/C II', '0778962584', '', 0, NULL, 'Abwoch HC II', 'JryqknC2SNp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2940, 'St Luke H/C II', '0787455311', '', 0, NULL, 'St. Luke HC II', 'agdLbxaa0Dz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2941, 'Koro Abili H/C II', '0777198135', '', 0, NULL, 'Koro Abili HC II', 'oYdsJ8kS1JS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2942, 'Dream Center H/C III', '0783742459', '', 0, NULL, 'Dream Centre', 'fLGGzlZfyOJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2943, 'Lakwatomer H/C III', '0777484055', '', 0, NULL, 'Lakwotomer HC II', 'qKVewTpVtG6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2944, 'Patuda H/C II', '0785220263', '', 0, NULL, 'Patuda HC II', 'U7bVIR5Teiu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2945, 'Alokolum H/C II', '0785406463', '', 0, NULL, 'Alokolum HC II', 'YLwAhOTWHrQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2946, 'Budadiri H/C IV', '', '', 0, NULL, 'Budadiri HC IV', 'pTrRXtAg5IR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2947, 'Bugitimwa Govt H/C III', '', '', 0, NULL, 'Bugitimwa Gvt HC III', 'h9EhsXtR7wl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2948, 'Buhugu H/C III', '', '', 0, NULL, 'Buhugu HC III', 'UX5j31I7jpP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2949, 'Bulujewa H/C III', '', '', 0, NULL, 'Bulujewa HC III', 'D4NIfKfOjKu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2950, 'Bulwala H/C III', '', '', 0, NULL, 'Bulwala HC III', 'a9fe7RYnAFV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2951, 'Bumulisha H/C III', '', '', 0, NULL, 'Bumulisha HC III', 'jauAUu9YBbl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2952, 'Bumumulo H/C III', '', '', 0, NULL, 'Bumumulo HC III', 'ag6oANQZEh6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2953, 'Kalapata H/C III', '0775899843', '', 0, NULL, 'Kalapata HC III', 'UR7F5sFNDQO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2954, 'Nyankwanzi H/C III', '0788447157', '', 0, NULL, 'Nyankwanzi HC III', 'OXa6YSwJxEd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2955, 'Abia H/C II', '0779510117', '', 0, NULL, 'Alebtong Abia HC II GOVT', 'SNwc1CQIXTN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2956, 'Kangole H/C III', '0789127963', '', 0, NULL, 'Kangole HC III', 'ZIqDFJwbapx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2957, 'Ateno H/C II', '0773623195', '', 0, NULL, 'Oteno HC II', 'MVYYKgICwep', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2958, 'Akura H/C II', '0775176745', '', 0, NULL, 'Akura HC II', 'zkvmBd2YoxG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2959, 'Obim H/C II', '0772825309', '', 0, NULL, 'Obim Rock HC II', 'FkHL59DWIav', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2961, 'Abedober H/C III', '0777806491', '', 0, NULL, 'Abedober HC III', 'YhPJwSvxDcC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2962, 'Lokitelaebu H/C III', '0788861813', '', 0, NULL, 'Lokitelaebu HC III', 'krPNAO6ikKF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2963, 'Kopoth H/C III', '0773182324', '', 0, NULL, 'Kopoth HC II', 'hGgRhRwqMq6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2964, 'Apire H/C II', '0773577763', '', 0, NULL, 'Apire HC II', 'vbqYR19aqUK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2965, 'Rackoko H/C III', '0786651608', '', 0, NULL, 'Rackoko HC III', 'tGCoh0Vsdhj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2966, 'Orungo H/C III', '0779507455', '', 0, NULL, 'Orungo HC III', 'WmoemTft5Bj', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2967, 'Budumba H/C III', '0776238249', '', 0, NULL, 'Budumba HC III', 'BjDvpnOuxT0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2968, 'St Mathias Amaler H/C III', '0785276874', '', 0, NULL, 'Amaler HC III', 't8qKMFFAO22', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2969, 'Kapedo H/C III', '0784366136', '', 0, NULL, 'Kapedo HC III', 'U1aETxtSI4A', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2970, 'Kachonga H/C III', '0774748326', '', 0, NULL, 'Kachonga HC III', 'aPNq1GUh1et', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2971, 'St Anthony H/C II', '0777199909/070319990', '', 0, NULL, 'St. Anthony HC II', 'jo4ICrnpVWs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2972, 'Atoot H/C II', '0777199909/070319990', '', 0, NULL, 'Atoot HC II', 'QDqSXZrFf6O', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2973, 'Opot H/C II', '0777199909/070319990', '', 0, NULL, 'Opot HC II', 'd36gK81XRga', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2974, 'Ngora Freda car Hospital (NGO)', '0777199909/070319990', '', 0, NULL, 'Ngora Ngo HOSPITAL', 'MNhe4FaQw7v', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2975, 'Omiito H/C II', '0777199909/070319990', '', 0, NULL, 'Omiito HC II', 'w81TXtlX3EM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2976, 'Kazinga H/C III', '0779331069', '', 0, NULL, 'Kazinga HC III', 'ck9FaUIhQAl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2977, 'Chesower H/C III', '', '', 0, NULL, 'Chesower HC III', 'Ny6gpfiiHon', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2978, 'Karwenyi H/C II', '', '', 0, NULL, 'Karwenyi HC III', 'aIMGuhKI9Kc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2979, 'Cheptuya H/C III', '0701733399', '', 0, NULL, 'Cheptuya HC III', 'mOxAHl3KoLP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2980, 'Kabeywa H/C III', '0784584346', '', 0, NULL, 'Kabeywa HC III', 'K0MZ3COLlKt', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2981, 'Kwanyiyi H/C III', '0775212152', '', 0, NULL, 'Kwanyiy HC III', 'zpMTFJlXcMH', '2019-03-21 06:54:43', '2019-06-05 12:30:30');
INSERT INTO `facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(2982, 'Bujubuli H/C III', '0758544740', '', 0, NULL, 'Bujubuli HC III', 'frm9FSY7Syf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2983, 'Karita H/C III (Amudat)', '', '', 0, NULL, 'Karita HC III', 'UdwbvvdzVVQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2984, 'Bufuma H/C III', '', '', 0, NULL, 'Bufuma HC III', 'av5hBEV9k6X', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2985, 'Bulucheke H/C III', '0782141068', '', 0, NULL, 'Bulucheke HCIII', 'kTnTCeBN2we', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2986, 'Panyangara H/C III', '0782842756', '', 0, NULL, 'Panyangara HC III', 'vAJSlVqO7d5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2987, 'Bukigai H/C III', '0775985968', '', 0, NULL, 'Bukigai   HC III', 'q52SkXKDblS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2988, 'Sironko H/C III', '0771866047', '', 0, NULL, 'Sironko  HC III', 'NnRzaC6CTar', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2989, 'St Adolf H/C III (Butiiti)', '0703636118', '', 0, NULL, 'St. Adolf HC II', 'Xdt1jdUOQm2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2990, 'Bunagami H/C III', '', '', 0, NULL, 'Bunagami HC III', 'a3qhORZNhaG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2991, 'Bunaseke H/C III', '', '', 0, NULL, 'Bunaseke HC III', 'A8E98vahuiC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2992, 'Butandiga H/C III', '', '', 0, NULL, 'Butandiga HC III', 'PX7XHOUnYJY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2993, 'Buteza H/C III', '', '', 0, NULL, 'Buteza HC III', 'aURmSknLg9S', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2994, 'Buwalasi H/C III', '', '', 0, NULL, 'Buwalasi HC III', 'GpKYBJWFJJ6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2995, 'Buwasa H/C IV', '', '', 0, NULL, 'Buwasa HC IV', 'yyYPcgZm4xP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2996, 'Masiyompo H/C III', '', '', 0, NULL, 'Masiyompo HC III', 'm1B0rCFe5za', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2997, 'Mbaya H/C III', '', '', 0, NULL, 'Mbaya HC III', 'fSqSx3rnDmx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2998, 'Kanawat H/C III', '0782679529', '', 0, NULL, 'Kanawat HC III', 'aCfdOhOH9ni', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(2999, 'Shared Blessings H/C III', '', '', 0, NULL, 'Shared Blessings HC III', 'Rr6qa2nv12k', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3000, 'Bugalo H/C III', '', '', 0, NULL, 'Bugalo HC III', 'Symjhaye4Gp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3001, 'Kabasa Memorial Hospital', '', '', 0, NULL, 'Kabasa Memorial HOSPITAL', 'Xm71SWWTqfb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3002, 'Chemwon H/C III', '0777059949', '', 0, NULL, 'Chemwom HC III', 'mhJpqcMZSMv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3003, 'Binyiny H/C III', '', '', 0, NULL, 'Binyiny HC III', 'aVlOVOmBP2K', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3004, 'Lapanya H/C III', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3005, 'Ogonyo H/C III', '0779272894', '', 0, NULL, 'Ogonyo HC III', 'afJ9NgYTYDa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3006, 'All Saints H/C II', '', '', 0, NULL, 'All Saints HC II', 'M2Es7QYNu3D', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3007, 'Mary Immaculate H/C II', '', '', 0, NULL, 'Mary Immaculate HC II', 'QyscUadfYko', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3008, 'Koboko H/C IV', '', '', 0, NULL, 'Koboko Hospital', 'JAPYJGfV0VY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3010, 'Ochogo H/C III', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3013, 'Abaro H/C III', '', '', 0, NULL, 'Abako HC III', 'yDPmjwoOIxi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3014, 'Olum H/C IV', '', '', 0, NULL, 'Orum HC IV', 'FtmVm4r1H3a', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3015, 'Atagwata H/C III', '', '', 0, NULL, 'Atangwata HC II', 'kGKMylkSAy8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3016, 'Mayanja Memorial Hospital', '0758077715', '', 0, NULL, 'Mayanja Memorial HOSPITAL', 'ag4c3yS7T5g', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3017, 'Menya Santo H/C', '0776190463', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3018, 'Bwondha HC II', '', '', 0, NULL, 'Bwondha HC II', 'aHrBkRnFBmb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3019, 'Busala H/C II', '', '', 0, NULL, 'Busaala HC II', 'ayit7T8VnwQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3020, 'Wandegeya H/C II(Kigandalo)', '', '', 0, NULL, 'Wandegeya HC II', 'DaUdxUUVqCJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3021, 'Katutaine H/C II', '', '', 0, NULL, 'Kasutaime HC II', 'EoHnqQ9tho5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3022, 'Mugi H/C II', '', '', 0, NULL, 'Muggi HC II', 'ac4kdbslWxB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3023, 'Bwalula H/C II', '', '', 0, NULL, 'Bwalula HC II', 'WyB0okmGKma', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3025, 'Kitovu H/C II (Mayuge)', '', '', 0, NULL, 'Kitovu HC II', 'aoNyMeWn6YC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3026, 'kaluba H/C II', '', '', 0, NULL, 'Kaluba HC II', 'GTYUYJ2Ueyu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3027, 'Ntinkalu H/C II', '', '', 0, NULL, 'Ntinkalu HC II', 'PpdVthivLyS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3028, 'Magamaga Army H/C III (Mayuge)', '', '', 0, NULL, 'Magamaga Barracks HC II', 'a1C0sK4I6RS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3029, 'Bakalube H/C II', '', '', 0, NULL, 'Bukaleba HC II', 'aQDfPLRH2Cx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3031, 'Bwiwula H/C II', '', '', 0, NULL, 'Bwiwula HC II', 'agZi79Er2GX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3032, 'Ikombe H/C II', '', '', 0, NULL, 'Iganga Nkombe HC II GOVT', 'kUonlvZyTBd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3033, 'Bukalasi H/C III', '0774015702', '', 0, NULL, 'Bukalasi HC III', 'Lyd040RjHYd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3034, 'Nyakwae H/C III', '0774578781', '', 0, NULL, 'Nyakwae HC III', 'aZEsILFiYCF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3035, 'Morulem H/C III', '0784708211', '', 0, NULL, 'Morulem HC III', 'hIuSd1NGumG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3036, 'Green H/C II', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3037, 'Te-Atoo H/C II', '', '', 0, NULL, 'Tegot-Ato HC II', 'CQ5zCINpLm3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3038, 'Bugogo H/C III', '0775949018', '', 0, NULL, 'Bugogo HC II', 'SpjkBGXlDXd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3039, 'Ddamba H/C III', '0755935416', '', 0, NULL, 'Damba HC II', 'UPSV6y2j0B0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3040, 'Kei H/C III', '0773297077', '', 0, NULL, 'Kei HC III', 'yMnNUBDNr21', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3041, 'Tirinyi H/C III', '0773835451', '', 0, NULL, 'Tirinyi HC III', 'fskZDKnPGaA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3042, 'Lokopo H/C III', '0775893641', '', 0, NULL, 'Lokopo HC III', 'QKGsjJojbYP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3043, 'Bulangira H/C III', '0782035355', '', 0, NULL, 'Bulangira HC III', 'YkSJ96XhKro', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3044, 'Nabulola CMC H/C III', '0701088077', '', 0, NULL, 'Nabulola HC III', 'aAAa6d3Ohyf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3045, 'Muyembe H/C IV', '0774021231', '', 0, NULL, 'Muyembe HC IV', 'G4DUWj0Q8hp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3046, 'Buginyanya H/C III (Bulambuli)', '0785329218', '', 0, NULL, 'Buginyanya HC III', 'wNIGyP5Wi4G', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3047, 'Bunambutye H/C III', '0787176121', '', 0, NULL, 'Bunambutye HC III', 'TwZ0KmmR1od', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3048, 'Bumugusha H/C III (Bulambuli)', '0777266777', '', 0, NULL, 'Bumugusha HC III', 'CwPZMYQPea5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3049, 'Bumwambu H/C III', '0777053383', '', 0, NULL, 'Bumwambu HC III', 'GT8CbxGtA7o', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3050, 'Gamatimbei H/C III', '0778937570', '', 0, NULL, 'Gamatimbei HC III', 'eN47KTA7oAK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3052, 'Buluganya H/C III', '', '', 0, NULL, 'Buluganya HC III', 'VboJZXGJBI9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3053, 'Kaserem H/C III', '', '', 0, NULL, 'Kaserem HC III', 'S8LH3k8Bkir', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3054, 'Buyaga H/C III(Bulambuli)', '', '', 0, NULL, 'Buyaga HC III', 'aUCVOvi5Zz5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3055, 'Rugarama H/C III', '', '', 0, NULL, 'Rugarama HC III', 'Ab89aosJCg9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3056, 'Buseta H/C III', '', '', 0, NULL, 'Buseta HC III', 'oCg2PMCReX1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3057, 'Kibuku H/C IV', '', '', 0, NULL, 'Kibuku HC IV', 'kEAAnF6s9TJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3058, 'Kyamaganda HCIII', '', '', 0, NULL, 'Kyamaganda HC III', 'K1Qvy9fVY22', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3059, 'Kimwanyi H/C III', '', '', 0, NULL, 'Kimwanyi HC III', 'qjeMzMj7tdk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3060, 'Makondo H/C III', '', '', 0, NULL, 'Makondo HC II', 'c4QCM3YpqqE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3061, 'Nkoni H/C III', '', '', 0, NULL, 'Nkoni HC III', 'EBmWiWJFu2L', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3062, 'Uganda Martyrs Hospital (Mbalala)', '', '', 0, NULL, 'Uganda Martyrs HOSPITAL', 'vb6L8SkLnK6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3063, 'Loyoro H/C II', '0773887843', '', 0, NULL, 'Loyoro HC III', 'WmXAoLJicih', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3064, 'Kamese H/C II', '0785875192', '', 0, NULL, 'Kaimese HC II', 'p6TLE7qdXyr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3065, 'Aids Information Centre (Kampala)', '0704272813', '', 0, NULL, 'AIC Kampala Main Branch HC IV', 'rxoAz9lkuSi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3066, 'Wagagai H/C IV', '0776003880', '', 0, NULL, 'Wagagai HC IV', 'Ol3Jup78Um5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3067, 'Nakawuka H/C III', '0772666279', '', 0, NULL, 'Nakawuka HC III', 'bmQmfGiYGAM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3068, 'Bukhalu H/C III', '0774740742', '', 0, NULL, 'Bukhalu HC III', 'DeLCxOv0IDy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3069, 'Nabiganda H/C IV', '0756165939', '', 0, NULL, 'Nabiganda HC III', 'cwGt2cWV5TN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3070, 'Zeu H/C III (Zombo)', '', '', 0, NULL, 'Zeu HC III', 'Wk8yKMCUZOk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3071, 'Kangalaba H/C III', '0771622941', '', 0, NULL, 'Kangalaba HC III', 'zgyDdqkSzJA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3072, 'Bunapongo H/C III', '0775028600', '', 0, NULL, 'Bunapongo HC III', 'Lm5ZpEDH78a', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3073, 'Mpungu H/C II (kabale)', '0774364406', '', 0, NULL, 'Mpungu HC II', 'aNQeY1nmnoO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3074, 'Bududa Hospital', '0782503272', '', 0, NULL, 'Bududa Hospital', 'xVmiaKB3dHI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3075, 'Kasasira H/C III', '', '', 0, NULL, 'Kasasira HC III', 'Azo3MsuykUZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3076, 'Kadama H/C III', '0784964142', '', 0, NULL, 'Kadama HC III', 'qebkADihERQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3077, 'CPHL', '', '', 0, NULL, 'Central Public Health Laboratories', 'SMIjfVQOl1g', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3078, 'Loroo H/C III', '', '', 0, NULL, 'Loroo HC II', 'Z3lPWheXHAH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3079, 'Rukoki H/C III', '', '', 0, NULL, 'Rukooki HC III', 'ba1LabtE1fG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3080, 'Rubanda PHC H/C III', '', '', 0, NULL, 'Rubanda Phc HC III', 'QTU5FkY0Zjl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3081, 'Out Reach Bundibugyo', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3082, 'Butunduzi H/C III', '0774527310', '', 0, NULL, 'Butunduzi HC III', 'sLg8XDLt89n', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3083, 'Kishagazi H/C II', '0782293716', '', 0, NULL, 'Kishagazi HC II', 'VYTPJMKfPsi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3085, 'Kairos H/C IV', '0705461861', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3086, 'Kundago H/C II', '0772448133', '', 0, NULL, 'Kandago HC II', 'NkER3oDFQZb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3087, 'Nyantabooma HCIII', '0779424995', '', 0, NULL, 'Nyantaboma HC II', 'v19MRLoaChf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3088, 'Bushiyi H/C III', '0782787148', '', 0, NULL, 'Bushiyi HC III', 'iu8AuF8DVXT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3089, 'Muduma H/C III', '0706031304', '', 0, NULL, 'Muduuma HC III', 'YxeL7JN6HKe', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3090, 'Nabuli H/C III', '0757889293', '', 0, NULL, 'Nabuli HC III', 'Kt3uooeOw2H', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3091, 'Kambaala H/C III', '0788709809', '', 0, NULL, 'Kambaala HC II', 'a3KGKqpABTy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3092, 'Kibengo H/C III (Luweero)', 'Bukenya M', '', 0, NULL, 'Kibengo HC III', 'LzGj85cv2nZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3093, 'Namalu H/C III', '0779215166', '', 0, NULL, 'Namalu HC III', 'UCe1oCdRuEA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3094, 'Bwongyera H/C III', '0759957452', '', 0, NULL, 'Bwongyera HC III', 'mypOsu7U27g', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3095, 'Kiige H/C II', '', '', 0, NULL, 'Kiige HC II', 'Xh5eLA8vMYG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3096, 'Kyengera H/C II', '', '', 0, NULL, 'Kyengera HC II', 'avaBAqrl0Df', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3097, 'Galilee Com Gen Hospital', '0788611261', '', 0, NULL, 'Galilee Community General HOSPITAL', 'oGFpXMmq8U0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3098, 'Nakapelimoru H/C III', '0779067776', '', 0, NULL, 'Nakapelimoru HC III', 'aywOCuiSQrR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3099, 'Wekomiire H/C III (St Thereza)', '0787539161', '', 0, NULL, 'Wekomiire/ Wekomiire St. Thereza HC III', 'Fz5Ar828O0m', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3100, 'Ndinzi H/C III', '0774786138', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3101, 'Mulagi H/C III', '', '', 0, NULL, 'Mulagi HC III', 'udCPHdcVeb7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3102, 'Kirika H/C III', '0756644208', '', 0, NULL, 'Kirika HC III', 'YIxPa3eWbPq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3103, 'Bufunjo H/C III', '0782605759', '', 0, NULL, 'Bufunjo HC III', 'W4WTbuj52ZD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3104, 'Buluya H/C II', '0752368043', '', 0, NULL, 'Buluya HC II', 'nM0hEumLl8G', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3105, 'Ngoma H/C III (Ntungamo)', '', '', 0, NULL, 'Ngoma HC IV', 'VdaCJASzDIR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3106, 'Kebisoni H/C IV', '', '', 0, NULL, 'Kebisoni HC IV', 'Th69WKFWepR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3107, 'Buyiga H/C III', '0752941302', '', 0, NULL, 'Buyiga HC II', 'gxT5NVatL14', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3108, 'St Martin H/C III (Kyenjojo)', '0759700460', '', 0, NULL, 'St. Martins Mabira HC III', 'HEvqMCVc5qD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3109, 'Cherish H/C III', '0782684173', 'lab@cherishuganda.org', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3110, 'Kameke H/C III', '0774660634', '', 0, NULL, 'Kameke HC III', 'A5sNBoMutHJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3111, 'St Pius Kidepo Rupa H/C III', '0775064569', '', 0, NULL, 'St.Pius Kidepo HC III NGO', 'K4hmnMfawFW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3112, 'Rwaitengya H/C II', '0780414443', '', 0, NULL, 'Rwaitengya HC II', 'a2LroN27znu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3113, 'Ruhumuro H/C III', '0702687101', '', 0, NULL, 'Ruhumuro HC III', 'bDQh7NSmTZd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3114, 'Dramba H/C II', '', '', 0, NULL, 'Dramba HC III', 'C7aRTKKbxEP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3115, 'Lazebu H/C II', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3116, 'Barakala H/C III', '', '', 0, NULL, 'Barakala HC III', 'e1kEs6glxbT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3117, 'Rwenshama H/C III', '', '', 0, NULL, 'Rweshama Gvt HC III', 'yyNktXIIvgn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3118, 'Tapac H/C III', '', '', 0, NULL, 'Tapac HC III', 'JhfRRK4kn7c', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3119, 'Buhaghura H/C III', '0783091324', '', 0, NULL, 'Buhaghura HC III', 'PO2hM0JUIn2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3120, 'Kachanga H/C II', '0772844691', '', 0, NULL, 'Kachanga Island HC II', 'smgogCHGxv3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3121, 'Nyamabuga H/C III', '0773484743', '', 0, NULL, 'Nyamabuga HC III', 'F2JcZqU3iQD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3122, '39th Infantry Battalian H/C II', '0788239984', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3123, 'Nabyewanga H/C II', '075886414', '', 0, NULL, 'Nabyewanga HC II', 'PoYcxTk5yjp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3124, 'Lokales H/C II', '', '', 0, NULL, 'Lokales HC II', 'emjerwHdu0g', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3126, 'Mola Medical Centre', '0774000003', '', 0, NULL, 'Mola Medical Centre HC II', 'Vc52QmdPT1X', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3127, 'Kinyogoga H/C III', '0777823384', '', 0, NULL, 'Kinyogoga HC III', 'q68Rl47iAKF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3128, 'Lugala H/C II', '', '', 0, NULL, 'Lugala HC II', 'zSvdFQRU9Xw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3129, 'Kyankaramata H/C II', '0774707464', '', 0, NULL, 'Kyankaramata HC II', 'lAp1gLzugAb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3130, 'Myeri H/C II (Kyenjojo)', '0702924551', '', 0, NULL, 'Myeri HC II', 'PO3ArP7dZly', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3131, 'Atiira H/C III', '0782892780', '', 0, NULL, 'Atiira HC III', 'sUtrRkuRSAm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3132, 'Paidha H/C III', '0779214338', '', 0, NULL, 'Paidha HC III', 'P1F2OCX6d3t', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3133, 'Nyakarongo H/C II', '0784367286', '', 0, NULL, 'Nyakarongo HC II', 'aU6065dnndu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3134, 'Kyembogo H/C III', '0774107290', '', 0, NULL, 'Kyembogo Holy Cross HC III', 'RHw7crtljAa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3135, 'Wadelai H/C III', '0778743971', '', 0, NULL, 'Wadelai HC III', 'txKvpnoo0Xd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3136, 'Budwale H/C III', '0779733968/077200099', '', 0, NULL, 'Budwale HC III', 'tZX3IqSxAr1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3137, 'Bukoto H/C III', '', '', 0, NULL, 'Bukoto HC III', 'GlyS73YI733', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3138, 'Ryeishe H/C III', '', '', 0, NULL, 'Ryeishe HC III', 'jQ29gGaeT89', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3139, 'Teso Safe Motherhood Project', '0772690389', '', 0, NULL, 'Teso Safe Motherhood HC II', 'guuZmIbnlXl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3140, 'Bunambale H/C III', '0775230079', '', 0, NULL, 'Bunambale HC III', 'aW4S9Y3XhuV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3141, 'Busunju H/C III', '0784756354', '', 0, NULL, 'Busunju HC II', 'acZImyCaeNM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3142, 'Kyedooba H/C IV', '', '', 0, NULL, 'Kyeizooba HC III', 'aL6mherCqRW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3143, 'Community Health Plan-Uganda', '0772158388', '', 0, NULL, 'Community Health Center (kibuku) HC III', 'vxetMic6GCb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3144, 'Ttakajunge H/C III', '0784927524', '', 0, NULL, 'Takajjunge HC II', 'RfweVyD8d7w', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3145, 'Pallisa Town Council H/C III', '0777164045', '', 0, NULL, 'Pallisa T/C HC III', 'DZF9rPxVxuv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3146, 'Ocea H/C II', '0781726151', '', 0, NULL, 'Ocea HC II', 'PJAn1P5SMrd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3147, 'Butare H/C III (Ntungamo)', '0771606513', '', 0, NULL, 'Butaare HC III', 'a9vGVj3Ftt9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3148, 'CDC-Kiruddu', '0772435540', '', 0, NULL, 'Mulago Medical Services - Kiruddu?? Lab.', 'NoxDnStfVIK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3149, 'Holy Innocent''s Children''s Hospital', '0755141100', '', 0, NULL, 'Holy Innocents Children''s HOSPITAL', 'aMldu85cKyD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3150, 'SAREC Medicare Center', '0779364057', '', 0, NULL, 'SAREC Medical Care HC II', 'tm7hFrHSMht', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3151, 'Namengo H/C III', '0783123589', '', 0, NULL, 'Namengo HC III', 'dJd3ohZ6VTQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3152, 'Kortek H/C III', '0773760264', '', 0, NULL, 'Kortek HC III', 'arWb0FvSbW8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3153, 'Rwemikoma H/C III', '0782642404', '', 0, NULL, 'Rwemikoma HC III', 'YVFR8N62ego', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3154, 'Kagwara H/C II', '0779950291', '', 0, NULL, 'Kagwara HC II', 'aoKmCk2WKgG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3155, 'Kagumu H/C III', '0787453688', '', 0, NULL, 'Kagumu HC III', 'h10KjYB2xDh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3156, 'St Martins H/C III ( AMAKIO)', '0751935932', '', 0, NULL, 'St. Martins Amakio HC III', 'a3f7BmwY4kL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3157, 'Kyakuterekera H/C III (Kibaale)', '0703648030', '', 0, NULL, 'Kyakuterekera HC III', 'pWrHCTnuvFm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3158, 'Muramba H/C III', '0778034988', '', 0, NULL, 'Muramba HC III', 'YItBJnkJB9J', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3159, 'Apeitolim H/C II', '0773611222', '', 0, NULL, 'Apeitolim HC II', 'yTVIFlAzVwb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3160, 'Kajjansi H/C III', '0757547147', '', 0, NULL, 'Kajjansi HC III', 'DPRgzXMkh9U', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3161, 'Nyakisenyi H/C III', '0774231659', '', 0, NULL, 'Nyakishenyi Gvt HC III', 'UKwlyClQ3AR', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3162, 'Nyakyera H/C III', '0783761149', '', 0, NULL, 'Nyakyeera HC III', 'vQMNtz05zAJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3163, 'Bukasa H/C II (Mpigi)', '0773787356 ', '', 0, NULL, 'Bukasa HC II', 'QH5kXc4j4T1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3164, 'Bukwo General Hospital', '0753900412', '', 0, NULL, 'Bukwo General Hospital', 'as59xHu47PE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3165, 'Kidubuli HCIII', '0777740188', '', 0, NULL, 'Kidubuli HC II', 'ZTD4Prfdw22', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3166, 'Ngarama H/C III', '', '', 0, NULL, 'Ngarama HC III', 'UUp7kJLuyG6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3167, 'Nkungu H/C III', '', '', 0, NULL, 'Nkungu HC III', 'BuBuZ3iYluV', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3168, 'Lorengedwat H/C III', '0789897977', '', 0, NULL, 'Lorengedwat HC III', 'EYaoFJ7u4nr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3169, 'Mpambwa H/C III', '0775046068', '', 0, NULL, 'Mpambwa HC III', 'OpOGlpV0oLK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3170, 'Kaabong Mission H/C III', '0779595803', '', 0, NULL, 'Kaabong Mission HC III', 'jvPJLFJ3Rt1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3171, 'Ikumba H/C III', '', '', 0, NULL, 'Ikumba HC III', 'S1qinK4bVGQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3172, 'Bufundi H/C III', '', '', 0, NULL, 'Bufundi HC III', 'l9dGMGtxEOi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3173, 'Aukot H/C II', '07787205334', '', 0, NULL, 'Aukot HC II', 't7m1vt8ZdgY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3175, 'Kahokya H/C II 	', '0782454293', '', 0, NULL, 'Kahokya HC II', 'j3kOByZMdZu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3176, 'Kabugu H/C II', '0753424948', '', 0, NULL, 'Kabugu HC II', 'aKzFgKWqIPv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3177, 'Butare H/C III (Buhweju)', '0783641939', '', 0, NULL, 'Butare HC III', 'RndGp2J7TuE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3178, 'Olivu H/C III', ' 0782890357/07846542', '', 0, NULL, 'Olivu HC II', 'f2Whd5ubYn8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3179, 'Odoubu H/C III', '0782890357/078465427', '', 0, NULL, 'Oduobu HC III', 'GydLR8lY7Qw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3180, 'Imvepi H/C III', ' 0782890357/07846542', '', 0, NULL, 'Imvepi HC II', 'DDbLsI5S91i', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3181, 'Odraka H/C II', '0782890357/078465427', '', 0, NULL, 'Odraka HC II', 'cP60sZpyWCs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3182, 'Masira H/C III', '0758135484', '', 0, NULL, 'Masira HC III', 'CHqwTZx7Pym', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3183, 'Ngomanene H/C III(Gomba)', '', '', 0, NULL, 'Ngomanene HC II', 'Xvt0nRCNyrC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3184, 'SWAZI H/C III', '0784835828', '', 0, NULL, 'Swazi HC II', 'KQt6eh1UGuS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3185, 'Ssunga H/C III', '0757634991', '', 0, NULL, 'Ssunga HC III', 'EJjtvQaTkx8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3186, 'Angaya H/C III', '0777364854', '', 0, NULL, 'Angaya HC III', 'P2sdfoxH0a7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3187, 'Kisojjo H/C II (Bukomansimbi)', '0772661999', '', 0, NULL, 'Kisojjo HC II GOVT', 'ogD8wXFjIUD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3188, 'Butiru Chrisco Hospital', '0787727809', '', 0, NULL, 'Butiru Chrisco HC III', 'JHUDOhEfQ9t', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3189, '2nd DIV Military Hospital(Makenke)', '', '', 0, NULL, 'UPDF 2nd Div.Hospital', 'a6CCCxArlVG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3190, 'Nyondo H/C III (Mbale)', '0775522753', '', 0, NULL, 'Nyondo HC III', 'vaNMmgaScuW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3191, 'Eseri Domiciliary Clinic', '784935470 ', '', 0, NULL, 'Eseri Dominciliary CLINIC', 'idkhOzh2TYJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3192, 'Namugongo Fund For Special Children', '0775019662', '', 0, NULL, 'Namugongo Fund For Special Children', 'afvG6pq13B1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3193, 'Kabayanda H/C II', '', '', 0, NULL, 'Kabayanda HC II', 'aRs9kg1lEWy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3194, 'Te-Got H/C II', '', '', 0, NULL, 'Tegot HC II', 'I2psFCABsSs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3195, 'Sanga H/C III', '', '', 0, NULL, 'Sanga HC III', 't6jiPqaeBe2', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3196, 'Bumasobo H/C III', '0787981411', '', 0, NULL, 'Bumasobo HC III', 'G2x4IQfoW0p', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3197, 'St Francis Of Asiisi Marternity Home (lukaya)', '0750690101', '', 0, NULL, 'St. Francis Maternity Home', 'dkhfFpWRiL0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3198, 'Wentz Medical Center', '0772655045', '', 0, NULL, 'Wentz Medical Centre', 'DYBhUQ707JF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3199, 'St Elizabeth H/C III KIJJUKIZO', '075807272', '', 0, NULL, 'St. Elizabeth Kijjukizo HC III', 'JDAxhYvvWfp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3200, 'Senyi H/C II', '', '', 0, NULL, 'Ssenyi HC II', 'iJCZZ9rUZYm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3201, 'Lira Military Barracks H/C III', '0782055637', '', 0, NULL, 'Lira Barracks HC III', 'DNDNErLjgOa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3202, 'Henrob Medical Centre', '0706329255', '', 0, NULL, 'Henrob Family Clinic', 'u3SLVGPpWI8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3203, 'St Benedict Health Center', '', '', 0, NULL, 'St. Benedict''s HC III', 'OZm6EKHBeMU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3204, 'Migamba H/C II', '0789877177', '', 0, NULL, 'Migamba HC II', 'ejl0uMalFn1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3206, 'Kayonza Tea Factory', '', '', 0, NULL, 'Kayonza Tea Factory HC III', 'x65jpp0WQnc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3207, 'Kirima H/C III', '', '', 0, NULL, 'Kirima HC III', 'thK2qGR4iAo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3208, 'Nyamirama H/C III', '', '', 0, NULL, 'Nyamirama HC III', 'bSj21Ydq4fP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3209, 'Kinaba H/C III', '', '', 0, NULL, 'Kinaaba Gvt HC II', 'adbEkXPw0Kk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3210, 'Nyamwegabira H/C III', '', '', 0, NULL, 'Nyamwegabira HC III', 'TbdxHVOs0zC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3211, 'Matanda H/C III', '', '', 0, NULL, 'Matanda HC III', 'Sfu2d1yi02W', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3212, 'Mburamizi H/C III', '', '', 0, NULL, 'Mburamizi Army Barracks HC III', 'oe5SuoS1cNO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3213, 'Akworo H/C III', '0775644268', '', 0, NULL, 'Akworo HC III', 'gBiYU9OJgsv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3214, 'Ocokican H/C II', '0774303912/070432263', '', 0, NULL, 'Ocokican HC II', 'PmFgAvnih83', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3215, 'St Joseph''s Buyege H/C III', '0752493745', '', 0, NULL, 'Buyege HC III', 'k2a3PCnnVdI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3216, 'Central 1', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3217, 'Katunguru H/C III(Rubirizi)', '0784712910', '', 0, NULL, 'Katunguru HC III', 'VeLWYyVm43q', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3218, 'Lopeei H/C III', '0784501309', '', 0, NULL, 'Lopei HC III', 'YjHuDt86ndQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3219, 'Marah H/C III', '0783413766', '', 0, NULL, 'Marah HC II', 'O2MrHIZZJoi', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3220, 'Old Kampala Hospital', '0702780158', '', 0, NULL, 'Old Kampala Hospital HC IV', 'pp2tEHamY9h', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3221, 'Rurambiira H/C II', '0782764697', '', 0, NULL, 'Rurambira HC II', 'edGJUvFwlKN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3222, 'Omatenga H/C II', '0753895593', '', 0, NULL, 'Omatenga HC III', 'euiuFSL4Sdb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3223, 'Kosiroi H/C II', '0783984922', '', 0, NULL, 'Kosiroi HC II', 'THC1QUnraXF', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3224, 'Kamod H/C II', '0789971882', '', 0, NULL, 'Kamod HC II', 'lwOFIJ6tbNa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3225, 'Lorengechora H/C III', '0773229432', '', 0, NULL, 'Lorengechora HC III', 'UhCMUEIx3V9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3226, 'Kasambya H/C III (Kakumiro)', '', '', 0, NULL, 'Kakumiro Kasambya HC III GOVT', 'ciUSl2fbKMZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3227, 'Fiduga Clinic', '0701919301', '', 0, NULL, 'Fiduga HC III', 'VFy5xbPCzU3', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3228, 'Anyiribu H/C III', '', '', 0, NULL, 'Anyiribu HC III', 'FKuNaclJDeD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3229, 'Murchison Bay Hospital', '', '', 0, NULL, 'Murchison Bay  HOSPITAL', 'WGc7kKRhPaH', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3230, 'Teguzibirwa Dom Clinic', '0702282377', '', 0, NULL, 'Teguzibirwa Dom Clinic', 'OoIuPjmXDde', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3231, 'St Francis H/C III Ocodri', '0771640794', '', 0, NULL, 'St. Francis Ocodri HC III', 'E9FHg5HyYzC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3232, 'Otumbari H/C III', '0778720417', '', 0, NULL, 'Otumbari St. Lawrence HC III', 'lh4zqCHzHIM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3233, 'Rwagimba H/C III', '0779171675', '', 0, NULL, 'Rwagimba HC III', 'EBCRwGo5bqm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3234, 'Bregma Medical Centre', '0785852263', '', 0, NULL, 'Bregma HC II', 'k1Ady0jT3QS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3235, 'Military Police H/C III (Makindye)', '0785600470', '', 0, NULL, 'Makindye Police HC III', 'OXG3d4gPJpC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3236, 'Ruhaama H/C III', '0775747415', '', 0, NULL, 'Ruhaama HC III', 'Uo8eU7Qrx0v', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3237, 'Kisiita H/C III', '', '', 0, NULL, 'Kisiita HC III', 'TIJcUNU05Ao', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3238, 'Kakumiro H/C IV', '', '', 0, NULL, 'Kakumiro HC IV', 'aLPsQWPEMFT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3239, 'Bikurungu H/C III', '0701923361', '', 0, NULL, 'Bikurungu HC III', 'gbBl9ETEePr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3240, 'Nyakagyeme H/C III', '0784261250', '', 0, NULL, 'Nyakagyeme HC III', 'kLgmLxMJP9O', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3242, 'Bisheshe H/C III', '', '', 0, NULL, 'Bisheshe HC III', 'iChSz9sMebA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3243, 'St Martin Clinic (Bukunda)', '0782756304', '', 0, NULL, 'St. Martin''s  HC II', 'wpLf3ooCcJu', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3244, 'Igayaza H/C II', '', '', 0, NULL, 'Igayaza HC II', 'QP3xbv4C32B', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3245, 'Busamaga H/C III', '0704748703', '', 0, NULL, 'Busamaga HC II', 'C9Kvzwphv8J', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3246, 'Kabule H/C III', '0782331978', '', 0, NULL, 'Kabule HC III', 'SCCtg0ytcin', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3247, 'Tongolo H/C II', '0774027065', '', 0, NULL, 'Tongolo HC II', 'zhFVYJiWUOS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3248, 'Tumu Hospital', '0754760326', '', 0, NULL, 'Tumu Hospital', 'E4Vcl5DBfpq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3249, 'Aarapoo H/C II', '0750684692', '', 0, NULL, 'Aarapoo HC II', 'aVQCbe80pl7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3250, 'Namuningi H/C II', '0782301791', '', 0, NULL, 'Namunyingi HC II', 'PeKgOppv6Lo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3252, 'Mpongi H/C III', '0781408534', '', 0, NULL, 'Mpongi HC II', 'HHDvc2TzPnl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3253, 'Siita H/C III', '0774242676', '', 0, NULL, 'Siita Save HC III', 'a7rvaK12ZU1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3254, 'Lugazi Muslim H/C II', '0753277192', '', 0, NULL, 'Lugazi Muslim HC II', 'J8lqAR46pse', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3255, 'Lufuka Valley Health Centre III', '0751773219', '', 0, NULL, 'Lufuka Valley HC III', 'xLwJJhiMkkX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3256, 'IREMERA H/C III', '0758920239', '', 0, NULL, 'Iremera HC III', 'j1c8wmQO6d7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3257, 'St Sabena H/C II', '0775726526', '', 0, NULL, 'St. Sabena HC II', 'jsptdk3Pffa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3258, 'Hope Medical Center (Sheema)', '0786688978', '', 0, NULL, 'Hope Medical Centre HC II NGO', 'yP6WiIyFAj7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3259, 'Kitondo H/C III', '0772889033', '', 0, NULL, 'Kitondo HC III', 'U2iprp1G39M', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3260, 'Kashumba H/C III', '0772647724', '', 0, NULL, 'Kashumba HC III', 'ak2gK9gfyQS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3261, 'Bumadu C.O.U', '0782753187', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3262, 'Kikagate H/C III', '0778125561', '', 0, NULL, 'Kikagate HC III', 'xK1lURyBlFC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3263, 'Kanywamaizi H/C III', '0702177687', '', 0, NULL, 'Kanywamaizi HC III', 'aKwOiCIvmn5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3264, 'Nyakinama H/C III', '0787791488', '', 0, NULL, 'Nyakinama HC III', 'PncHhF14R0N', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3265, 'St Catherine Hospital', '0753735832', '', 0, NULL, 'St. Catherine HOSPITAL', 'mbiBOQltGeh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3266, 'Ruhinda H/C III', '0703112856', '', 0, NULL, 'Ruhinda HC III', 'HYR3olhofDD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3267, 'Naweyo H/C III', '0771244887', '', 0, NULL, 'Naweyo HC III', 'UEVOLIT1crh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3268, 'Kyeirumba H/C III', '0701517058', '', 0, NULL, 'Kyeirumba HC III', 'uEUAoZHJzu0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3269, 'Nteko H/C III', '0782080643', '', 0, NULL, 'Nteko HC III', 'z62IqCHW3MC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3270, 'Kagano H/C III', '0775700363', '', 0, NULL, 'Kagano HC III', 'zAPmrjVeufo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3271, 'Bukimbiri H/C III', '0785347629', '', 0, NULL, 'Bukimbiri HC III', 'aLRO2msaA9p', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3272, 'Kavule H/C II', '0754724738', '', 0, NULL, 'Kavule HC II', 'bWOR5fD8vdv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3273, 'Rweikiniro H/C III', '0789503444', '', 0, NULL, 'Rweikiniro HC III', 'QfWjCf5pKFh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3274, 'Rushasha H/C III', '0704563340', '', 0, NULL, 'Rushasha HC III', 'awXRxReJcg9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3275, 'Engaju H/CII', '0778584917', '', 0, NULL, 'Engaju HC II', 'DIE1bNkw04b', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3276, 'Mabona H/C III', '0776462343', '', 0, NULL, 'Mabona HC III', 'akpD9KoxPcB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3277, 'Kigwera H/C III', '0700141512', '', 0, NULL, 'Kigwera HC II', 'Qk1XgoxFmuU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3278, 'Bufunda H/C III', '0787782913', '', 0, NULL, 'Bufunda HC III', 'Wmc36bI5m96', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3279, 'Kabushaho H/C III', '0789166585', '', 0, NULL, 'Kabushaho HC III', 'aXnnYprMwTq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3280, 'Buziika H/C II', '0701306595', '', 0, NULL, 'Buziika HC II', 'WfEOwsEOMbc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3282, 'Nangara H/C II', '0776063453', '', 0, NULL, 'Nangara HC II', 'aH4vG0wm5U0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3283, 'Rutoto SDA H/C II', '0783201831', '', 0, NULL, 'Rutoto HC II', 'EZqXqnUG0ep', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3284, 'ST Marys H/C II Katoosa', '0772364806', '', 0, NULL, 'St. Mary''s Katoosa HC II', 'pEi4KzFW4nv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3285, 'Kyangyenyi H/C III', '0702944899', '', 0, NULL, 'Kyangyenyi HC III', 'XjGXLRYHwRx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3286, 'Kikatsi H/C III', '0782761958', '', 0, NULL, 'Kikatsi HC III', 'aTA0Oqfza5z', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3287, 'Bugongi H/C III', '0781522055', '', 0, NULL, 'Bugongi HC III', 'RrvmrGFqy38', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3288, 'Kanywambogo H/C III', '0782828492', '', 0, NULL, 'Kanywambogo HC III', 'aDcEum2g6mY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3289, 'Kishenyi H/C II (Rubirizi)', '0772959793', '', 0, NULL, 'Kisenyi HC II', 'ltPXYlK9Lnd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3290, 'Kyenzaza H/C II', '0772959793', '', 0, NULL, 'Kyenzaza HC II', 'jBqnMmDxLII', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3291, 'Rugazi Mission H/C II', '0772959793', '', 0, NULL, 'Rugazi Mission HC II', 'wa5ALmOQe62', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3292, 'Kamubeizi H/C II', '0782813149', '', 0, NULL, 'Kamubeizi HC II', 'PGpdN6nh3Lz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3293, 'Kakiika Prisons', '', '', 0, NULL, 'Kakiika Prisons HC II', 'ghR1GP2ZZAO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3294, 'Mutara H/C III', '0784626402', '', 0, NULL, 'Mutara HC III', 'go8iYQcmIAE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3295, 'Kapawai H/C III', '0773180108', '', 0, NULL, 'Kapuwai HC III', 'aIW9h5nP603', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3296, 'Rwenkobwa H/C III', '', '', 0, NULL, 'Rwenkobwa HC III', 'aG2AogxcfRK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3297, 'Mifumi H/C III', '', '', 0, NULL, 'Mifumi HC III', 'F50gOkQjBg9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3298, 'Ojom H/C II', '0782366622', '', 0, NULL, 'Ojom HC II', 'DEMEh3VEW72', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3299, 'Bukungu H/C II', '0759318746', '', 0, NULL, 'Bukungu HC II', 'L63oRktfIfQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3301, 'Kakore H/C II', '', '', 0, NULL, 'Kakore HC II NGO', 'dILdbpei9pW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3302, 'Kaharo H/C III', '0705560562', '', 0, NULL, 'Kaharo HC III', 'kx0KBt6s0UP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3303, 'Kanyabwanga H/C III', '', '', 0, NULL, 'Kanyabwanga HC III', 'N5mmOltRto8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3304, 'Mbarara Central Prison H/C III', '0702246769', '', 0, NULL, 'Mbarara Main Prisons HCIII', 'nqeXmzUXubD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3305, 'Ngeribalya H/C II', '0703345042', '', 0, NULL, 'Ngeribalya HC II', 'o1LaetcCY7S', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3306, 'Mushanga H/C III', '0784071894', '', 0, NULL, 'Mushanga HC III', 'ppt2wpU7IP6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3307, 'Paragon Hospital', '0772603786', '', 0, NULL, 'Paragon HOSPITAL Kampala', 'lbot9vOeQXJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3308, 'Agirigiroi H/C II', '0782240420', '', 0, NULL, 'Agirigiroi HC II', 'PCvI4E289K1', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3309, 'Ntungu H/C II', '0753404051', '', 0, NULL, 'Ntungu HC II', 'ar4RR2FBfKU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3310, 'Nyakatsiro H/C III', '0775727206', '', 0, NULL, 'Nyakatsiro HC III', 'Dk1SkAipwsf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3311, 'Ongongoja H/C II', '0782093665', '', 0, NULL, 'Ongongoja HC II', 'Qii1Y1bj3Be', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3312, 'Kitooro H/C III', '', '', 0, NULL, 'Kitooro HC III-NR', 'GXm2FPnZqfB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3313, 'Ruborogota H/C III', '0782099103', '', 0, NULL, 'Ruborogota HC III', 'IoTKrKIPsRz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3314, 'Burombe H/C III', '0774201803', '', 0, NULL, 'Burombe HC III', 'aHPLLEMdB4o', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3315, 'Nyabihuniko H/C III', '0785797974', '', 0, NULL, 'Nyabihuniko HC III', 'oJjQxwDB9EW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3316, 'Buwangwa H/C III', '0779378110', '', 0, NULL, 'Buwangwa HC III', 'YiiEgLjAdyx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3317, 'Lamezia H/C III', '0773007418', '', 0, NULL, 'Lamezia HC III', 'EJSR69XSWFB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3318, 'Hoima Police H/C III', '', '', 0, NULL, 'Hoima Police Clinic HC II PHP', 'o7OluoErEud', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3319, 'Bigungiro H/C II', '0783528170', '', 0, NULL, 'Bigungiro HC II', 'oZVIABxg51n', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3320, 'Kasaana H/C III', '0751721316', '', 0, NULL, 'Kasana HC III', 'sr5WqM2cefh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3321, 'Nkooko H/C III', '0773989283', '', 0, NULL, 'Nkooko HC III', 'ZwTCkOzJUwa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3322, 'Bobi H/C III', '0777366388', '', 0, NULL, 'Bobi HC III', 'bah36yY0P6q', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3323, 'Lalogi H/C IV', '0777328083', '', 0, NULL, 'Lalogi HC IV', 'Dxbu2QPZahI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3324, 'St Ambrose Charity H/C III', '774178100', '', 0, NULL, 'St. Ambrose Charity HC IV', 'vsu4ND4ja3E', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3325, 'Kinyarugunjo H/C III', '', '', 0, NULL, 'Kinyarugonjo HC III', 'a01R1qs6SXL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3326, 'Muhoro H/C III', '', '', 0, NULL, 'Muhorro Ngo HC III', 'CXRfI4pT3bm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3327, 'International Hospital Kampala', '0784725409', '', 0, NULL, 'International Hospital Kampala (IHK)', 'a6MbTUZ12aw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3328, 'Gateriteri H/C III', '0778385082', '', 0, NULL, 'Gateriteri HC III', 'V5l3C1YQlLa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3329, 'Buhara H/C III (Govt)', '0787032220', '', 0, NULL, 'Buhara HC III', 'aJ0CTjwNQof', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3330, 'St Marys H/C III-Kyeibuza', '0777010666', '', 0, NULL, 'Kyeibuza (St. Mary''S) HC III', 'fn3zMtuYbmL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3331, 'Kikwayi H/C II', '0704725364', '', 0, NULL, 'Kikwayi HC II', 'Eu7L6ZmhA4R', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3332, 'Kitura H/C III', '0779801209', '', 0, NULL, 'Kitura HC II', 'NcxXPrWeMtP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3333, 'Mawuki H/C II', '0778412474', '', 0, NULL, 'Mawuki HC II', 'MGA4eDHuCG9', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3334, 'Mamba H/C II', '0787048839', '', 0, NULL, 'Mamba HC II', 'SfqoAfHZm8l', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3335, 'St Marys MNH Bukomansimbi', '0759242525', '', 0, NULL, 'St. Mary''S Maternity Home HC III', 'VCIAE5Bta3H', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3336, 'Elema H/C II', '0777911094', '', 0, NULL, 'Elema HC II', 'O4KQDQzBA9s', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3337, 'Nyamarebe H/C III', '0705521420', '', 0, NULL, 'Nyamarebe HC III', 'xzB84Cpdcuk', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3338, 'Nyumanzi H/C II', '0778829990', '', 0, NULL, 'Nyumanzi HC II', 'RHkry0Pxk7e', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3339, 'Kibuzigye H/C II', '0782239379', '', 0, NULL, 'Kibuzigye HC II', 'Gs7eHzXTWS8', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3340, 'Rugashali H/C III', '', '', 0, NULL, 'Rugashari HC III', 'kkPs3xyvsD5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3341, 'Mabaale H/C III', '', '', 0, NULL, 'Mabaale HC III', 'b5Ty8QKKPVI', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3342, 'Bwikara H/C III', '', '', 0, NULL, 'Bwikara HC III', 'NQaX9PnpOiB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3343, 'Isunga H/C III', '', '', 0, NULL, 'Isunga HC III', 'v7vSvHb7QUU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3344, 'Kyaterekera H/C III (Kagadi)', '', '', 0, NULL, 'Kyaterekera HC III', 'aVULsV9e3Gf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3345, 'Mpeefu H/C III', '', '', 0, NULL, 'Mpeefu A HC II', 'OUxkJiqy82x', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3346, 'Kagadi Hospital', '', '', 0, NULL, 'Kagadi Hospital', 'JLUfWD5Q5jB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3347, 'kiryanga H/C III', '', '', 0, NULL, 'Kiryanga HC III', 'DdEgPYS7ttc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3348, 'Muzizi H/C II', '', '', 0, NULL, 'Muzizi/Muziizi (Tea Estate) HC II', 'gnUdRpOiTfQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3349, 'Aoet H/C III', '0756769822', '', 0, NULL, 'AOET HC II', 'YUaxNtqNWFW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3350, 'Gasovu H/C III', '0784144434', '', 0, NULL, 'Gasovu HC III', 'TEmxmKVJJPa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3351, 'Ddungi H/C II', '0755049517', '', 0, NULL, 'Ddungi HC II', 'k7sazN1EJ0o', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3352, 'Maranatha H/C II', '', '', 0, NULL, 'Maranatha HC III', 'VWrdPPDI0XP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3354, 'Lacor H/C III (Pabbo)', '', '', 0, NULL, 'Pabbo (Ngo) HC III', 'FNTxj1oKTQd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3355, 'Bulwadda H/C II', '0772064773', '', 0, NULL, 'Bulwadda HC II', 'QLJmdTgkB3N', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3356, 'Ahmadiyya H/C III', '0788179707', '', 0, NULL, 'Ahamadiya HC III', 'potmv2l4HbN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3357, 'Naminya H/C II', '', '', 0, NULL, 'Naminya HC II', 'joubGoymaJC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3358, 'Crane Health Services', '0782884966', '', 0, NULL, 'Crane Health Care', 'adSg4gJ5FBY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3360, 'Nyarushanje H/C III', '', '', 0, NULL, 'Nyarushanje HC III', 'mPeGNV8s5Xl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3361, 'Nile Breweries H/C II', '0775751885', '', 0, NULL, 'Nile Breweries Company Clinic  HC III', 'DQ0Pj4O6Bkq', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3362, 'Ndama H/C III', '0782545482', '', 0, NULL, 'Ndama HC III', 'ba44JvPeYSn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3363, 'Lalle H/C II', '0781860093', '', 0, NULL, 'Lalle HC II', 'KabGzoH7k7H', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3364, 'North Kigezi Diocese M C H/C IV', '0752674219/077882603', '', 0, NULL, 'North Kigezi HC IV', 'YQHYY7tXAcO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3365, 'Seeta-Namuganga', '0776508184', '', 0, NULL, 'Namuganga HC III', 'aiyix4P4FmA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3366, 'Mahango H/C III', '0775262787', '', 0, NULL, 'Mahango HC III', 'UshPWo8oKzc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3367, 'Kakindo H/C IV', '', '', 0, NULL, 'Kakindo HC IV', 'KHdENRAXOQJ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3368, 'Midas Torch Medical Services', '0784695732', '', 0, NULL, 'Midas Torch HC IV', 'GTfZ3KEfuFb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3369, 'Kigoyera H/C II', '0771445477', '', 0, NULL, 'Kigoyera HC II', 'n7n89BxSgia', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3370, 'Rukungiri Police H/C III', '0784094663', '', 0, NULL, 'Rukungiri Police HC II', 'krX5G0oMDPX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3371, 'Burunga H/C III', '0784505407', '', 0, NULL, 'Burunga HC III', 'j0I9qHOtVIw', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3372, 'Isibuka H/C III', '0702232234', '', 0, NULL, 'Isibuka Nursing Home HC III', 'E5kPcprgHM5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3373, 'AIDS Information Centre(Lira)', '0782718188', '', 0, NULL, 'AIC Lira Main Branch Clinic', 'b27exHAFNPv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3374, 'Mabale(Kyenjojo) H/C II', '0773494740', '', 0, NULL, 'Mabale Tea Factory HC II', 'ajogQebjO0O', '2019-03-21 06:54:43', '2019-06-05 12:30:30');
INSERT INTO `facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(3375, 'Lapainat H/C III', '0772696294', '', 0, NULL, 'Lapainat HC III', 'EsXcenXz99W', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3376, 'Odek H/C III', '0789558572', '', 0, NULL, 'Odek HC III', 'RyuiNh0Ldqs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3377, 'Nalweyo H/C III', '0773698069', '', 0, NULL, 'Nalweyo HC III', 'uXgyniUkd0D', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3378, 'Lugazi H/C II', '0702740793', '', 0, NULL, 'Lugazi II HC II', 'yM6f1QC8fPA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3379, 'Bugoigo H/C II', '0701733769', '', 0, NULL, 'Bugoigo HC II', 'ijHGyxnKjmz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3380, 'Ruhangire H/C II', '0787318869', '', 0, NULL, 'Ruhangire HC II', 'zGTxryelOUN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3381, 'Mbarara Police H/C III', '0755553097', '', 0, NULL, 'Mbarara Police HC III', 'xLi1cv6UPxT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3382, 'Nakatonya H/C III', '0777575494', '', 0, NULL, 'Nakatonya HC III', 'olEYjGeLyZf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3383, 'Lokolia H/C II', '0773182324', '', 0, NULL, 'Lokolia HC III', 'uwIGysNI69s', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3384, 'Kyamulibwa MRC', '', '', 0, NULL, 'MRC Kyamulibwa HC II', 'CSHydY4gTN0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3385, 'Kinanira H/C III', '0771074410', '', 0, NULL, 'Kinanira HC III', 'nNZGVgL6la6', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3386, 'St Richard''s H/C III', '0700474238', '', 0, NULL, 'St. Richard med care center', 'Ml5daGLdYZG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3387, 'Marine Military H/C II (Butiaba)', '0700404143', '', 0, NULL, 'Marine MILITARY', 'O4srstZgm0D', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3388, 'Apodorwa H/C II', '0775131231', '', 0, NULL, 'Apodorwa HC II', 'NwDdmtvuy4J', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3390, 'Hope Medical Centre', '0789550462', '', 0, NULL, 'Hope Medical Centre II', 'FJQvpVMUJlA', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3391, 'Kanziira H/C II', '0775042187', '', 0, NULL, 'Kanzira HC II', 'SCOrhnwQX8k', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3392, 'Karinga H/C II', '0774987242', '', 0, NULL, 'Karinga HC II', 'IgDdvRDyk3K', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3394, 'Kalagala H/C II (Nakaseke)', '', '', 0, NULL, 'Nakaseke Kalagala HC II GOVT', 'F77VRAFi2dn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3395, 'Kalagala H/C II (Buikwe)', '', '', 0, NULL, 'Kalagala HC II GOVT', 'fznvuJ4HgYn', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3396, 'Nyarubuye H/C III', '0787797531', '', 0, NULL, 'Nyarubuye HC III', 'HlsEfEtkMwL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3397, 'Rwoburunga H/C III', '0706104431', '', 0, NULL, 'Rwoburunga HC III', 'jA7tuThhDUU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3398, 'Ariba H/C II', '0777287385/078212639', '', 0, NULL, 'Ariba HC II', 'LLYB1JRn1UL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3399, 'AIDS Information Centre (Soroti)', '0782568048', '', 0, NULL, 'AIC Soroti Branch CLINIC', 'p0gQCb29YsS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3400, 'Gulu Police H/C III', '0774887838', '', 0, NULL, 'Gulu Police HC II', 'afGTmR6EesS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3401, 'Kandago H/C II', '', '', 0, NULL, 'Kandago HC II', 'NkER3oDFQZb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3402, 'Nyamigote H/C II', '0701124412', '', 0, NULL, 'Nyarugote HC II', 'wMiApjHnWVa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3403, 'Busabala Rd Nursing Home', '0772491527', '', 0, NULL, 'Busabala Nursing Home HC II', 'GxOxwosJPjh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3404, 'Akoboi H/C II (katakwi)', '0784677507', '', 0, NULL, 'Katakwi Akoboi HC II GOVT', 'usd4FQttAvy', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3405, 'Kyabasaija H/C III', '0777403862/070644139', '', 0, NULL, 'Kyabasaija HC III', 'wTumxHRbaIc', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3406, 'Beatrice Tierney H/C II', '0778281327/070435439', '', 0, NULL, 'Beatrice Tierne HC II', 'asYho1oZJbG', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3407, 'Opia H/C III', '0775802215', '', 0, NULL, 'Opia HC III', 'EBlM7SeLR4c', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3408, 'Kitala H/C II', '0782417949', '', 0, NULL, 'Kitala HC II', 'ZppfQ4q1PFg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3409, 'Kyakuterekera H/C III (Kakumiro)', '0703648030', '', 0, NULL, 'Kyakuterekera HC III', 'pWrHCTnuvFm', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3410, 'Kalangaalo H/C II', '0779676826', '', 0, NULL, 'Kalangaalo HC II', 'Pg7u9XVV10i', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3411, 'Paraa H/C II', '0779550144', '', 0, NULL, 'Paraa HC II NGO', 'Unpl3hI2D59', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3412, 'Kyarumba PHC III', '0781409821', '', 0, NULL, 'Kyarumba Phc HC III', 'MwpYp4lsw9D', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3413, 'Buhozi H/C III', '787719517', '', 0, NULL, 'Buhozi HC III', 'p3y6tUhOXnp', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3592, 'Kagezi HC III', '0000000', NULL, 0, NULL, 'Kagezi HC III', 'lJf5crQrZpO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3646, 'Kibirizi HC III', '0000000', NULL, 0, NULL, 'Kibirizi HC III', 'JzvyKeN1NIO', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3774, 'Mulago National Hospital- MUJHU Clinic', '0000000', NULL, 0, NULL, 'Mulago National Hospital- MUJHU Clinic', 'nVK7vHSkLbr', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3828, 'Nyarugote HC II', '0000000', NULL, 0, NULL, 'Nyarugote HC II', 'wMiApjHnWVa', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3896, 'Rusheshe HC III', '0000000', NULL, 0, NULL, 'Rusheshe HC III', 've5j2Ed30wv', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3900, 'Rwengiri HC III', '0000000', NULL, 0, NULL, 'Rwengiri HC III', 'aeuGMylOmSs', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(3901, 'Rwenyangye HC II', '0000000', NULL, 0, NULL, 'Rwenyangye HC II', 'Y7E0R7jy1qx', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(5917, 'Kitaka HC II', '0000000', NULL, 0, NULL, 'Kitaka HC II', 'auBbIemzi2h', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(6704, 'Mulago National Hospital- MJAP (CDC) Mulago', '0000000', NULL, 0, NULL, 'Mulago National Hospital- MJAP (CDC) Mul', 'DQIjOIvoTMK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(6705, 'Mulago National Hospital- MJAP TB HIV Clinic', '0000000', NULL, 0, NULL, 'Mulago National Hospital- MJAP TB HIV Cl', 'IM4jRSOQdUl', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8111, 'Villa Maria - Kaihura HC II', '0000000', NULL, 0, NULL, 'Villa Maria - Kaihura HC II', 'aYcV6yUPUF5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8206, 'Masindi Kitara Medical Centre', '0789914316', '', 0, NULL, 'Masindi Kitara Medical Centre  HC II', 'fYKuOZQWyuf', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8207, 'St Peters H/C II Awere', '0779754582 ', '', 0, NULL, 'St. Peters Awere HC II', 'avi5fZrFoo0', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8208, 'Rulongo H/C II', '0700349175', '', 0, NULL, 'Rurongo  HC II', 'fctfxQy7JeK', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8209, 'MUWRP Clinic', '0772324441', '', 0, NULL, 'Makerere University Walter Reed Clinic', 'kWWm9MulE7o', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8210, 'MRC/UVRI-Entebbe', '0772720045', '', 0, NULL, 'UVRI HIV Reference Laboratory CLINIC', 'a9acUUujcSQ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8211, 'Anyangatir H/C III', '0781280563', '', 0, NULL, 'Anyangatir HC II', 'PLdHddb1W06', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8212, 'Rubona H/C II', '0756021117/077595305', '', 0, NULL, 'Rubona HC II', 'cK771z6IUQW', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8213, 'Gamogo H/C III', '0703369774', '', 0, NULL, 'Gamogo HC III', 'jKb8fhTLrfC', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8214, 'Police Astu H/C IV', '0774486251', '', 0, NULL, 'Katakwi Police HC II', 'V8OdiScWoBe', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8215, 'Jumbo Medical Clinic', '0755438250', '', 0, NULL, 'Jumbo Medical Clinic HCII', 'JP9lxuDjeey', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8216, 'Jinja Islamic H/C', '0752580880/077539654', '', 0, NULL, 'Jinja Islamic HC III', 'I1bl5B86SPY', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8217, 'Kalibu H/C III', '0774017380', '', 0, NULL, 'Kalibu HC III', 'dUTmAyJW63T', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8218, 'Ayilo H/C III', '0779772846', '', 0, NULL, 'Ayilo 1 HC III', 'DID38FOFn2W', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8219, 'Rutaka H/C III', '0779355971', '', 0, NULL, 'Rutaka HC III', 'bAyAiJKq92R', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8220, 'Kagoggo H/C III', '0703125469', '', 0, NULL, 'Kagoggo HC II', 'hkoHNZAApbg', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8221, 'Lanenober H/C III', '0777646767', '', 0, NULL, 'Lanenobe HC III', 'ede2KlZ1gtL', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8224, 'Sebigoro H/C III', '0773827171', '', 0, NULL, 'Sebigoro HC III', 'Xa2GHu3YN8X', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8225, 'Mugiti H/C III', '0771459274', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8226, 'Kayonza H/C III (Ntungamo)', '0773552459', '', 0, NULL, 'Kayonza Ntungamo HC III GOVT', 'H9Kdh2eKGyz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8227, 'All Saints Buchanagandi H/C III', '0788196411/070491699', '', 0, NULL, 'Buchanagandi HC III', 'fKvVQoaVcjz', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8228, 'Kyere Mission', '0779642532', '', 0, NULL, 'Kyere mission HC III', 'qmIXnGwbmHP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8229, 'St Jude ULEPPI H/C III', '0777908013', '', 0, NULL, 'St. Jude Medical Centre CLINIC', 'kgOqliqXue5', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8230, 'Tajar H/C II', '0775311410', '', 0, NULL, 'Tajar HC II', 'Z7Y1y5YIxQd', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8231, 'Akide H/C II', '0775140436', '', 0, NULL, 'Akide HC II', 'Kf1o8kvbbaS', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8232, 'Butogota H/C II', '0783737032', '', 0, NULL, 'Butogota HC II', 'aRwFP1c5PuU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8233, 'Namulesa H/C II', '0784466063', '', 0, NULL, 'Namulesa HC II', 'z7Cf9DgHZWX', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8235, 'Ewanga H/C III', '0789897593', '', 0, NULL, 'Ewanga HC III', 'ppjhr0L8daE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8236, 'Bisina H/CII', '0777675951', '', 0, NULL, 'Bisina HC II', 'HhXrRF3LWHT', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8237, 'Aakum H/C II', '0777675951', '', 0, NULL, 'Aakum HC II', 'J2JiemiIQvD', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8238, 'Kicwamba H/C III', '0779124767', '', 0, NULL, 'Kicwamba HC II', 'QF3ff0Cof9s', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8239, 'Kigangazi H/C II', '0703125469', '', 0, NULL, 'Kingangazzi HC II', 'dRVlZtrIfcM', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8240, 'Karuhembe H/C II', '0782773840', '', 0, NULL, 'Karuhembe HC II', 'KPpGdhcZvNE', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8241, 'The Surgery', '0312256006', '', 0, NULL, 'The Surgery CLINIC', 'r7gaWycU27e', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8242, 'Latoro H/C II (Nwoya)', '0754362696', '', 0, NULL, 'Latoro HC II', 'u3JBwviodwN', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8243, 'Ofua MSF H/C III', '0779168464', '', 0, NULL, 'Ofua HC III', 'BSrrPPLiBZo', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8244, 'Oluko Solidale H/C III', '0780544067', '', 0, NULL, 'Oluko Solidale HC III', 'b8XUrI7irw7', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8245, 'Agaria H/C II', '0782707899', '', 0, NULL, 'Agaria  HC II', 'l9hCccYpw87', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8246, 'Butoloogo H/C II (C/o Madudu H/C III)', '0752814248', '', 0, NULL, 'Butoloogo HC II', 'QGlZ7LIOS00', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8247, 'Bugambe Tea H/C III', '0778950208', '', 0, NULL, 'Bugambe Tea HC III', 'Gbjmyvee9zh', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8248, 'Buwabwala H/C III', '0775496673', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8249, 'Bugema University H/C III', '0776223388', '', 0, NULL, 'Bugema HC II', 'hrEjabfmkqU', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8250, 'Buhuka H/C III', '0772161688', '', 0, NULL, 'Buhuka HC II', 'vULcvu1i8di', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8251, 'Kangulumira Intergrated', '', '', 0, NULL, 'Kangulumira I.H.P HC II', 'jAkXsSQHYAZ', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8252, 'Nakapelimen H/C II', '0772961805', '', 0, NULL, 'Nakapelimen HC II', 'oSaG8nXTNOB', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8253, 'Kiriki H/C III', '0787249184', '', 0, NULL, 'Kirik HC II', 'gcApTQ5WMyb', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8254, 'Buyengo H/C III', '0700314766', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8255, 'Sseguku H/C II', '0773137473', '', 0, NULL, 'Seguku HC II', 'k5Nbz2uHuqP', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8256, 'Buliisa General Hospital', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8257, 'Nsamizi H/C III', '0702354011', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8258, 'Kachumbala Mission Dispensary', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8259, 'Theresa Ledochow H/C II', '0700662174', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8260, 'Lyakajula H/C II (Lyantode)', '0774532679', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8261, 'Mukisa Nursing Home', '0701891511', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8262, 'Bidibidi Reception H/C III', '0757402834', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8263, 'Kabaale H/C II', '0778787309', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8264, 'Mutungo H/C II', '0773082562', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8265, 'Kibanga H/C III (St Elisabeth of thuringen )', '0772428065', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8266, 'Kisimbi Muslim H/C II', '0777145483', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8267, 'Senta Medicare', '0783322247', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8268, 'Good Hope Medical Center', '0782177325', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8269, 'Bukimbi H/C II', '0752540354', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8270, 'Awach H/C II (Abim)', '0779662760', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8271, 'Kyangatto H/C II', '0772845847', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8272, 'Namuyenje H/C II', '0779805422', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8273, 'Pakor H/C II', '078544220', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8274, 'Nansana H/C II', '0777490078', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8275, 'Family Care Hospital', '0786514531', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8276, 'Gombe H/C II', '0785849180', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8277, 'Mpongo H/C II', '0703600739', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8278, 'Nakaseeta H/C II', '0704406147', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8279, 'Bazadde Clinic', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8280, 'Nsale H/C II', '0700152612', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8281, 'Mbaliga H/C II', '0757773751', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8282, 'Abunga H/C II', '', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8283, 'Inuula H/C II', '0704466970', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8284, 'Butove H/C II', '0778318813', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8285, 'Atipe H/C II', '0788105588', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8286, 'Kisimba H/C II', '077145483', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8287, 'Kagorogoro H/C II', '0784072156', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8288, 'Katwe Martyrs Clinc', '0757762928', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8289, 'Busaale H/C II', '0782939279', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8290, 'Kayonza H/C II (Rakai)', '0785638370', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8291, 'Namaitsu H/C II', '0789387851', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8292, 'Kyakiddu H/C II', '0782782344', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8293, 'Peoples Medical Centre', '0772092598', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8294, 'St Aloysious Ngobya Dom.Clinic', '0778927890', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8295, 'Nakitembe H/C II', '0750821865', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8296, 'Ngandho H/C II', '0702049891', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8297, 'Lookorok H/C II', '0788420194', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8298, 'Kanyatsi H/C II', '0778001666', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8299, 'Kisansala H/C II', '0701621782', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8300, 'Naluvule Medical Centre', '0788711716', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8301, 'Twajij Health Centre III', '0702842410', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8302, 'Kitokolo H/C II', '0757909501', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8303, 'Kenkebu H/C II', '0782961843', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8304, 'Kasolwe H/C II', '0783665019', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8305, 'Kibuye H/C II', '0701364467', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8306, 'Kagamba H/C II', '0759112070', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8307, 'Mitete H/C II', '0752440141', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8308, 'Bugeywa H/C II', '0704639559', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8309, 'Pagirinya H/C III', '0785292584', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8310, 'Kiziiko H/C II', '0776031493', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8311, 'Opeta H/C III (Kole)', '0784799634', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8312, 'Masya H/C II (Gov''t)', '0782711975', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8313, 'Kanuyumu H/C II', '0781518298', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8314, 'Parabongo H/C II', '0779941128', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8315, 'Okinga H/C II', '0785454720', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8316, 'Atyenda H/C II', '0771817564', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8317, 'Busuyi H/C II', '0775386421', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8318, 'Ayago H/C II', '0787566070', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8319, 'Atura H/C II', '0773190439', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8320, 'Kamusala H/C II', '0392963765', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8321, 'Bugiri H/C III', '0775948501', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8322, 'Alere H/C II', '0773904225', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8323, 'Kanu H/C II', '0783577965', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8324, 'Iyete H/C III', '0778995724', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8325, 'Kanseera H/C II', '0702100117', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8326, 'Bweyongedde H/C II', '0784604723', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8327, 'Dr Panagiotis H/C III', '0782614599', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8328, 'Alop H/C II', '0788417719', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8329, 'Tuku H/C II', '0775802961', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8330, 'Mutushet H/C II', '0783378121/077142343', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8331, 'Tonya H/C II', '0789875020', '', 0, NULL, 'Tonya H/C II', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8332, 'Masaka Armoured Brigade H/C III (A/BDE)', '0789298181', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8333, 'Omagoro H/C III', '0784605521', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8334, 'Panyadoli Hills H/C II', '0783029293', '', 0, NULL, NULL, NULL, '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8335, 'Ambelechu H/C II', '0779478927', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8336, 'Bugambo H/C II', '0773253205', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8337, 'Osia H/C II', '0785007861', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8338, 'Kibinga H/C II', '0753011103', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8339, 'Kanyumu H/C III', '0781518298', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8340, 'kololo H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8342, 'Banga H/C III', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8343, 'St Aloysius Agobya Dom Clinic', '0778927840', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8344, 'Rupa H/C II', '0777410345', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8345, 'Kabatema H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8347, 'Natirae H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8348, 'Wandago H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8349, 'Apuce H/C II', 'Odongo Peter', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8350, 'Rwetango H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8351, 'Mukondo H/C II', '0787539161', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8352, 'Kiwalazi H/C II', '0781992203', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8353, 'Luttamaguzi H/C III', '0756062222', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8354, 'Mityana H/C III (UMSC)', '0784188949', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8355, 'Rwene H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8356, 'Namuganga H/C III', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8357, 'Rurama H/C II', '0786035449', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8358, 'Iruhuura H/C III', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8359, 'Bugona H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8360, 'Butawaata H/C III', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8361, 'Mundadde H/C III', '0782463501', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8362, 'St Francis Of Asiisi Martenity Home (Lukaya)', '0753909244', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8364, 'Ngomba H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8365, 'Arabaka H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8366, 'Lamiyo H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8367, 'Losilang H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8368, 'Makoole H/C II', '0754665766', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8369, 'Kampala Remand Prison', '0754472522', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8370, 'Mutundwe H/C II', '0782642109', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8371, 'Mweya H/C II', '0775257577', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8372, 'Bundingoma H/C II', '0773694615', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8373, '401BDE Military H/C III', '0773063408', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8374, 'Ayiri H/C III', '0779888730', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8375, 'Guruguru H/C II', '0789321251', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8376, 'Cheptapoyo H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8377, 'Kiyagara H/C II', '0782423698', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8378, 'Kasozo H/CII', '0774647879', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8379, 'Kateete H/C II (Mukono)', '0704514999', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8380, 'Nazigo Mission H/C II', '0750093239', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8381, 'Kabigi Muslim H/C II', '0750966451', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8382, 'St Joseph''s Rubindi H/C III', '0779549771', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8383, 'St Cecilia Buyamba H/C III', '0775889947', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8384, 'Kihembo H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8385, 'Nakasero Hospital', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8386, 'Namungo H/C II', '0788747069', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8387, 'Pawel Angany H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8388, 'Kikamba H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8389, 'Uriama H/C III', '0783799832', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8390, 'Busunga H/C II (Kasese)', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8391, 'Nalugala H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8392, 'Kihungya II', '0787049895', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8393, 'Kihanga H/C III', '0787344916', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8394, 'Mudade H/C III', '0701832207', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8395, 'Luteete H/C II', '0773462440', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8396, 'Muhanga COU H/CII', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8397, 'Lobalangit H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8398, 'Ntete H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8399, 'Lomeris H/C II', '0781969232', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8400, 'Namuusale H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8401, 'St Thereza Kabogwe', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8402, 'Prime Care Medical Centre', '0781935667', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8403, 'Nassolo Wamala H/C II', '0781316995', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8404, 'Kabogwe H/C 11', '0788439477', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8405, 'aji', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8406, 'Ajia H/C III', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8407, 'Nassolo Wamala H/C III', '0781316995', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8408, 'Bukatube H/C II', '0751622325', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8409, 'St Martha Maternity Home- Bukedea', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8410, 'Kapkoros H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8411, 'VQA Laboratory', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8412, 'Vine Medicare Clinic', '0704546693', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8413, 'Nyakahita H/C II', '0753862202', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8414, 'Nyamirami H/C IV', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8416, 'Kihunda H/C III', '', '', 0, NULL, 'Kihunda H/C III', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8417, 'Our Lady Of The Sick Kambaala H/C III', '0773354548', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8418, 'Rwakabengo H/C III', '', '', 0, NULL, 'Rwakabengo H/C III', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8419, 'Kashaka H/C II', '', '', 0, NULL, 'Kashaka H/C II', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8420, 'Bishop Masereka H/C', '0782379334', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8421, 'Christ The King Medical Centre', 'KILABO DIMIL', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8423, 'Epi Centre H/C II (Mpigi)', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8424, 'Nabulenger H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8425, 'Kirigime H/C III', '0777228554', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8426, 'Nakiloro H/C II', '0773967595', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8427, 'Kikandwa  H/C  II (Mubende)', '', '', 0, NULL, 'Kikandwa  H/C  II (Mubende)', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8428, 'Kyabakara H/C II', '', '', 0, NULL, 'Kyabakara H/C II', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8429, 'Kasawo Mission H/C II', '0753690198', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8431, 'Mc Farland Memorial Medical Centre', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8432, 'SDA H/C III (MBALE)', '0754557983', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8433, 'Kazinga H/C II', '0784380705', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8434, 'KALEGE H/C II', '0776427178', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8435, 'Wansalangi H/C II', '0776644043', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8436, 'St Monica H/C II (Gulu)', 'Okello Samuel', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8437, 'Adventist Medical Center', '0701288035', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8438, 'St Mauritz H/C II', '0782848660', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8439, 'St Charles Medical Center', '0756047796', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8440, 'Bondo Military H/C III', '0775769445', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8441, 'Kampala Hospital', '0772986040', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8442, 'Agule Community H/C III (NGO)', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8443, 'Napumpum H/C II', '', '', 0, NULL, 'Napumpum H/C II', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8444, 'Opuyo H/C II', '0772655878', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8445, 'Kasenyi  H/C II', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8446, 'St Claret H/C II (Nyabwina)', '0775628111', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8447, 'Luru H/C III', '0777456646', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8448, 'Mulago National Referral - Kiruddu Hepatitis Clinic', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8449, 'Above All Medical centre', '', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8450, 'Kakooge H/C II (Buyende)', '', '', 0, NULL, 'Kakooge H/C II (Buyende)', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8451, 'Bbira H/C II', '0781813104', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8452, 'Mulago Pathology Lab', '', '', 0, NULL, 'Mulago Pathology Lab', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8453, 'Bundege H/C II', '0789049777', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8454, 'Nalatoma H/C III', '0787949003', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30'),
(8455, 'Kabembe Health Centre', '0774425734', '', 0, NULL, '', '', '2019-03-21 06:54:43', '2019-06-05 12:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `gram_break_points`
--

CREATE TABLE IF NOT EXISTS `gram_break_points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `drug_id` int(10) unsigned NOT NULL,
  `gram_stain_range_id` int(10) unsigned NOT NULL,
  `resistant_max` decimal(4,1) DEFAULT NULL,
  `intermediate_min` decimal(4,1) DEFAULT NULL,
  `intermediate_max` decimal(4,1) DEFAULT NULL,
  `sensitive_min` decimal(4,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gram_break_points_drug_id_foreign` (`drug_id`),
  KEY `gram_break_points_gram_stain_range_id_foreign` (`gram_stain_range_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gram_drug_susceptibility`
--

CREATE TABLE IF NOT EXISTS `gram_drug_susceptibility` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `drug_id` int(10) unsigned NOT NULL,
  `gram_stain_result_id` int(10) unsigned NOT NULL,
  `drug_susceptibility_measure_id` int(10) unsigned NOT NULL,
  `zone_diameter` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `gram_drug_susceptibility_user_id_foreign` (`user_id`),
  KEY `gram_drug_susceptibility_drug_id_foreign` (`drug_id`),
  KEY `gram_drug_susceptibility_gram_stain_result_id_foreign` (`gram_stain_result_id`),
  KEY `gram_drug_susceptibility_drug_susceptibility_measure_id_foreign` (`drug_susceptibility_measure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gram_stain_ranges`
--

CREATE TABLE IF NOT EXISTS `gram_stain_ranges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

--
-- Dumping data for table `gram_stain_ranges`
--

INSERT INTO `gram_stain_ranges` (`id`, `name`) VALUES
(1, 'No organism seen'),
(2, 'Gram positive cocci in singles'),
(3, 'Gram positive cocci in chains'),
(4, 'Gram positive cocci in clusters'),
(5, 'Gram positive diplococci'),
(6, 'Gram positive micrococci'),
(7, 'Gram positive rods'),
(8, 'Gram positive rods with terminal spores'),
(9, 'Gram positive rods with sub-terminal spores'),
(10, 'Gram positive rods with endospores'),
(11, 'Gram negative diplococci'),
(12, 'Gram negative intracellular diplococci'),
(13, 'Gram negative extracellular diplococci'),
(14, 'Gram negative rods'),
(15, 'Gram positive yeast cells'),
(16, 'Gram negative pleomorphic rods'),
(17, '+ Gram positive cocci in singles'),
(18, '+ Gram positive cocci in chains'),
(19, '+ Gram positive cocci in clusters'),
(20, '+ Gram positive diplococci'),
(21, '+ Gram positive micrococci'),
(22, '+ Gram positive rods'),
(23, '+ Gram positive rods with terminal spores'),
(24, '+ Gram positive rods with sub-terminal spores'),
(25, '+ Gram positive rods with endospores'),
(26, '+ Gram negative diplococci'),
(27, '+ Gram negative intracellular diplococci'),
(28, '+ Gram negative extracellular diplococci'),
(29, '+ Gram negative rods'),
(30, '+ Gram positive yeast cells'),
(31, '+ Gram negative pleomorphic rods'),
(32, '++ Gram positive cocci in singles'),
(33, '++ Gram positive cocci in chains'),
(34, '++ Gram positive cocci in clusters'),
(35, '++ Gram positive diplococci'),
(36, '++ Gram positive micrococci'),
(37, '++ Gram positive rods'),
(38, '++ Gram positive rods with terminal spores'),
(39, '++ Gram positive rods with sub-terminal spores'),
(40, '++ Gram positive rods with endospores'),
(41, '++ Gram negative diplococci'),
(42, '++ Gram negative intracellular diplococci'),
(43, '++ Gram negative extracellular diplococci'),
(44, '++ Gram negative rods'),
(45, '++ Gram positive yeast cells'),
(46, '++ Gram negative pleomorphic rods'),
(47, '+++ Gram positive cocci in singles'),
(48, '+++ Gram positive cocci in chains'),
(49, '+++ Gram positive cocci in clusters'),
(50, '+++ Gram positive diplococci'),
(51, '+++ Gram positive micrococci'),
(52, '+++ Gram positive rods'),
(53, '+++ Gram positive rods with terminal spores'),
(54, '+++ Gram positive rods with sub-terminal spores'),
(55, '+++ Gram positive rods with endospores'),
(56, '+++ Gram negative diplococci'),
(57, '+++ Gram negative intracellular diplococci'),
(58, '+++ Gram negative extracellular diplococci'),
(59, '+++ Gram negative rods'),
(60, '+++ Gram positive yeast cells'),
(61, '+++ Gram negative pleomorphic rods');

-- --------------------------------------------------------

--
-- Table structure for table `gram_stain_results`
--

CREATE TABLE IF NOT EXISTS `gram_stain_results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `test_id` int(10) unsigned NOT NULL,
  `gram_stain_range_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gram_stain_results_user_id_foreign` (`user_id`),
  KEY `gram_stain_results_test_id_foreign` (`test_id`),
  KEY `gram_stain_results_gram_stain_range_id_foreign` (`gram_stain_range_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hubs`
--

CREATE TABLE IF NOT EXISTS `hubs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ii_quickcodes`
--

CREATE TABLE IF NOT EXISTS `ii_quickcodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feed_source` tinyint(4) NOT NULL,
  `config_prop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

CREATE TABLE IF NOT EXISTS `instruments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driver_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`id`, `name`, `ip`, `hostname`, `description`, `driver_name`, `created_at`, `updated_at`) VALUES
(1, 'Celltac F Mek 8222', '192.168.1.12', 'HEMASERVER', 'Automatic analyzer with 22 parameters and WBC 5 part diff Hematology Analyzer', 'KBLIS\\Plugins\\CelltacFMachine', '2019-09-06 09:25:29', '2019-09-06 09:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `instrument_testtypes`
--

CREATE TABLE IF NOT EXISTS `instrument_testtypes` (
  `instrument_id` int(10) unsigned NOT NULL,
  `test_type_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `instrument_testtypes_instrument_id_test_type_id_unique` (`instrument_id`,`test_type_id`),
  KEY `instrument_testtypes_test_type_id_foreign` (`test_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instrument_testtypes`
--

INSERT INTO `instrument_testtypes` (`instrument_id`, `test_type_id`) VALUES
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `interfaced_equipment`
--

CREATE TABLE IF NOT EXISTS `interfaced_equipment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `comm_type` tinyint(4) NOT NULL,
  `equipment_version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lab_section` int(10) unsigned NOT NULL,
  `feed_source` tinyint(4) NOT NULL,
  `config_file` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `interfaced_equipment_lab_section_foreign` (`lab_section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inv_items`
--

CREATE TABLE IF NOT EXISTS `inv_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_level` decimal(8,2) NOT NULL,
  `max_level` decimal(8,2) DEFAULT NULL,
  `storage_req` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `inv_items_name_unique` (`name`),
  KEY `inv_items_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supply`
--

CREATE TABLE IF NOT EXISTS `inv_supply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `lot` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_no` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry_date` datetime NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_id` int(10) unsigned NOT NULL,
  `quantity_ordered` int(11) NOT NULL DEFAULT '0',
  `quantity_supplied` int(11) NOT NULL DEFAULT '0',
  `cost_per_unit` decimal(5,2) DEFAULT NULL,
  `date_of_order` date DEFAULT NULL,
  `date_of_supply` date DEFAULT NULL,
  `date_of_reception` date NOT NULL,
  `remarks` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `inv_supply_user_id_foreign` (`user_id`),
  KEY `inv_supply_item_id_foreign` (`item_id`),
  KEY `inv_supply_supplier_id_foreign` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inv_usage`
--

CREATE TABLE IF NOT EXISTS `inv_usage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` int(10) unsigned NOT NULL,
  `request_id` int(10) unsigned NOT NULL,
  `quantity_used` int(11) NOT NULL DEFAULT '0',
  `date_of_usage` date NOT NULL,
  `issued_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `inv_usage_user_id_foreign` (`user_id`),
  KEY `inv_usage_stock_id_foreign` (`stock_id`),
  KEY `inv_usage_request_id_foreign` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `isolated_organisms`
--

CREATE TABLE IF NOT EXISTS `isolated_organisms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `test_id` int(10) unsigned NOT NULL,
  `organism_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `isolated_organisms_user_id_foreign` (`user_id`),
  KEY `isolated_organisms_test_id_foreign` (`test_id`),
  KEY `isolated_organisms_organism_id_foreign` (`organism_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `isolated_organisms`
--

INSERT INTO `isolated_organisms` (`id`, `user_id`, `test_id`, `organism_id`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 2, '2019-09-06 09:49:00', '2019-09-06 09:49:00'),
(2, 1, 4, 72, '2019-09-06 09:58:43', '2019-09-06 09:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `lots`
--

CREATE TABLE IF NOT EXISTS `lots` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry` date NOT NULL,
  `instrument_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lots_number_unique` (`number`),
  KEY `lots_instrument_id_foreign` (`instrument_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `measures`
--

CREATE TABLE IF NOT EXISTS `measures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `measure_type_id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `measures_measure_type_id_foreign` (`measure_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=99 ;

--
-- Dumping data for table `measures`
--

INSERT INTO `measures` (`id`, `measure_type_id`, `name`, `unit`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Screening', '', NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25', NULL),
(2, 2, 'Confirmatory Test (Statpak)', '', NULL, '2019-09-06 09:25:26', '2019-09-06 09:25:26', NULL),
(3, 2, 'Unigold', '', NULL, '2019-09-06 09:25:26', '2019-09-06 09:25:26', NULL),
(4, 2, 'BS for mps', '', NULL, '2019-09-06 09:25:26', '2019-09-06 09:25:26', NULL),
(5, 4, 'GXM', '', NULL, '2019-09-06 09:25:26', '2019-09-06 09:25:26', NULL),
(6, 2, 'Blood Grouping', '', NULL, '2019-09-06 09:25:26', '2019-09-06 09:25:26', NULL),
(7, 1, 'HB', 'g/dL', NULL, '2019-09-06 09:25:26', '2019-09-06 09:25:26', NULL),
(8, 4, 'Pus cells', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(9, 4, 'S. haematobium', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(10, 4, 'T. vaginalis', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(11, 4, 'Yeast cells', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(12, 4, 'Red blood cells', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(13, 4, 'Bacteria', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(14, 4, 'Spermatozoa', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(15, 4, 'Epithelial cells', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(16, 4, 'Glucose', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(17, 4, 'Ketones', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(18, 4, 'Proteins', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(19, 4, 'Blood', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(20, 4, 'Bilirubin', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(21, 4, 'Urobilinogen Phenlpyruvic acid', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(22, 4, 'pH', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(23, 1, 'WBC', 'x10³/µL', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(24, 1, 'Lym', 'L', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(25, 1, 'Mon', '*', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(26, 1, 'Neu', '*', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(27, 1, 'Eos', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(28, 1, 'Baso', '', NULL, '2019-09-06 09:25:27', '2019-09-06 09:25:27', NULL),
(29, 2, 'Salmonella Antigen Test', '', NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30', NULL),
(30, 2, 'Direct COOMBS Test', '', NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30', NULL),
(31, 2, 'Du Test', '', NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30', NULL),
(32, 2, 'Sickling Test', '', NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30', NULL),
(33, 2, 'Borrelia', '', NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30', NULL),
(34, 2, 'VDRL', '', NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30', NULL),
(35, 2, 'Pregnancy Test', '', NULL, '2019-09-06 09:25:31', '2019-09-06 09:25:31', NULL),
(36, 2, 'Brucella', '', NULL, '2019-09-06 09:25:31', '2019-09-06 09:25:31', NULL),
(37, 2, 'H. Pylori', '', NULL, '2019-09-06 09:25:31', '2019-09-06 09:25:31', NULL),
(38, 1, 'WBC', 'x10³/µL', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(39, 1, 'RBC', 'x10⁶/µL', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(40, 1, 'HGB', 'g/dL', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(41, 1, 'HCT', '%', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(42, 1, 'MCV', 'fL', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(43, 1, 'MCH', 'pg', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(44, 1, 'MCHC', 'g/dL', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(45, 1, 'PLT', 'x10³/µL', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(46, 1, 'RDW-SD', 'fL', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(47, 1, 'RDW-CV', '%', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(48, 1, 'PDW', 'fL', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(49, 1, 'MPV', 'fL', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(50, 1, 'P-LCR', '%', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(51, 1, 'PCT', '%', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(52, 1, 'NEUT#', 'x10³/µL', NULL, '2019-09-06 09:25:32', '2019-09-06 09:25:32', NULL),
(53, 1, 'LYMPH#', 'x10³/µL', NULL, '2019-09-06 09:25:33', '2019-09-06 09:25:33', NULL),
(54, 1, 'MONO#', 'x10³/µL', NULL, '2019-09-06 09:25:33', '2019-09-06 09:25:33', NULL),
(55, 1, 'EO#', 'x10³/µL', NULL, '2019-09-06 09:25:33', '2019-09-06 09:25:33', NULL),
(56, 1, 'BASO#', 'x10³/µL', NULL, '2019-09-06 09:25:33', '2019-09-06 09:25:33', NULL),
(57, 1, 'NEUT%', '%', NULL, '2019-09-06 09:25:33', '2019-09-06 09:25:33', NULL),
(58, 1, 'LYMPH%', '%', NULL, '2019-09-06 09:25:33', '2019-09-06 09:25:33', NULL),
(59, 1, 'MONO%', '%', NULL, '2019-09-06 09:25:33', '2019-09-06 09:25:33', NULL),
(60, 1, 'EO%', '%', NULL, '2019-09-06 09:25:33', '2019-09-06 09:25:33', NULL),
(61, 1, 'BASO%', '%', NULL, '2019-09-06 09:25:33', '2019-09-06 09:25:33', NULL),
(62, 2, 'Crag', '', NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41', NULL),
(63, 4, 'Differential', '', NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41', NULL),
(64, 4, 'Total Cell Count', '', NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41', NULL),
(65, 4, 'Lymphocytes', '', NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41', NULL),
(66, 4, 'Quantitative Culture', '', NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41', NULL),
(67, 4, 'RBC Count', '', NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41', NULL),
(68, 4, 'TPHA', '', NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41', NULL),
(69, 4, 'HCG', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(70, 4, 'Bilirubin', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(71, 4, 'Blood', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(72, 4, 'Glucose', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(73, 4, 'Ketones', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(74, 4, 'Leukocytes', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(75, 4, 'Microscopy', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(76, 4, 'Nitrite', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(77, 4, 'pH', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(78, 4, 'Protein', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(79, 4, 'Specific Gravity', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(80, 4, 'Urobilinogen', '', NULL, '2019-09-06 09:25:42', '2019-09-06 09:25:42', NULL),
(81, 4, 'Appearance', '', NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(82, 4, 'Culture and Sensitivity', NULL, NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(83, 4, 'Gram Staining', '', NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(84, 2, 'India Ink Staining', NULL, NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(85, 4, 'Protein', NULL, NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(86, 4, 'Wet preparation (saline preparation)', NULL, NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(87, 4, 'White Blood Cell Count', NULL, NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(88, 4, 'ZN Staining', NULL, NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(89, 4, 'Modified ZN', '', NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(90, 4, 'Wet Saline Iodine Prep', '', NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(91, 2, 'SERUM AMYLASE', '', NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(92, 2, 'calcium', '', NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(93, 2, 'SGOT', '', NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(94, 2, 'Indirect COOMBS test', '', NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(95, 2, 'Direct COOMBS test', '', NULL, '2019-09-06 09:25:43', '2019-09-06 09:25:43', NULL),
(96, 2, 'Du test', '', NULL, '2019-09-06 09:25:44', '2019-09-06 09:25:44', NULL),
(97, 4, 'RPR', '', NULL, '2019-09-06 09:25:46', '2019-09-06 09:25:46', NULL),
(98, 4, 'Serum Crag', '', NULL, '2019-09-06 09:25:47', '2019-09-06 09:25:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `measure_name_mappings`
--

CREATE TABLE IF NOT EXISTS `measure_name_mappings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_name_mapping_id` int(10) unsigned NOT NULL,
  `measure_id` int(10) unsigned DEFAULT NULL,
  `standard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `system_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `measure_name_mappings_system_name_unique` (`system_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `measure_name_mappings`
--

INSERT INTO `measure_name_mappings` (`id`, `test_name_mapping_id`, `measure_id`, `standard_name`, `system_name`) VALUES
(1, 1, NULL, 'WBC', 'wbc'),
(2, 1, NULL, 'RBC', 'rbc'),
(3, 1, NULL, 'hgb', 'hgb'),
(4, 2, NULL, 'Hb', 'hb'),
(5, 3, NULL, 'ESR', 'esr'),
(6, 4, NULL, 'Bleeding time', 'bleeding_time'),
(7, 5, NULL, 'Prothrombin Time', 'prothrombin_time'),
(8, 6, NULL, 'Clotting Time', 'clotting_time'),
(9, 7, NULL, 'ABO Grouping', 'abo_grouping'),
(10, 8, NULL, 'Combs', 'combs'),
(11, 9, NULL, 'Cross Matching', 'cross_matching'),
(12, 10, NULL, 'Malaria Microscopy', 'malaria_microscopy'),
(13, 11, NULL, 'Malaria RDTs', 'malaria_rdts'),
(14, 12, NULL, 'Stool Microscopy', 'stool_microscopy'),
(15, 13, NULL, 'VDRL/RPR', 'vdrl_rpr'),
(16, 14, NULL, 'TPHA', 'tpha'),
(17, 15, NULL, 'Shigella Dysentery', 'shigella_dysentery'),
(18, 16, NULL, 'Hepatitis B', 'hepatitis_b'),
(19, 17, NULL, 'Brucella', 'brucella'),
(20, 18, NULL, 'Pregnancy Test', 'pregnancy_test'),
(21, 19, NULL, 'Rheumatoid Factor', 'rheumatoid_factor'),
(22, 20, NULL, 'CD4 tests', 'cd4_tests'),
(23, 21, NULL, 'Viral Load Tests', 'viral_load_tests'),
(24, 22, NULL, 'ZN for AFBs', 'zn_for_afbs'),
(25, 23, NULL, 'Culture & Sensitivity', 'culture_sensitivity'),
(26, 24, NULL, 'Gram Stain', 'gram_stain'),
(27, 25, NULL, 'India Ink', 'india_ink'),
(28, 26, NULL, 'Wet Preps', 'wet_preps'),
(29, 27, NULL, 'Urine Microscopy', 'urine_microscopy'),
(30, 28, NULL, 'Urea', 'urea'),
(31, 28, NULL, 'Calcium', 'calcium'),
(32, 28, NULL, 'Potassium', 'potassium'),
(33, 28, NULL, 'Sodium', 'sodium'),
(34, 28, NULL, 'Creatinine', 'creatinine'),
(35, 29, NULL, 'ALT', 'alt'),
(36, 29, NULL, 'AST', 'ast'),
(37, 29, NULL, 'Albumin', 'albumin'),
(38, 29, NULL, 'Total Protein', 'total_protein'),
(39, 30, NULL, 'Triglycerides', 'triglycerides'),
(40, 30, NULL, 'Cholesterol', 'cholesterol'),
(41, 30, NULL, 'CK', 'ck'),
(42, 30, NULL, 'LDH', 'ldh'),
(43, 30, NULL, 'HDL', 'hdl'),
(44, 31, NULL, 'Alkaline Phosphates', 'alkaline_phosphates'),
(45, 32, NULL, 'Amylase', 'amylase'),
(46, 33, NULL, 'Glucose', 'glucose'),
(47, 34, NULL, 'Uric Acid', 'uric_acid'),
(48, 35, NULL, 'Lactate', 'lactate'),
(49, 36, NULL, 'Determine', 'determine'),
(50, 36, NULL, 'Stat-pak', 'stat_pak'),
(51, 36, NULL, 'Unigold', 'unigold');

-- --------------------------------------------------------

--
-- Table structure for table `measure_ranges`
--

CREATE TABLE IF NOT EXISTS `measure_ranges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `measure_id` int(10) unsigned NOT NULL,
  `age_min` decimal(8,2) DEFAULT NULL,
  `age_max` decimal(8,2) DEFAULT NULL,
  `gender` tinyint(3) unsigned DEFAULT NULL,
  `range_lower` decimal(7,3) DEFAULT NULL,
  `range_upper` decimal(7,3) DEFAULT NULL,
  `alphanumeric` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interpretation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `result_interpretation_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `measure_ranges_alphanumeric_index` (`alphanumeric`),
  KEY `measure_ranges_measure_id_foreign` (`measure_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=230 ;

--
-- Dumping data for table `measure_ranges`
--

INSERT INTO `measure_ranges` (`id`, `measure_id`, `age_min`, `age_max`, `gender`, `range_lower`, `range_upper`, `alphanumeric`, `interpretation`, `deleted_at`, `result_interpretation_id`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, 'Reactive', '', NULL, NULL),
(2, 1, NULL, NULL, NULL, NULL, NULL, 'Non-Reactive', '', NULL, NULL),
(3, 2, NULL, NULL, NULL, NULL, NULL, 'Reactive', '', NULL, NULL),
(4, 2, NULL, NULL, NULL, NULL, NULL, 'Non-Reactive', '', NULL, NULL),
(5, 3, NULL, NULL, NULL, NULL, NULL, 'Reactive', '', NULL, NULL),
(6, 3, NULL, NULL, NULL, NULL, NULL, 'Non-Reactive', '', NULL, NULL),
(7, 4, NULL, NULL, NULL, NULL, NULL, 'No mps seen', 'Negative', NULL, NULL),
(8, 4, NULL, NULL, NULL, NULL, NULL, '+', 'Positive', NULL, NULL),
(9, 4, NULL, NULL, NULL, NULL, NULL, '++', 'Positive', NULL, NULL),
(10, 4, NULL, NULL, NULL, NULL, NULL, '+++', 'Positive', NULL, NULL),
(11, 6, NULL, NULL, NULL, NULL, NULL, 'O-', NULL, NULL, NULL),
(12, 6, NULL, NULL, NULL, NULL, NULL, 'O+', NULL, NULL, NULL),
(13, 6, NULL, NULL, NULL, NULL, NULL, 'A-', NULL, NULL, NULL),
(14, 6, NULL, NULL, NULL, NULL, NULL, 'A+', NULL, NULL, NULL),
(15, 6, NULL, NULL, NULL, NULL, NULL, 'B-', NULL, NULL, NULL),
(16, 6, NULL, NULL, NULL, NULL, NULL, 'B+', NULL, NULL, NULL),
(17, 6, NULL, NULL, NULL, NULL, NULL, 'AB-', NULL, NULL, NULL),
(18, 6, NULL, NULL, NULL, NULL, NULL, 'AB+', NULL, NULL, NULL),
(19, 23, '0.00', '100.00', 2, '4.000', '11.000', NULL, NULL, NULL, NULL),
(20, 24, '0.00', '100.00', 2, '1.500', '4.000', NULL, NULL, NULL, NULL),
(21, 25, '0.00', '100.00', 2, '0.100', '9.000', NULL, NULL, NULL, NULL),
(22, 26, '0.00', '100.00', 2, '2.500', '7.000', NULL, NULL, NULL, NULL),
(23, 27, '0.00', '100.00', 2, '0.000', '6.000', NULL, NULL, NULL, NULL),
(24, 28, '0.00', '100.00', 2, '0.000', '2.000', NULL, NULL, NULL, NULL),
(25, 29, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(26, 29, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(27, 30, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(28, 30, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(29, 31, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(30, 31, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(31, 32, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(32, 32, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(33, 33, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(34, 33, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(35, 34, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(36, 34, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(37, 35, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(38, 35, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(39, 36, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(40, 36, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(41, 37, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(42, 37, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(43, 38, '0.00', '0.02', 2, '3.000', '15.000', NULL, NULL, NULL, NULL),
(44, 38, '0.02', '0.08', 2, '3.000', '15.000', NULL, NULL, NULL, NULL),
(45, 38, '0.08', '1.00', 2, '3.000', '15.000', NULL, NULL, NULL, NULL),
(46, 38, '1.00', '12.00', 2, '3.000', '15.000', NULL, NULL, NULL, NULL),
(47, 38, '12.00', '60.00', 0, '3.000', '15.000', NULL, NULL, NULL, NULL),
(48, 38, '12.00', '60.00', 1, '4.000', '11.000', NULL, NULL, NULL, NULL),
(49, 38, '60.00', '999.00', 2, '3.000', '15.000', NULL, NULL, NULL, NULL),
(50, 39, '0.00', '0.02', 2, '2.500', '5.500', NULL, NULL, NULL, NULL),
(51, 39, '0.02', '0.08', 2, '2.500', '5.500', NULL, NULL, NULL, NULL),
(52, 39, '0.08', '1.00', 2, '2.500', '5.500', NULL, NULL, NULL, NULL),
(53, 39, '1.00', '12.00', 2, '2.500', '5.500', NULL, NULL, NULL, NULL),
(54, 39, '12.00', '60.00', 0, '2.500', '5.500', NULL, NULL, NULL, NULL),
(55, 39, '12.00', '60.00', 1, '2.500', '5.500', NULL, NULL, NULL, NULL),
(56, 39, '60.00', '999.00', 2, '2.500', '5.500', NULL, NULL, NULL, NULL),
(57, 40, '0.00', '0.02', 2, '12.000', '16.000', NULL, NULL, NULL, NULL),
(58, 40, '0.02', '0.08', 2, '8.000', '17.000', NULL, NULL, NULL, NULL),
(59, 40, '0.08', '1.00', 2, '8.000', '17.000', NULL, NULL, NULL, NULL),
(60, 40, '1.00', '12.00', 2, '8.000', '17.000', NULL, NULL, NULL, NULL),
(61, 40, '12.00', '60.00', 0, '13.000', '17.000', NULL, NULL, NULL, NULL),
(62, 40, '12.00', '60.00', 1, '12.000', '14.000', NULL, NULL, NULL, NULL),
(63, 40, '60.00', '999.00', 2, '8.000', '17.000', NULL, NULL, NULL, NULL),
(64, 41, '0.00', '0.02', 2, '26.000', '50.000', NULL, NULL, NULL, NULL),
(65, 41, '0.02', '0.08', 2, '26.000', '50.000', NULL, NULL, NULL, NULL),
(66, 41, '0.08', '1.00', 2, '26.000', '50.000', NULL, NULL, NULL, NULL),
(67, 41, '1.00', '12.00', 2, '26.000', '50.000', NULL, NULL, NULL, NULL),
(68, 41, '12.00', '60.00', 0, '26.000', '50.000', NULL, NULL, NULL, NULL),
(69, 41, '12.00', '60.00', 1, '26.000', '50.000', NULL, NULL, NULL, NULL),
(70, 41, '60.00', '999.00', 2, '26.000', '50.000', NULL, NULL, NULL, NULL),
(71, 42, '0.00', '0.02', 2, '86.000', '110.000', NULL, NULL, NULL, NULL),
(72, 42, '0.02', '0.08', 2, '86.000', '110.000', NULL, NULL, NULL, NULL),
(73, 42, '0.08', '1.00', 2, '86.000', '110.000', NULL, NULL, NULL, NULL),
(74, 42, '1.00', '12.00', 2, '86.000', '110.000', NULL, NULL, NULL, NULL),
(75, 42, '12.00', '60.00', 0, '86.000', '110.000', NULL, NULL, NULL, NULL),
(76, 42, '12.00', '60.00', 1, '86.000', '110.000', NULL, NULL, NULL, NULL),
(77, 42, '60.00', '999.00', 2, '86.000', '110.000', NULL, NULL, NULL, NULL),
(78, 43, '0.00', '0.02', 2, '26.000', '38.000', NULL, NULL, NULL, NULL),
(79, 43, '0.02', '0.08', 2, '26.000', '38.000', NULL, NULL, NULL, NULL),
(80, 43, '0.08', '1.00', 2, '26.000', '38.000', NULL, NULL, NULL, NULL),
(81, 43, '1.00', '12.00', 2, '26.000', '38.000', NULL, NULL, NULL, NULL),
(82, 43, '12.00', '60.00', 0, '26.000', '38.000', NULL, NULL, NULL, NULL),
(83, 43, '12.00', '60.00', 1, '26.000', '38.000', NULL, NULL, NULL, NULL),
(84, 43, '60.00', '999.00', 2, '26.000', '38.000', NULL, NULL, NULL, NULL),
(85, 44, '0.00', '0.02', 2, '31.000', '37.000', NULL, NULL, NULL, NULL),
(86, 44, '0.02', '0.08', 2, '31.000', '37.000', NULL, NULL, NULL, NULL),
(87, 44, '0.08', '1.00', 2, '31.000', '37.000', NULL, NULL, NULL, NULL),
(88, 44, '1.00', '12.00', 2, '31.000', '37.000', NULL, NULL, NULL, NULL),
(89, 44, '12.00', '60.00', 0, '31.000', '37.000', NULL, NULL, NULL, NULL),
(90, 44, '12.00', '60.00', 1, '31.000', '37.000', NULL, NULL, NULL, NULL),
(91, 44, '60.00', '999.00', 2, '31.000', '37.000', NULL, NULL, NULL, NULL),
(92, 45, '0.00', '0.02', 2, '50.000', '400.000', NULL, NULL, NULL, NULL),
(93, 45, '0.02', '0.08', 2, '50.000', '400.000', NULL, NULL, NULL, NULL),
(94, 45, '0.08', '1.00', 2, '50.000', '400.000', NULL, NULL, NULL, NULL),
(95, 45, '1.00', '12.00', 2, '50.000', '400.000', NULL, NULL, NULL, NULL),
(96, 45, '12.00', '60.00', 0, '50.000', '400.000', NULL, NULL, NULL, NULL),
(97, 45, '12.00', '60.00', 1, '50.000', '400.000', NULL, NULL, NULL, NULL),
(98, 45, '60.00', '999.00', 2, '50.000', '400.000', NULL, NULL, NULL, NULL),
(99, 46, '0.00', '0.02', 2, '37.000', '54.000', NULL, NULL, NULL, NULL),
(100, 46, '0.02', '0.08', 2, '37.000', '54.000', NULL, NULL, NULL, NULL),
(101, 46, '0.08', '1.00', 2, '37.000', '54.000', NULL, NULL, NULL, NULL),
(102, 46, '1.00', '12.00', 2, '37.000', '54.000', NULL, NULL, NULL, NULL),
(103, 46, '12.00', '60.00', 0, '37.000', '54.000', NULL, NULL, NULL, NULL),
(104, 46, '12.00', '60.00', 1, '37.000', '54.000', NULL, NULL, NULL, NULL),
(105, 46, '60.00', '999.00', 2, '37.000', '54.000', NULL, NULL, NULL, NULL),
(106, 47, '0.00', '0.02', 2, '11.000', '16.000', NULL, NULL, NULL, NULL),
(107, 47, '0.02', '0.08', 2, '11.000', '16.000', NULL, NULL, NULL, NULL),
(108, 47, '0.08', '1.00', 2, '11.000', '16.000', NULL, NULL, NULL, NULL),
(109, 47, '1.00', '12.00', 2, '11.000', '16.000', NULL, NULL, NULL, NULL),
(110, 47, '12.00', '60.00', 0, '11.000', '16.000', NULL, NULL, NULL, NULL),
(111, 47, '12.00', '60.00', 1, '11.000', '16.000', NULL, NULL, NULL, NULL),
(112, 47, '60.00', '999.00', 2, '11.000', '16.000', NULL, NULL, NULL, NULL),
(113, 48, '0.00', '0.02', 2, '9.000', '17.000', NULL, NULL, NULL, NULL),
(114, 48, '0.02', '0.08', 2, '9.000', '17.000', NULL, NULL, NULL, NULL),
(115, 48, '0.08', '1.00', 2, '9.000', '17.000', NULL, NULL, NULL, NULL),
(116, 48, '1.00', '12.00', 2, '9.000', '17.000', NULL, NULL, NULL, NULL),
(117, 48, '12.00', '60.00', 0, '9.000', '17.000', NULL, NULL, NULL, NULL),
(118, 48, '12.00', '60.00', 1, '9.000', '17.000', NULL, NULL, NULL, NULL),
(119, 48, '60.00', '999.00', 2, '9.000', '17.000', NULL, NULL, NULL, NULL),
(120, 49, '0.00', '0.02', 2, '9.000', '13.000', NULL, NULL, NULL, NULL),
(121, 49, '0.02', '0.08', 2, '9.000', '13.000', NULL, NULL, NULL, NULL),
(122, 49, '0.08', '1.00', 2, '9.000', '13.000', NULL, NULL, NULL, NULL),
(123, 49, '1.00', '12.00', 2, '9.000', '13.000', NULL, NULL, NULL, NULL),
(124, 49, '12.00', '60.00', 0, '9.000', '13.000', NULL, NULL, NULL, NULL),
(125, 49, '12.00', '60.00', 1, '9.000', '13.000', NULL, NULL, NULL, NULL),
(126, 49, '60.00', '999.00', 2, '9.000', '13.000', NULL, NULL, NULL, NULL),
(127, 50, '0.00', '0.02', 2, '13.000', '43.000', NULL, NULL, NULL, NULL),
(128, 50, '0.02', '0.08', 2, '13.000', '43.000', NULL, NULL, NULL, NULL),
(129, 50, '0.08', '1.00', 2, '13.000', '43.000', NULL, NULL, NULL, NULL),
(130, 50, '1.00', '12.00', 2, '13.000', '43.000', NULL, NULL, NULL, NULL),
(131, 50, '12.00', '60.00', 0, '13.000', '43.000', NULL, NULL, NULL, NULL),
(132, 50, '12.00', '60.00', 1, '13.000', '43.000', NULL, NULL, NULL, NULL),
(133, 50, '60.00', '999.00', 2, '13.000', '43.000', NULL, NULL, NULL, NULL),
(134, 51, '0.00', '0.02', 2, '0.170', '0.350', NULL, NULL, NULL, NULL),
(135, 51, '0.02', '0.08', 2, '0.170', '0.350', NULL, NULL, NULL, NULL),
(136, 51, '0.08', '1.00', 2, '0.170', '0.350', NULL, NULL, NULL, NULL),
(137, 51, '1.00', '12.00', 2, '0.170', '0.350', NULL, NULL, NULL, NULL),
(138, 51, '12.00', '60.00', 0, '0.170', '0.350', NULL, NULL, NULL, NULL),
(139, 51, '12.00', '60.00', 1, '0.170', '0.350', NULL, NULL, NULL, NULL),
(140, 51, '60.00', '999.00', 2, '0.170', '0.350', NULL, NULL, NULL, NULL),
(141, 52, '0.00', '0.02', 2, '1.500', '7.000', NULL, NULL, NULL, NULL),
(142, 52, '0.02', '0.08', 2, '1.500', '7.000', NULL, NULL, NULL, NULL),
(143, 52, '0.08', '1.00', 2, '1.500', '7.000', NULL, NULL, NULL, NULL),
(144, 52, '1.00', '12.00', 2, '1.500', '7.000', NULL, NULL, NULL, NULL),
(145, 52, '12.00', '60.00', 0, '1.500', '7.000', NULL, NULL, NULL, NULL),
(146, 52, '12.00', '60.00', 1, '1.500', '7.000', NULL, NULL, NULL, NULL),
(147, 52, '60.00', '999.00', 2, '1.500', '7.000', NULL, NULL, NULL, NULL),
(148, 53, '0.00', '0.02', 2, '1.000', '3.700', NULL, NULL, NULL, NULL),
(149, 53, '0.02', '0.08', 2, '1.000', '3.700', NULL, NULL, NULL, NULL),
(150, 53, '0.08', '1.00', 2, '1.000', '3.700', NULL, NULL, NULL, NULL),
(151, 53, '1.00', '12.00', 2, '1.000', '3.700', NULL, NULL, NULL, NULL),
(152, 53, '12.00', '60.00', 0, '1.000', '3.700', NULL, NULL, NULL, NULL),
(153, 53, '12.00', '60.00', 1, '1.000', '3.700', NULL, NULL, NULL, NULL),
(154, 53, '60.00', '999.00', 2, '1.000', '3.700', NULL, NULL, NULL, NULL),
(155, 54, '0.00', '0.02', 2, '0.000', '0.700', NULL, NULL, NULL, NULL),
(156, 54, '0.02', '0.08', 2, '0.000', '0.700', NULL, NULL, NULL, NULL),
(157, 54, '0.08', '1.00', 2, '0.000', '0.700', NULL, NULL, NULL, NULL),
(158, 54, '1.00', '12.00', 2, '0.000', '0.700', NULL, NULL, NULL, NULL),
(159, 54, '12.00', '60.00', 0, '0.000', '0.700', NULL, NULL, NULL, NULL),
(160, 54, '12.00', '60.00', 1, '0.000', '0.700', NULL, NULL, NULL, NULL),
(161, 54, '60.00', '999.00', 2, '0.000', '0.700', NULL, NULL, NULL, NULL),
(162, 55, '0.00', '0.02', 2, '0.000', '0.400', NULL, NULL, NULL, NULL),
(163, 55, '0.02', '0.08', 2, '0.000', '0.400', NULL, NULL, NULL, NULL),
(164, 55, '0.08', '1.00', 2, '0.000', '0.400', NULL, NULL, NULL, NULL),
(165, 55, '1.00', '12.00', 2, '0.000', '0.400', NULL, NULL, NULL, NULL),
(166, 55, '12.00', '60.00', 0, '0.000', '0.400', NULL, NULL, NULL, NULL),
(167, 55, '12.00', '60.00', 1, '0.000', '0.400', NULL, NULL, NULL, NULL),
(168, 55, '60.00', '999.00', 2, '0.000', '0.400', NULL, NULL, NULL, NULL),
(169, 56, '0.00', '0.02', 2, '0.000', '0.100', NULL, NULL, NULL, NULL),
(170, 56, '0.02', '0.08', 2, '0.000', '0.100', NULL, NULL, NULL, NULL),
(171, 56, '0.08', '1.00', 2, '0.000', '0.100', NULL, NULL, NULL, NULL),
(172, 56, '1.00', '12.00', 2, '0.000', '0.100', NULL, NULL, NULL, NULL),
(173, 56, '12.00', '60.00', 0, '0.000', '0.100', NULL, NULL, NULL, NULL),
(174, 56, '12.00', '60.00', 1, '0.000', '0.100', NULL, NULL, NULL, NULL),
(175, 56, '60.00', '999.00', 2, '0.000', '0.100', NULL, NULL, NULL, NULL),
(176, 57, '0.00', '0.02', 2, '37.000', '72.000', NULL, NULL, NULL, NULL),
(177, 57, '0.02', '0.08', 2, '37.000', '72.000', NULL, NULL, NULL, NULL),
(178, 57, '0.08', '1.00', 2, '37.000', '72.000', NULL, NULL, NULL, NULL),
(179, 57, '1.00', '12.00', 2, '37.000', '72.000', NULL, NULL, NULL, NULL),
(180, 57, '12.00', '60.00', 0, '37.000', '72.000', NULL, NULL, NULL, NULL),
(181, 57, '12.00', '60.00', 1, '37.000', '72.000', NULL, NULL, NULL, NULL),
(182, 57, '60.00', '999.00', 2, '37.000', '72.000', NULL, NULL, NULL, NULL),
(183, 58, '0.00', '0.02', 2, '20.000', '50.000', NULL, NULL, NULL, NULL),
(184, 58, '0.02', '0.08', 2, '20.000', '50.000', NULL, NULL, NULL, NULL),
(185, 58, '0.08', '1.00', 2, '20.000', '50.000', NULL, NULL, NULL, NULL),
(186, 58, '1.00', '12.00', 2, '20.000', '50.000', NULL, NULL, NULL, NULL),
(187, 58, '12.00', '60.00', 0, '20.000', '50.000', NULL, NULL, NULL, NULL),
(188, 58, '12.00', '60.00', 1, '20.000', '50.000', NULL, NULL, NULL, NULL),
(189, 58, '60.00', '999.00', 2, '20.000', '50.000', NULL, NULL, NULL, NULL),
(190, 59, '0.00', '0.02', 2, '0.000', '14.000', NULL, NULL, NULL, NULL),
(191, 59, '0.02', '0.08', 2, '0.000', '14.000', NULL, NULL, NULL, NULL),
(192, 59, '0.08', '1.00', 2, '0.000', '14.000', NULL, NULL, NULL, NULL),
(193, 59, '1.00', '12.00', 2, '0.000', '14.000', NULL, NULL, NULL, NULL),
(194, 59, '12.00', '60.00', 0, '0.000', '14.000', NULL, NULL, NULL, NULL),
(195, 59, '12.00', '60.00', 1, '0.000', '14.000', NULL, NULL, NULL, NULL),
(196, 59, '60.00', '999.00', 2, '0.000', '14.000', NULL, NULL, NULL, NULL),
(197, 60, '0.00', '0.02', 2, '0.000', '6.000', NULL, NULL, NULL, NULL),
(198, 60, '0.02', '0.08', 2, '0.000', '6.000', NULL, NULL, NULL, NULL),
(199, 60, '0.08', '1.00', 2, '0.000', '6.000', NULL, NULL, NULL, NULL),
(200, 60, '1.00', '12.00', 2, '0.000', '6.000', NULL, NULL, NULL, NULL),
(201, 60, '12.00', '60.00', 0, '0.000', '6.000', NULL, NULL, NULL, NULL),
(202, 60, '12.00', '60.00', 1, '0.000', '6.000', NULL, NULL, NULL, NULL),
(203, 60, '60.00', '999.00', 2, '0.000', '6.000', NULL, NULL, NULL, NULL),
(204, 61, '0.00', '0.02', 2, '0.000', '1.000', NULL, NULL, NULL, NULL),
(205, 61, '0.02', '0.08', 2, '0.000', '1.000', NULL, NULL, NULL, NULL),
(206, 61, '0.08', '1.00', 2, '0.000', '1.000', NULL, NULL, NULL, NULL),
(207, 61, '1.00', '12.00', 2, '0.000', '1.000', NULL, NULL, NULL, NULL),
(208, 61, '12.00', '60.00', 0, '0.000', '1.000', NULL, NULL, NULL, NULL),
(209, 61, '12.00', '60.00', 1, '0.000', '1.000', NULL, NULL, NULL, NULL),
(210, 61, '60.00', '999.00', 2, '0.000', '1.000', NULL, NULL, NULL, NULL),
(211, 62, NULL, NULL, NULL, NULL, NULL, 'Reactive', NULL, NULL, NULL),
(212, 62, NULL, NULL, NULL, NULL, NULL, 'Non Reactive', NULL, NULL, NULL),
(213, 84, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(214, 84, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(215, 91, NULL, NULL, NULL, NULL, NULL, 'Low', NULL, NULL, NULL),
(216, 91, NULL, NULL, NULL, NULL, NULL, 'High', NULL, NULL, NULL),
(217, 91, NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, NULL, NULL),
(218, 92, NULL, NULL, NULL, NULL, NULL, 'High', NULL, NULL, NULL),
(219, 92, NULL, NULL, NULL, NULL, NULL, 'Low', NULL, NULL, NULL),
(220, 92, NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, NULL, NULL),
(221, 93, NULL, NULL, NULL, NULL, NULL, 'High', NULL, NULL, NULL),
(222, 93, NULL, NULL, NULL, NULL, NULL, 'Low', NULL, NULL, NULL),
(223, 93, NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, NULL, NULL),
(224, 94, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(225, 94, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(226, 95, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(227, 95, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(228, 96, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(229, 96, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `measure_types`
--

CREATE TABLE IF NOT EXISTS `measure_types` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `measure_types_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `measure_types`
--

INSERT INTO `measure_types` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Numeric Range', NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(2, 'Alphanumeric Values', NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(3, 'Autocomplete', NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(4, 'Free Text', NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `metrics`
--

CREATE TABLE IF NOT EXISTS `metrics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `micro_patients_details`
--

CREATE TABLE IF NOT EXISTS `micro_patients_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) unsigned NOT NULL,
  `sub_county_residence` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_residence` int(10) unsigned DEFAULT NULL,
  `sub_county_workplace` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_workplace` int(10) unsigned DEFAULT NULL,
  `name_next_kin` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_next_kin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_next_kin` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_date` datetime DEFAULT NULL,
  `transfered` tinyint(4) DEFAULT NULL,
  `facility_transfered` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clinical_notes` text COLLATE utf8_unicode_ci NOT NULL,
  `days_on_antibiotic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requested_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinician_contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `micro_patients_details_district_residence_foreign` (`district_residence`),
  KEY `micro_patients_details_district_workplace_foreign` (`district_workplace`),
  KEY `micro_patients_details_patient_id_foreign` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_07_24_082711_CreatekBLIStables', 1),
('2014_09_02_114206_entrust_setup_tables', 1),
('2014_10_09_162222_externaldumptable', 1),
('2015_02_04_004704_add_index_to_parentlabno', 1),
('2015_02_11_112608_remove_unique_constraint_on_patient_number', 1),
('2015_02_17_104134_qc_tables', 1),
('2015_02_23_112018_create_microbiology_tables', 1),
('2015_02_27_084341_createInventoryTables', 1),
('2015_03_16_155558_create_surveillance', 1),
('2015_06_24_145526_update_test_types_table', 1),
('2015_06_24_154426_FreeTestsColumn', 1),
('2016_03_30_145749_lab_config_settings', 1),
('2016_04_12_093617_update_inventory_tables', 1),
('2016_07_26_095319_create_unhls_financial_years_table', 1),
('2016_07_26_095409_create_unhls_drugs_table', 1),
('2016_08_17_181955_create_rejection_reasons', 1),
('2016_08_31_135348_create_unhls_stockcard', 1),
('2016_08_31_135420_create_unhls_stockrequisition', 1),
('2016_09_28_091952_create_unhls_warehouse', 1),
('2016_09_28_095327_create_unhls_staff', 1),
('2016_10_03_220056_create_bbincidences_table', 1),
('2016_10_03_220511_create_bbactions_table', 1),
('2016_10_03_220622_create_bbcauses_table', 1),
('2016_10_03_220702_create_bbnatures_table', 1),
('2016_10_03_220852_create_bbincidences_action_table', 1),
('2016_10_03_220959_create_bbincidences_cause_table', 1),
('2016_10_03_221055_create_bbincidences_nature_table', 1),
('2016_10_13_170615_create_unhls_equipment_suppliers_table', 1),
('2016_10_19_115152_create_referral_reasons', 1),
('2017_01_16_103507_create_equipment_inventory_table', 1),
('2017_01_16_103533_create_equipment_maintenance_table', 1),
('2017_01_16_103546_create_equipment_breakdown_table', 1),
('2017_04_27_134821_create_wards_table', 1),
('2017_04_27_144035_update_visits_table', 1),
('2017_04_27_160407_create_therapy_table', 1),
('2017_05_25_131728_updateUNHLSBreakdown', 1),
('2017_06_19_094902_update_equipment_inventory_table', 1),
('2017_06_19_111831_update_equipment_breakdown_table', 1),
('2017_06_19_115028_update_unhls_stockcard_table', 1),
('2017_06_20_043838_alter_stockcard_table', 1),
('2017_06_30_183112_update_microbiology_functionalities', 1),
('2017_07_05_170430_create_reports_tables', 1),
('2017_07_27_160147_create_visit_status_table', 1),
('2017_07_27_160228_add_status_column_to_visit_table', 1),
('2017_07_28_113854_add_clinical_notes_column_to_table', 1),
('2017_07_28_120834_add_phone_contact_column_to_table', 1),
('2017_07_31_020011_create_uuids_table', 1),
('2017_08_02_192917_alter_specimen_id_nullable_unhls_tests', 1),
('2017_08_22_080201_create_test_name_mappings_table', 1),
('2017_10_10_094958_update_hiv_report_table', 1),
('2017_10_15_122554_adhoc_configs_table', 1),
('2017_11_07_160414_create_instrument_column_tables', 1),
('2017_11_15_121513_update_visit_table', 1),
('2018_01_12_152202_add_column_range_interpretion', 1),
('2018_03_06_194838_create_poc_tables', 1),
('2018_03_15_090759_alter_test_results_table', 1),
('2018_03_16_180358_create_poc_results', 1),
('2018_03_23_061054_alter_poc_results', 1),
('2018_05_14_172215_create_hubs', 1),
('2018_08_29_190957_add_unhls_equipment_breakdown_table', 1),
('2018_12_11_125050_add_unique_key_constraint_to_poc_tables', 1),
('2019_01_13_121925_add_targetTAT_units_to_test_types', 1),
('2019_02_24_121910_ward_type', 1),
('2019_02_24_122140_add_ward_type_column_ward_table', 1),
('2019_02_24_122237_add_visit_lab_number_column_unhls_visits_table', 1),
('2019_02_25_120647_create_clinicians_table', 1),
('2019_05_03_100733_add_therapy', 1),
('2019_06_01_104858_add_nationality_to_unhls_patients_table', 1),
('2019_06_01_131758_add_columns_to_facilities_table', 1),
('2019_06_07_071010_add_columns_to_unhls_visits_table', 1),
('2019_08_28_114927_create_micro_patients_details_table', 1),
('2019_08_30_073037_create_unhls_testpurposes_table', 1),
('2019_09_02_150236_create_patient_antibiotics_table', 1),
('2019_09_05_154424_add_column_to_unhls_patients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organisms`
--

CREATE TABLE IF NOT EXISTS `organisms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `organisms_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=112 ;

--
-- Dumping data for table `organisms`
--

INSERT INTO `organisms` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Pseudomonas aeruginosa', NULL, NULL, '2017-05-31 11:29:37', '2017-05-31 11:29:37'),
(2, 'Escherichia coli', NULL, NULL, '2017-05-31 11:29:38', '2017-05-31 11:29:38'),
(3, 'Enterobacteriacae', NULL, NULL, '2017-05-31 11:29:40', '2017-05-31 11:29:40'),
(5, 'Pseudomonas flourescens', NULL, NULL, '2017-05-31 11:29:43', '2017-05-31 11:29:43'),
(6, 'Pseudomonas spp', NULL, NULL, '2017-05-31 11:29:44', '2017-05-31 11:29:44'),
(12, 'Acinetobacter spp', NULL, NULL, '2017-05-31 11:29:47', '2017-05-31 11:29:47'),
(13, 'Acinetobacter baumannii', NULL, NULL, '2017-05-31 11:29:48', '2017-05-31 11:29:48'),
(16, 'Salmonella spp', NULL, NULL, '2017-05-31 11:29:50', '2017-05-31 11:29:50'),
(17, 'Salmonella typhi', NULL, NULL, '2017-05-31 11:29:51', '2017-05-31 11:29:51'),
(18, 'Salmonella paratyphi B', NULL, NULL, '2017-05-31 11:29:51', '2017-05-31 11:29:51'),
(19, 'Salmonella choleraesuis', NULL, NULL, '2017-05-31 11:29:52', '2017-05-31 11:29:52'),
(20, 'Vibrio cholerae', NULL, NULL, '2017-05-31 11:29:52', '2017-05-31 11:29:52'),
(21, 'Viridans streptococcus', NULL, NULL, '2017-05-31 11:29:52', '2017-05-31 11:29:52'),
(22, 'Staphylococcus aureas', NULL, '2017-06-25 13:34:14', '2017-05-31 11:29:53', '2017-06-25 13:34:14'),
(23, 'Staphylococcus aureus', NULL, NULL, '2017-05-31 11:29:54', '2017-05-31 11:29:54'),
(24, 'Staphylococcus epidermidis', NULL, NULL, '2017-05-31 11:29:55', '2017-05-31 11:29:55'),
(25, 'Staphylococcus spp', NULL, NULL, '2017-05-31 11:29:56', '2017-05-31 11:29:56'),
(26, 'Staphylococus aureus', NULL, '2017-06-25 13:35:55', '2017-05-31 11:29:57', '2017-06-25 13:35:55'),
(29, 'Staphylococcus horminis', NULL, NULL, '2017-05-31 11:30:00', '2017-05-31 11:30:00'),
(30, 'Staphylococcus pasteuri.', NULL, NULL, '2017-05-31 11:30:01', '2017-05-31 11:30:01'),
(31, 'Staphylococcus saprophyticus', NULL, NULL, '2017-05-31 11:30:02', '2017-05-31 11:30:02'),
(32, 'Enterobacter spp', NULL, NULL, '2017-05-31 11:30:03', '2017-05-31 11:30:03'),
(33, 'Enterobacter cloacae', NULL, NULL, '2017-05-31 11:30:04', '2017-05-31 11:30:04'),
(34, 'Enterococcus spp', NULL, NULL, '2017-05-31 11:30:05', '2017-05-31 11:30:05'),
(35, 'Enterococcus feacalis', NULL, NULL, '2017-05-31 11:30:06', '2017-05-31 11:30:06'),
(36, 'Streptococcus spp', NULL, NULL, '2017-05-31 11:30:07', '2017-05-31 11:30:07'),
(37, 'Burkholderia cepacia', NULL, NULL, '2017-05-31 11:30:07', '2017-05-31 11:30:07'),
(38, 'Burkholderia mallei', NULL, NULL, '2017-05-31 11:30:08', '2017-05-31 11:30:08'),
(39, 'Burkholderia pseudomallei', NULL, NULL, '2017-05-31 11:30:08', '2017-05-31 11:30:08'),
(40, 'Neisseria spp', NULL, NULL, '2017-05-31 11:30:09', '2017-05-31 11:30:09'),
(41, 'Neisseria gonorrhae', NULL, NULL, '2017-05-31 11:30:09', '2017-05-31 11:30:09'),
(42, 'Neisseria gonorrhoeae', NULL, NULL, '2017-05-31 11:30:09', '2017-05-31 11:30:09'),
(43, 'Neisseria meningitidis', NULL, NULL, '2017-05-31 11:30:10', '2017-05-31 11:30:10'),
(44, 'Haemophilus spp', NULL, NULL, '2017-05-31 11:30:10', '2017-05-31 11:30:10'),
(45, 'Haemophilus influenzae spp', NULL, NULL, '2017-05-31 11:30:11', '2017-05-31 11:30:11'),
(46, 'Haemophilus influenzae type B', NULL, NULL, '2017-05-31 11:30:12', '2017-05-31 11:30:12'),
(47, 'Haemophilus influenzae isolated', NULL, '2017-06-25 14:15:27', '2017-05-31 11:30:12', '2017-06-25 14:15:27'),
(48, 'Haemophilus influenzae nontypaeble', NULL, NULL, '2017-05-31 11:30:13', '2017-05-31 11:30:13'),
(52, 'Haemophilus influenza', NULL, NULL, '2017-05-31 11:30:16', '2017-05-31 11:30:16'),
(53, 'Haemophilus ducreyi', NULL, NULL, '2017-05-31 11:30:16', '2017-05-31 11:30:16'),
(54, 'Haemophilus aphrophilus', NULL, NULL, '2017-05-31 11:30:17', '2017-05-31 11:30:17'),
(55, 'Haemophilus aegyptius', NULL, NULL, '2017-05-31 11:30:17', '2017-05-31 11:30:17'),
(56, 'Haemophilus parainfluenzae', NULL, NULL, '2017-05-31 11:30:18', '2017-05-31 11:30:18'),
(61, 'Streptococcus pneumoniae', NULL, NULL, '2017-05-31 11:30:21', '2017-05-31 11:30:21'),
(67, 'Enterobacter aerogenes', NULL, NULL, '2017-05-31 11:30:27', '2017-05-31 11:30:27'),
(68, 'Edwardsiella tarda', NULL, NULL, '2017-05-31 11:30:28', '2017-05-31 11:30:28'),
(69, 'Ehrlichia chaffeensis', NULL, NULL, '2017-05-31 11:30:29', '2017-05-31 11:30:29'),
(70, 'Ehrlicia chaffeensis', NULL, '2017-06-25 13:28:41', '2017-05-31 11:30:30', '2017-06-25 13:28:41'),
(71, 'Eikenella corrodens', NULL, NULL, '2017-05-31 11:30:31', '2017-05-31 11:30:31'),
(72, 'Klebsiella pneumoniae', NULL, NULL, '2017-05-31 11:30:32', '2017-05-31 11:30:32'),
(74, 'Klebsiella oxytoca', NULL, NULL, '2017-05-31 11:30:35', '2017-05-31 11:30:35'),
(75, 'Kelbsiella spp', NULL, NULL, '2017-05-31 11:30:36', '2017-05-31 11:30:36'),
(76, 'Kingella kingae', NULL, NULL, '2017-05-31 11:30:38', '2017-05-31 11:30:38'),
(77, 'Proteus mirabilis', NULL, NULL, '2017-05-31 11:30:39', '2017-05-31 11:30:39'),
(79, 'Citrobacter freundi', NULL, '2017-06-25 13:27:19', '2017-05-31 11:30:41', '2017-06-25 13:27:19'),
(80, 'Citrobacter freundii', NULL, NULL, '2017-05-31 11:30:43', '2017-05-31 11:30:43'),
(81, 'Citrobacter spp', NULL, NULL, '2017-05-31 11:30:44', '2017-05-31 11:30:44'),
(83, 'Providencia spp', NULL, NULL, '2017-05-31 11:30:46', '2017-05-31 11:30:46'),
(84, 'Proteus valgaris', NULL, NULL, '2017-05-31 11:30:48', '2017-05-31 11:30:48'),
(87, 'Providentia rettgeri', NULL, NULL, '2017-05-31 11:30:51', '2017-05-31 11:30:51'),
(88, 'Providentia stuartii', NULL, NULL, '2017-05-31 11:30:52', '2017-05-31 11:30:52'),
(89, 'Salmonella nontyphi group B', NULL, NULL, '2017-05-31 11:30:53', '2017-05-31 11:30:53'),
(90, 'Stenotrophomonas maltophilia', NULL, NULL, '2017-05-31 11:30:53', '2017-05-31 11:30:53'),
(91, 'Morganella morganii', NULL, NULL, '2017-05-31 11:30:54', '2017-05-31 11:30:54'),
(95, 'Morganella spp', NULL, NULL, '2017-05-31 11:30:58', '2017-05-31 11:30:58'),
(96, 'Salmonella paratyphi A', NULL, NULL, '2017-05-31 11:30:59', '2017-05-31 11:30:59'),
(97, 'Enterrococcus faecium', NULL, NULL, '2017-05-31 11:31:00', '2017-05-31 11:31:00'),
(98, 'Shigella boydii', NULL, NULL, '2017-05-31 11:31:01', '2017-05-31 11:31:01'),
(99, 'Shigella dysenteriae', NULL, NULL, '2017-05-31 11:31:01', '2017-05-31 11:31:01'),
(100, 'Shigella flexneri', NULL, NULL, '2017-05-31 11:31:01', '2017-05-31 11:31:01'),
(101, 'Shigella sonnei', NULL, NULL, '2017-05-31 11:31:02', '2017-05-31 11:31:02'),
(102, 'Streptococcus pyogenes', NULL, NULL, '2017-05-31 11:31:02', '2017-05-31 11:31:02'),
(103, 'Streptococcus pyogenes (Group A Strep)', NULL, NULL, '2017-05-31 11:31:03', '2017-05-31 11:31:03'),
(107, 'Streptococcus salivarius', NULL, NULL, '2017-05-31 11:31:05', '2017-05-31 11:31:05'),
(108, 'Streptococcus sanguis', NULL, NULL, '2017-05-31 11:31:05', '2017-05-31 11:31:05'),
(109, 'Salmonella group B', NULL, NULL, '2017-05-31 11:31:06', '2017-05-31 11:31:06'),
(110, 'Moraxella spp', NULL, NULL, '2017-05-31 11:31:07', '2017-05-31 11:31:07'),
(111, 'Coagulase-negative Staphylococcus', NULL, NULL, '2017-05-31 11:31:07', '2017-05-31 11:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `patient_antibiotics`
--

CREATE TABLE IF NOT EXISTS `patient_antibiotics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) unsigned NOT NULL,
  `drug_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `patient_antibiotics_patient_id_foreign` (`patient_id`),
  KEY `patient_antibiotics_drug_id_foreign` (`drug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_incidents', 'Can Manage Biorisk & Biosecurity Incidents', '2019-09-06 09:25:21', '2019-09-06 09:25:21'),
(2, 'register_incident', 'Can Register BB Incidences', '2019-09-06 09:25:21', '2019-09-06 09:25:21'),
(3, 'summary_log', 'Can view BB summary log', '2019-09-06 09:25:21', '2019-09-06 09:25:21'),
(4, 'facility_report', 'Can create faility BB report', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(5, 'view_names', 'Can view patient names', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(6, 'manage_patients', 'Can add patients', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(7, 'receive_external_test', 'Can receive test requests', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(8, 'request_test', 'Can request new test', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(9, 'accept_test_specimen', 'Can accept test specimen', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(10, 'reject_test_specimen', 'Can reject test specimen', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(11, 'change_test_specimen', 'Can change test specimen', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(12, 'start_test', 'Can start tests', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(13, 'enter_test_results', 'Can enter tests results', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(14, 'edit_test_results', 'Can edit test results', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(15, 'verify_test_results', 'Can verify test results', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(16, 'send_results_to_external_system', 'Can send test results to external systems', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(17, 'refer_specimens', 'Can refer specimens', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(18, 'manage_users', 'Can manage users', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(19, 'manage_test_catalog', 'Can manage test catalog', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(20, 'manage_lab_configurations', 'Can manage lab configurations', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(21, 'view_reports', 'Can view reports', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(22, 'manage_inventory', 'Can manage inventory', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(23, 'request_topup', 'Can request top-up', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(24, 'manage_qc', 'Can manage Quality Control', '2019-09-06 09:25:22', '2019-09-06 09:25:22'),
(25, 'manage_appointments', 'Can manage appointments with Clinician', '2019-09-06 09:26:08', '2019-09-06 09:26:08'),
(26, 'make_labrequests', 'Can make lab requests(Only for Clinicians)', '2019-09-06 09:26:08', '2019-09-06 09:26:08'),
(27, 'manage_visits', 'Can manage visit content', '2019-09-06 09:26:08', '2019-09-06 09:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `poc_results`
--

CREATE TABLE IF NOT EXISTS `poc_results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) unsigned NOT NULL,
  `results` enum('Negative','Positive','Error') COLLATE utf8_unicode_ci NOT NULL,
  `test_date` date NOT NULL,
  `tested_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dispatched_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dispatched_date` date NOT NULL,
  `test_time` time NOT NULL,
  `equipment_used` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `error_code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `poc_results_patient_id_foreign` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `poc_tables`
--

CREATE TABLE IF NOT EXISTS `poc_tables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` float(8,2) NOT NULL,
  `exp_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provisional_diagnosis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caretaker_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_point` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infant_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breastfeeding_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_hiv_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_date` date NOT NULL,
  `pcr_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pmtct_antenatal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pmtct_delivery` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pmtct_postnatal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admission_date` date NOT NULL,
  `sample_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infant_pmtctarv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_pmtctarv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `other_entry_point` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pre_analytic_specimen_rejections`
--

CREATE TABLE IF NOT EXISTS `pre_analytic_specimen_rejections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `specimen_id` int(10) unsigned NOT NULL,
  `rejected_by` int(10) unsigned NOT NULL,
  `rejection_reason_id` int(10) unsigned DEFAULT NULL,
  `reject_explained_to` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_rejected` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pre_analytic_specimen_rejections_rejected_by_index` (`rejected_by`),
  KEY `pre_analytic_specimen_rejections_specimen_id_foreign` (`specimen_id`),
  KEY `pre_analytic_specimen_rejections_rejection_reason_id_foreign` (`rejection_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE IF NOT EXISTS `referrals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sample_obtainer` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `cadre_obtainer` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sample_date` date NOT NULL,
  `sample_time` timestamp NULL DEFAULT NULL,
  `time_dispatch` timestamp NULL DEFAULT NULL,
  `storage_condition` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `transport_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `referral_reason` int(10) unsigned NOT NULL,
  `priority_specimen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `facility_id` int(10) unsigned NOT NULL,
  `person` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contacts` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `referrals_user_id_foreign` (`user_id`),
  KEY `referrals_facility_id_foreign` (`facility_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `referral_reasons`
--

CREATE TABLE IF NOT EXISTS `referral_reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rejection_reasons`
--

CREATE TABLE IF NOT EXISTS `rejection_reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `rejection_reasons`
--

INSERT INTO `rejection_reasons` (`id`, `reason`) VALUES
(1, 'Inadequate sample volume'),
(2, 'Haemolysed sample'),
(3, 'Specimen without lab request form'),
(4, 'No test ordered on  lab request form of sample'),
(5, 'No sample label or identifier'),
(6, 'Wrong sample label'),
(7, 'Unclear sample label'),
(8, 'Sample in wrong container'),
(9, 'Damaged/broken/leaking sample container'),
(10, 'Too old sample'),
(11, 'Date of sample collection not specified'),
(12, 'Time of sample collection not specified'),
(13, 'Improper transport media'),
(14, 'Sample type unacceptable for required test'),
(15, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `report_diseases`
--

CREATE TABLE IF NOT EXISTS `report_diseases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_type_id` int(10) unsigned NOT NULL,
  `disease_id` int(10) unsigned NOT NULL,
  `result_interpretation_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_diseases_test_type_id_disease_id_unique` (`test_type_id`,`disease_id`),
  KEY `report_diseases_disease_id_foreign` (`disease_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `report_diseases`
--

INSERT INTO `report_diseases` (`id`, `test_type_id`, `disease_id`, `result_interpretation_id`) VALUES
(1, 2, 1, NULL),
(2, 7, 2, NULL),
(3, 18, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `quantity_remaining` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `test_category_id` int(10) unsigned NOT NULL,
  `quantity_ordered` int(11) NOT NULL,
  `tests_done` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `remarks` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `requests_test_category_id_foreign` (`test_category_id`),
  KEY `requests_item_id_foreign` (`item_id`),
  KEY `requests_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `result_interpretations`
--

CREATE TABLE IF NOT EXISTS `result_interpretations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `result_interpretations`
--

INSERT INTO `result_interpretations` (`id`, `name`) VALUES
(1, 'High'),
(2, 'Normal'),
(3, 'Low'),
(4, 'HGB<8'),
(5, 'HGB≥8'),
(6, 'Positive'),
(7, 'Negative');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', NULL, '2019-09-06 09:25:23', '2019-09-06 09:25:23'),
(2, 'Technologist', NULL, '2019-09-06 09:25:23', '2019-09-06 09:25:23'),
(3, 'Receptionist', NULL, '2019-09-06 09:25:23', '2019-09-06 09:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `specimens`
--

CREATE TABLE IF NOT EXISTS `specimens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `specimen_type_id` int(10) unsigned NOT NULL,
  `specimen_status_id` int(10) unsigned NOT NULL DEFAULT '2',
  `accepted_by` int(10) unsigned NOT NULL DEFAULT '0',
  `referral_id` int(10) unsigned DEFAULT NULL,
  `time_collected` timestamp NULL DEFAULT NULL,
  `time_accepted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `specimens_accepted_by_index` (`accepted_by`),
  KEY `specimens_specimen_type_id_foreign` (`specimen_type_id`),
  KEY `specimens_specimen_status_id_foreign` (`specimen_status_id`),
  KEY `specimens_referral_id_foreign` (`referral_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `specimens`
--

INSERT INTO `specimens` (`id`, `specimen_type_id`, `specimen_status_id`, `accepted_by`, `referral_id`, `time_collected`, `time_accepted`) VALUES
(1, 22, 2, 1, NULL, '2019-09-06 09:33:00', '2019-09-06 09:33:00'),
(2, 26, 2, 1, NULL, '2019-09-06 09:34:00', '2019-09-06 09:34:00'),
(3, 26, 2, 1, NULL, '2019-09-06 09:34:00', '2019-09-06 09:34:00'),
(4, 13, 2, 1, NULL, '2019-09-06 09:36:00', '2019-09-06 09:36:00'),
(5, 13, 2, 1, NULL, '2019-09-06 09:36:00', '2019-09-06 09:36:00'),
(6, 14, 2, 1, NULL, '2019-09-06 09:38:00', '2019-09-06 09:38:00'),
(7, 22, 2, 1, NULL, '2019-09-06 09:40:00', '2019-09-06 09:40:00'),
(8, 22, 2, 1, NULL, '2019-09-06 09:41:00', '2019-09-06 09:41:00'),
(9, 16, 2, 1, NULL, '2019-09-06 09:43:00', '2019-09-06 09:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `specimen_statuses`
--

CREATE TABLE IF NOT EXISTS `specimen_statuses` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specimen_statuses`
--

INSERT INTO `specimen_statuses` (`id`, `name`) VALUES
(1, 'specimen-not-collected'),
(2, 'specimen-accepted'),
(3, 'specimen-rejected');

-- --------------------------------------------------------

--
-- Table structure for table `specimen_types`
--

CREATE TABLE IF NOT EXISTS `specimen_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `specimen_types`
--

INSERT INTO `specimen_types` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ascitic Tap', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(2, 'Dried Blood Spot', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(3, 'Nasal Swab', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(4, 'Pleural Tap', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(5, 'Rectal Swab', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(6, 'Semen', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(7, 'Skin', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(8, 'Vomitus', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(9, 'Synovial Fluid', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(10, 'Urethral Smear', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(11, 'Vaginal Smear', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(12, 'Water', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(13, 'Stool', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(14, 'CSF', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(15, 'Wound swab', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(16, 'Pus swab', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(17, 'HVS', NULL, NULL, '2019-09-06 09:25:24', '2019-09-06 09:25:24'),
(18, 'Eye swab', NULL, NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(19, 'Ear swab', NULL, NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(20, 'Throat swab', NULL, NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(21, 'Pus Aspirate', NULL, NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(22, 'Blood', NULL, NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(23, 'BAL', NULL, NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(24, 'Sputum', NULL, NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(25, 'Uretheral swab', NULL, NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(26, 'Urine', NULL, NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `suppliers_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `testtype_measures`
--

CREATE TABLE IF NOT EXISTS `testtype_measures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_type_id` int(10) unsigned NOT NULL,
  `measure_id` int(10) unsigned NOT NULL,
  `ordering` tinyint(4) DEFAULT NULL,
  `nesting` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testtype_measures_test_type_id_measure_id_unique` (`test_type_id`,`measure_id`),
  KEY `testtype_measures_measure_id_foreign` (`measure_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=92 ;

--
-- Dumping data for table `testtype_measures`
--

INSERT INTO `testtype_measures` (`id`, `test_type_id`, `measure_id`, `ordering`, `nesting`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 4, NULL, NULL),
(5, 3, 5, NULL, NULL),
(6, 3, 6, NULL, NULL),
(7, 4, 7, NULL, NULL),
(8, 5, 8, NULL, NULL),
(9, 5, 9, NULL, NULL),
(10, 5, 10, NULL, NULL),
(11, 5, 11, NULL, NULL),
(12, 5, 12, NULL, NULL),
(13, 5, 13, NULL, NULL),
(14, 5, 14, NULL, NULL),
(15, 5, 15, NULL, NULL),
(16, 5, 16, NULL, NULL),
(17, 5, 17, NULL, NULL),
(18, 5, 18, NULL, NULL),
(19, 5, 19, NULL, NULL),
(20, 5, 20, NULL, NULL),
(21, 5, 21, NULL, NULL),
(22, 5, 22, NULL, NULL),
(23, 6, 23, NULL, NULL),
(24, 6, 24, NULL, NULL),
(25, 6, 25, NULL, NULL),
(26, 6, 26, NULL, NULL),
(27, 6, 27, NULL, NULL),
(28, 6, 28, NULL, NULL),
(29, 7, 29, NULL, NULL),
(30, 8, 30, NULL, NULL),
(31, 9, 31, NULL, NULL),
(32, 10, 32, NULL, NULL),
(33, 11, 33, NULL, NULL),
(34, 12, 34, NULL, NULL),
(35, 13, 35, NULL, NULL),
(36, 14, 36, NULL, NULL),
(37, 15, 37, NULL, NULL),
(38, 16, 38, NULL, NULL),
(39, 16, 39, NULL, NULL),
(40, 16, 40, NULL, NULL),
(41, 16, 41, NULL, NULL),
(42, 16, 42, NULL, NULL),
(43, 16, 43, NULL, NULL),
(44, 16, 44, NULL, NULL),
(45, 16, 45, NULL, NULL),
(46, 16, 46, NULL, NULL),
(47, 16, 47, NULL, NULL),
(48, 16, 48, NULL, NULL),
(49, 16, 49, NULL, NULL),
(50, 16, 50, NULL, NULL),
(51, 16, 51, NULL, NULL),
(52, 16, 52, NULL, NULL),
(53, 16, 53, NULL, NULL),
(54, 16, 54, NULL, NULL),
(55, 16, 55, NULL, NULL),
(56, 16, 56, NULL, NULL),
(57, 16, 57, NULL, NULL),
(58, 16, 58, NULL, NULL),
(59, 16, 59, NULL, NULL),
(60, 16, 60, NULL, NULL),
(61, 16, 61, NULL, NULL),
(62, 34, 69, NULL, NULL),
(63, 35, 70, NULL, NULL),
(64, 36, 71, NULL, NULL),
(65, 37, 72, NULL, NULL),
(66, 38, 73, NULL, NULL),
(67, 39, 74, NULL, NULL),
(68, 40, 75, NULL, NULL),
(69, 41, 76, NULL, NULL),
(70, 42, 77, NULL, NULL),
(71, 21, 78, NULL, NULL),
(72, 43, 79, NULL, NULL),
(73, 44, 80, NULL, NULL),
(74, 27, 62, NULL, NULL),
(75, 28, 63, NULL, NULL),
(76, 29, 64, NULL, NULL),
(77, 30, 65, NULL, NULL),
(78, 31, 66, NULL, NULL),
(79, 32, 67, NULL, NULL),
(80, 33, 68, NULL, NULL),
(81, 18, 82, NULL, NULL),
(82, 19, 83, NULL, NULL),
(83, 17, 81, NULL, NULL),
(84, 20, 84, NULL, NULL),
(85, 21, 85, NULL, NULL),
(86, 22, 86, NULL, NULL),
(87, 24, 87, NULL, NULL),
(88, 25, 88, NULL, NULL),
(89, 26, 89, NULL, NULL),
(90, 45, 97, NULL, NULL),
(91, 46, 98, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testtype_specimentypes`
--

CREATE TABLE IF NOT EXISTS `testtype_specimentypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_type_id` int(10) unsigned NOT NULL,
  `specimen_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testtype_specimentypes_test_type_id_specimen_type_id_unique` (`test_type_id`,`specimen_type_id`),
  KEY `testtype_specimentypes_specimen_type_id_foreign` (`specimen_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=92 ;

--
-- Dumping data for table `testtype_specimentypes`
--

INSERT INTO `testtype_specimentypes` (`id`, `test_type_id`, `specimen_type_id`) VALUES
(1, 1, 22),
(2, 2, 22),
(3, 3, 22),
(5, 4, 3),
(6, 4, 4),
(7, 4, 8),
(4, 4, 22),
(8, 6, 22),
(9, 7, 22),
(10, 8, 22),
(11, 9, 22),
(12, 10, 22),
(13, 11, 26),
(14, 12, 22),
(15, 13, 26),
(16, 14, 22),
(17, 15, 13),
(18, 16, 22),
(32, 17, 13),
(36, 17, 14),
(55, 17, 15),
(51, 17, 16),
(63, 17, 17),
(68, 17, 18),
(69, 17, 19),
(72, 17, 20),
(77, 17, 21),
(80, 17, 23),
(85, 17, 24),
(59, 17, 25),
(35, 17, 26),
(31, 18, 13),
(42, 18, 14),
(57, 18, 15),
(53, 18, 16),
(65, 18, 17),
(67, 18, 18),
(71, 18, 19),
(74, 18, 20),
(79, 18, 21),
(91, 18, 22),
(83, 18, 23),
(87, 18, 24),
(61, 18, 25),
(34, 18, 26),
(40, 19, 14),
(54, 19, 15),
(50, 19, 16),
(64, 19, 17),
(66, 19, 18),
(70, 19, 19),
(73, 19, 20),
(76, 19, 21),
(81, 19, 23),
(86, 19, 24),
(60, 19, 25),
(38, 20, 14),
(37, 21, 14),
(75, 21, 21),
(28, 21, 26),
(62, 22, 17),
(58, 22, 25),
(39, 24, 14),
(41, 25, 14),
(56, 25, 15),
(52, 25, 16),
(78, 25, 21),
(82, 25, 23),
(84, 25, 24),
(33, 26, 13),
(43, 27, 14),
(44, 28, 14),
(45, 29, 14),
(46, 30, 14),
(48, 31, 14),
(49, 32, 14),
(47, 33, 14),
(90, 33, 22),
(19, 34, 26),
(20, 35, 26),
(21, 36, 26),
(22, 37, 26),
(23, 38, 26),
(24, 39, 26),
(25, 40, 26),
(26, 41, 26),
(27, 42, 26),
(29, 43, 26),
(30, 44, 26),
(88, 45, 22),
(89, 46, 22);

-- --------------------------------------------------------

--
-- Table structure for table `test_categories`
--

CREATE TABLE IF NOT EXISTS `test_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `test_categories_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `test_categories`
--

INSERT INTO `test_categories` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'PARASITOLOGY', '', NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(2, 'MICROBIOLOGY', '', NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(3, 'HEMATOLOGY', '', NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(4, 'SEROLOGY', '', NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25'),
(5, 'BLOOD TRANSFUSION', '', NULL, '2019-09-06 09:25:25', '2019-09-06 09:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `test_name_mappings`
--

CREATE TABLE IF NOT EXISTS `test_name_mappings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_type_id` int(10) unsigned DEFAULT NULL,
  `standard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `system_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `test_name_mappings_system_name_unique` (`system_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `test_name_mappings`
--

INSERT INTO `test_name_mappings` (`id`, `test_type_id`, `standard_name`, `system_name`) VALUES
(1, NULL, 'CBC', 'cbc'),
(2, NULL, 'Hb', 'hb'),
(3, NULL, 'ESR', 'esr'),
(4, NULL, 'Bleeding time', 'bleeding_time'),
(5, NULL, 'Prothrombin Time', 'prothrombin_time'),
(6, NULL, 'Clotting Time', 'clotting_time'),
(7, NULL, 'ABO Grouping', 'abo_grouping'),
(8, NULL, 'Combs', 'combs'),
(9, NULL, 'Cross Matching', 'cross_matching'),
(10, NULL, 'Malaria Microscopy', 'malaria_microscopy'),
(11, NULL, 'Malaria RDTs', 'malaria_rdts'),
(12, NULL, 'Stool Microscopy', 'stool_microscopy'),
(13, NULL, 'VDRL/RPR', 'vdrl_rpr'),
(14, NULL, 'TPHA', 'tpha'),
(15, NULL, 'Shigella Dysentery', 'shigella_dysentery'),
(16, NULL, 'Hepatitis B', 'hepatitis_b'),
(17, NULL, 'Brucella', 'brucella'),
(18, NULL, 'Pregnancy Test', 'pregnancy_test'),
(19, NULL, 'Rheumatoid Factor', 'rheumatoid_factor'),
(20, NULL, 'CD4 tests', 'cd4_tests'),
(21, NULL, 'Viral Load Tests', 'viral_load_tests'),
(22, 25, 'ZN for AFBs', 'zn_for_afbs'),
(23, 18, 'Culture & Sensitivity', 'culture_sensitivity'),
(24, NULL, 'Gram Stain', 'gram_stain'),
(25, NULL, 'India Ink', 'india_ink'),
(26, NULL, 'Wet Preps', 'wet_preps'),
(27, NULL, 'Urine Microscopy', 'urine_microscopy'),
(28, NULL, 'Renal Profile', 'renal_profile'),
(29, NULL, 'Liver Profile', 'liver_profile'),
(30, NULL, 'Lipid/Cardiac Profile', 'lipid_cardiac_profile'),
(31, NULL, 'Alkaline Phosphates', 'alkaline_phosphates'),
(32, NULL, 'Amylase', 'amylase'),
(33, NULL, 'Glucose', 'glucose'),
(34, NULL, 'Uric Acid', 'uric_acid'),
(35, NULL, 'Lactate', 'lactate'),
(36, NULL, 'HIV', 'hiv');

-- --------------------------------------------------------

--
-- Table structure for table `test_phases`
--

CREATE TABLE IF NOT EXISTS `test_phases` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_phases`
--

INSERT INTO `test_phases` (`id`, `name`) VALUES
(1, 'Pre-Analytical'),
(2, 'Analytical'),
(3, 'Post-Analytical');

-- --------------------------------------------------------

--
-- Table structure for table `test_statuses`
--

CREATE TABLE IF NOT EXISTS `test_statuses` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `test_phase_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test_statuses_test_phase_id_foreign` (`test_phase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_statuses`
--

INSERT INTO `test_statuses` (`id`, `name`, `test_phase_id`) VALUES
(1, 'not-received', 1),
(2, 'pending', 1),
(3, 'started', 2),
(4, 'completed', 3),
(5, 'verified', 3),
(6, 'specimen-rejected-at-analysis', 3);

-- --------------------------------------------------------

--
-- Table structure for table `test_types`
--

CREATE TABLE IF NOT EXISTS `test_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test_category_id` int(10) unsigned NOT NULL,
  `targetTAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetTAT_unit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderable_test` int(11) DEFAULT NULL,
  `prevalence_threshold` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accredited` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `test_types_test_category_id_foreign` (`test_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Dumping data for table `test_types`
--

INSERT INTO `test_types` (`id`, `name`, `description`, `test_category_id`, `targetTAT`, `targetTAT_unit`, `orderable_test`, `prevalence_threshold`, `accredited`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'HIV', NULL, 4, NULL, NULL, 1, NULL, NULL, NULL, '2019-09-06 09:25:28', '2019-09-06 09:25:28'),
(2, 'BS for mps', NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '2019-09-06 09:25:28', '2019-09-06 09:25:28'),
(3, 'GXM', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:28', '2019-09-06 09:25:28'),
(4, 'HB', NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '2019-09-06 09:25:28', '2019-09-06 09:25:28'),
(5, 'Urinalysis', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:28', '2019-09-06 09:25:28'),
(6, 'WBC', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:28', '2019-09-06 09:25:28'),
(7, 'Salmonella Antigen Test', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30'),
(8, 'Direct COOMBS Test', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30'),
(9, 'DU Test', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30'),
(10, 'Sickling Test', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30'),
(11, 'Borrelia', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30'),
(12, 'VDRL', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30'),
(13, 'Pregnancy Test', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30'),
(14, 'Brucella', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30'),
(15, 'H. Pylori', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:30', '2019-09-06 09:25:30'),
(16, 'CBC', NULL, 3, NULL, NULL, 1, NULL, NULL, NULL, '2019-09-06 09:25:33', '2019-09-06 09:25:33'),
(17, 'Appearance', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(18, 'Culture and Sensitivity', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(19, 'Gram Staining', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(20, 'India Ink Staining', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(21, 'Protein', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(22, 'Wet preparation (saline preparation)', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(23, 'Wet Saline Iodine Prep', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(24, 'White Blood Cell Count', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(25, 'ZN Staining', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(26, 'Modified ZN', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(27, 'Crag', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(28, 'Differential', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(29, 'Total Cell Count', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(30, 'Lymphocytes', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(31, 'Quantitative Culture', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:40', '2019-09-06 09:25:40'),
(32, 'RBC Count', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(33, 'TPHA', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(34, 'HCG', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(35, 'Bilirubin', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(36, 'Blood', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(37, 'Glucose', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(38, 'Ketones', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(39, 'Leukocytes', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(40, 'Microscopy', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(41, 'Nitrite', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(42, 'pH', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(43, 'Specific Gravity', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(44, 'Urobilinogen', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:41', '2019-09-06 09:25:41'),
(45, 'RPR', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:46', '2019-09-06 09:25:46'),
(46, 'Serum Crag', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-06 09:25:46', '2019-09-06 09:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `therapy`
--

CREATE TABLE IF NOT EXISTS `therapy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `visit_id` int(10) unsigned NOT NULL,
  `patient_id` int(10) unsigned NOT NULL,
  `previous_therapy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_therapy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinical_notes` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinician` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinician_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `therapy`
--

INSERT INTO `therapy` (`id`, `visit_id`, `patient_id`, `previous_therapy`, `current_therapy`, `clinical_notes`, `clinician`, `contact`, `clinician_id`) VALUES
(1, 1, 1, '', '', NULL, NULL, NULL, NULL),
(2, 2, 2, '', '', NULL, NULL, NULL, NULL),
(3, 3, 2, '', '', NULL, NULL, NULL, NULL),
(4, 4, 3, '', '', NULL, NULL, NULL, NULL),
(5, 5, 4, '', '', NULL, NULL, NULL, NULL),
(6, 6, 5, '', '', NULL, NULL, NULL, NULL),
(7, 7, 3, '', '', NULL, NULL, NULL, NULL),
(8, 8, 6, '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `tokens_email_index` (`email`),
  KEY `tokens_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbactions`
--

CREATE TABLE IF NOT EXISTS `unhls_bbactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actionname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `unhls_bbactions`
--

INSERT INTO `unhls_bbactions` (`id`, `actionname`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Reported to administration for further action', '2019-09-06 09:25:17', '2019-09-06 09:25:17', NULL),
(2, 'Referred to mental department', '2019-09-06 09:25:17', '2019-09-06 09:25:17', NULL),
(3, 'Gave first aid (e.g. arrested bleeding)', '2019-09-06 09:25:17', '2019-09-06 09:25:17', NULL),
(4, 'Referred to clinician for further management', '2019-09-06 09:25:17', '2019-09-06 09:25:17', NULL),
(5, 'Conducted risk assessment', '2019-09-06 09:25:17', '2019-09-06 09:25:17', NULL),
(6, 'Intervened to interrupt/arrest progress of incident (e.g. Used neutralizing agent, stopping a fight)', '2019-09-06 09:25:17', '2019-09-06 09:25:17', NULL),
(7, 'Disposed off broken container to designated waste bin/sharps', '2019-09-06 09:25:17', '2019-09-06 09:25:17', NULL),
(8, 'Patient sample taken & referred to testing lab Isolated suspected patient', '2019-09-06 09:25:17', '2019-09-06 09:25:17', NULL),
(9, 'Reported to or engaged national level BRM for intervention', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(10, 'Victim counseled', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(11, 'Contacted Police', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(12, 'Used spill kit', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(13, 'Administered PEP', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(14, 'Referred to disciplinary committee', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(15, 'Contained the spillage', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(16, 'Disinfected the place', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(17, 'Switched off the Electricity Mains', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(18, 'Washed punctured area', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(19, 'Others', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbcauses`
--

CREATE TABLE IF NOT EXISTS `unhls_bbcauses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `causename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `unhls_bbcauses`
--

INSERT INTO `unhls_bbcauses` (`id`, `causename`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Defective Equipment', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(2, 'Hazardous Chemicals', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(3, 'Unsafe Procedure', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(4, 'Psychological causes (e.g. emotional condition, depression, mental confusion)', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(5, 'Unsafe storage of laboratory chemicals', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(6, 'Lack of Skill or Knowledge', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(7, 'Lack of Personal Protective Equipment', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(8, 'Unsafe Working Environment', '2019-09-06 09:25:18', '2019-09-06 09:25:18', NULL),
(9, 'Lack of Adequate Physical Security', '2019-09-06 09:25:19', '2019-09-06 09:25:19', NULL),
(10, 'Unsafe location of laboratory equipment', '2019-09-06 09:25:19', '2019-09-06 09:25:19', NULL),
(11, 'Other', '2019-09-06 09:25:19', '2019-09-06 09:25:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbincidences`
--

CREATE TABLE IF NOT EXISTS `unhls_bbincidences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` int(10) unsigned NOT NULL,
  `serial_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `occurrence_date` date NOT NULL,
  `occurrence_time` time NOT NULL,
  `personnel_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_othername` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_dob` date NOT NULL,
  `personnel_age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nok_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nok_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nok_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lab_section` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `occurrence` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ulin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equip_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `task` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `officer_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `officer_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `officer_cadre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `officer_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstaid` text COLLATE utf8_unicode_ci NOT NULL,
  `intervention` text COLLATE utf8_unicode_ci NOT NULL,
  `intervention_date` date NOT NULL,
  `intervention_time` time NOT NULL,
  `intervention_followup` text COLLATE utf8_unicode_ci NOT NULL,
  `mo_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cause` text COLLATE utf8_unicode_ci NOT NULL,
  `corrective_action` text COLLATE utf8_unicode_ci NOT NULL,
  `referral_status` text COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `analysis_date` date NOT NULL,
  `analysis_time` time NOT NULL,
  `bo_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bo_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bo_designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bo_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `findings` text COLLATE utf8_unicode_ci NOT NULL,
  `improvement_plan` text COLLATE utf8_unicode_ci NOT NULL,
  `response_date` date NOT NULL,
  `response_time` time NOT NULL,
  `brm_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brm_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brm_designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brm_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdby` int(10) unsigned DEFAULT NULL,
  `updatedby` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `unhls_bbincidences_facility_id_foreign` (`facility_id`),
  KEY `unhls_bbincidences_createdby_foreign` (`createdby`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbincidences_action`
--

CREATE TABLE IF NOT EXISTS `unhls_bbincidences_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bbincidence_id` int(10) unsigned NOT NULL,
  `action_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `unhls_bbincidences_action_bbincidence_id_foreign` (`bbincidence_id`),
  KEY `unhls_bbincidences_action_action_id_foreign` (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbincidences_cause`
--

CREATE TABLE IF NOT EXISTS `unhls_bbincidences_cause` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bbincidence_id` int(10) unsigned NOT NULL,
  `cause_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `unhls_bbincidences_cause_bbincidence_id_foreign` (`bbincidence_id`),
  KEY `unhls_bbincidences_cause_cause_id_foreign` (`cause_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbincidences_nature`
--

CREATE TABLE IF NOT EXISTS `unhls_bbincidences_nature` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bbincidence_id` int(10) unsigned NOT NULL,
  `nature_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `unhls_bbincidences_nature_bbincidence_id_foreign` (`bbincidence_id`),
  KEY `unhls_bbincidences_nature_nature_id_foreign` (`nature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbnatures`
--

CREATE TABLE IF NOT EXISTS `unhls_bbnatures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `unhls_bbnatures`
--

INSERT INTO `unhls_bbnatures` (`id`, `name`, `class`, `priority`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Assault/Fight among staff', 'Physical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(2, 'Fainting', 'Physical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(3, 'Roof leakages', 'Physical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(4, 'Machine cuts/bruises', 'Mechanical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(5, 'Electric shock/burn', 'Mechanical', 'Major', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(6, 'Death within lab', 'Ergonometric and Medical', 'Major', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(7, 'Slip or fall', 'Physical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(8, 'Unnecessary destruction of lab material', 'Physical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(9, 'Theft of laboratory consumables', 'Physical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(10, 'Breakage of sample container', 'Physical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(11, 'Prick/cut by unused sharps', 'Physical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(12, 'Injury caused by laboratory objects', 'Physical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(13, 'Chemical burn', 'Chemical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(14, 'Theft of chemical', 'Chemical', 'Minor', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(15, 'Chemical spillage', 'Chemical', 'Major', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(16, 'Theft of equipment', 'Physical', 'Major', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(17, 'Attack on the Lab', 'Physical', 'Major', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(18, 'Collapsing building', 'Physical', 'Major', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(19, 'Bike rider accident', 'Physical', 'Major', NULL, '2019-09-06 09:25:19', '2019-09-06 09:25:19'),
(20, 'Fire', 'Physical', 'Major', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20'),
(21, 'Needle prick or cuts by used sharps', 'Biological', 'Minor', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20'),
(22, 'Sample spillage', 'Biological', 'Minor', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20'),
(23, 'Theft of samples', 'Biological', 'Major', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20'),
(24, 'Contact with VHF suspect', 'Biological', 'Major', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20'),
(25, 'Contact with radiological materials', 'Radiological', 'Major', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20'),
(26, 'Theft of radiological materials', 'Radiological', 'Major', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20'),
(27, 'Poor disposal of radiological materials', 'Radiological', 'Major', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20'),
(28, 'Poor vision from inadequate light', 'Ergonometric and Medical', 'Minor', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20'),
(29, 'Back pain from posture effects', 'Ergonometric and Medical', 'Minor', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20'),
(30, 'Other occupational hazard', 'Ergonometric and Medical', 'Minor', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20'),
(31, 'Other', 'Other', 'Other', NULL, '2019-09-06 09:25:20', '2019-09-06 09:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_districts`
--

CREATE TABLE IF NOT EXISTS `unhls_districts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=118 ;

--
-- Dumping data for table `unhls_districts`
--

INSERT INTO `unhls_districts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'WAKISO', '2019-09-06 09:25:10', '2019-09-06 09:25:10'),
(2, 'Buikwe', '2019-09-06 09:25:10', '2019-09-06 09:25:10'),
(3, 'Bukomansimbi', '2019-09-06 09:25:10', '2019-09-06 09:25:10'),
(4, 'Butambala', '2019-09-06 09:25:10', '2019-09-06 09:25:10'),
(5, 'Buvuma', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(6, 'Gomba', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(7, 'Kalangala', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(8, 'Kalungu', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(9, 'Kayunga', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(10, 'Kiboga', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(11, 'Kyankwanzi', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(12, 'Luweero', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(13, 'Lwengo', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(14, 'Lyantonde', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(15, 'Masaka', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(16, 'Mityana', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(17, 'Mpigi', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(18, 'Mubende', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(19, 'Mukono', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(20, 'Nakaseke', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(21, 'Nakasongola', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(22, 'Rakai', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(23, 'Ssembabule', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(24, 'Wakiso', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(25, 'Amuria', '2019-09-06 09:25:11', '2019-09-06 09:25:11'),
(26, 'Budaka', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(27, 'Bududa', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(28, 'Bugiri', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(29, 'Bukedea', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(30, 'Bukwa', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(31, 'Bulambuli', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(32, 'Busia', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(33, 'Butaleja', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(34, 'Buyende', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(35, 'Iganga', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(36, 'Jinja', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(37, 'Kaberamaido', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(38, 'Kaliro', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(39, 'Kamuli', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(40, 'Kapchorwa', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(41, 'Katakwi', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(42, 'Kibuku', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(43, 'Kumi', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(44, 'Kween', '2019-09-06 09:25:12', '2019-09-06 09:25:12'),
(45, 'Luuka', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(46, 'Manafwa', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(47, 'Mayuge', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(48, 'Mbale', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(49, 'Namayingo', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(50, 'Namutumba', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(51, 'Ngora', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(52, 'Pallisa', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(53, 'Serere', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(54, 'Sironko', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(55, 'Soroti', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(56, 'Tororo', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(57, 'Abim', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(58, 'Adjumani', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(59, 'Agago', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(60, 'Alebtong', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(61, 'Amolatar', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(62, 'Amudat', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(63, 'Amuru', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(64, 'Apac', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(65, 'Arua', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(66, 'Dokolo', '2019-09-06 09:25:13', '2019-09-06 09:25:13'),
(67, 'Gulu', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(68, 'Kaabong', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(69, 'Kitgum', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(70, 'Koboko', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(71, 'Kole', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(72, 'Kotido', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(73, 'Lamwo', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(74, 'Lira', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(75, 'Maracha', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(76, 'Moroto', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(77, 'Moyo', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(78, 'Nakapiripirit', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(79, 'Napak', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(80, 'Nebbi', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(81, 'Nwoya', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(82, 'Otuke', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(83, 'Oyam', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(84, 'Pader', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(85, 'Yumbe', '2019-09-06 09:25:14', '2019-09-06 09:25:14'),
(86, 'Zombo', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(87, 'Buhweju', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(88, 'Buliisa', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(89, 'Bundibugyo', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(90, 'Bushenyi', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(91, 'Hoima', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(92, 'Ibanda', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(93, 'Isingiro', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(94, 'Kabale', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(95, 'Kabarole', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(96, 'Kamwenge', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(97, 'Kanungu', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(98, 'Kasese', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(99, 'Kibaale', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(100, 'Kiruhura', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(101, 'Kiryandongo', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(102, 'Kisoro', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(103, 'Kyegegwa', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(104, 'Kyenjojo', '2019-09-06 09:25:15', '2019-09-06 09:25:15'),
(105, 'Masindi', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(106, 'Mbarara', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(107, 'Mitooma', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(108, 'Ntoroko', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(109, 'Ntungamo', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(110, 'Rubirizi', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(111, 'Rukungiri', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(112, 'Sheema', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(113, 'Omoro', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(114, 'Kagadi', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(115, 'Kakumiro', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(116, 'Rubanda', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(117, 'Bukwo', '2019-09-06 09:25:16', '2019-09-06 09:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_drugs`
--

CREATE TABLE IF NOT EXISTS `unhls_drugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formulation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `strength` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pack_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit_of_issue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `max_stock_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `min_stock_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_equipment_breakdown`
--

CREATE TABLE IF NOT EXISTS `unhls_equipment_breakdown` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `district_id` int(10) unsigned NOT NULL,
  `facility_id` int(10) unsigned NOT NULL,
  `year_id` int(10) unsigned NOT NULL,
  `equipment_id` int(10) unsigned NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `action_taken` text COLLATE utf8_unicode_ci NOT NULL,
  `hsd_request` text COLLATE utf8_unicode_ci NOT NULL,
  `in_charge_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `report_date` datetime DEFAULT NULL,
  `restored_by` int(11) DEFAULT NULL,
  `restore_date` datetime DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `breakdown_type` int(11) NOT NULL,
  `reported_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breakdown_date` datetime DEFAULT NULL,
  `facility_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facility_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equipment_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equipment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `problem` text COLLATE utf8_unicode_ci NOT NULL,
  `equipment_failure` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reporting_officer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reporting_officer_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reporting_officer_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intervention_authorit	y` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conclusion` text COLLATE utf8_unicode_ci NOT NULL,
  `verified_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `verification_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unhls_equipment_breakdown_district_id_foreign` (`district_id`),
  KEY `unhls_equipment_breakdown_facility_id_foreign` (`facility_id`),
  KEY `unhls_equipment_breakdown_year_id_foreign` (`year_id`),
  KEY `unhls_equipment_breakdown_equipment_id_foreign` (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_equipment_inventory`
--

CREATE TABLE IF NOT EXISTS `unhls_equipment_inventory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `district_id` int(10) unsigned NOT NULL,
  `facility_id` int(10) unsigned NOT NULL,
  `year_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` int(11) NOT NULL,
  `procurement_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `verification_date` datetime NOT NULL,
  `installation_date` datetime NOT NULL,
  `spare_parts` tinyint(1) NOT NULL,
  `warranty` int(11) NOT NULL,
  `life_span` int(11) NOT NULL,
  `service_frequency` tinyint(1) NOT NULL,
  `service_contract` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `supplier_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unhls_equipment_inventory_district_id_foreign` (`district_id`),
  KEY `unhls_equipment_inventory_facility_id_foreign` (`facility_id`),
  KEY `unhls_equipment_inventory_year_id_foreign` (`year_id`),
  KEY `unhls_equipment_inventory_supplier_id_foreign` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_equipment_maintenance`
--

CREATE TABLE IF NOT EXISTS `unhls_equipment_maintenance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `district_id` int(10) unsigned NOT NULL,
  `facility_id` int(10) unsigned NOT NULL,
  `year_id` int(10) unsigned NOT NULL,
  `equipment_id` int(10) unsigned NOT NULL,
  `last_service_date` datetime NOT NULL,
  `next_service_date` datetime NOT NULL,
  `serviced_by_name` text COLLATE utf8_unicode_ci NOT NULL,
  `serviced_by_contact` text COLLATE utf8_unicode_ci NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `unhls_equipment_maintenance_district_id_foreign` (`district_id`),
  KEY `unhls_equipment_maintenance_facility_id_foreign` (`facility_id`),
  KEY `unhls_equipment_maintenance_year_id_foreign` (`year_id`),
  KEY `unhls_equipment_maintenance_equipment_id_foreign` (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_equipment_suppliers`
--

CREATE TABLE IF NOT EXISTS `unhls_equipment_suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_facilities`
--

CREATE TABLE IF NOT EXISTS `unhls_facilities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) unsigned NOT NULL,
  `level_id` int(10) unsigned NOT NULL,
  `ownership_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `unhls_facilities_level_id_foreign` (`level_id`),
  KEY `unhls_facilities_district_id_foreign` (`district_id`),
  KEY `unhls_facilities_ownership_id_foreign` (`ownership_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `unhls_facilities`
--

INSERT INTO `unhls_facilities` (`id`, `code`, `name`, `district_id`, `level_id`, `ownership_id`, `created_at`, `updated_at`) VALUES
(1, 'ENTB01', 'ENTEBBE GENERAL HOSPITAL LABORATORY', 1, 2, 1, '2019-09-06 09:25:17', '2019-09-06 09:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_facility_level`
--

CREATE TABLE IF NOT EXISTS `unhls_facility_level` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `unhls_facility_level`
--

INSERT INTO `unhls_facility_level` (`id`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Public NRH', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(2, 'Public RRH', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(3, 'Public GH', '2019-09-06 09:25:17', '2019-09-06 09:25:17'),
(4, 'Public HCIV', '2019-09-06 09:25:17', '2019-09-06 09:25:17'),
(5, 'Public HCIII', '2019-09-06 09:25:17', '2019-09-06 09:25:17'),
(6, 'Hospital', '2019-09-06 09:25:17', '2019-09-06 09:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_facility_ownership`
--

CREATE TABLE IF NOT EXISTS `unhls_facility_ownership` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `unhls_facility_ownership`
--

INSERT INTO `unhls_facility_ownership` (`id`, `owner`, `created_at`, `updated_at`) VALUES
(1, 'Public', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(2, 'PFP', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(3, 'PNFP', '2019-09-06 09:25:16', '2019-09-06 09:25:16'),
(4, 'Other', '2019-09-06 09:25:16', '2019-09-06 09:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_financial_years`
--

CREATE TABLE IF NOT EXISTS `unhls_financial_years` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_patients`
--

CREATE TABLE IF NOT EXISTS `unhls_patients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ulin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `nationality` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `village_residence` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `village_workplace` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_patient_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_micro` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `unhls_patients_external_patient_number_index` (`external_patient_number`),
  KEY `unhls_patients_created_by_index` (`created_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `unhls_patients`
--

INSERT INTO `unhls_patients` (`id`, `patient_number`, `ulin`, `nin`, `name`, `dob`, `gender`, `nationality`, `email`, `address`, `village_residence`, `village_workplace`, `phone_number`, `occupation`, `external_patient_number`, `created_by`, `deleted_at`, `created_at`, `updated_at`, `is_micro`) VALUES
(1, '', 'ENTB01/1909/1/MH', '', 'Mutebi Henry', '2009-09-08', 0, 'National', '', '', '', '', '', '', NULL, 1, NULL, '2019-09-06 09:30:54', '2019-09-06 09:30:54', 0),
(2, '', 'ENTB01/1909/2/KA', '', 'Kakooza Adam', '2019-07-07', 0, 'National', '', '', '', '', '', '', NULL, 1, NULL, '2019-09-06 09:34:17', '2019-09-06 09:34:17', 0),
(3, '', 'ENTB01/1909/3/KA', '', 'KIIZA ANET', '2019-08-25', 1, 'National', '', '', '', '', '', '', NULL, 1, NULL, '2019-09-06 09:36:14', '2019-09-06 09:36:14', 0),
(4, '', 'ENTB01/1909/4/MN', '', 'Moreen Naka', '2004-09-09', 1, 'National', '', '', '', '', '', '', NULL, 1, NULL, '2019-09-06 09:38:22', '2019-09-06 09:38:22', 0),
(5, '', 'ENTB01/1909/5/MD', '', 'Muyinda Daniel', '1988-09-13', 0, 'National', '', '', '', '', '', '', NULL, 1, NULL, '2019-09-06 09:40:51', '2019-09-06 09:40:51', 0),
(6, '', 'ENTB01/1909/6/KJ', '', 'KIBIRIGE JOSEPH', '1989-09-13', 0, 'National', '', '', '', '', '', '', NULL, 1, NULL, '2019-09-06 09:43:29', '2019-09-06 09:43:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `unhls_rejection_reasons`
--

CREATE TABLE IF NOT EXISTS `unhls_rejection_reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_staff`
--

CREATE TABLE IF NOT EXISTS `unhls_staff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` int(10) unsigned NOT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `unhls_staff_facility_id_foreign` (`facility_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_stockcard`
--

CREATE TABLE IF NOT EXISTS `unhls_stockcard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `district_id` int(10) unsigned NOT NULL,
  `facility_id` int(10) unsigned NOT NULL,
  `year_id` int(10) unsigned NOT NULL,
  `commodity_id` int(10) unsigned NOT NULL,
  `to_from` int(11) NOT NULL,
  `to_from_type` int(11) NOT NULL,
  `voucher_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issue_date` datetime NOT NULL,
  `expiry_date` datetime NOT NULL,
  `initials` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `transaction_date` datetime DEFAULT NULL,
  `quantity_in` int(11) DEFAULT NULL,
  `quantity_out` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unhls_stockcard_district_id_foreign` (`district_id`),
  KEY `unhls_stockcard_facility_id_foreign` (`facility_id`),
  KEY `unhls_stockcard_year_id_foreign` (`year_id`),
  KEY `unhls_stockcard_commodity_id_foreign` (`commodity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_stockrequisition`
--

CREATE TABLE IF NOT EXISTS `unhls_stockrequisition` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `district_id` int(10) unsigned NOT NULL,
  `facility_id` int(10) unsigned NOT NULL,
  `year_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `issued_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `voucher_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity_required` int(11) NOT NULL,
  `quantity_issued` int(11) NOT NULL,
  `issue_date` datetime NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `unhls_stockrequisition_district_id_foreign` (`district_id`),
  KEY `unhls_stockrequisition_facility_id_foreign` (`facility_id`),
  KEY `unhls_stockrequisition_year_id_foreign` (`year_id`),
  KEY `unhls_stockrequisition_item_id_foreign` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_testpurposes`
--

CREATE TABLE IF NOT EXISTS `unhls_testpurposes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_tests`
--

CREATE TABLE IF NOT EXISTS `unhls_tests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `visit_id` bigint(20) unsigned NOT NULL,
  `test_type_id` int(10) unsigned NOT NULL,
  `specimen_id` int(10) unsigned DEFAULT NULL,
  `interpretation` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `test_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL,
  `tested_by` int(10) unsigned NOT NULL DEFAULT '0',
  `verified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `requested_by` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `purpose` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_started` timestamp NULL DEFAULT NULL,
  `time_completed` timestamp NULL DEFAULT NULL,
  `time_verified` timestamp NULL DEFAULT NULL,
  `time_sent` timestamp NULL DEFAULT NULL,
  `external_id` int(11) DEFAULT NULL,
  `instrument` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unhls_tests_created_by_index` (`created_by`),
  KEY `unhls_tests_tested_by_index` (`tested_by`),
  KEY `unhls_tests_verified_by_index` (`verified_by`),
  KEY `unhls_tests_visit_id_foreign` (`visit_id`),
  KEY `unhls_tests_test_type_id_foreign` (`test_type_id`),
  KEY `unhls_tests_specimen_id_foreign` (`specimen_id`),
  KEY `unhls_tests_test_status_id_foreign` (`test_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `unhls_tests`
--

INSERT INTO `unhls_tests` (`id`, `visit_id`, `test_type_id`, `specimen_id`, `interpretation`, `test_status_id`, `created_by`, `tested_by`, `verified_by`, `requested_by`, `purpose`, `time_created`, `time_started`, `time_completed`, `time_verified`, `time_sent`, `external_id`, `instrument`) VALUES
(1, 1, 2, 1, '', 5, 1, 1, 1, '1', '', '2019-09-06 09:33:43', '2019-09-06 09:46:49', '2019-09-06 10:03:26', '2019-09-06 10:04:31', NULL, NULL, NULL),
(2, 2, 13, 2, '', 5, 1, 1, 1, '2', '', '2019-09-06 09:35:03', '2019-09-06 09:46:48', '2019-09-06 10:03:00', '2019-09-06 10:04:14', NULL, NULL, NULL),
(3, 3, 13, 3, '', 5, 1, 1, 1, '2', '', '2019-09-06 09:35:03', '2019-09-06 09:46:48', '2019-09-06 10:03:11', '2019-09-06 10:04:24', NULL, NULL, NULL),
(4, 4, 18, 4, 'Final Results', 5, 1, 1, 1, '1', '', '2019-09-06 09:37:09', '2019-09-06 09:46:43', '2019-09-06 10:00:15', '2019-09-06 10:00:21', NULL, NULL, NULL),
(5, 4, 26, 4, '', 5, 1, 1, 1, '1', '', '2019-09-06 09:37:09', '2019-09-06 09:46:44', '2019-09-06 10:01:00', '2019-09-06 10:01:21', NULL, NULL, NULL),
(6, 4, 15, 5, '', 5, 1, 1, 1, '1', '', '2019-09-06 09:37:09', '2019-09-06 09:46:47', '2019-09-06 10:01:12', '2019-09-06 10:01:34', NULL, NULL, NULL),
(7, 5, 17, 6, '', 5, 1, 1, 1, '2', '', '2019-09-06 09:40:05', '2019-09-06 09:46:41', '2019-09-06 09:57:55', '2019-09-06 09:58:03', NULL, NULL, NULL),
(8, 5, 27, 6, '', 5, 1, 1, 1, '2', '', '2019-09-06 09:40:05', '2019-09-06 09:46:42', '2019-09-06 09:58:30', '2019-09-06 10:00:30', NULL, NULL, NULL),
(9, 6, 16, 7, '', 5, 1, 1, 1, '2', '', '2019-09-06 09:41:20', '2019-09-06 09:46:41', '2019-09-06 09:57:10', '2019-09-06 09:57:26', NULL, NULL, NULL),
(10, 7, 16, 8, 'Final results', 5, 1, 1, 1, '1', '', '2019-09-06 09:42:17', '2019-09-06 09:46:40', '2019-09-06 09:54:05', '2019-09-06 09:54:15', NULL, NULL, NULL),
(11, 8, 19, 9, '', 5, 1, 1, 1, '1', '', '2019-09-06 09:45:46', '2019-09-06 09:46:38', '2019-09-06 09:47:54', '2019-09-06 09:50:27', NULL, NULL, NULL),
(12, 8, 25, 9, '', 5, 1, 1, 1, '1', '', '2019-09-06 09:45:46', '2019-09-06 09:46:39', '2019-09-06 09:48:10', '2019-09-06 09:50:18', NULL, NULL, NULL),
(13, 8, 18, 9, 'Final Results', 5, 1, 1, 1, '1', '', '2019-09-06 09:45:46', '2019-09-06 09:46:39', '2019-09-06 09:49:58', '2019-09-06 09:50:03', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unhls_test_results`
--

CREATE TABLE IF NOT EXISTS `unhls_test_results` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `test_id` int(10) unsigned NOT NULL,
  `measure_id` int(10) unsigned NOT NULL,
  `result` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sample_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unhls_test_results_test_id_measure_id_unique` (`test_id`,`measure_id`),
  KEY `unhls_test_results_measure_id_foreign` (`measure_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=60 ;

--
-- Dumping data for table `unhls_test_results`
--

INSERT INTO `unhls_test_results` (`id`, `test_id`, `measure_id`, `result`, `time_entered`, `sample_id`) VALUES
(1, 11, 83, '', '2019-09-06 09:47:54', NULL),
(2, 12, 88, 'No AFBs seen', '2019-09-06 09:48:10', NULL),
(3, 13, 82, NULL, '2019-09-06 09:49:58', NULL),
(4, 10, 38, '14', '2019-09-06 09:54:05', NULL),
(5, 10, 39, '3', '2019-09-06 09:54:05', NULL),
(6, 10, 40, '9', '2019-09-06 09:54:05', NULL),
(7, 10, 41, '32', '2019-09-06 09:54:05', NULL),
(8, 10, 42, '90', '2019-09-06 09:54:05', NULL),
(9, 10, 43, '25', '2019-09-06 09:54:05', NULL),
(10, 10, 44, '25', '2019-09-06 09:54:06', NULL),
(11, 10, 45, '90', '2019-09-06 09:54:06', NULL),
(12, 10, 46, '50', '2019-09-06 09:54:06', NULL),
(13, 10, 47, '12', '2019-09-06 09:54:06', NULL),
(14, 10, 48, '19', '2019-09-06 09:54:06', NULL),
(15, 10, 49, '14', '2019-09-06 09:54:06', NULL),
(16, 10, 50, '15', '2019-09-06 09:54:06', NULL),
(17, 10, 51, '0.2', '2019-09-06 09:54:06', NULL),
(18, 10, 52, '1.8', '2019-09-06 09:54:06', NULL),
(19, 10, 53, '2', '2019-09-06 09:54:06', NULL),
(20, 10, 54, '0.4', '2019-09-06 09:54:06', NULL),
(21, 10, 55, '0.2', '2019-09-06 09:54:06', NULL),
(22, 10, 56, '0.1', '2019-09-06 09:54:07', NULL),
(23, 10, 57, '38', '2019-09-06 09:54:07', NULL),
(24, 10, 58, '36', '2019-09-06 09:54:07', NULL),
(25, 10, 59, '0.15', '2019-09-06 09:54:07', NULL),
(26, 10, 60, '5', '2019-09-06 09:54:07', NULL),
(27, 10, 61, '0.1', '2019-09-06 09:54:07', NULL),
(28, 9, 38, '4', '2019-09-06 09:57:10', NULL),
(29, 9, 39, '4', '2019-09-06 09:57:10', NULL),
(30, 9, 40, '15', '2019-09-06 09:57:10', NULL),
(31, 9, 41, '36', '2019-09-06 09:57:10', NULL),
(32, 9, 42, '90', '2019-09-06 09:57:11', NULL),
(33, 9, 43, '30', '2019-09-06 09:57:11', NULL),
(34, 9, 44, '35', '2019-09-06 09:57:11', NULL),
(35, 9, 45, '200', '2019-09-06 09:57:11', NULL),
(36, 9, 46, '45', '2019-09-06 09:57:11', NULL),
(37, 9, 47, '43', '2019-09-06 09:57:11', NULL),
(38, 9, 48, '15', '2019-09-06 09:57:11', NULL),
(39, 9, 49, '14', '2019-09-06 09:57:11', NULL),
(40, 9, 50, '42', '2019-09-06 09:57:11', NULL),
(41, 9, 51, '0.2', '2019-09-06 09:57:11', NULL),
(42, 9, 52, '5', '2019-09-06 09:57:12', NULL),
(43, 9, 53, '4', '2019-09-06 09:57:12', NULL),
(44, 9, 54, '5', '2019-09-06 09:57:12', NULL),
(45, 9, 55, '0.2', '2019-09-06 09:57:12', NULL),
(46, 9, 56, '0.2', '2019-09-06 09:57:12', NULL),
(47, 9, 57, '60', '2019-09-06 09:57:12', NULL),
(48, 9, 58, '30', '2019-09-06 09:57:12', NULL),
(49, 9, 59, '1.2', '2019-09-06 09:57:12', NULL),
(50, 9, 60, '5', '2019-09-06 09:57:12', NULL),
(51, 9, 61, '0.1', '2019-09-06 09:57:12', NULL),
(52, 7, 81, 'Blood stained', '2019-09-06 09:57:55', NULL),
(53, 8, 62, 'Non Reactive', '2019-09-06 09:58:30', NULL),
(54, 4, 82, NULL, '2019-09-06 10:00:15', NULL),
(55, 5, 89, 'No organism seen', '2019-09-06 10:01:00', NULL),
(56, 6, 37, 'Positive', '2019-09-06 10:01:12', NULL),
(57, 2, 35, 'Negative', '2019-09-06 10:03:00', NULL),
(58, 3, 35, 'Positive', '2019-09-06 10:03:11', NULL),
(59, 1, 4, 'No mps seen', '2019-09-06 10:03:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unhls_visits`
--

CREATE TABLE IF NOT EXISTS `unhls_visits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) unsigned NOT NULL,
  `visit_type` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Out-patient',
  `visit_number` int(10) unsigned DEFAULT NULL,
  `visit_lab_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facility_id` int(10) unsigned DEFAULT NULL,
  `facility_lab_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ward_id` int(11) DEFAULT NULL,
  `bed_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visit_status_id` int(11) DEFAULT NULL,
  `hospitalized` int(10) unsigned DEFAULT NULL,
  `on_antibiotics` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unhls_visits_visit_number_index` (`visit_number`),
  KEY `unhls_visits_patient_id_foreign` (`patient_id`),
  KEY `unhls_visits_facility_id_foreign` (`facility_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `unhls_visits`
--

INSERT INTO `unhls_visits` (`id`, `patient_id`, `visit_type`, `visit_number`, `visit_lab_number`, `facility_id`, `facility_lab_number`, `created_at`, `updated_at`, `ward_id`, `bed_no`, `visit_status_id`, `hospitalized`, `on_antibiotics`) VALUES
(1, 1, 'Out-patient', NULL, NULL, NULL, NULL, '2019-09-06 09:33:43', '2019-09-06 09:33:43', NULL, NULL, NULL, NULL, NULL),
(2, 2, 'In-patient', NULL, NULL, NULL, NULL, '2019-09-06 09:35:02', '2019-09-06 09:35:02', 1, '12', NULL, NULL, NULL),
(3, 2, 'In-patient', NULL, NULL, NULL, NULL, '2019-09-06 09:35:02', '2019-09-06 09:35:02', 1, '12', NULL, NULL, NULL),
(4, 3, 'Out-patient', NULL, NULL, NULL, NULL, '2019-09-06 09:37:09', '2019-09-06 09:37:09', NULL, NULL, NULL, NULL, NULL),
(5, 4, 'In-patient', NULL, NULL, NULL, NULL, '2019-09-06 09:40:05', '2019-09-06 09:40:05', 2, '25', NULL, NULL, NULL),
(6, 5, 'Out-patient', NULL, NULL, NULL, NULL, '2019-09-06 09:41:20', '2019-09-06 09:41:20', NULL, NULL, NULL, NULL, NULL),
(7, 3, 'Out-patient', NULL, NULL, NULL, NULL, '2019-09-06 09:42:17', '2019-09-06 09:42:17', NULL, NULL, NULL, NULL, NULL),
(8, 6, 'In-patient', NULL, NULL, NULL, NULL, '2019-09-06 09:45:46', '2019-09-06 09:45:46', 2, '5', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unhls_warehouse`
--

CREATE TABLE IF NOT EXISTS `unhls_warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facility_id` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `phone_contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_facility_id_foreign` (`facility_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `gender`, `designation`, `image`, `remember_token`, `facility_id`, `deleted_at`, `created_at`, `updated_at`, `phone_contact`) VALUES
(1, 'administrator', '$2y$10$Td3dyRPnUtUil1qlbLHC/.gtXzn/sHxRF3hTz3Z2Mm1gW2p0rzWkW', '', 'A-LIS Admin', 0, 'Systems Administrator', NULL, NULL, 1, NULL, '2019-09-06 09:25:17', '2019-09-06 09:25:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uuids`
--

CREATE TABLE IF NOT EXISTS `uuids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `counter` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `uuids`
--

INSERT INTO `uuids` (`id`, `counter`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `visit_statuses`
--

CREATE TABLE IF NOT EXISTS `visit_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `visit_statuses`
--

INSERT INTO `visit_statuses` (`id`, `name`) VALUES
(1, 'appointment-made'),
(2, 'test-request-made'),
(3, 'specimen_received'),
(4, 'tests-completed');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE IF NOT EXISTS `wards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ward_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `name`, `description`, `ward_type_id`) VALUES
(1, '2B ward', '', NULL),
(2, 'ANC ward', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ward_type`
--

CREATE TABLE IF NOT EXISTS `ward_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zone_diameters`
--

CREATE TABLE IF NOT EXISTS `zone_diameters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `drug_id` int(10) unsigned NOT NULL,
  `organism_id` int(10) unsigned NOT NULL,
  `resistant_max` decimal(4,1) DEFAULT NULL,
  `intermediate_min` decimal(4,1) DEFAULT NULL,
  `intermediate_max` decimal(4,1) DEFAULT NULL,
  `sensitive_min` decimal(4,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zone_diameters_drug_id_foreign` (`drug_id`),
  KEY `zone_diameters_organism_id_foreign` (`organism_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1314 ;

--
-- Dumping data for table `zone_diameters`
--

INSERT INTO `zone_diameters` (`id`, `drug_id`, `organism_id`, `resistant_max`, `intermediate_min`, `intermediate_max`, `sensitive_min`) VALUES
(1, 1, 1, '14.0', '15.0', '16.0', '17.0'),
(2, 2, 2, '13.0', '14.0', '16.0', '17.0'),
(3, 3, 2, '13.0', '14.0', '17.0', '18.0'),
(4, 4, 2, '22.0', '23.0', '25.0', '26.0'),
(5, 5, 2, '17.0', '18.0', '20.0', '21.0'),
(6, 6, 2, '19.0', '20.0', '22.0', '23.0'),
(7, 7, 2, '22.0', '23.0', '25.0', '26.0'),
(8, 8, 2, '14.0', '15.0', '17.0', '18.0'),
(9, 9, 2, '14.0', '15.0', '22.0', '23.0'),
(10, 10, 2, '12.0', '13.0', '17.0', '18.0'),
(11, 11, 2, '15.0', '16.0', '20.0', '21.0'),
(12, 12, 2, '10.0', '11.0', '15.0', '16.0'),
(13, 13, 2, '12.0', '13.0', '14.0', '15.0'),
(14, 14, 2, '19.0', '20.0', '22.0', '23.0'),
(15, 15, 2, '19.0', '20.0', '22.0', '23.0'),
(16, 16, 2, '13.0', '14.0', '18.0', '19.0'),
(17, 17, 2, '17.0', '18.0', '20.0', '21.0'),
(18, 18, 2, '17.0', '18.0', '20.0', '21.0'),
(19, 19, 2, '13.0', '14.0', '16.0', '17.0'),
(20, 20, 2, '10.0', '11.0', '15.0', '16.0'),
(21, 2, 3, '13.0', '14.0', '16.0', '17.0'),
(22, 8, 3, '14.0', '15.0', '17.0', '18.0'),
(23, 9, 3, '14.0', '15.0', '22.0', '23.0'),
(24, 21, 3, '13.0', '14.0', '17.0', '18.0'),
(25, 13, 3, '12.0', '13.0', '14.0', '15.0'),
(26, 12, 3, '10.0', '11.0', '15.0', '16.0'),
(27, 10, 3, '12.0', '13.0', '17.0', '18.0'),
(28, 11, 3, '15.0', '16.0', '20.0', '21.0'),
(29, 6, 3, '19.0', '20.0', '22.0', '23.0'),
(30, 7, 3, '22.0', '23.0', '25.0', '26.0'),
(31, 5, 3, '17.0', '18.0', '20.0', '21.0'),
(32, 22, 3, NULL, NULL, NULL, '25.0'),
(33, 18, 3, '17.0', '18.0', '20.0', '21.0'),
(34, 17, 3, '17.0', '18.0', '20.0', '21.0'),
(35, 14, 3, '19.0', '20.0', '22.0', '23.0'),
(36, 16, 3, '13.0', '14.0', '18.0', '19.0'),
(37, 19, 3, '14.0', '15.0', '16.0', '17.0'),
(38, 18, 1, '14.0', '15.0', '20.0', '21.0'),
(39, 17, 1, '14.0', '15.0', '20.0', '21.0'),
(40, 5, 1, '14.0', '15.0', '17.0', '18.0'),
(41, 22, 1, '14.0', '15.0', '17.0', '18.0'),
(42, 13, 1, '12.0', '13.0', '14.0', '15.0'),
(43, 11, 1, '15.0', '16.0', '20.0', '21.0'),
(44, 14, 1, '13.0', '14.0', '15.0', '16.0'),
(45, 15, 1, '13.0', '14.0', '15.0', '16.0'),
(46, 23, 1, '10.0', NULL, NULL, '12.0'),
(57, 1, 5, '14.0', '15.0', '16.0', '17.0'),
(58, 22, 5, '14.0', '15.0', '17.0', '18.0'),
(59, 5, 5, '14.0', '15.0', '17.0', '18.0'),
(60, 11, 5, '15.0', '16.0', '20.0', '21.0'),
(61, 23, 5, '10.0', NULL, NULL, '11.0'),
(62, 13, 5, '12.0', '13.0', '14.0', '15.0'),
(63, 14, 5, '13.0', '14.0', '15.0', '16.0'),
(64, 15, 5, '13.0', '14.0', '15.0', '16.0'),
(65, 17, 5, '14.0', '15.0', '20.0', '21.0'),
(66, 18, 5, '14.0', '15.0', '20.0', '21.0'),
(67, 1, 6, '14.0', '15.0', '16.0', '17.0'),
(68, 22, 6, '14.0', '15.0', '17.0', '18.0'),
(69, 5, 6, '14.0', '15.0', '17.0', '18.0'),
(70, 11, 6, '15.0', '16.0', '20.0', '21.0'),
(71, 23, 6, '10.0', NULL, NULL, '11.0'),
(72, 13, 6, '12.0', '13.0', '14.0', '15.0'),
(73, 14, 6, '13.0', '14.0', '15.0', '16.0'),
(74, 15, 6, '13.0', '14.0', '15.0', '16.0'),
(75, 17, 6, '14.0', '15.0', '20.0', '21.0'),
(76, 18, 6, '14.0', '15.0', '20.0', '21.0'),
(127, 17, 12, '17.0', '18.0', '20.0', '21.0'),
(128, 20, 12, '10.0', '11.0', '15.0', '16.0'),
(129, 15, 12, '14.0', '15.0', '17.0', '18.0'),
(130, 1, 12, '14.0', '15.0', '16.0', '17.0'),
(131, 22, 12, '14.0', '15.0', '17.0', '18.0'),
(132, 5, 12, '14.0', '15.0', '17.0', '18.0'),
(133, 6, 12, '13.0', '14.0', '20.0', '21.0'),
(134, 11, 12, '15.0', '16.0', '20.0', '21.0'),
(135, 13, 12, '12.0', '13.0', '14.0', '15.0'),
(136, 24, 12, '11.0', '12.0', '14.0', '15.0'),
(137, 14, 12, '18.0', '19.0', '21.0', '22.0'),
(138, 18, 12, '17.0', '18.0', '20.0', '21.0'),
(139, 17, 13, '17.0', '18.0', '20.0', '21.0'),
(140, 18, 13, '17.0', '18.0', '20.0', '21.0'),
(141, 1, 13, '14.0', '15.0', '16.0', '17.0'),
(142, 14, 13, '18.0', '19.0', '21.0', '22.0'),
(143, 13, 13, '12.0', '13.0', '14.0', '15.0'),
(144, 11, 13, '15.0', '16.0', '20.0', '21.0'),
(145, 5, 13, '14.0', '15.0', '17.0', '18.0'),
(146, 6, 13, '13.0', '14.0', '20.0', '21.0'),
(147, 22, 13, '14.0', '15.0', '17.0', '18.0'),
(148, 24, 13, '11.0', '12.0', '14.0', '15.0'),
(149, 15, 13, '14.0', '15.0', '17.0', '18.0'),
(150, 20, 13, '10.0', '11.0', '15.0', '16.0'),
(175, 11, 16, '20.0', '21.0', '30.0', '31.0'),
(176, 2, 16, '13.0', '14.0', '16.0', '17.0'),
(177, 16, 16, '13.0', '14.0', '18.0', '19.0'),
(178, 12, 16, '10.0', '11.0', '15.0', '16.0'),
(179, 10, 16, '12.0', '13.0', '17.0', '18.0'),
(180, 6, 16, '19.0', '20.0', '22.0', '23.0'),
(181, 2, 17, '13.0', '14.0', '16.0', '17.0'),
(182, 11, 17, '20.0', '21.0', '30.0', '31.0'),
(183, 16, 17, '13.0', '14.0', '18.0', '19.0'),
(184, 12, 17, '10.0', '11.0', '15.0', '16.0'),
(185, 10, 17, '12.0', '13.0', '17.0', '18.0'),
(186, 6, 17, '19.0', '20.0', '22.0', '23.0'),
(187, 2, 18, '13.0', '14.0', '16.0', '17.0'),
(188, 6, 18, '19.0', '20.0', '22.0', '23.0'),
(189, 11, 18, '20.0', '21.0', '30.0', '31.0'),
(190, 16, 18, '13.0', '14.0', '18.0', '19.0'),
(191, 10, 18, '12.0', '13.0', '17.0', '18.0'),
(192, 12, 18, '10.0', '11.0', '15.0', '16.0'),
(193, 6, 19, '19.0', '20.0', '22.0', '23.0'),
(194, 2, 19, '13.0', '14.0', '16.0', '17.0'),
(195, 11, 19, '20.0', '21.0', '30.0', '31.0'),
(196, 10, 19, '12.0', '13.0', '17.0', '18.0'),
(197, 16, 19, '13.0', '14.0', '18.0', '19.0'),
(198, 12, 19, '10.0', '11.0', '15.0', '16.0'),
(199, 10, 20, '12.0', '13.0', '17.0', '18.0'),
(200, 24, 20, '14.0', '15.0', '18.0', '19.0'),
(201, 20, 20, '10.0', '11.0', '15.0', '16.0'),
(202, 2, 20, '13.0', '14.0', '16.0', '17.0'),
(203, 6, 21, '24.0', '25.0', '26.0', '27.0'),
(204, 25, 21, '15.0', '16.0', '20.0', '21.0'),
(205, 26, 21, '15.0', '16.0', '18.0', '19.0'),
(206, 10, 21, '17.0', '18.0', '20.0', '21.0'),
(207, 27, 21, NULL, NULL, NULL, '17.0'),
(208, 28, 21, NULL, NULL, NULL, '21.0'),
(209, 24, 21, '18.0', '19.0', '22.0', '23.0'),
(223, 1, 23, '14.0', '15.0', '16.0', '17.0'),
(224, 11, 23, '15.0', '16.0', '20.0', '21.0'),
(225, 10, 23, '12.0', '13.0', '17.0', '18.0'),
(226, 25, 23, '13.0', '14.0', '22.0', '23.0'),
(227, 26, 23, '14.0', '15.0', '20.0', '21.0'),
(228, 13, 23, '12.0', '13.0', '14.0', '15.0'),
(229, 19, 23, '14.0', '15.0', '16.0', '17.0'),
(230, 28, 23, '16.0', NULL, NULL, '21.0'),
(231, 31, 23, '16.0', '17.0', '19.0', '20.0'),
(232, 24, 23, '14.0', '15.0', '18.0', '19.0'),
(233, 20, 23, '10.0', '11.0', '15.0', '16.0'),
(234, 27, 23, NULL, NULL, NULL, NULL),
(235, 30, 23, '21.0', NULL, NULL, '22.0'),
(236, 29, 23, '28.0', NULL, NULL, '29.0'),
(238, 1, 24, '14.0', '15.0', '16.0', '17.0'),
(239, 27, 24, NULL, NULL, NULL, NULL),
(240, 20, 24, '10.0', '11.0', '15.0', '16.0'),
(241, 31, 24, '16.0', '17.0', '19.0', '20.0'),
(242, 24, 24, '14.0', '15.0', '18.0', '19.0'),
(243, 29, 24, '28.0', NULL, NULL, '29.0'),
(244, 19, 24, '14.0', '15.0', '16.0', '17.0'),
(245, 28, 24, '16.0', NULL, NULL, '21.0'),
(246, 13, 24, '12.0', '13.0', '14.0', '15.0'),
(247, 25, 24, '13.0', '14.0', '22.0', '23.0'),
(248, 26, 24, '14.0', '15.0', '20.0', '21.0'),
(249, 11, 24, '15.0', '16.0', '20.0', '21.0'),
(250, 10, 24, '12.0', '13.0', '17.0', '18.0'),
(251, 30, 24, '21.0', NULL, NULL, '22.0'),
(252, 28, 25, '16.0', NULL, NULL, '21.0'),
(253, 31, 25, '16.0', '17.0', '19.0', '20.0'),
(254, 19, 25, '14.0', '15.0', '16.0', '17.0'),
(255, 1, 25, '14.0', '15.0', '16.0', '17.0'),
(256, 13, 25, '12.0', '13.0', '14.0', '15.0'),
(257, 11, 25, '15.0', '16.0', '20.0', '21.0'),
(258, 10, 25, '12.0', '13.0', '17.0', '18.0'),
(259, 20, 25, '10.0', '11.0', '15.0', '16.0'),
(260, 24, 25, '14.0', '15.0', '18.0', '19.0'),
(261, 27, 25, NULL, NULL, NULL, NULL),
(262, 26, 25, '14.0', '15.0', '20.0', '21.0'),
(263, 25, 25, '13.0', '14.0', '22.0', '23.0'),
(264, 30, 25, '21.0', NULL, NULL, '22.0'),
(265, 29, 25, '28.0', NULL, NULL, '29.0'),
(308, 27, 29, NULL, NULL, NULL, NULL),
(309, 20, 29, NULL, NULL, NULL, NULL),
(310, 24, 29, NULL, NULL, NULL, NULL),
(311, 31, 29, NULL, NULL, NULL, NULL),
(312, 29, 29, NULL, NULL, NULL, NULL),
(313, 19, 29, NULL, NULL, NULL, NULL),
(314, 28, 29, NULL, NULL, NULL, NULL),
(315, 13, 29, NULL, NULL, NULL, NULL),
(316, 25, 29, NULL, NULL, NULL, NULL),
(317, 26, 29, NULL, NULL, NULL, NULL),
(318, 11, 29, NULL, NULL, NULL, NULL),
(319, 10, 29, NULL, NULL, NULL, NULL),
(320, 30, 29, NULL, NULL, NULL, NULL),
(321, 1, 29, NULL, NULL, NULL, NULL),
(322, 1, 30, NULL, NULL, NULL, NULL),
(323, 30, 30, NULL, NULL, NULL, NULL),
(324, 27, 30, NULL, NULL, NULL, NULL),
(325, 20, 30, NULL, NULL, NULL, NULL),
(326, 24, 30, NULL, NULL, NULL, NULL),
(327, 31, 30, NULL, NULL, NULL, NULL),
(328, 29, 30, NULL, NULL, NULL, NULL),
(329, 19, 30, NULL, NULL, NULL, NULL),
(330, 28, 30, NULL, NULL, NULL, NULL),
(331, 13, 30, NULL, NULL, NULL, NULL),
(332, 25, 30, NULL, NULL, NULL, NULL),
(333, 26, 30, NULL, NULL, NULL, NULL),
(334, 11, 30, NULL, NULL, NULL, NULL),
(335, 10, 30, NULL, NULL, NULL, NULL),
(336, 1, 31, NULL, NULL, NULL, NULL),
(337, 30, 31, NULL, NULL, NULL, NULL),
(338, 27, 31, NULL, NULL, NULL, NULL),
(339, 20, 31, NULL, NULL, NULL, NULL),
(340, 24, 31, NULL, NULL, NULL, NULL),
(341, 31, 31, NULL, NULL, NULL, NULL),
(342, 29, 31, NULL, NULL, NULL, NULL),
(343, 19, 31, NULL, NULL, NULL, NULL),
(344, 28, 31, NULL, NULL, NULL, NULL),
(345, 13, 31, NULL, NULL, NULL, NULL),
(346, 25, 31, NULL, NULL, NULL, NULL),
(347, 26, 31, NULL, NULL, NULL, NULL),
(348, 10, 31, NULL, NULL, NULL, NULL),
(349, 11, 31, NULL, NULL, NULL, NULL),
(350, 18, 32, '17.0', '18.0', '20.0', '21.0'),
(351, 17, 32, '17.0', '18.0', '20.0', '21.0'),
(352, 19, 32, '14.0', '15.0', '16.0', '17.0'),
(353, 16, 32, '13.0', '14.0', '18.0', '19.0'),
(354, 14, 32, '19.0', '20.0', '22.0', '23.0'),
(355, 13, 32, '12.0', '13.0', '14.0', '15.0'),
(356, 12, 32, '10.0', '11.0', '15.0', '16.0'),
(357, 11, 32, '15.0', '16.0', '20.0', '21.0'),
(358, 10, 32, '12.0', '13.0', '17.0', '18.0'),
(359, 8, 32, '14.0', '15.0', '22.0', '23.0'),
(360, 6, 32, '13.0', '14.0', '20.0', '21.0'),
(361, 5, 32, '13.0', '14.0', '20.0', '21.0'),
(362, 2, 32, '13.0', '14.0', '16.0', '17.0'),
(363, 21, 32, '13.0', '14.0', '17.0', '18.0'),
(364, 18, 33, '17.0', '18.0', '20.0', '21.0'),
(365, 17, 33, '17.0', '18.0', '20.0', '21.0'),
(366, 19, 33, '13.0', '14.0', '16.0', '17.0'),
(367, 16, 33, '13.0', '14.0', '18.0', '19.0'),
(368, 14, 33, '19.0', '20.0', '22.0', '23.0'),
(369, 13, 33, '12.0', '13.0', '14.0', '15.0'),
(370, 11, 33, '15.0', '16.0', '20.0', '21.0'),
(371, 10, 33, '12.0', '13.0', '17.0', '18.0'),
(372, 12, 33, '10.0', '11.0', '15.0', '16.0'),
(373, 8, 33, '14.0', '15.0', '17.0', '18.0'),
(374, 6, 33, '13.0', '14.0', '20.0', '21.0'),
(375, 5, 33, '13.0', '14.0', '20.0', '21.0'),
(376, 22, 33, NULL, NULL, NULL, '25.0'),
(377, 2, 33, '13.0', '14.0', '16.0', '17.0'),
(378, 28, 34, '20.0', '21.0', '22.0', '23.0'),
(379, 31, 34, '16.0', '17.0', '19.0', '20.0'),
(380, 19, 34, '14.0', '15.0', '16.0', '17.0'),
(381, 32, 34, '6.0', '7.0', '9.0', '10.0'),
(382, 11, 34, '15.0', '16.0', '20.0', '21.0'),
(383, 10, 34, '12.0', '13.0', '17.0', '18.0'),
(384, 27, 34, '14.0', '15.0', '17.0', '18.0'),
(385, 24, 34, '14.0', '15.0', '18.0', '19.0'),
(386, 25, 34, '13.0', '14.0', '22.0', '23.0'),
(387, 29, 34, '14.0', NULL, NULL, '15.0'),
(388, 2, 34, '16.0', NULL, NULL, '17.0'),
(389, 27, 35, '14.0', '15.0', '17.0', '18.0'),
(390, 24, 35, '14.0', '15.0', '18.0', '19.0'),
(391, 32, 35, '6.0', '7.0', '9.0', '10.0'),
(392, 31, 35, '16.0', '17.0', '19.0', '20.0'),
(393, 29, 35, '14.0', NULL, NULL, '15.0'),
(394, 19, 35, '14.0', '15.0', '16.0', '17.0'),
(395, 28, 35, '20.0', '21.0', '22.0', '23.0'),
(396, 13, 35, '6.0', '7.0', '9.0', '10.0'),
(397, 25, 35, '13.0', '14.0', '22.0', '23.0'),
(398, 11, 35, '15.0', '16.0', '20.0', '21.0'),
(399, 10, 35, '12.0', '13.0', '17.0', '18.0'),
(400, 2, 35, '16.0', NULL, NULL, '17.0'),
(401, 24, 36, '18.0', '19.0', '22.0', '23.0'),
(402, 27, 36, NULL, NULL, NULL, '17.0'),
(403, 10, 36, '17.0', '18.0', '20.0', '21.0'),
(404, 26, 36, '15.0', '16.0', '18.0', '19.0'),
(405, 25, 36, '15.0', '16.0', '20.0', '21.0'),
(406, 6, 36, NULL, NULL, NULL, '24.0'),
(407, 15, 37, '15.0', '16.0', '19.0', '20.0'),
(408, 20, 37, '10.0', '11.0', '15.0', '16.0'),
(409, 33, 37, '14.0', '15.0', '18.0', '19.0'),
(410, 5, 37, '17.0', '18.0', '20.0', '21.0'),
(411, 5, 38, '17.0', '18.0', '20.0', '21.0'),
(412, 15, 38, '15.0', '16.0', '19.0', '20.0'),
(413, 33, 38, '14.0', '15.0', '18.0', '19.0'),
(414, 20, 38, '10.0', '11.0', '15.0', '16.0'),
(415, 5, 39, '17.0', '18.0', '20.0', '21.0'),
(416, 15, 39, '15.0', '16.0', '19.0', '20.0'),
(417, 33, 39, '14.0', '15.0', '18.0', '19.0'),
(418, 20, 39, '10.0', '11.0', '15.0', '16.0'),
(419, 6, 40, NULL, NULL, NULL, '35.0'),
(420, 34, 40, NULL, NULL, NULL, '31.0'),
(421, 11, 40, '27.0', '28.0', '40.0', '41.0'),
(422, 29, 40, '26.0', '27.0', '46.0', '47.0'),
(423, 24, 40, '30.0', '31.0', '37.0', '38.0'),
(424, 35, 40, '14.0', '15.0', '17.0', '18.0'),
(425, 24, 41, '30.0', '31.0', '37.0', '38.0'),
(426, 35, 41, '14.0', '15.0', '17.0', '18.0'),
(427, 29, 41, '26.0', '27.0', '46.0', '47.0'),
(428, 11, 41, '27.0', '28.0', '40.0', '41.0'),
(429, 6, 41, NULL, NULL, NULL, '35.0'),
(430, 24, 42, '30.0', '31.0', '37.0', '38.0'),
(431, 35, 42, '14.0', '15.0', '17.0', '18.0'),
(432, 29, 42, '26.0', '27.0', '46.0', '47.0'),
(433, 11, 42, '27.0', '28.0', '40.0', '41.0'),
(434, 6, 42, NULL, NULL, NULL, '35.0'),
(435, 6, 43, NULL, NULL, NULL, '35.0'),
(436, 11, 43, '27.0', '28.0', '40.0', '41.0'),
(437, 29, 43, '26.0', '27.0', '46.0', '47.0'),
(438, 35, 43, '14.0', '15.0', '17.0', '18.0'),
(439, 24, 43, '30.0', '31.0', '37.0', '38.0'),
(440, 24, 44, '25.0', '26.0', '28.0', '29.0'),
(441, 20, 44, '10.0', '11.0', '15.0', '16.0'),
(442, 15, 44, NULL, NULL, NULL, '20.0'),
(443, 31, 44, '16.0', '17.0', '19.0', '20.0'),
(444, 8, 44, '16.0', '17.0', '19.0', '20.0'),
(445, 11, 44, NULL, NULL, NULL, '21.0'),
(446, 10, 44, '25.0', '26.0', '28.0', '29.0'),
(447, 3, 44, '19.0', NULL, NULL, '20.0'),
(448, 2, 44, '18.0', '19.0', '21.0', '22.0'),
(449, 6, 44, NULL, NULL, NULL, '20.0'),
(450, 20, 45, '10.0', '11.0', '15.0', '16.0'),
(451, 24, 45, '25.0', '26.0', '28.0', '29.0'),
(452, 31, 45, '16.0', '17.0', '19.0', '20.0'),
(453, 15, 45, NULL, NULL, NULL, '20.0'),
(454, 11, 45, NULL, NULL, NULL, '21.0'),
(455, 10, 45, '25.0', '26.0', '28.0', '29.0'),
(456, 8, 45, '16.0', '17.0', '19.0', '20.0'),
(457, 6, 45, NULL, NULL, NULL, '26.0'),
(458, 3, 45, '19.0', NULL, NULL, '20.0'),
(459, 2, 45, '18.0', '19.0', '21.0', '22.0'),
(460, 6, 46, NULL, NULL, NULL, '26.0'),
(461, 8, 46, '16.0', '17.0', '19.0', '20.0'),
(462, 20, 46, '10.0', '11.0', '15.0', '16.0'),
(463, 24, 46, '25.0', '26.0', '28.0', '29.0'),
(464, 31, 46, '16.0', '17.0', '19.0', '20.0'),
(465, 15, 46, NULL, NULL, NULL, '20.0'),
(466, 11, 46, NULL, NULL, NULL, '21.0'),
(467, 10, 46, '25.0', '26.0', '28.0', '29.0'),
(468, 3, 46, '19.0', NULL, NULL, '20.0'),
(469, 2, 46, '18.0', '19.0', '21.0', '22.0'),
(480, 20, 48, '10.0', '11.0', '15.0', '16.0'),
(481, 24, 48, '25.0', '26.0', '28.0', '29.0'),
(482, 31, 48, '16.0', '17.0', '19.0', '20.0'),
(483, 15, 48, NULL, NULL, NULL, '20.0'),
(484, 11, 48, NULL, NULL, NULL, '21.0'),
(485, 10, 48, '25.0', '26.0', '28.0', '29.0'),
(486, 8, 48, '16.0', '17.0', '19.0', '20.0'),
(487, 6, 48, NULL, NULL, NULL, '26.0'),
(488, 3, 48, '19.0', NULL, NULL, '20.0'),
(489, 2, 48, '18.0', '19.0', '21.0', '22.0'),
(519, 3, 52, '19.0', NULL, NULL, '20.0'),
(520, 2, 52, '18.0', '19.0', '21.0', '22.0'),
(521, 20, 52, '10.0', '11.0', '15.0', '16.0'),
(522, 24, 52, '25.0', '26.0', '28.0', '29.0'),
(523, 31, 52, '16.0', '17.0', '19.0', '20.0'),
(524, 15, 52, NULL, NULL, NULL, '20.0'),
(525, 8, 52, '16.0', '17.0', '19.0', '20.0'),
(526, 6, 52, NULL, NULL, NULL, '26.0'),
(527, 11, 52, NULL, NULL, NULL, '21.0'),
(528, 10, 52, '25.0', '26.0', '28.0', '29.0'),
(529, 20, 53, '10.0', '11.0', '15.0', '16.0'),
(530, 24, 53, '25.0', '26.0', '28.0', '29.0'),
(531, 31, 53, '16.0', '17.0', '19.0', '20.0'),
(532, 15, 53, NULL, NULL, NULL, '20.0'),
(533, 11, 53, NULL, NULL, NULL, '21.0'),
(534, 10, 53, '25.0', '26.0', '28.0', '29.0'),
(535, 8, 53, '16.0', '17.0', '19.0', '20.0'),
(536, 6, 53, NULL, NULL, NULL, '26.0'),
(537, 3, 53, '19.0', NULL, NULL, '20.0'),
(538, 2, 53, '18.0', '19.0', '21.0', '22.0'),
(539, 31, 54, '16.0', '17.0', '19.0', '20.0'),
(540, 24, 54, '25.0', '26.0', '28.0', '29.0'),
(541, 20, 54, '10.0', '11.0', '15.0', '16.0'),
(542, 15, 54, NULL, NULL, NULL, '20.0'),
(543, 11, 54, NULL, NULL, NULL, '21.0'),
(544, 10, 54, '25.0', '26.0', '28.0', '29.0'),
(545, 8, 54, '16.0', '17.0', '19.0', '20.0'),
(546, 6, 54, NULL, NULL, NULL, '26.0'),
(547, 3, 54, '19.0', NULL, NULL, '20.0'),
(548, 2, 54, '18.0', '19.0', '21.0', '22.0'),
(549, 20, 55, '10.0', '11.0', '15.0', '16.0'),
(550, 24, 55, '25.0', '26.0', '28.0', '29.0'),
(551, 31, 55, '16.0', '17.0', '19.0', '20.0'),
(552, 15, 55, NULL, NULL, NULL, '20.0'),
(553, 11, 55, NULL, NULL, NULL, '21.0'),
(554, 10, 55, '25.0', '26.0', '28.0', '29.0'),
(555, 8, 55, '16.0', '17.0', '19.0', '20.0'),
(556, 6, 55, NULL, NULL, NULL, '26.0'),
(557, 3, 55, '19.0', NULL, NULL, '20.0'),
(558, 2, 55, '18.0', '19.0', '21.0', '22.0'),
(559, 20, 56, '10.0', '11.0', '15.0', '16.0'),
(560, 24, 56, '25.0', '26.0', '28.0', '29.0'),
(561, 31, 56, '16.0', '17.0', '19.0', '20.0'),
(562, 15, 56, NULL, NULL, NULL, '20.0'),
(563, 11, 56, NULL, NULL, NULL, '21.0'),
(564, 10, 56, '25.0', '26.0', '28.0', '29.0'),
(565, 8, 56, '16.0', '17.0', '19.0', '20.0'),
(566, 6, 56, NULL, NULL, NULL, '26.0'),
(567, 3, 56, '19.0', NULL, NULL, '20.0'),
(568, 2, 56, '18.0', '19.0', '21.0', '22.0'),
(601, 20, 61, '15.0', '16.0', '18.0', '19.0'),
(602, 24, 61, '24.0', '25.0', '27.0', '28.0'),
(603, 31, 61, '16.0', '17.0', '18.0', '19.0'),
(604, 28, 61, NULL, NULL, NULL, '21.0'),
(605, 10, 61, '20.0', NULL, NULL, '21.0'),
(606, 26, 61, '15.0', '16.0', '18.0', '19.0'),
(607, 25, 61, '15.0', '16.0', '20.0', '21.0'),
(608, 36, 61, NULL, NULL, NULL, '20.0'),
(699, 18, 67, NULL, NULL, NULL, NULL),
(700, 17, 67, NULL, NULL, NULL, NULL),
(701, 19, 67, NULL, NULL, NULL, NULL),
(702, 16, 67, NULL, NULL, NULL, NULL),
(703, 15, 67, NULL, NULL, NULL, NULL),
(704, 14, 67, NULL, NULL, NULL, NULL),
(705, 13, 67, NULL, NULL, NULL, NULL),
(706, 12, 67, NULL, NULL, NULL, NULL),
(707, 11, 67, NULL, NULL, NULL, NULL),
(708, 10, 67, NULL, NULL, NULL, NULL),
(709, 9, 67, NULL, NULL, NULL, NULL),
(710, 8, 67, NULL, NULL, NULL, NULL),
(711, 6, 67, NULL, NULL, NULL, NULL),
(712, 5, 67, NULL, NULL, NULL, NULL),
(713, 4, 67, NULL, NULL, NULL, NULL),
(714, 22, 67, NULL, NULL, NULL, NULL),
(715, 2, 67, '13.0', '14.0', '16.0', '17.0'),
(716, 9, 33, '14.0', '15.0', '22.0', '23.0'),
(717, 18, 68, '17.0', '18.0', '20.0', '21.0'),
(718, 17, 68, '17.0', '18.0', '20.0', '21.0'),
(719, 19, 68, '13.0', '14.0', '16.0', '17.0'),
(720, 16, 68, '13.0', '14.0', '18.0', '19.0'),
(721, 15, 68, '19.0', '20.0', '22.0', '23.0'),
(722, 13, 68, '12.0', '13.0', '14.0', '15.0'),
(723, 14, 68, '19.0', '20.0', '22.0', '23.0'),
(724, 12, 68, '10.0', '11.0', '15.0', '16.0'),
(725, 11, 68, '15.0', '16.0', '20.0', '21.0'),
(726, 10, 68, '12.0', '13.0', '17.0', '18.0'),
(727, 9, 68, '14.0', '15.0', '22.0', '23.0'),
(728, 8, 68, '14.0', '15.0', '17.0', '18.0'),
(729, 6, 68, '19.0', '20.0', '22.0', '23.0'),
(730, 5, 68, '17.0', '18.0', '20.0', '21.0'),
(731, 4, 68, '22.0', '23.0', '25.0', '26.0'),
(732, 22, 68, NULL, NULL, NULL, '25.0'),
(733, 2, 68, '13.0', '14.0', '16.0', '17.0'),
(734, 21, 68, '13.0', '14.0', '17.0', '18.0'),
(735, 16, 69, '13.0', '14.0', '18.0', '19.0'),
(736, 17, 69, '17.0', '18.0', '20.0', '21.0'),
(737, 18, 69, '17.0', '18.0', '20.0', '21.0'),
(738, 19, 69, '13.0', '14.0', '16.0', '17.0'),
(739, 21, 69, '13.0', '14.0', '17.0', '18.0'),
(740, 2, 69, '13.0', '14.0', '16.0', '17.0'),
(741, 22, 69, NULL, NULL, NULL, '25.0'),
(742, 4, 69, '22.0', '23.0', '25.0', '26.0'),
(743, 5, 69, '17.0', '18.0', '20.0', '21.0'),
(744, 6, 69, '19.0', '20.0', '22.0', '23.0'),
(745, 9, 69, '14.0', '15.0', '22.0', '23.0'),
(746, 8, 69, '14.0', '15.0', '17.0', '18.0'),
(747, 10, 69, '12.0', '13.0', '17.0', '18.0'),
(748, 11, 69, '15.0', '16.0', '20.0', '21.0'),
(749, 12, 69, '10.0', '11.0', '15.0', '16.0'),
(750, 13, 69, '12.0', '13.0', '14.0', '15.0'),
(751, 15, 69, '19.0', '20.0', '22.0', '23.0'),
(752, 14, 69, '19.0', '20.0', '22.0', '23.0'),
(771, 18, 71, '17.0', '18.0', '20.0', '21.0'),
(772, 17, 71, '17.0', '18.0', '20.0', '21.0'),
(773, 19, 71, '13.0', '14.0', '16.0', '17.0'),
(774, 16, 71, '13.0', '14.0', '18.0', '19.0'),
(775, 15, 71, '19.0', '20.0', '22.0', '23.0'),
(776, 14, 71, '19.0', '20.0', '22.0', '23.0'),
(777, 13, 71, '12.0', '13.0', '14.0', '15.0'),
(778, 12, 71, '10.0', '11.0', '15.0', '16.0'),
(779, 9, 71, '14.0', '15.0', '22.0', '23.0'),
(780, 8, 71, '14.0', '15.0', '17.0', '18.0'),
(781, 6, 71, '19.0', '20.0', '22.0', '23.0'),
(782, 5, 71, '17.0', '18.0', '20.0', '21.0'),
(783, 4, 71, '22.0', '23.0', '25.0', '26.0'),
(784, 22, 71, NULL, NULL, NULL, '25.0'),
(785, 21, 71, '13.0', '14.0', '17.0', '18.0'),
(786, 2, 71, '13.0', '14.0', '16.0', '17.0'),
(787, 11, 71, '15.0', '16.0', '20.0', '21.0'),
(788, 10, 71, '12.0', '13.0', '17.0', '18.0'),
(789, 18, 72, '17.0', '18.0', '20.0', '21.0'),
(790, 17, 72, '17.0', '18.0', '20.0', '21.0'),
(791, 19, 72, '13.0', '14.0', '16.0', '17.0'),
(792, 16, 72, '13.0', '14.0', '18.0', '19.0'),
(793, 15, 72, '19.0', '20.0', '22.0', '23.0'),
(794, 14, 72, '19.0', '20.0', '22.0', '23.0'),
(795, 13, 72, '12.0', '13.0', '14.0', '15.0'),
(796, 12, 72, '10.0', '11.0', '15.0', '16.0'),
(797, 11, 72, '15.0', '16.0', '20.0', '21.0'),
(798, 10, 72, '12.0', '13.0', '17.0', '18.0'),
(799, 9, 72, '14.0', '15.0', '22.0', '23.0'),
(800, 8, 72, '14.0', '15.0', '17.0', '18.0'),
(801, 6, 72, '19.0', '20.0', '22.0', '23.0'),
(802, 5, 72, '17.0', '18.0', '20.0', '21.0'),
(803, 4, 72, '22.0', '23.0', '25.0', '26.0'),
(804, 22, 72, NULL, NULL, NULL, '25.0'),
(805, 2, 72, '13.0', '14.0', '16.0', '17.0'),
(806, 21, 72, '13.0', '14.0', '17.0', '18.0'),
(825, 18, 74, '17.0', '18.0', '20.0', '21.0'),
(826, 17, 74, '17.0', '18.0', '20.0', '21.0'),
(827, 19, 74, '13.0', '14.0', '16.0', '17.0'),
(828, 16, 74, '13.0', '14.0', '18.0', '19.0'),
(829, 15, 74, '19.0', '20.0', '22.0', '23.0'),
(830, 14, 74, '19.0', '20.0', '22.0', '23.0'),
(831, 13, 74, '12.0', '13.0', '14.0', '15.0'),
(832, 12, 74, '10.0', '11.0', '15.0', '16.0'),
(833, 11, 74, '15.0', '16.0', '20.0', '21.0'),
(834, 10, 74, '12.0', '13.0', '17.0', '18.0'),
(835, 9, 74, '14.0', '15.0', '22.0', '23.0'),
(836, 8, 74, '14.0', '15.0', '17.0', '18.0'),
(837, 6, 74, '19.0', '20.0', '22.0', '23.0'),
(838, 5, 74, '17.0', '18.0', '20.0', '21.0'),
(839, 4, 74, '22.0', '23.0', '25.0', '26.0'),
(840, 22, 74, NULL, NULL, NULL, '25.0'),
(841, 2, 74, '13.0', '14.0', '16.0', '17.0'),
(842, 21, 74, '13.0', '14.0', '17.0', '18.0'),
(843, 18, 75, '17.0', '18.0', '20.0', '21.0'),
(844, 17, 75, '17.0', '18.0', '20.0', '21.0'),
(845, 19, 75, '13.0', '14.0', '16.0', '17.0'),
(846, 16, 75, '13.0', '14.0', '18.0', '19.0'),
(847, 15, 75, '19.0', '20.0', '22.0', '23.0'),
(848, 14, 75, '19.0', '20.0', '22.0', '23.0'),
(849, 13, 75, '12.0', '13.0', '14.0', '15.0'),
(850, 12, 75, '10.0', '11.0', '15.0', '16.0'),
(851, 10, 75, '12.0', '13.0', '17.0', '18.0'),
(852, 11, 75, '15.0', '16.0', '20.0', '21.0'),
(853, 9, 75, '14.0', '15.0', '22.0', '23.0'),
(854, 8, 75, '14.0', '15.0', '17.0', '18.0'),
(855, 6, 75, '19.0', '20.0', '22.0', '23.0'),
(856, 5, 75, '17.0', '18.0', '20.0', '21.0'),
(857, 4, 75, '22.0', '23.0', '25.0', '26.0'),
(858, 22, 75, NULL, NULL, NULL, '25.0'),
(859, 2, 75, '13.0', '14.0', '16.0', '17.0'),
(860, 21, 75, '13.0', '14.0', '17.0', '18.0'),
(861, 18, 76, '17.0', '18.0', '20.0', '21.0'),
(862, 17, 76, '17.0', '18.0', '20.0', '21.0'),
(863, 19, 76, '13.0', '14.0', '16.0', '17.0'),
(864, 16, 76, '13.0', '14.0', '18.0', '19.0'),
(865, 15, 76, '19.0', '20.0', '22.0', '23.0'),
(866, 14, 76, '19.0', '20.0', '22.0', '23.0'),
(867, 13, 76, '12.0', '13.0', '14.0', '15.0'),
(868, 12, 76, '10.0', '11.0', '15.0', '16.0'),
(869, 10, 76, '12.0', '13.0', '17.0', '18.0'),
(870, 11, 76, '15.0', '16.0', '20.0', '21.0'),
(871, 9, 76, '14.0', '15.0', '22.0', '23.0'),
(872, 8, 76, '14.0', '15.0', '17.0', '18.0'),
(873, 6, 76, '19.0', '20.0', '22.0', '23.0'),
(874, 5, 76, '17.0', '18.0', '20.0', '21.0'),
(875, 4, 76, '22.0', '23.0', '25.0', '26.0'),
(876, 22, 76, NULL, NULL, NULL, '25.0'),
(877, 2, 76, '13.0', '14.0', '16.0', '17.0'),
(878, 21, 76, '13.0', '14.0', '17.0', '18.0'),
(879, 18, 77, '17.0', '18.0', '20.0', '21.0'),
(880, 17, 77, '17.0', '18.0', '20.0', '21.0'),
(881, 19, 77, '13.0', '14.0', '16.0', '17.0'),
(882, 16, 77, '13.0', '14.0', '18.0', '19.0'),
(883, 15, 77, '19.0', '20.0', '22.0', '23.0'),
(884, 14, 77, '19.0', '20.0', '22.0', '23.0'),
(885, 13, 77, '12.0', '13.0', '14.0', '15.0'),
(886, 12, 77, '10.0', '11.0', '15.0', '16.0'),
(887, 11, 77, '15.0', '16.0', '20.0', '21.0'),
(888, 10, 77, '12.0', '13.0', '17.0', '18.0'),
(889, 9, 77, '14.0', '15.0', '22.0', '23.0'),
(890, 8, 77, '14.0', '15.0', '17.0', '18.0'),
(891, 6, 77, '19.0', '20.0', '22.0', '23.0'),
(892, 5, 77, '17.0', '18.0', '20.0', '21.0'),
(893, 4, 77, '22.0', '23.0', '25.0', '26.0'),
(894, 22, 77, NULL, NULL, NULL, '25.0'),
(895, 2, 77, '13.0', '14.0', '16.0', '17.0'),
(896, 21, 77, '13.0', '14.0', '17.0', '18.0'),
(933, 18, 80, '17.0', '18.0', '20.0', '21.0'),
(934, 17, 80, '17.0', '18.0', '20.0', '21.0'),
(935, 19, 80, '13.0', '14.0', '16.0', '17.0'),
(936, 16, 80, '13.0', '14.0', '18.0', '19.0'),
(937, 15, 80, '19.0', '20.0', '22.0', '23.0'),
(938, 14, 80, '19.0', '20.0', '22.0', '23.0'),
(939, 13, 80, '12.0', '13.0', '14.0', '15.0'),
(940, 12, 80, '10.0', '11.0', '15.0', '16.0'),
(941, 10, 80, '12.0', '13.0', '17.0', '18.0'),
(942, 11, 80, '15.0', '16.0', '20.0', '21.0'),
(943, 9, 80, '14.0', '15.0', '22.0', '23.0'),
(944, 8, 80, '14.0', '15.0', '17.0', '18.0'),
(945, 6, 80, '19.0', '20.0', '22.0', '23.0'),
(946, 5, 80, '17.0', '18.0', '20.0', '21.0'),
(947, 4, 80, '22.0', '23.0', '25.0', '26.0'),
(948, 22, 80, NULL, NULL, NULL, '25.0'),
(949, 2, 80, '13.0', '14.0', '16.0', '17.0'),
(950, 21, 80, '13.0', '14.0', '17.0', '18.0'),
(951, 18, 81, '17.0', '18.0', '20.0', '21.0'),
(952, 17, 81, '17.0', '18.0', '20.0', '21.0'),
(953, 19, 81, '13.0', '14.0', '16.0', '17.0'),
(954, 16, 81, '13.0', '14.0', '18.0', '19.0'),
(955, 15, 81, '19.0', '20.0', '22.0', '23.0'),
(956, 14, 81, '19.0', '20.0', '22.0', '23.0'),
(957, 13, 81, '12.0', '13.0', '14.0', '15.0'),
(958, 12, 81, '10.0', '11.0', '15.0', '16.0'),
(959, 10, 81, '12.0', '13.0', '17.0', '18.0'),
(960, 11, 81, '15.0', '16.0', '20.0', '21.0'),
(961, 9, 81, '14.0', '15.0', '22.0', '23.0'),
(962, 8, 81, '14.0', '15.0', '17.0', '18.0'),
(963, 6, 81, '19.0', '20.0', '22.0', '23.0'),
(964, 5, 81, '17.0', '18.0', '20.0', '21.0'),
(965, 4, 81, '22.0', '23.0', '25.0', '26.0'),
(966, 22, 81, NULL, NULL, NULL, '25.0'),
(967, 21, 81, '13.0', '14.0', '17.0', '18.0'),
(968, 2, 81, '13.0', '14.0', '16.0', '17.0'),
(987, 18, 83, '17.0', '18.0', '20.0', '21.0'),
(988, 17, 83, '17.0', '18.0', '20.0', '21.0'),
(989, 19, 83, '13.0', '14.0', '16.0', '17.0'),
(990, 16, 83, '13.0', '14.0', '18.0', '19.0'),
(991, 15, 83, '19.0', '20.0', '22.0', '23.0'),
(992, 14, 83, '19.0', '20.0', '22.0', '23.0'),
(993, 13, 83, '12.0', '13.0', '14.0', '15.0'),
(994, 12, 83, '10.0', '11.0', '15.0', '16.0'),
(995, 11, 83, '15.0', '16.0', '20.0', '21.0'),
(996, 10, 83, '12.0', '13.0', '17.0', '18.0'),
(997, 9, 83, '14.0', '15.0', '22.0', '23.0'),
(998, 8, 83, '14.0', '15.0', '17.0', '18.0'),
(999, 6, 83, '19.0', '20.0', '22.0', '23.0'),
(1000, 5, 83, '17.0', '18.0', '20.0', '21.0'),
(1001, 4, 83, '22.0', '23.0', '25.0', '26.0'),
(1002, 22, 83, NULL, NULL, NULL, '25.0'),
(1003, 2, 83, '13.0', '14.0', '16.0', '17.0'),
(1004, 21, 83, '13.0', '14.0', '17.0', '18.0'),
(1005, 16, 84, NULL, NULL, NULL, NULL),
(1006, 15, 84, NULL, NULL, NULL, NULL),
(1007, 14, 84, NULL, NULL, NULL, NULL),
(1008, 13, 84, NULL, NULL, NULL, NULL),
(1009, 12, 84, NULL, NULL, NULL, NULL),
(1010, 11, 84, NULL, NULL, NULL, NULL),
(1011, 10, 84, NULL, NULL, NULL, NULL),
(1012, 9, 84, NULL, NULL, NULL, NULL),
(1013, 8, 84, NULL, NULL, NULL, NULL),
(1014, 6, 84, NULL, NULL, NULL, NULL),
(1015, 5, 84, NULL, NULL, NULL, NULL),
(1016, 4, 84, NULL, NULL, NULL, NULL),
(1017, 22, 84, NULL, NULL, NULL, NULL),
(1018, 2, 84, NULL, NULL, NULL, NULL),
(1019, 21, 84, NULL, NULL, NULL, NULL),
(1020, 18, 84, NULL, NULL, NULL, NULL),
(1021, 17, 84, NULL, NULL, NULL, NULL),
(1022, 19, 84, NULL, NULL, NULL, NULL),
(1023, 15, 3, '19.0', '20.0', '22.0', '23.0'),
(1060, 18, 87, '17.0', '18.0', '20.0', '21.0'),
(1061, 17, 87, '17.0', '18.0', '20.0', '21.0'),
(1062, 19, 87, '13.0', '14.0', '16.0', '17.0'),
(1063, 16, 87, '13.0', '14.0', '18.0', '19.0'),
(1064, 15, 87, '19.0', '20.0', '22.0', '23.0'),
(1065, 14, 87, '19.0', '20.0', '22.0', '23.0'),
(1066, 13, 87, '12.0', '13.0', '14.0', '15.0'),
(1067, 12, 87, '10.0', '11.0', '15.0', '16.0'),
(1068, 11, 87, '15.0', '16.0', '20.0', '21.0'),
(1069, 10, 87, '12.0', '13.0', '17.0', '18.0'),
(1070, 9, 87, '14.0', '15.0', '22.0', '23.0'),
(1071, 8, 87, '14.0', '15.0', '17.0', '18.0'),
(1072, 6, 87, '19.0', '20.0', '22.0', '23.0'),
(1073, 5, 87, '17.0', '18.0', '20.0', '21.0'),
(1074, 4, 87, '22.0', '23.0', '25.0', '26.0'),
(1075, 22, 87, NULL, NULL, NULL, '25.0'),
(1076, 2, 87, '13.0', '14.0', '16.0', '17.0'),
(1077, 21, 87, '13.0', '14.0', '17.0', '18.0'),
(1078, 18, 88, '17.0', '18.0', '20.0', '21.0'),
(1079, 17, 88, '17.0', '18.0', '20.0', '21.0'),
(1080, 19, 88, '13.0', '14.0', '16.0', '17.0'),
(1081, 16, 88, '13.0', '14.0', '18.0', '19.0'),
(1082, 15, 88, '19.0', '20.0', '22.0', '23.0'),
(1083, 14, 88, '19.0', '20.0', '22.0', '23.0'),
(1084, 13, 88, '12.0', '13.0', '14.0', '15.0'),
(1085, 12, 88, '10.0', '11.0', '15.0', '16.0'),
(1086, 11, 88, '15.0', '16.0', '20.0', '21.0'),
(1087, 10, 88, '12.0', '13.0', '17.0', '18.0'),
(1088, 8, 88, '14.0', '15.0', '17.0', '18.0'),
(1089, 9, 88, '14.0', '15.0', '22.0', '23.0'),
(1090, 6, 88, '19.0', '20.0', '22.0', '23.0'),
(1091, 5, 88, '17.0', '18.0', '20.0', '21.0'),
(1092, 22, 88, NULL, NULL, NULL, '25.0'),
(1093, 4, 88, '22.0', '23.0', '25.0', '26.0'),
(1094, 2, 88, '13.0', '14.0', '16.0', '17.0'),
(1095, 21, 88, '13.0', '14.0', '17.0', '18.0'),
(1096, 2, 89, NULL, NULL, NULL, NULL),
(1097, 6, 89, NULL, NULL, NULL, NULL),
(1098, 10, 89, NULL, NULL, NULL, NULL),
(1099, 11, 89, NULL, NULL, NULL, NULL),
(1100, 12, 89, NULL, NULL, NULL, NULL),
(1101, 16, 89, NULL, NULL, NULL, NULL),
(1102, 20, 90, '10.0', '11.0', '15.0', '16.0'),
(1103, 33, 90, '14.0', '15.0', '18.0', '19.0'),
(1104, 37, 90, '13.0', '14.0', '16.0', '17.0'),
(1105, 9, 91, '14.0', '15.0', '22.0', '23.0'),
(1106, 18, 91, '17.0', '18.0', '20.0', '21.0'),
(1107, 17, 91, '17.0', '18.0', '20.0', '21.0'),
(1108, 19, 91, '13.0', '14.0', '16.0', '17.0'),
(1109, 16, 91, '13.0', '14.0', '18.0', '19.0'),
(1110, 15, 91, '19.0', '20.0', '22.0', '23.0'),
(1111, 14, 91, '19.0', '20.0', '22.0', '23.0'),
(1112, 13, 91, '12.0', '13.0', '14.0', '15.0'),
(1113, 12, 91, '10.0', '11.0', '15.0', '16.0'),
(1114, 10, 91, '12.0', '13.0', '17.0', '18.0'),
(1115, 11, 91, '15.0', '16.0', '20.0', '21.0'),
(1116, 8, 91, '14.0', '15.0', '17.0', '18.0'),
(1117, 6, 91, '19.0', '20.0', '22.0', '23.0'),
(1118, 5, 91, '17.0', '18.0', '20.0', '21.0'),
(1119, 4, 91, '22.0', '23.0', '25.0', '26.0'),
(1120, 22, 91, NULL, NULL, NULL, '25.0'),
(1121, 2, 91, '13.0', '14.0', '16.0', '17.0'),
(1122, 21, 91, '13.0', '14.0', '17.0', '18.0'),
(1177, 18, 95, '17.0', '18.0', '20.0', '21.0'),
(1178, 17, 95, '17.0', '18.0', '20.0', '21.0'),
(1179, 19, 95, '13.0', '14.0', '16.0', '17.0'),
(1180, 16, 95, '13.0', '14.0', '18.0', '19.0'),
(1181, 15, 95, '19.0', '20.0', '22.0', '23.0'),
(1182, 14, 95, '19.0', '20.0', '22.0', '23.0'),
(1183, 13, 95, '12.0', '13.0', '14.0', '15.0'),
(1184, 12, 95, '10.0', '11.0', '15.0', '16.0'),
(1185, 11, 95, '15.0', '16.0', '20.0', '21.0'),
(1186, 10, 95, '12.0', '13.0', '17.0', '18.0'),
(1187, 9, 95, '14.0', '15.0', '22.0', '23.0'),
(1188, 8, 95, '14.0', '15.0', '17.0', '18.0'),
(1189, 6, 95, '19.0', '20.0', '22.0', '23.0'),
(1190, 5, 95, '17.0', '18.0', '20.0', '21.0'),
(1191, 4, 95, '22.0', '23.0', '25.0', '26.0'),
(1192, 22, 95, NULL, NULL, NULL, '25.0'),
(1193, 2, 95, '13.0', '14.0', '16.0', '17.0'),
(1194, 21, 95, '13.0', '14.0', '17.0', '18.0'),
(1195, 38, 91, '14.0', '15.0', '17.0', '18.0'),
(1196, 2, 96, NULL, NULL, NULL, NULL),
(1197, 6, 96, NULL, NULL, NULL, NULL),
(1198, 10, 96, NULL, NULL, NULL, NULL),
(1199, 11, 96, NULL, NULL, NULL, NULL),
(1200, 12, 96, NULL, NULL, NULL, NULL),
(1201, 16, 96, NULL, NULL, NULL, NULL),
(1202, 27, 97, '14.0', '15.0', '17.0', '18.0'),
(1203, 24, 97, '14.0', '15.0', '18.0', '19.0'),
(1204, 32, 97, '6.0', '7.0', '9.0', '10.0'),
(1205, 31, 97, '16.0', '17.0', '19.0', '20.0'),
(1206, 29, 97, '14.0', NULL, NULL, '15.0'),
(1207, 19, 97, '14.0', '15.0', '16.0', '17.0'),
(1208, 28, 97, '20.0', '21.0', '22.0', '23.0'),
(1209, 13, 97, '6.0', '7.0', '9.0', '10.0'),
(1210, 25, 97, '13.0', '14.0', '22.0', '23.0'),
(1211, 11, 97, '15.0', '16.0', '20.0', '21.0'),
(1212, 10, 97, '12.0', '13.0', '17.0', '18.0'),
(1213, 2, 97, '16.0', NULL, NULL, '17.0'),
(1214, 2, 98, '13.0', '14.0', '16.0', '17.0'),
(1215, 11, 98, '15.0', '16.0', '20.0', '21.0'),
(1216, 12, 98, '10.0', '11.0', '15.0', '16.0'),
(1217, 16, 98, '13.0', '14.0', '18.0', '19.0'),
(1218, 2, 99, '13.0', '14.0', '16.0', '17.0'),
(1219, 11, 99, '15.0', '16.0', '20.0', '21.0'),
(1220, 12, 99, '10.0', '11.0', '15.0', '16.0'),
(1221, 16, 99, '13.0', '14.0', '18.0', '19.0'),
(1222, 2, 100, '13.0', '14.0', '16.0', '17.0'),
(1223, 11, 100, '15.0', '16.0', '20.0', '21.0'),
(1224, 12, 100, '10.0', '11.0', '15.0', '16.0'),
(1225, 16, 100, '13.0', '14.0', '18.0', '19.0'),
(1226, 2, 101, '13.0', '14.0', '16.0', '17.0'),
(1227, 11, 101, '15.0', '16.0', '20.0', '21.0'),
(1228, 12, 101, '10.0', '11.0', '15.0', '16.0'),
(1229, 16, 101, '13.0', '14.0', '18.0', '19.0'),
(1230, 29, 36, NULL, NULL, NULL, '24.0'),
(1231, 29, 102, NULL, NULL, NULL, '24.0'),
(1232, 6, 102, NULL, NULL, NULL, '24.0'),
(1233, 25, 102, '15.0', '16.0', '20.0', '21.0'),
(1234, 26, 102, '15.0', '16.0', '18.0', '19.0'),
(1235, 10, 102, '17.0', '18.0', '20.0', '21.0'),
(1236, 27, 102, NULL, NULL, NULL, '17.0'),
(1237, 24, 102, '18.0', '19.0', '22.0', '23.0'),
(1238, 27, 103, NULL, NULL, NULL, '17.0'),
(1239, 24, 103, '18.0', '19.0', '22.0', '23.0'),
(1240, 29, 103, NULL, NULL, NULL, '24.0'),
(1241, 25, 103, '15.0', '16.0', '20.0', '21.0'),
(1242, 26, 103, '15.0', '16.0', '18.0', '19.0'),
(1243, 10, 103, '17.0', '18.0', '20.0', '21.0'),
(1244, 6, 103, NULL, NULL, NULL, '24.0'),
(1266, 27, 107, NULL, NULL, NULL, '17.0'),
(1267, 24, 107, '18.0', '19.0', '22.0', '23.0'),
(1268, 29, 107, NULL, NULL, NULL, '24.0'),
(1269, 25, 107, '15.0', '16.0', '20.0', '21.0'),
(1270, 26, 107, '15.0', '16.0', '18.0', '19.0'),
(1271, 10, 107, '17.0', '18.0', '20.0', '21.0'),
(1272, 6, 107, NULL, NULL, NULL, '24.0'),
(1273, 27, 108, NULL, NULL, NULL, '17.0'),
(1274, 24, 108, '18.0', '19.0', '22.0', '23.0'),
(1275, 29, 108, NULL, NULL, NULL, '24.0'),
(1276, 25, 108, '15.0', '16.0', '20.0', '21.0'),
(1277, 26, 108, '15.0', '16.0', '18.0', '19.0'),
(1278, 10, 108, '17.0', '18.0', '20.0', '21.0'),
(1279, 6, 108, NULL, NULL, NULL, '24.0'),
(1280, 22, 32, '18.0', '19.0', '24.0', '25.0'),
(1281, 1, 32, '14.0', '15.0', '16.0', '17.0'),
(1282, 2, 109, '13.0', '14.0', '16.0', '17.0'),
(1283, 10, 109, '12.0', '13.0', '17.0', '18.0'),
(1284, 11, 109, '15.0', '16.0', '20.0', '21.0'),
(1285, 12, 109, '10.0', '11.0', '15.0', '16.0'),
(1286, 6, 109, '13.0', '14.0', '20.0', '21.0'),
(1287, 16, 109, '13.0', '14.0', '18.0', '19.0'),
(1288, 39, 34, '6.0', '7.0', '9.0', '10.0'),
(1289, 3, 33, '13.0', '14.0', '17.0', '18.0'),
(1290, 15, 33, '19.0', '20.0', '22.0', '23.0'),
(1291, 4, 33, '22.0', '23.0', '25.0', '26.0'),
(1292, 25, 110, '13.0', '14.0', '22.0', '23.0'),
(1293, 26, 110, '14.0', '15.0', '20.0', '21.0'),
(1294, 24, 110, '14.0', '15.0', '18.0', '19.0'),
(1295, 12, 110, '10.0', '11.0', '15.0', '16.0'),
(1296, 10, 110, '12.0', '13.0', '17.0', '18.0'),
(1297, 11, 110, '15.0', '16.0', '20.0', '21.0'),
(1298, 13, 110, '12.0', '13.0', '14.0', '15.0'),
(1299, 19, 110, '13.0', '14.0', '16.0', '17.0'),
(1300, 31, 110, '16.0', '17.0', '19.0', '20.0'),
(1301, 28, 110, '16.0', '17.0', '20.0', '21.0'),
(1302, 24, 111, '14.0', '15.0', '18.0', '19.0'),
(1303, 27, 111, NULL, NULL, NULL, '15.0'),
(1304, 31, 111, '16.0', '17.0', '19.0', '20.0'),
(1305, 19, 111, '14.0', '15.0', '16.0', '17.0'),
(1306, 28, 111, NULL, NULL, NULL, '20.0'),
(1307, 11, 111, '15.0', '16.0', '20.0', '21.0'),
(1308, 10, 111, '12.0', '13.0', '17.0', '18.0'),
(1309, 36, 111, '19.0', NULL, NULL, '25.0'),
(1310, 29, 111, '28.0', NULL, NULL, '29.0'),
(1311, 26, 111, '14.0', '15.0', '20.0', '21.0'),
(1312, 12, 111, '10.0', '11.0', '15.0', '16.0'),
(1313, 13, 111, '12.0', '13.0', '14.0', '15.0');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analytic_specimen_rejections`
--
ALTER TABLE `analytic_specimen_rejections`
  ADD CONSTRAINT `analytic_specimen_rejections_rejection_reason_id_foreign` FOREIGN KEY (`rejection_reason_id`) REFERENCES `rejection_reasons` (`id`),
  ADD CONSTRAINT `analytic_specimen_rejections_specimen_id_foreign` FOREIGN KEY (`specimen_id`) REFERENCES `specimens` (`id`),
  ADD CONSTRAINT `analytic_specimen_rejections_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `unhls_tests` (`id`);

--
-- Constraints for table `analytic_specimen_rejection_reasons`
--
ALTER TABLE `analytic_specimen_rejection_reasons`
  ADD CONSTRAINT `analytic_specimen_rejection_reasons_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `rejection_reasons` (`id`),
  ADD CONSTRAINT `analytic_specimen_rejection_reasons_rejection_id_foreign` FOREIGN KEY (`rejection_id`) REFERENCES `analytic_specimen_rejections` (`id`),
  ADD CONSTRAINT `analytic_specimen_rejection_reasons_specimen_id_foreign` FOREIGN KEY (`specimen_id`) REFERENCES `analytic_specimen_rejections` (`specimen_id`);

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `commodities`
--
ALTER TABLE `commodities`
  ADD CONSTRAINT `commodities_metric_id_foreign` FOREIGN KEY (`metric_id`) REFERENCES `metrics` (`id`);

--
-- Constraints for table `controls`
--
ALTER TABLE `controls`
  ADD CONSTRAINT `controls_lot_id_foreign` FOREIGN KEY (`lot_id`) REFERENCES `lots` (`id`);

--
-- Constraints for table `control_measures`
--
ALTER TABLE `control_measures`
  ADD CONSTRAINT `control_measures_control_id_foreign` FOREIGN KEY (`control_id`) REFERENCES `controls` (`id`),
  ADD CONSTRAINT `control_measures_control_measure_type_id_foreign` FOREIGN KEY (`control_measure_type_id`) REFERENCES `measure_types` (`id`);

--
-- Constraints for table `control_measure_ranges`
--
ALTER TABLE `control_measure_ranges`
  ADD CONSTRAINT `control_measure_ranges_control_measure_id_foreign` FOREIGN KEY (`control_measure_id`) REFERENCES `control_measures` (`id`);

--
-- Constraints for table `control_results`
--
ALTER TABLE `control_results`
  ADD CONSTRAINT `control_results_control_measure_id_foreign` FOREIGN KEY (`control_measure_id`) REFERENCES `control_measures` (`id`),
  ADD CONSTRAINT `control_results_control_test_id_foreign` FOREIGN KEY (`control_test_id`) REFERENCES `control_tests` (`id`);

--
-- Constraints for table `control_tests`
--
ALTER TABLE `control_tests`
  ADD CONSTRAINT `control_tests_entered_by_foreign` FOREIGN KEY (`entered_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `control_tests_control_id_foreign` FOREIGN KEY (`control_id`) REFERENCES `controls` (`id`);

--
-- Constraints for table `culture_observations`
--
ALTER TABLE `culture_observations`
  ADD CONSTRAINT `culture_observations_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `unhls_tests` (`id`),
  ADD CONSTRAINT `culture_observations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `daily_alphanumeric_counts`
--
ALTER TABLE `daily_alphanumeric_counts`
  ADD CONSTRAINT `daily_alphanumeric_counts_result_interpretation_id_foreign` FOREIGN KEY (`result_interpretation_id`) REFERENCES `result_interpretations` (`id`),
  ADD CONSTRAINT `daily_alphanumeric_counts_daily_test_type_count_id_foreign` FOREIGN KEY (`daily_test_type_count_id`) REFERENCES `daily_test_type_counts` (`id`),
  ADD CONSTRAINT `daily_alphanumeric_counts_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  ADD CONSTRAINT `daily_alphanumeric_counts_measure_range_id_foreign` FOREIGN KEY (`measure_range_id`) REFERENCES `measure_ranges` (`id`);

--
-- Constraints for table `daily_gram_stain_result_counts`
--
ALTER TABLE `daily_gram_stain_result_counts`
  ADD CONSTRAINT `daily_gram_stain_result_counts_daily_test_type_count_id_foreign` FOREIGN KEY (`daily_test_type_count_id`) REFERENCES `daily_test_type_counts` (`id`);

--
-- Constraints for table `daily_hiv_counts`
--
ALTER TABLE `daily_hiv_counts`
  ADD CONSTRAINT `daily_hiv_counts_daily_test_type_count_id_foreign` FOREIGN KEY (`daily_test_type_count_id`) REFERENCES `daily_test_type_counts` (`id`);

--
-- Constraints for table `daily_numeric_range_counts`
--
ALTER TABLE `daily_numeric_range_counts`
  ADD CONSTRAINT `daily_numeric_range_counts_result_interpretation_id_foreign` FOREIGN KEY (`result_interpretation_id`) REFERENCES `result_interpretations` (`id`),
  ADD CONSTRAINT `daily_numeric_range_counts_daily_test_type_count_id_foreign` FOREIGN KEY (`daily_test_type_count_id`) REFERENCES `daily_test_type_counts` (`id`),
  ADD CONSTRAINT `daily_numeric_range_counts_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`);

--
-- Constraints for table `daily_organism_counts`
--
ALTER TABLE `daily_organism_counts`
  ADD CONSTRAINT `daily_organism_counts_result_interpretation_id_foreign` FOREIGN KEY (`result_interpretation_id`) REFERENCES `result_interpretations` (`id`),
  ADD CONSTRAINT `daily_organism_counts_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`);

--
-- Constraints for table `daily_rejection_reason_counts`
--
ALTER TABLE `daily_rejection_reason_counts`
  ADD CONSTRAINT `daily_rejection_reason_counts_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `rejection_reasons` (`id`),
  ADD CONSTRAINT `daily_rejection_reason_counts_daily_specimen_count_id_foreign` FOREIGN KEY (`daily_specimen_count_id`) REFERENCES `daily_specimen_counts` (`id`);

--
-- Constraints for table `daily_specimen_type_counts`
--
ALTER TABLE `daily_specimen_type_counts`
  ADD CONSTRAINT `daily_specimen_type_counts_specimen_type_id_foreign` FOREIGN KEY (`specimen_type_id`) REFERENCES `specimen_types` (`id`),
  ADD CONSTRAINT `daily_specimen_type_counts_daily_specimen_count_id_foreign` FOREIGN KEY (`daily_specimen_count_id`) REFERENCES `daily_specimen_counts` (`id`);

--
-- Constraints for table `daily_susceptibility_counts`
--
ALTER TABLE `daily_susceptibility_counts`
  ADD CONSTRAINT `daily_susceptibility_counts_interpretation_id_foreign` FOREIGN KEY (`interpretation_id`) REFERENCES `drug_susceptibility_measures` (`id`),
  ADD CONSTRAINT `daily_susceptibility_counts_antibiotic_id_foreign` FOREIGN KEY (`antibiotic_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `daily_susceptibility_counts_daily_organism_count_id_foreign` FOREIGN KEY (`daily_organism_count_id`) REFERENCES `daily_organism_counts` (`id`);

--
-- Constraints for table `daily_test_type_counts`
--
ALTER TABLE `daily_test_type_counts`
  ADD CONSTRAINT `daily_test_type_counts_daily_test_count_id_foreign` FOREIGN KEY (`daily_test_count_id`) REFERENCES `daily_test_counts` (`id`),
  ADD CONSTRAINT `daily_test_type_counts_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `daily_turn_around_time`
--
ALTER TABLE `daily_turn_around_time`
  ADD CONSTRAINT `daily_turn_around_time_daily_test_type_count_id_foreign` FOREIGN KEY (`daily_test_type_count_id`) REFERENCES `daily_test_type_counts` (`id`);

--
-- Constraints for table `drug_susceptibility`
--
ALTER TABLE `drug_susceptibility`
  ADD CONSTRAINT `drug_susceptibility_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `drug_susceptibility_drug_susceptibility_measure_id_foreign` FOREIGN KEY (`drug_susceptibility_measure_id`) REFERENCES `drug_susceptibility_measures` (`id`),
  ADD CONSTRAINT `drug_susceptibility_isolated_organism_id_foreign` FOREIGN KEY (`isolated_organism_id`) REFERENCES `isolated_organisms` (`id`),
  ADD CONSTRAINT `drug_susceptibility_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `equip_config`
--
ALTER TABLE `equip_config`
  ADD CONSTRAINT `equip_config_prop_id_foreign` FOREIGN KEY (`prop_id`) REFERENCES `ii_quickcodes` (`id`),
  ADD CONSTRAINT `equip_config_equip_id_foreign` FOREIGN KEY (`equip_id`) REFERENCES `interfaced_equipment` (`id`);

--
-- Constraints for table `external_users`
--
ALTER TABLE `external_users`
  ADD CONSTRAINT `external_users_internal_user_id_foreign` FOREIGN KEY (`internal_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `gram_break_points`
--
ALTER TABLE `gram_break_points`
  ADD CONSTRAINT `gram_break_points_gram_stain_range_id_foreign` FOREIGN KEY (`gram_stain_range_id`) REFERENCES `gram_stain_ranges` (`id`),
  ADD CONSTRAINT `gram_break_points_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`);

--
-- Constraints for table `gram_drug_susceptibility`
--
ALTER TABLE `gram_drug_susceptibility`
  ADD CONSTRAINT `gram_drug_susceptibility_drug_susceptibility_measure_id_foreign` FOREIGN KEY (`drug_susceptibility_measure_id`) REFERENCES `drug_susceptibility_measures` (`id`),
  ADD CONSTRAINT `gram_drug_susceptibility_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `gram_drug_susceptibility_gram_stain_result_id_foreign` FOREIGN KEY (`gram_stain_result_id`) REFERENCES `gram_stain_results` (`id`),
  ADD CONSTRAINT `gram_drug_susceptibility_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `gram_stain_results`
--
ALTER TABLE `gram_stain_results`
  ADD CONSTRAINT `gram_stain_results_gram_stain_range_id_foreign` FOREIGN KEY (`gram_stain_range_id`) REFERENCES `gram_stain_ranges` (`id`),
  ADD CONSTRAINT `gram_stain_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `unhls_tests` (`id`),
  ADD CONSTRAINT `gram_stain_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `instrument_testtypes`
--
ALTER TABLE `instrument_testtypes`
  ADD CONSTRAINT `instrument_testtypes_instrument_id_foreign` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`),
  ADD CONSTRAINT `instrument_testtypes_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `interfaced_equipment`
--
ALTER TABLE `interfaced_equipment`
  ADD CONSTRAINT `interfaced_equipment_lab_section_foreign` FOREIGN KEY (`lab_section`) REFERENCES `test_categories` (`id`);

--
-- Constraints for table `inv_items`
--
ALTER TABLE `inv_items`
  ADD CONSTRAINT `inv_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `inv_supply`
--
ALTER TABLE `inv_supply`
  ADD CONSTRAINT `inv_supply_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `inv_supply_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `inv_items` (`id`),
  ADD CONSTRAINT `inv_supply_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `inv_usage`
--
ALTER TABLE `inv_usage`
  ADD CONSTRAINT `inv_usage_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`),
  ADD CONSTRAINT `inv_usage_stock_id_foreign` FOREIGN KEY (`stock_id`) REFERENCES `inv_supply` (`id`),
  ADD CONSTRAINT `inv_usage_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `isolated_organisms`
--
ALTER TABLE `isolated_organisms`
  ADD CONSTRAINT `isolated_organisms_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`),
  ADD CONSTRAINT `isolated_organisms_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `unhls_tests` (`id`),
  ADD CONSTRAINT `isolated_organisms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `lots`
--
ALTER TABLE `lots`
  ADD CONSTRAINT `lots_instrument_id_foreign` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`);

--
-- Constraints for table `measures`
--
ALTER TABLE `measures`
  ADD CONSTRAINT `measures_measure_type_id_foreign` FOREIGN KEY (`measure_type_id`) REFERENCES `measure_types` (`id`);

--
-- Constraints for table `measure_ranges`
--
ALTER TABLE `measure_ranges`
  ADD CONSTRAINT `measure_ranges_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`);

--
-- Constraints for table `micro_patients_details`
--
ALTER TABLE `micro_patients_details`
  ADD CONSTRAINT `micro_patients_details_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `unhls_patients` (`id`),
  ADD CONSTRAINT `micro_patients_details_district_residence_foreign` FOREIGN KEY (`district_residence`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `micro_patients_details_district_workplace_foreign` FOREIGN KEY (`district_workplace`) REFERENCES `unhls_districts` (`id`);

--
-- Constraints for table `patient_antibiotics`
--
ALTER TABLE `patient_antibiotics`
  ADD CONSTRAINT `patient_antibiotics_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `patient_antibiotics_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `unhls_patients` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`);

--
-- Constraints for table `poc_results`
--
ALTER TABLE `poc_results`
  ADD CONSTRAINT `poc_results_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `poc_tables` (`id`);

--
-- Constraints for table `pre_analytic_specimen_rejections`
--
ALTER TABLE `pre_analytic_specimen_rejections`
  ADD CONSTRAINT `pre_analytic_specimen_rejections_rejection_reason_id_foreign` FOREIGN KEY (`rejection_reason_id`) REFERENCES `rejection_reasons` (`id`),
  ADD CONSTRAINT `pre_analytic_specimen_rejections_specimen_id_foreign` FOREIGN KEY (`specimen_id`) REFERENCES `specimens` (`id`);

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`),
  ADD CONSTRAINT `referrals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `report_diseases`
--
ALTER TABLE `report_diseases`
  ADD CONSTRAINT `report_diseases_disease_id_foreign` FOREIGN KEY (`disease_id`) REFERENCES `diseases` (`id`),
  ADD CONSTRAINT `report_diseases_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `requests_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `inv_items` (`id`),
  ADD CONSTRAINT `requests_test_category_id_foreign` FOREIGN KEY (`test_category_id`) REFERENCES `test_categories` (`id`);

--
-- Constraints for table `specimens`
--
ALTER TABLE `specimens`
  ADD CONSTRAINT `specimens_referral_id_foreign` FOREIGN KEY (`referral_id`) REFERENCES `referrals` (`id`),
  ADD CONSTRAINT `specimens_specimen_status_id_foreign` FOREIGN KEY (`specimen_status_id`) REFERENCES `specimen_statuses` (`id`),
  ADD CONSTRAINT `specimens_specimen_type_id_foreign` FOREIGN KEY (`specimen_type_id`) REFERENCES `specimen_types` (`id`);

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `testtype_measures`
--
ALTER TABLE `testtype_measures`
  ADD CONSTRAINT `testtype_measures_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  ADD CONSTRAINT `testtype_measures_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `testtype_specimentypes`
--
ALTER TABLE `testtype_specimentypes`
  ADD CONSTRAINT `testtype_specimentypes_specimen_type_id_foreign` FOREIGN KEY (`specimen_type_id`) REFERENCES `specimen_types` (`id`),
  ADD CONSTRAINT `testtype_specimentypes_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `test_statuses`
--
ALTER TABLE `test_statuses`
  ADD CONSTRAINT `test_statuses_test_phase_id_foreign` FOREIGN KEY (`test_phase_id`) REFERENCES `test_phases` (`id`);

--
-- Constraints for table `test_types`
--
ALTER TABLE `test_types`
  ADD CONSTRAINT `test_types_test_category_id_foreign` FOREIGN KEY (`test_category_id`) REFERENCES `test_categories` (`id`);

--
-- Constraints for table `unhls_bbincidences`
--
ALTER TABLE `unhls_bbincidences`
  ADD CONSTRAINT `unhls_bbincidences_createdby_foreign` FOREIGN KEY (`createdby`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `unhls_bbincidences_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`);

--
-- Constraints for table `unhls_bbincidences_action`
--
ALTER TABLE `unhls_bbincidences_action`
  ADD CONSTRAINT `unhls_bbincidences_action_action_id_foreign` FOREIGN KEY (`action_id`) REFERENCES `unhls_bbactions` (`id`),
  ADD CONSTRAINT `unhls_bbincidences_action_bbincidence_id_foreign` FOREIGN KEY (`bbincidence_id`) REFERENCES `unhls_bbincidences` (`id`);

--
-- Constraints for table `unhls_bbincidences_cause`
--
ALTER TABLE `unhls_bbincidences_cause`
  ADD CONSTRAINT `unhls_bbincidences_cause_cause_id_foreign` FOREIGN KEY (`cause_id`) REFERENCES `unhls_bbcauses` (`id`),
  ADD CONSTRAINT `unhls_bbincidences_cause_bbincidence_id_foreign` FOREIGN KEY (`bbincidence_id`) REFERENCES `unhls_bbincidences` (`id`);

--
-- Constraints for table `unhls_bbincidences_nature`
--
ALTER TABLE `unhls_bbincidences_nature`
  ADD CONSTRAINT `unhls_bbincidences_nature_nature_id_foreign` FOREIGN KEY (`nature_id`) REFERENCES `unhls_bbnatures` (`id`),
  ADD CONSTRAINT `unhls_bbincidences_nature_bbincidence_id_foreign` FOREIGN KEY (`bbincidence_id`) REFERENCES `unhls_bbincidences` (`id`);

--
-- Constraints for table `unhls_equipment_breakdown`
--
ALTER TABLE `unhls_equipment_breakdown`
  ADD CONSTRAINT `unhls_equipment_breakdown_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_equipment_breakdown_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `unhls_equipment_inventory` (`id`),
  ADD CONSTRAINT `unhls_equipment_breakdown_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`),
  ADD CONSTRAINT `unhls_equipment_breakdown_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `unhls_financial_years` (`id`);

--
-- Constraints for table `unhls_equipment_inventory`
--
ALTER TABLE `unhls_equipment_inventory`
  ADD CONSTRAINT `unhls_equipment_inventory_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `unhls_equipment_suppliers` (`id`),
  ADD CONSTRAINT `unhls_equipment_inventory_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_equipment_inventory_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`),
  ADD CONSTRAINT `unhls_equipment_inventory_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `unhls_financial_years` (`id`);

--
-- Constraints for table `unhls_equipment_maintenance`
--
ALTER TABLE `unhls_equipment_maintenance`
  ADD CONSTRAINT `unhls_equipment_maintenance_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `unhls_equipment_inventory` (`id`),
  ADD CONSTRAINT `unhls_equipment_maintenance_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_equipment_maintenance_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`),
  ADD CONSTRAINT `unhls_equipment_maintenance_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `unhls_financial_years` (`id`);

--
-- Constraints for table `unhls_facilities`
--
ALTER TABLE `unhls_facilities`
  ADD CONSTRAINT `unhls_facilities_ownership_id_foreign` FOREIGN KEY (`ownership_id`) REFERENCES `unhls_facility_ownership` (`id`),
  ADD CONSTRAINT `unhls_facilities_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_facilities_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `unhls_facility_level` (`id`);

--
-- Constraints for table `unhls_staff`
--
ALTER TABLE `unhls_staff`
  ADD CONSTRAINT `unhls_staff_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`);

--
-- Constraints for table `unhls_stockcard`
--
ALTER TABLE `unhls_stockcard`
  ADD CONSTRAINT `unhls_stockcard_commodity_id_foreign` FOREIGN KEY (`commodity_id`) REFERENCES `commodities` (`id`),
  ADD CONSTRAINT `unhls_stockcard_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_stockcard_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`),
  ADD CONSTRAINT `unhls_stockcard_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `unhls_financial_years` (`id`);

--
-- Constraints for table `unhls_stockrequisition`
--
ALTER TABLE `unhls_stockrequisition`
  ADD CONSTRAINT `unhls_stockrequisition_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `commodities` (`id`),
  ADD CONSTRAINT `unhls_stockrequisition_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_stockrequisition_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`),
  ADD CONSTRAINT `unhls_stockrequisition_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `unhls_financial_years` (`id`);

--
-- Constraints for table `unhls_tests`
--
ALTER TABLE `unhls_tests`
  ADD CONSTRAINT `unhls_tests_specimen_id_foreign` FOREIGN KEY (`specimen_id`) REFERENCES `specimens` (`id`),
  ADD CONSTRAINT `unhls_tests_test_status_id_foreign` FOREIGN KEY (`test_status_id`) REFERENCES `test_statuses` (`id`),
  ADD CONSTRAINT `unhls_tests_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`),
  ADD CONSTRAINT `unhls_tests_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `unhls_visits` (`id`);

--
-- Constraints for table `unhls_test_results`
--
ALTER TABLE `unhls_test_results`
  ADD CONSTRAINT `unhls_test_results_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  ADD CONSTRAINT `unhls_test_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `unhls_tests` (`id`);

--
-- Constraints for table `unhls_visits`
--
ALTER TABLE `unhls_visits`
  ADD CONSTRAINT `unhls_visits_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`),
  ADD CONSTRAINT `unhls_visits_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `unhls_patients` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`);

--
-- Constraints for table `zone_diameters`
--
ALTER TABLE `zone_diameters`
  ADD CONSTRAINT `zone_diameters_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`),
  ADD CONSTRAINT `zone_diameters_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
