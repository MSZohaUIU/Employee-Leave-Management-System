-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2021 at 09:59 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '2021-02-14 08:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE IF NOT EXISTS `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Human Resource', 'HR', 'HR001', '2017-11-01 07:16:25'),
(2, 'Information Technology', 'IT', 'IT001', '2017-11-01 07:19:37'),
(3, 'Operations', 'OP', 'OP1', '2017-12-02 21:28:56'),
(4, 'Software Quality Assurance', 'SQA', 'SQA123', '2021-02-14 08:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE IF NOT EXISTS `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `designation`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, 'EMP10806121', 'Md', 'Arafat', 'arafat@gmail.com', 'c2ac9e35d6cfea227c615e5f9f8d97bb', 'Male', '3 February, 1990', 'Human Resource', 'Dhaka', 'Dhaka', 'HR', 'Bangladesh', '0125857525', 1, '2017-11-10 11:29:59'),
(2, 'DEMP2132', 'Md', 'Akash', 'akash@gmail.com', 'cb7c5f69ff356ecca55b7d08df877991', 'Male', '3 February, 1990', 'Information Technology', 'Dhaka', 'Dhaka', 'Information Analyst', 'Bangladesh', '8587944255', 1, '2017-11-10 13:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE IF NOT EXISTS `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(1, 'Causal Leave', '21/10/2020', '20/10/2020', 'asjdhfkasjd', '2020-09-26 07:58:16', 'sdfsd', '2020-09-26 14:02:29 ', 1, 1, 1),
(2, 'Causal Leave', '22/12/2020', '12/11/2020', 'sdbhasjkd as', '2020-11-23 06:42:03', 'Your leave application is approved by the authority.', '2021-02-14 14:23:07 ', 1, 1, 1),
(3, 'Causal Leave', '22/02/2021', '20/02/2021', 'Go for a medical checkup', '2021-02-14 08:40:47', NULL, NULL, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE IF NOT EXISTS `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Causal Leave', 'hello', '2020-09-26 07:57:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
