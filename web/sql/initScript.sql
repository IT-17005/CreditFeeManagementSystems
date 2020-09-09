-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2019 at 08:18 AM
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
-- Database: `creditfeemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `semester_name` varchar(20) DEFAULT NULL,
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `course_credit` double(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`semester_name`, `course_code`, `course_name`, `course_credit`) VALUES
('3-1', 'ICT-3101', 'Networking', 3.00),
('3-1', 'ICT-3103', 'Signal Processing', 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `student_id` varchar(15) DEFAULT NULL,
  `semester_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`student_id`, `semester_name`) VALUES
('it-17004', '1-1'),
('IT-17035', '3-1'),
('IT-17001', '3-2');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `session` varchar(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `hall` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `password`, `name`, `mobile`, `session`, `degree`, `department`, `hall`) VALUES
('IT-17001', '17001', 'MST. SADIA AFRIN', '01743158524', '2016-17', 'BSc(Engg.)', 'ICT', 'BSMRH'),
('it-17004', '17004', 'md alal uddin', '01743158524', '2015-16', 'BSc (Hons.)', 'BGE', 'JAMH'),
('IT-17005', '17005', 'Ruhan', '01562637363', '2016-17', 'BSc(Engg.)', 'ICT', 'JAMH'),
('IT-17024', '17024', 'md Bashar', '018674647463', '2016-17', 'BSc(Engg.)', 'ICT', 'JAMH'),
('it-17034', '17034', 'md hafiz', '01558954587', '2016-17', 'BSc(Engg.)', 'ICT', 'SZRH'),
('IT-17035', '17035', 'md faruk hosen', '018746658578', '2016-17', 'BSc(Engg.)', 'ICT', 'BSMRH'),
('it-17037', '17037', 'rafatul', '016764847487', '2016-17', 'BSc(Engg.)', 'ICT', 'BSMRH');

-- --------------------------------------------------------

--
-- Table structure for table `student_year`
--

CREATE TABLE `student_year` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_year`
--

INSERT INTO `student_year` (`id`, `name`) VALUES
(1, '1st year 1st Semester'),
(2, '1st year 2nd semester '),
(3, '2nd year 1st Semester'),
(4, '2nd year 2nd Semester'),
(5, '3rd year 1st Semester'),
(6, '3rd year 2nd Semester'),
(7, '4th year 1st Semester'),
(8, '4th year 2nd Semester');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_name`);

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
-- AUTO_INCREMENT for table `student_year`
--
ALTER TABLE `student_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

