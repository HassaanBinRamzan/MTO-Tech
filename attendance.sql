-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 01:48 PM
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
