-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2021 at 05:32 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id10067721_theculinarydestination`
--

-- --------------------------------------------------------

--
-- Table structure for table `bakery_feedback`
--

CREATE TABLE `bakery_feedback` (
  `ID` int(11) NOT NULL,
  `NAME` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `ID` int(11) NOT NULL,
  `NAME` mediumtext NOT NULL,
  `EMAIL` mediumtext NOT NULL,
  `MESSAGE` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID` int(11) NOT NULL,
  `IMAGENAME` mediumtext NOT NULL,
  `IMAGEPATH` mediumtext NOT NULL,
  `NAME` mediumtext NOT NULL,
  `COST` bigint(20) NOT NULL,
  `TYPE` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID`, `IMAGENAME`, `IMAGEPATH`, `NAME`, `COST`, `TYPE`) VALUES
(1, 'bread-burlap-close-up-1600711.jpg', 'img/bread-burlap-close-up-1600711.jpg', 'bread burlap', 110, 'SNACK'),
(2, 'burrito-chicken-close-up-461198.jpg', 'img/burrito-chicken-close-up-461198.jpg', 'burrito chicken', 300, 'SNACK'),
(3, 'close-up-dinner-fish-46239.jpg', 'img/close-up-dinner-fish-46239.jpg', 'fish dinner', 3500, 'MAINCOURSE'),
(4, '.jpg', 'img/.jpg', 'Veg Indian thali', 3000, 'MIANCOURSE'),
(5, 'pexels-photo-2092906.jpeg', 'img/pexels-photo-2092906.jpeg', 'Prawn noodles', 175, 'MAINCOURSE'),
(18, 'images.jpg', 'img/images.jpg', 'Cafe latte', 150, 'DESSERT'),
(20, 'fishfillet.jpg', 'img/fishfillet.jpg', 'Fish Fillet', 990, 'MAINCOURSE'),
(21, 'prawnbiryani.jpg', 'img/prawnbiryani.jpg', 'Prawns biryani', 1500, 'MAINCOURSE'),
(22, 'prawnsfry.jpg', 'img/prawnsfry.jpg', 'prawns fry', 390, 'STARTERS'),
(25, 'pomfretfry.jpg', 'img/pomfretfry.jpg', 'pomfret fry', 990, 'STARTERS'),
(26, 'lobster.jpg', 'img/lobster.jpg', 'Lobester', 1880, 'MAINCOURSE'),
(27, 'dessert.jpg', 'img/dessert.jpg', 'Dessert', 450, 'DESSERT'),
(28, 'paratha.jpg', 'img/paratha.jpg', 'Paratha', 450, 'SNACK');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `ORDERNO` mediumtext NOT NULL,
  `NAME` mediumtext NOT NULL,
  `PHONE` bigint(20) NOT NULL,
  `PINCODE` mediumtext NOT NULL,
  `ADDRESS` longtext NOT NULL,
  `ORDERS` longtext NOT NULL,
  `STATUS` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `ORDERNO`, `NAME`, `PHONE`, `PINCODE`, `ADDRESS`, `ORDERS`, `STATUS`) VALUES
(67, '2860a95fe5dd5bc', 'Aditya Barve', 9137818209, '421605', 'Regency sarwam titwala east room no 908 bldg no 25\r\nganesh mandir road titwala east', 'Paratha,', 'PENDING'),
(68, '2860a9600aca345', 'Aditya Barve', 9137818209, '421605', 'Regency sarwam titwala east room no 908 bldg no 25\r\nganesh mandir road titwala east', 'prawns fry,', 'PREPARING'),
(69, '2860a964b0e5559', 'Aditya Barve', 9137818209, '421605', 'Regency sarwam titwala east room no 908 bldg no 25\r\nganesh mandir road titwala east', 'Lobester,', 'PENDING'),
(70, '2860a964bd0582c', 'Aditya Barve', 9137818209, '421605', 'Regency sarwam titwala east room no 908 bldg no 25\r\nganesh mandir road titwala east', 'Dessert,', 'PENDING'),
(71, '2860a964ca8b776', 'Aditya Barve', 9137818209, '421605', 'Regency sarwam titwala east room no 908 bldg no 25\r\nganesh mandir road titwala east', 'prawns fry,', '');

-- --------------------------------------------------------

--
-- Table structure for table `special`
--

CREATE TABLE `special` (
  `ID` int(11) NOT NULL,
  `IMAGENAME` mediumtext NOT NULL,
  `IMAGEPATH` mediumtext NOT NULL,
  `DISHNAME` mediumtext NOT NULL,
  `DISHCOST` float DEFAULT NULL,
  `DISCOST` float DEFAULT NULL,
  `DISCRIPTION` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special`
--

INSERT INTO `special` (`ID`, `IMAGENAME`, `IMAGEPATH`, `DISHNAME`, `DISHCOST`, `DISCOST`, `DISCRIPTION`) VALUES
(6, 'close-up-dinner-fish-46239.jpg', 'img/close-up-dinner-fish-46239.jpg', 'fish dinner', 3500, 1750, 'get the fish dinner at half of its cost only for today');

-- --------------------------------------------------------

--
-- Table structure for table `suborder`
--

CREATE TABLE `suborder` (
  `ID` int(11) NOT NULL,
  `ORDERNO` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `QUANTITY` mediumint(9) NOT NULL,
  `COST` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NAME` mediumtext NOT NULL,
  `PASSWORD` mediumtext NOT NULL,
  `EMAIL` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `NAME`, `PASSWORD`, `EMAIL`) VALUES
(13, 'Aditya Barve', '$2y$10$WCQsI0OJ.8D4E.HvFUuqS.hs8EamG3QpsK9Sd4BhOu8uh/lv04LF6', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bakery_feedback`
--
ALTER TABLE `bakery_feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `special`
--
ALTER TABLE `special`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `suborder`
--
ALTER TABLE `suborder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bakery_feedback`
--
ALTER TABLE `bakery_feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `special`
--
ALTER TABLE `special`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suborder`
--
ALTER TABLE `suborder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
