-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 05:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pod_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `harga`) VALUES
(1, 'Chitato mini', 15000),
(2, 'Oreo', 12000),
(3, 'Aqua', 4000),
(4, 'FruitTea', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `total` int(11) NOT NULL,
  `dibayar` float NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keuangan`
--

INSERT INTO `keuangan` (`total`, `dibayar`, `kembalian`) VALUES
(4000, 5000, 1000),
(60000, 70000, 10000),
(45000, 50000, 5000),
(60000, 70000, 10000),
(239, 250000, 249761),
(239000, 250000, 11000),
(85000, 90000, 5000),
(49000, 50000, 1000),
(27000, 30000, 3000),
(27000, 30000, 3000),
(39000, 40000, 1000),
(141000, 200000, 59000),
(141000, 250000, 109000),
(129000, 200000, 71000),
(15000, 20000, 5000),
(15000, 20000, 5000),
(12000, 30000, 18000),
(102000, 200000, 98000),
(35000, 50000, 15000),
(15000, 25000, 10000),
(15000, 24000, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `kode` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` float NOT NULL,
  `kadaluarsa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`kode`, `nama`, `harga`, `kadaluarsa`) VALUES
(5, 'Oreo', 10000, '2024-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `pulsa`
--

CREATE TABLE `pulsa` (
  `kode` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` float NOT NULL,
  `operator` varchar(100) NOT NULL,
  `nominal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pulsa`
--

INSERT INTO `pulsa` (`kode`, `nama`, `harga`, `operator`, `nominal`) VALUES
(6, 'TELKOMSEL A', 12000, 'TELKOMSEL', 10000),
(7, 'INDOSAT A', 12000, 'INDOSAT', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `rincian_transaksi`
--

CREATE TABLE `rincian_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_satuan` float NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `harga_total` float NOT NULL,
  `jenis_pembayaran` text NOT NULL,
  `invoice_id` text NOT NULL,
  `waktu_pembayaran` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rincian_transaksi`
--

INSERT INTO `rincian_transaksi` (`id_transaksi`, `id_barang`, `nama_barang`, `harga_satuan`, `jumlah_barang`, `harga_total`, `jenis_pembayaran`, `invoice_id`, `waktu_pembayaran`) VALUES
(2, 2, 'Oreo', 12000, 3, 36000, '', '', '2023-06-09 10:32:23'),
(3, 2, 'Oreo', 12000, 3, 36000, '', '', '2023-06-09 10:32:23'),
(6, 3, 'Aqua', 4000, 1, 4000, '', '', '2023-06-09 10:32:23'),
(8, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(8, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(8, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(9, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(9, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(9, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(9, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(10, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(10, 2, 'Oreo', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(11, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(11, 6, 'TELKOMSEL A 082121212121', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(11, 2, 'Oreo', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(12, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(12, 7, 'INDOSAT A 082121212121', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(12, 9, 'PLN100 9999999999', 102000, 1, 102000, '', '', '2023-06-09 10:32:23'),
(13, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(13, 2, 'Oreo', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(13, 7, 'INDOSAT A 082121212121', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(13, 9, 'PLN100 222222222222', 102000, 1, 102000, '', '', '2023-06-09 10:32:23'),
(14, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(14, 2, 'Oreo', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(14, 7, 'INDOSAT A 08212121212192', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(14, 9, 'PLN100 123123121342424', 102000, 1, 102000, '', '', '2023-06-09 10:32:23'),
(15, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(15, 2, 'Oreo', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(15, 7, 'INDOSAT A 089292929292', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(15, 9, 'PLN100 1232174621874216', 102000, 1, 102000, '', '', '2023-06-09 10:32:23'),
(16, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(16, 2, 'Oreo', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(16, 7, 'INDOSAT A 089292929292', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(16, 9, 'PLN100 1232174621874216', 102000, 1, 102000, '', '', '2023-06-09 10:32:23'),
(16, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(16, 2, 'Oreo', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(16, 9, 'PLN100 999999999999', 102000, 1, 102000, '', '', '2023-06-09 10:32:23'),
(17, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(17, 2, 'Oreo', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(17, 7, 'INDOSAT A 089292929292', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(17, 9, 'PLN100 1232174621874216', 102000, 1, 102000, '', '', '2023-06-09 10:32:23'),
(17, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(17, 2, 'Oreo', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(17, 9, 'PLN100 999999999999', 102000, 1, 102000, '', '', '2023-06-09 10:32:23'),
(17, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(18, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(19, 7, 'INDOSAT A 21321321213321', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(20, 9, 'PLN100 132131221321313', 102000, 1, 102000, '', '', '2023-06-09 10:32:23'),
(21, 1, 'Chitato mini', 15000, 1, 15000, '', '', '2023-06-09 10:32:23'),
(21, 4, 'FruitTea', 8000, 1, 8000, '', '', '2023-06-09 10:32:23'),
(21, 6, 'TELKOMSEL A 12421421241', 12000, 1, 12000, '', '', '2023-06-09 10:32:23'),
(22, 1, 'Chitato mini', 15000, 1, 15000, 'Cash', '51333598', '2023-06-09 11:18:06'),
(23, 1, 'Chitato mini', 15000, 1, 15000, 'Debit', '75101481', '2023-06-09 11:18:59'),
(24, 1, 'Chitato mini', 15000, 1, 15000, 'Cash', '31225354', '2023-06-09 11:23:19'),
(25, 6, 'TELKOMSEL A 0821212121', 12000, 1, 12000, 'DebitBNI12412152135213', '68731354', '2023-06-09 11:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `kode` int(11) NOT NULL,
  `nama` varchar(11) NOT NULL,
  `harga` float NOT NULL,
  `nominal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`kode`, `nama`, `harga`, `nominal`) VALUES
(8, 'PLN50', 52000, 50000),
(9, 'PLN100', 102000, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `total_harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `total_harga`) VALUES
(2, 36000),
(3, 36000),
(4, 111000),
(5, 15000),
(6, 4000),
(7, 60000),
(8, 45000),
(9, 60000),
(10, 27000),
(11, 27000),
(12, 27000),
(13, 39000),
(14, 141000),
(15, 141000),
(16, 129000),
(17, 15000),
(18, 15000),
(19, 12000),
(20, 102000),
(21, 35000),
(22, 15000),
(23, 15000),
(24, 15000),
(25, 12000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pulsa`
--
ALTER TABLE `pulsa`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `rincian_transaksi`
--
ALTER TABLE `rincian_transaksi`
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1115;

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pulsa`
--
ALTER TABLE `pulsa`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rincian_transaksi`
--
ALTER TABLE `rincian_transaksi`
  ADD CONSTRAINT `rincian_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
