-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 03, 2022 at 02:31 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `to_do_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
CREATE TABLE IF NOT EXISTS `todos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `title`, `date_time`, `checked`) VALUES
(1, 'make new tutorial', '2022-04-14 05:14:10', 1),
(2, 'hello, world', '2022-04-14 05:14:10', 0),
(3, 'Hello, php', '2022-04-14 05:19:28', 1),
(4, 'hello', '2022-05-07 10:13:39', 0),
(5, 'ol', '2022-05-07 10:14:15', 0),
(6, 'li', '2022-05-07 10:14:20', 0),
(7, 'no', '2022-05-07 11:23:28', 0),
(8, 'no', '2022-05-07 11:24:38', 0),
(9, 'kk', '2022-05-07 11:24:50', 0),
(10, 'kk', '2022-05-07 11:26:00', 0),
(11, 'read', '2022-05-08 09:49:21', 0),
(12, 'nothi', '2022-05-08 10:04:52', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
