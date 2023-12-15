-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2023 at 08:48 PM
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
-- Database: `feesportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `no_dues`
--

CREATE TABLE `no_dues` (
  `REGNO` varchar(15) NOT NULL,
  `student_name` varchar(35) NOT NULL,
  `prgm_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `no_dues`
--

INSERT INTO `no_dues` (`REGNO`, `student_name`, `prgm_id`, `amount`, `status`) VALUES
('20IT1001', 'AATHIF MOHAMED ', 8, 0, NULL),
('20IT1002', 'Abdul basith m', 8, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `no_dues`
--
ALTER TABLE `no_dues`
  ADD PRIMARY KEY (`REGNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
