-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 11:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendence`
--

CREATE TABLE `tbl_attendence` (
  `memberid` int(11) NOT NULL,
  `date` date NOT NULL,
  `logintime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_attendence`
--

INSERT INTO `tbl_attendence` (`memberid`, `date`, `logintime`) VALUES
(100, '2020-07-11', '10:53:09'),
(1000, '2020-07-11', '11:21:18'),
(1001, '2020-07-11', '11:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blood`
--

CREATE TABLE `tbl_blood` (
  `bloodid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `phonenum` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diet`
--

CREATE TABLE `tbl_diet` (
  `dietid` int(11) NOT NULL,
  `breakfast` varchar(30) NOT NULL,
  `intermediate1` varchar(30) NOT NULL,
  `lunch` varchar(30) NOT NULL,
  `intermediate2` varchar(30) NOT NULL,
  `dinner` varchar(30) NOT NULL,
  `remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_diet`
--

INSERT INTO `tbl_diet` (`dietid`, `breakfast`, `intermediate1`, `lunch`, `intermediate2`, `dinner`, `remarks`) VALUES
(406, 'Milk,egg', 'Banana', 'Fish 500gm', 'Banana', 'Oats', 'Diet on time');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dietmapping`
--

CREATE TABLE `tbl_dietmapping` (
  `mapid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `dietid` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dietmapping`
--

INSERT INTO `tbl_dietmapping` (`mapid`, `memberid`, `dietid`, `startdate`, `enddate`) VALUES
(4009, 1018, 403, '2020-07-02', '2020-07-23'),
(4009, 1018, 403, '2020-07-02', '2020-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feepayment`
--

CREATE TABLE `tbl_feepayment` (
  `memberid` int(11) NOT NULL,
  `trainerid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_feepayment`
--

INSERT INTO `tbl_feepayment` (`memberid`, `trainerid`, `amount`, `date`) VALUES
(1015, 3001, 500, '2020-01-06'),
(1, 12, 545, '2020-05-02'),
(1001, 100, 500, '2020-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `logid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`logid`, `username`, `password`, `type`) VALUES
(1, 'KR', 'KR', 'Admin'),
(2, 'nibas', 'nibas', 'Trainer'),
(3, 'Zen', '123', 'Trainer'),
(4, 'micheal', '123456', 'Trainer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_measurements`
--

CREATE TABLE `tbl_measurements` (
  `memberid` int(11) NOT NULL,
  `date` date NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `chestsize` int(11) NOT NULL,
  `biceps` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_measurements`
--

INSERT INTO `tbl_measurements` (`memberid`, `date`, `height`, `weight`, `chestsize`, `biceps`) VALUES
(1001, '2020-07-10', 121, 121, 12, 221),
(1002, '2020-07-11', 185, 80, 50, 10),
(1003, '2020-07-12', 180, 80, 150, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary`
--

CREATE TABLE `tbl_salary` (
  `trainerid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_salary`
--

INSERT INTO `tbl_salary` (`trainerid`, `amount`, `date`) VALUES
(100, 2500, '2020-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tattendence`
--

CREATE TABLE `tbl_tattendence` (
  `trainerid` int(11) NOT NULL,
  `date` date NOT NULL,
  `logintime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tattendence`
--

INSERT INTO `tbl_tattendence` (`trainerid`, `date`, `logintime`) VALUES
(1000, '2020-07-11', '10:53:50'),
(100, '2020-07-11', '10:54:00'),
(100, '2020-07-11', '11:21:25'),
(101, '2020-07-11', '12:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trainer`
--

CREATE TABLE `tbl_trainer` (
  `trainerid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `category` varchar(30) NOT NULL,
  `phonenum` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_trainer`
--

INSERT INTO `tbl_trainer` (`trainerid`, `name`, `address`, `age`, `gender`, `bloodgroup`, `category`, `phonenum`) VALUES
(100, 'Arjun', 'Alappuzha', 20, 'male', 'A+', 'Body Buliding', '7907042149'),
(101, 'Arun', 'Chry', 20, 'male', 'A+', 'Body Building', '798245554'),
(102, 'Zen', 'alappuzha', 30, 'male', 'A+', 'Weight Gain', '7854129856'),
(103, 'Zen', 'alappuzha', 30, 'male', 'A+', 'Weight Gain', '7854129856'),
(104, 'Zen', 'Alappuzha', 20, 'male', 'A-', 'Weight Gain', '8845752148'),
(105, 'micheal', 'alappuzha', 20, 'male', 'B+', 'Power Lifting', '7907042149');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userdetails`
--

CREATE TABLE `tbl_userdetails` (
  `memberid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `category` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_userdetails`
--

INSERT INTO `tbl_userdetails` (`memberid`, `name`, `age`, `address`, `phone`, `category`, `gender`, `bloodgroup`, `emailid`, `date`) VALUES
(1001, 'HGJHG', 21, 'JGJKGGH', '1234567896', 'Power Lifting', 'male', 'O+', 'JHGFHF@GFG.COM', '2020-07-10'),
(1002, 'NIbas', 20, 'Alappuzha', '7907042149', 'Body Building', 'male', 'A+', 'nibasnazeem', '2020-07-11'),
(1003, 'kiran', 20, 'Alappuzha', '790702145', 'Weight Gain', 'male', 'A+', 'kirankammath@gamil.com', '2020-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_workout`
--

CREATE TABLE `tbl_workout` (
  `workoutid` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `day` date NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_workout`
--

INSERT INTO `tbl_workout` (`workoutid`, `category`, `day`, `description`) VALUES
(203, 'Weightloss', '2020-07-02', 'program 3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_blood`
--
ALTER TABLE `tbl_blood`
  ADD PRIMARY KEY (`bloodid`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `tbl_measurements`
--
ALTER TABLE `tbl_measurements`
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `tbl_trainer`
--
ALTER TABLE `tbl_trainer`
  ADD PRIMARY KEY (`trainerid`);

--
-- Indexes for table `tbl_userdetails`
--
ALTER TABLE `tbl_userdetails`
  ADD PRIMARY KEY (`memberid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blood`
--
ALTER TABLE `tbl_blood`
  MODIFY `bloodid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_trainer`
--
ALTER TABLE `tbl_trainer`
  MODIFY `trainerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tbl_userdetails`
--
ALTER TABLE `tbl_userdetails`
  MODIFY `memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
