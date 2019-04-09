-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 29, 2017 at 06:46 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `treecko`
--

-- --------------------------------------------------------

--
-- Table structure for table `pika`
--

CREATE TABLE `pika` (
  `serial` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `wds` varchar(1) NOT NULL,
  `fhname` varchar(60) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `age` int(2) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mob` varchar(10) NOT NULL,
  `entry_by` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pika`
--

INSERT INTO `pika` (`serial`, `name`, `wds`, `fhname`, `gender`, `age`, `address`, `mob`, `entry_by`) VALUES
(1, 'Jeff', 'S', 'Jeff', 'M', 99, 'Jeff', '9090909090', 'pikachu'),
(2, 'Pikahu', 'S', 'Raihu', 'M', 69, 'Internet', '9901010', 'pikachu'),
(3, 'iodns', 'D', 'dfgdfg', 'F', 45, 'cioj4nd34do34ndol34n', 'doi3h23', 'ho');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` char(16) NOT NULL,
  `password_md5` char(32) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password_md5`, `reg_time`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-12-28 14:02:20'),
(11, 'pikachu', '9ce44f88a25272b6d9cbb430ebbcfcf1', '2017-12-28 14:03:47'),
(12, 'tom', '34b7da764b21d298ef307d04d8152dc5', '2017-12-28 14:07:42'),
(13, 'sj823!@', 'a82ca706b306326466fcdbb620a4efcc', '2017-12-28 14:15:42'),
(14, 'ho', 'b5d9b59113086d3f9f9f108adaaa9ab5', '2017-12-28 16:55:53'),
(15, 'bieber', '61c81371ae4404d7100202d90bee987e', '2017-12-28 17:15:03'),
(16, '', 'd41d8cd98f00b204e9800998ecf8427e', '2017-12-28 17:25:19'),
(17, 'falala', '2a769f997336626cfbf7e0188ca97447', '2017-12-29 12:52:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pika`
--
ALTER TABLE `pika`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pika`
--
ALTER TABLE `pika`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
