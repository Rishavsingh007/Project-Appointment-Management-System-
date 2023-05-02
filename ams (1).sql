-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 06:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aemail`, `apassword`) VALUES
('admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appoid` int(11) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appoid`, `pid`, `scheduleid`, `appodate`) VALUES
(5, 4, 10, '2023-03-31'),
(7, 4, 10, '2023-03-31'),
(17, 1, 10, '2023-04-26'),
(16, 1, 9, '2023-04-26'),
(19, 1, 12, '2023-04-26'),
(12, 2, 10, '2023-03-31'),
(18, 1, 11, '2023-04-26'),
(22, 1, 13, '2023-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `subject`, `message`) VALUES
('prabesh chalise', 'prabesh121@gmail.com', 'hello', 'please help'),
('prabesh chalise', 'prabesh121@gmail.com', 'hello', 'please help');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(11) NOT NULL,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `specialties` int(2) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `docemail`, `docname`, `docpassword`, `specialties`, `image`) VALUES
(19, 'ram@gmail.com', 'Ram', '123', 17, 'data:image/jpeg;base64,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'),
(18, '2221@gmail.com', 'prabesh', '123', 13, 'https://www.shutterstock.com/image-photo/portrait-smiling-female-doctor-wearing-260nw-1323802721.jpg'),
(20, 'Hari@gmail.com', 'Hari', '123', 13, 'data:image/jpeg;base64,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'),
(21, 'rishav@gmail.com', 'rishav', '123', 11, 'data:image/jpeg;base64,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');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pid` int(11) NOT NULL,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `ptel` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pemail`, `pname`, `ppassword`, `paddress`, `pdob`, `ptel`) VALUES
(1, 'patient@gmail.com', 'Patient1', '123', 'Nepal', '2003-01-01', '0120000000'),
(2, 'patient2@gmail.com', 'Patient2', '123', 'Nepal', '2022-06-03', '0700000000'),
(3, 'prabesh1@gmail.com', 'hello qwe', 'prabesh123@', 'kapan', '2003-12-12', '9861512152'),
(4, 'prabesh111@gmail.com', 'prabesh chalise', '123', 'kapan, kathmandu', '2003-12-12', '9866666666'),
(5, 'prabesh121@gmail.com', 'prabesh chalise', '123', 'kathmandu', '2003-12-23', '9861512152');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scheduleid` int(11) NOT NULL,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `docid`, `title`, `scheduledate`, `scheduletime`) VALUES
(10, '1', 'hello', '2025-12-22', '22:20:00'),
(9, '2', 'please be on time', '2023-12-03', '22:30:00'),
(11, '2', 'one', '2030-12-02', '22:20:00'),
(12, '2', 'two', '2030-12-21', '22:20:00'),
(13, '20', '123', '2023-05-04', '21:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

CREATE TABLE `specialties` (
  `id` int(2) NOT NULL,
  `sname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id`, `sname`) VALUES
(1, 'Accident and emergency medicine'),
(2, 'Allergology'),
(3, 'Anaesthetics'),
(4, 'Biological hematology'),
(5, 'Cardiology'),
(6, 'Child psychiatry'),
(7, 'Clinical biology'),
(8, 'Clinical chemistry'),
(9, 'Clinical neurophysiology'),
(10, 'Clinical radiology'),
(11, 'Dental, oral and maxillo-facial surgery'),
(12, 'Dermato-venerology'),
(13, 'Dermatology'),
(14, 'Endocrinology'),
(15, 'Gastro-enterologic surgery'),
(16, 'Gastroenterology'),
(17, 'General hematology'),
(18, 'General Practice'),
(19, 'General surgery'),
(20, 'Geriatrics'),
(21, 'Immunology'),
(22, 'Infectious diseases'),
(23, 'Internal medicine'),
(24, 'Laboratory medicine'),
(25, 'Maxillo-facial surgery'),
(26, 'Microbiology'),
(27, 'Nephrology'),
(28, 'Neuro-psychiatry'),
(29, 'Neurology'),
(30, 'Neurosurgery'),
(31, 'Nuclear medicine'),
(32, 'Obstetrics and gynecology'),
(33, 'Occupational medicine'),
(34, 'Ophthalmology'),
(35, 'Orthopaedics'),
(36, 'Otorhinolaryngology'),
(37, 'Paediatric surgery'),
(38, 'Paediatrics'),
(39, 'Pathology'),
(40, 'Pharmacology'),
(41, 'Physical medicine and rehabilitation'),
(42, 'Plastic surgery'),
(43, 'Podiatric Medicine'),
(44, 'Podiatric Surgery'),
(45, 'Psychiatry'),
(46, 'Public health and Preventive Medicine'),
(47, 'Radiology'),
(48, 'Radiotherapy'),
(49, 'Respiratory medicine'),
(50, 'Rheumatology'),
(51, 'Stomatology'),
(52, 'Thoracic surgery'),
(53, 'Tropical medicine'),
(54, 'Urology'),
(55, 'Vascular surgery'),
(56, 'Venereology');

-- --------------------------------------------------------

--
-- Table structure for table `webuser`
--

CREATE TABLE `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `webuser`
--

INSERT INTO `webuser` (`email`, `usertype`) VALUES
('admin@gmail.com', 'a'),
('patient@gmail.com', 'p'),
('patient2@gmail.com', 'p'),
('prabesh123@gmail.com', 'p'),
('prabesh1@gmail.com', 'p'),
('prabesh111@gmail.com', 'p'),
('prabesh121@gmail.com', 'p'),
('rishav@gmail.com', 'd'),
('ram@gmail.com', 'd'),
('Hari@gmail.com', 'd'),
('2221@gmail.com', 'd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aemail`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appoid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `scheduleid` (`scheduleid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docid`),
  ADD KEY `specialties` (`specialties`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleid`),
  ADD KEY `docid` (`docid`);

--
-- Indexes for table `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webuser`
--
ALTER TABLE `webuser`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
