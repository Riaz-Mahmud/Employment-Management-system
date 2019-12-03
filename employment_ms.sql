-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2019 at 04:09 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employment_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `admin_id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` text NOT NULL,
  `birthdate` date NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`admin_id`, `username`, `password`, `name`, `number`, `birthdate`, `status`) VALUES
(101, 'admin', 'passs', 'Al Mahmud Riaz', '01776364781', '1999-10-01', 'active'),
(102, 'adsa', '793c', 'adfa', 'adfsdf', '2019-11-09', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `empinfo`
--

CREATE TABLE `empinfo` (
  `empid` int(10) NOT NULL,
  `department` text NOT NULL,
  `name` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `number` text NOT NULL,
  `email` text NOT NULL,
  `salary` double NOT NULL,
  `address` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empinfo`
--

INSERT INTO `empinfo` (`empid`, `department`, `name`, `birthday`, `number`, `email`, `salary`, `address`, `status`) VALUES
(101, 'Computer Dept.', 'Riaz Mahmud', '2019-11-08', '01776364781', 'riaz9224@gmail.com', 12000, 'comilla, dhaka, BD', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `empinfo`
--
ALTER TABLE `empinfo`
  ADD PRIMARY KEY (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admininfo`
--
ALTER TABLE `admininfo`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
