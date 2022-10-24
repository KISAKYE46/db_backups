-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2022 at 11:02 AM
-- Server version: 5.6.23-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seagatee_workers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `admin_profile_image` varchar(255) NOT NULL DEFAULT 'user.jpg',
  `password` varchar(255) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `power` int(12) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `name`, `contact`, `email`, `admin_profile_image`, `password`, `token`, `power`, `created_by`, `status`, `create_date`) VALUES
(2, 'Elogu Augustine', '0782236705', NULL, '1199853399643198925305975853WhatsApp Image 2022-10-13 at 4.13.46 PM.jpeg', '2e99bf4e42962410038bc6fa4ce40d97', '2647', 1, 1, 'active', '2022-10-04 13:11:14'),
(3, 'Seagate Administrator', '0712345678', NULL, '1131746634514574815784058673user1-128x128.jpg', '2e99bf4e42962410038bc6fa4ce40d97', NULL, 0, 1, 'active', '2022-10-05 16:20:26'),
(4, 'Samuel Twinemasiko', '0787776686', NULL, 'user.jpg', '6003c5642557b4932b2c3f177dc2d4f9', NULL, 0, 2, 'active', '2022-10-11 10:36:02'),
(5, 'SSERUNJOGI MIKE', '0706516091', NULL, 'user.jpg', '6003c5642557b4932b2c3f177dc2d4f9', NULL, 0, 4, 'active', '2022-10-13 15:13:46'),
(6, 'Seaget', '0708847386', 'nkanjijoel@gmail.com', 'user.jpg', '2e99bf4e42962410038bc6fa4ce40d97', NULL, 1, 1, 'active', '2022-10-14 04:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `department_desc` text NOT NULL,
  `department_create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `status`, `department_desc`, `department_create_date`) VALUES
(2, 'Government Services', 'active', 'For Government services', '2022-10-03 14:54:55'),
(3, 'Corporate Services', 'active', 'Corporate services', '2022-10-03 14:55:17'),
(4, 'Zuku FTTX', 'active', 'For Zuku', '2022-10-03 14:55:38'),
(5, 'Admin', 'active', 'For administrators', '2022-10-03 14:55:55'),
(6, 'FTTX- MTN', 'active', 'For MTN', '2022-10-03 14:56:20'),
(7, 'Transport', 'active', 'Transport Department', '2022-10-03 14:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `designation_desc` text NOT NULL,
  `designation_create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`designation_id`, `designation_name`, `status`, `designation_desc`, `designation_create_date`) VALUES
(4, 'Mansion', 'active', 'For mansions', '2022-10-03 14:57:31'),
(5, 'Installation Technician', 'active', 'For installers', '2022-10-03 14:57:56'),
(6, 'Team Leader', 'active', 'For team leaders', '2022-10-03 14:58:18'),
(7, 'Receptionist', 'active', 'Receptionists', '2022-10-03 14:58:40'),
(8, 'Drafts Man', 'active', 'For Drafts Men', '2022-10-03 14:58:59'),
(9, 'Project Manager', 'active', 'Project Managers', '2022-10-03 14:59:25'),
(10, 'Customer Support', 'active', 'Customers support', '2022-10-03 14:59:38'),
(11, 'Project Engineer', 'active', 'For Engineers of projects', '2022-10-03 15:00:15'),
(12, 'Store Manager', 'active', 'Manages Stores', '2022-10-03 15:00:41'),
(13, 'Cleaner', 'active', 'Cleaning works', '2022-10-03 15:01:23'),
(14, 'Project Administrator', 'active', 'For Projects Admins', '2022-10-03 15:01:55'),
(15, 'Field Supervisor', 'active', 'For supervision', '2022-10-03 15:02:10'),
(16, 'Driver', 'active', 'Driving Person', '2022-10-03 15:02:27'),
(17, 'Project Coordinator', 'active', 'Coordinates projects', '2022-10-03 15:02:50'),
(18, 'Procurement Officer', 'active', 'Procurement officer', '2022-10-03 15:04:08'),
(19, 'Project Accountant', 'active', 'For Accounting Managements', '2022-10-03 15:04:44'),
(20, 'Fleet Manager', 'active', 'Managing Fleets', '2022-10-03 15:05:06'),
(21, 'Security Person', 'active', 'For security', '2022-10-03 15:05:27'),
(22, 'Sales and Marketting', 'active', 'For sales and Marketing', '2022-10-03 15:05:54'),
(23, 'Human Resource Officer', 'active', 'For human resource Management', '2022-10-03 15:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `employee_gender` varchar(255) NOT NULL DEFAULT 'male',
  `contact` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employee_image` varchar(255) NOT NULL DEFAULT 'user.jpg',
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `designation_id`, `department_id`, `name`, `employee_gender`, `contact`, `password`, `status`, `create_date`, `employee_image`, `token`) VALUES
(32, 18, 5, 'Nanjobe Merab', 'male', '0783258929', 'd00b2a03cfe5bf77a35d77a71e112e79', 'active', '2022-10-11 12:23:32', 'user.jpg', NULL),
(33, 14, 6, 'kasule marvin', 'male', '0786956613', '50bd04f9b81b5f14ea7e3f245beba64e', 'active', '2022-10-11 12:28:23', 'user.jpg', NULL),
(34, 12, 5, 'KASULE ERIFAZI ', 'male', '0783435420', 'd27ac55b60e6f1d7b3e0094d597cbdbb', 'active', '2022-10-11 12:29:24', 'user.jpg', '8633'),
(35, 9, 3, 'Dennis Kigozi ', 'male', '0777120737', '79009c38313a6491f03c78697caaa36e', 'active', '2022-10-11 12:30:07', 'user.jpg', NULL),
(36, 14, 6, 'Mutekanaga George Kassi ', 'male', '0761917260', '2a40d3b4f87522eb7aa1bfeec6a5d00c', 'active', '2022-10-11 12:30:09', 'user.jpg', NULL),
(37, 9, 2, 'Augustine Elogu', 'male', '0782236705', '64b195fb84193a4027ca98f0bac36cc7', 'active', '2022-10-11 12:30:40', 'user.jpg', NULL),
(38, 8, 6, 'Bwayo Derrick Phillip', 'male', '+256787174255', 'fc7424af3678b5a7c4072151b31610d9', 'active', '2022-10-11 12:30:51', 'user.jpg', NULL),
(39, 9, 4, 'Akulepi Robert ', 'male', '0784828223', '5d11a764faa60be8cc249019a4075002', 'active', '2022-10-11 12:30:53', 'user.jpg', NULL),
(40, 19, 5, 'NAMPEERA SHAMIM ', 'male', '0750584306', '7a15bbae40235186fe4f1deac349e014', 'active', '2022-10-11 12:32:35', 'user.jpg', NULL),
(41, 7, 5, 'Bazizane sylivia ', 'male', '0775433420', 'e02d31ad9818ba7656938cc39de19bce', 'active', '2022-10-11 12:50:41', 'user.jpg', NULL),
(42, 11, 6, 'BYAMUKAMA ', 'male', '0775458213', 'e421c9454377aa1324a794d4331634a7', 'active', '2022-10-11 18:08:44', 'user.jpg', NULL),
(43, 16, 7, 'senjala. ahmisi', 'male', '0772205151', '1fa333dc4c613a08cf42ba9ea7c1baae', 'active', '2022-10-13 10:59:12', 'user.jpg', NULL),
(44, 16, 7, 'Mayanja Bob', 'male', '0781878616', 'c728c762c354379c8cca9caa25c384da', 'active', '2022-10-13 11:17:27', 'user.jpg', NULL),
(45, 5, 6, 'Kafero Newton nasif ', 'male', '0760681604', '32685ac34894444639cd4dda065069ad', 'active', '2022-10-13 11:41:09', 'user.jpg', NULL),
(46, 5, 4, 'WERE NUHU', 'male', '0789266389', 'a1a9f303cb108ea0241b88ae6039491e', 'active', '2022-10-13 11:43:42', 'user.jpg', NULL),
(47, 5, 3, 'Ndiwalana Frank', 'male', '0775349061', '8f65c82368b9ac3c5c14e456c9b92b35', 'active', '2022-10-13 11:47:11', 'user.jpg', NULL),
(48, 5, 4, 'KIMERA NOBERT ', 'male', '+256773064788', '1a7fe3564e6e39d9058dece4e606986e', 'active', '2022-10-13 11:58:32', 'user.jpg', NULL),
(49, 5, 4, 'AYIKOBUA GILBERT', 'male', '0772574585', '476d4aebd40139a9dc80e8b26d16cf32', 'active', '2022-10-13 13:04:03', 'user.jpg', '0838'),
(50, 16, 5, 'James Kawooya ', 'male', '0775593300', '510cd91d372bb8722cb4ad6f4633d562', 'active', '2022-10-13 14:49:47', 'user.jpg', NULL),
(51, 5, 4, 'OMUL MAXWEL ', 'male', '0773190865', 'e4a1b85dd4a2674f46891baf412121ea', 'active', '2022-10-13 16:31:19', 'user.jpg', '0312'),
(52, 5, 4, 'Aliyo Benard', 'male', '0708669927', 'c5bc14f9b1be1dba089e43f22c7daf4a', 'active', '2022-10-14 04:41:35', 'user.jpg', '4318'),
(54, 5, 6, 'kulubya Sunde ', 'male', '0775192105', 'f49a2373c2912df5ec26c3aec9c221db', 'active', '2022-10-14 06:34:10', 'user.jpg', NULL),
(55, 15, 6, 'NYAKUNI SIMON ', 'male', '0782410969', '7192392767481258aba7b6ec8486c7b2', 'active', '2022-10-14 06:43:33', 'user.jpg', NULL),
(56, 4, 2, 'abega Nixon AYI ', 'male', '0771801722', '50e952932456bf35bdb605d3c24fcc23', 'active', '2022-10-14 06:43:57', 'user.jpg', NULL),
(57, 14, 2, 'Farid Said Muwonge ', 'male', '0701645194', '4113e161aabc2b51dc2c3d5d5277140b', 'active', '2022-10-14 08:01:09', 'user.jpg', '1622'),
(59, 9, 6, 'SSERUNJOGI MIKE ', 'male', '0775023461', '997a4522fba04e8be6e78576ca6ae66b', 'active', '2022-10-14 20:22:51', 'user.jpg', NULL),
(60, 6, 4, 'KABUNGA RONALD', 'male', '0772017141', '8c0a51b4ca6a59ee9535214631fd5e1d', 'active', '2022-10-15 04:49:32', 'user.jpg', NULL),
(61, 10, 4, 'Nalubuga Patricia Doreen', 'male', '0706539595', '6bc4ee0a1acd57a606055d14f084b6c7', 'active', '2022-10-15 05:23:44', 'user.jpg', NULL),
(62, 11, 3, 'Audam Ismail Hassan', 'male', '0779706292', '0186a39254387e5a27dabb352e329a67', 'active', '2022-10-15 06:52:00', 'user.jpg', NULL),
(63, 5, 4, 'Adiga Samuel ', 'male', '0772840826', '31345467d92a21e00a20886964f1adc7', 'active', '2022-10-15 07:04:58', 'user.jpg', NULL),
(64, 5, 6, 'Mukose Nelson ', 'male', '+256779704927', 'c24366bf1d6b67bae5908af928a335d4', 'active', '2022-10-15 07:08:59', 'user.jpg', '2719'),
(65, 5, 4, 'karungi conard', 'male', '0784114772', 'cc1a160e38f278ac836e9fbae6f29194', 'active', '2022-10-15 07:11:48', 'user.jpg', NULL),
(66, 5, 6, 'Mukose Nelson ', 'male', '+256785377177', 'bd12897a34cb05f10bb220a635af9620', 'active', '2022-10-15 07:15:26', 'user.jpg', NULL),
(67, 15, 6, 'Stephen okello ', 'male', '0782965457', '5c96a27831763edb3f42d9532eae230a', 'active', '2022-10-15 07:20:53', 'user.jpg', NULL),
(68, 5, 4, 'Kabona Ali', 'male', '0758489580', '248dba5d9c34263ea015a05572d9d447', 'active', '2022-10-16 17:50:53', 'user.jpg', NULL),
(69, 5, 6, 'Sendawula Dennis ', 'male', '0753223238', 'eabb93be38727860c01f97b172c53c0e', 'active', '2022-10-17 07:15:26', 'user.jpg', NULL),
(70, 13, 2, 'Test User', 'male', '0758179068', '139301eefbca2f6540bf4c023a1d6921', 'active', '2022-10-17 12:19:12', 'user.jpg', NULL),
(71, 5, 6, 'Kiige Daniel', 'male', '0774225387', '116013f87948ba04fc826b63b18ecbe0', 'active', '2022-10-21 09:13:58', 'user.jpg', NULL),
(72, 10, 4, 'NAKAJUBI HASIFA', 'male', '0704467736', '74efd3dd976a863adc9b7e62b28e4351', 'active', '2022-10-21 10:02:59', 'user.jpg', '8813'),
(73, 5, 3, 'Aluka Muhammad ', 'male', '0775887305', '6583617f68840b9aef4ea4e078f35484', 'active', '2022-10-21 13:33:17', 'user.jpg', NULL),
(74, 16, 7, 'mayanja bob', 'male', '0772522663', '58b1216b06850385d9a4eadbedc806c4', 'active', '2022-10-22 05:14:16', 'user.jpg', NULL),
(75, 5, 4, 'KIMERA NOBERT ', 'male', '0773064788', '1a7fe3564e6e39d9058dece4e606986e', 'active', '2022-10-22 05:58:54', 'user.jpg', NULL),
(76, 4, 2, 'Wasswa Jotham', 'male', '0701370823', '2e99bf4e42962410038bc6fa4ce40d97', 'active', '2022-10-22 06:04:03', 'user.jpg', '1647'),
(77, 5, 4, 'muhumuza Edrisa ', 'male', '0787424184', 'fb2c122760428547bbe280b3ec713db8', 'active', '2022-10-24 05:36:40', 'user.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `task_desc` text NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `location_x` double NOT NULL,
  `location_y` double NOT NULL,
  `employee_id` int(11) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout_time` timestamp NULL DEFAULT NULL,
  `login_district` varchar(255) NOT NULL DEFAULT 'Unknown',
  `login_city` varchar(255) NOT NULL DEFAULT 'Unknown',
  `logout_district` varchar(255) NOT NULL DEFAULT 'Unknown',
  `logout_details` text,
  `login_full_details` text,
  `logout_city` varchar(255) NOT NULL DEFAULT 'Unknown',
  `logout_location_x` double DEFAULT NULL,
  `logout_location_y` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `task_name`, `task_desc`, `location_name`, `location_x`, `location_y`, `employee_id`, `login_time`, `logout_time`, `login_district`, `login_city`, `logout_district`, `logout_details`, `login_full_details`, `logout_city`, `logout_location_x`, `logout_location_y`) VALUES
(35, 'Rendering Projects', 'Looking at previous projects', 'Kampala', 0.3333, 32.3344, 5, '2022-10-03 14:48:35', '2022-09-29 14:50:22', 'Unknown', 'Unknown', 'Unknown', 'Nansana', 'Nansana', 'Unknown', 0.34232, 32.3445),
(36, 'Replacing machines', 'We shall replace all outdated materials.', 'Wakiso', 0.301418, 32.5335649, 9, '2022-10-05 14:33:14', '2022-10-05 20:37:36', 'Kampala', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3014177, 32.5335664),
(53, 'Task Completion', 'Doing All tasks of the day.', 'Kampala', 0, 0, 9, '2022-10-08 19:37:17', '2022-10-08 19:38:25', 'Kampala', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3014157, 32.5335795),
(54, 'geoloacation', 'marketing now', 'Ndeeba', 0.3014155, 32.5335796, 11, '2022-10-08 19:48:49', '2022-10-08 19:50:06', 'Kampala', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3014136, 32.5335716),
(55, 'Project planning', 'We shall plan on the next projects for company\r\n', 'Kampala', 0, 0, 12, '2022-10-08 20:13:16', '2022-10-08 20:14:12', 'Kampala', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.301416, 32.5335759),
(56, 'Wiring ', 'Netting and submasking ', 'Wakiso', 0, 0, 13, '2022-10-09 00:53:47', '2022-10-09 03:00:00', 'Wakiso', 'Kampala', 'Wakiso', NULL, 'Wakiso, Kampala on Unknown road', 'Kampala', NULL, NULL),
(57, 'development ', 'Software development. ', 'Kajjansi', 0.253353, 32.5625504, 13, '2022-10-09 12:04:22', '2022-10-09 23:09:18', 'Wakiso', 'Kampala', 'Wakiso', 'Wakiso, Kampala on Unknown road', 'Wakiso, Kampala on Unknown road', 'Kampala', 0.2910985, 32.5715614),
(58, 'Field Research', 'We shall do research in the field', 'Wakiso', 0, 0, 15, '2022-10-09 12:19:14', '2022-10-09 22:53:11', 'Wakiso', 'Kampala', 'Wakiso', 'Kampala, Kampala on Unknown road', 'Wakiso, Kampala on Unknown road', 'Kampala', 0.298899, 32.5341802),
(59, 'Workshop', 'Looking for clients ', 'Kampala', 0, 0, 17, '2022-10-09 12:22:03', '2022-10-09 20:49:31', 'Kampala', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3014097, 32.5335728),
(60, 'Roofing', 'Housing finance', 'Najjanakumbi', 0.2909848, 32.5714345, 14, '2022-10-09 12:24:08', '2022-10-09 15:42:33', 'Wakiso', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Wakiso, Kampala on Unknown road', 'Kampala', 0.301412, 32.5335715),
(61, 'Vendoring', 'Doing it all ', 'Ndeeba', 0.293097, 32.5703901, 16, '2022-10-09 12:31:19', '2022-10-09 18:14:20', 'Central Region', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Central Region, Kampala on Unknown road', 'Kampala', 0.3014119, 32.5335713),
(62, 'Project planning', 'We shall plan on the next project.', 'Kampala', 0, 0, 11, '2022-10-09 12:38:15', '2022-10-09 23:00:00', 'Kampala', 'Kampala', 'Kampala', NULL, 'Kampala, Kampala on Unknown road', 'Kampala', NULL, NULL),
(63, 'Network management', 'We shall be managing all networks of Busega town.', 'Kampala', 0, 0, 12, '2022-10-09 18:13:26', '2022-10-09 23:10:18', 'Kampala', 'Kampala', 'Kampala', 'Wakiso, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.285118, 32.5682449),
(64, 'Machinary Research', 'Here we shall try to find out the best machinery for our company ', 'Wakiso', 0, 0, 11, '2022-10-10 12:02:08', '2022-10-10 23:00:00', 'Wakiso', 'Unknown', 'Wakiso', NULL, 'Wakiso, Unknown on Unknown road', 'Unknown', NULL, NULL),
(65, 'getting', 'Mtn api', 'kibuye', 0.2950575, 32.5725932, 14, '2022-10-10 13:07:59', NULL, 'Central Region', 'Kampala', 'Unknown', NULL, 'Central Region, Kampala on Wansanso (zone) road', 'Unknown', NULL, NULL),
(66, 'getting', 'Mtn api', 'katwe', 0.297252, 32.5741961, 14, '2022-10-10 13:08:37', NULL, 'Central Region', 'Kampala', 'Unknown', NULL, 'Central Region, Kampala on Unknown road', 'Unknown', NULL, NULL),
(67, 'Server installation', 'That is it ', 'Arya park', 0.3183389, 32.5742106, 17, '2022-10-10 13:31:24', NULL, 'Central Region', 'Kampala', 'Unknown', NULL, 'Central Region, Kampala on Unknown road', 'Unknown', NULL, NULL),
(68, 'FTTH NANSUBUGA', 'Pole installation ', 'kisaasi ', 0.3419046, 32.5672195, 18, '2022-10-10 14:53:22', '2022-10-10 15:00:55', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Central Region, Kampala on Unknown road', 'Kampala', 0.3422261, 32.5674793),
(71, 'Wiring and Fablication', 'Doing wiring', 'Unknown', 0, 0, 9, '2022-10-11 04:20:38', '2022-10-11 23:00:00', 'Unknown', 'Unknown', 'Unknown', NULL, 'Un available', 'Unknown', NULL, NULL),
(72, 'destination', 'Travel and management', 'Nateete ', 0.3013752, 32.5335392, 11, '2022-10-11 12:46:03', NULL, 'Kampala', 'Kampala', 'Unknown', NULL, 'Kampala, Kampala on Unknown road', 'Unknown', NULL, NULL),
(73, 'googling ', 'Netting and masking ', 'busega', 0.3013757, 32.5335368, 14, '2022-10-11 13:24:35', '2022-10-11 16:59:47', 'Kampala', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3013716, 32.5335358),
(74, 'MTN COW Deployment, Simbanet & UPF', 'Dispatch team & COW to Oil region\nFollow up with ongoing Simbanet civil works\nImpiger FAC follow up', 'Office', 0.3421671, 32.5675447, 20, '2022-10-11 14:02:45', NULL, 'Kampala', 'Kampala', 'Unknown', NULL, 'Kampala, Kampala on Unknown road', 'Unknown', NULL, NULL),
(75, 'Zuku team deployments ', 'New customer Connections, Material Mobilization from Zuku ware house, MBTS deployment support, Purchasing Tools for MBTS project \n\n\n', 'Kampala ', 0.3157537, 32.5733949, 31, '2022-10-11 17:19:26', NULL, 'Central Region', 'Kampala', 'Unknown', NULL, 'Central Region, Kampala on Unknown road', 'Unknown', NULL, NULL),
(89, 'MTN Wakanet ', 'closing clients in the mtn portal and formulating the daily report ', 'office ', 0.3421669, 32.5675411, 36, '2022-10-13 22:20:17', NULL, 'Kampala', 'Kampala', 'Unknown', NULL, 'Kampala, Kampala on Unknown road', 'Unknown', NULL, NULL),
(90, 'documentation ', 'boq extraction', 'office', 0.3422254, 32.5675471, 33, '2022-10-14 23:07:36', '2022-10-15 03:34:47', 'Kampala', 'Kampala', 'Wakiso', 'Wakiso, Kikajo on Unknown road', 'Kampala, Kampala on Unknown road', 'Kikajo', 0.2627123, 32.5742039),
(91, 'making reports extractions of AFSs', 'making reports \nextractions of AFSs', 'home ', 0.3290226, 32.4713145, 36, '2022-10-14 23:19:08', '2022-10-15 06:15:36', 'Wakiso', 'Kalambi_kiwumu', 'Wakiso', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Kalambi_kiwumu', 0.3314932, 32.4748523),
(92, 'FTTH STELLA', 'cable installation ', 'kisaasi', 0.2637066, 32.3762018, 58, '2022-10-15 03:04:35', '2022-10-15 03:06:49', 'Mpigi', 'Kiwamirembe', 'Mpigi', 'Mpigi, Kiwamirembe on Kiwamirembe road', 'Mpigi, Kiwamirembe on Kiwamirembe road', 'Kiwamirembe', 0.2639673, 32.3759476),
(93, 'MTN-FTTX', 'MTN progress meeting\nFTTX project management, reports and quotations', 'katende ', 0.2635917, 32.3759117, 59, '2022-10-15 11:20:22', '2022-10-15 22:07:17', 'Mpigi', 'Kiwamirembe', 'Kampala', 'Kampala, Kampala on Unknown road', 'Mpigi, Kiwamirembe on Kiwamirembe road', 'Kampala', 0.2944202, 32.5515543),
(94, 'MTN FTTX ', 'SITE CHECK AND ACCEPTANCE ', 'ALL CLUSTERS ', 0.26231, 32.6254667, 55, '2022-10-15 12:00:35', '2022-10-15 21:12:45', 'Central Region', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Central Region, Kampala on Unknown road', 'Kampala', 0.3113107, 32.577106),
(95, 'Zuku FTTH PROJECT ', 'Teams Deployment, Track works being done, Ensure customer Satisfaction ( Supervision), Coordinate with Zuku team for smooth operations. ', 'Working remotely from home. ', 0.4966333, 32.542815, 39, '2022-10-15 12:04:54', '2022-10-16 00:51:30', 'Wakiso', 'Nalusuga', 'Wakiso', 'Wakiso, Nalusuga on Unknown road', 'Wakiso, Nalusuga on Unknown road', 'Nalusuga', 0.4970633, 32.5400083),
(96, 'FTTX', 'Drawings and Reports', 'Home', 0.3046179, 32.6395786, 38, '2022-10-15 12:19:36', NULL, 'Kampala', 'Kampala', 'Unknown', NULL, 'Kampala, Kampala on Unknown road', 'Unknown', NULL, NULL),
(97, 'Stores Department ', 'Stores work ', 'warehouse makerere ', 0.3427073, 32.5679075, 34, '2022-10-15 12:21:13', NULL, 'Central Region', 'Kampala', 'Unknown', NULL, 'Central Region, Kampala on Makerere Kavule road', 'Unknown', NULL, NULL),
(98, 'clients activation ', '.clients activation \n.updating the material reconstruction excel\n.', 'home ', 0.3347393, 32.4667384, 36, '2022-10-15 12:54:22', '2022-10-16 04:03:38', 'Wakiso', 'Kalambi_kiwumu', 'Wakiso', 'Wakiso, Kalambi_kiwumu on Kalambi_kiwumu road', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Kalambi_kiwumu', 0.3384839, 32.4653001),
(99, 'FTTH ', 'installation kyosh bugolobi ', 'bugolobi ', 0.3393217, 32.5698167, 42, '2022-10-15 13:04:15', '2022-10-16 02:39:23', 'Central Region', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Central Region, Kampala on Unknown road', 'Kampala', 0.3061533, 32.5180867),
(100, 'survey', 'kisaasi kira namugongo kulambiro bweyogerer', 'kira', 0.427, 32.6442267, 54, '2022-10-15 13:22:14', '2022-10-15 18:44:51', 'Wakiso', 'Kira', 'Wakiso', 'Wakiso, Seeta on Buwate road', 'Wakiso, Kira on Unknown road', 'Seeta', 0.4154, 32.6153117),
(101, 'zuku project ', 'new installation of new clients and supports', 'muyenga and lubow', 0.342262, 32.5675913, 60, '2022-10-15 13:59:41', '2022-10-16 00:39:10', 'Kampala', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3278183, 32.54453),
(102, 'zuku project ', 'connection of new clients ', 'muyenga and lubowa', 0.342262, 32.5675913, 63, '2022-10-15 14:09:32', '2022-10-16 00:43:13', 'Kampala', 'Kampala', 'Central Region', 'Central Region, Kampala on Nsooba road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.34973, 32.569965),
(103, 'zuku FTTH', 'customer connections and maintenance ', 'Munyonyo ', 0.2957897, 32.6238879, 52, '2022-10-15 14:09:50', '2022-10-16 02:25:46', 'Kampala', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.2953133, 32.6233818),
(104, 'kjambo Adjuman and Elegu', 'LTE cpe installation and configuration\nrouter configuration ', 'kjambo Adjuman and Elegu', 3.3745133, 31.7874933, 62, '2022-10-15 14:11:27', NULL, 'Adjumani', 'Pavuraga Cell', 'Unknown', NULL, 'Adjumani, Pavuraga Cell on Pavuraga Cell road', 'Unknown', NULL, NULL),
(105, 'zuku FTTH', 'customer connections and maintenance ', 'Munyonyo ', 0.2959199, 32.6240186, 65, '2022-10-15 14:12:49', '2022-10-16 02:27:18', 'Central Region', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Central Region, Kampala on Unknown road', 'Kampala', 0.2954698, 32.6237036),
(106, 'MTN/survey ', 'survey ', 'kololo and bukoto ', 0.3428496, 32.5583086, 67, '2022-10-15 14:24:13', '2022-10-15 21:48:00', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Central Region, Kampala on Makerere Kavule road', 'Kampala', 0.3364551, 32.6046706),
(107, 'FTTH', 'client: sendiwala , service provisioning (installation)', 'Bugolobi @ princes Anne raise ', 0.3193154, 32.6198763, 64, '2022-10-15 15:05:16', '2022-10-16 00:08:39', 'Kampala', 'Kampala', 'Central Region', 'Central Region, Kampala on Kisaasi road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3662493, 32.604605),
(108, 'documentation ', 'QUOTATION EXTRACTION', 'namasuba', 0.2627875, 32.5741782, 33, '2022-10-15 18:01:39', '2022-10-16 04:12:36', 'Wakiso', 'Kikajo', 'Wakiso', 'Wakiso, Kikajo on Unknown road', 'Wakiso, Kikajo on Unknown road', 'Kikajo', 0.262775, 32.5742),
(109, 'clients activation ', 'clients activation \nhelping out Deric with us excel work ', 'home ', 0.3151528, 32.5234665, 36, '2022-10-16 11:23:01', '2022-10-17 05:59:30', 'Central Region', 'Kampala', 'Wakiso', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Central Region, Kampala on Busega road', 'Kalambi_kiwumu', 0.3347704, 32.4667991),
(110, 'FTTH/O', 'project management and documentation ', 'katende', 0.2636783, 32.3762117, 59, '2022-10-16 11:59:32', '2022-10-16 22:52:29', 'Mpigi', 'Kiwamirembe', 'Mpigi', 'Mpigi, Kiwamirembe on Kiwamirembe road', 'Mpigi, Kiwamirembe on Kiwamirembe road', 'Kiwamirembe', 0.26364, 32.3760083),
(111, 'MTN FTTX ', 'SITE CHECKS AND ACCEPTANCE .', 'ALL CLUSTERS ', 0.2619, 32.6257383, 55, '2022-10-16 12:23:14', '2022-10-16 16:16:02', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Central Region, Kampala on Ggaba road', 'Kampala', 0.3112377, 32.5772022),
(112, 'GOVERMENT SERVICES ', 'CABLE HAULING.', 'COMMUNICATION HOUSE .', 0.2717785, 32.6180631, 56, '2022-10-16 12:27:58', '2022-10-16 15:30:42', 'Kampala', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3127711, 32.58436),
(113, 'FTTH', 'Drawings, and Pole database, kmz', 'Home', 0.2923323, 32.6273584, 38, '2022-10-16 13:23:24', '2022-10-17 01:58:51', 'Central Region', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Central Region, Kampala on Kyeitabya road', 'Kampala', 0.2952542, 32.625096),
(115, 'LTE cpe installation -Elegu', 'internet installation', 'Elegu', 3.3758117, 31.79473, 62, '2022-10-16 14:14:32', NULL, 'Adjumani', 'Unknown', 'Unknown', NULL, 'Adjumani, Unknown on Unknown road', 'Unknown', NULL, NULL),
(116, 'FTTH Zuku', 'Customer connections and maintenance', 'Munyonyo cluster', 0.26642, 32.6163332, 49, '2022-10-16 14:27:47', '2022-10-17 00:48:45', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Namungoona road', 'Central Region, Kampala on Katuuso road', 'Kampala', 0.3284183, 32.5393117),
(117, 'FTTH ', 'Katanga client ', 'Katanga ', 0.3506517, 32.5952517, 42, '2022-10-16 15:44:07', '2022-10-17 01:51:38', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Central Region, Kampala on Kabira road', 'Kampala', 0.357635, 32.58315),
(118, 'Buwaate FTTH clients ', 'cable stringing traffic rauting and commissioning ', 'Buwaate ', 0.3547267, 32.61259, 45, '2022-10-16 17:52:34', NULL, 'Central Region', 'Kampala', 'Unknown', NULL, 'Central Region, Kampala on Unknown road', 'Unknown', NULL, NULL),
(119, 'documents ', 'facs and pacs ', 'home ', 0.2627146, 32.574144, 33, '2022-10-16 19:56:30', NULL, 'Wakiso', 'Kikajo', 'Unknown', NULL, 'Wakiso, Kikajo on Unknown road', 'Unknown', NULL, NULL),
(120, 'FTTH routing traffic ', 'site : Jamirah Nakuya and Ayele on bombo road and kamokya respectively ', 'Bombo road and kamokya Acasa  place ', 0.3311526, 32.5743568, 64, '2022-10-16 20:01:29', '2022-10-17 01:06:00', 'Central Region', 'Kampala', 'Wakiso', 'Wakiso, Naalya Estate Village on Naalya Estate Village road', 'Central Region, Kampala on Unknown road', 'Naalya Estate Village', 0.3643648, 32.6406382),
(121, 'completing clients ', 'clients activation ', 'office and to home ', 0.3422459, 32.567552, 36, '2022-10-17 22:46:13', '2022-10-18 04:39:55', 'Kampala', 'Kampala', 'Wakiso', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Kampala, Kampala on Unknown road', 'Kalambi_kiwumu', 0.3290226, 32.4713145),
(122, 'FTTX', 'Kmz', 'home', 0.2952542, 32.625096, 38, '2022-10-18 01:33:05', '2022-10-18 03:51:24', 'Kampala', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.2919983, 32.6269947),
(123, 'completion of clients ', 'MTN WAKENATE \n', 'home ', 0.3348396, 32.4668213, 36, '2022-10-18 23:01:36', '2022-10-19 06:13:00', 'Wakiso', 'Kalambi_kiwumu', 'Wakiso', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Kalambi_kiwumu', 0.3346832, 32.466654),
(124, 'FTTH', 'Drawings FTTH', 'Buliisa ', 2.1184403, 31.4124854, 38, '2022-10-19 02:19:52', '2022-10-19 03:28:11', 'Buliisa', 'Bulisa', 'Buliisa', 'Buliisa, Bulisa on Bulisa road', 'Buliisa, Bulisa on Bulisa road', 'Bulisa', 2.1183695, 31.4125095),
(125, 'documents ', 'facs\npass\nreports', 'office ', 0.3423711, 32.5675906, 33, '2022-10-19 22:29:35', '2022-10-20 04:34:17', 'Central Region', 'Kampala', 'Wakiso', 'Wakiso, Kikajo on Unknown road', 'Central Region, Kampala on Unknown road', 'Kikajo', 0.262722, 32.5741903),
(126, 'daily reports ', 'Daily reports and activation of clients ', 'office and at home ', 0.3421669, 32.5675411, 36, '2022-10-19 22:40:02', '2022-10-20 06:27:36', 'Kampala', 'Kampala', 'Wakiso', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Kampala, Kampala on Unknown road', 'Kalambi_kiwumu', 0.3290226, 32.4713145),
(127, 'Tilenga', 'Tilenga Oil Project Drawing', 'Buliisa', 2.118186, 31.4128981, 38, '2022-10-19 23:58:49', NULL, 'Buliisa', 'Bulisa', 'Unknown', NULL, 'Buliisa, Bulisa on Bulisa road', 'Unknown', NULL, NULL),
(128, 'Zuku', 'Project Management ', 'Office ', 0.3422649, 32.5676, 39, '2022-10-20 22:05:57', '2022-10-20 22:08:31', 'Kampala', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3422641, 32.5676003),
(129, 'daily reports and activation of clients ', 'activate clients \nand making daily reports ', 'home ', 0.3348375, 32.4667005, 36, '2022-10-20 23:54:31', '2022-10-21 04:23:48', 'Wakiso', 'Kalambi_kiwumu', 'Wakiso', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Kalambi_kiwumu', 0.3348849, 32.4666987),
(130, 'Tilenga project', 'designs ', 'Buliisa', 2.1182526, 31.4128383, 38, '2022-10-21 00:24:43', '2022-10-21 04:13:46', 'Buliisa', 'Bulisa', 'Buliisa', 'Buliisa, Bulisa on Bulisa road', 'Buliisa, Bulisa on Bulisa road', 'Bulisa', 2.1184315, 31.4124776),
(131, 'zuku', 'customer support', 'office', 0.3422649, 32.5676, 72, '2022-10-21 17:05:53', NULL, 'Kampala', 'Kampala', 'Unknown', NULL, 'Kampala, Kampala on Unknown road', 'Unknown', NULL, NULL),
(132, 'Daily Report and clients activation ', 'FTTH and FTTO/FTTB Daily report \nand Client activation', 'Home ', 0.3377412, 32.4645924, 36, '2022-10-21 22:45:41', '2022-10-22 05:14:34', 'Wakiso', 'Kalambi_kiwumu', 'Wakiso', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Wakiso, Kalambi_kiwumu on Kalambi_kiwumu road', 'Kalambi_kiwumu', 0.3347777, 32.4666567),
(133, 'Tilenga', 'Designs and documentation', 'Buliisa', 2.1186683, 31.4128767, 38, '2022-10-22 00:13:50', '2022-10-22 04:11:33', 'Buliisa', 'Bulisa', 'Buliisa', 'Buliisa, Bulisa on Bulisa road', 'Buliisa, Bulisa on Bulisa road', 'Bulisa', 2.1183794, 31.4123528),
(134, 'documents ', 'facs\npass\nboq extraction ', 'office ', 0.3422367, 32.5675741, 33, '2022-10-22 00:24:20', NULL, 'Kampala', 'Kampala', 'Unknown', NULL, 'Kampala, Kampala on Unknown road', 'Unknown', NULL, NULL),
(135, 'ftth', 'manhole excavation and custing ', 'nakawa', 0.2887547, 32.6066296, 56, '2022-10-22 11:12:31', '2022-10-22 20:11:24', 'Central Region', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Central Region, Kampala on Unknown road', 'Kampala', 0.3131073, 32.584048),
(136, 'Activating clients on the Waknet daily reports formulating AFCs', 'Activating clients on the Waknet \ndaily reports \nformulating AFCs\n', 'Home ', 0.3347238, 32.4669152, 36, '2022-10-22 12:05:54', '2022-10-23 03:23:16', 'Wakiso', 'Kalambi_kiwumu', 'Wakiso', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Kalambi_kiwumu', 0.3347954, 32.4668747),
(137, 'Tilenga project', 'Designs completion ', 'buliisa', 2.1245843, 31.4122238, 38, '2022-10-22 12:08:42', NULL, 'Buliisa', 'Kirama', 'Unknown', NULL, 'Buliisa, Kirama on Kirama road', 'Unknown', NULL, NULL),
(138, 'Zuku FTTH ', 'customer connections and maintenance ', 'munyonyo cluster', 0.2957542, 32.623683, 52, '2022-10-22 12:13:31', '2022-10-23 01:34:08', 'Kampala', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.295661, 32.6242395),
(139, 'Zuku FTTH ', 'customer connections and maintenance ', 'munyonyo cluster', 0.2954973, 32.6233124, 65, '2022-10-22 12:15:55', '2022-10-23 01:35:37', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Central Region, Kampala on Unknown road', 'Kampala', 0.2959704, 32.6240483),
(140, 'FTTH', 'delivery of material ', 'nakawa', 0.3420661, 32.5676697, 74, '2022-10-22 12:17:09', '2022-10-22 20:25:49', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Central Region, Kampala on Unknown road', 'Kampala', 0.3423771, 32.5674188),
(141, 'Zuku FTTH ', 'Deploy teams, Manage Escalations, Coordinate and Supervise Teams remotely. ', 'WFH', 0.4966433, 32.5426467, 39, '2022-10-22 12:25:58', '2022-10-23 10:53:44', 'Wakiso', 'Nalusuga', 'Wakiso', 'Wakiso, Nalusuga on Unknown road', 'Wakiso, Nalusuga on Unknown road', 'Nalusuga', 0.4966317, 32.542575),
(142, 'FTTB', 'ecotel kyambogo\n', 'kyambogo ', 0.3890744, 32.5629014, 42, '2022-10-22 12:31:49', '2022-10-23 10:48:27', 'Wakiso', 'Kampala', 'Wakiso', 'Wakiso, Tula on Tula road', 'Wakiso, Kampala on Unknown road', 'Tula', 0.3908344, 32.5625157),
(143, 'MTN FTTH', 'project management, monitoring and documentation ', 'katende', 0.260295, 32.37372, 59, '2022-10-22 12:42:21', '2022-10-22 23:17:59', 'Mpigi', 'Mabuye', 'Mpigi', 'Mpigi, Kiwamirembe on Kiwamirembe road', 'Mpigi, Mabuye on Mabuye road', 'Kiwamirembe', 0.2671367, 32.3786067),
(144, 'warehouse ', 'stores work ', 'stores ', 0.3418187, 32.5660365, 34, '2022-10-22 12:43:12', '2022-10-22 19:05:59', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Central Region, Kampala on Unknown road', 'Kampala', 0.3418067, 32.567405),
(145, 'zuku / Simba net', 'cable hauling and new installations', 'Kampala ,lubowa and bunga', 0.3422639, 32.5676, 60, '2022-10-22 12:54:59', '2022-10-23 01:55:07', 'Kampala', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3286317, 32.54363),
(146, 'Zuku/Simba project', 'Fibre haulling and zuku installations.', 'Bunga.lubowa and DTB.', 0.3422639, 32.5675989, 63, '2022-10-22 12:57:47', '2022-10-23 00:40:19', 'Kampala', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3339271, 32.5731998),
(147, 'FTTH ', 'client: Mawejje Ben Kerry ,fibre installation ', 'kisaasi', 0.3421692, 32.5675368, 64, '2022-10-22 13:31:23', '2022-10-22 23:32:22', 'Kampala', 'Kampala', 'Central Region', 'Central Region, Kampala on Komamboga road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3840683, 32.5896),
(148, 'ftth ', 'survey ', 'kamomboga/kirra', 0.3391733, 32.6047061, 67, '2022-10-22 13:34:55', '2022-10-22 21:42:34', 'Kampala', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.3741898, 32.6248658),
(149, 'zuku', 'dispatching work orders', 'home office ', 0.4273618, 32.451147, 72, '2022-10-22 13:49:13', '2022-10-23 03:02:20', 'Wakiso', 'Nsekwa Musisi', 'Wakiso', 'Wakiso, Kakunyu on Kakunyu road', 'Wakiso, Nsekwa Musisi on Nsekwa Musisi road', 'Kakunyu', 0.4240648, 32.463531),
(150, 'documents ', 'facs', 'home', 0.2627422, 32.5741779, 33, '2022-10-22 16:12:11', NULL, 'Wakiso', 'Kikajo', 'Unknown', NULL, 'Wakiso, Kikajo on Unknown road', 'Unknown', NULL, NULL),
(151, 'ftth ', 'trenching ', 'nakawa ', 0.2677699, 32.6218834, 56, '2022-10-23 11:45:28', '2022-10-23 22:29:17', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Kiruddu road', 'Central Region, Kampala on Unknown road', 'Kampala', 0.25708, 32.62457),
(152, 'zuku', 'dispatching work orders', 'home office', 0.2794206, 32.4614082, 72, '2022-10-23 12:28:11', '2022-10-24 03:25:03', 'Wakiso', 'Nsangi', 'Wakiso', 'Wakiso, Kakunyu on Kakunyu road', 'Wakiso, Nsangi on Nsangi road', 'Kakunyu', 0.4245547, 32.4653001),
(153, 'zuku FTTH ', 'customer connections and maintenance ', 'munyonyo cluster', 0.2957542, 32.623683, 52, '2022-10-23 12:36:33', '2022-10-24 01:49:56', 'Kampala', 'Kampala', 'Kampala', 'Kampala, Kampala on Unknown road', 'Kampala, Kampala on Unknown road', 'Kampala', 0.2957542, 32.623683),
(154, 'zuku FTTH ', 'customer connections and maintenance ', 'munyonyo cluster', 0.2954737, 32.6232999, 65, '2022-10-23 12:38:28', '2022-10-24 01:51:20', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Unknown road', 'Central Region, Kampala on Unknown road', 'Kampala', 0.295501, 32.6233108),
(155, 'ZUKU FTTH', 'Customer connections and maintenance', 'Munyonyo cluster', 0.3282517, 32.5393033, 49, '2022-10-23 12:56:31', '2022-10-23 23:23:24', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Namungoona road', 'Central Region, Kampala on Lugala road', 'Kampala', 0.3283632, 32.5392785),
(156, 'ZUKU FTTH', 'Customer connections and maintenance', 'Munyonyo cluster', 0.32824, 32.5395433, 68, '2022-10-23 12:58:50', '2022-10-23 23:24:08', 'Central Region', 'Kampala', 'Central Region', 'Central Region, Kampala on Namungoona road', 'Central Region, Kampala on Namungoona road', 'Kampala', 0.3283633, 32.5392783),
(157, 'Bluestone ( FTTH client)', 'cable stringing traffic rauting and commissioning ', 'Naalya ', 0.3421688, 32.5675328, 45, '2022-10-23 13:06:47', '2022-10-23 20:06:33', 'Kampala', 'Kampala', 'Wakiso', 'Wakiso, Kyaliwajala B on Unknown road', 'Kampala, Kampala on Unknown road', 'Kyaliwajala B', 0.3787193, 32.6452409),
(158, 'Tilenga', 'designs for phase one', 'Home ', 0.2921143, 32.6262927, 38, '2022-10-23 13:09:30', NULL, 'Central Region', 'Kampala', 'Unknown', NULL, 'Central Region, Kampala on Unknown road', 'Unknown', NULL, NULL),
(159, 'daily reports and clients activation ', 'Making daily reports \ncompleting clients in the portal ', 'home ', 0.3347084, 32.4669509, 36, '2022-10-23 13:33:06', '2022-10-24 02:38:16', 'Wakiso', 'Kalambi_kiwumu', 'Wakiso', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Wakiso, Kalambi_kiwumu on Kiwumu road', 'Kalambi_kiwumu', 0.3348705, 32.4669177),
(160, 'ZUKU FTTH ', 'maintenance and Installation ', 'MUNYONYO CLUSTER ', 0.3422643, 32.5676004, 75, '2022-10-24 12:25:31', NULL, 'Kampala', 'Kampala', 'Unknown', NULL, 'Kampala, Kampala on Unknown road', 'Unknown', NULL, NULL),
(161, 'Zuku FTTH', 'maintenance and connection ', 'munyonyo cluster ', 0.3422641, 32.5676003, 77, '2022-10-24 12:41:32', NULL, 'Kampala', 'Kampala', 'Unknown', NULL, 'Kampala, Kampala on Unknown road', 'Unknown', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
