-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 05:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomid` int(3) NOT NULL,
  `roomname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `capacity` int(3) NOT NULL,
  `projector` int(2) NOT NULL,
  `microphone` int(2) NOT NULL,
  `other` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomid`, `roomname`, `location`, `capacity`, `projector`, `microphone`, `other`) VALUES
(2, 'ตึก 8', 'คณะวิทยาศาสตร์', 300, 4, 8, '--'),
(3, 'ตึก 9', 'คณะวิทยาศาสตร์', 250, 2, 1, 'ไม่มี'),
(4, 'ตึกพิมล', 'khonkaen university', 200, 2, 10, '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
