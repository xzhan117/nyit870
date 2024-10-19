-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2024 at 03:46 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(111) NOT NULL,
  `details` varchar(333) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `pic`, `details`, `date`) VALUES
(1, 'Oreo', 'oreo.webp', 'oreo', '2024-09-06 04:58:57'),
(2, 'Coca Cola', 'coca cola.webp', 'cocacola', '2024-09-06 04:58:57'),
(3, 'Haagen Dazs', 'haagen dazs.webp', 'haagen dazs', '2024-09-06 04:59:24'),
(4, 'Sprite', 'sprite.webp', 'sprite', '2024-09-06 04:59:24'),
(5, 'Coconut Juice', 'coconut juice.webp', 'coconut juice', '2024-09-06 04:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `inventeries`
--

CREATE TABLE `inventeries` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `unit` text NOT NULL,
  `price` float(24) NOT NULL,
  `supplier` varchar(222) NOT NULL,
  `company` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventeries`
--

INSERT INTO `inventeries` (`id`, `catId`, `unit`, `price`, `supplier`, `company`, `date`) VALUES
(1, 1, '300g', '3.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:10:37'),
(2, 1, '300g', '3.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:10:40'),
(3, 1, '300g', '3.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:10:43'),
(4, 1, '300g', '3.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:10:46'),
(5, 1, '300g', '3.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:10:48'),
(6, 1, '300g', '3.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:10:51'),
(7, 2, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:10:54'),
(8, 2, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:10:57'),
(9, 2, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:01'),
(10, 2, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:04'),
(11, 2, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:07'),
(12, 2, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:12'),
(13, 2, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:15'),
(15, 3, '400ml', '7.89', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:18'),
(16, 3, '400ml', '7.89', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:21'),
(17, 3, '400ml', '7.89', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:23'),
(18, 4, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:25'),
(19, 4, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:27'),
(20, 4, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:28'),
(21, 4, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:31'),
(22, 4, '500ml', '2.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:33'),
(23, 5, '350ml', '4.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:36'),
(24, 5, '350ml', '4.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:39'),
(25, 5, '350ml', '4.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:41'),
(26, 5, '350ml', '4.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:43'),
(27, 5, '350ml', '4.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:47'),
(28, 5, '350ml', '4.49', 'Jack Lin', 'Jack Ltd.', '2024-09-06 06:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `title`, `name`) VALUES
(1, 'Grocery Store', 'Grocery Store');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `contact` varchar(222) NOT NULL,
  `discount` varchar(222) NOT NULL,
  `item` varchar(222) NOT NULL,
  `amount` varchar(222) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`id`, `name`, `contact`, `discount`, `item`, `amount`, `userId`, `date`) VALUES
(1, 'Member1', '1231231233', '0', '2', '1', 1, '2024-09-17 15:44:15'),
(2, 'Member2', '4564564566', '0', '3', '1', 1, '2024-09-17 16:47:22'),
(3, 'Not a member', '7897897899', '0', '4', '1', 1, '2024-09-19 08:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `number` text NOT NULL,
  `address` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `number`, `address`, `date`) VALUES
(1, 'Jack Lin', '1337153', 'qlin08@nyit.edu', '2024-09-06 07:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(222) NOT NULL,
  `number` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `pic`, `number`, `date`) VALUES
(1, 'jack@gmail.com', 'jack', 'JL', 'jl.jpg', '1337153', '2024-09-02 12:34:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold`
--

ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `inventeries`
--
ALTER TABLE `inventeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
