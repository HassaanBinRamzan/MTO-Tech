-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 02:24 PM
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
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `check_in` time NOT NULL DEFAULT current_timestamp(),
  `check_out` time NOT NULL DEFAULT current_timestamp(),
  `checkin_image` varchar(255) NOT NULL,
  `checkout_image` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `check_in`, `check_out`, `checkin_image`, `checkout_image`, `date`) VALUES
(1, '10:08:39', '17:30:39', '1_2023-07-05_100839_check_IN.png', '1_2023-07-05_173039_check_OUT.png', '2023-07-05'),
(2, '10:08:39', '17:30:39', '2_2023-07-05_100839_check_IN.png', '2_2023-07-05_173039_check_OUT.png', '2023-07-05'),
(3, '10:14:02', '17:30:02', '3_2023-07-05_101402_check_IN.png', '3_2023-07-05_173002_check_OUT.png', '2023-07-05'),
(4, '10:14:02', '17:30:02', '4_2023-07-05_101402_check_IN.png', '4_2023-07-05_173002_check_OUT.png\r\n', '2023-07-05'),
(5, '10:16:18', '17:30:18', '5_2023-07-05_101618_check_IN.png', '5_2023-07-05_173018_check_OUT.png', '2023-07-05'),
(6, '10:16:18', '17:30:18', '6_2023-07-05_101618_check_IN.png', '6_2023-07-05_173002_check_OUT.png\r\n', '2023-07-05'),
(7, '10:18:28', '17:30:28', '7_2023-07-05_101818_check_IN.png', '7_2023-07-05_173028_check_OUT.png', '2023-07-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `foreign_key_constraint` (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `foreign_key_constraint` FOREIGN KEY (`id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
