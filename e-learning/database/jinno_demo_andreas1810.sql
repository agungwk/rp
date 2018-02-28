-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2017 at 12:11 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jinno_demo_andreas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `crerated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `crerated_at`) VALUES
(1, 'Administrator', 'admin', '123', '2017-10-15 06:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `belajar`
--

CREATE TABLE `belajar` (
  `id` int(11) NOT NULL,
  `id_sertifikat` int(11) DEFAULT NULL,
  `id_murid` int(50) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_master_mata_pelajaran` int(11) NOT NULL,
  `nilai` varchar(3) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `belajar`
--

INSERT INTO `belajar` (`id`, `id_sertifikat`, `id_murid`, `id_guru`, `id_master_mata_pelajaran`, `nilai`, `status`, `created_at`) VALUES
(1, NULL, 1, 3, 14, '100', 0, '2017-10-17 17:03:39'),
(2, NULL, 2, 3, 18, '0', 0, '2017-10-17 17:03:39'),
(3, NULL, 1, 3, 15, '90', 0, '2017-10-18 06:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `tgl_upload` date NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_size` int(20) NOT NULL,
  `file_type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `tgl_upload`, `file_name`, `file_size`, `file_type`) VALUES
(30, '2017-10-13', 'SERTIFIKAT_18K_EP_ENERGI-1.pdf', 664909, 'pdf'),
(31, '2017-10-13', 'SERTIFIKAT_9k_SURYA-rev.pdf', 665216, 'pdf'),
(32, '2017-10-13', 'SERTIFIKAT_18k_VALARBI-1.pdf', 664150, 'pdf'),
(33, '2017-10-13', 'SERTIFIKAT_14k_VALARBI-1.pdf', 664200, 'pdf'),
(34, '2017-10-13', 'SERTIFIKAT_9k_NAZA.pdf', 665522, 'pdf'),
(35, '2017-10-13', 'PT_Cargo_Safe_Indonesia-1.pdf', 662909, 'pdf'),
(36, '2017-10-13', 'PT_Cargo_Safe_Indonesia-2.pdf', 662909, 'pdf'),
(37, '2017-10-13', 'PT_Cargo_Safe_Indonesia-3.pdf', 662909, 'pdf'),
(38, '2017-10-13', 'PT_Cargo_Safe_Indonesia-4.pdf', 662909, 'pdf'),
(39, '2017-10-13', 'PT_Cargo_Safe_Indonesia-5.pdf', 662909, 'pdf'),
(40, '2017-10-13', 'PT_Cargo_Safe_Indonesia-6.pdf', 662909, 'pdf');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `pengalaman` text,
  `deskripsi` text,
  `foto` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:belum,1:sudah',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `email`, `telp`, `password`, `tgl_lahir`, `pengalaman`, `deskripsi`, `foto`, `status`, `created_at`) VALUES
(1, 'tes', 'a@b', '32423', '123', '0000-00-00', '', '', '', 1, '2017-10-14 22:28:00'),
(2, 'cucudukunxx', 'cucudukun@c', '123456789', 'cucudukun@c', NULL, NULL, NULL, '', 1, '2017-10-15 06:53:59'),
(3, 'acil', 'acil@gmail.com', '123123123', 'acil@gmail.com', '1314-04-03', 'sf', 'dasf', 'male.png', 1, '2017-10-15 15:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `master_mata_pelajaran`
--

CREATE TABLE `master_mata_pelajaran` (
  `id` int(11) NOT NULL,
  `mata_pelajaran` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_mata_pelajaran`
--

INSERT INTO `master_mata_pelajaran` (`id`, `mata_pelajaran`, `created_at`) VALUES
(12, 'IPS', '2017-10-15 10:41:07'),
(13, 'IPA', '2017-10-15 10:49:15'),
(14, 'MTK', '2017-10-15 10:49:20'),
(15, 'Produktif', '2017-10-15 10:49:28'),
(16, 'Sunda', '2017-10-15 10:49:37'),
(17, 'Kimia', '2017-10-15 10:49:44'),
(18, 'Fisika', '2017-10-15 10:49:50'),
(19, 'fsd', '2017-10-15 15:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_master_mata_pelajaran` int(11) NOT NULL,
  `harga` decimal(50,0) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id`, `id_guru`, `id_master_mata_pelajaran`, `harga`, `created_at`) VALUES
(1, 2, 13, '44', '2017-10-15 11:52:51'),
(3, 2, 12, '123', '2017-10-15 12:17:21'),
(6, 2, 14, '90', '2017-10-15 13:50:44'),
(8, 2, 15, '67', '2017-10-15 16:54:56'),
(9, 3, 18, '89', '2017-10-15 18:24:05'),
(10, 3, 17, '79', '2017-10-15 18:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `password` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`id`, `nama`, `email`, `telp`, `password`, `created_at`) VALUES
(1, 'Fikrie', 'Fikri@f', '1234567890', '12345', '2017-10-14 22:24:06'),
(2, 'cucudukundd', 'cucudukun@c', '123456789', 'cucudukun@c', '2017-10-15 06:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id` int(11) NOT NULL,
  `id_mata_pelajaran` int(11) NOT NULL,
  `file` varchar(50) NOT NULL,
  `crerated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`id`, `id_mata_pelajaran`, `file`, `crerated_at`) VALUES
(1, 9, 'org.png', '2017-10-15 21:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `crerated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sertifikat`
--

CREATE TABLE `sertifikat` (
  `id` int(11) NOT NULL,
  `file` varchar(50) NOT NULL,
  `crerated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id_mapel` int(15) NOT NULL,
  `id_parent` int(15) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL,
  `harga_mapel` varchar(50) NOT NULL,
  `nama_teacher` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`id_mapel`, `id_parent`, `nama_mapel`, `harga_mapel`, `nama_teacher`) VALUES
(1, 1, 'nama', 'harga', ''),
(2, 0, 'Web Master', '0', ''),
(57, 55, 'ipv4 dan ipv6', '250000', ''),
(25, 23, 'QMS_mapel', '750000', ''),
(5, 0, 'Accounting', '650000', ''),
(6, 5, 'Matematika', '250000', ''),
(33, 0, 'Web Design', '', ''),
(43, 2, 'HTML 5', '650000', ''),
(26, 23, 'QMS_mapel_N', '550000', ''),
(23, 0, 'Quality Mangement', '', ''),
(30, 0, 'HSE', '', ''),
(31, 30, 'K3_U', '2500000', ''),
(32, 30, 'K3_KP', '1650000', ''),
(34, 33, 'Adobe Photoshop Cs5', '8750000', ''),
(35, 0, 'Project Management', '', ''),
(36, 35, 'PMBOOK_01', '1250000', ''),
(37, 33, 'Adobe Premiere', '1350000', ''),
(54, 33, 'Corel Draw', '275000', ''),
(39, 35, 'PMBOOK_02', '1500000', ''),
(41, 2, 'CSS 3', '450000', ''),
(45, 2, 'PHP', '350000', ''),
(46, 0, 'Bahasa', '', ''),
(47, 46, 'English', '125000', ''),
(48, 46, 'Jepang', '250000', ''),
(55, 0, 'Tehnik Jaringan Komputer', '0', ''),
(58, 2, 'php 5', '850000', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `jenis_user` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `email`, `nama_lengkap`, `telephone`, `password`, `jenis_user`) VALUES
(6, 'aditya@gmail.com', 'aditya', '081346794613', '1', 'Student'),
(3, 'andre@gmail.com', 'Andre', '0813131313', '1', 'Teacher'),
(4, 'dimitry.adam@gmail.com', 'Dmitry', '89694316006', 'admin', 'Teacher'),
(7, 'susmoyo@gmail.com', 'susmoyo', '081245675468', '1', 'Student'),
(9, 'desy@gmail.com', 'Desy', '085765424592', '1', 'Student'),
(10, 'ananda@gmail.com', 'ananda', '085245618975', '1', 'Teacher'),
(15, 'ade@gmail.com', 'ade', '0217845545', '1', 'Student'),
(16, 'kokok@email.com', 'kokok', '0819283764564', '12345678', 'Student'),
(17, 'kok@gmail.com', 'kokok', '0182393474987', '12345678', 'Teacher'),
(18, 'febri@gmail.com', 'febri', '084545465464', '1', 'Student'),
(19, 'effrin@gmail.com', 'effrin', '081245675468', '1', 'Student'),
(20, 'ajie@gmail.com', 'ajie', '085245618975', '1', 'Teacher'),
(21, 'Bubu@mail.net', 'Bubu', '123456789', '123', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `total_harga` decimal(50,0) NOT NULL,
  `file` varchar(30) DEFAULT NULL,
  `status_verf` tinyint(1) NOT NULL,
  `status_clear` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_verified` datetime DEFAULT NULL,
  `tgl_clear` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_murid`, `id_guru`, `total_harga`, `file`, `status_verf`, `status_clear`, `created_at`, `updated_at`, `tgl_verified`, `tgl_clear`) VALUES
(1, 1, 3, '200', '2.gif', 1, 0, '2017-10-15 15:25:02', '2017-10-15 15:25:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `status`) VALUES
(1, 'as', 'sad', 'hanavilzen2016@gmail.com', '36f17c3939ac3e7b2fc9396fa8e953ea', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `belajar`
--
ALTER TABLE `belajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sertifikat` (`id_sertifikat`),
  ADD KEY `FK_murid` (`id_murid`),
  ADD KEY `FK_belajar_guru` (`id_guru`),
  ADD KEY `FK_master_mata_pelajaran` (`id_master_mata_pelajaran`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_mata_pelajaran`
--
ALTER TABLE `master_mata_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_guru` (`id_guru`),
  ADD KEY `FK_mata_palajaran` (`id_master_mata_pelajaran`);

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_palajaran` (`id_mata_pelajaran`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_rating_guru` (`id_guru`),
  ADD KEY `FK_rating_murid` (`id_murid`);

--
-- Indexes for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD KEY `FK_murid_tx` (`id_murid`),
  ADD KEY `guru_tx` (`id_guru`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `belajar`
--
ALTER TABLE `belajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `master_mata_pelajaran`
--
ALTER TABLE `master_mata_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `murid`
--
ALTER TABLE `murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sertifikat`
--
ALTER TABLE `sertifikat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id_mapel` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `belajar`
--
ALTER TABLE `belajar`
  ADD CONSTRAINT `FK_belajar_guru` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `FK_master_mata_pelajaran` FOREIGN KEY (`id_master_mata_pelajaran`) REFERENCES `master_mata_pelajaran` (`id`),
  ADD CONSTRAINT `FK_murid` FOREIGN KEY (`id_murid`) REFERENCES `murid` (`id`),
  ADD CONSTRAINT `FK_sertifikat` FOREIGN KEY (`id_sertifikat`) REFERENCES `sertifikat` (`id`);

--
-- Constraints for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD CONSTRAINT `FK_guru` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `FK_mata_palajaran` FOREIGN KEY (`id_master_mata_pelajaran`) REFERENCES `master_mata_pelajaran` (`id`);

--
-- Constraints for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD CONSTRAINT `FK_palajaran` FOREIGN KEY (`id_mata_pelajaran`) REFERENCES `mata_pelajaran` (`id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_rating_guru` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `FK_rating_murid` FOREIGN KEY (`id_murid`) REFERENCES `murid` (`id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `FK_murid_tx` FOREIGN KEY (`id_murid`) REFERENCES `murid` (`id`),
  ADD CONSTRAINT `guru_tx` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
