-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 12, 2023 at 02:41 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `prequest`
--

DROP TABLE IF EXISTS `prequest`;
CREATE TABLE IF NOT EXISTS `prequest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prequest`
--

INSERT INTO `prequest` (`id`, `email`, `product`, `quantity`) VALUES
(1, 'sapuni dheerasinha', 'Papaya', 10),
(2, '', 'Papaya', 10),
(3, '', 'Papaya', 10),
(4, '', 'Papaya', 10),
(5, 'sapuninethmini994@gmail.com', 'Papaya', 10),
(6, 'sapu@gmail.com', 'Papaya', 10),
(7, 'kasuni@gmail.com', 'Papaya', 10),
(8, 'Sparkignites777@gmail.com', 'Papaya', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` int NOT NULL,
  `email` varchar(150) NOT NULL,
  `product` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `first_name`, `last_name`, `phone`, `email`, `product`, `quantity`) VALUES
(1, 'sapuni', 'dheerasinha', 741195573, 'sapuninethmini888@gmail.com', 'guava', 0),
(2, 'yuy', 'dheerasinha', 741195573, 'yuy@gmail.com', '', 100),
(3, 'yuy', 'dheerasinha', 741195573, 'yuy@gmail.com', '', 100),
(4, 'yuy', 'dheerasinha', 741195573, 'yuy@gmail.com', '', 0),
(5, 'sapuni', 'dheerasinha', 741195573, 'sapuninethmini888@gmail.com', '', 0),
(6, 'sapuni', 'dheerasinha', 741195573, 'sapuninethmini888@gmail.com', '', 0),
(7, 'sapuni', 'dheerasinha', 741195573, 'sapuninethmini888@gmail.com', 'mango', 0),
(8, 'sapuni', 'dheerasinha', 741195573, 'sapuninethmini888@gmail.com', 'guava', 0),
(9, 'sapuni', 'dheerasinha', 741195573, 'sapuninethmini888@gmail.com', 'guava', 0),
(10, 'sapuni', 'hgjhgj', 997744567, 'rt5@gmail.com', 'guava', 0),
(11, 'sapuni', 'hgjhgj', 997744567, 'rt5@gmail.com', 'guava', 0),
(12, 'ooo', 'ppp', 741195573, 'oooppp@gmail.com', 'papaya', 0),
(13, 'dsa', 'dheerasinha', 667788965, 'yuio@gmail.com', 'apple', 20);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `id` int NOT NULL,
  `product` int NOT NULL,
  `qunatity` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roler` varchar(30) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` int NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `roler`, `first_name`, `last_name`, `password`, `phone`, `email`) VALUES
(28, 'Admin', 'sapuni', 'nethmini', '123', 768069648, 'sapu@gmail.com'),
(29, 'customer', 's', 'n', '123', 741195573, 'sn@gmail.com'),
(27, 'customer', 'sapuni', 'dheerasinha', '890', 741195573, '11@gmail.com'),
(26, '', 'mayura', 'sandeep', '', 67889956, '12@gmail.com'),
(25, '', 'kusum', 'perera', '', 998866567, 'kusum@gmail.com'),
(24, 'Admin', 'sapuni', 'nethmini', '123', 768069648, 'sapu@gmail.com'),
(23, 'Admin', 'sapuni', 'nethmini', '123', 768069648, 'sapu@gmail.com'),
(33, 'Admin', 'sapuni', 'nethmini', '123', 768069648, 'sapu@gmail.com'),
(34, 'customer', 'kasuni', 'silva', '456', 778965324, 'kasuni@gmail.com'),
(35, 'delear', 'kausni', 'dheerasinha', '678', 741195573, 'kasuni@gmail.com'),
(36, 'delear', 'mahinada', 'rajapaksha', '12', 741195573, 'mahinda@gmail.com'),
(37, 'delear', 'amal', 'perera', '10', 741195573, 'amal@gmail.com'),
(38, 'customer', 'kusum', 'namal', '11', 741195573, 'k@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
