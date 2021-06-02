-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 11:58 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prez_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `adminid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `nic` char(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `imgpath` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`adminid`, `name`, `nic`, `type`, `username`, `password`, `email`, `imgpath`, `gender`) VALUES
(1, 'Test Administrator Account', '970000000V', 'manager', 'admin', 'adminpass', 'info@admin.prez.com', 'images/admin/apminprofileimg/1.jpg', 'male'),
(3, 'Dineth Piyumantha', '972800000V', 'accountant', 'dineth', 'dineth', 'dinethpiyumantha@gmail.com', 'images/admin/apminprofileimg/2.jpg', 'male'),
(4, 'Sahan Prasanga', '990000000V', 'admin', 'sahan', 'sahan', 'sahanprasanga@gmail.com', 'images/admin/apminprofileimg/4.jpg', 'male'),
(6, 'Chathurika Udayangani', '972200000V', 'admin', 'chathurika', 'chathurika', 'chathurikaudayangani@yahoo.com', 'images/admin/apminprofileimg/6.jpg', 'female'),
(8, 'Pubudu Kaushalya', '980000000V', 'admin', 'pubudu', 'pubudu', 'pubudukaushalya@yahoo.com', 'images/admin/apminprofileimg/8.jpg', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `masage` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `adminid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `name`, `masage`, `email`, `adminid`) VALUES
(13, 'dineth eka', 'dinethpiyumantha@gmail.com', 'This is a Sample message (Test', NULL),
(14, 'rashintha ', 'rashnuwan@outlook.com', 'This is a Test feedback', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
