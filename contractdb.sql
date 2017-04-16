-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 13, 2015 at 05:50 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `contractdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
`brand_id` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `factory_location` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `factory_location`) VALUES
(1, 'Samsung', 'Taiwan'),
(2, 'Nokia', 'Sweden'),
(3, 'Apple', 'California'),
(4, 'Sony', 'Japan');

-- --------------------------------------------------------

--
-- Table structure for table `carrier`
--

CREATE TABLE IF NOT EXISTS `carrier` (
`ID` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carrier`
--

INSERT INTO `carrier` (`ID`, `Name`) VALUES
(1, 'Vodafone'),
(2, 'EE'),
(3, 'O2'),
(4, 'Three');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE IF NOT EXISTS `contract` (
`contract_id` int(4) NOT NULL,
  `carrier_id` int(4) NOT NULL,
  `handset_price` varchar(10) NOT NULL,
  `device_id` int(4) NOT NULL,
  `minutes` varchar(15) NOT NULL,
  `texts` varchar(15) NOT NULL,
  `data` varchar(15) NOT NULL,
  `monthly_price` varchar(10) NOT NULL,
  `length` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`contract_id`, `carrier_id`, `handset_price`, `device_id`, `minutes`, `texts`, `data`, `monthly_price`, `length`) VALUES
(1, 1, 'Free', 4, 'Unlimited', 'Unlimited', '7GB', '£48.50', 24),
(2, 2, '£9.99', 4, 'Unlimited', 'Unlimited', '5GB', '£45.99', 24),
(4, 3, 'Free', 4, 'Unlimited', 'Unlimited', '5GB', '£43.00', 24),
(6, 4, '£9.00', 4, 'Unlimited', 'Unlimited', '2GB', '£35.00', 24),
(7, 1, '£249', 4, 'Unlimited', 'Unlimited', '4GB', '£53.50', 12),
(8, 2, '£9.00', 4, 'Unlimited', 'Unlimited', '5GB', '£55.99', 12),
(9, 3, 'Free', 4, 'Unlimited', 'Unlimited', '5GB', '£53.99', 12),
(10, 4, '£9.00', 4, 'Unlimited', 'Unlimited', '2GB', '£45.00', 12),
(11, 1, 'Free', 3, 'Unlimited', 'Unlimited', '7GB', '£44.50', 24),
(12, 2, '£9.99', 3, '1000', 'Unlimited', '1GB', '£35.99', 24),
(13, 3, 'Free', 3, 'Unlimited', 'Unlimited', '2GB', '£22.00', 24),
(14, 4, 'Free', 3, 'Unlimited', 'Unlimited', '2GB', '£29.99', 24),
(15, 1, '£129.99', 3, 'Unlimited', 'Unlimited', '7GB', '£58.50', 12),
(16, 2, '£9.99', 3, '1000', 'Unlimited', '1GB', '£45.99', 12),
(17, 3, 'Free', 3, 'Unlimited', 'Unlimited', '2GB', '£32.00', 12),
(18, 4, 'Free', 3, 'Unlimited', 'Unlimited', '2GB', '£39.99', 12),
(21, 1, 'Free', 2, 'Unlimited', 'Unlimited', '7GB', '£44.50', 24),
(22, 2, '£9.99', 2, 'Unlimited', 'Unlimited', '2GB', '£40.99', 24),
(23, 3, 'Free', 2, 'Unlimited', 'Unlimited', '5GB', '£43.00', 24),
(24, 4, 'Free', 2, 'Unlimited', 'Unlimited', 'Unlimited', '£40.00', 24),
(26, 1, '199.00', 2, 'Unlimited', 'Unlimited', '7GB', '£58.50', 12),
(27, 3, 'Free', 2, 'Unlimited', 'Unlimited', '5GB', '£53.00', 12),
(30, 2, '£329.99', 1, 'Unlimited', 'Unlimited', '5GB', '£55.99', 24),
(31, 3, '£29.99', 1, 'Unlimited', 'Unlimited', 'Unlimited', '£58.00', 24),
(32, 4, '£119.00', 1, 'Unlimited', 'Unlimited', 'Unlimited', '£60.00', 24),
(33, 1, '£279.99', 1, 'Unlimited', 'Unlimited', '7GB', '£58.50', 12),
(34, 2, '£329.00', 1, 'Unlimited', 'Unlimited', '5GB', '£65.99', 12),
(35, 3, '£28.99', 1, 'Unlimited', 'Unlimited', 'Unlimited', '£68.00', 12),
(36, 4, '£119.00', 1, 'Unlimited', 'Unlimited', 'Unlimited', '£70.00', 12),
(37, 1, '£209.00', 1, 'Unlimited', 'Unlimited', '7GB', '£53.50', 24),
(38, 2, '£9.99', 3, 'Unlimited', 'Unlimited', '2GB', '£50.99', 12),
(39, 4, 'Free', 3, 'Unlimited', 'Unlimited', 'Unlimited', '£50.00', 12);

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE IF NOT EXISTS `device` (
`device_id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand_id` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`device_id`, `name`, `brand_id`) VALUES
(1, 'iPhone 6 Plus', 3),
(2, 'Galaxy S5', 1),
(3, 'Lumia 930', 2),
(4, 'Xperia Z3', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
 ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `carrier`
--
ALTER TABLE `carrier`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
 ADD PRIMARY KEY (`contract_id`), ADD KEY `carrier_id` (`carrier_id`), ADD KEY `device_id` (`device_id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
 ADD PRIMARY KEY (`device_id`), ADD KEY `brand_id` (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
MODIFY `brand_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `carrier`
--
ALTER TABLE `carrier`
MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
MODIFY `contract_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
MODIFY `device_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`carrier_id`) REFERENCES `carrier` (`ID`),
ADD CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`device_id`) REFERENCES `device` (`device_id`);

--
-- Constraints for table `device`
--
ALTER TABLE `device`
ADD CONSTRAINT `device_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
