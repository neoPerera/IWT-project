-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2018 at 11:57 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wolly`
--

-- --------------------------------------------------------

--
-- Table structure for table `crust`
--

CREATE TABLE `crust` (
  `id` int(10) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crust`
--

INSERT INTO `crust` (`id`, `type`) VALUES
(1, 'pan'),
(2, 'sausages'),
(3, 'staffed');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) NOT NULL,
  `foodName` varchar(100) NOT NULL,
  `foodType` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `promo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `foodName`, `foodType`, `image`, `price`, `promo`) VALUES
(16, 'BBQ chiken', 'pizza', 'images/22b3e03062.png', 1200, 'yes'),
(18, 'Fiery Chicken', 'pizza', 'images/b57835c1de.png', 2100, 'yes'),
(19, 'Margherita', 'pizza', 'images/5c958b0c88.png', 2150, 'yes'),
(20, 'Hawaiian', 'food type', 'images/28feb6e976.png', 1650, 'yes'),
(21, 'Veggie Supreme', 'pizza', 'images/3235d01ef7.png', 1350, 'yes'),
(22, 'SpicyCfd', 'pizza', 'images/cda5a26819.png', 1420, 'yes'),
(23, 'Tandoori Chicken', 'pizza', 'images/913eda7dfe.png', 970, 'yes'),
(24, 'Devilled Chicken', 'pizza', 'images/cbe9a9ce28.png', 1740, 'yes'),
(26, '', 'food type', 'images/a09254bf1d.png', 0, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `foodId` int(10) NOT NULL,
  `size` int(10) NOT NULL,
  `crust` int(10) NOT NULL,
  `cheese` int(10) NOT NULL,
  `toppin` int(10) NOT NULL,
  `instruction` varchar(100) NOT NULL,
  `quantity` int(10) NOT NULL,
  `payMethod` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `card` char(10) NOT NULL,
  `code` varchar(100) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` char(4) NOT NULL,
  `phoneNumber` char(10) NOT NULL,
  `pending` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `foodId`, `size`, `crust`, `cheese`, `toppin`, `instruction`, `quantity`, `payMethod`, `name`, `address`, `card`, `code`, `month`, `year`, `phoneNumber`, `pending`) VALUES
(57, 1, 1, 1, 1, 1, '1', 1, 1, '1', '1', '1', '1', '1', '1', '1', 'no'),
(55, 1, 1, 1, 1, 1, '', 1232123123, 1, '', '', '0', '0', '0', '0', '7897897897', 'no'),
(56, 1, 1, 1, 1, 1, '', 1111, 1, 'CASHIER', '111', '11', '11', 'march', '1111', '7897897897', 'no'),
(58, 1, 1, 1, 1, 1, '', 1, 1, '', '', '0', '0', '0', '0', '7897897897', 'no'),
(59, 1, 1, 1, 1, 1, '', 1, 1, '', '', '0', '0', '0', '0', '7897897897', 'no'),
(60, 1, 1, 1, 1, 1, '', 9999, 1, '', '', '0', '0', '0', '0', '7897897897', 'no'),
(61, 1, 1, 1, 1, 1, '', 9, 1, 'CASHIER', '', '0', '0', '0', '0', '7897897897', 'no'),
(62, 1, 1, 1, 1, 1, '', 12, 1, 'CASHIER', '', '0', '0', '0', '0', '7897897897', 'no'),
(63, 1, 1, 1, 1, 1, '', 6, 1, 'CASHIER', '', '0', '0', '0', '0', '7897897897', 'no'),
(64, 1, 1, 1, 1, 1, 'cheese godak one', 1, 2, 'chanth nilushan', 'colombo rd ', '1234567890', '1234', 'march', '1111', '', 'no'),
(65, 0, 1, 1, 1, 1, '', 3, 1, 'ADMIN', '', '0', '0', '0', '0', '0000000000', 'no'),
(66, 1, 1, 1, 1, 1, '', 6, 1, 'TESTNAME', '', '0', '0', '0', '0', '0123456789', 'no'),
(67, 7, 1, 1, 1, 1, '', 1, 1, 'TESTNAME', 'q', 'q', 'q', 'january', '1111', '0123456789', 'no'),
(68, 11, 1, 1, 1, 1, '', 1, 1, 'TESTNAME', '', '0', '0', '0', '0', '0123456789', 'no'),
(69, 5, 3, 1, 2, 2, '', 1, 1, 'kalhara', 'sliit,malabe', '1234567890', '567', 'august', '2019', '1234567894', 'no'),
(70, 16, 1, 1, 1, 1, '', 12, 1, 'lakshan', '', '0', '0', '0', '0', '0716662223', 'no'),
(71, 18, 1, 1, 1, 1, '', 3, 1, 'lakshan', '', '0', '0', '0', '0', '0716662223', 'no'),
(72, 16, 1, 1, 1, 1, '', 1, 1, 'CASHIER', '', '0', '0', '0', '0', '7897897897', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(10) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `type`) VALUES
(1, 'small'),
(2, 'medium'),
(3, 'large');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `phoneNum` char(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `charType` int(1) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`phoneNum`, `name`, `email`, `password`, `charType`, `address`) VALUES
('7897897897', 'CASHIER', '2@2.lk', 'test', 2, ''),
('admin', 'admin', 'admin@admin.lk', 'test', 1, 'adsda'),
('6666666666', 'lakshan', 'asd@asd.lk', 'shan', 3, 'test'),
('3333333333', 'w', 'w@q.lk', 'qwe ', 3, 'test'),
('8888888888', 'd', 'd@d.lk', 'd ', 3, 'test'),
('1234567894', 'kalhara', 'kalhara@gmail.com', 'iwt ', 3, 'test'),
('0716662223', 'lakshan', 'shan@gmail.com', 'akka', 3, 'no 36 new house');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crust`
--
ALTER TABLE `crust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`phoneNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crust`
--
ALTER TABLE `crust`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
