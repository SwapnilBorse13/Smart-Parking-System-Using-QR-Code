-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2016 at 07:17 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` varchar(50) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lon` varchar(50) NOT NULL,
  `Stime` time NOT NULL,
  `scount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `Source`, `Destination`, `lat`, `lon`, `Stime`, `scount`) VALUES
('102', 'Chennai', 'Vellore', '', '', '10:00:00', 0),
('897', 'asdfas', 'sdaf', '', '', '00:00:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `seatno` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`id`, `source`, `Destination`, `time`, `seatno`, `userid`) VALUES
('102', 'Chennai', 'Vellore', '10:00:00', '2', ''),
('102', 'Chennai', 'Vellore', '10:00:00', '3', ''),
('102', 'Chennai', 'Vellore', '10:00:00', '6', ''),
('102', 'Chennai', 'Vellore', '10:00:00', '7', '');

-- --------------------------------------------------------

--
-- Table structure for table `conductor`
--

CREATE TABLE `conductor` (
  `ID` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `busid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conductor`
--

INSERT INTO `conductor` (`ID`, `cname`, `uname`, `pass`, `busid`) VALUES
('101', 'test', 'testt', 'testt', '102');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `emailid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `mno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`emailid`, `password`, `uname`, `mno`) VALUES
('aa', 'aa', 'aa', '89789785');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`,`time`,`seatno`);

--
-- Indexes for table `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`uname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
