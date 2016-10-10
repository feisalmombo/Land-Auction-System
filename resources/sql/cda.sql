-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2016 at 04:48 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cda`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_plots_status_report_view`
--
CREATE TABLE `all_plots_status_report_view` (
`areaid` int(10) unsigned
,`areaname` varchar(255)
,`areatypeid` int(10) unsigned
,`areatypename` varchar(255)
,`blockid` int(10) unsigned
,`blockname` varchar(255)
,`plotid` int(10) unsigned
,`plotno` int(11)
,`size` double
,`status` tinyint(3) unsigned
,`price` varchar(255)
,`new_status` varchar(6)
);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `area_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`area_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kisasa East', '2016-10-10 07:59:23', '2016-10-10 07:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `area_assignment`
--

CREATE TABLE `area_assignment` (
  `areas_type_id` int(10) UNSIGNED NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `area_assignment`
--

INSERT INTO `area_assignment` (`areas_type_id`, `area_id`, `price`) VALUES
(1, 1, '5600');

-- --------------------------------------------------------

--
-- Table structure for table `area_image`
--

CREATE TABLE `area_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `area_image`
--

INSERT INTO `area_image` (`id`, `area_id`, `file_name`, `created_at`, `updated_at`) VALUES
(1, 1, '1476086529 - 13533_Image.jpg', '2016-10-10 08:02:09', '2016-10-10 08:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `area_types`
--

CREATE TABLE `area_types` (
  `areas_type_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `area_types`
--

INSERT INTO `area_types` (`areas_type_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Makazi', '2016-10-10 07:59:34', '2016-10-10 07:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `block_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`block_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'A', '2016-10-10 07:59:42', '2016-10-10 07:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `block_assignment`
--

CREATE TABLE `block_assignment` (
  `area_id` int(10) UNSIGNED NOT NULL,
  `areas_type_id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `block_assignment`
--

INSERT INTO `block_assignment` (`area_id`, `areas_type_id`, `block_id`, `file_name`) VALUES
(1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_15_172631_create_plots_table', 1),
('2016_08_15_203738_create_areas_table', 1),
('2016_08_16_003009_create_area_types_table', 1),
('2016_08_16_003218_create_blocks_table', 1),
('2016_08_16_135243_area_assignment', 1),
('2016_08_16_135253_block_assignment', 1),
('2016_08_16_135304_plot_assignment', 1),
('2016_08_19_170045_create_user_details_table', 1),
('2016_08_19_171102_create_user_credentials_table', 1),
('2016_08_19_172025_create_plot_reservation_table', 1),
('2016_08_27_091528_create_plot_status_table', 1),
('2016_08_27_092156_create_plot_transactions_table', 1),
('2016_08_27_145945_create_transaction_numbers_table', 1),
('2016_08_28_080050_create_user_credentials_trigger', 1),
('2016_09_01_151127_create_plot_reservation_view', 1),
('2016_09_05_083423_create_clears_out_plot_status_event', 1),
('2016_09_05_084626_create_update_plot_plot_assigment_trigger', 1),
('2016_09_05_084627_create_area_image', 1),
('2016_09_06_082951_create_plots_selection_main_view', 1),
('2016_09_10_063712_entrust_setup_tables', 1),
('2016_09_10_071747_create_all_plots_status_report_view_table', 1),
('2016_09_10_075127_create_reserved_plots_status_view_table', 1),
('2016_10_10_131342_add_registry_print_status_field_to_plot_reservation_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plots`
--

CREATE TABLE `plots` (
  `plot_id` int(10) UNSIGNED NOT NULL,
  `plot_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plots`
--

INSERT INTO `plots` (`plot_id`, `plot_no`, `created_at`, `updated_at`) VALUES
(1, 1, '2016-10-10 08:05:26', '2016-10-10 08:05:26'),
(2, 2, '2016-10-10 08:05:27', '2016-10-10 08:05:27'),
(3, 3, '2016-10-10 08:05:27', '2016-10-10 08:05:27'),
(4, 4, '2016-10-10 08:05:27', '2016-10-10 08:05:27'),
(5, 5, '2016-10-10 08:05:27', '2016-10-10 08:05:27'),
(6, 6, '2016-10-10 08:05:27', '2016-10-10 08:05:27'),
(7, 7, '2016-10-10 08:05:27', '2016-10-10 08:05:27'),
(8, 8, '2016-10-10 08:05:27', '2016-10-10 08:05:27'),
(9, 9, '2016-10-10 08:05:27', '2016-10-10 08:05:27'),
(10, 10, '2016-10-10 08:05:27', '2016-10-10 08:05:27');

-- --------------------------------------------------------

--
-- Stand-in structure for view `plots_selection_main_view`
--
CREATE TABLE `plots_selection_main_view` (
`areaid` int(10) unsigned
,`areaname` varchar(255)
,`areatypeid` int(10) unsigned
,`areatypename` varchar(255)
,`blockid` int(10) unsigned
,`blockname` varchar(255)
,`plotid` int(10) unsigned
,`plotno` int(11)
,`size` double
,`status` tinyint(3) unsigned
,`price` varchar(255)
,`blockfilename` text
,`areafilename` varchar(255)
,`new_status` varchar(6)
);

-- --------------------------------------------------------

--
-- Table structure for table `plot_assignment`
--

CREATE TABLE `plot_assignment` (
  `area_id` int(10) UNSIGNED NOT NULL,
  `areas_type_id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `plot_id` int(10) UNSIGNED NOT NULL,
  `size` double NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plot_assignment`
--

INSERT INTO `plot_assignment` (`area_id`, `areas_type_id`, `block_id`, `plot_id`, `size`, `status`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 572, 0, 0, NULL, NULL),
(1, 1, 1, 2, 327, 0, 0, NULL, NULL),
(1, 1, 1, 3, 475, 0, 0, NULL, NULL),
(1, 1, 1, 4, 530, 0, 0, NULL, NULL),
(1, 1, 1, 5, 380, 0, 0, NULL, NULL),
(1, 1, 1, 6, 650, 1, 0, NULL, NULL),
(1, 1, 1, 7, 430, 0, 0, NULL, NULL),
(1, 1, 1, 8, 100, 0, 0, NULL, NULL),
(1, 1, 1, 9, 150, 0, 0, NULL, NULL),
(1, 1, 1, 10, 400, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plot_reservation`
--

CREATE TABLE `plot_reservation` (
  `area_id` int(10) UNSIGNED NOT NULL,
  `areas_type_id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `plot_id` int(10) UNSIGNED NOT NULL,
  `user_detail_id` int(10) UNSIGNED NOT NULL,
  `deadline` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(3) UNSIGNED NOT NULL,
  `registry_print_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plot_reservation`
--

INSERT INTO `plot_reservation` (`area_id`, `areas_type_id`, `block_id`, `plot_id`, `user_detail_id`, `deadline`, `created_at`, `status`, `registry_print_status`) VALUES
(1, 1, 1, 6, 1, '2016-10-10 10:29:53', '2016-10-10 10:00:56', 1, 1);

--
-- Triggers `plot_reservation`
--
DELIMITER $$
CREATE TRIGGER `tr_plot_assignment_rollback` BEFORE DELETE ON `plot_reservation` FOR EACH ROW BEGIN
                UPDATE plot_assignment SET plot_assignment.status = 0
                WHERE plot_assignment.area_id = OLD.area_id
                AND plot_assignment.areas_type_id = OLD.areas_type_id
                AND plot_assignment.block_id=OLD.block_id
                AND plot_assignment.plot_id=OLD.plot_id;
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `plot_reservation_view`
--
CREATE TABLE `plot_reservation_view` (
`plot_no` int(11)
,`block` varchar(255)
,`location` varchar(255)
,`land_use` varchar(255)
,`size` double
,`price` varchar(255)
,`total_price` double
,`deadline` timestamp
,`first_name` varchar(255)
,`middle_name` varchar(255)
,`last_name` varchar(255)
,`address` varchar(255)
,`region` varchar(255)
,`created_at` timestamp
,`user_credential_id` int(10) unsigned
,`photo` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `plot_status`
--

CREATE TABLE `plot_status` (
  `area_id` int(10) UNSIGNED NOT NULL,
  `areas_type_id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `plot_id` int(10) UNSIGNED NOT NULL,
  `balance` double NOT NULL,
  `user_detail_id` int(10) UNSIGNED NOT NULL,
  `deadline` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plot_transactions`
--

CREATE TABLE `plot_transactions` (
  `area_id` int(10) UNSIGNED NOT NULL,
  `areas_type_id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `plot_id` int(10) UNSIGNED NOT NULL,
  `transaction_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `user_detail_id` int(10) UNSIGNED NOT NULL,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `reserved_plots_status_view`
--
CREATE TABLE `reserved_plots_status_view` (
`areaid` int(10) unsigned
,`areaname` varchar(255)
,`areatypeid` int(10) unsigned
,`areatypename` varchar(255)
,`blockid` int(10) unsigned
,`blockname` varchar(255)
,`plotid` int(10) unsigned
,`plotno` int(11)
,`size` double
,`status` tinyint(3) unsigned
,`price` varchar(255)
,`total_price` double
,`userdetailid` int(10) unsigned
,`fname` varchar(255)
,`mname` varchar(255)
,`lname` varchar(255)
,`photo` varchar(255)
,`region` varchar(255)
,`address` varchar(255)
,`deadline` timestamp
,`created_at` timestamp
,`registration_status` int(11)
,`new_status` varchar(6)
,`registry_print_status` tinyint(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_numbers`
--

CREATE TABLE `transaction_numbers` (
  `transaction_number_id` int(10) UNSIGNED NOT NULL,
  `transaction_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction_numbers`
--

INSERT INTO `transaction_numbers` (`transaction_number_id`, `transaction_number`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 0, NULL, NULL),
(2, '2', 1, NULL, '2016-10-10 10:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_credentials`
--

CREATE TABLE `user_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_detail_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_credentials`
--

INSERT INTO `user_credentials` (`id`, `username`, `password`, `user_detail_id`, `created_at`, `updated_at`) VALUES
(1, '0769370256', '$2y$10$wzUUU5Be0V8IDmi0KRwRROq2XQh/BKzlD7ryvNUUWSdkT8dIbupNq', 1, '2016-10-10 07:45:32', '2016-10-10 07:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_detail_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ward` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `house_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_detail_id`, `first_name`, `middle_name`, `last_name`, `email_address`, `phone_number`, `password`, `district`, `region`, `ward`, `house_number`, `address`, `photo`, `registration_status`, `created_at`, `updated_at`) VALUES
(1, 'Gagk', 'IRaungaama', 'Lgmbaa hpgi aa', 'IkRago@agfn.com', '0769370256', '$2y$10$wzUUU5Be0V8IDmi0KRwRROq2XQh/BKzlD7ryvNUUWSdkT8dIbupNq', 'Dodoma Mjini', 'Dodoma', 'Kisasa', '357', '259', '1 @ 1476093727 - DSC06775.JPG', 1, '2016-10-10 07:45:32', '2016-10-10 10:02:07');

--
-- Triggers `user_details`
--
DELIMITER $$
CREATE TRIGGER `tr_User_Credentials` AFTER INSERT ON `user_details` FOR EACH ROW BEGIN
                INSERT INTO user_credentials (username, password, user_detail_id, created_at, updated_at) VALUES(NEW.phone_number, NEW.password, NEW.user_detail_id, NOW(), NOW());
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure for view `all_plots_status_report_view`
--
DROP TABLE IF EXISTS `all_plots_status_report_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_plots_status_report_view`  AS  (select `areas`.`area_id` AS `areaid`,`areas`.`name` AS `areaname`,`area_types`.`areas_type_id` AS `areatypeid`,`area_types`.`name` AS `areatypename`,`blocks`.`block_id` AS `blockid`,`blocks`.`name` AS `blockname`,`plots`.`plot_id` AS `plotid`,`plots`.`plot_no` AS `plotno`,`plot_assignment`.`size` AS `size`,`plot_assignment`.`status` AS `status`,`area_assignment`.`price` AS `price`,if((`plot_assignment`.`status` = 1),'Paid','Unpaid') AS `new_status` from ((((((`areas` join `area_assignment`) join `area_types`) join `blocks`) join `block_assignment`) join `plots`) join `plot_assignment`) where ((`areas`.`area_id` = `area_assignment`.`area_id`) and (`area_types`.`areas_type_id` = `area_assignment`.`areas_type_id`) and (`areas`.`area_id` = `area_assignment`.`area_id`) and (`area_types`.`areas_type_id` = `area_assignment`.`areas_type_id`) and (`blocks`.`block_id` = `block_assignment`.`block_id`) and (`area_assignment`.`area_id` = `block_assignment`.`area_id`) and (`area_assignment`.`areas_type_id` = `block_assignment`.`areas_type_id`) and (`plots`.`plot_id` = `plot_assignment`.`plot_id`) and (`block_assignment`.`area_id` = `plot_assignment`.`area_id`) and (`block_assignment`.`areas_type_id` = `plot_assignment`.`areas_type_id`) and (`block_assignment`.`block_id` = `plot_assignment`.`block_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `plots_selection_main_view`
--
DROP TABLE IF EXISTS `plots_selection_main_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `plots_selection_main_view`  AS  (select `areas`.`area_id` AS `areaid`,`areas`.`name` AS `areaname`,`area_types`.`areas_type_id` AS `areatypeid`,`area_types`.`name` AS `areatypename`,`blocks`.`block_id` AS `blockid`,`blocks`.`name` AS `blockname`,`plots`.`plot_id` AS `plotid`,`plots`.`plot_no` AS `plotno`,`plot_assignment`.`size` AS `size`,`plot_assignment`.`status` AS `status`,`area_assignment`.`price` AS `price`,`block_assignment`.`file_name` AS `blockfilename`,`area_image`.`file_name` AS `areafilename`,if((`plot_assignment`.`status` = 1),'Paid','Unpaid') AS `new_status` from (((((((`areas` join `area_assignment`) join `area_types`) join `blocks`) join `block_assignment`) join `plots`) join `plot_assignment`) join `area_image`) where ((`areas`.`area_id` = `area_assignment`.`area_id`) and (`area_types`.`areas_type_id` = `area_assignment`.`areas_type_id`) and (`areas`.`area_id` = `area_assignment`.`area_id`) and (`area_types`.`areas_type_id` = `area_assignment`.`areas_type_id`) and (`blocks`.`block_id` = `block_assignment`.`block_id`) and (`area_assignment`.`area_id` = `block_assignment`.`area_id`) and (`area_assignment`.`areas_type_id` = `block_assignment`.`areas_type_id`) and (`plots`.`plot_id` = `plot_assignment`.`plot_id`) and (`block_assignment`.`area_id` = `plot_assignment`.`area_id`) and (`block_assignment`.`areas_type_id` = `plot_assignment`.`areas_type_id`) and (`block_assignment`.`block_id` = `plot_assignment`.`block_id`) and (`plot_assignment`.`status` = 0) and (`area_image`.`area_id` = `areas`.`area_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `plot_reservation_view`
--
DROP TABLE IF EXISTS `plot_reservation_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `plot_reservation_view`  AS  (select `plots`.`plot_no` AS `plot_no`,`blocks`.`name` AS `block`,`areas`.`name` AS `location`,`area_types`.`name` AS `land_use`,`plot_assignment`.`size` AS `size`,`area_assignment`.`price` AS `price`,(`plot_assignment`.`size` * `area_assignment`.`price`) AS `total_price`,`plot_reservation`.`deadline` AS `deadline`,`user_details`.`first_name` AS `first_name`,`user_details`.`middle_name` AS `middle_name`,`user_details`.`last_name` AS `last_name`,`user_details`.`address` AS `address`,`user_details`.`region` AS `region`,`plot_reservation`.`created_at` AS `created_at`,`plot_reservation`.`user_detail_id` AS `user_credential_id`,`user_details`.`photo` AS `photo` from (((((((`user_details` join `plots`) join `blocks`) join `areas`) join `area_types`) join `plot_assignment`) join `area_assignment`) join `plot_reservation`) where ((`user_details`.`user_detail_id` = `plot_reservation`.`user_detail_id`) and (`plots`.`plot_id` = `plot_reservation`.`plot_id`) and (`blocks`.`block_id` = `plot_reservation`.`block_id`) and (`areas`.`area_id` = `plot_reservation`.`area_id`) and (`area_types`.`areas_type_id` = `plot_reservation`.`areas_type_id`) and (`plot_assignment`.`area_id` = `plot_reservation`.`area_id`) and (`plot_assignment`.`areas_type_id` = `plot_reservation`.`areas_type_id`) and (`plot_assignment`.`block_id` = `plot_reservation`.`block_id`) and (`plot_assignment`.`plot_id` = `plot_reservation`.`plot_id`) and (`area_assignment`.`areas_type_id` = `plot_reservation`.`areas_type_id`) and (`area_assignment`.`area_id` = `plot_reservation`.`area_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `reserved_plots_status_view`
--
DROP TABLE IF EXISTS `reserved_plots_status_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reserved_plots_status_view`  AS  (select `areas`.`area_id` AS `areaid`,`areas`.`name` AS `areaname`,`area_types`.`areas_type_id` AS `areatypeid`,`area_types`.`name` AS `areatypename`,`blocks`.`block_id` AS `blockid`,`blocks`.`name` AS `blockname`,`plots`.`plot_id` AS `plotid`,`plots`.`plot_no` AS `plotno`,`plot_assignment`.`size` AS `size`,`plot_reservation`.`status` AS `status`,`area_assignment`.`price` AS `price`,(`plot_assignment`.`size` * `area_assignment`.`price`) AS `total_price`,`plot_reservation`.`user_detail_id` AS `userdetailid`,`user_details`.`first_name` AS `fname`,`user_details`.`middle_name` AS `mname`,`user_details`.`last_name` AS `lname`,`user_details`.`photo` AS `photo`,`user_details`.`region` AS `region`,`user_details`.`address` AS `address`,`plot_reservation`.`deadline` AS `deadline`,`plot_reservation`.`created_at` AS `created_at`,`user_details`.`registration_status` AS `registration_status`,if((`plot_reservation`.`status` = 1),'Paid','Unpaid') AS `new_status`,`plot_reservation`.`registry_print_status` AS `registry_print_status` from ((((((((`areas` join `area_assignment`) join `area_types`) join `blocks`) join `block_assignment`) join `plots`) join `plot_assignment`) join `user_details`) join `plot_reservation`) where ((`areas`.`area_id` = `area_assignment`.`area_id`) and (`area_types`.`areas_type_id` = `area_assignment`.`areas_type_id`) and (`areas`.`area_id` = `area_assignment`.`area_id`) and (`area_types`.`areas_type_id` = `area_assignment`.`areas_type_id`) and (`blocks`.`block_id` = `block_assignment`.`block_id`) and (`area_assignment`.`area_id` = `block_assignment`.`area_id`) and (`area_assignment`.`areas_type_id` = `block_assignment`.`areas_type_id`) and (`plots`.`plot_id` = `plot_assignment`.`plot_id`) and (`block_assignment`.`area_id` = `plot_assignment`.`area_id`) and (`block_assignment`.`areas_type_id` = `plot_assignment`.`areas_type_id`) and (`block_assignment`.`block_id` = `plot_assignment`.`block_id`) and (`plot_reservation`.`user_detail_id` = `user_details`.`user_detail_id`) and (`plot_reservation`.`area_id` = `plot_assignment`.`area_id`) and (`plot_reservation`.`areas_type_id` = `plot_assignment`.`areas_type_id`) and (`plot_reservation`.`block_id` = `plot_assignment`.`block_id`) and (`plot_reservation`.`plot_id` = `plot_assignment`.`plot_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`area_id`),
  ADD UNIQUE KEY `areas_name_unique` (`name`);

--
-- Indexes for table `area_assignment`
--
ALTER TABLE `area_assignment`
  ADD PRIMARY KEY (`area_id`,`areas_type_id`),
  ADD KEY `area_assignment_areas_type_id_foreign` (`areas_type_id`);

--
-- Indexes for table `area_image`
--
ALTER TABLE `area_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_image_area_id_foreign` (`area_id`);

--
-- Indexes for table `area_types`
--
ALTER TABLE `area_types`
  ADD PRIMARY KEY (`areas_type_id`),
  ADD UNIQUE KEY `area_types_name_unique` (`name`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`block_id`),
  ADD UNIQUE KEY `blocks_name_unique` (`name`);

--
-- Indexes for table `block_assignment`
--
ALTER TABLE `block_assignment`
  ADD PRIMARY KEY (`area_id`,`areas_type_id`,`block_id`),
  ADD KEY `block_assignment_areas_type_id_foreign` (`areas_type_id`),
  ADD KEY `block_assignment_block_id_foreign` (`block_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `plots`
--
ALTER TABLE `plots`
  ADD PRIMARY KEY (`plot_id`),
  ADD UNIQUE KEY `plots_plot_no_unique` (`plot_no`);

--
-- Indexes for table `plot_assignment`
--
ALTER TABLE `plot_assignment`
  ADD PRIMARY KEY (`area_id`,`areas_type_id`,`plot_id`,`block_id`),
  ADD KEY `plot_assignment_areas_type_id_foreign` (`areas_type_id`),
  ADD KEY `plot_assignment_block_id_foreign` (`block_id`),
  ADD KEY `plot_assignment_plot_id_foreign` (`plot_id`);

--
-- Indexes for table `plot_reservation`
--
ALTER TABLE `plot_reservation`
  ADD PRIMARY KEY (`area_id`,`areas_type_id`,`plot_id`,`block_id`),
  ADD KEY `plot_reservation_areas_type_id_foreign` (`areas_type_id`),
  ADD KEY `plot_reservation_block_id_foreign` (`block_id`),
  ADD KEY `plot_reservation_plot_id_foreign` (`plot_id`),
  ADD KEY `plot_reservation_user_detail_id_foreign` (`user_detail_id`);

--
-- Indexes for table `plot_status`
--
ALTER TABLE `plot_status`
  ADD PRIMARY KEY (`area_id`,`areas_type_id`,`plot_id`,`block_id`),
  ADD KEY `plot_status_areas_type_id_foreign` (`areas_type_id`),
  ADD KEY `plot_status_block_id_foreign` (`block_id`),
  ADD KEY `plot_status_plot_id_foreign` (`plot_id`),
  ADD KEY `plot_status_user_detail_id_foreign` (`user_detail_id`);

--
-- Indexes for table `plot_transactions`
--
ALTER TABLE `plot_transactions`
  ADD UNIQUE KEY `plot_transactions_transaction_number_unique` (`transaction_number`),
  ADD KEY `plot_transactions_area_id_foreign` (`area_id`),
  ADD KEY `plot_transactions_areas_type_id_foreign` (`areas_type_id`),
  ADD KEY `plot_transactions_block_id_foreign` (`block_id`),
  ADD KEY `plot_transactions_plot_id_foreign` (`plot_id`),
  ADD KEY `plot_transactions_user_detail_id_foreign` (`user_detail_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `transaction_numbers`
--
ALTER TABLE `transaction_numbers`
  ADD PRIMARY KEY (`transaction_number_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_credentials_user_detail_id_foreign` (`user_detail_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_detail_id`),
  ADD UNIQUE KEY `user_details_email_address_unique` (`email_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `area_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `area_image`
--
ALTER TABLE `area_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `area_types`
--
ALTER TABLE `area_types`
  MODIFY `areas_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `block_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plots`
--
ALTER TABLE `plots`
  MODIFY `plot_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transaction_numbers`
--
ALTER TABLE `transaction_numbers`
  MODIFY `transaction_number_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_credentials`
--
ALTER TABLE `user_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `area_assignment`
--
ALTER TABLE `area_assignment`
  ADD CONSTRAINT `area_assignment_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`area_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `area_assignment_areas_type_id_foreign` FOREIGN KEY (`areas_type_id`) REFERENCES `area_types` (`areas_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `area_image`
--
ALTER TABLE `area_image`
  ADD CONSTRAINT `area_image_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`area_id`) ON UPDATE CASCADE;

--
-- Constraints for table `block_assignment`
--
ALTER TABLE `block_assignment`
  ADD CONSTRAINT `block_assignment_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `area_assignment` (`area_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `block_assignment_areas_type_id_foreign` FOREIGN KEY (`areas_type_id`) REFERENCES `area_assignment` (`areas_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `block_assignment_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`block_id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plot_assignment`
--
ALTER TABLE `plot_assignment`
  ADD CONSTRAINT `plot_assignment_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `block_assignment` (`area_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_assignment_areas_type_id_foreign` FOREIGN KEY (`areas_type_id`) REFERENCES `block_assignment` (`areas_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_assignment_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `block_assignment` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_assignment_plot_id_foreign` FOREIGN KEY (`plot_id`) REFERENCES `plots` (`plot_id`) ON DELETE CASCADE;

--
-- Constraints for table `plot_reservation`
--
ALTER TABLE `plot_reservation`
  ADD CONSTRAINT `plot_reservation_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `plot_assignment` (`area_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_reservation_areas_type_id_foreign` FOREIGN KEY (`areas_type_id`) REFERENCES `plot_assignment` (`areas_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_reservation_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `plot_assignment` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_reservation_plot_id_foreign` FOREIGN KEY (`plot_id`) REFERENCES `plot_assignment` (`plot_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_reservation_user_detail_id_foreign` FOREIGN KEY (`user_detail_id`) REFERENCES `user_details` (`user_detail_id`) ON DELETE CASCADE;

--
-- Constraints for table `plot_status`
--
ALTER TABLE `plot_status`
  ADD CONSTRAINT `plot_status_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `plot_assignment` (`area_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_status_areas_type_id_foreign` FOREIGN KEY (`areas_type_id`) REFERENCES `plot_assignment` (`areas_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_status_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `plot_assignment` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_status_plot_id_foreign` FOREIGN KEY (`plot_id`) REFERENCES `plot_assignment` (`plot_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_status_user_detail_id_foreign` FOREIGN KEY (`user_detail_id`) REFERENCES `user_details` (`user_detail_id`) ON DELETE CASCADE;

--
-- Constraints for table `plot_transactions`
--
ALTER TABLE `plot_transactions`
  ADD CONSTRAINT `plot_transactions_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `plot_reservation` (`area_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_transactions_areas_type_id_foreign` FOREIGN KEY (`areas_type_id`) REFERENCES `plot_reservation` (`areas_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_transactions_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `plot_reservation` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_transactions_plot_id_foreign` FOREIGN KEY (`plot_id`) REFERENCES `plot_reservation` (`plot_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plot_transactions_user_detail_id_foreign` FOREIGN KEY (`user_detail_id`) REFERENCES `user_details` (`user_detail_id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_detail_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD CONSTRAINT `user_credentials_user_detail_id_foreign` FOREIGN KEY (`user_detail_id`) REFERENCES `user_details` (`user_detail_id`) ON DELETE CASCADE;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `e_hourly` ON SCHEDULE EVERY 3 MINUTE STARTS '2016-10-10 10:36:58' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
                DELETE FROM plot_reservation WHERE plot_reservation.status = 0 AND
                NOW()>=ADDTIME(plot_reservation.created_at, '0:03:00');
            END$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
