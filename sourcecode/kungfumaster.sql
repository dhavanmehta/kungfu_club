-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2018 at 07:18 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kungfumaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `AT_ID` int(10) NOT NULL AUTO_INCREMENT,
  `STU_ID` int(10) NOT NULL,
  `CLS_SLOT` int(10) NOT NULL,
  `CLS_TYPE` int(10) NOT NULL,
  `AT_DATE` date NOT NULL,
  PRIMARY KEY (`AT_ID`),
  KEY `STUDENT_ID` (`STU_ID`),
  KEY `CLS_TYPE` (`CLS_TYPE`),
  KEY `CLS_SLOT` (`CLS_SLOT`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`AT_ID`, `STU_ID`, `CLS_SLOT`, `CLS_TYPE`, `AT_DATE`) VALUES
(1, 1, 2, 3, '2018-06-01'),
(2, 4, 3, 2, '2018-06-07'),
(3, 2, 2, 1, '2018-12-05'),
(4, 10, 2, 1, '2018-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `belt_master`
--

DROP TABLE IF EXISTS `belt_master`;
CREATE TABLE IF NOT EXISTS `belt_master` (
  `BLT_ID` int(10) NOT NULL AUTO_INCREMENT,
  `BLT_NAME` varchar(10) NOT NULL,
  PRIMARY KEY (`BLT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `belt_master`
--

INSERT INTO `belt_master` (`BLT_ID`, `BLT_NAME`) VALUES
(1, 'white'),
(2, 'yellow'),
(3, 'half-green'),
(4, 'green'),
(5, 'half-blue'),
(6, 'blue'),
(7, 'half-red'),
(8, 'red'),
(9, 'half-black'),
(10, 'black');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `CL_ID` int(10) NOT NULL AUTO_INCREMENT,
  `CL_TYPE` varchar(20) NOT NULL,
  PRIMARY KEY (`CL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CL_ID`, `CL_TYPE`) VALUES
(1, 'begineer'),
(2, 'intermediate'),
(3, 'expert');

-- --------------------------------------------------------

--
-- Table structure for table `class_schedule`
--

DROP TABLE IF EXISTS `class_schedule`;
CREATE TABLE IF NOT EXISTS `class_schedule` (
  `CLS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `CLS_TIME` time NOT NULL,
  `CL_DAY` int(10) NOT NULL,
  `CLS_TYPE_ID` int(10) NOT NULL,
  PRIMARY KEY (`CLS_ID`),
  KEY `CLS_TYPE_ID` (`CLS_TYPE_ID`),
  KEY `CL_DAY` (`CL_DAY`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_schedule`
--

INSERT INTO `class_schedule` (`CLS_ID`, `CLS_TIME`, `CL_DAY`, `CLS_TYPE_ID`) VALUES
(1, '13:00:00', 1, 1),
(2, '07:30:00', 4, 3),
(3, '13:30:00', 5, 2),
(4, '11:00:00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `day_master`
--

DROP TABLE IF EXISTS `day_master`;
CREATE TABLE IF NOT EXISTS `day_master` (
  `DAY_ID` int(10) NOT NULL AUTO_INCREMENT,
  `DAY_NAME` varchar(10) NOT NULL,
  PRIMARY KEY (`DAY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day_master`
--

INSERT INTO `day_master` (`DAY_ID`, `DAY_NAME`) VALUES
(1, 'monday'),
(2, 'tuesday'),
(3, 'wednesday'),
(4, 'thursday'),
(5, 'friday'),
(6, 'saturday'),
(7, 'sunday');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
CREATE TABLE IF NOT EXISTS `fees` (
  `F_ID` int(10) NOT NULL AUTO_INCREMENT,
  `ST_ID` int(10) NOT NULL,
  `PA_TYPE` int(10) NOT NULL,
  `PURPOSE` varchar(15) NOT NULL,
  `DATE` date NOT NULL,
  PRIMARY KEY (`F_ID`),
  KEY `ST_ID` (`ST_ID`),
  KEY `PA_TYPE` (`PA_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`F_ID`, `ST_ID`, `PA_TYPE`, `PURPOSE`, `DATE`) VALUES
(1, 4, 2, 'MEMBERSHIP', '2018-04-01'),
(2, 1, 3, 'MEMBERSHIP', '2018-06-01'),
(3, 10, 2, 'membership fee', '2018-02-01'),
(4, 10, 2, 'membership fee', '2018-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
CREATE TABLE IF NOT EXISTS `instructor` (
  `INS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `INS_NAME` varchar(20) NOT NULL,
  PRIMARY KEY (`INS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`INS_ID`, `INS_NAME`) VALUES
(1, 'kungfu_master');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
  `PR_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PR_NAME` varchar(20) NOT NULL,
  `ST_ID` int(10) NOT NULL,
  `PR_MOBILENO` int(10) NOT NULL,
  `PR_EMAIL` varchar(30) NOT NULL,
  PRIMARY KEY (`PR_ID`),
  KEY `ST_ID` (`ST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`PR_ID`, `PR_NAME`, `ST_ID`, `PR_MOBILENO`, `PR_EMAIL`) VALUES
(1, 'anilbhai', 1, 2054874569, 'amehta@gmail.com'),
(2, 'pankajbhai', 2, 1547895645, 'pankaj@gmail.com'),
(3, 'jayeshbhai', 4, 1254789544, 'jayesh@gmail.com'),
(4, 'ashokbhai', 3, 1457896541, 'ashol@gmail.com'),
(5, 'pintubhai', 5, 2014587896, 'pintu@gmail.com'),
(6, 'jayeshbhai', 10, 2041547892, 'jayesh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment_master`
--

DROP TABLE IF EXISTS `payment_master`;
CREATE TABLE IF NOT EXISTS `payment_master` (
  `PA_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PA_TYPE` varchar(10) NOT NULL,
  PRIMARY KEY (`PA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_master`
--

INSERT INTO `payment_master` (`PA_ID`, `PA_TYPE`) VALUES
(1, 'creditcard'),
(2, 'cash'),
(3, 'cheque');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `RK_ID` int(10) NOT NULL AUTO_INCREMENT,
  `ST_ID` int(10) NOT NULL,
  `BLT_ID` int(10) NOT NULL,
  PRIMARY KEY (`RK_ID`),
  KEY `ST_ID` (`ST_ID`),
  KEY `BLT_ID` (`BLT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`RK_ID`, `ST_ID`, `BLT_ID`) VALUES
(1, 1, 6),
(2, 4, 6),
(3, 3, 6),
(4, 2, 10),
(5, 4, 8),
(6, 3, 4),
(7, 2, 8),
(8, 2, 4),
(9, 1, 4),
(10, 3, 9),
(11, 1, 1),
(12, 4, 1),
(13, 3, 1),
(14, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `ST_ID` int(10) NOT NULL AUTO_INCREMENT,
  `ST_NAME` varchar(20) NOT NULL,
  `ST_DOB` date NOT NULL,
  `ST_JOINDATE` date NOT NULL,
  `ST_MOBILENO` int(10) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `ADRESS` varchar(50) NOT NULL,
  PRIMARY KEY (`ST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ST_ID`, `ST_NAME`, `ST_DOB`, `ST_JOINDATE`, `ST_MOBILENO`, `EMAIL`, `ADRESS`) VALUES
(1, 'dhavan', '1995-08-08', '2018-06-01', 2009614440, 'dhavanmehta2@gmail.com', '174,josephine ave'),
(2, 'sidhdharth', '1995-06-17', '2017-07-01', 2009624440, 'sidh13@gmail.com', '1650 university avenue'),
(3, 'prince', '1995-01-11', '2018-06-01', 2014569990, 'prince@gmail.com', '174,josephine ave'),
(4, 'neel', '1994-06-01', '2018-06-08', 2009524440, 'neelgmail.com', '1787 bruce street'),
(5, 'deep', '1995-05-03', '2017-04-14', 2056547485, 'deep@gmail.com', '175 josephine ave'),
(10, 'sahil', '1995-05-11', '2018-12-30', 2014587485, 'sahil@gmail.com', 'raj laxmi row house,surat');

-- --------------------------------------------------------

--
-- Table structure for table `st_id`
--

DROP TABLE IF EXISTS `st_id`;
CREATE TABLE IF NOT EXISTS `st_id` (
  `students_st_id` int(11) DEFAULT NULL,
  `rk_id` int(11) NOT NULL,
  PRIMARY KEY (`rk_id`),
  KEY `FKkicddlk0iupbl16mfb8mg3r7o` (`students_st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`CLS_SLOT`) REFERENCES `class_schedule` (`CLS_ID`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`STU_ID`) REFERENCES `student` (`ST_ID`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`CLS_TYPE`) REFERENCES `class` (`CL_ID`);

--
-- Constraints for table `class_schedule`
--
ALTER TABLE `class_schedule`
  ADD CONSTRAINT `class_schedule_ibfk_1` FOREIGN KEY (`CLS_TYPE_ID`) REFERENCES `class` (`CL_ID`),
  ADD CONSTRAINT `class_schedule_ibfk_2` FOREIGN KEY (`CL_DAY`) REFERENCES `day_master` (`DAY_ID`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`ST_ID`) REFERENCES `student` (`ST_ID`),
  ADD CONSTRAINT `fees_ibfk_2` FOREIGN KEY (`PA_TYPE`) REFERENCES `payment_master` (`PA_ID`);

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`ST_ID`) REFERENCES `student` (`ST_ID`);

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`ST_ID`) REFERENCES `student` (`ST_ID`),
  ADD CONSTRAINT `rank_ibfk_2` FOREIGN KEY (`BLT_ID`) REFERENCES `belt_master` (`BLT_ID`);

--
-- Constraints for table `st_id`
--
ALTER TABLE `st_id`
  ADD CONSTRAINT `FK8sr632ib1wv9wcs5isk17fucd` FOREIGN KEY (`rk_id`) REFERENCES `rank` (`RK_ID`),
  ADD CONSTRAINT `FKkicddlk0iupbl16mfb8mg3r7o` FOREIGN KEY (`students_st_id`) REFERENCES `student` (`ST_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
