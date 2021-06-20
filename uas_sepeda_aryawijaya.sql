-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 12:15 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_sepeda_aryawijaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_peminjam`
--

CREATE TABLE `data_peminjam` (
  `id_peminjam` int(11) NOT NULL,
  `nomor_ktp` varchar(20) NOT NULL,
  `nama_peminjam` varchar(20) NOT NULL,
  `hp_peminjam` varchar(15) NOT NULL,
  `alamat_peminjam` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_peminjam`
--

INSERT INTO `data_peminjam` (`id_peminjam`, `nomor_ktp`, `nama_peminjam`, `hp_peminjam`, `alamat_peminjam`) VALUES
(32, '317500110302005', 'Arya Wijaya', '081215327714', 'Cipadu, TangSel');

-- --------------------------------------------------------

--
-- Table structure for table `data_rentall`
--

CREATE TABLE `data_rentall` (
  `id_rental` int(11) NOT NULL,
  `nama_peminjam` varchar(20) NOT NULL,
  `jenis_sepeda` varchar(15) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `lama_rental` int(11) NOT NULL,
  `harga_rental` int(11) NOT NULL,
  `status_rental` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_rentall`
--

INSERT INTO `data_rentall` (`id_rental`, `nama_peminjam`, `jenis_sepeda`, `tgl_pinjam`, `tgl_kembali`, `lama_rental`, `harga_rental`, `status_rental`) VALUES
(21, 'Arya Wijaya', 'Polygon', '2021-01-06', '2021-01-10', 5, 250000, 'diKembalikan');

-- --------------------------------------------------------

--
-- Table structure for table `data_sepeda`
--

CREATE TABLE `data_sepeda` (
  `id_sepeda` int(11) NOT NULL,
  `merek_sepeda` varchar(20) DEFAULT NULL,
  `jenis_sepeda` varchar(20) NOT NULL,
  `harga_rental` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_sepeda`
--

INSERT INTO `data_sepeda` (`id_sepeda`, `merek_sepeda`, `jenis_sepeda`, `harga_rental`, `status`) VALUES
(8, 'Wimcycle', 'BMX', 30000, 'Tersedia'),
(9, 'Brompton', 'Lipat', 75000, 'Tersedia'),
(10, 'Polygon', 'Gunung', 50000, 'Tersedia'),
(11, 'Torpedo', 'Balap', 12000, 'Tersedia'),
(14, 'Vixi', 'Balap', 30000, 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `password_user` varchar(20) NOT NULL,
  `alamat_user` text NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id_user`, `nama_user`, `password_user`, `alamat_user`, `level`) VALUES
(1, 'admin', 'admin', 'admin', 'admin'),
(2, 'staff', 'staff', 'Jl. Staff Raya', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_peminjam`
--
ALTER TABLE `data_peminjam`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `data_rentall`
--
ALTER TABLE `data_rentall`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indexes for table `data_sepeda`
--
ALTER TABLE `data_sepeda`
  ADD PRIMARY KEY (`id_sepeda`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_peminjam`
--
ALTER TABLE `data_peminjam`
  MODIFY `id_peminjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `data_rentall`
--
ALTER TABLE `data_rentall`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `data_sepeda`
--
ALTER TABLE `data_sepeda`
  MODIFY `id_sepeda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
