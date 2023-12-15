-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 11:07 AM
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
-- Table structure for table `b_tech_payment`
--

CREATE TABLE `b_tech_payment` (
  `REGNO` varchar(15) NOT NULL,
  `1yr_fee` float DEFAULT NULL,
  `1yr_status` varchar(10) DEFAULT NULL,
  `2yr_fee` float DEFAULT NULL,
  `2yr_status` varchar(10) DEFAULT NULL,
  `3yr_fee` float DEFAULT NULL,
  `3yr_status` varchar(10) DEFAULT NULL,
  `4yr_fee` float DEFAULT NULL,
  `4yr_status` varchar(10) DEFAULT NULL,
  `excess` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `b_tech_payment`
--

INSERT INTO `b_tech_payment` (`REGNO`, `1yr_fee`, `1yr_status`, `2yr_fee`, `2yr_status`, `3yr_fee`, `3yr_status`, `4yr_fee`, `4yr_status`, `excess`) VALUES
('20EC1025', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL),
('20IT1031', 30851, 'YES', 13851, 'YES', 13851, 'YES', 12154, 'NO', NULL),
('20IT1062', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` varchar(10) NOT NULL,
  `faculty_name` varchar(35) NOT NULL,
  `faculty_department` varchar(20) NOT NULL,
  `faculty_position` varchar(25) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_structure`
--

CREATE TABLE `fee_structure` (
  `fee_id` varchar(10) NOT NULL,
  `category` varchar(25) NOT NULL,
  `caste` varchar(25) NOT NULL,
  `name_of_programme` varchar(40) NOT NULL,
  `year_of_study` varchar(10) NOT NULL,
  `fee_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee_structure`
--

INSERT INTO `fee_structure` (`fee_id`, `category`, `caste`, `name_of_programme`, `year_of_study`, `fee_amount`) VALUES
('F01', 'CENTAC', 'SC', 'Bachelor of Technology', '1', 30851),
('F02', 'CENTAC', 'ALL', 'Bachelor of Technology', '1', 30851),
('F03', 'JOSSA', 'SC', 'Bachelor of Technology', '1', 92000),
('F04', 'JOSSA', 'ALL', 'Bachelor of Technology', '1', 167000),
('F05', 'CENTAC', 'ALL', 'Bachelor of Technology', '2', 13851),
('F06', 'CENTAC', 'ALL', 'Bachelor of Technology', '3', 13851),
('F07', 'CENTAC', 'ALL', 'Bachelor of Technology', '4', 13851),
('F08', 'JOSSA', 'SC', 'Bachelor of Technology', '2', 75000),
('F09', 'JOSSA', 'SC', 'Bachelor of Technology', '3', 75000),
('F10', 'JOSSA', 'SC', 'Bachelor of Technology', '4', 75000),
('F11', 'JOSSA', 'ALL', 'Bachelor of Technology', '2', 150000),
('F12', 'JOSSA', 'ALL', 'Bachelor of Technology', '3', 150000),
('F13', 'JOSSA', 'ALL', 'Bachelor of Technology', '4', 150000),
('F14', 'CENTAC', 'SC', 'Bachelor of Technology', '2', 13851),
('F15', 'CENTAC', 'SC', 'Bachelor of Technology', '3', 13851),
('F16', 'CENTAC', 'SC', 'Bachelor of Technology', '4', 13851),
('F17', 'CENTAC', 'ST', 'Bachelor of Technology', '2', 13851),
('F18', 'CENTAC', 'ST', 'Bachelor of Technology', '3', 13851),
('F19', 'CENTAC', 'ST', 'Bachelor of Technology', '4', 13851),
('F20', 'JOSSA', 'ST', 'Bachelor of Technology', '2', 75000),
('F21', 'JOSSA', 'ST', 'Bachelor of Technology', '3', 75000),
('F22', 'JOSSA', 'ST', 'Bachelor of Technology', '4', 75000),
('F23', 'JOSSA', 'ST', 'Bachelor of Technology', '1', 92000),
('F24', 'REGULAR', 'ALL', 'MASTER OF TECHNOLOGY', '1', 30851),
('F25', 'REGULAR', 'ALL', 'MASTER OF TECHNOLOGY', '2', 30851),
('F26', 'REGULAR', 'ALL', 'MBA', '1', 30851),
('F27', 'REGULAR', 'ALL', 'MBA', '2', 30851),
('F28', 'SPONSARED', 'ALL', 'MASTER OF TECHNOLOGY', '1', 38851),
('F29', 'SELF FINANCING', 'ALL', 'MBA', '2', 30851),
('F30', 'SPONSARED', 'ALL', 'MASTER OF TECHNOLOGY', '1', 38851),
('F31', 'SELF FINANCING', 'ALL', 'MASTER OF TECHNOLOGY', '2', 37851),
('F32', 'SELF FINANCING', 'ALL', 'MASTER OF TECHNOLOGY', '1', 37851),
('F33', 'SELF FINANCING', 'ALL', 'MBA', '2', 30851);

-- --------------------------------------------------------

--
-- Table structure for table `post_grad_payment`
--

CREATE TABLE `post_grad_payment` (
  `REGNO` varchar(15) NOT NULL,
  `1YR_FEE` float DEFAULT NULL,
  `1YR_STATUS` varchar(10) DEFAULT NULL,
  `2YR_FEE` float DEFAULT NULL,
  `2YR_STATUS` varchar(10) DEFAULT NULL,
  `EXCESS` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_grad_payment`
--

INSERT INTO `post_grad_payment` (`REGNO`, `1YR_FEE`, `1YR_STATUS`, `2YR_FEE`, `2YR_STATUS`, `EXCESS`) VALUES
('20MBA1001', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_academic`
--

CREATE TABLE `student_academic` (
  `Regno` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `YOJ` int(11) NOT NULL,
  `prgm_id` int(11) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `current_year` int(11) NOT NULL,
  `current_sem` int(11) DEFAULT NULL,
  `Active` int(11) DEFAULT NULL,
  `type_of_admission` varchar(20) NOT NULL,
  `batch` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_academic`
--

INSERT INTO `student_academic` (`Regno`, `name`, `YOJ`, `prgm_id`, `Email`, `current_year`, `current_sem`, `Active`, `type_of_admission`, `batch`) VALUES
('20EC1025', 'FARVEZ', 2020, 3, 'FARVEZ@PEC.EDU', 4, NULL, NULL, 'CENTAC', '20-24'),
('20IT1001', 'mohamed aatif', 2020, 8, 'AATHIF@PEC.EDU', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1002', '', 2020, 8, 'abdul.basith@pec.edu', 1, 0, 1, 'centac', '20-24'),
('20IT1003', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1005', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1006', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1007', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1008', '', 2020, 8, 'ARAVIDHAR@PEC.EDU', 4, 7, 1, 'JOSSA', '20-24'),
('20IT1009', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1010', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1011', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1012', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1013', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1014', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1015', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1016', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1017', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1018', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1019', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1020', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1021', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1022', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1023', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1024', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1025', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1026', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1027', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1028', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1029', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1030', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1031', '', 2020, 8, 'MAATHUL.MANAS@PEC.EDU', 4, 7, 1, 'CENTAC', '20-24'),
('20IT1032', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1033', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1034', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1035', 'MANIKANDAN', 2020, 8, 'manikandan@pec.edu', 4, 7, 1, 'CENTAC', '20-24'),
('20IT1036', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1037', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1038', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1039', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1040', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1041', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1042', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1043', '', 2020, 8, '', 4, 7, NULL, 'CENTAC', '20-24'),
('20IT1062', 'VISHWABHARATHY', 2020, 8, 'VISHWABHARATHY.K@pec.edu', 4, 7, NULL, 'CENTAC', '20-24');

--
-- Triggers `student_academic`
--
DELIMITER $$
CREATE TRIGGER `STU_FEE` AFTER INSERT ON `student_academic` FOR EACH ROW IF((SELECT prgm_id FROM student_academic WHERE Regno = NEW.Regno) < 10)
THEN
INSERT INTO `b_tech_payment` (`REGNO`, `1yr_fee`, `1yr_status`, `2yr_fee`, `2yr_status`, `3yr_fee`, `3yr_status`, `4yr_fee`, `4yr_status`, `excess`) VALUES (NEW.Regno, NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL, 'NO', NULL);
ELSEIF((SELECT prgm_id FROM student_academic WHERE Regno = NEW.Regno) < 25)
THEN
INSERT INTO `post_grad_payment` (`REGNO`, `1YR_FEE`, `1YR_STATUS`, `2YR_FEE`, `2YR_STATUS`, `EXCESS`) VALUES (NEW.Regno, NULL,'NO', NULL, 'NO', NULL);
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

CREATE TABLE `student_payment` (
  `REGNO` varchar(14) NOT NULL,
  `category` varchar(25) NOT NULL,
  `course_name` varchar(25) NOT NULL,
  `department` varchar(25) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `payment_method` varchar(25) NOT NULL,
  `transation_id` varchar(15) NOT NULL,
  `amount` float NOT NULL,
  `p_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_payment`
--

INSERT INTO `student_payment` (`REGNO`, `category`, `course_name`, `department`, `mobile_no`, `payment_method`, `transation_id`, `amount`, `p_id`) VALUES
('20IT1035', 'SC', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896326', 'UPI', '1002259', 30851, '101'),
('20IT1031', 'BCM', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896326', 'NEFT', '1002259', 30851, '108'),
('20IT1008', 'GENERAL', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896311', 'NEFT', '1002259', 168000, '110'),
('20IT1008', 'GENERAL', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896325', 'NEFT', '1002258', 50000, '111'),
('20IT1031', 'BCM', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896325', 'NEFT', '1002258', 1000, '115'),
('20IT1031', 'BCM', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896326', 'UPI', '1002258', 25000, '116'),
('20IT1002', 'GENERAL', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896326', 'UPI', '1002258', 30851, '122'),
('20IT1035', 'SC', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896325', 'UPI', '1002258', 25000, '130'),
('20IT1005', 'MBC', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896325', 'UPI', '1002259', 30851, '132'),
('20IT1005', 'MBC', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896326', 'UPI', '1002259', 13851, '133'),
('20IT1031', 'BCM', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896326', 'UPI', '1002258', 5, '90'),
('20IT1031', 'BCM', 'BACHELOR OF TECHNOLONOGY', 'IT', '7702896326', 'UPI', '1002258', 13851, '99');

--
-- Triggers `student_payment`
--
DELIMITER $$
CREATE TRIGGER `TOTAL1` AFTER INSERT ON `student_payment` FOR EACH ROW IF (SELECT DISTINCT student_payment.category FROM student_payment WHERE REGNO = NEW.REGNO) = 'SC'
THEN

IF (SELECT DISTINCT student_payment.course_name FROM student_payment WHERE REGNO = NEW.REGNO) = 'BACHELOR OF TECHNOLONOGY'
THEN

IF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3','4'))
THEN

UPDATE b_tech_payment SET b_tech_payment.1yr_status = 'YES',b_tech_payment.2yr_status = 'YES',b_tech_payment.3yr_status = 'YES',b_tech_payment.4yr_status = 'YES' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.3yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('3')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.4yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('4')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.excess = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3','4'))) WHERE REGNO = NEW.REGNO;

ELSEIF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3'))

THEN

UPDATE b_tech_payment SET b_tech_payment.1yr_status = 'YES',b_tech_payment.2yr_status = 'YES',b_tech_payment.3yr_status = 'YES',b_tech_payment.4yr_status = 'NO' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.3yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('3')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.4yr_fee = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3'))) WHERE REGNO = NEW.REGNO;

ELSEIF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2'))

THEN
UPDATE b_tech_payment SET b_tech_payment.1yr_status = 'YES',b_tech_payment.2yr_status = 'YES',b_tech_payment.3yr_status = 'NO' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.3yr_fee = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2'))) WHERE REGNO = NEW.REGNO;



ELSEIF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1'))
THEN

IF (SELECT COUNT(*) FROM b_tech_payment WHERE b_tech_payment.REGNO = NEW.REGNO) > 0
THEN

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_status ='YES' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2'))) WHERE REGNO = NEW.REGNO;
  
UPDATE b_tech_payment SET b_tech_payment.2yr_status ='0' WHERE REGNO = NEW.REGNO;

ELSE

INSERT INTO `b_tech_payment` (`REGNO`, `1yr_fee`, `1yr_status`, `2yr_fee`, `2yr_status`, `3yr_fee`, `3yr_status`, `4yr_fee`, `4yr_status`, `excess`) VALUES (NEW.REGNO, (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'SC' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')), 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL); 

END IF;  
END IF;                                                       
END IF; 
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TOTAL2` AFTER INSERT ON `student_payment` FOR EACH ROW IF (SELECT DISTINCT student_payment.category FROM student_payment WHERE REGNO = NEW.REGNO) != 'SC'
THEN
IF (SELECT DISTINCT student_payment.category FROM student_payment WHERE REGNO = NEW.REGNO) != 'ST'
THEN

IF (SELECT DISTINCT student_payment.course_name FROM student_payment WHERE REGNO = NEW.REGNO) = 'BACHELOR OF TECHNOLONOGY'
THEN

IF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3','4'))
THEN

UPDATE b_tech_payment SET b_tech_payment.1yr_status = 'YES',b_tech_payment.2yr_status = 'YES',b_tech_payment.3yr_status = 'YES',b_tech_payment.4yr_status = 'YES' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.3yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('3')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.4yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('4')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.excess = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3','4'))) WHERE REGNO = NEW.REGNO;

ELSEIF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3'))

THEN

UPDATE b_tech_payment SET b_tech_payment.1yr_status = 'YES',b_tech_payment.2yr_status = 'YES',b_tech_payment.3yr_status = 'YES',b_tech_payment.4yr_status = 'NO' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.3yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('3')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.4yr_fee = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3'))) WHERE REGNO = NEW.REGNO;

ELSEIF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2'))

THEN
UPDATE b_tech_payment SET b_tech_payment.1yr_status = 'YES',b_tech_payment.2yr_status = 'YES',b_tech_payment.3yr_status = 'NO' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.3yr_fee = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2'))) WHERE REGNO = NEW.REGNO;



ELSEIF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1'))
THEN

IF (SELECT COUNT(*) FROM b_tech_payment WHERE b_tech_payment.REGNO = NEW.REGNO) > 0
THEN

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_status ='YES' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2'))) WHERE REGNO = NEW.REGNO;
  
UPDATE b_tech_payment SET b_tech_payment.2yr_status ='NO' WHERE REGNO = NEW.REGNO;

ELSE

INSERT INTO `b_tech_payment` (`REGNO`, `1yr_fee`, `1yr_status`, `2yr_fee`, `2yr_status`, `3yr_fee`, `3yr_status`, `4yr_fee`, `4yr_status`, `excess`) VALUES (NEW.REGNO, (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')), 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL); 

END IF;  
END IF;                                                       
END IF; 
END IF;
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TOTAL3` BEFORE INSERT ON `student_payment` FOR EACH ROW IF (SELECT DISTINCT student_payment.category FROM student_payment WHERE REGNO = NEW.REGNO) = 'ST'
THEN

IF (SELECT DISTINCT student_payment.course_name FROM student_payment WHERE REGNO = NEW.REGNO) = 'BACHELOR OF TECHNOLONOGY'
THEN

IF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3','4'))
THEN

UPDATE b_tech_payment SET b_tech_payment.1yr_status = 'YES',b_tech_payment.2yr_status = 'YES',b_tech_payment.3yr_status = 'YES',b_tech_payment.4yr_status = 'YES' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.3yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('3')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.4yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('4')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.excess = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3','4'))) WHERE REGNO = NEW.REGNO;

ELSEIF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3'))

THEN

UPDATE b_tech_payment SET b_tech_payment.1yr_status = 'YES',b_tech_payment.2yr_status = 'YES',b_tech_payment.3yr_status = 'YES',b_tech_payment.4yr_status = 'NO' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.3yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('3')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.4yr_fee = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2','3'))) WHERE REGNO = NEW.REGNO;

ELSEIF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2'))

THEN
UPDATE b_tech_payment SET b_tech_payment.1yr_status = 'YES',b_tech_payment.2yr_status = 'YES',b_tech_payment.3yr_status = 'NO' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.3yr_fee = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2'))) WHERE REGNO = NEW.REGNO;



ELSEIF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1'))
THEN

IF (SELECT COUNT(*) FROM b_tech_payment WHERE b_tech_payment.REGNO = NEW.REGNO) > 0
THEN

UPDATE b_tech_payment SET b_tech_payment.1yr_fee = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.1yr_status ='YES' WHERE REGNO = NEW.REGNO;

UPDATE b_tech_payment SET b_tech_payment.2yr_fee = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2'))) WHERE REGNO = NEW.REGNO;
  
UPDATE b_tech_payment SET b_tech_payment.2yr_status ='NO' WHERE REGNO = NEW.REGNO;

ELSE

INSERT INTO `b_tech_payment` (`REGNO`, `1yr_fee`, `1yr_status`, `2yr_fee`, `2yr_status`, `3yr_fee`, `3yr_status`, `4yr_fee`, `4yr_status`, `excess`) VALUES (NEW.REGNO, (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ST' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'BACHELOR OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')), 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL); 

END IF;  
END IF;                                                       
END IF; 
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TOTAL4` AFTER INSERT ON `student_payment` FOR EACH ROW IF (SELECT DISTINCT student_payment.course_name FROM student_payment WHERE REGNO = NEW.REGNO) = 'MASTER OF TECHNOLONOGY'
THEN

IF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MASTER OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2'))

THEN
UPDATE post_grad_payment SET post_grad_payment.1YR_STATUS = 'YES', post_grad_payment.2YR_STATUS = 'YES' WHERE REGNO = NEW.REGNO;

UPDATE post_grad_payment SET post_grad_payment.1YR_FEE = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MASTER OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE post_grad_payment SET post_grad_payment.2YR_FEE = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MASTER OF TECHNOLOGY' AND fee_structure.year_of_study IN ('2')) WHERE REGNO = NEW.REGNO;

UPDATE post_grad_payment SET post_grad_payment.EXCESS = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MASTER OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1','2'))) WHERE REGNO = NEW.REGNO;



ELSEIF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MASTER OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1'))
THEN

IF (SELECT COUNT(*) FROM post_grad_payment WHERE post_grad_payment.REGNO = NEW.REGNO) > 0
THEN

UPDATE post_grad_payment SET post_grad_payment.1YR_FEE = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MASTER OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE post_grad_payment SET post_grad_payment.1YR_STATUS ='YES' WHERE REGNO = NEW.REGNO;

UPDATE post_grad_payment SET post_grad_payment.2YR_FEE = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MASTER OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1'))) WHERE REGNO = NEW.REGNO;
  
UPDATE b_tech_payment SET b_tech_payment.2yr_status ='NO' WHERE REGNO = NEW.REGNO;

ELSE

INSERT INTO `b_tech_payment` (`REGNO`, `1YR_FEE`, `1YR_STATUS`, `2YR_FEE`, `2YR_STATUS`,`EXCESS`) VALUES (NEW.REGNO, (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MASTER OF TECHNOLOGY' AND fee_structure.year_of_study IN ('1')), 'YES', NULL, NULL, NULL);
END IF;
END IF;
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TOTAL5` AFTER INSERT ON `student_payment` FOR EACH ROW IF (SELECT DISTINCT student_payment.course_name FROM student_payment WHERE REGNO = NEW.REGNO) = 'MBA'
THEN

IF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MBA' AND fee_structure.year_of_study IN ('1','2'))

THEN
UPDATE post_grad_payment SET post_grad_payment.1YR_STATUS = 'YES', post_grad_payment.2YR_STATUS = 'YES' WHERE REGNO = NEW.REGNO;

UPDATE post_grad_payment SET post_grad_payment.1YR_FEE = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MBA' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE post_grad_payment SET post_grad_payment.2YR_FEE = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MBA' AND fee_structure.year_of_study IN ('2')) WHERE REGNO = NEW.REGNO;

UPDATE post_grad_payment SET post_grad_payment.EXCESS = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MBA' AND fee_structure.year_of_study IN ('1','2'))) WHERE REGNO = NEW.REGNO;



ELSEIF (SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) >= (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MBA' AND fee_structure.year_of_study IN ('1'))
THEN

IF (SELECT COUNT(*) FROM post_grad_payment WHERE post_grad_payment.REGNO = NEW.REGNO) > 0
THEN

UPDATE post_grad_payment SET post_grad_payment.1YR_FEE = (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MBA' AND fee_structure.year_of_study IN ('1')) WHERE REGNO = NEW.REGNO;

UPDATE post_grad_payment SET post_grad_payment.1YR_STATUS ='YES' WHERE REGNO = NEW.REGNO;

UPDATE post_grad_payment SET post_grad_payment.2YR_FEE = ((SELECT SUM(student_payment.amount) FROM student_payment WHERE REGNO = NEW.REGNO) - (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MBA' AND fee_structure.year_of_study IN ('1'))) WHERE REGNO = NEW.REGNO;
  
UPDATE b_tech_payment SET b_tech_payment.2yr_status ='NO' WHERE REGNO = NEW.REGNO;

ELSE

INSERT INTO `b_tech_payment` (`REGNO`, `1YR_FEE`, `1YR_STATUS`, `2YR_FEE`, `2YR_STATUS`,`EXCESS`) VALUES (NEW.REGNO, (SELECT SUM(fee_structure.fee_amount) FROM fee_structure WHERE fee_structure.caste = 'ALL' AND fee_structure.category = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO OR student_personal.registration_id = NEW.REGNO) AND fee_structure.name_of_programme = 'MBA' AND fee_structure.year_of_study IN ('1')), 'YES', NULL, NULL, NULL);
END IF;
END IF;
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student_personal`
--

CREATE TABLE `student_personal` (
  `registration_id` varchar(20) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `quota_of_admission` varchar(20) NOT NULL,
  `mode_of_admission` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `mobile_number` varchar(12) NOT NULL,
  `mail_id` varchar(25) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `father_occupation` varchar(25) NOT NULL,
  `father_mobile_number` varchar(11) NOT NULL,
  `alternate_number` varchar(11) NOT NULL,
  `father_mail_id` varchar(30) NOT NULL,
  `Regno` varchar(12) NOT NULL,
  `image` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_personal`
--

INSERT INTO `student_personal` (`registration_id`, `student_name`, `dob`, `address`, `state`, `religion`, `quota_of_admission`, `mode_of_admission`, `gender`, `nationality`, `mobile_number`, `mail_id`, `father_name`, `father_occupation`, `father_mobile_number`, `alternate_number`, `father_mail_id`, `Regno`, `image`) VALUES
('643511', 'ABDUL BASITH M', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'MULSIM', 'GENERAL', 'CENTAC', 'MALE', 'INDIAN', '7708352024', 'BASITH@GMAIL.COM', 'ABU BACKER ', '-', '9488449457', '9486261143', '-', '20IT1002', '20IT1002.png'),
('643512', 'MANIKANDAN', '2003-05-19', 'PONDICHERRY', 'PONDICHERRY', 'HINDU', 'SC', 'CENTAC', 'MALE', 'INDIAN', '7373321966', 'manikandan@pec.edu', 'KANDAN', '-', '9488449458', '-', '-', '20IT1035', '20IT1034.png'),
('643513', 'ARAVIDHAR RS', '2001-05-19', 'KUMBAKONAM', 'TAMIL NADU', 'HINDU', 'GENERAL', 'JOSSA', 'MALE', 'INDIAN', '7373321958', 'ARAVIDHAR@GMAIL.COM', '-', '-', '9488449444', '9486261142', '-', '20IT1008', '20IT1008.png'),
('665252', 'THARSHINI', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20CH1055', '-'),
('665253', 'ARTHI B', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', '0BC', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20EI1006', '-'),
('665255', 'SELVY S', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20EI1054', '-'),
('665256', 'SERU DEVI SIREESHA', '0000-00-00', '', 'TELUGANA', 'HINDU', 'OBC', 'JOSSA', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20EC1092', '-'),
('665257', 'AATHIF MOHAMED A', '0000-00-00', 'KARAIKAL', 'PUDUCHERRY', 'MUSLIM', 'BCM', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1001', '-'),
('665258', 'ABINESH C', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'SC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1003', '-'),
('665259', 'ANJANA B K', '0000-00-00', 'MAHE', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1005', '-'),
('665260', 'ARAVIDHAR M', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1006', '-'),
('665261', 'ARUN KUMAR J', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'BC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1007', '-'),
('665262', 'G.VISHALI', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'ST', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20EI1023', '-'),
('665263', 'BANUPRIYA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1010', '-'),
('665264', 'BARATH P', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1011', '-'),
('665265', 'ATHITHYAA R', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'OBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1009', '-'),
('665266', 'BARATH Y', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1012', '-'),
('665267', 'SREE VYNASHAVI', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1013', '-'),
('665268', 'CHANDHINE', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1014', '-'),
('665269', 'SAI SRI VARUN', '0000-00-00', 'YANAM', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1015', '-'),
('665270', 'CHIKKAM PADMASRI', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1016', '-'),
('665271', 'D EYURAJ ', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1017', '-'),
('665272', 'DEENA D', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1018', '-'),
('665273', 'DHANUSH M', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1019', '-'),
('665274', 'FAAIZA A', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1020', '-'),
('665275', 'GANESH A', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1021', '-'),
('665276', 'HARINI M', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1022', '-'),
('665277', 'HARI PRIYA ', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1023', '-'),
('665278', 'HIMA ASKOK', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1024', '-'),
('665279', 'BHUVANA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1025', '-'),
('665280', 'JASBIR SIGH ', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'BC', 'JOSSA', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1026', '-'),
('665281', 'JITESH KUMAR', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'ST', 'JOSSA', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1027', '-'),
('665282', 'KEERTHANA R', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1028', '-'),
('665283', 'KRISHNA GOWVARDHINI', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1029', '-'),
('665284', 'LALITHA ', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1030', '-'),
('665285', 'MADHAN KUMAR', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1032', '-'),
('665286', 'MADIREDDY BAVANA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1033', '-'),
('665287', 'MANIMARAN V', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1034', '-'),
('665288', 'PAWAN KRISHNA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'JOSSA', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1036', '-'),
('665289', 'JAYATH SRI RAM', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'BC', 'JOSSA', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1037', '-'),
('665290', 'MOHAMED LUQMAN', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'MUSLIUM', 'BCM', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1038', '-'),
('665291', 'MOHANRAJ J', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1039', '-'),
('665292', 'NIVETHA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1040', '-'),
('665293', 'LASHMIPRIYA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1041', '-'),
('665294', 'SWEDHA R', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1042', '-'),
('665295', 'RAGUL R', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1043', '-'),
('665454', 'MAATHUL MANAS', '2003-04-29', 'NERAVY', 'PONDICHERRY', 'MUSLIM', 'BCM', 'CENTAC', 'MALE', 'INDIAN', '1236547890', 'MAATHUL.12345@GMAIL.COM', 'ABDULLA', '-', '9488449444', '1254788960', 'ABDULLAH@GMAIL.COM', '20IT1031', '20IT1031.png');

--
-- Triggers `student_personal`
--
DELIMITER $$
CREATE TRIGGER `UPDATE_REGNO` AFTER UPDATE ON `student_personal` FOR EACH ROW IF (SELECT student_personal.Regno FROM student_personal WHERE student_personal.registration_id = NEW.registration_id) != ''
THEN
UPDATE student_payment SET REGNO = (SELECT student_personal.Regno FROM student_personal WHERE student_personal.registration_id = NEW.registration_id) WHERE REGNO = NEW.registration_id;

UPDATE student_academic SET student_academic.Regno = (SELECT student_personal.Regno FROM student_personal WHERE student_personal.registration_id = NEW.registration_id) WHERE Regno = NEW.registration_id;
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `u_course`
--

CREATE TABLE `u_course` (
  `COURSE_CODE` varchar(10) NOT NULL,
  `COURSE_NAME` varchar(200) DEFAULT NULL,
  `COURSE_CATG` varchar(5) DEFAULT NULL,
  `CREDITS` float(3,2) DEFAULT NULL,
  `DEPT_ID` varchar(5) DEFAULT NULL,
  `COURSE_TYPE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_course`
--

INSERT INTO `u_course` (`COURSE_CODE`, `COURSE_NAME`, `COURSE_CATG`, `CREDITS`, `DEPT_ID`, `COURSE_TYPE`) VALUES
('CE201', 'Environmental Science', 'MCC', 0.00, 'CE', ' MC'),
('CE202', 'Engineering Mechanics', 'ESC', 4.00, 'CE', 'TY'),
('CE203', 'Engineering Geology', 'PCC', 2.00, 'CE', 'TY'),
('CE204', 'Fluid Mechanics', 'PCC', 3.00, 'CE', 'TY'),
('CE205', 'Building Technology', 'PCC', 3.00, 'CE', 'TY'),
('CE206', 'Surveying And Geomatics', 'PCC', 3.00, 'CE', 'TY'),
('CE207', 'Computer-Aided Civil Engineering Drawing', 'ESC', 1.50, 'CE', 'LB'),
('CE208', 'Suveying Laboratory', 'PCC', 1.50, 'CE', 'LB'),
('CE209', 'Disaster Management', 'PCC', 3.00, 'CE', 'TY'),
('CE210', 'Hydraulics Engineering', 'PCC', 3.00, 'CE', 'TY'),
('CE211', 'Concrete Technology', 'PCC', 3.00, 'CE', 'TY'),
('CE212', 'Basics Of Solid Mechanics', 'PCC', 4.00, 'CE', 'TY'),
('CE213', 'Materials Testing And Evaluation Laboratory-I', 'PCC', 1.50, 'CE', 'LB'),
('CE214', 'Fluid Mechanics Laboratory', 'PCC', 1.50, 'CE', 'LB'),
('CE215', 'Mechanics Of Materials', 'PCC', 4.00, 'CE', 'TY'),
('CE216', 'Environmental Engineering', 'PCC', 3.00, 'CE', 'TY'),
('CE217', 'Transportation Engineering', 'PCC', 3.00, 'CE', 'TY'),
('CE218', 'Hydrology Water Resources And Irrigation Engineering', 'PCC', 4.00, 'CE', 'TY'),
('CE219', 'Materials Testing And Evaluation Laboratory-Ii (Highway And Concrete Laboratory', 'PCC', 1.50, 'CE', 'LB'),
('CE220', 'Environmental Engineering Laboratory', 'PCC', 1.50, 'CE', 'LB '),
('CE221', 'Structural Analysis', 'PCC', 4.00, 'CE', 'TY'),
('CE222', 'Structural Concrete Design', 'PCC', 4.00, 'CE', 'TY'),
('CE223', 'Geotechnical Engineering', 'PCC', 3.00, 'CE', 'TY'),
('CE224', 'Estimation Costing And Valuation', 'PCC ', 3.00, 'CE', 'TY'),
('CE225', 'Geotechnical Engineering Laboratory', 'PCC', 1.50, 'CE', 'LB'),
('CE226', 'Structural Mechanics Laboratory', 'PCC', 1.50, 'CE', 'LB'),
('CE227', 'Computer Aided Analysis And Design Structures', 'PCC', 1.50, 'CE', 'LB'),
('CE228', 'Seminar', 'PAC', 1.00, 'CE', '-'),
('CE229', 'Professional Practice, Law And Ethics', 'MCC', 0.00, 'CE', '-'),
('CE230', 'Comprehensive Test', 'PAC', 1.00, 'CE', '-'),
('CE231', 'Internship', 'PAC', 2.00, 'CE', '-'),
('CE232', 'Project Work', 'PAC', 8.00, 'CE', '-'),
('CE233', 'Engineering Mechanics And Mechanics Of Solids', 'ESC', 4.00, 'CE', 'TY'),
('CEH01', 'Eco-Friendly Building Materials And Construction', 'PCC', 4.00, 'CE', 'TY'),
('CEH02', 'Coastal And Off Shore Structures', 'PCC', 4.00, 'CE', 'TY'),
('CEH03', 'Design Of Pre-Stressed Concrete Structures', 'PCC', 4.00, 'CE', 'TY'),
('CEH04', 'Environmental Impact Assessment And Audit', 'PCC', 4.00, 'CE', 'TY'),
('CEH05', 'Design Of Steel Structural Elements', 'PCC', 4.00, 'CE', 'TY'),
('CEM01', 'Materials And Technologies Of Building Construction', 'PCC', 4.00, 'CE', 'TY'),
('CEM02', 'Basics Of Surveying', 'PCC', 4.00, 'CE', 'TY'),
('CEM03', 'Mechanics Of Solids And Fluids', 'PCC', 4.00, 'CE', 'TY'),
('CEM04', 'Pavement Materials And Ground Improvement Techniques', 'PCC', 4.00, 'CE', 'TY'),
('CEM05', 'Basics Of Structural Design', 'PCC', 4.00, 'CE', 'TY'),
('CEO01', 'Non Destructive Testing', 'OEC', 3.00, 'CE', 'TY'),
('CEO02', 'Building Lighting And Ventilation Engineering', 'OEC', 3.00, 'CE', 'TY'),
('CEO03', 'Air, Water And Noise Pollution', 'OEC', 3.00, 'CE', 'TY'),
('CEO04', 'Airport And Harbour Engineering', 'OEC', 3.00, 'CE', 'TY'),
('CEO05', 'Fluid Mechanics And Strength Of Materials', 'OEC', 3.00, 'CE', 'TY'),
('CEY01', 'Failure Assessment And Rehabilitation Of Structures', 'PEC', 3.00, 'CE', 'TY'),
('CEY04', 'Construction Management', 'PEC', 3.00, 'CE', 'TY'),
('CEY12', 'Bridge Engineering', 'PEC', 3.00, 'CE', 'TY'),
('CEY13', 'Geotechnical Processes And Application', 'PEC', 3.00, 'CE', 'TY'),
('CEY16', 'Foundation Engineering', 'PEC', 3.00, 'CE', 'TY'),
('CEY19', 'Formwork For Concrete Structures', 'PEC', 3.00, 'CE', 'TY'),
('CH201', 'Momentum Transfer', 'PCC', 4.00, 'CH', 'TY'),
('CH202', 'Process Calculations', 'PCC', 4.00, 'CH', 'TY'),
('CH203', 'Process Heat Transfer', 'PCC', 4.00, 'CH', 'TY'),
('CH204', 'Mechanical Operations', 'PCC', 3.00, 'CH', 'TY'),
('CH205', 'Chemical Engineering Thermodynamics', 'PCC', 4.00, 'CH', 'TY'),
('CH206', 'Mass Transfer?I', 'PCC', 4.00, 'CH', 'TY'),
('CH207', 'Chemical Engineering Lab?I', 'PCC', 1.50, 'CH', 'LB'),
('CH208', 'Mass Transfer?II', 'PCC', 4.00, 'CH', 'TY'),
('CH209', 'Chemical Reaction Engineering?I ', 'PCC', 4.00, 'CH', 'TY'),
('CH210', 'Chemical Process Industries', 'PCC', 3.00, 'CH', 'TY'),
('CH211', 'Chemical Engineering Lab?II', 'PCC', 1.50, 'CH', 'LB'),
('CH212', 'Chemical Reaction Engineering?II', 'PCC', 4.00, 'CH', 'TY'),
('CH213', 'Computational Methods And Practice  In Chemical Engineering ', 'PCC', 4.00, 'CH', 'TY'),
('CH214', 'Chemical Engineering Lab?III', 'PCC', 1.50, 'CH', 'LB'),
('CH215', 'Transport Phenomena', 'PCC', 4.00, 'CH', 'TY'),
('CH216', 'Process Dynamics & Control ', 'PCC', 4.00, 'CH', 'TY'),
('CH217', 'Process Equipment Design & Practice', 'PCC', 4.00, 'CH', 'TY'),
('CH218', 'Process Engineering Economics ', 'PCC', 3.00, 'CH', 'TY'),
('CH219', 'Process Control And Simulation Lab?IV', 'PCC', 1.50, 'CH', 'LB'),
('CH220', 'Seminar', 'PAC', 1.00, 'CH', 'LB'),
('CH221', 'Professional Ethics', 'MCC', 0.00, 'CH', '-'),
('CH222', 'Comprehensive Test', 'PAC', 1.00, 'CH', '-'),
('CH223', 'Internship ', 'PAC', 2.00, 'CH', '-'),
('CH224', 'Project Work ', 'PAC', 8.00, 'CH', 'PR'),
('CHH01', 'Introduction To Frontiers Of Chemical Engineering', 'PCC', 4.00, 'CH', 'TY'),
('CHH02', 'Special Topics In Chemical Engineering?I', 'PCC', 4.00, 'CH', 'TY'),
('CHH03', 'Special Topics In Chemical Engineering?II', 'PCC', 4.00, 'CH', 'TY'),
('CHH04', 'Special Topics In Chemical Engineering-III', 'PCC', 4.00, 'CH', 'TY'),
('CHH05', 'Special Topics In Chemical Engineering?IV', 'PCC', 4.00, 'CH', 'TY'),
('CHM01', 'Process Engineering Principles And Calculations', 'PCC', 4.00, 'CH', 'TY'),
('CHM02', 'Fluid Flow And Particle Technology', 'PCC', 4.00, 'CH', 'TY'),
('CHM03', 'Heat Transfer And Thermodynamics', 'PCC', 4.00, 'CH', 'TY'),
('CHM04', 'Fundamentals Of Mass Transfer And Separations', 'PCC', 4.00, 'CH', 'TY'),
('CHM05', 'Process Dynamics And Reaction Engineering', 'PCC', 4.00, 'CH', 'TY'),
('CHO01', 'Principles  Of  Process  Engineering', 'OEC', 3.00, 'CH', 'TY'),
('CHO02', 'Green Chemistry And Engineering', 'OEC', 3.00, 'CH', 'TY'),
('CHO03', 'Energy Engineering', 'OEC', 3.00, 'CH', 'TY'),
('CHO04', 'Introduction To Semiconductor Processing', 'OEC', 3.00, 'CH', 'TY'),
('CHY05', 'Energy Technology And Management', 'PEC', 3.00, 'CH', 'TY'),
('CHY06', 'Petroleum Refinery Engineering', 'PCC', 3.00, 'CH', 'TY'),
('CHY07', 'Nuclear Technology', 'PEC', 3.00, 'CH', 'TY'),
('CHY09', 'Chemical Engineering Practice', 'PCC', 3.00, 'CH', 'TY'),
('CHY10', 'Fluidization Engineering', 'PEC', 3.00, 'CH', 'TY'),
('CHY12', 'Pollution Control In Process Industries', 'PCC', 3.00, 'CH', 'TY'),
('CHY13', 'Bio Process Engineering', 'PEC', 3.00, 'CH', 'TY'),
('CS201', 'Programming For Problem Solving', 'ESC', 3.00, 'CS', 'TY'),
('CS202', 'Programming Laboratory', 'ESC', 1.50, 'CS', 'LB'),
('CS203', 'Computer Organization And Architecture', 'PCC', 4.00, 'CS', 'TY'),
('CS204', 'Data Structures', 'PCC', 3.00, 'CS', 'TY'),
('CS205', 'Object Oriented Programming Languages', 'PCC', 3.00, 'CS', 'TY'),
('CS206', 'Data Structures Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS207', 'Object Oriented Programming Languages Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS208', 'Operating Systems', 'PCC', 3.00, 'CS', 'TY'),
('CS209', 'Design And Analysis Of Algorithms', 'PCC', 3.00, 'CS', 'TY'),
('CS210', 'Database Management Systems', 'PCC', 3.00, 'CS', 'TY'),
('CS211', 'Software Engineering', 'PCC', 4.00, 'CS', 'TY'),
('CS212', 'Operating System Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS213', 'Design And Analysis Of Algorithms Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS214', 'Database Management Systems Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS215', 'Platform Technologies', 'PCC', 3.00, 'CS', 'TY'),
('CS216', 'Computer Networks', 'PCC', 3.00, 'CS', 'TY'),
('CS217', 'Automata Theory And Compiler Design', 'PCC', 4.00, 'CS', 'TY'),
('CS218', 'Platform Technologies Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS219', 'Computer Networks Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS220', 'Microprocessors And Microcontrollers', 'PCC', 3.00, 'CS', 'TY'),
('CS221', 'Web Technologies', 'PCC', 3.00, 'CS', 'TY'),
('CS222', 'Information Security', 'PCC', 4.00, 'CS', 'TY'),
('CS223', 'Microprocessors And Microcontrollers Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS224', 'Web Technologies Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS225', 'Artificial Intelligence', 'PCC', 3.00, 'CS', 'TY'),
('CS226', 'Parallel And Distributed Systems', 'PCC', 4.00, 'CS', 'TY'),
('CS227', 'Data Science Essentials', 'PCC', 4.00, 'CS', 'TY'),
('CS228', 'Artificial Intelligence Laboratory', 'PCC', 1.50, 'CS', 'LB'),
('CS229', 'Seminar', 'PAC', 1.00, 'CS', '-'),
('CS230', 'Professional Ethics', 'MCC', 0.00, 'CS', '-'),
('CS231', 'Comprehensive Test', 'PAC', 1.00, 'CS', '-'),
('CS232', 'Internship', 'PAC', 2.00, 'CS', '-'),
('CS233', 'Project Work', 'PAC', 8.00, 'CS', 'PR'),
('CS234', 'Data Structures And Object-Oriented Programming', 'ESC', 3.00, 'CS', 'TY'),
('CS235', 'Data Structures And Oops Lab', 'ESC', 1.50, 'CS', 'LB'),
('CS236', 'Microprocessors And Microcontrollers', 'ESC', 3.00, 'CS', 'TY'),
('CS237', 'Microprocessors And Microcontrollers Laboratory', 'ESC', 1.50, 'CS', 'LB'),
('CSH01', 'Human Computer Interaction', 'PCC', 4.00, 'CS', 'TY'),
('CSH02', 'Advanced Data Structure And Algorithms', 'PCC', 4.00, 'CS', 'TY'),
('CSH03', 'Advanced Software Design', 'PCC', 4.00, 'CS', 'TY'),
('CSH04', 'Advanced Security Concepts', 'PCC', 4.00, 'CS', 'TY'),
('CSH05', 'Deep Learning ', 'PCC', 4.00, 'CS', 'TY'),
('CSM01', 'Data Structures And Algorithms', 'PCC', 4.00, 'CS', 'TY'),
('CSM02', 'Principles Of Operating Systems', 'PCC', 4.00, 'CS', 'TY'),
('CSM03', 'Principles Of Database Management', 'PCC', 4.00, 'CS', 'TY'),
('CSM04', 'Internet Programming ', 'PCC', 4.00, 'CS', 'TY'),
('CSM05', 'Network Technology', 'PCC', 4.00, 'CS', 'TY'),
('CSO01', 'Introduction To Python Programming', 'OEC', 3.00, 'CS', 'TY'),
('CSO02', 'Java Programming', 'OEC', 3.00, 'CS', 'TY'),
('CSO03', 'Fundamentals Of Rdbms', 'OEC', 3.00, 'CS', 'TY'),
('CSO04', 'Essentials Of Mobile Application Development', 'OEC', 3.00, 'CS', 'TY'),
('CSO05', 'Introduction To Data Science', 'OEC', 3.00, 'CS', 'TY'),
('CSY03', 'Python Programming', 'PEC', 3.00, 'CS', 'TY'),
('CSY05', 'Internet Of Things', 'PEC', 3.00, 'CS', 'TY'),
('CSY06', 'Mobile Application Development', 'PEC', 3.00, 'CS', 'TY'),
('CSY09', 'Cloud Computing', 'PEC', 3.00, 'CS', 'TY'),
('CSY10', 'Machine Learning', 'PEC', 3.00, 'CS', 'TY'),
('CY201', 'Chemistry   ', 'BSC', 4.00, 'CY', 'TY'),
('CY202', 'Chemistry Laboratory', 'BSC', 1.50, 'CY', 'LB'),
('CY203', 'Chemistry For Chemical Engineering', 'BSC', 4.00, 'CY', 'TY'),
('CY204', 'Chemistry Lab For Chemical Engineering', 'BSC', 1.50, 'CY', 'LB'),
('EC201', 'Circuits And Networks', 'PCC', 3.00, 'EC', 'TY'),
('EC202', 'Electronic Devices And Circuits', 'PCC', 3.00, 'EC', 'TY'),
('EC203', 'Electromagnetic Waves And Fields', 'PCC', 3.00, 'EC', 'TY'),
('EC204', 'Digital System Design', 'PCC', 3.00, 'EC', 'TY'),
('EC205', 'Electronic Devices And Networks Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC206', 'Transmission Lines And Waveguides', 'PCC', 3.00, 'EC', 'TY'),
('EC207', 'Electronic Circuit Design', 'PCC', 3.00, 'EC', 'TY'),
('EC208', 'Signals And Systems', 'PCC', 4.00, 'EC', 'TY'),
('EC209', 'Analog Communication', 'PCC', 3.00, 'EC', 'TY'),
('EC210', 'Digital System Design Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC211', 'Electronic Circuit Design Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC212', 'Analog Communication Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC213', 'Digital Signal Processing And DSP Processors', 'PCC', 4.00, 'EC', 'TY'),
('EC214', 'Digital Communication', 'PCC', 3.00, 'EC', 'TY'),
('EC215', 'Digital Signal Processing Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC216', 'Digital Communication Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC217', 'Microwave And Optical Engineering', 'PCC', 3.00, 'EC', 'TY'),
('EC218', 'Data Communication Networks', 'PCC', 3.00, 'EC', 'TY'),
('EC219', 'VLSI Design', 'PCC', 3.00, 'EC', 'TY'),
('EC220', 'Microwave And Optical Engineering Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC221', 'Data Communication Networks Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC222', 'VLSI Design Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC223', 'Wireless Communication', 'PCC', 3.00, 'EC', 'TY'),
('EC224', 'Information Theory And Coding', 'PCC', 3.00, 'EC', 'TY'),
('EC225', 'Embedded System', 'PCC', 3.00, 'EC', 'TY'),
('EC226', 'Wireless Communication Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC227', 'Embedded System Laboratory', 'PCC', 1.50, 'EC', 'LB'),
('EC228', 'Mini Project', 'PAC', 1.00, 'EC', '-'),
('EC229', 'Professional Ethics', 'MCC', 0.00, 'EC', '-'),
('EC230', 'Comprehensive Test', 'PAC', 1.00, 'EC', '-'),
('EC231', 'Internship', 'PAC', 2.00, 'EC', '-'),
('EC232', 'Project Work', 'PAC', 8.00, 'EC', 'PR'),
('EC233', 'Electronic Circuits', 'ESC', 3.00, 'EC', 'TY'),
('EC234', 'Elements Of Electronics', 'ESC', 3.00, 'EC', 'TY'),
('EC235', 'Electronic Devices And Digital Systems', 'ESC', 3.00, 'EC', 'TY'),
('EC236', 'Electronic Devices And Digital Systems Laboratory', 'ESC', 1.50, 'EC', 'LB'),
('ECH01', 'Semiconductor Technology And Design', 'PCC', 4.00, 'EC', 'TY'),
('ECH02', 'Medical Electronics And Informatics', 'PCC', 4.00, 'EC', 'TY'),
('ECH03', 'Advanced Digital System Design', 'PCC', 4.00, 'EC', 'TY'),
('ECH04', 'Simulation Of Communication Systems', 'PCC', 4.00, 'EC', 'TY'),
('ECH05', 'Next Generation Networks', 'PCC', 4.00, 'EC', 'TY'),
('ECM01', 'Electron Devices', 'PCC', 4.00, 'EC', 'TY'),
('ECM02', 'Analog And Digital Circuits', 'PCC', 4.00, 'EC', 'TY'),
('ECM03', 'Communication Systems', 'PCC', 4.00, 'EC', 'TY'),
('ECM04', 'Basic Vlsi Design ', 'PCC', 4.00, 'EC', 'TY'),
('ECM05', 'Wireless Communication', 'PCC', 4.00, 'EC', 'TY'),
('ECO01', 'Consumer Electronics ', 'OEC', 3.00, 'EC', 'TY'),
('ECO02', 'Communication Engineering', 'OEC', 3.00, 'EC', 'TY'),
('ECO03', 'Cmos Vlsi Design', 'OEC', 3.00, 'EC', 'TY'),
('ECO04', 'Internet Of Things', 'OEC', 3.00, 'EC', 'TY'),
('ECO05', 'Wireless Communication Networks', 'OEC', 3.00, 'EC', 'TY'),
('ECO06', 'Cyber Security', 'OEC', 3.00, 'EC', 'TY'),
('ECY02', 'Computer Architecture And Organization', 'PEC', 3.00, 'EC', 'TY'),
('ECY03', 'Antennas And Wave Propagation', 'PEC', 3.00, 'EC', 'TY'),
('ECY05', 'Control Systems Engineering', 'PEC', 3.00, 'EC', 'TY'),
('ECY14', 'Cryptography And Network Security ', 'PEC', 3.00, 'EC', 'TY'),
('ECY16', 'Cognitive Radio Networks', 'PEC', 3.00, 'EC', 'TY'),
('EDM310', 'Orientation To Entrpreneurship', 'PCC', 4.00, 'IEDC', 'TY'),
('EDM410', 'Customer Discovery And Prototyping', 'PCC', 4.00, 'IEDC', 'TY'),
('EDM510', 'Development Of Business Model', 'PCC', 4.00, 'IEDC', 'TY'),
('EDM610', 'New Venture Development', 'PCC', 4.00, 'IEDC', 'TY'),
('EDM710', 'First Venture Project', 'PCC', 4.00, 'IEDC', 'TY'),
('EE201', 'Basic Electrical Engineering', 'ESC', 4.00, 'EE', 'TY'),
('EE202', 'Basic Electrical Engineering Laboratory', 'ESC', 1.50, 'EE', 'LB'),
('EE203', 'Electrical Circuit Analysis', 'PCC', 4.00, 'EE', 'TY'),
('EE204', 'Electromagnetic Fields', 'PCC', 3.00, 'EE', 'TY'),
('EE205', 'Electronic Devices And Circuits', 'PCC', 3.00, 'EE', 'TY'),
('EE206', 'Electrical Machines-I', 'PCC', 3.00, 'EE', 'TY'),
('EE207', 'Signals And Systems', 'PCC', 3.00, 'EE', 'TY'),
('EE208', 'Electronics Laboratory-I', 'PCC', 1.50, 'EE', 'LB'),
('EE209', 'Electrical Machines Laboratory-I', 'PCC', 1.50, 'EE', 'LB'),
('EE210', 'Analog Electronics', 'PCC', 3.00, 'EE', 'TY'),
('EE211', 'Pulse And Digital Circuits', 'PCC', 3.00, 'EE', 'TY'),
('EE212', 'Electrical Machines-II', 'PCC', 3.00, 'EE', 'TY'),
('EE213', 'Electronics Laboratory-II', 'PCC', 1.50, 'EE', 'LB'),
('EE214', 'Electrical Machines Laboratory-II', 'PCC', 1.50, 'EE', 'LB'),
('EE215', 'Analog And Digital Integrated Circuits', 'PCC', 3.00, 'EE', 'TY'),
('EE216', 'Power Electronics', 'PCC', 3.00, 'EE', 'TY'),
('EE217', 'Measurement And Instrumentation', 'PCC', 3.00, 'EE', 'TY'),
('EE218', 'Transmission And Distribution', 'PCC', 3.00, 'EE', 'TY'),
('EE219', 'Control Systems', 'PCC', 4.00, 'EE', 'TY'),
('EE220', 'Electronics Laboratory-III', 'PCC', 1.50, 'EE', 'LB'),
('EE221', 'Measurement And Control Laboratory', 'PCC', 1.50, 'EE', 'LB'),
('EE222', 'Power System Analysis', 'PCC', 4.00, 'EE', 'TY'),
('EE223', 'Microprocessors And Microcontrollers', 'PCC', 3.00, 'EE', 'TY'),
('EE224', 'Microprocessors And Microcontrollers Laboratory', 'PCC', 1.50, 'EE', 'LB'),
('EE225', 'Power Electronics Laboratory', 'PCC', 1.50, 'EE', 'LB'),
('EE226', 'Power System Operation And Control', 'PCC', 3.00, 'EE', 'TY'),
('EE227', 'Protection And Switchgear', 'PCC', 3.00, 'EE', 'TY'),
('EE228', 'Solid State Drives', 'PCC', 3.00, 'EE', 'TY'),
('EE229', 'Power Systems Laboratory', 'PCC', 2.00, 'EE', 'LB'),
('EE230', 'Seminar', 'PAC', 1.00, 'EE', '-'),
('EE231', 'Professional Ethics', 'MCC', 0.00, 'EE', '-'),
('EE232', 'Comprehensive Test', 'PAC', 1.00, 'EE', '-'),
('EE233', 'Internship', 'PAC', 2.00, 'EE', '-'),
('EE234', 'Project Work', 'PAC', 8.00, 'EE', 'PR'),
('EEH01', 'Energy Engineering', 'PCC', 4.00, 'EE', 'TY'),
('EEH02', 'Network Analysis And Synthesis', 'PCC', 4.00, 'EE', 'TY'),
('EEH03', 'Electrical Machine Design', 'PCC', 4.00, 'EE', 'TY'),
('EEH04', 'Advanced  Control Systems', 'PCC', 4.00, 'EE', 'TY'),
('EEH05', 'Power Electronics Applications To Power Systems', 'PCC', 4.00, 'EE', 'TY'),
('EEM01', 'Electrical Circuits And Measurements', 'PCC', 4.00, 'EE', 'TY'),
('EEM02', 'Analog And Digital Electronics', 'PCC', 4.00, 'EE', 'TY'),
('EEM03', 'Electrical Machines And Control', 'PCC', 4.00, 'EE', 'TY'),
('EEM04', 'Power Electronics And Drives', 'PCC', 4.00, 'EE', 'TY'),
('EEM05', 'Power Systems Engineering', 'PCC', 4.00, 'EE', 'TY'),
('EEO01', 'Power Generation Systems', 'OEC', 3.00, 'EE', 'TY'),
('EEO02', 'System Dynamics', 'OEC', 3.00, 'EE', 'TY'),
('EEO03', 'Fuzzy  And Neural Systems', 'OEC', 3.00, 'EE', 'TY'),
('EEY01', 'Electrical Safety And Quality Management', 'PEC', 3.00, 'EE', 'TY'),
('EEY03', 'Special Electrical Machines', 'PEC', 3.00, 'EE', 'TY'),
('EEY09', 'Smart Grid', 'PEC', 3.00, 'EE', 'TY'),
('EEY12', 'Power Quality', 'PEC', 3.00, 'EE', 'TY'),
('EEY18', 'Utilization Of Electrical Energy', 'PEC', 3.00, 'EE', 'TY'),
('EI201', 'Circuit Theory', 'PCC', 4.00, 'EI', 'TY'),
('EI202', 'Electronic Circuits', 'PCC', 3.00, 'EI', 'TY'),
('EI203', 'Electronic Design And Fabrication', 'PCC', 4.00, 'EI', 'TY'),
('EI204', 'Digital Logic Theory And Design', 'PCC', 3.00, 'EI', 'TY'),
('EI205', 'Electronic Circuits Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI206', 'Electronic Design And Fabrication Lab', 'PCC', 1.00, 'EI', 'LB'),
('EI207', 'Linear Integrated Circuits', 'PCC', 3.00, 'EI', 'TY'),
('EI208', 'Electrical And Electronics Instruments', 'PCC', 3.00, 'EI', 'TY'),
('EI209', 'Transducers And Measurements System', 'PCC', 3.00, 'EI', 'TY'),
('EI210', 'Linear And Integrated Circuits Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI211', 'Transducers And Measurements System Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI212', 'Instrumentation And Sensor Technologies For Civil Engineering Applications', 'ESC', 3.00, 'EI', 'TY'),
('EI213', 'Industrial Instrumentation', 'PCC', 4.00, 'EI', 'TY'),
('EI214', 'Microprocessors And Applications', 'PCC', 3.00, 'EI', 'TY'),
('EI215', 'Control Systems', 'PCC', 4.00, 'EI', 'TY'),
('EI216', 'Instrumentation System Design Lab', 'PCC', 1.50, 'EI', 'TY'),
('EI217', 'VLSI Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI218', 'Microprocessors And Applications Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI219', 'Process Control', 'PCC', 4.00, 'EI', 'TY'),
('EI220', 'Embedded System Design ', 'PCC', 4.00, 'EI', 'TY'),
('EI221', 'Robotics And Automation', 'PCC', 3.00, 'EI', 'TY'),
('EI222', 'Process Control Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI223', 'Virtual Instrumentation Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI224', 'Embedded System Design Lab', 'PCC', 1.50, 'EI', 'LB'),
('EI225', 'PLC And DCS', 'PCC', 4.00, 'EI', 'TY'),
('EI226', 'Analytical Instruments', 'PCC', 4.00, 'EI', 'TY'),
('EI227', 'Industrial Measurements And Control Lab', 'PCC', 1.50, 'EI', 'TY'),
('EI228', 'Seminar', 'PAC', 1.00, 'EI', 'LB'),
('EI229', 'Mini Project', 'PAC', 2.00, 'EI', 'LB'),
('EI230', 'Professional Ethics', 'MCC', 0.00, 'EI', '-'),
('EI231', 'Comprehensive Test', 'PAC', 1.00, 'EI', '-'),
('EI232', 'Internship', 'PAC', 2.00, 'EI', '-'),
('EI233', 'Project Work', 'PAC', 8.00, 'EI', '-'),
('EIH01', 'Measurement Data Analysis', 'PCC', 4.00, 'EI', 'TY'),
('EIH02', 'Design Of Sensors And Transducers', 'PCC', 4.00, 'EI', 'TY'),
('EIH03', 'Field Instruments For Process Control', 'PCC', 4.00, 'EI', 'TY'),
('EIH04', 'Advanced Control Engineering', 'PCC', 4.00, 'EI', 'TY'),
('EIH05', 'Cyber Security In Industrial Automation', 'PCC', 4.00, 'EI', 'TY'),
('EIM01', 'Transducer Engineering', 'PCC', 4.00, 'EI', 'TY'),
('EIM02', 'Measuring Instruments And Testing', 'PCC', 4.00, 'EI', 'TY'),
('EIM03', 'Measurements In Process Industries', 'PCC', 4.00, 'EI', 'TY'),
('EIM04', 'Essentials Of Control Engineering ', 'PCC', 4.00, 'EI', 'TY'),
('EIM05', 'Internet Of Things For Automation', 'PCC', 4.00, 'EI', 'TY'),
('EIO01', 'Measurements And Instrumentation', 'OEC', 3.00, 'EI', 'TY'),
('EIO02', 'Process Instrumentation', 'OEC', 3.00, 'EI', 'TY'),
('EIO03', 'Principles Of Medical Electronics', 'OEC', 3.00, 'EI', 'TY'),
('EIO04', 'Microcontroller Based System Design ', 'OEC', 3.00, 'EI', 'TY'),
('EIO05', 'Fundamentals Of Mems', 'OEC', 3.00, 'EI', 'TY'),
('EIY01', 'Signals And Systems', 'PEC', 3.00, 'EI', 'TY'),
('EIY02', 'Visual Programming For Instrumentation Engineers', 'PEC', 3.00, 'EI', 'TY'),
('EIY03', 'Industrial Electronics', 'PEC', 3.00, 'EI', 'TY'),
('EIY04', 'Virtual Instrumentation', 'PEC', 3.00, 'EI', 'TY'),
('EIY05', 'Digital Signal Processing', 'PEC', 3.00, 'EI', 'TY'),
('EIY06', 'Applied Soft Computing ', 'PEC', 3.00, 'EI', 'TY'),
('EIY07', 'VLSI Design', 'PEC', 3.00, 'EI', 'TY'),
('EIY08', 'Biomedical Instrumentation', 'PEC', 3.00, 'EI', 'TY'),
('EIY09', 'Instrumentation System Design', 'PEC', 3.00, 'EI', 'TY'),
('EIY10', 'Digital Image Processing', 'PEC', 3.00, 'EI', 'TY'),
('EIY11', 'Design Of Process Control System Components ', 'PEC', 3.00, 'EI', 'TY'),
('EIY12', 'Power Plant Instrumentation ', 'PEC', 3.00, 'EI', 'TY'),
('EIY13', 'Fiber Optics And Laser Instrumentation', 'PEC', 3.00, 'EI', 'TY'),
('EIY14', 'MEMS', 'PEC', 3.00, 'EI', 'TY'),
('EIY15', 'Instrumentation In Petrochemical Industry', 'PEC', 3.00, 'EI', 'TY'),
('EP201', 'Entrepreneurship', 'PAC', 2.00, 'IEDC', 'TY'),
('FY201', 'Induction Programme', 'MCC', 0.00, 'FY', 'MC'),
('HS201', 'English For Communication', 'HSM', 3.00, 'HS', 'TY'),
('HS202', 'Industrial Economics And Management', 'HSM', 3.00, 'HS', 'TY'),
('HSO01', 'Basic Course In English Communication', 'OEC', 3.00, 'HS', 'TY'),
('HSO03', 'English For Competitive Exams', 'OEC', 3.00, 'HS', 'TY'),
('HSO04 ', 'Introduction To Soft Skills', 'OEC', 3.00, 'HS', 'TY'),
('IT201', 'Digital System Design', 'PCC', 3.00, 'IT', 'TY'),
('IT202', 'Data Structures', 'PCC', 3.00, 'IT', 'TY'),
('IT203', 'Object Oriented Programming  Using C++ & Java', 'PCC', 3.00, 'IT', 'TY'),
('IT204', 'Digital Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT205', 'Data Structures Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT206', 'Object Oriented Programming Laboratory (C++ & Java)', 'PCC', 1.50, 'IT', 'LB'),
('IT207', 'Operating Systems', 'PCC', 3.00, 'IT', 'TY'),
('IT208', 'Computer Architecture', 'PCC', 3.00, 'IT', 'TY'),
('IT209', 'Microprocessors And Applications', 'PCC', 3.00, 'IT', 'TY'),
('IT210', 'Design And Analysis Of Algorithms', 'PCC', 3.00, 'IT', 'TY'),
('IT211', 'Operating Systems Laboratory With Unix / Linux', 'PCC', 1.50, 'IT', 'LB'),
('IT212', 'Microprocessor Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT213', 'Design And Analysis Of Algorithms Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT214', 'Database Management System', 'PCC', 3.00, 'IT', 'TY'),
('IT215', 'Resource Management And Graph Theory', 'PCC', 4.00, 'IT', 'TY'),
('IT216', 'Computer Networks', 'PCC', 4.00, 'IT', 'TY'),
('IT217', 'Information Coding Techniques  ', 'PEC', 3.00, 'IT', 'TY'),
('IT218', 'Database Management System Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT219', 'Computer Networks Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT220', 'Information Coding Techniques  Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT221', 'Software Engineering', 'PCC', 3.00, 'IT', 'TY'),
('IT222', 'Automata And Formal Languages', 'PCC', 4.00, 'IT', 'TY'),
('IT223', 'Web Technology ', 'PCC', 3.00, 'IT', 'TY'),
('IT224', 'Web Technology Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT225', 'Software Engineering Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT226', 'Artificial Intelligence', 'PCC', 4.00, 'IT', 'TY'),
('IT227', 'Artificial Intelligence Laboratory', 'PCC', 1.50, 'IT', 'LB'),
('IT228', 'Seminar', 'PAC', 1.00, 'IT', 'LB'),
('IT229', 'Mini Project', 'PCC', 1.50, 'IT', 'PR'),
('IT230', 'Professional Ethics', 'MCC', 0.00, 'IT', '-'),
('IT231', 'Comprehensive Test', 'PAC', 1.00, 'IT', '-'),
('IT232', 'Internship ', 'PAC', 2.00, 'IT', '-'),
('IT233', 'Project Work ', 'PAC', 8.00, 'IT', 'PR'),
('ITH01', 'Programming Paradigms', 'PCC', 4.00, 'IT', 'TY'),
('ITH02', 'Advanced Data Structures', 'PCC', 4.00, 'IT', 'TY'),
('ITH03', 'Biometrics', 'PCC', 4.00, 'IT', 'TY'),
('ITH04', 'Advanced Java Programming', 'PCC', 4.00, 'IT', 'TY'),
('ITH05', 'Introduction To Data Science ', 'PCC', 4.00, 'IT', 'TY'),
('ITM01', 'Data Structures And Algorithms', 'PCC', 4.00, 'IT', 'TY'),
('ITM02', 'Java And Internet Programming', 'PCC', 4.00, 'IT', 'TY'),
('ITM03', 'Data Communication And Computer Networks ', 'PCC', 4.00, 'IT', 'TY'),
('ITM04', 'Information Systems And Organization', 'PCC', 4.00, 'IT', 'TY'),
('ITM05', 'Iot And Python Programming', 'PCC', 4.00, 'IT', 'TY'),
('ITO01', 'Business Process', 'OEC', 3.00, 'IT', 'TY'),
('ITO02', 'Object Oriented Software Engineering', 'OEC', 3.00, 'IT', 'TY'),
('ITO03', 'Introduction To Operating Systems', 'OEC', 3.00, 'IT', 'TY'),
('ITO04', 'Introduction To Database', 'OEC', 3.00, 'IT', 'TY'),
('ITO05', 'Web Engineering', 'OEC', 3.00, 'IT', 'TY'),
('ITY01', 'Compiler Design', 'PEC', 3.00, 'IT', 'TY'),
('ITY07', 'Mobile Computing', 'PEC', 3.00, 'IT', 'TY'),
('ITY08', 'Image Processing', 'PEC', 3.00, 'IT', 'TY'),
('ITY13', 'Data Mining And Data Warehousing', 'PEC', 3.00, 'IT', 'TY'),
('ITY15', 'Information Security', 'PEC', 3.00, 'IT', 'TY'),
('ITY16', 'Introduction To Machine Learning', 'PEC', 3.00, 'IT', 'TY'),
('MA201', 'Mathematics-I', 'BSC', 4.00, 'MA', 'TY'),
('MA202', 'Mathematics-II', 'BSC', 4.00, 'MA', 'TY'),
('MA203', ' Numerical Methods And Statistics', 'BSC', 4.00, 'MA', 'TY'),
('MA204', 'Transforms, Partial Differential Equations And Statistics', 'BSC', 4.00, 'MA', 'TY'),
('MA205', 'Linear Algebra, Numerical Methods And Random Processes', 'BSC', 4.00, 'MA', 'TY'),
('MA206', 'Mathematics For Computing', 'BSC', 4.00, 'MA', 'TY'),
('ME201', 'Workshop And Manufacturing Practice', 'ESC', 1.50, 'ME', 'LB'),
('ME202', 'Engineering Graphics And Computer Aided Drawing', 'ESC', 3.00, 'ME', 'TY'),
('ME203', 'Engineering Mechanics', 'ESC', 4.00, 'ME', 'TY'),
('ME204', 'Fluid Mechanics And Hydraulic Machines', 'PCC', 4.00, 'ME', 'TY'),
('ME205', 'Engineering Thermodynamics', 'PCC', 4.00, 'ME', 'TY'),
('ME206', 'Materials Technology', 'PCC', 3.00, 'ME', 'TY'),
('ME207', 'Machine Drawing', 'PCC', 3.00, 'ME', 'TY'),
('ME208', 'Mechanics Of Solids', 'ESC', 4.00, 'ME', 'TY'),
('ME209', 'Thermal Engineering?I', 'PCC', 4.00, 'ME', 'TY'),
('ME210', 'Machining Technology', 'PCC', 3.00, 'ME', 'TY'),
('ME211', 'Kinematics Of  Machines', 'PCC', 4.00, 'ME', 'TY'),
('ME212', 'Mechanical Engineering Lab ?I ( Fluid Mechanics And Machines/ Material Technology /Machine Shop)', 'PCC', 1.50, 'ME', 'LB'),
('ME213', 'Heat And Mass Transfer', 'PCC', 4.00, 'ME', 'TY'),
('ME214', 'Manufacturing Processes', 'PCC', 4.00, 'ME', 'TY'),
('ME215', 'Dynamics Of Machines', 'PCC', 4.00, 'ME', 'TY'),
('ME216', 'Mechanical Engineering Lab?II (Dynamics Lab/  Special Machines / Heat Transfer Lab)', 'PCC', 1.50, 'ME', 'LB'),
('ME217', 'Thermal Engineering?II', 'PCC', 4.00, 'ME', 'TY'),
('ME218', 'Metrology And Measurements', 'PCC', 4.00, 'ME', 'TY'),
('ME219', 'Design Of Machine Elements', 'PCC', 4.00, 'ME', 'TY'),
('ME220', 'Seminar', 'PAC', 1.00, 'ME', '-'),
('ME221', 'Mechanical Engineering Lab?III (Thermal Engineering Lab /  Measurements Lab /  Modelling, Simulation And Analysis Lab)', 'PCC', 1.50, 'ME', 'LB'),
('ME222', 'Operations Research', 'PCC', 4.00, 'ME', 'TY'),
('ME223', 'Industrial Engineering And Management ', 'PCC', 3.00, 'ME', 'TY'),
('ME224', 'Advanced Manufacturing Technology', 'PCC', 4.00, 'ME', 'TY'),
('ME225', 'Professional Ethics', 'MCC', 0.00, 'ME', '   -'),
('ME226', 'Comprehensive Test', 'PAC', 1.00, 'ME', '-'),
('ME227', 'Internship', 'PAC', 2.00, 'ME', '-'),
('ME228', 'Project Work', 'PAC', 8.00, 'ME', 'PR'),
('MEH01', 'Engineering Optimization ', 'PCC', 4.00, 'ME', 'TY'),
('MEH02', 'Production Drawing And Cost Estimation', 'PCC', 4.00, 'ME', 'TY'),
('MEH03', 'Computational Biological Thermo-Fluid Mechanics', 'PCC', 4.00, 'ME', 'TY'),
('MEH04', 'Product Design And Development', 'PCC', 4.00, 'ME', 'TY'),
('MEH05', 'Surface Engineering', 'PCC', 4.00, 'ME', 'TY'),
('MEM01', 'Heat Power Engineering', 'PCC', 4.00, 'ME', 'TY'),
('MEM02', 'Manufacturing Technology', 'PCC', 4.00, 'ME', 'TY'),
('MEM03', 'Machine Design ', 'PCC', 4.00, 'ME', 'TY'),
('MEM04', 'Quality Control And Improvement Techniques', 'PCC', 4.00, 'ME', 'TY'),
('MEM05', 'Process Planning And Cost Analysis', 'PCC', 4.00, 'ME', 'TY'),
('MEO01', 'Renewable Energy', 'OEC', 3.00, 'ME', 'TY'),
('MEO02', 'Solar Power Engineering', 'OEC', 3.00, 'ME', 'TY'),
('MEO03', 'Fluid And Thermal Machines', 'OEC', 3.00, 'ME', 'TY'),
('MEO04', 'Marketing Management', 'OEC', 3.00, 'ME', 'TY'),
('MEO05', 'Elements Of Project Management', 'OEC', 3.00, 'ME', 'TY'),
('MEO06', 'Introduction To Nanoscience And Nanotechnology', 'OEC', 3.00, 'ME', 'TY'),
('MEO07', 'Industrial Automation', 'OEC', 3.00, 'ME', 'TY'),
('MEO08', 'Quantitative Techniques For Engineers', 'OEC', 3.00, 'ME', 'TY'),
('MEO09', 'Finite Element Analysis', 'OEC', 3.00, 'ME', 'TY'),
('MEY01', 'Energy And Environmental Engineering', 'PEC', 3.00, 'ME', 'TY'),
('MEY04', 'Automobile Engineering', 'PEC', 3.00, 'ME', 'TY'),
('MEY06', 'Fluid Power Automation', 'PEC', 3.00, 'ME', 'TY'),
('MEY08', 'Maintenance And Safety Engineering', 'PEC', 3.00, 'ME', 'TY'),
('MEY09', 'Computer Aided Design', 'PEC', 3.00, 'ME', 'TY'),
('MEY10', 'Cryogenic Engineering', 'PEC', 3.00, 'ME', 'TY'),
('MEY12', 'Design Of Transmission Systems', 'PEC', 3.00, 'ME', 'TY'),
('MEY14', 'Total Quality Management', 'PEC', 3.00, 'ME', 'TY'),
('PH201', 'Physics', 'BSC', 4.00, 'PH', 'TY'),
('PH202', 'Physics Laboratory', 'BSC', 1.50, 'PH', 'LB'),
('SH201', 'Biology For Engineers', 'BSC', 2.00, 'CY', 'TY'),
('SH202', 'Indian Constitution', 'MCC', 0.00, 'HS', '-'),
('SH203', 'Essence Of Indian Traditional Knowledge', 'MCC', 0.00, 'HS', '-');

-- --------------------------------------------------------

--
-- Table structure for table `u_course_regn`
--

CREATE TABLE `u_course_regn` (
  `REGNO` varchar(10) NOT NULL,
  `COURSE_CODE` varchar(10) NOT NULL,
  `SEM` float NOT NULL,
  `INTERNAL_MARKS` float(3,1) DEFAULT NULL,
  `ATTENDANCE` float(4,1) DEFAULT NULL,
  `FACULTY_ID` varchar(10) DEFAULT NULL,
  `SESSION` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_course_regn`
--

INSERT INTO `u_course_regn` (`REGNO`, `COURSE_CODE`, `SEM`, `INTERNAL_MARKS`, `ATTENDANCE`, `FACULTY_ID`, `SESSION`) VALUES
('18CE1002', 'CE201', 1, 39.0, 97.0, NULL, '18B'),
('18CE1002', 'CS201', 1, 39.0, 97.0, NULL, '18B'),
('18CE1002', 'CS201', 2, NULL, NULL, NULL, '19A'),
('18CE1002', 'CS202', 1, 34.0, 99.0, NULL, '18B'),
('18CE1002', 'CY201', 2, NULL, NULL, NULL, '19A'),
('18CE1002', 'CY202', 2, NULL, NULL, NULL, '19A'),
('18CE1002', 'EE201', 1, 38.0, 98.0, NULL, '18B'),
('18CE1002', 'EE202', 1, 37.0, 98.0, NULL, '18B'),
('18CE1002', 'FY201', 1, NULL, NULL, NULL, '18B'),
('18CE1002', 'HS201', 2, NULL, NULL, NULL, '19A'),
('18CE1002', 'MA201', 1, NULL, NULL, NULL, '18B'),
('18CE1002', 'MA202', 2, NULL, NULL, NULL, '19A'),
('18CE1002', 'ME201', 2, NULL, NULL, NULL, '19A'),
('18CE1002', 'ME202', 1, NULL, NULL, NULL, '18B'),
('18CE1002', 'PH201', 2, NULL, NULL, NULL, '19A'),
('18CE1002', 'PH202', 2, NULL, NULL, NULL, '19A'),
('18CE1004', 'CE201', 1, 38.0, 98.0, NULL, '18B'),
('18CE1004', 'CS201', 1, 37.0, 98.0, NULL, '18B'),
('18CE1004', 'CS202', 1, 40.0, 98.0, NULL, '18B'),
('18CE1004', 'EE201', 1, 40.0, 98.0, NULL, '18B'),
('18CE1004', 'EE202', 1, 38.0, 98.0, NULL, '18B'),
('18CE1004', 'FY201', 1, NULL, NULL, NULL, '18B'),
('18CE1004', 'MA201', 1, 36.0, 91.0, NULL, '18B'),
('18CE1004', 'ME202', 1, 36.0, 91.0, NULL, '18B'),
('18CE1005', 'CE201', 1, 39.0, 99.0, NULL, '18B'),
('18CE1005', 'CS201', 1, 36.0, 99.0, NULL, '18B'),
('18CE1005', 'CS202', 1, 38.0, 99.0, NULL, '18B'),
('18CE1005', 'EE201', 1, 38.0, 97.0, NULL, '18B'),
('18CE1005', 'EE202', 1, 40.0, 97.0, NULL, '18B'),
('18CE1005', 'FY201', 1, NULL, NULL, NULL, '18B'),
('18CE1005', 'MA201', 1, 34.0, 98.0, NULL, '18B'),
('18CE1005', 'ME202', 1, 34.0, 98.0, NULL, '18B');

-- --------------------------------------------------------

--
-- Table structure for table `u_dept`
--

CREATE TABLE `u_dept` (
  `DEPT_ID` varchar(5) NOT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `DEPT_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_dept`
--

INSERT INTO `u_dept` (`DEPT_ID`, `PASSWORD`, `DEPT_NAME`) VALUES
('CE', NULL, 'Civil Engineering'),
('CH', NULL, 'Chemical Engineering'),
('CS', NULL, 'Computer Science and Engineering'),
('CY', NULL, 'Chemistry'),
('EC', NULL, 'Electronics and Communication Engineering'),
('EE', NULL, 'Electrical and Electronics Engineering'),
('EI', NULL, 'Electronics and Instrumentation Engineering'),
('FY', NULL, 'First Year Induction'),
('HS', NULL, 'Humanities and Social Sciences'),
('IEDC', NULL, 'Incubation and Entrepreneurship Development Centre'),
('IT', NULL, 'Information Technology'),
('MA', NULL, 'Mathematics'),
('MB', NULL, 'MBA'),
('ME', NULL, 'Mechanical Engineering'),
('MT', NULL, 'Mechatronics'),
('PH', NULL, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `u_faculty`
--

CREATE TABLE `u_faculty` (
  `FACULTY_ID` varchar(10) NOT NULL,
  `PASSWORD` varchar(12) DEFAULT NULL,
  `FNAME` varchar(40) DEFAULT NULL,
  `DEPT_ID` varchar(5) DEFAULT NULL,
  `DESIGNATION` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PERMISSION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_faculty`
--

INSERT INTO `u_faculty` (`FACULTY_ID`, `PASSWORD`, `FNAME`, `DEPT_ID`, `DESIGNATION`, `EMAIL`, `PERMISSION`) VALUES
('1', 'kanmani', 'Dr. S. Kanmani', 'IT', 'Professor', 'kanmani@pec.edu', 0),
('2', 'geetha', 'Dr. V. Geetha', 'IT', 'Professor', 'geetha@pec.edu', 0),
('3', 'karunakaran', 'DR.KARUNAKARAN', 'ADMIN', 'ASST.REGISTRAR', 'KARUNAKARAN@PTUNIV.IN', 1),
('4', 'saravanan', 'DR.SARAVANAN', 'EC', 'PROFESSOR', 'SARAVANAN@PEC.EDU', 0);

-- --------------------------------------------------------

--
-- Table structure for table `u_prgm`
--

CREATE TABLE `u_prgm` (
  `PRGM_ID` float(2,0) NOT NULL,
  `DEPT_ID` varchar(5) DEFAULT NULL,
  `PRGM_NAME` varchar(100) DEFAULT NULL,
  `total_no_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_prgm`
--

INSERT INTO `u_prgm` (`PRGM_ID`, `DEPT_ID`, `PRGM_NAME`, `total_no_year`) VALUES
(1, 'CE', 'Bachelor of Technology', 4),
(2, 'ME', 'Bachelor of Technology', 4),
(3, 'EC', 'Bachelor of Technology', 4),
(4, 'CS', 'Bachelor of Technology', 4),
(5, 'EE', 'Bachelor of Technology', 4),
(6, 'EI', 'Bachelor of Technology', 4),
(7, 'CH', 'Bachelor of Technology', 4),
(8, 'IT', 'Bachelor of Technology', 4),
(9, 'MT', 'Bachelor of Technology', 4),
(10, 'CE', 'Master of Technology - Structural Engineering', 0),
(11, 'CE', 'Master of Technology - Environmental Engineering ', 0),
(12, 'ME', 'Master of Technology - Energy Technology', 0),
(13, 'ME', 'Master of Technology - Production Design and Manufacturing', 0),
(14, 'EC', 'Master of Technology - Electronics and Communication Engineering ', 0),
(15, 'EC', 'Master of Technology - Wireless Communication', 0),
(16, 'CS', 'Master of Technology - Data Science', 0),
(17, 'CS', 'Master of Technology - Information Security', 0),
(18, 'EE', 'Master of Technology - Electrical Drives and Control', 0),
(19, 'IT', 'Master of Technology - Internet of Things ', 0),
(20, 'EI', 'Master of Technology - Instrumentation Engineering ', 0),
(21, 'CS', 'Master of Computer Application ', 0),
(22, 'PH', 'Master of Science - Materials Science and Technology', 0),
(23, 'MB', 'Master of Business Administration - Innovation, Entrepreneurship and Venture Development ', 0),
(24, 'MB', 'Master of Business Administration - International Business ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `u_prgm_comp_course`
--

CREATE TABLE `u_prgm_comp_course` (
  `PRGM_ID` float(2,0) DEFAULT NULL,
  `COURSE_CODE` varchar(10) DEFAULT NULL,
  `SEM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_prgm_comp_course`
--

INSERT INTO `u_prgm_comp_course` (`PRGM_ID`, `COURSE_CODE`, `SEM`) VALUES
(2, 'CY201', 1),
(2, 'CY202', 1),
(2, 'FY201', 1),
(2, 'HS201', 1),
(2, 'MA201', 1),
(2, 'MA202', 2),
(2, 'ME201', 1),
(2, 'PH201', 1),
(2, 'PH202', 1),
(2, 'CE201', 2),
(2, 'CS201', 2),
(2, 'CS202', 2),
(2, 'EE201', 2),
(2, 'EE202', 2),
(2, 'ME202', 2),
(4, 'CY201', 1),
(4, 'CY202', 1),
(4, 'FY201', 1),
(4, 'HS201', 1),
(4, 'MA201', 1),
(4, 'MA202', 2),
(4, 'ME201', 1),
(4, 'PH201', 1),
(4, 'PH202', 1),
(4, 'CE201', 2),
(4, 'CS201', 2),
(4, 'CS202', 2),
(4, 'EE201', 2),
(4, 'EE202', 2),
(4, 'ME202', 2),
(7, 'CY201', 1),
(7, 'CY202', 1),
(7, 'FY201', 1),
(7, 'HS201', 1),
(7, 'MA201', 1),
(7, 'MA202', 2),
(7, 'ME201', 1),
(7, 'PH201', 1),
(7, 'PH202', 1),
(7, 'CE201', 2),
(7, 'CS201', 2),
(7, 'CS202', 2),
(7, 'EE201', 2),
(7, 'EE202', 2),
(7, 'ME202', 2),
(8, 'CY201', 1),
(8, 'CY202', 1),
(8, 'FY201', 1),
(8, 'HS201', 1),
(8, 'MA201', 1),
(8, 'MA202', 2),
(8, 'ME201', 1),
(8, 'PH201', 1),
(8, 'PH202', 1),
(8, 'CE201', 2),
(8, 'CS201', 2),
(8, 'CS202', 2),
(8, 'EE201', 2),
(8, 'EE202', 2),
(8, 'ME202', 2),
(1, 'CY201', 2),
(1, 'CY202', 2),
(1, 'FY201', 1),
(1, 'HS201', 1),
(1, 'MA201', 1),
(1, 'MA202', 2),
(1, 'ME201', 2),
(1, 'PH201', 2),
(1, 'PH202', 2),
(1, 'CE201', 1),
(1, 'CS201', 1),
(1, 'CS202', 1),
(1, 'EE201', 1),
(1, 'EE202', 1),
(1, 'ME202', 1),
(3, 'CY201', 2),
(3, 'CY202', 2),
(3, 'FY201', 1),
(3, 'HS201', 1),
(3, 'MA201', 1),
(3, 'MA202', 2),
(3, 'ME201', 2),
(3, 'PH201', 2),
(3, 'PH202', 2),
(3, 'CE201', 1),
(3, 'CS201', 1),
(3, 'CS202', 1),
(3, 'EE201', 1),
(3, 'EE202', 1),
(3, 'ME202', 1),
(5, 'CY201', 2),
(5, 'CY202', 2),
(5, 'FY201', 1),
(5, 'HS201', 1),
(5, 'MA201', 1),
(5, 'MA202', 2),
(5, 'ME201', 2),
(5, 'PH201', 2),
(5, 'PH202', 2),
(5, 'CE201', 1),
(5, 'CS201', 1),
(5, 'CS202', 1),
(5, 'EE201', 1),
(5, 'EE202', 1),
(5, 'ME202', 1),
(6, 'CY201', 2),
(6, 'CY202', 2),
(6, 'FY201', 1),
(6, 'HS201', 1),
(6, 'MA201', 1),
(6, 'MA202', 2),
(6, 'ME201', 2),
(6, 'PH201', 2),
(6, 'PH202', 2),
(6, 'CE201', 1),
(6, 'CS201', 1),
(6, 'CS202', 1),
(6, 'EE201', 1),
(6, 'EE202', 1),
(6, 'ME202', 1),
(1, 'CE202', 3),
(1, 'CE203', 3),
(1, 'CE204', 3),
(1, 'CE205', 3),
(1, 'CE206', 3),
(1, 'CE207', 3),
(1, 'CE208', 3),
(1, 'SH201', 3),
(7, 'CE233', 3),
(7, 'CH201', 3),
(7, 'CH202', 3),
(7, 'CY203', 3),
(7, 'CY204', 3),
(4, 'CS203', 3),
(4, 'CS204', 3),
(4, 'CS205', 3),
(4, 'CS206', 3),
(4, 'CS207', 3),
(4, 'EC235', 3),
(4, 'EC236', 3),
(3, 'CS234', 3),
(3, 'CS235', 3),
(3, 'EC201', 3),
(3, 'EC202', 3),
(3, 'EC203', 3),
(3, 'EC204', 3),
(3, 'EC205', 3),
(3, 'MA205', 3),
(5, 'EE203', 3),
(5, 'EE204', 3),
(5, 'EE205', 3),
(5, 'EE206', 3),
(5, 'EE207', 3),
(5, 'EE208', 3),
(5, 'EE209', 3),
(6, 'EI201', 3),
(6, 'EI202', 3),
(6, 'EI203', 3),
(6, 'EI204', 3),
(6, 'EI205', 3),
(6, 'EI206', 3),
(6, 'MA204', 3),
(8, 'EC233', 3),
(8, 'IT201', 3),
(8, 'IT202', 3),
(8, 'IT203', 3),
(8, 'IT204', 3),
(8, 'IT205', 3),
(8, 'IT206', 3),
(2, 'MA204', 3),
(2, 'ME203', 3),
(2, 'ME204', 3),
(2, 'ME205', 3),
(2, 'ME206', 3),
(2, 'ME207', 3),
(1, 'CE209', 4),
(1, 'CE210', 4),
(1, 'CE211', 4),
(1, 'CE212', 4),
(1, 'CE213', 4),
(1, 'CE214', 4),
(1, 'EI212', 4),
(1, 'MA203', 4),
(1, 'SH202', 4),
(7, 'CH203', 4),
(7, 'CH204', 4),
(7, 'CH205', 4),
(7, 'CH206', 4),
(7, 'CH207', 4),
(7, 'EC234', 4),
(4, 'CS208', 4),
(4, 'CS209', 4),
(4, 'CS210', 4),
(4, 'CS211', 4),
(4, 'CS212', 4),
(4, 'CS213', 4),
(4, 'CS214', 4),
(4, 'MA206', 4),
(3, 'EC206', 4),
(3, 'EC207', 4),
(3, 'EC208', 4),
(3, 'EC209', 4),
(3, 'EC210', 4),
(3, 'EC211', 4),
(3, 'EC212', 4),
(5, 'CS234', 4),
(5, 'CS235', 4),
(5, 'EE210', 4),
(5, 'EE211', 4),
(5, 'EE212', 4),
(5, 'EE213', 4),
(5, 'EE214', 4),
(6, 'CS234', 4),
(6, 'CS235', 4),
(6, 'EI207', 4),
(6, 'EI208', 4),
(6, 'EI209', 4),
(6, 'EI210', 4),
(6, 'EI211', 4),
(8, 'IT207', 4),
(8, 'IT208', 4),
(8, 'IT209', 4),
(8, 'IT210', 4),
(8, 'IT211', 4),
(8, 'IT212', 4),
(8, 'IT213', 4),
(2, 'EC234', 4),
(2, 'ME208', 4),
(2, 'ME209', 4),
(2, 'ME210', 4),
(2, 'ME211', 4),
(2, 'ME212', 4),
(1, 'CE215', 5),
(1, 'CE216', 5),
(1, 'CE217', 5),
(1, 'CE218', 5),
(1, 'CE219', 5),
(1, 'CE220', 5),
(1, 'EP201', 5),
(7, 'CH208', 5),
(7, 'CH209', 5),
(7, 'CH210', 5),
(7, 'CH211', 5),
(4, 'CS215', 5),
(4, 'CS216', 5),
(4, 'CS217', 5),
(4, 'CS218', 5),
(4, 'CS219', 5),
(3, 'CS236', 5),
(3, 'CS237', 5),
(3, 'EC213', 5),
(3, 'EC214', 5),
(3, 'EC215', 5),
(3, 'EC216', 5),
(5, 'EE215', 5),
(5, 'EE216', 5),
(5, 'EE217', 5),
(5, 'EE218', 5),
(5, 'EE219', 5),
(5, 'EE220', 5),
(5, 'EE221', 5),
(6, 'EI213', 5),
(6, 'EI214', 5),
(6, 'EI215', 5),
(6, 'EI216', 5),
(6, 'EI217', 5),
(6, 'EI218', 5),
(6, 'EP201', 5),
(8, 'IT214', 5),
(8, 'IT215', 5),
(8, 'IT216', 5),
(8, 'IT218', 5),
(8, 'IT219', 5),
(8, 'IT220', 5),
(2, 'ME213', 5),
(2, 'ME214', 5),
(2, 'ME215', 5),
(2, 'ME216', 5),
(1, 'CE221', 6),
(1, 'CE222', 6),
(1, 'CE223', 6),
(1, 'CE224', 6),
(1, 'CE225', 6),
(1, 'CE226', 6),
(1, 'SH203', 6),
(7, 'CH212', 6),
(7, 'CH213', 6),
(7, 'CH214', 6),
(4, 'CS220', 6),
(4, 'CS221', 6),
(4, 'CS222', 6),
(4, 'CS223', 6),
(4, 'CS224', 6),
(3, 'EC217', 6),
(3, 'EC218', 6),
(3, 'EC219', 6),
(3, 'EC220', 6),
(3, 'EC221', 6),
(3, 'EC222', 6),
(5, 'EE222', 6),
(5, 'EE223', 6),
(5, 'EE224', 6),
(5, 'EE225', 6),
(6, 'EI219', 6),
(6, 'EI220', 6),
(6, 'EI221', 6),
(6, 'EI222', 6),
(6, 'EI223', 6),
(6, 'EI224', 6),
(6, 'HS202', 6),
(8, 'IT221', 6),
(8, 'IT222', 6),
(8, 'IT223', 6),
(8, 'IT224', 6),
(8, 'IT225', 6),
(2, 'ME217', 6),
(2, 'ME218', 6),
(2, 'ME219', 6),
(2, 'ME220', 6),
(2, 'ME221', 6),
(1, 'CE227', 7),
(1, 'CE228', 7),
(1, 'CE229', 7),
(1, 'HS202', 7),
(7, 'CH215', 7),
(7, 'CH216', 7),
(7, 'CH217', 7),
(7, 'CH218', 7),
(7, 'CH219', 7),
(7, 'CH220', 7),
(7, 'CH221', 7),
(4, 'CS225', 7),
(4, 'CS226', 7),
(4, 'CS227', 7),
(4, 'CS228', 7),
(4, 'CS229', 7),
(4, 'CS230', 7),
(3, 'EC223', 7),
(3, 'EC224', 7),
(3, 'EC225', 7),
(3, 'EC226', 7),
(3, 'EC227', 7),
(3, 'EC228', 7),
(3, 'EC229', 7),
(5, 'EE226', 7),
(5, 'EE227', 7),
(5, 'EE228', 7),
(5, 'EE229', 7),
(5, 'EE230', 7),
(5, 'EE231', 7),
(6, 'EI225', 7),
(6, 'EI226', 7),
(6, 'EI227', 7),
(6, 'EI228', 7),
(6, 'EI229', 7),
(6, 'EI230', 7),
(8, 'IT226', 7),
(8, 'IT227', 7),
(8, 'IT228', 7),
(8, 'IT229', 7),
(8, 'IT230', 7),
(2, 'ME222', 7),
(2, 'ME223', 7),
(2, 'ME224', 7),
(2, 'ME225', 7),
(1, 'CE230', 8),
(1, 'CE231', 8),
(1, 'CE232', 8),
(7, 'CH222', 8),
(7, 'CH223', 8),
(7, 'CH224', 8),
(4, 'CS231', 8),
(4, 'CS232', 8),
(4, 'CS233', 8),
(3, 'EC230', 8),
(3, 'EC231', 8),
(3, 'EC232', 8),
(5, 'EE232', 8),
(5, 'EE233', 8),
(5, 'EE234', 8),
(6, 'EI231', 8),
(6, 'EI232', 8),
(6, 'EI233', 8),
(8, 'IT231', 8),
(8, 'IT232', 8),
(8, 'IT233', 8),
(2, 'ME226', 8),
(2, 'ME227', 8),
(2, 'ME228', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `b_tech_payment`
--
ALTER TABLE `b_tech_payment`
  ADD PRIMARY KEY (`REGNO`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `fee_structure`
--
ALTER TABLE `fee_structure`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `post_grad_payment`
--
ALTER TABLE `post_grad_payment`
  ADD PRIMARY KEY (`REGNO`);

--
-- Indexes for table `student_academic`
--
ALTER TABLE `student_academic`
  ADD PRIMARY KEY (`Regno`),
  ADD KEY `FK_PRGM_ID3` (`prgm_id`) USING BTREE;

--
-- Indexes for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `student_personal`
--
ALTER TABLE `student_personal`
  ADD PRIMARY KEY (`registration_id`);

--
-- Indexes for table `u_course`
--
ALTER TABLE `u_course`
  ADD PRIMARY KEY (`COURSE_CODE`),
  ADD KEY `DEPT_ID` (`DEPT_ID`);

--
-- Indexes for table `u_course_regn`
--
ALTER TABLE `u_course_regn`
  ADD PRIMARY KEY (`REGNO`,`COURSE_CODE`,`SEM`,`SESSION`),
  ADD KEY `FK_COURSE_CODE3` (`COURSE_CODE`),
  ADD KEY `FK_FACULTY_ID` (`FACULTY_ID`);

--
-- Indexes for table `u_dept`
--
ALTER TABLE `u_dept`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `u_faculty`
--
ALTER TABLE `u_faculty`
  ADD PRIMARY KEY (`FACULTY_ID`),
  ADD KEY `FK_DEPT_ID2` (`DEPT_ID`);

--
-- Indexes for table `u_prgm`
--
ALTER TABLE `u_prgm`
  ADD PRIMARY KEY (`PRGM_ID`),
  ADD KEY `FK_DEPT_ID` (`DEPT_ID`);

--
-- Indexes for table `u_prgm_comp_course`
--
ALTER TABLE `u_prgm_comp_course`
  ADD KEY `FK_PRGM_ID` (`PRGM_ID`),
  ADD KEY `FK_COURSE_CODE` (`COURSE_CODE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `u_course`
--
ALTER TABLE `u_course`
  ADD CONSTRAINT `U_COURSE_IBFK_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `u_dept` (`DEPT_ID`);

--
-- Constraints for table `u_prgm_comp_course`
--
ALTER TABLE `u_prgm_comp_course`
  ADD CONSTRAINT `FK_COURSE_CODE` FOREIGN KEY (`COURSE_CODE`) REFERENCES `u_course` (`COURSE_CODE`),
  ADD CONSTRAINT `FK_PRGM_ID` FOREIGN KEY (`PRGM_ID`) REFERENCES `u_prgm` (`PRGM_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
