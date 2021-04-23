-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 03:40 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(4, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(6) NOT NULL,
  `kode_kategori` int(11) NOT NULL,
  `kode_supplier` varchar(6) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `foto_barang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `kode_kategori`, `kode_supplier`, `nama_barang`, `satuan`, `stok`, `harga_beli`, `harga_jual`, `foto_barang`) VALUES
('ALS001', 13, 'SUP006', 'Taro', 'Dus', 10, 45000, 50000, NULL),
('AQA001', 14, 'SUP010', 'Aqua Mineral Water', 'Dus', 10, 23000, 25000, NULL),
('IND001', 13, 'SUP001', 'Lays', 'dus', 5, 175000, 180000, NULL),
('IND002', 13, 'SUP001', 'Cheetos', 'Dus', 5, 75000, 80000, NULL),
('IND003', 13, 'SUP001', 'Chitato', 'Dus', 5, 80000, 85000, NULL),
('IND005', 14, 'SUP004', 'Cheetos', 'Dus', 5, 75000, 80000, NULL),
('IND006', 15, 'SUP001', 'Lays', 'Dus', 6, 7500, 80000, NULL),
('LWY001', 13, 'SUP005', 'Pringles', 'Dus', 10, 80000, 100000, NULL),
('PD0001', 14, 'SUP007', 'Mizone', 'Dus', 10, 27000, 30000, NULL),
('PRM001', 14, 'SUP004', 'Prima Water', 'Dus', 10, 25000, 27000, NULL),
('UNT001', 20, 'SUP008', 'Bimoli', 'Dus', 10, 100000, 110000, NULL),
('UNT002', 20, 'SUP008', 'Sunco', 'Dus', 10, 80000, 85000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `kode_tr` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `satuan_barang` varchar(100) NOT NULL,
  `jml_barang` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`kode_tr`, `tanggal`, `kode_barang`, `nama_barang`, `satuan_barang`, `jml_barang`, `harga_jual`, `total`) VALUES
('tr20210422.0616300430', '2021-04-22', 'AQA001', 'Aqua Mineral Water', 'Dus', 1, 25000, 25000),
('tr20210422.0617010401', '2021-04-22', 'IND003', 'Chitato', 'Dus', 1, 85000, 85000),
('tr20210422.0617170417', '2021-04-22', 'ALS001', 'Taro', 'Dus', 2, 50000, 100000),
('tr20210422.0617550455', '2021-04-22', 'LWY001', 'Pringles', 'Dus', 1, 100000, 100000),
('tr20210422.0618110411', '2021-04-22', 'UNT001', 'Bimoli', 'Dus', 2, 110000, 220000),
('tr20210422.0618300430', '2021-04-22', 'IND003', 'Chitato', 'Dus', 2, 85000, 170000),
('tr20210422.0618580458', '2021-04-22', 'AQA001', 'Aqua Mineral Water', 'Dus', 2, 25000, 50000),
('tr20210422.0619270427', '2021-04-22', 'PD0001', 'Mizone', 'Dus', 2, 30000, 60000),
('tr20210422.0619440444', '2021-04-22', 'UNT002', 'Sunco', 'Dus', 1, 85000, 85000),
('tr20210422.0620060406', '2021-04-22', 'UNT001', 'Bimoli', 'Dus', 1, 110000, 110000),
('tr20210422.0733430443', '2021-04-22', 'UNT002', 'Sunco', 'Dus', 1, 85000, 85000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `nama_kategori`) VALUES
(13, 'Cemilan'),
(14, 'Minuman'),
(15, 'Wafer'),
(16, 'Bandage'),
(17, 'Kecap'),
(18, 'Buah Segar'),
(19, 'Vegetable'),
(20, 'Minyak'),
(21, 'Paper Bag'),
(22, 'Permen');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `nip` varchar(6) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`nip`, `nama_depan`, `nama_belakang`, `alamat`, `no_tlp`, `email`, `tgl_lahir`, `jk`) VALUES
('190101', 'abdul', 'majid', 'bekasi', '081221395328', 'abdulmajid0528@gmail.com', '2021-04-14', 'L'),
('190102', 'Chisto', 'Chisto Rivaldo ', 'Bekasi', '081221395329', 'christo@gmail.com', '2021-04-24', 'L'),
('190103', 'Riwan', 'Irosucipto', 'Bekasi', '081221395990', 'riwan@gmail.com', '2021-04-04', 'L'),
('190104', 'Ilham', 'Prasetya ', 'Bekasi', '081221395328', 'ilham@gmail.com', '2021-04-02', 'L'),
('190105', 'Daniel', 'Tambun', 'Bekasi', '081221395328', 'daniel@gmail.com', '2021-04-18', 'L'),
('190106', 'Halim', 'Adian', 'Bekasi', '081221395328', 'halim@gmail.com', '2021-04-18', 'L'),
('190107', 'Dewan', 'Batara', 'Bekasi', '081221395328', 'dewan@gmail.com', '2021-04-01', 'L'),
('190108', 'Lucky', 'Dwi', 'Bekasi', '081221395328', 'lucky@gmail.com', '2021-03-09', 'L'),
('190109', 'Holwati', 'Putri', 'Bekasi', '081221395328', 'Holwati@gmail.com', '2021-03-10', 'P'),
('190110', 'Awal', 'Mukmin', 'Bekasi', '081221395328', 'awal@gmail.com', '2021-02-09', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `kode_tr` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `nip` varchar(6) NOT NULL,
  `total` float NOT NULL,
  `ppn` float NOT NULL,
  `diskon` float NOT NULL,
  `grandtotal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`kode_tr`, `tanggal`, `nip`, `total`, `ppn`, `diskon`, `grandtotal`) VALUES
('tr20210422.0616300430', '2021-04-22', '190102', 25000, 0, 0, 25000),
('tr20210422.0617010401', '2021-04-22', '190103', 85000, 0, 0, 85000),
('tr20210422.0617170417', '2021-04-22', '190107', 100000, 0, 0, 100000),
('tr20210422.0617550455', '2021-04-22', '190109', 100000, 0, 0, 100000),
('tr20210422.0618110411', '2021-04-22', '190104', 220000, 0, 0, 220000),
('tr20210422.0618300430', '2021-04-22', '190105', 170000, 0, 0, 170000),
('tr20210422.0618580458', '2021-04-22', '190101', 50000, 0, 0, 50000),
('tr20210422.0619270427', '2021-04-22', '190102', 60000, 0, 0, 60000),
('tr20210422.0619440444', '2021-04-22', '190103', 85000, 0, 0, 85000),
('tr20210422.0620060406', '2021-04-22', '190110', 110000, 0, 0, 110000),
('tr20210422.0733430443', '2021-04-22', '190103', 85000, 0, 0, 85000);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kode_supplier` varchar(6) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `no_tlp` char(13) NOT NULL,
  `no_hp` char(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kode_supplier`, `nama_supplier`, `nama_perusahaan`, `alamat`, `kota`, `no_tlp`, `no_hp`, `email`, `keterangan`) VALUES
('SUP001', 'Indofood ', 'PT Indofood Sukses Makmur Tbk', 'Sudirman Plaza Indofood Tower Lt. 27', 'Jakarta', '081221395328', '081221395328', 'indofood@gmail.com', ''),
('SUP002', 'Simba Indosnack Makmur', 'PT Simba Indosnack Makmur', ' Jl. Pancasila No. 4, Gunung Putri', 'Bogor', '0218674818', '0218674818', 'info@simbaindosnack.co.id', ''),
('SUP003', 'Sky Food Industry', 'PT Sky Food Industry', 'Jl. Raya Narogong Pangkalan I-A, Bantar Gebang', 'Bekasi', '0218250311', '0218250311', 'info@skyfoodindustry.co.id', ''),
('SUP004', 'Prima Sinar Mulia', 'PT Prima Sinar Mulia', 'SM Building, 2nd Floor, Jl. Soekarno Hatta No. 362', 'Bandung', '0225231819', '0225231819', 'info@primasinarmulia.co.id', ''),
('SUP005', 'Liwayway', 'PT Liwayway', 'Jl. Jababeka XVII-B Block U No. 19 O-P-Q, Jababeka I – Cikarang', 'Bekasi', '02189840259', '02189840259', 'info@liwayway.co.id', ''),
('SUP006', 'Alison Agung', 'PT Alison Agung', 'Jl. Mangga Besar I No. 61-F', 'Jakarta Barat', '0216294630', '0216294630', 'infor@alisonagung.co.id', ''),
('SUP007', 'Pada Suka', 'PT Pada Suka', 'Jl. TSS Gg. Trikora I No. 62', 'Jakarta Barat', '02163861335', '02163861335', 'info@padasuka.co.id', ''),
('SUP008', 'Unita Branindo', 'PT Unita Branindo', 'Jl. Tomang Raya No. 21-23, Tomang', 'Jakarta Barat', '0215655301', '0215655301', 'info@unitabranindo.co.id', ''),
('SUP009', 'Modernfood Industri', 'PT Modernfood Industri', ' Jl. Letjen. S. Parman Kav. 37-B, Slipi', 'Jakarta Barat', '0215329253', '0215329253', 'info@modernfood.co.id', ''),
('SUP010', 'Ultra Prima Abadi', 'PT Ultra Prima Abadi', 'Jl. Lingkar Luar Barat Kav. 35-36, Rawa Buaya – Cengkareng', 'Jakarta Barat', '02158397888', '02158397888', 'info@ultraprimaabadi.co.id', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `kode_kategori` (`kode_kategori`,`kode_supplier`),
  ADD KEY `kode_supplier` (`kode_supplier`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`kode_tr`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`kode_tr`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode_supplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kode_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`kode_supplier`) REFERENCES `supplier` (`kode_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `pembeli` (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
