-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2023 at 06:06 AM
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
-- Table structure for table `toko_prepare`
--

CREATE TABLE `toko_prepare` (
  `id_toko_prepare` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_start` datetime NOT NULL,
  `durasi` time NOT NULL,
  `date_continue` datetime NOT NULL,
  `date_finish` datetime NOT NULL,
  `status` enum('start','pause','unprocessed','on process') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toko_prepare`
--

INSERT INTO `toko_prepare` (`id_toko_prepare`, `id_product`, `id_user`, `date_start`, `durasi`, `date_continue`, `date_finish`, `status`) VALUES
(1, 28, 20, '0000-00-00 00:00:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unprocessed'),
(2, 201, 30, '0000-00-00 00:00:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unprocessed'),
(3, 766, 56, '0000-00-00 00:00:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unprocessed'),
(4, 207, 49, '0000-00-00 00:00:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unprocessed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `toko_prepare`
--
ALTER TABLE `toko_prepare`
  ADD PRIMARY KEY (`id_toko_prepare`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `toko_prepare`
--
ALTER TABLE `toko_prepare`
  MODIFY `id_toko_prepare` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
