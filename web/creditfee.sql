-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2019 at 10:32 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creditfee`
--

-- --------------------------------------------------------

--
-- Table structure for table `backlog`
--

CREATE TABLE `backlog` (
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(80) DEFAULT NULL,
  `course_credit` double(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backlog`
--

INSERT INTO `backlog` (`course_code`, `course_name`, `course_credit`) VALUES
('ict-2201', 'Numerical', 3.00),
('ict-2221', 'Data mining', 3.00),
('ict-2223', 'data semantics', 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(30) NOT NULL,
  `course_code` varchar(50) DEFAULT NULL,
  `course_name` varchar(80) DEFAULT NULL,
  `course_credit` double(3,2) DEFAULT NULL,
  `semester_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_code`, `course_name`, `course_credit`, `semester_name`) VALUES
(1, 'ICT-1101', 'Basic Electrical Circuit', 3.00, '1-1'),
(2, 'ICT-1102', 'Basic Electrical Circuit Lab', 1.00, '1-1'),
(3, 'ICT-1103', 'Computer Programming', 3.00, '1-1'),
(4, 'ICT-1104', 'Computer Programming Lab', 1.00, '1-1'),
(5, 'ICT-1105', 'Physics', 3.00, '1-1'),
(6, 'ICT-1107', 'Differential and Integral Calculus', 3.00, '1-1'),
(7, 'ICT-1109', 'Technical Communicative English', 2.00, '1-1'),
(8, 'ICT-1110', 'Technical Communicative English', 1.00, '1-1'),
(10, 'ICT-1201', 'Electronic Devices and Circuit Theory', 3.00, '1-2'),
(13, 'ICT-1204', 'Programming with C++ Lab', 1.00, '1-2'),
(14, 'ICT-1205', 'Data Structure', 3.00, '1-2'),
(15, 'ICT-1206', 'Data Structure Lab', 1.00, '1-2'),
(16, 'ICT-1207', 'Discrete Mathematics', 3.00, '1-2'),
(17, 'ICT-1209', 'Matrices and Coordinate Geometry', 3.00, '1-2'),
(18, 'ICT-2101', 'Operational Amplifier and\r\nIntegrated Circuits', 3.00, '2-1'),
(19, 'ICT-2102', 'Operational Amplifier and\r\nIntegrated Circuits Lab', 1.00, '2-1'),
(20, 'ICT-2103', 'Digital Logic Design', 3.00, '2-1'),
(21, 'ICT-2104', 'Digital Logic Design Lab', 1.00, '2-1'),
(22, 'ICT-2105', 'Object Oriented Programming with Java', 3.00, '2-1'),
(23, 'ICT-2106', 'Object Oriented Programming with Java Lab', 1.00, '2-1'),
(24, 'ICT-2107', 'Algorithm Design and Analysis', 3.00, '2-1'),
(25, 'ICT-2108', 'Algorithm Design and Analysis Lab', 1.00, '2-1'),
(26, 'ICT-3101', 'Analog and Digital Communication', 3.00, '3-1'),
(27, 'ICT-3102', 'Analog and Digital Communication Lab', 1.00, '3-1'),
(28, 'ICT-3103', 'Microprocessor and Assembly Language', 3.00, '3-1'),
(29, 'ICT-3104', 'Microprocessor and Assembly Language Lab', 1.00, '3-1'),
(30, 'ICT-3105', 'Object Oriented Analysis and Design', 3.00, '3-1'),
(31, 'ICT-3107', 'Operating Systems', 3.00, '3-1'),
(32, 'ICT-3108', 'Operating Systems Lab', 1.00, '3-1'),
(33, 'ICT-3109', 'Financial and Managerial Accounting', 3.00, '3-1'),
(35, 'ict-2201', 'computer organization and architecture', 3.00, '2-2');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `student_id` varchar(50) NOT NULL,
  `semester_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`student_id`, `semester_name`) VALUES
('it-16062', '3-2'),
('IT-17001', '3-1'),
('IT-17005', '3-1'),
('IT-17024', '2-1'),
('IT-17035', '3-1'),
('it-19012', '1-2');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `degree` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `hall` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `password`, `name`, `mobile`, `session`, `degree`, `department`, `hall`) VALUES
('it-16062', '16062', 'md noyon', '016764847487', '2015-16', 'BSc(Engg.)', 'ICT', 'JAMH'),
('IT-17005', '17005', 'Md Nazmul Hasan Ruhan', '01719377119', '2016-17', 'BSc(Engg.)', 'ICT', 'JAMH'),
('IT-17024', '17024', 'md Bashar', '018746658578', '2016-17', 'BSc(Engg.)', 'ICT', 'JAMH'),
('IT-17035', '17035', 'md faruk hosen', '01558954586', '2016-17', 'BSc(Engg.)', 'ICT', 'BSMRH'),
('it-19012', '19012', 'md ridoy', '01278879879', '2019-20', 'BSc(Engg.)', 'ICT', 'BSMRH');

-- --------------------------------------------------------

--
-- Table structure for table `student_year`
--

CREATE TABLE `student_year` (
  `id` int(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_year`
--

INSERT INTO `student_year` (`id`, `name`) VALUES
(1, '1st Year 1st Semester'),
(2, '1st Year 2nd Semester'),
(3, '2nd Year 1st Semester'),
(4, '2nd Year 2nd Semester'),
(5, '3rd Year 1st Semester'),
(6, '3rd Year 2nd Semester'),
(7, '4th Year 1st Semester'),
(8, '4th Year 2nd Semester');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backlog`
--
ALTER TABLE `backlog`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`student_id`,`semester_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_year`
--
ALTER TABLE `student_year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `student_year`
--
ALTER TABLE `student_year`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
