-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema car_parking
--

CREATE DATABASE IF NOT EXISTS car_parking;
USE car_parking;

--
-- Definition of table `car_details`
--

DROP TABLE IF EXISTS `car_details`;
CREATE TABLE `car_details` (
  `car_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `carname` varchar(45) DEFAULT NULL,
  `carnumber` varchar(45) DEFAULT NULL,
  `carchasis` varchar(45) DEFAULT NULL,
  `cartype` varchar(45) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `in_time` varchar(45) DEFAULT NULL,
  `out_time` varchar(45) DEFAULT NULL,
  `status_` varchar(45) DEFAULT NULL,
  `nodeid` varchar(45) DEFAULT NULL,
  `slotid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_details`
--

/*!40000 ALTER TABLE `car_details` DISABLE KEYS */;
INSERT INTO `car_details` (`car_id`,`carname`,`carnumber`,`carchasis`,`cartype`,`userid`,`in_time`,`out_time`,`status_`,`nodeid`,`slotid`) VALUES 
 (2,'Renault','mh12lm3157','mh2199y939b','Hashback','dinesh@gmail.com','03/26/2017 17:44:21','04/22/2017 19:12:55','','',''),
 (3,'huidai i10','mh16lj3124','gfjfjfj525353','sedan','dinesh@gmail.com','03/22/2017 11:17:19','04/30/2017 16:34:08','','',''),
 (4,'maruti','mh16br1639','51819','swift','adityagarud@gmail.com','03/22/2017 11:28:08',NULL,'booked','D','1'),
 (5,'lambo','mh554','qqbshks6739','Sedan','nikhil@gmail.com','04/30/2017 15:18:44','04/30/2017 15:20:37','','',''),
 (6,'admin','admin','mh12nj1125','Sedan','admin@gmail.com','07/06/2017 16:28:33',NULL,'booked','C','1'),
 (7,'admin1','admin1','mh12nj2255','Hashback','admin1@gmail.coom','07/06/2017 16:29:53',NULL,'','',''),
 (8,'admin2','admin2','mh12lj6655','Sedan','admin2@gmail.com',NULL,NULL,NULL,NULL,NULL),
 (9,'admin3','admin3','mh12li6985','Hashback','admin3@gmail.com',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `car_details` ENABLE KEYS */;


--
-- Definition of table `charges`
--

DROP TABLE IF EXISTS `charges`;
CREATE TABLE `charges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `charge` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charges`
--

/*!40000 ALTER TABLE `charges` DISABLE KEYS */;
INSERT INTO `charges` (`id`,`charge`) VALUES 
 (1,'');
/*!40000 ALTER TABLE `charges` ENABLE KEYS */;


--
-- Definition of table `node_details`
--

DROP TABLE IF EXISTS `node_details`;
CREATE TABLE `node_details` (
  `node_id` varchar(45) DEFAULT NULL,
  `lot_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `node_details`
--

/*!40000 ALTER TABLE `node_details` DISABLE KEYS */;
INSERT INTO `node_details` (`node_id`,`lot_id`,`status`,`latitude`,`longitude`) VALUES 
 ('A','1','1','18.5793','73.9823'),
 ('A','2','1','18.5793','73.9823'),
 ('A','3','1','18.5793','73.9823'),
 ('A','4','1','18.5793','73.9823'),
 ('B','1','1','18.5515','73.9348'),
 ('B','2','1','18.5515','73.9348'),
 ('B','3','1','18.5515','73.9348'),
 ('B','4','1','18.5515','73.9348'),
 ('C','1','1','18.5089','73.9260'),
 ('C','2','1','18.5089','73.9260'),
 ('C','3','1','18.5089','73.9260'),
 ('C','4','1','18.5089','73.9260'),
 ('D','1','1','18.5289','73.8744'),
 ('D','2','1','18.5289','73.8744'),
 ('D','3','1','18.5289','73.8744'),
 ('D','4','1','18.5289','73.8744');
/*!40000 ALTER TABLE `node_details` ENABLE KEYS */;


--
-- Definition of table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
CREATE TABLE `payment_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) DEFAULT NULL,
  `carnumber` varchar(45) DEFAULT NULL,
  `in_time` varchar(45) DEFAULT NULL,
  `out_time` varchar(45) DEFAULT NULL,
  `total_hours` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_details`
--

/*!40000 ALTER TABLE `payment_details` DISABLE KEYS */;
INSERT INTO `payment_details` (`id`,`userid`,`carnumber`,`in_time`,`out_time`,`total_hours`,`payment`) VALUES 
 (1,'dinesh@gmail.com','mh12nj3157','03/17/2017 19:26:35','03/18/2017 16:41:58','22','440'),
 (2,'dinesh@gmail.com','mh12nj3157','03/17/2017 19:26:35','03/18/2017 16:42:05','22','440'),
 (3,'dinesh@gmail.com','mh16lj3124','03/21/2017 08:56:58','03/21/2017 08:57:28','0','0'),
 (4,'dinesh@gmail.com','mh12nj3157','03/21/2017 08:56:18','03/21/2017 09:02:27','0','0'),
 (5,'dinesh@gmail.com','mh12nj3157','03/21/2017 08:56:18','03/21/2017 09:09:32','1','20'),
 (6,'dinesh@gmail.com','mh12nj3157','03/22/2017 11:16:36','03/26/2017 17:44:05','103','2060'),
 (7,'dinesh@gmail.com','mh12nj3157','03/26/2017 17:44:21','04/22/2017 19:12:55','650','16250'),
 (8,'nikhil@gmail.com','mh16a1','04/30/2017 13:20:49','04/30/2017 13:22:54','0','0'),
 (9,'nikhil@gmail.com','mh554','04/30/2017 15:18:44','04/30/2017 15:20:37','0','0'),
 (10,'dinesh@gmail.com','mh16lj3124','03/22/2017 11:17:19','04/30/2017 16:34:08','942','18840');
/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;


--
-- Definition of table `rfid_value`
--

DROP TABLE IF EXISTS `rfid_value`;
CREATE TABLE `rfid_value` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rfid` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfid_value`
--

/*!40000 ALTER TABLE `rfid_value` DISABLE KEYS */;
INSERT INTO `rfid_value` (`id`,`rfid`) VALUES 
 (2,'270019D6A74F\0\0\0\0\0\0\0\0'),
 (5,'1C0037B034AF');
/*!40000 ALTER TABLE `rfid_value` ENABLE KEYS */;


--
-- Definition of table `tbl_bins`
--

DROP TABLE IF EXISTS `tbl_bins`;
CREATE TABLE `tbl_bins` (
  `sr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field1` varchar(45) NOT NULL,
  PRIMARY KEY (`sr`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bins`
--

/*!40000 ALTER TABLE `tbl_bins` DISABLE KEYS */;
INSERT INTO `tbl_bins` (`sr`,`field1`) VALUES 
 (1,'10'),
 (2,'15');
/*!40000 ALTER TABLE `tbl_bins` ENABLE KEYS */;


--
-- Definition of table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` (`id`,`full_name`,`email`,`password`,`mobile`,`city`,`status`) VALUES 
 (1,'dinesh','dinesh@gmail.com','12345','9890430022','pune','0'),
 (2,'Dinesh Ubale','dineshubale@gmail.com','12345','9894001120','pune','0'),
 (3,'nikhil supekar','nikhil@gmail.com','123456','9503986854','pune','0'),
 (4,'aditya','adityagarud@gmail.com','aditya','9156777581','ahmednagar','0'),
 (5,'nikhil supekar','nikhil@gmail.com','123456','9503986854','pune','0');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
