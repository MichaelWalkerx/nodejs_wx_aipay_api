-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 04, 2020 at 02:22 PM
-- Server version: 5.6.48-log
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pay`
--

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE IF NOT EXISTS `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yio_orders`
--

CREATE TABLE IF NOT EXISTS `yio_orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `order_type` enum('wechat','alipay') NOT NULL DEFAULT 'wechat',
  `order_price` decimal(7,2) NOT NULL,
  `order_name` varchar(255) NOT NULL,
  `pay_status` enum('未支付','已支付','已过期') NOT NULL DEFAULT '未支付',
  `qr_url` varchar(255) NOT NULL,
  `qr_price` decimal(7,2) NOT NULL,
  `redirect_url` varchar(255) NOT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yio_qrcodes`
--

CREATE TABLE IF NOT EXISTS `yio_qrcodes` (
  `id` int(11) NOT NULL,
  `qr_type` enum('wechat','alipay') NOT NULL DEFAULT 'wechat',
  `qr_url` varchar(255) NOT NULL,
  `qr_price` decimal(7,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `yio_orders`
--
ALTER TABLE `yio_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yio_qrcodes`
--
ALTER TABLE `yio_qrcodes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `yio_orders`
--
ALTER TABLE `yio_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yio_qrcodes`
--
ALTER TABLE `yio_qrcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
