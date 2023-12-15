-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 05:08 PM
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
-- Table structure for table `fees_structure`
--

CREATE TABLE `fees_structure` (
  `fid` int(11) UNSIGNED NOT NULL,
  `batch` varchar(15) NOT NULL,
  `category` varchar(25) NOT NULL,
  `admission_type` varchar(25) NOT NULL,
  `name_of_programme` varchar(50) NOT NULL,
  `tution_fee` int(11) NOT NULL,
  `special_fee` int(11) NOT NULL,
  `library_fee` int(11) NOT NULL,
  `computer_charge` int(11) NOT NULL,
  `cultural_fee` int(11) NOT NULL,
  `laboratory_fee` int(11) NOT NULL,
  `internet_fee` int(11) NOT NULL,
  `student_welfare_fund` int(11) NOT NULL,
  `autonomous_fee` int(11) NOT NULL,
  `contigency_fee` int(11) NOT NULL,
  `sports_fee` int(11) NOT NULL,
  `group_insurance` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees_structure`
--

INSERT INTO `fees_structure` (`fid`, `batch`, `category`, `admission_type`, `name_of_programme`, `tution_fee`, `special_fee`, `library_fee`, `computer_charge`, `cultural_fee`, `laboratory_fee`, `internet_fee`, `student_welfare_fund`, `autonomous_fee`, `contigency_fee`, `sports_fee`, `group_insurance`, `amount`) VALUES
(101, '20-24', 'ALL', 'CENTAC', 'Bachelor of Technology', 0, 4000, 2000, 2000, 1000, 1500, 1000, 300, 1500, 0, 500, 51, 13851),
(102, '20-24', 'ALL', 'JOSAA', 'Bachelor of Technology', 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 150051),
(103, '20-24', 'ALL', 'SELF SUPPORT', 'Bachelor of Technology', 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 150051),
(104, '20-24', 'SC', 'JOSAA', 'Bachelor of Technology', 75000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 75051),
(105, '20-24', 'ST', 'JOSAA', 'Bachelor of Technology', 75000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 75051),
(106, '20-24', 'ALL', 'OTHER STATE', 'Bachelor of Technology', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38851),
(107, '22-24', 'ALL', 'CENTAC', 'Master of Technology', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30851),
(108, '22-24', 'ALL', 'CENTAC', 'Master of Business Administration', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30851),
(109, '22-24', 'ALL', 'SPONSARED', 'Master of Technology', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38851),
(110, '22-24', 'ALL', 'CENTAC', 'Master of Science', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11151),
(111, '22-24', 'ALL', 'SELF FINANCING', 'Master of Technology', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37851),
(112, '22-24', 'ALL', 'SELF FINANCING', 'Master of Business Administration', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37851),
(113, '22-24', 'ALL', 'CENTAC', 'Master of Computer Application ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30851),
(114, '20-24', 'SC', 'CENTAC', 'Bachelor of Technology', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13851),
(115, '20-24', 'ST', 'CENTAC', 'Bachelor of Technology', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13851);

-- --------------------------------------------------------

--
-- Table structure for table `no_dues`
--

CREATE TABLE `no_dues` (
  `REGNO` varchar(15) NOT NULL,
  `student_name` varchar(35) NOT NULL,
  `prgm_id` int(11) NOT NULL,
  `batch` varchar(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `no_dues`
--

INSERT INTO `no_dues` (`REGNO`, `student_name`, `prgm_id`, `batch`, `amount`, `status`) VALUES
('20CH1055', 'THARSHINI', 8, '20-24', 0, 'No due'),
('20EC1092', 'SERU DEVI SIREESHA', 8, '20-24', 0, 'No due'),
('20EI1006', 'ARTHI B', 8, '20-24', 0, 'No due'),
('20EI1023', 'G.VISHALI', 8, '20-24', 0, 'No due'),
('20EI1054', 'SELVY S', 8, '20-24', 0, 'No due'),
('20IT1001', 'AATHIF MOHAMED ', 8, '20-24', 0, 'No due'),
('20IT1002', 'ABDUL BASITH M', 8, '20-24', 10, 'Due'),
('20IT1003', 'ABINESH C', 8, '20-24', 1000, 'No due'),
('20IT1005', 'ANJANA B K', 8, '20-24', 0, 'No due'),
('20IT1006', 'ARAVIDHAR M', 8, '20-24', 0, 'No due'),
('20IT1007', 'ARUN KUMAR J', 8, '20-24', 0, 'No due'),
('20IT1008', 'ARAVIDHAR RS', 8, '20-24', 0, 'No due'),
('20IT1009', 'ATHITHYAA R', 8, '20-24', 0, 'No due'),
('20IT1010', 'BANUPRIYA', 8, '20-24', 0, 'No due'),
('20IT1011', 'BARATH P', 8, '20-24', 0, 'No due'),
('20IT1012', 'BARATH Y', 8, '20-24', 0, 'No due'),
('20IT1013', 'SREE VYNASHAVI', 8, '20-24', 0, 'No due'),
('20IT1014', 'CHANDHINE', 8, '20-24', 0, 'No due'),
('20IT1015', 'SAI SRI VARUN', 8, '20-24', 0, 'No due'),
('20IT1016', 'CHIKKAM PADMASRI', 8, '20-24', 0, 'No due'),
('20IT1017', 'D EYURAJ ', 8, '20-24', 0, 'No due'),
('20IT1018', 'DEENA D', 8, '20-24', 0, 'No due'),
('20IT1019', 'DHANUSH M', 8, '20-24', 0, 'No due'),
('20IT1020', 'FAAIZA A', 8, '20-24', 0, 'No due'),
('20IT1021', 'GANESH A', 8, '20-24', 0, 'No due'),
('20IT1022', 'HARINI M', 8, '20-24', 0, 'No due'),
('20IT1023', 'HARI PRIYA ', 8, '20-24', 0, 'No due'),
('20IT1024', 'HIMA ASKOK', 8, '20-24', 0, 'No due'),
('20IT1025', 'BHUVANA', 8, '20-24', 0, 'No due'),
('20IT1026', 'JASBIR SIGH ', 8, '20-24', 0, 'No due'),
('20IT1027', 'JITESH KUMAR', 8, '20-24', 0, 'No due'),
('20IT1028', 'KEERTHANA R', 8, '20-24', 0, 'No due'),
('20IT1029', 'KRISHNA GOWVARDHINI', 8, '20-24', 0, 'No due'),
('20IT1030', 'LALITHA ', 8, '20-24', 0, 'No due'),
('20IT1031', 'MAATHUL MANAS', 8, '20-24', 0, 'No due'),
('20IT1032', 'MADHAN KUMAR', 8, '20-24', 0, 'No due'),
('20IT1033', 'MADIREDDY BAVANA', 8, '20-24', 0, 'No due'),
('20IT1034', 'MANIMARAN V', 8, '20-24', 0, 'No due'),
('20IT1035', 'MANIKANDAN', 8, '20-24', 0, 'No due'),
('20IT1036', 'PAWAN KRISHNA', 8, '20-24', 0, 'No due'),
('20IT1037', 'JAYATH SRI RAM', 8, '20-24', 0, 'No due'),
('20IT1038', 'MOHAMED LUQMAN', 8, '20-24', 0, 'No due'),
('20IT1039', 'MOHANRAJ J', 8, '20-24', 0, 'No due'),
('20IT1040', 'NIVETHA', 8, '20-24', 0, 'No due'),
('20IT1041', 'LASHMIPRIYA', 8, '20-24', 0, 'No due'),
('20IT1042', 'SWEDHA R', 8, '20-24', 0, 'No due'),
('20IT1043', 'RAGUL R', 8, '20-24', 0, 'No due'),
('22MB411', 'GANESH', 23, '22-24', 0, NULL),
('22MB432', 'PARNESH', 23, '22-24', 0, NULL),
('22MB434', 'HILAL', 23, '22-24', 0, NULL),
('22MB435', 'RAJA RAM', 23, '22-24', 0, NULL),
('22MB436', 'MOHAN', 23, '22-24', 0, NULL),
('22MB437', 'ARUN', 23, '22-24', 0, NULL),
('22MB438', 'MADHAN', 23, '22-24', 0, NULL),
('22MB439', 'GANESH', 23, '22-24', 0, NULL),
('22MB440', 'RAM', 23, '22-24', 0, NULL),
('22MB441', 'ABDUL BASITH M', 23, '22-24', 0, NULL),
('22MB442', 'DHANUSH', 23, '22-24', 0, NULL),
('22MB443', 'VIJAY', 23, '22-24', 0, NULL),
('22MB444', 'SURYA', 23, '22-24', 0, NULL),
('22MB445', 'JOHN SNOW', 23, '22-24', 0, NULL),
('22MB446', 'HARRY POTTER', 23, '22-24', 0, NULL),
('22MB447', 'ARULMOZHLI', 23, '22-24', 0, NULL),
('22MB448', 'SUNDHAR', 23, '22-24', 0, NULL),
('22MB449', 'MOHAMED RIZWAN', 23, '22-24', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_payment`
--

CREATE TABLE `scholarship_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `REGNO` varchar(15) NOT NULL,
  `name` varchar(35) NOT NULL,
  `category` varchar(25) NOT NULL,
  `mode_of_admission` varchar(25) NOT NULL,
  `course_name` varchar(40) NOT NULL,
  `department` varchar(20) NOT NULL,
  `email` varchar(35) NOT NULL,
  `scholarship_details` varchar(40) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarship_payment`
--

INSERT INTO `scholarship_payment` (`id`, `REGNO`, `name`, `category`, `mode_of_admission`, `course_name`, `department`, `email`, `scholarship_details`, `time_stamp`, `amount`) VALUES
(5, '20CH1055', 'THARSHINI', 'ALL', 'CENTAC', 'Bachelor of Technology', 'IT', '-', 'PMS', '2023-12-03 18:21:57', 13851),
(6, '20IT1001', 'AATHIF MOHAMED A', 'ALL', 'CENTAC', 'Bachelor of Technology', 'IT', '-', 'PMS', '2023-12-03 18:37:34', 13851),
(10, '20IT1008', 'ARAVIDHAR RS', 'ALL', 'JOSAA', 'Bachelor of Technology', 'IT', 'ARAVIDHAR@GMAIL.COM', 'PMSS', '2023-12-08 17:12:28', 45000);

--
-- Triggers `scholarship_payment`
--
DELIMITER $$
CREATE TRIGGER `FEE_CHECKER_SCHOLARSHIP` AFTER INSERT ON `scholarship_payment` FOR EACH ROW IF (((SELECT student_personal.quota_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) = 'SC') || ((SELECT student_personal.quota_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) = 'ST'))
THEN
IF (NEW.amount) >= (SELECT fees_structure.amount FROM fees_structure WHERE fees_structure.category = (NEW.category) AND fees_structure.admission_type = (NEW.mode_of_admission) AND fees_structure.name_of_programme = (NEW.course_name) AND fees_structure.batch = (SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.REGNO))
THEN
IF (SELECT student_fee_paid.2yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 2yr = 'PAID' WHERE REGNO = NEW.REGNO;
ELSEIF (SELECT student_fee_paid.3yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 3yr = 'PAID' WHERE REGNO = NEW.REGNO;
ELSEIF (SELECT student_fee_paid.4yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 4yr = 'PAID' WHERE REGNO = NEW.REGNO;
END IF;
ELSE
UPDATE student_fee_paid SET student_fee_paid.EXCESS = student_fee_paid.EXCESS + (NEW.amount) WHERE student_fee_paid.REGNO = NEW.REGNO;
END IF;
ELSE
IF (NEW.amount) >= (SELECT fees_structure.amount FROM fees_structure WHERE fees_structure.category = 'ALL' AND fees_structure.admission_type = (NEW.mode_of_admission) AND fees_structure.name_of_programme = (NEW.course_name) AND fees_structure.batch = (SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.REGNO))
THEN
IF (SELECT student_fee_paid.2yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 2yr = 'PAID' WHERE REGNO = NEW.REGNO;
ELSEIF (SELECT student_fee_paid.3yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 3yr = 'PAID' WHERE REGNO = NEW.REGNO;
ELSEIF (SELECT student_fee_paid.4yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 4yr = 'PAID' WHERE REGNO = NEW.REGNO;
END IF;
ELSE
UPDATE student_fee_paid SET student_fee_paid.EXCESS = student_fee_paid.EXCESS + (NEW.amount) WHERE student_fee_paid.REGNO = NEW.REGNO;
END IF;
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `NEW_ENTRY_SCHOLARSHIP` AFTER INSERT ON `scholarship_payment` FOR EACH ROW IF (SELECT COUNT(*) FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 0
THEN
IF (SELECT student_payment.course_name FROM student_payment WHERE student_payment.REGNO = NEW.REGNO ) = 'Bachelor of Technology'
THEN
INSERT INTO `student_fee_paid` (`REGNO`, `1yr`, `2yr`, `3yr`, `4yr`) VALUES (NEW.REGNO, 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID');
ELSE
INSERT INTO `student_fee_paid` (`REGNO`, `1yr`, `2yr`, `3yr`, `4yr`) VALUES (NEW.REGNO, 'PAID', 'NOT PAID', '-', '-');
END IF;
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `send_mail`
--

CREATE TABLE `send_mail` (
  `send_mail_on` datetime DEFAULT NULL,
  `dead_line` datetime DEFAULT NULL,
  `mail_for` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `send_mail`
--

INSERT INTO `send_mail` (`send_mail_on`, `dead_line`, `mail_for`) VALUES
('2023-09-20 00:00:00', '2023-09-07 00:00:00', '1'),
('2023-08-08 00:00:00', '2023-08-12 00:00:00', '2');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee_paid`
--

CREATE TABLE `student_fee_paid` (
  `REGNO` varchar(15) NOT NULL,
  `1yr` varchar(10) NOT NULL,
  `2yr` varchar(10) NOT NULL,
  `3yr` varchar(10) NOT NULL,
  `4yr` varchar(10) NOT NULL,
  `EXCESS` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_fee_paid`
--

INSERT INTO `student_fee_paid` (`REGNO`, `1yr`, `2yr`, `3yr`, `4yr`, `EXCESS`) VALUES
('19IT1025', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20CE1035', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20CE1039', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20CH1032', 'PAID', 'NOT PAID', '-', '-', 0),
('20CH1039', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20CH1055', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20CS1039', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20EC1002', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20EC1039', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20EC1092', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20EE1039', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20EE1055', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20EI1005', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20EI1023', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20EI1039', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20EI1054', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20EI2005', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20IT1001', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1002', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1003', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1005', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1006', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1007', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1008', 'PAID', 'PAID', 'NOT PAID', 'NOT PAID', 145051),
('20IT1009', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1010', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1011', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1012', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1013', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1014', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1015', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1016', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1017', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1018', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1019', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1020', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1021', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1022', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1023', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1024', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1025', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1026', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 77000),
('20IT1027', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20IT1028', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1029', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1030', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1031', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1032', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1033', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1034', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1035', 'PAID', 'PAID', 'NOT PAID', 'NOT PAID', 0),
('20IT1036', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20IT1037', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20IT1038', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1039', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1040', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1041', 'PAID', 'PAID', 'PAID', 'NOT PAID', 0),
('20IT1042', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1043', 'PAID', 'PAID', 'PAID', 'PAID', 0),
('20IT1062', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20ME1039', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20ME1055', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20MT1039', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('20MT1055', 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID', 0),
('22MB411', 'PAID', 'NOT PAID', '-', '-', 0),
('22MB432', 'PAID', 'NOT PAID', '-', '-', 0),
('22MB434', 'PAID', 'NOT PAID', '-', '-', 10000);

--
-- Triggers `student_fee_paid`
--
DELIMITER $$
CREATE TRIGGER `SPLIT_UP_PAY` BEFORE UPDATE ON `student_fee_paid` FOR EACH ROW IF(SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) != 'JOSAA' 
THEN 
IF(NEW.EXCESS) >= (SELECT fees_structure.amount FROM fees_structure WHERE fees_structure.batch = (SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.category = 'ALL' AND fees_structure.admission_type = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.name_of_programme = (SELECT student_personal.admitted_course FROM student_personal WHERE student_personal.Regno = NEW.REGNO)) 
THEN 
SET NEW.EXCESS = NEW.EXCESS - (SELECT fees_structure.amount FROM fees_structure WHERE fees_structure.batch = (SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.category = 'ALL' AND fees_structure.admission_type = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.name_of_programme = (SELECT student_personal.admitted_course FROM student_personal WHERE student_personal.Regno = NEW.REGNO)); 
IF (SELECT student_fee_paid.2yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID' 
THEN 
SET NEW.2yr = 'PAID'; 
ELSEIF (SELECT student_fee_paid.3yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID' 
THEN 
SET NEW.3yr = 'PAID'; 
ELSEIF (SELECT student_fee_paid.4yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID' 
THEN 
SET NEW.4yr = 'PAID'; 
END IF; 
END IF; 
ELSE 
IF (((SELECT student_personal.quota_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) = 'SC') || ((SELECT student_personal.quota_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) = 'ST')) 
THEN 
IF(NEW.EXCESS) >= (SELECT fees_structure.amount FROM fees_structure WHERE fees_structure.batch = (SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.category = (SELECT student_personal.quota_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.admission_type = 'JOSAA' AND fees_structure.name_of_programme = (SELECT student_personal.admitted_course FROM student_personal WHERE student_personal.Regno = NEW.REGNO)) 
THEN 
SET NEW.EXCESS = NEW.EXCESS - (SELECT fees_structure.amount FROM fees_structure WHERE fees_structure.batch = (SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.category = (SELECT student_personal.quota_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.admission_type = 'JOSAA' AND fees_structure.name_of_programme = (SELECT student_personal.admitted_course FROM student_personal WHERE student_personal.Regno = NEW.REGNO));
IF (SELECT student_fee_paid.2yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID' 
THEN 
SET NEW.2yr = 'PAID'; 
ELSEIF (SELECT student_fee_paid.3yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID' 
THEN
SET NEW.3yr = 'PAID';
ELSEIF (SELECT student_fee_paid.4yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID' 
THEN 
SET NEW.4yr = 'PAID'; 
END IF;
END IF;
ELSE 
IF(NEW.EXCESS) >= (SELECT fees_structure.amount FROM fees_structure WHERE fees_structure.batch = (SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.category = 'ALL' AND fees_structure.admission_type = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.name_of_programme = (SELECT student_personal.admitted_course FROM student_personal WHERE student_personal.Regno = NEW.REGNO)) 
THEN 
SET NEW.EXCESS = NEW.EXCESS - (SELECT fees_structure.amount FROM fees_structure WHERE fees_structure.batch = (SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.category = 'ALL' AND fees_structure.admission_type = (SELECT student_personal.mode_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) AND fees_structure.name_of_programme = (SELECT student_personal.admitted_course FROM student_personal WHERE student_personal.Regno = NEW.REGNO)); 
IF (SELECT student_fee_paid.2yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID' 
THEN 
SET NEW.2yr = 'PAID'; 
ELSEIF (SELECT student_fee_paid.3yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID' 
THEN 
SET NEW.3yr = 'PAID'; 
ELSEIF (SELECT student_fee_paid.4yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID' 
THEN
SET NEW.4yr = 'PAID'; 
END IF; 
END IF; 
END IF; 
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

CREATE TABLE `student_payment` (
  `REGNO` varchar(14) NOT NULL,
  `name` varchar(30) NOT NULL,
  `category` varchar(25) NOT NULL,
  `mode_of_admission` varchar(25) NOT NULL,
  `course_name` varchar(25) NOT NULL,
  `department` varchar(25) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `payment_method` varchar(25) NOT NULL,
  `transaction_id` varchar(15) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_payment`
--

INSERT INTO `student_payment` (`REGNO`, `name`, `category`, `mode_of_admission`, `course_name`, `department`, `mobile_no`, `email`, `payment_method`, `transaction_id`, `TIMESTAMP`, `amount`) VALUES
('22MB434', 'HILAL', 'BCM', 'CENTAC', 'Master of Business Admini', 'MB', '7702896326', 'maathul.manas@pec.edu', 'NEFT', '12000001', '2023-12-05 17:25:39', 10000),
('19IT1025', 'FAIYAZ', 'BCM', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'NEFT', '12011102211', '2023-08-17 15:23:50', 30851),
('20CH1032', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'CH', '7702896325', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12015002322', '2023-08-16 15:54:47', 30851),
('20CH1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'CH', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12015102211', '2023-08-17 16:23:17', 30851),
('22MB434', 'HILAL', 'BCM', 'CENTAC', 'Master of Technology', 'CS', '7702896326', 'hilal', 'UPI', '12015102322', '2023-08-15 17:49:37', 30851),
('20IT1002', 'ABDUL BASITH M', 'BCM', 'CENTAC', 'BACHELOR OF TECHNOLOGY', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015102518', '2023-08-19 08:20:56', 13851),
('20IT1002', 'ABDUL BASITH M', 'BCM', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'abdul.basith@pec.edu', 'UPI', '120151026', '2023-08-05 18:29:05', 13851),
('20IT1002', 'ABDUL BASITH M', 'BCM', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'abdul.basith@pec.edu', 'UPI', '12015102666', '2023-08-05 18:28:47', 30851),
('20IT1035', 'MANIKANDAN C', 'SC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'manikandan.c@pec.edu', 'UPI', '12015102667', '2023-08-05 18:18:27', 30851),
('20IT1035', 'MANIKANDAN C', 'SC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'abdul.basith@pec.edu', 'UPI', '12015102687', '2023-08-05 18:22:24', 13851),
('20MT1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'MT', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12015103130', '2023-08-17 16:27:44', 30851),
('20EC1002', 'FARVEZ', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'EC', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12015103322', '2023-08-16 15:56:15', 30851),
('20CE1035', 'HARISH', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'CE', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12015103324', '2023-08-16 16:02:09', 30851),
('20MT1055', 'MAHARAJA', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'MT', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12015103325', '2023-08-16 16:02:09', 30851),
('20EE1055', 'NAVEEN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'EE', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12015103326', '2023-08-16 16:02:09', 30851),
('20EI2005', 'MURTHI', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'EI', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12015103327', '2023-08-16 16:02:09', 30851),
('20ME1055', 'FARGES', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'ME', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12015103329', '2023-08-16 16:02:09', 30851),
('20ME1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'ME', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '120151033410', '2023-08-17 16:27:44', 30851),
('20EC1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'EC', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '120151034', '2023-08-17 16:27:44', 30851),
('20CE1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'CE', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12015103430', '2023-08-17 16:27:44', 30851),
('20IT1008', 'ARAVIDHAR RS', 'GENERAL', 'JOSSA', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103511', '2023-08-08 04:51:08', 150051),
('20IT1026', 'JASBIR SIGH', 'BC', 'JOSSA', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103512', '2023-08-08 04:51:08', 150051),
('20IT1027', 'JITHESH KUMAR', 'SC', 'JOSSA', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103513', '2023-08-08 04:51:08', 75051),
('20IT1036', 'PAWAN KRISHNA', 'MBC', 'JOSSA', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103514', '2023-08-08 04:51:08', 150051),
('20IT1037', 'JAYATH SRE RAM', 'BC', 'JOSSA', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103515', '2023-08-08 04:51:08', 150051),
('20EC1092', 'SERU DEVI SREESHA', 'OBC', 'JOSSA', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103516', '2023-08-08 04:51:08', 150051),
('20CH1055', 'THARSHINI', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103601', '2023-08-08 11:32:30', 30851),
('20EI1005', 'ARTHI B', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103602', '2023-08-08 11:32:30', 30851),
('20EI1054', 'SELVY S', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103603', '2023-08-08 11:32:30', 30851),
('20IT1001', 'AATHIF', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103604', '2023-08-08 11:32:30', 30851),
('20IT1003', 'ABINESH', 'SC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103605', '2023-08-08 11:32:30', 30851),
('20IT1005', 'ANJANA B K', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103606', '2023-08-08 11:32:30', 30851),
('20IT1006', 'ARAVIDHAR M', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103607', '2023-08-08 11:32:30', 30851),
('20IT1007', 'ARUN KUMAR J', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103608', '2023-08-08 11:32:30', 30851),
('20EI1023', 'G VISHALI', 'ST', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103609', '2023-08-08 11:32:30', 30851),
('20IT1010', 'BANUPRIYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103610', '2023-08-08 11:32:30', 30851),
('20IT1009', 'ATHITHYAA R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103611', '2023-08-08 11:32:30', 30851),
('20IT1011', 'BHARATH P', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103612', '2023-08-08 11:32:30', 30851),
('20IT1012', 'BHARATH Y', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103613', '2023-08-08 11:32:30', 30851),
('20IT1013', 'SREE VYNASHVI', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103614', '2023-08-08 11:32:30', 30851),
('20IT1014', 'CHANDINE C', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103615', '2023-08-08 11:32:30', 30851),
('20IT1015', 'VARUN', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103616', '2023-08-08 11:32:30', 30851),
('20IT1016', 'SRAVYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103617', '2023-08-08 11:32:30', 30851),
('20IT1017', 'D EYUVARAJ', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103618', '2023-08-08 11:32:30', 30851),
('20IT1018', 'DEENA D', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103619', '2023-08-08 11:32:30', 30851),
('20IT1019', 'DHANUSH M', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103620', '2023-08-08 11:32:30', 30851),
('20IT1020', 'FAAIZA A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103621', '2023-08-08 11:32:30', 30851),
('20IT1021', 'GANESH A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103622', '2023-08-08 11:32:30', 30851),
('20IT1022', 'HARINI M', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103623', '2023-08-08 11:32:30', 30851),
('20IT1023', 'HARIPRIYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103624', '2023-08-08 11:32:30', 30851),
('20IT1024', 'HEMA ASHOK', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103625', '2023-08-08 11:32:30', 30851),
('20IT1025', 'BHUVANA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103626', '2023-08-08 11:32:30', 30851),
('20IT1028', 'KEERTHANA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103627', '2023-08-08 11:32:30', 30851),
('20IT1029', 'KRISHNA GOVARIDHINI', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103628', '2023-08-08 11:32:30', 30851),
('20IT1030', 'LALITHA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103629', '2023-08-08 11:32:30', 30851),
('20IT1032', 'MADAN KUMAR', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103630', '2023-08-08 11:32:30', 30851),
('20IT1033', 'MADI REDDY', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103631', '2023-08-08 11:32:30', 30851),
('20IT1034', 'MANIMARAN', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103632', '2023-08-08 11:32:30', 30851),
('20IT1038', 'MOHD LUQMAN', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103633', '2023-08-08 11:32:30', 30851),
('20IT1039', 'MOHAN RAJ', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103634', '2023-08-08 11:32:30', 30851),
('20IT1040', 'NIVETHA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103635', '2023-08-08 11:32:30', 30851),
('20IT1041', 'LAKSHMI PRIYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103636', '2023-08-08 11:32:30', 30851),
('20IT1042', 'SWEDHA R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103637', '2023-08-08 11:32:30', 30851),
('20IT1043', 'RAGUL R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103638', '2023-08-08 11:32:30', 30851),
('20IT1031', 'MAATHUL MANAS A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103639', '2023-08-08 11:32:30', 30851),
('20IT1062', 'VISHWABHARATHY K', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103640', '2023-08-08 11:32:30', 30851),
('20EI1005', 'ARTHI B', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103702', '2023-08-08 12:46:34', 13851),
('20EI1054', 'SELVY S', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103703', '2023-08-08 12:46:34', 13851),
('20IT1001', 'AATHIF', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103704', '2023-08-08 12:46:34', 13851),
('20IT1003', 'ABINESH', 'SC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103705', '2023-08-08 12:46:34', 13851),
('20IT1005', 'ANJANA B K', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103706', '2023-08-08 12:46:34', 13851),
('20IT1006', 'ARAVIDHAR M', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103707', '2023-08-08 12:46:34', 13851),
('20IT1007', 'ARUN KUMAR J', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103708', '2023-08-08 12:46:34', 13851),
('20EI1023', 'G VISHALI', 'ST', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103709', '2023-08-08 12:46:34', 13851),
('20IT1010', 'BANUPRIYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103710', '2023-08-08 12:46:34', 13851),
('20IT1009', 'ATHITHYAA R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103711', '2023-08-08 12:46:34', 13851),
('20IT1011', 'BHARATH P', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103712', '2023-08-08 12:46:34', 13851),
('20IT1012', 'BHARATH Y', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103713', '2023-08-08 12:46:34', 13851),
('20IT1013', 'SREE VYNASHVI', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103714', '2023-08-08 12:46:34', 13851),
('20IT1014', 'CHANDINE C', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103715', '2023-08-08 12:46:34', 13851),
('20IT1015', 'VARUN', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103716', '2023-08-08 12:46:34', 13851),
('20IT1016', 'SRAVYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103717', '2023-08-08 12:46:34', 13851),
('20IT1017', 'D EYUVARAJ', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103718', '2023-08-08 12:46:34', 13851),
('20IT1018', 'DEENA D', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103719', '2023-08-08 12:46:34', 13851),
('20IT1019', 'DHANUSH M', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103720', '2023-08-08 12:46:34', 13851),
('20IT1020', 'FAAIZA A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103721', '2023-08-08 12:46:34', 13851),
('20IT1021', 'GANESH A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103722', '2023-08-08 12:46:34', 13851),
('20IT1022', 'HARINI M', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103723', '2023-08-08 12:46:34', 13851),
('20IT1023', 'HARIPRIYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103724', '2023-08-08 12:46:34', 13851),
('20IT1024', 'HEMA ASHOK', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103725', '2023-08-08 12:46:34', 13851),
('20IT1025', 'BHUVANA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103726', '2023-08-08 12:46:34', 13851),
('20IT1028', 'KEERTHANA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103727', '2023-08-08 12:46:34', 13851),
('20IT1029', 'KRISHNA GOVARIDHINI', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103728', '2023-08-08 12:46:34', 13851),
('20IT1030', 'LALITHA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103729', '2023-08-08 12:46:34', 13851),
('20IT1032', 'MADAN KUMAR', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103730', '2023-08-08 12:46:34', 13851),
('20IT1033', 'MADI REDDY', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103731', '2023-08-08 12:46:34', 13851),
('20IT1034', 'MANIMARAN', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103732', '2023-08-08 12:46:34', 13851),
('20IT1038', 'MOHD LUQMAN', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103733', '2023-08-08 12:46:34', 13851),
('20IT1039', 'MOHAN RAJ', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103734', '2023-08-08 12:46:34', 13851),
('20IT1040', 'NIVETHA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103735', '2023-08-08 12:46:34', 13851),
('20IT1041', 'LAKSHMI PRIYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103736', '2023-08-08 12:46:34', 13851),
('20IT1042', 'SWEDHA R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103737', '2023-08-08 12:46:34', 13851),
('20IT1043', 'RAGUL R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103738', '2023-08-08 12:46:34', 13851),
('20IT1031', 'MAATHUL MANAS A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103739', '2023-08-08 12:46:34', 13851),
('20IT1062', 'VISHWABHARATHY K', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103740', '2023-08-08 12:46:34', 13851),
('20CH1055', 'THARSHINI', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103801', '2023-08-08 12:47:36', 13851),
('20EI1005', 'ARTHI B', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103802', '2023-08-08 12:47:36', 13851),
('20EI1054', 'SELVY S', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103803', '2023-08-08 12:47:36', 13851),
('20IT1001', 'AATHIF', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103804', '2023-08-08 12:47:36', 13851),
('20IT1003', 'ABINESH', 'SC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103805', '2023-08-08 12:47:36', 13851),
('20IT1005', 'ANJANA B K', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103806', '2023-08-08 12:47:36', 13851),
('20IT1006', 'ARAVIDHAR M', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103807', '2023-08-08 12:47:36', 13851),
('20IT1007', 'ARUN KUMAR J', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103808', '2023-08-08 12:47:36', 13851),
('20EI1023', 'G VISHALI', 'ST', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103809', '2023-08-08 12:47:36', 13851),
('20IT1010', 'BANUPRIYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103810', '2023-08-08 12:47:36', 13851),
('20IT1009', 'ATHITHYAA R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103811', '2023-08-08 12:47:36', 13851),
('20IT1011', 'BHARATH P', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103812', '2023-08-08 12:47:36', 13851),
('20IT1012', 'BHARATH Y', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103813', '2023-08-08 12:47:36', 13851),
('20IT1013', 'SREE VYNASHVI', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103814', '2023-08-08 12:47:36', 13851),
('20IT1014', 'CHANDINE C', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103815', '2023-08-08 12:47:36', 13851),
('20IT1015', 'VARUN', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103816', '2023-08-08 12:47:36', 13851),
('20IT1016', 'SRAVYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103817', '2023-08-08 12:47:36', 13851),
('20IT1017', 'D EYUVARAJ', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103818', '2023-08-08 12:47:36', 13851),
('20IT1018', 'DEENA D', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103819', '2023-08-08 12:47:36', 13851),
('20IT1019', 'DHANUSH M', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103820', '2023-08-08 12:47:36', 13851),
('20IT1020', 'FAAIZA A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103821', '2023-08-08 12:47:36', 13851),
('20IT1021', 'GANESH A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103822', '2023-08-08 12:47:36', 13851),
('20IT1022', 'HARINI M', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103823', '2023-08-08 12:47:36', 13851),
('20IT1023', 'HARIPRIYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103824', '2023-08-08 12:47:36', 13851),
('20IT1024', 'HEMA ASHOK', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103825', '2023-08-08 12:47:36', 13851),
('20IT1025', 'BHUVANA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103826', '2023-08-08 12:47:36', 13851),
('20IT1028', 'KEERTHANA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103827', '2023-08-08 12:47:36', 13851),
('20IT1029', 'KRISHNA GOVARIDHINI', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103828', '2023-08-08 12:47:36', 13851),
('20IT1030', 'LALITHA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103829', '2023-08-08 12:47:36', 13851),
('20IT1032', 'MADAN KUMAR', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103830', '2023-08-08 12:47:36', 13851),
('20IT1033', 'MADI REDDY', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103831', '2023-08-08 12:47:36', 13851),
('20IT1034', 'MANIMARAN', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103832', '2023-08-08 12:47:36', 13851),
('20IT1038', 'MOHD LUQMAN', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103833', '2023-08-08 12:47:36', 13851),
('20IT1039', 'MOHAN RAJ', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103834', '2023-08-08 12:47:36', 13851),
('20IT1040', 'NIVETHA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103835', '2023-08-08 12:47:36', 13851),
('20IT1041', 'LAKSHMI PRIYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103836', '2023-08-08 12:47:36', 13851),
('20IT1042', 'SWEDHA R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103837', '2023-08-08 12:47:36', 13851),
('20IT1043', 'RAGUL R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103838', '2023-08-08 12:47:36', 13851),
('20IT1031', 'MAATHUL MANAS A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103839', '2023-08-08 12:47:36', 13851),
('20IT1062', 'VISHWABHARATHY K', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103840', '2023-08-08 12:47:36', 13851),
('20CH1055', 'THARSHINI', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103901', '2023-08-08 12:49:24', 13851),
('20EI1005', 'ARTHI B', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103902', '2023-08-08 12:49:24', 13851),
('20EI1023', 'G VISHALI', 'ST', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103909', '2023-08-08 12:49:24', 13851),
('20IT1010', 'BANUPRIYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103910', '2023-08-08 12:49:24', 13851),
('20IT1009', 'ATHITHYAA R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103911', '2023-08-08 12:49:24', 13851),
('20IT1011', 'BHARATH P', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103912', '2023-08-08 12:49:24', 13851),
('20IT1012', 'BHARATH Y', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103913', '2023-08-08 12:49:24', 13851),
('20IT1013', 'SREE VYNASHVI', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103914', '2023-08-08 12:49:24', 13851),
('20IT1019', 'DHANUSH M', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103920', '2023-08-08 12:49:24', 13851),
('20IT1020', 'FAAIZA A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103921', '2023-08-08 12:49:24', 13851),
('20IT1021', 'GANESH A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103922', '2023-08-08 12:49:24', 13851),
('20IT1022', 'HARINI M', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103923', '2023-08-08 12:49:24', 13851),
('20IT1023', 'HARIPRIYA', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103924', '2023-08-08 12:49:24', 13851),
('20IT1024', 'HEMA ASHOK', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103925', '2023-08-08 12:49:24', 13851),
('20IT1034', 'MANIMARAN', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103932', '2023-08-08 12:49:24', 13851),
('20IT1038', 'MOHD LUQMAN', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103933', '2023-08-08 12:49:24', 13851),
('20IT1039', 'MOHAN RAJ', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103934', '2023-08-08 12:49:24', 13851),
('20IT1042', 'SWEDHA R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103937', '2023-08-08 12:49:24', 13851),
('20IT1043', 'RAGUL R', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103938', '2023-08-08 12:49:24', 13851),
('20IT1031', 'MAATHUL MANAS A', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103939', '2023-08-08 12:49:24', 13851),
('20IT1062', 'VISHWABHARATHY K', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'UPI', '12015103940', '2023-08-08 12:49:24', 13851),
('20EI1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'EI', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12015110330', '2023-08-17 16:27:44', 30851),
('20CS1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'CS', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '1201511331', '2023-08-17 16:27:44', 30851),
('20EE1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'EE', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '1201514330', '2023-08-17 16:27:44', 30851),
('20IT1008', 'ARAVIDHAR RS', 'GENERAL', 'JOSAA', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'NEFT', '128528331', '2023-12-05 14:13:22', 50051),
('20IT1008', 'ARAVIDHAR RS', 'GENERAL', 'JOSAA', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'NEFT', '128528521', '2023-12-05 14:12:53', 50000),
('20IT1008', 'ARAVIDHAR RS', 'GENERAL', 'JOSAA', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'NEFT', '3352202211', '0000-00-00 00:00:00', 150051),
('20IT1026', 'JASBIR SIGH', 'BC', 'JOSAA', 'Bachelor of Technology', 'IT', '7702896326', 'maathul.manas@pec.edu', 'NEFT', '857428521', '2023-12-05 17:19:37', 77000);

--
-- Triggers `student_payment`
--
DELIMITER $$
CREATE TRIGGER `FEE_CHECKER` AFTER INSERT ON `student_payment` FOR EACH ROW IF (SELECT COUNT(*) FROM student_payment WHERE student_payment.REGNO = NEW.REGNO) > 1
THEN
IF (((SELECT student_personal.quota_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) = 'SC') || ((SELECT student_personal.quota_of_admission FROM student_personal WHERE student_personal.Regno = NEW.REGNO) = 'ST'))
THEN
IF (SELECT student_payment.amount FROM student_payment WHERE student_payment.transaction_id = NEW.transaction_id ) >= (SELECT fees_structure.amount FROM fees_structure WHERE fees_structure.category = (SELECT student_payment.category FROM student_payment WHERE student_payment.transaction_id = NEW.transaction_id) AND fees_structure.admission_type = (SELECT student_payment.mode_of_admission FROM student_payment WHERE student_payment.transaction_id = NEW.transaction_id) AND fees_structure.name_of_programme = (SELECT student_payment.course_name FROM student_payment WHERE student_payment.transaction_id = NEW.transaction_id) AND fees_structure.batch = (SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.REGNO))
THEN
IF (SELECT student_fee_paid.2yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 2yr = 'PAID' WHERE REGNO = NEW.REGNO;
ELSEIF (SELECT student_fee_paid.3yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 3yr = 'PAID' WHERE REGNO = NEW.REGNO;
ELSEIF (SELECT student_fee_paid.4yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 4yr = 'PAID' WHERE REGNO = NEW.REGNO;
END IF;
ELSE
UPDATE student_fee_paid SET student_fee_paid.EXCESS = student_fee_paid.EXCESS + (SELECT student_payment.amount FROM student_payment WHERE student_payment.transaction_id = NEW.transaction_id) WHERE student_fee_paid.REGNO = NEW.REGNO;
END IF;
ELSE
IF (SELECT student_payment.amount FROM student_payment WHERE student_payment.transaction_id = NEW.transaction_id ) >= (SELECT fees_structure.amount FROM fees_structure WHERE fees_structure.category = 'ALL' AND fees_structure.admission_type = (SELECT student_payment.mode_of_admission FROM student_payment WHERE student_payment.transaction_id = NEW.transaction_id) AND fees_structure.name_of_programme = (SELECT student_payment.course_name FROM student_payment WHERE student_payment.transaction_id = NEW.transaction_id) AND fees_structure.batch = (SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.REGNO))
THEN
IF (SELECT student_fee_paid.2yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 2yr = 'PAID' WHERE REGNO = NEW.REGNO;
ELSEIF (SELECT student_fee_paid.3yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 3yr = 'PAID' WHERE REGNO = NEW.REGNO;
ELSEIF (SELECT student_fee_paid.4yr FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.REGNO) = 'NOT PAID'
THEN
UPDATE student_fee_paid SET 4yr = 'PAID' WHERE REGNO = NEW.REGNO;
END IF;
ELSE
UPDATE student_fee_paid SET student_fee_paid.EXCESS = student_fee_paid.EXCESS + (SELECT student_payment.amount FROM student_payment WHERE student_payment.transaction_id = NEW.transaction_id) WHERE student_fee_paid.REGNO = NEW.REGNO;
END IF;
END IF;
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `NEW_ENTRY` AFTER INSERT ON `student_payment` FOR EACH ROW IF (SELECT COUNT(*) FROM student_payment WHERE student_payment.REGNO = NEW.REGNO) = 1
THEN
IF (SELECT student_payment.course_name FROM student_payment WHERE student_payment.REGNO = NEW.REGNO ) = 'Bachelor of Technology'
THEN
INSERT INTO `student_fee_paid` (`REGNO`, `1yr`, `2yr`, `3yr`, `4yr`) VALUES (NEW.REGNO, 'PAID', 'NOT PAID', 'NOT PAID', 'NOT PAID');
ELSE
INSERT INTO `student_fee_paid` (`REGNO`, `1yr`, `2yr`, `3yr`, `4yr`) VALUES (NEW.REGNO, 'PAID', 'NOT PAID', '-', '-');
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
  `mode_of_admission` varchar(25) NOT NULL,
  `admitted_course` varchar(35) NOT NULL,
  `dept_id` varchar(10) NOT NULL,
  `yoj` varchar(10) NOT NULL,
  `prgm_id` float DEFAULT NULL,
  `batch` varchar(10) NOT NULL,
  `current_year` varchar(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `mobile_number` varchar(12) NOT NULL,
  `mail_id` varchar(30) NOT NULL,
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

INSERT INTO `student_personal` (`registration_id`, `student_name`, `dob`, `address`, `state`, `religion`, `quota_of_admission`, `mode_of_admission`, `admitted_course`, `dept_id`, `yoj`, `prgm_id`, `batch`, `current_year`, `gender`, `nationality`, `mobile_number`, `mail_id`, `father_name`, `father_occupation`, `father_mobile_number`, `alternate_number`, `father_mail_id`, `Regno`, `image`) VALUES
('643511', 'ABDUL BASITH M', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'MULSIM', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '7708352024', 'abdbasith105@gmail.com', 'ABU BACKER ', '-', '9488449457', '9486261143', '-', '20IT1002', '20IT1002.png'),
('643512', 'MANIKANDAN', '2003-05-19', 'PONDICHERRY', 'PONDICHERRY', 'HINDU', 'SC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '7373321966', 'bilalbasith.1234@gmail.com', 'KANDAN', '-', '9488449458', '-', '-', '20IT1035', '20IT1034.png'),
('643513', 'ARAVIDHAR RS', '2001-05-19', 'KUMBAKONAM', 'TAMIL NADU', 'HINDU', 'GENERAL', 'JOSAA', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '7373321958', 'ARAVIDHAR@GMAIL.COM', '-', '-', '9488449444', '9486261142', '-', '20IT1008', '20IT1008.png'),
('645455', 'PARNESH', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'ARUN ', '-', '9488449457', '9486261143', '-', '22MB432', ''),
('645456', 'HILAL', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'BCM', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'DEVA ', '-', '9488449457', '9486261143', '-', '22MB434', ''),
('645457', 'RAJA RAM', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'RAJAN ', '-', '9488449457', '9486261143', '-', '22MB435', ''),
('645458', 'MOHAN', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'MURUGAN', '-', '9488449457', '9486261143', '-', '22MB436', ''),
('645459', 'ARUN', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'RAMESH ', '-', '9488449457', '9486261143', '-', '22MB437', ''),
('645460', 'MADHAN', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'PRABHU ', '-', '9488449457', '9486261143', '-', '22MB438', ''),
('645461', 'GANESH', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'RAJU ', '-', '9488449457', '9486261143', '-', '22MB439', ''),
('645462', 'RAM', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'BASKAR ', '-', '9488449457', '9486261143', '-', '22MB440', ''),
('645463', 'ABDUL BASITH M', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'MUSLIM', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'ABU BACKER ', '-', '9488449457', '9486261143', '-', '22MB441', ''),
('645464', 'DHANUSH', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'SARAVANAN ', '-', '9488449457', '9486261143', '-', '22MB442', ''),
('645465', 'VIJAY', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'BERLIN ', '-', '9488449457', '9486261143', '-', '22MB443', ''),
('645466', 'SURYA', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'DEVARAJ', '-', '9488449457', '9486261143', '-', '22MB444', ''),
('645467', 'JOHN SNOW', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'VISHWA ', '-', '9488449457', '9486261143', '-', '22MB445', ''),
('645468', 'HARRY POTTER', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'RAJESH ', '-', '9488449457', '9486261143', '-', '22MB446', ''),
('645469', 'ARULMOZHLI', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'ARAVIDHAN ', '-', '9488449457', '9486261143', '-', '22MB447', ''),
('645470', 'SUNDHAR', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'VIKRAM ', '-', '9488449457', '9486261143', '-', '22MB448', ''),
('645471', 'MOHAMED RIZWAN', '2002-05-21', 'KARAIKAL', 'PUDUCHERRY', 'MUSLIM', 'GENERAL', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '7708352024', '', 'ABU BACKER ', '-', '9488449457', '9486261143', '-', '22MB449', ''),
('665252', 'THARSHINI', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20CH1055', '-'),
('665253', 'ARTHI B', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', '0BC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20EI1006', '-'),
('665255', 'SELVY S', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20EI1054', '-'),
('665256', 'SERU DEVI SIREESHA', '0000-00-00', '', 'TELUGANA', 'HINDU', 'OBC', 'JOSAA', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20EC1092', '-'),
('665257', 'AATHIF MOHAMED A', '0000-00-00', 'KARAIKAL', 'PUDUCHERRY', 'MUSLIM', 'BCM', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1001', '-'),
('665258', 'ABINESH C', '2003-08-12', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'SC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1003', '-'),
('665259', 'ANJANA B K', '0000-00-00', 'MAHE', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1005', '-'),
('665260', 'ARAVIDHAR M', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1006', '-'),
('665261', 'ARUN KUMAR J', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'BC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1007', '-'),
('665262', 'G.VISHALI', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'ST', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20EI1023', '-'),
('665263', 'BANUPRIYA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1010', '-'),
('665264', 'BARATH P', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1011', '-'),
('665265', 'ATHITHYAA R', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'OBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1009', '-'),
('665266', 'BARATH Y', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1012', '-'),
('665267', 'SREE VYNASHAVI', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1013', '-'),
('665268', 'CHANDHINE', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1014', '-'),
('665269', 'SAI SRI VARUN', '0000-00-00', 'YANAM', 'PUDUCHERRY', 'HINDU', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1015', '-'),
('665270', 'CHIKKAM PADMASRI', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1016', '-'),
('665271', 'D EYURAJ ', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1017', '-'),
('665272', 'DEENA D', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1018', '-'),
('665273', 'DHANUSH M', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1019', '-'),
('665274', 'FAAIZA A', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1020', '-'),
('665275', 'GANESH A', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1021', '-'),
('665276', 'HARINI M', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1022', '-'),
('665277', 'HARI PRIYA ', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1023', '-'),
('665278', 'HIMA ASKOK', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1024', '-'),
('665279', 'BHUVANA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1025', '-'),
('665280', 'JASBIR SIGH ', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'BC', 'JOSAA', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1026', '-'),
('665281', 'JITESH KUMAR', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'ST', 'JOSAA', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1027', '-'),
('665282', 'KEERTHANA R', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1028', '-'),
('665283', 'KRISHNA GOWVARDHINI', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1029', '-'),
('665284', 'LALITHA ', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1030', '-'),
('665285', 'MADHAN KUMAR', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1032', '-'),
('665286', 'MADIREDDY BAVANA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1033', '-'),
('665287', 'MANIMARAN V', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1034', '-'),
('665288', 'PAWAN KRISHNA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'JOSAA', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1036', '-'),
('665289', 'JAYATH SRI RAM', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'BC', 'JOSAA', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1037', '-'),
('665290', 'MOHAMED LUQMAN', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'MUSLIUM', 'BCM', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1038', '-'),
('665291', 'MOHANRAJ J', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1039', '-'),
('665292', 'NIVETHA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1040', '-'),
('665293', 'LASHMIPRIYA', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1041', '-'),
('665294', 'SWEDHA R', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'FEMALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1042', '-'),
('665295', 'RAGUL R', '0000-00-00', 'PONDICHERRY', 'PUDUCHERRY', 'HINDU', 'MBC', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '-', '-', '-', '-', '-', '-', '-', '20IT1043', '-'),
('665454', 'MAATHUL MANAS', '2003-04-29', 'NERAVY', 'PONDICHERRY', 'MUSLIM', 'BCM', 'CENTAC', 'Bachelor of Technology', 'IT', '2020', 8, '20-24', '4', 'MALE', 'INDIAN', '1236547890', 'MAATHUL.12345@GMAIL.COM', 'ABDULLA', '-', '9488449444', '1254788960', 'ABDULLAH@GMAIL.COM', '20IT1031', '20IT1031.png'),
('665455', 'GANESH', '2003-04-29', 'NERAVY', 'PONDICHERRY', 'MUSLIM', 'BCM', 'CENTAC', 'Master of Business Administration', 'MB', '2022', 23, '22-24', '2', 'MALE', 'INDIAN', '1236547890', 'GANESH.12345@GMAIL.COM', 'RAMESH', '-', '9488449004', '1254788960', 'RAMESH@GMAIL.COM', '22MB411', '22MB411.png');

--
-- Triggers `student_personal`
--
DELIMITER $$
CREATE TRIGGER `STU_DUE` AFTER UPDATE ON `student_personal` FOR EACH ROW IF(SELECT student_personal.admitted_course FROM student_personal WHERE student_personal.Regno = NEW.Regno) = 'Bachelor of Technology'
THEN
IF(SELECT student_personal.current_year FROM student_personal WHERE student_personal.Regno = NEW.Regno) = '4'
THEN
IF(SELECT COUNT(*) FROM no_dues WHERE no_dues.REGNO = NEW.Regno) = 0
THEN
INSERT INTO `no_dues` (`REGNO`, `student_name`, `prgm_id`, `batch`, `amount`, `status`) VALUES (NEW.Regno, (SELECT student_personal.student_name FROM student_personal WHERE student_personal.Regno = NEW.Regno),(SELECT student_personal.prgm_id FROM student_personal WHERE student_personal.Regno = NEW.Regno),(SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.Regno), '', NULL);
END IF;
END IF;
ELSE
IF(SELECT student_personal.current_year FROM student_personal WHERE student_personal.Regno = NEW.Regno) = '2'
THEN
IF(SELECT COUNT(*) FROM no_dues WHERE no_dues.REGNO = NEW.Regno) = 0
THEN
INSERT INTO `no_dues` (`REGNO`, `student_name`, `prgm_id`, `batch`, `amount`, `status`) VALUES (NEW.Regno, (SELECT student_personal.student_name FROM student_personal WHERE student_personal.Regno = NEW.Regno),(SELECT student_personal.prgm_id FROM student_personal WHERE student_personal.Regno = NEW.Regno),(SELECT student_personal.batch FROM student_personal WHERE student_personal.Regno = NEW.Regno), '', NULL);
END IF;
END IF;
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UPDATE_REGNO` AFTER UPDATE ON `student_personal` FOR EACH ROW IF (SELECT student_personal.Regno FROM student_personal WHERE student_personal.registration_id = NEW.registration_id) != ''
THEN
IF (SELECT student_fee_paid.REGNO FROM student_fee_paid WHERE student_fee_paid.REGNO = NEW.registration_id) > 0
THEN
UPDATE student_fee_paid SET student_fee_paid.REGNO = (SELECT student_personal.Regno FROM student_personal WHERE student_personal.registration_id = NEW.registration_id) WHERE student_fee_paid.REGNO = NEW.registration_id;
END IF;
IF (SELECT student_payment.REGNO FROM student_payment WHERE student_payment.REGNO = NEW.registration_id) > 0
THEN
UPDATE student_payment SET student_payment.REGNO = (SELECT student_personal.Regno FROM student_personal WHERE student_personal.registration_id = NEW.registration_id) WHERE student_payment.REGNO = NEW.registration_id;
END IF;
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
  `EMAIL` varchar(50) DEFAULT NULL,
  `PERMISSION` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `u_faculty`
--

INSERT INTO `u_faculty` (`FACULTY_ID`, `PASSWORD`, `FNAME`, `DEPT_ID`, `DESIGNATION`, `EMAIL`, `PERMISSION`) VALUES
('1', 'kanmani', 'Dr. S. Kanmani', 'IT', 'Professor', 'kanmani@pec.edu', '-'),
('10', '012345', 'Abdul Basith', 'IT', 'ASSOCIATE PROFESSOR', '', 'STAFF'),
('2', 'geetha', 'Dr. V. Geetha', 'IT', 'Professor', 'vgeetha@ptuniv.edu.in\r\n', 'STAFF'),
('3', 'karunakaran', 'DR.KARUNAKARAN', 'ADMIN', 'ASST.REGISTRAR', '', 'ADMIN'),
('4', 'saravanan', 'DR.SARAVANAN', 'EC', 'PROFESSOR', 'SARAVANAN@PEC.EDU', '-'),
('6', 'Dr. V. Govin', 'Dr. V. Govindasamy', 'IT', 'PROFESSOR', '', 'HOD');

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
-- Indexes for table `fees_structure`
--
ALTER TABLE `fees_structure`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `no_dues`
--
ALTER TABLE `no_dues`
  ADD PRIMARY KEY (`REGNO`);

--
-- Indexes for table `scholarship_payment`
--
ALTER TABLE `scholarship_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_mail`
--
ALTER TABLE `send_mail`
  ADD PRIMARY KEY (`mail_for`);

--
-- Indexes for table `student_fee_paid`
--
ALTER TABLE `student_fee_paid`
  ADD PRIMARY KEY (`REGNO`);

--
-- Indexes for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`transaction_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fees_structure`
--
ALTER TABLE `fees_structure`
  MODIFY `fid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `scholarship_payment`
--
ALTER TABLE `scholarship_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_personal`
--
ALTER TABLE `student_personal`
  ADD CONSTRAINT `fk_PerOrders` FOREIGN KEY (`prgm_id`) REFERENCES `u_prgm` (`PRGM_ID`);

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
