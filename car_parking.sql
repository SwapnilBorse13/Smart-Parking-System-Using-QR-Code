-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 01:38 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_parking`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_details`
--

CREATE TABLE `car_details` (
  `car_id` int(10) UNSIGNED NOT NULL,
  `carname` varchar(45) DEFAULT NULL,
  `carnumber` varchar(45) DEFAULT NULL,
  `carchasis` varchar(45) DEFAULT NULL,
  `cartype` varchar(45) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `in_time` varchar(45) DEFAULT NULL,
  `out_time` varchar(45) DEFAULT NULL,
  `status_` varchar(45) DEFAULT NULL,
  `nodeid` varchar(45) DEFAULT NULL,
  `slotid` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_details`
--

INSERT INTO `car_details` (`car_id`, `carname`, `carnumber`, `carchasis`, `cartype`, `userid`, `in_time`, `out_time`, `status_`, `nodeid`, `slotid`) VALUES
(2, 'Renault', 'mh12ll3157', '', 'Hashback', 'dinesh@gmail.com', '03/26/2017 17:44:21', '04/22/2017 19:12:55', '', '', ''),
(3, 'huidai i10', 'mh16lj3124', 'gfjfjfj525353', 'sedan', 'dinesh@gmail.com', '03/22/2017 11:17:19', '04/30/2017 16:34:08', '', '', ''),
(4, 'maruti', 'mh16br1639', '51819', 'swift', 'adityagarud@gmail.com', '03/22/2017 11:28:08', NULL, 'booked', 'D', '1'),
(5, 'lambo', 'mh554', 'qqbshks6739', 'Sedan', 'nikhil@gmail.com', '04/30/2017 15:18:44', '04/30/2017 15:20:37', '', '', ''),
(6, 'admin', 'admin', 'mh12nj1125', 'Sedan', 'admin@gmail.com', '07/06/2017 16:28:33', NULL, '', '', ''),
(7, 'admin1', 'admin1', 'mh12nj2255', 'Hashback', 'admin1@gmail.coom', '07/06/2017 16:29:53', NULL, '', '', ''),
(8, 'admin2', 'admin2', 'mh12lj6655', 'Sedan', 'admin2@gmail.com', NULL, NULL, '', '', ''),
(9, 'admin3', 'admin3', 'mh12li6985', 'Hashback', 'admin3@gmail.com', NULL, NULL, NULL, NULL, NULL),
(10, 'Kwid', 'MH12NJ3365', '789456', 'hashback', 'ubaledinesh4u@gmail.com', NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `charge` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `charge`) VALUES
(1, '40');

-- --------------------------------------------------------

--
-- Table structure for table `node_details`
--

CREATE TABLE `node_details` (
  `node_id` varchar(45) DEFAULT NULL,
  `lot_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '192.168.0.103'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `node_details`
--

INSERT INTO `node_details` (`node_id`, `lot_id`, `status`, `latitude`, `longitude`, `ip_address`) VALUES
('A', '1', '1', '18.5793', '73.9823', '192.168.0.103'),
('A', '2', '1', '18.5793', '73.9823', '192.168.0.103'),
('A', '3', '1', '18.5793', '73.9823', '192.168.0.103'),
('A', '4', '1', '18.5793', '73.9823', '192.168.0.103'),
('B', '1', '1', '18.5515', '73.9348', '192.168.0.103'),
('B', '2', '1', '18.5515', '73.9348', '192.168.0.103'),
('B', '3', '1', '18.5515', '73.9348', '192.168.0.103'),
('B', '4', '1', '18.5515', '73.9348', '192.168.0.103'),
('C', '1', '1', '18.5089', '73.9260', '192.168.0.103'),
('C', '2', '1', '18.5089', '73.9260', '192.168.0.103'),
('C', '3', '1', '18.5089', '73.9260', '192.168.0.103'),
('C', '4', '1', '18.5089', '73.9260', '192.168.0.103'),
('D', '1', '1', '18.5289', '73.8744', '192.168.0.103'),
('D', '2', '1', '18.5289', '73.8744', '192.168.0.103'),
('D', '3', '1', '18.5289', '73.8744', '192.168.0.103'),
('D', '4', '1', '18.5289', '73.8744', '192.168.0.103');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `carnumber` varchar(45) DEFAULT NULL,
  `in_time` varchar(45) DEFAULT NULL,
  `out_time` varchar(45) DEFAULT NULL,
  `total_hours` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `userid`, `carnumber`, `in_time`, `out_time`, `total_hours`, `payment`) VALUES
(1, 'dinesh@gmail.com', 'mh12nj3157', '03/17/2017 19:26:35', '03/18/2017 16:41:58', '22', '440'),
(2, 'dinesh@gmail.com', 'mh12nj3157', '03/17/2017 19:26:35', '03/18/2017 16:42:05', '22', '440'),
(3, 'dinesh@gmail.com', 'mh16lj3124', '03/21/2017 08:56:58', '03/21/2017 08:57:28', '0', '0'),
(4, 'dinesh@gmail.com', 'mh12nj3157', '03/21/2017 08:56:18', '03/21/2017 09:02:27', '0', '0'),
(5, 'dinesh@gmail.com', 'mh12nj3157', '03/21/2017 08:56:18', '03/21/2017 09:09:32', '1', '20'),
(6, 'dinesh@gmail.com', 'mh12nj3157', '03/22/2017 11:16:36', '03/26/2017 17:44:05', '103', '2060'),
(7, 'dinesh@gmail.com', 'mh12nj3157', '03/26/2017 17:44:21', '04/22/2017 19:12:55', '650', '16250'),
(8, 'nikhil@gmail.com', 'mh16a1', '04/30/2017 13:20:49', '04/30/2017 13:22:54', '0', '0'),
(9, 'nikhil@gmail.com', 'mh554', '04/30/2017 15:18:44', '04/30/2017 15:20:37', '0', '0'),
(10, 'dinesh@gmail.com', 'mh16lj3124', '03/22/2017 11:17:19', '04/30/2017 16:34:08', '942', '18840');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `full_name`, `email`, `password`, `mobile`, `city`, `status`) VALUES
(1, 'Dinesh Ubale', 'dinesh@gmail.com', '123456', '7350456969', 'Pune', '0'),
(2, 'Dinesh Ubale', 'dineshubale@gmail.com', '12345', '9894001120', 'pune', '0'),
(3, 'nikhil supekar', 'nikhil@gmail.com', '123456', '9503986854', 'pune', '0'),
(4, 'aditya', 'adityagarud@gmail.com', 'aditya', '9156777581', 'ahmednagar', '0'),
(5, 'nikhil supekar', 'nikhil@gmail.com', '123456', '9503986854', 'pune', '0'),
(6, 'Dinesh Ubale', 'ubaledinesh4u@gmail.com', '12345', '7350456969', 'pune', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_details`
--
ALTER TABLE `car_details`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_details`
--
ALTER TABLE `car_details`
  MODIFY `car_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
