-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 08:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mirorim`
--

-- --------------------------------------------------------

--
-- Table structure for table `shop_id`
--

CREATE TABLE `shop_id` (
  `id_shop` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `tanggal_bayar` varchar(50) NOT NULL,
  `nama_product` varchar(250) NOT NULL,
  `sku_toko` varchar(25) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `penerima` varchar(100) NOT NULL,
  `kurir` varchar(100) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `resi` varchar(100) NOT NULL,
  `tanggal_pengiriman` date NOT NULL,
  `waktu_pengiriman` time NOT NULL,
  `olshop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shop_id`
--
ALTER TABLE `shop_id`
  ADD PRIMARY KEY (`id_shop`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shop_id`
--
ALTER TABLE `shop_id`
  MODIFY `id_shop` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
