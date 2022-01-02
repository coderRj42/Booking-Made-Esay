-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2022 at 05:49 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stadium`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adults` int(11) NOT NULL,
  `kids` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `name`, `email`, `adults`, `kids`, `p_name`, `no`) VALUES
(1, 'hi', 'ck@gmail.com', 1, 2, '1', 2578),
(2, 'hi', 'ck@gmail.com', 1, 2, '1', 2578),
(3, 'krupa', 'k@gmail.com', 2, 3, '1', 987563241),
(4, 'Jai', 'jaykumar0481@gmail.com', 2, 0, '1', 2147483647),
(5, 'ujuk', 'dfghjk@gmail.com', 1, 1, '3', 78922),
(6, 'ankita', 'a@gmail.com', 2, 0, '3', 2147483647),
(7, 'WERTY', 'QWERTUY@GMAIL.COM', 1, 0, '2', 987563241);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `c_id` int(100) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `c_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`c_id`, `c_name`, `email`, `c_message`) VALUES
(1, 'abc', 'hello@gmail.com', 'hi and hello'),
(2, 'krupa', 'example@gmail.com', 'good morning'),
(3, 'abc', 'example@gmail.com', 'hi'),
(4, 'krupa', 'hello@gmail.com', 'hi'),
(5, 'chaitra', 'chaitra@gmail.com', 'Hello'),
(6, 'krupa', 'k@gmail.com', 'hi'),
(7, 'ankita', 'a@gmail.com', 'good stadium'),
(8, 'ex', 'ex@gmail.com', 'good stadium'),
(9, 'krupa', 'k@gmail.com', 'hey'),
(10, 'krupa', 'hello@gmail.com', 'hello hi'),
(11, 'krupa', 'k@gmail.com', 'hii');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pid` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `cardno` bigint(30) NOT NULL,
  `date` int(11) NOT NULL,
  `cvc` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pid`, `amt`, `p_name`, `cardno`, `date`, `cvc`) VALUES
(1, 55, 'Krupa', 7894, 0, 0),
(2, 3000, 'Krupa', 7896, 0, 789),
(3, 45, 'Krupa', 7896, 2, 888),
(4, 3000, 'krupa', 4788, 1, 0),
(5, 200, 'basanti', 1111, 12, 0),
(6, 200, 'Jai', 1111, 2, 111);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `email`, `password`) VALUES
(1, 'abc12@gmail.com', 'ab1234'),
(2, 'krupakattu@gmail.com', '789'),
(3, 'k@gmail.com', '1452'),
(4, 'abc@gmail.com', '1234'),
(5, 'ex@gmail.com', '1234'),
(6, 'example@gmail.com', '12345'),
(7, 'ck@gmail.com', '7896'),
(8, 'abcd@gmail.com', '896'),
(10, 'jai@gmail.com', '111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
