-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2020 at 07:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `optw`
--

-- --------------------------------------------------------

--
-- Table structure for table `examform`
--

CREATE TABLE `examform` (
  `teachername` varchar(100) NOT NULL,
  `coursecode` varchar(20) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `courselink` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examform`
--

INSERT INTO `examform` (`teachername`, `coursecode`, `coursename`, `courselink`) VALUES
('gangadhar', '20ise53', 'data science', 'https://forms.gle/WAm2QgZaXRkWn6Tw9'),
('GANGADHAR', '20ISE53', 'DATA SCIENCE', '<iframe src=\"https://docs.google.com/forms/d/e/1FAIpQLSe_1H-Ui7hEL6d5dvZlytlUVJPq9IrMFKowIYmgw_opuTW6VQ/viewform?embedded=true\" width=\"640\" height=\"1674\" frameborder=\"0\" marginheight=\"0\" marginwidth=\"0\">Loading?</iframe>'),
('Gangadhar', '20ISE54', 'DATA SCIENCE', '<iframe src=\"https://docs.google.com/forms/d/e/1FAIpQLSe_1H-Ui7hEL6d5dvZlytlUVJPq9IrMFKowIYmgw_opuTW6VQ/viewform?embedded=true\" width=\"640\" height=\"1674\" frameborder=\"0\" marginheight=\"0\" marginwidth=\"0\">Loading?</iframe>'),
('Gangadhar', '20ISE53', 'Data Science', 'https://docs.google.com/forms/d/e/1FAIpQLSe_1H-Ui7hEL6d5dvZlytlUVJPq9IrMFKowIYmgw_opuTW6VQ/viewform');

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE `logindetails` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`username`, `password`) VALUES
('silpasreeni99', 'silpas08'),
('sovinara28', 'sonali24'),
('nidhishprabh16', 'nidhish02'),
('prakritikp13', 'praksss05');

-- --------------------------------------------------------

--
-- Table structure for table `organiserlogin`
--

CREATE TABLE `organiserlogin` (
  `oname` varchar(20) NOT NULL,
  `opassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organiserlogin`
--

INSERT INTO `organiserlogin` (`oname`, `opassword`) VALUES
('gangadhar28', 'dsci@1028'),
('divya989', 'divs#0912'),
('swathi073', 'swat$1234'),
('saravana89', 'sarav&672'),
('srinivas85', 'srini@877');

-- --------------------------------------------------------

--
-- Table structure for table `uploadvideofiles`
--

CREATE TABLE `uploadvideofiles` (
  `studentname` varchar(50) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `videolink` mediumtext NOT NULL,
  `checksumval` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uploadvideofiles`
--

INSERT INTO `uploadvideofiles` (`studentname`, `usn`, `videolink`, `checksumval`) VALUES
('silpa', '1nh18is106', 'https://drive.google.com/file/d/1ZyCAKz0l2Pg3lmSG4kLagboUIfKxxdWQ/view?usp=sharing', '2abc34fcd8'),
('swetha', 'inh18is131', 'https://drive.google.com/file/d/1ZtkEX8sMIftkbiFa9AD7ajkXXE_CBAyY/view?usp=sharing', '123abc456g'),
('', '', '', ''),
('swetha', '1nh18is106', 'https://drive.google.com/file/d/1ZtkEX8sMIftkbiFa9AD7ajkXXE_CBAyY/view?usp=sharing', '12e32efds');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
