-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 03:05 PM
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
  `check_in` time NOT NULL,
  `check_out` time DEFAULT NULL,
  `checkin_image` varchar(255) NOT NULL,
  `checkout_image` varchar(255) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `occupation` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `email`, `password`, `dob`, `image`, `occupation`, `status`) VALUES
(1, 'Hamza Iqbal', 'f190248@nu.edu.pk', 'hamza@123', '1997-07-17', 'f190248@nu.png', 1, 1),
(2, 'Areeb Saqib', 'areebbutt610@gmail.com', 'areeb@123', '1997-07-07', 'areebbutt610@gmail.png', 1, 1),
(3, 'Faiqa Zulfiqar', 'faiqarao03@gmail.com', 'faiqa@123', '1997-06-07', 'faiqarao03@gmail.png', 1, 1),
(4, 'Talha Khalil', 'talhakhalil535@gmail.com', 'Talha@123', '1997-07-07', 'talhakhalil535@gmail.png', 0, 1),
(5, 'Malik Muhammad Tayyab', 'tayyabshahid597@gmail.com', 'Malik@123', '1997-07-07', 'tayyabshahid597@gmail.png', 0, 1),
(6, 'Asfar Waheed', '2019ee260@student.uet.edu.pk', 'Asfar@123', '1997-07-07', '2019ee260@student.png', 0, 1),
(7, 'Waqas Manzoor', 'waqasmanzoor30fly@gmail.com', 'Waqas@gmail.com', '1997-07-07', 'waqasmanzoor30fly@gmail.png', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `foreign_key_constraint` (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
