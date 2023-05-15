-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 04:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhome`
--

-- --------------------------------------------------------

--
-- Table structure for table `age`
--

CREATE TABLE `age` (
  `age` int(3) NOT NULL,
  `healthMod` float NOT NULL,
  `carMod` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `age`
--

INSERT INTO `age` (`age`, `healthMod`, `carMod`) VALUES
(16, 0.758, 3.51),
(17, 0.758, 3.01),
(18, 0.758, 2.63),
(19, 0.758, 2.07),
(20, 0.758, 1.8),
(21, 0.758, 1.5),
(25, 0.758, 1),
(35, 0.888, 0.143),
(45, 1, 0.825),
(55, 1.398, 0.759),
(65, 2.123, 0.783),
(75, 2.123, 0.945),
(85, 2.123, 1.198);

-- --------------------------------------------------------

--
-- Table structure for table `auto`
--

CREATE TABLE `auto` (
  `aiID` int(11) NOT NULL,
  `vendID` varchar(50) NOT NULL,
  `vendName` varchar(50) NOT NULL,
  `vendType` varchar(20) NOT NULL,
  `coverageType` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auto`
--

INSERT INTO `auto` (`aiID`, `vendID`, `vendName`, `vendType`, `coverageType`, `price`, `create_datetime`) VALUES
(1, '14', 'demoAI', 'auto', 'Liability', 1, '2023-05-01 16:46:30'),
(2, '14', 'demoAI', 'auto', 'Liability', 1, '2023-05-01 16:51:56'),
(3, '14', 'demoAI', 'auto', 'Liability', 3, '2023-05-03 17:41:03'),
(4, '14', 'demoAI', 'auto', 'Liability', 3, '2023-05-03 17:47:20'),
(5, '14', 'demoAI', 'auto', 'Liability', 3, '2023-05-03 17:48:21'),
(6, '14', 'demoAI', 'auto', 'Liability', 3, '2023-05-03 17:49:11'),
(7, '14', 'demoAI', 'auto', 'Liability', 3, '2023-05-03 17:49:53'),
(8, '14', 'demoAI', 'auto', 'Liability', 3, '2023-05-03 17:54:12'),
(9, '14', 'demoAI', 'auto', 'Full', 10, '2023-05-03 17:55:02'),
(10, '14', 'demoAI', 'auto', 'Full', 10, '2023-05-03 17:55:15'),
(11, '14', 'demoAI', 'auto', 'Full', 20, '2023-05-03 17:55:21'),
(12, '14', 'demoAI', 'auto', 'Full', 20, '2023-05-03 17:56:27'),
(13, '14', 'demoAI', 'auto', 'Full', 20, '2023-05-03 17:56:53'),
(14, '14', 'demoAI', 'auto', 'Full', 20, '2023-05-03 17:57:04'),
(15, '14', 'demoAI', 'auto', 'Liability', 20, '2023-05-03 19:00:42'),
(16, '14', 'demoAI', 'auto', 'Liability', 20, '2023-05-03 19:00:50'),
(17, '14', 'demoAI', 'auto', 'Liability', 20, '2023-05-03 19:03:42'),
(18, '14', 'demoAI', 'auto', 'Liability', 20, '2023-05-03 19:04:07'),
(19, '14', 'demoAI', 'auto', 'Full', 12, '2023-05-03 19:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `cell_services`
--

CREATE TABLE `cell_services` (
  `csID` int(11) NOT NULL,
  `vendID` int(11) NOT NULL,
  `vendName` varchar(50) NOT NULL,
  `vendType` varchar(50) NOT NULL,
  `roamingData` int(50) NOT NULL,
  `hotspot` varchar(50) NOT NULL,
  `text_n_talk` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cell_services`
--

INSERT INTO `cell_services` (`csID`, `vendID`, `vendName`, `vendType`, `roamingData`, `hotspot`, `text_n_talk`, `price`, `create_datetime`) VALUES
(25, 2, 'demoCS', 'cell_services', 25, '12', '10', 12, '2023-04-20 01:22:55'),
(26, 2, 'demoCS', 'cell_services', 25, '12', '10', 12, '2023-04-20 01:22:58'),
(27, 2, 'demoCS', 'cell_services', 10, 'YES', 'unlimited', 25, '2023-04-20 01:23:37'),
(28, 2, 'demoCS', 'cell_services', 10, 'YES', 'unlimited', 25, '2023-04-20 01:23:53'),
(29, 2, 'demoCS', 'cell_services', 10, 'YES', 'unlimited', 25, '2023-04-20 01:23:58'),
(30, 2, 'demoCS', 'cell_services', 10, 'YES', 'unlimited', 25, '2023-04-20 01:24:03'),
(31, 2, 'demoCS', 'cell_services', 25, '25', '35', 25, '2023-04-24 22:01:16'),
(32, 2, 'demoCS', 'cell_services', 25, '25', '35', 25, '2023-04-24 22:01:17'),
(33, 2, 'demoCS', 'cell_services', 13131, '13131', '13131', 13131, '2023-04-24 22:25:13'),
(34, 2, 'demoCS', 'cell_services', 13131, '13131', '13131', 13131, '2023-04-24 22:25:19'),
(35, 2, 'demoCS', 'cell_services', 25, '25', '35', 25, '2023-04-24 22:27:51'),
(36, 2, 'demoCS', 'cell_services', 56, '56', '56', 56, '2023-04-24 22:30:25'),
(37, 2, 'demoCS', 'cell_services', 56, '56', '56', 56, '2023-04-25 03:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `health_insurance`
--

CREATE TABLE `health_insurance` (
  `hiID` int(11) NOT NULL,
  `vendID` int(11) NOT NULL,
  `vendName` varchar(50) NOT NULL,
  `vendType` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `PlanLevel` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_insurance`
--

INSERT INTO `health_insurance` (`hiID`, `vendID`, `vendName`, `vendType`, `Type`, `PlanLevel`, `Price`, `create_datetime`) VALUES
(1, 13, 'demoHI', 'health_insurance', 'HMO', 'Gold', 1, '2023-05-01 16:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `home_insurance`
--

CREATE TABLE `home_insurance` (
  `hoiID` int(11) NOT NULL,
  `vendID` int(11) NOT NULL,
  `vendName` varchar(50) NOT NULL,
  `vendType` varchar(50) NOT NULL,
  `earthquake` varchar(3) NOT NULL,
  `flood` varchar(3) NOT NULL,
  `FullReplace` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_insurance`
--

INSERT INTO `home_insurance` (`hoiID`, `vendID`, `vendName`, `vendType`, `earthquake`, `flood`, `FullReplace`, `price`, `create_datetime`) VALUES
(4, 17, 'demoHOI', 'home_insurance', 'No', 'No', 'Replacement', 1, '2023-05-13 03:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `housekeeping`
--

CREATE TABLE `housekeeping` (
  `hsID` int(11) NOT NULL,
  `vendID` int(11) NOT NULL,
  `vendName` varchar(50) NOT NULL,
  `vendType` varchar(50) NOT NULL,
  `willMeals` varchar(3) NOT NULL,
  `willWindowPolish` varchar(3) NOT NULL,
  `willLaundry` varchar(3) NOT NULL,
  `willDeepClean` varchar(3) NOT NULL,
  `price` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `housekeeping`
--

INSERT INTO `housekeeping` (`hsID`, `vendID`, `vendName`, `vendType`, `willMeals`, `willWindowPolish`, `willLaundry`, `willDeepClean`, `price`, `create_datetime`) VALUES
(0, 19, 'demoHS', 'Housekeeping', 'Yes', 'Yes', 'Yes', 'Yes', 1, '2023-05-15 00:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `internet_services`
--

CREATE TABLE `internet_services` (
  `isID` int(11) NOT NULL,
  `vendID` varchar(50) NOT NULL,
  `vendName` varchar(50) NOT NULL,
  `vendType` varchar(50) NOT NULL,
  `uploadSpeed` int(50) NOT NULL,
  `downloadSpeed` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internet_services`
--

INSERT INTO `internet_services` (`isID`, `vendID`, `vendName`, `vendType`, `uploadSpeed`, `downloadSpeed`, `Price`, `type`, `create_datetime`) VALUES
(1, '3', 'demoIS', 'internet_services', 100, 100, 1, '', '2023-04-19 22:25:05'),
(2, '3', 'demoIS', 'internet_services', 100, 100, 1, '', '2023-04-19 22:25:07'),
(3, '3', 'demoIS', 'internet_services', 500, 500, 1, '', '2023-04-20 15:13:18'),
(4, '9', 'demoIS', 'internet_services', 5000, 5000, 1, 'Cable', '2023-05-01 08:45:47'),
(5, '9', 'demoIS', 'internet_services', 5000, 5000, 1, 'Cable', '2023-05-01 08:46:14'),
(6, '9', 'demoIS', 'internet_services', 5000, 5000, 1, 'Cable', '2023-05-01 08:46:52'),
(7, '9', 'demoIS', 'internet_services', 5000, 5000, 1, 'Cable', '2023-05-01 08:47:35'),
(8, '9', 'demoIS', 'internet_services', 5000, 5000, 1, 'Cable', '2023-05-01 08:47:55'),
(9, '9', 'demoIS', 'internet_services', 5000, 5000, 1, 'Cable', '2023-05-01 08:48:07'),
(10, '9', 'demoIS', 'internet_services', 5000, 5000, 1, 'Cable', '2023-05-01 08:48:32'),
(11, '9', 'demoIS', 'internet_services', 5000, 5000, 1, 'Cable', '2023-05-01 08:51:28'),
(12, '9', 'demoIS', 'internet_services', 1000, 1000, 1, 'Satellite', '2023-05-01 08:51:45'),
(13, '9', 'demoIS', 'internet_services', 1000, 1000, 1, 'Satellite', '2023-05-01 08:51:51'),
(14, '9', 'demoIS', 'internet_services', 1000, 1000, 1, 'Satellite', '2023-05-01 08:52:14'),
(15, '9', 'demoIS', 'internet_services', 1000, 1000, 1, 'Satellite', '2023-05-01 08:52:23'),
(16, '9', 'demoIS', 'internet_services', 888, 888, 1, 'Satellite', '2023-05-01 09:17:20'),
(17, '9', 'demoIS', 'internet_services', 888, 888, 1, 'Satellite', '2023-05-01 09:17:32'),
(18, '9', 'demoIS', 'internet_services', 888, 888, 1, 'Satellite', '2023-05-01 09:17:39'),
(19, '9', 'demoIS', 'internet_services', 888, 888, 1, 'Satellite', '2023-05-01 09:19:11'),
(20, '9', 'demoIS', 'internet_services', 888, 888, 1, 'Satellite', '2023-05-01 09:21:02'),
(21, '9', 'demoIS', 'internet_services', 888, 888, 1, 'Satellite', '2023-05-01 09:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `lawncare`
--

CREATE TABLE `lawncare` (
  `lcID` int(11) NOT NULL,
  `vendID` int(11) NOT NULL,
  `vendName` varchar(50) NOT NULL,
  `vendType` varchar(50) NOT NULL,
  `willAerate` varchar(3) NOT NULL,
  `willWeed` varchar(3) NOT NULL,
  `willCleanPool` varchar(3) NOT NULL,
  `willKillPests` varchar(3) NOT NULL,
  `price` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lawncare`
--

INSERT INTO `lawncare` (`lcID`, `vendID`, `vendName`, `vendType`, `willAerate`, `willWeed`, `willCleanPool`, `willKillPests`, `price`, `create_datetime`) VALUES
(0, 18, 'demoLC', 'Lawncare', 'No', 'No', 'No', 'No', 1, '2023-05-13 03:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_04_30_234257_CreatePasswordResetsTable', 2);

-- --------------------------------------------------------

--
-- Table structure for table `needs`
--

CREATE TABLE `needs` (
  `needID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `service_type` varchar(50) NOT NULL,
  `priceCeiling` int(50) NOT NULL,
  `priceFloor` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('bpwalko@gmail.com', 'M5qHXhW0VGYtGzC30GIVLtPFiS4SxQ8Zehm8dBNwBxV6MrFf2KtnImUl3BfXF5wV', '2023-05-01 06:49:29'),
('bpwalko@gmail.com', 'WDT8mkKb9yAm30IfAlNAZ9lyvDuboswwtODxPGnWJvNTgH6bpPrdI0moV56aB3NL', '2023-05-02 01:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `create_datetime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `vendName` varchar(50) NOT NULL,
  `userID` int(11) NOT NULL,
  `vendType` varchar(50) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `create_datetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`vendName`, `userID`, `vendType`, `serviceID`, `create_datetime`) VALUES
('aiID', 9, 'auto', 2, 2023),
('csID', 9, 'cell_services', 30, 2023),
('hiID', 9, 'health_insurance', 1, 2023),
('hoiID', 9, 'home_insurance', 4, 2023),
('hsID', 9, 'housekeeping', 0, 2023),
('isID', 9, 'internet_services', 15, 2023),
('lcID', 9, 'lawncare', 0, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `State` varchar(50) NOT NULL,
  `health` int(11) NOT NULL,
  `car_liability` int(11) NOT NULL,
  `car_full` int(11) NOT NULL,
  `home_owners` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`State`, `health`, `car_liability`, `car_full`, `home_owners`) VALUES
('AK', 822, 41, 117, 88),
('AL', 591, 50, 139, 136),
('AR', 456, 45, 138, 177),
('AZ', 569, 64, 160, 106),
('CA', 541, 50, 146, 102),
('CO', 489, 60, 168, 179),
('CT', 614, 80, 171, 104),
('DE', 566, 84, 171, 57),
('FL', 599, 91, 238, 165),
('GA', 474, 52, 125, 116),
('HI', 482, 57, 156, 32),
('IA', 551, 34, 127, 110),
('ID', 483, 34, 99, 75),
('IL', 561, 60, 144, 117),
('IN', 425, 40, 106, 102),
('KA', 565, 41, 138, 257),
('KN', 479, 73, 170, 167),
('LA', 652, 73, 198, 166),
('MA', 553, 61, 178, 100),
('MD', 385, 75, 143, 97),
('ME', 506, 39, 93, 79),
('MI', 435, 196, 399, 127),
('MN', 404, 57, 140, 161),
('MO', 626, 56, 154, 147),
('MS', 499, 45, 130, 158),
('MT', 519, 37, 146, 145),
('NC', 666, 46, 109, 108),
('ND', 538, 34, 138, 158),
('NE', 652, 40, 142, 246),
('NH', 372, 54, 130, 61),
('NJ', 535, 86, 159, 65),
('NM', 551, 45, 139, 149),
('NV', 575, 97, 216, 74),
('NY', 776, 77, 149, 126),
('OH', 513, 41, 108, 95),
('OK', 634, 50, 163, 305),
('OR', 493, 79, 152, 60),
('PA', 532, 40, 124, 63),
('RI', 424, 100, 229, 103),
('SC', 469, 60, 136, 98),
('SD', 792, 28, 148, 175),
('TN', 533, 37, 113, 146),
('TX', 589, 48, 136, 164),
('UT', 558, 66, 138, 58),
('VA', 425, 50, 118, 74),
('VT', 760, 32, 92, 55),
('WA', 470, 53, 128, 79),
('WI', 550, 36, 105, 74),
('WV', 871, 50, 136, 94),
('WY', 882, 31, 126, 79);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `userID` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `numBedrooms` int(3) NOT NULL,
  `numBathrooms` int(3) NOT NULL,
  `numFloors` int(3) NOT NULL,
  `squareFootage` int(50) NOT NULL,
  `age` int(3) NOT NULL,
  `state` varchar(3) NOT NULL,
  `lawnFootage` int(5) NOT NULL,
  `numFamily` int(3) NOT NULL,
  `monIncome` int(100) NOT NULL,
  `mortgage` int(100) NOT NULL,
  `numCellDevices` int(11) NOT NULL,
  `numMinutes` varchar(10) NOT NULL,
  `hotspot` varchar(3) NOT NULL,
  `intCalling` varchar(3) NOT NULL,
  `specialists` varchar(3) NOT NULL,
  `careProvNotInNet` varchar(3) NOT NULL,
  `emergencyOnly` varchar(3) NOT NULL,
  `freqCosts` varchar(3) NOT NULL,
  `genHealthy` varchar(3) NOT NULL,
  `floods` varchar(3) NOT NULL,
  `earthquakes` varchar(3) NOT NULL,
  `hurricanes` varchar(3) NOT NULL,
  `liabilityOnly` varchar(11) NOT NULL,
  `remoteArea` varchar(3) NOT NULL,
  `speedVAff` varchar(3) NOT NULL,
  `simulInt` int(3) NOT NULL,
  `videoGaming` varchar(3) NOT NULL,
  `onlyMowed` varchar(3) NOT NULL,
  `aerate` varchar(3) NOT NULL,
  `weeded` varchar(3) NOT NULL,
  `deadGrass` varchar(3) NOT NULL,
  `pool` varchar(3) NOT NULL,
  `pests` varchar(3) NOT NULL,
  `meals` varchar(3) NOT NULL,
  `windowPolish` varchar(3) NOT NULL,
  `laundry` varchar(3) NOT NULL,
  `deepClean` varchar(3) NOT NULL,
  `replaceCar` varchar(3) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userID`, `address`, `numBedrooms`, `numBathrooms`, `numFloors`, `squareFootage`, `age`, `state`, `lawnFootage`, `numFamily`, `monIncome`, `mortgage`, `numCellDevices`, `numMinutes`, `hotspot`, `intCalling`, `specialists`, `careProvNotInNet`, `emergencyOnly`, `freqCosts`, `genHealthy`, `floods`, `earthquakes`, `hurricanes`, `liabilityOnly`, `remoteArea`, `speedVAff`, `simulInt`, `videoGaming`, `onlyMowed`, `aerate`, `weeded`, `deadGrass`, `pool`, `pests`, `meals`, `windowPolish`, `laundry`, `deepClean`, `replaceCar`, `create_datetime`) VALUES
(9, '111', 10, 12, 1, 100, 21, 'WA', 1200, 4, 5000, 1000, 3, 'Unlimited', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'Replacement', 'No', 'Spe', 2, 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2023-05-03 17:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNum` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `firstname`, `lastname`, `email`, `phoneNum`, `password`, `create_datetime`) VALUES
(9, 'walko', 'walko', 'abc@walrus.com', '(111)555-4444', '$2y$10$loiy1dlJJ/XieZnvUen2cOov50SQlUx7Xw4z.3MWrH1fz0zuCg0O6', '2023-04-29 23:47:23'),
(10, 'incredible', 'incredible', 'chillin@chill.com', '015044445555', '$2y$10$wzGbJzXdQM2alUFE9qypeezqdZsdqfH0vlFD7d9YWCaoHY8X1q/L6', '2023-04-30 02:42:29'),
(13, 'Robert', 'Walko', 'bpwalko@gmail.com', '015554045050', '$2y$10$NZfFQC2rjRDrbl0nLDdb7O70A5iooxOg8r8ElZhPmdBwDo4hFcNs2', '2023-04-30 23:39:59'),
(14, 'testBounds', 'testBounds', 'realEmail@walla.com', '5', '$2y$10$NWHb4E3qXTxIzZL3hiN2f.7QvMp.S51TPncxOYs19ryGr0wnkQkoi', '2023-05-03 17:11:30'),
(15, 'CSAC', 'CSAC', 'csac@email.com', '1111', '$2y$10$b7h5ZvBZBwGpH3qC6VZkdOxYCvlj8IMzKbL/zpGYjlltmqi44RO5O', '2023-05-03 18:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_services`
--

CREATE TABLE `user_services` (
  `userID` int(11) NOT NULL,
  `vendType` varchar(50) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendID` int(11) NOT NULL,
  `vendName` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `vendType` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendID`, `vendName`, `address`, `username`, `vendType`, `password`, `create_datetime`) VALUES
(2, 'demoCS', 'demoCS', 'demoCS', 'cell_services', 'bcedc450f8481e89b1445069acdc3dd9', '2023-04-05 22:44:07'),
(6, 'demoHK', '111 N St', 'demoHK', 'Housekeeping', 'bcedc450f8481e89b1445069acdc3dd9', '2023-04-20 21:35:02'),
(7, 'demoLC', '11333 N Great St', 'demoLC', 'Lawncare', 'bcedc450f8481e89b1445069acdc3dd9', '2023-04-20 22:05:58'),
(9, 'demoIS', 'demoIS', 'demoIS', 'internet_services', '$2y$10$g.0CbkPeVfldFIHhQGss6u7bWxWPYfJamNDI8iJzT93aJ1phK05eu', '2023-05-01 05:25:30'),
(10, 'demoAS', 'demoAS', 'demoAS', 'internet_services', '$2y$10$G/AFLx/Uu5tBeFJva6An4uU512RcZATw5Q0wWKiAepJ0nGPjBoOS2', '2023-05-01 06:31:12'),
(11, 'demoAS', 'demoAS', 'demoAS', 'internet_services', '$2y$10$1DEbBsPS3g310tuMWHYXwubsDV.4Izth7WTvYD/hyyONz2IM48t4C', '2023-05-01 06:32:15'),
(12, 'demoAS', 'demoAS', 'demoAS', 'internet_services', '$2y$10$ZdpiC/vF/5zqRc1.Vr4XzOngZXs6L9taJTy2FboCmPTqjWo7Z7svm', '2023-05-01 06:47:17'),
(13, 'demoHI', 'demoHI', 'demoHI', 'health_insurance', '$2y$10$l8YW1XgNCamuW5YPYyOHT.zM30uaifz4PczmEjMo5/NM0pfeut9le', '2023-05-01 16:26:13'),
(14, 'demoAI', 'demoAI', 'demoAI', 'auto', '$2y$10$e58bAmYWPRCl5GrrSK6lK.IGuhQ4NRuy.Dj/SIrrb7/SP22VmxjXS', '2023-05-01 16:46:20'),
(15, 'demoFake', 'demoFake', 'demoFake', 'Lawncare', '$2y$10$SAAxdsBzV5YGcvAVSiQrienqrO/E0lqwnZYxpR5YYmZI83NMqde/.', '2023-05-01 18:43:45'),
(16, 'demoFake2', 'demoFake2', 'demoFake2', 'Lawncare', '$2y$10$YubsuqkS1G1P2jPcbKY6su54c6I/HosJ8stajalihqlJ8ZnCpG1zK', '2023-05-01 18:44:59'),
(17, 'demoHOI', 'demoHOI', 'demoHOI', 'home_insurance', '$2y$10$TtFsjVMDHwhzABbryT7Fo.pRFWQs5fE29X0qbbolJ6HuRHmruSS6e', '2023-05-13 03:16:25'),
(18, 'demoLC', 'demoLC', 'demoLC', 'Lawncare', '$2y$10$AMjR.BpyKg6AycjP0fJeYOwx1Mkqa6f/fmyrG2eLAI0EP7GNUBW5O', '2023-05-13 03:49:08'),
(19, 'demoHS', 'demoHS', 'demoHS', 'Housekeeping', '$2y$10$R2OA4VIzQNWRQQLzv0rEI.dXrwv01tKrOG7N3uy1z57Y8zGoSLkeG', '2023-05-15 00:23:51'),
(20, 'demoCS', 'demoCS', 'demoCS', 'cell_services', '$2y$10$eqKZcmxQc5v6Vu9Ka0GFVuLl8nbfx18j8EUy28rhslhqsdL96Yiwe', '2023-05-15 00:40:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `age`
--
ALTER TABLE `age`
  ADD PRIMARY KEY (`age`);

--
-- Indexes for table `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`aiID`);

--
-- Indexes for table `cell_services`
--
ALTER TABLE `cell_services`
  ADD PRIMARY KEY (`csID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `health_insurance`
--
ALTER TABLE `health_insurance`
  ADD PRIMARY KEY (`hiID`);

--
-- Indexes for table `home_insurance`
--
ALTER TABLE `home_insurance`
  ADD PRIMARY KEY (`hoiID`);

--
-- Indexes for table `internet_services`
--
ALTER TABLE `internet_services`
  ADD PRIMARY KEY (`isID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `needs`
--
ALTER TABLE `needs`
  ADD PRIMARY KEY (`needID`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`userID`,`vendType`,`serviceID`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`State`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto`
--
ALTER TABLE `auto`
  MODIFY `aiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cell_services`
--
ALTER TABLE `cell_services`
  MODIFY `csID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `health_insurance`
--
ALTER TABLE `health_insurance`
  MODIFY `hiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_insurance`
--
ALTER TABLE `home_insurance`
  MODIFY `hoiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `internet_services`
--
ALTER TABLE `internet_services`
  MODIFY `isID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `needs`
--
ALTER TABLE `needs`
  MODIFY `needID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
