-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2018 at 06:52 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_rp_01`
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
(1, 'Administrator', 'admin', '282930', '2017-10-21 19:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `belajar`
--

CREATE TABLE `belajar` (
  `id` int(11) NOT NULL,
  `id_murid` int(50) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `harga` decimal(25,0) NOT NULL,
  `nilai` varchar(3) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `belajar`
--

INSERT INTO `belajar` (`id`, `id_murid`, `id_guru`, `id_modul`, `harga`, `nilai`, `created_at`) VALUES
(1, 4, 1, 1, '150000', '80', '2017-12-20 06:28:56'),
(2, 6, 1, 1, '150000', '100', '2017-12-20 08:42:49'),
(3, 6, 1, 2, '100000', '80', '2017-12-20 11:33:47'),
(4, 11, 2, 3, '1750000', NULL, '2017-12-20 14:00:00'),
(5, 4, 1, 1, '150000', NULL, '2017-12-20 20:27:26'),
(6, 6, 2, 3, '1750000', NULL, '2017-12-21 10:40:19'),
(7, 6, 1, 1, '150000', NULL, '2017-12-21 10:46:30'),
(8, 6, 2, 3, '1750000', NULL, '2017-12-21 15:53:15'),
(9, 6, 2, 3, '1750000', NULL, '2017-12-21 16:33:57'),
(10, 6, 2, 3, '1750000', NULL, '2017-12-21 16:37:52'),
(11, 6, 1, 2, '100000', NULL, '2017-12-21 16:50:11'),
(12, 6, 2, 4, '2350000', NULL, '2017-12-21 16:51:56'),
(13, 12, 2, 4, '2350000', NULL, '2017-12-21 16:52:20'),
(14, 6, 2, 4, '2350000', NULL, '2017-12-21 16:58:19'),
(15, 6, 1, 1, '150000', NULL, '2017-12-22 12:12:46'),
(16, 6, 1, 1, '150000', NULL, '2017-12-22 12:27:20'),
(17, 6, 1, 1, '150000', NULL, '2017-12-22 12:28:22'),
(18, 6, 1, 1, '150000', NULL, '2017-12-22 12:32:47'),
(19, 6, 1, 1, '150000', NULL, '2017-12-22 13:21:48'),
(20, 6, 1, 1, '150000', NULL, '2017-12-22 15:08:44'),
(21, 6, 1, 1, '150000', NULL, '2017-12-22 15:11:35'),
(22, 6, 1, 1, '150000', NULL, '2017-12-22 15:53:18'),
(23, 6, 2, 4, '2350000', NULL, '2017-12-22 15:58:14'),
(24, 6, 2, 3, '1750000', NULL, '2017-12-22 19:00:08'),
(25, 6, 2, 4, '2350000', NULL, '2017-12-22 19:02:47'),
(26, 6, 1, 1, '150000', NULL, '2017-12-22 19:03:43'),
(27, 6, 1, 2, '100000', NULL, '2017-12-22 19:16:13'),
(28, 6, 1, 1, '150000', NULL, '2017-12-22 19:43:26'),
(29, 6, 1, 1, '150000', NULL, '2017-12-22 19:45:54'),
(30, 6, 1, 1, '150000', NULL, '2017-12-22 19:48:15'),
(31, 6, 1, 1, '150000', NULL, '2017-12-23 04:57:11'),
(32, 6, 1, 1, '150000', NULL, '2017-12-23 04:58:46'),
(33, 6, 1, 1, '150000', NULL, '2017-12-23 05:10:15'),
(34, 6, 1, 1, '150000', NULL, '2017-12-23 12:27:24'),
(35, 6, 1, 1, '150000', NULL, '2017-12-24 16:03:06'),
(36, 6, 1, 1, '150000', NULL, '2017-12-24 16:06:08'),
(37, 12, 1, 1, '150000', '86.', '2017-12-24 23:09:00'),
(38, 6, 1, 1, '150000', '93.', '2017-12-24 23:25:09'),
(39, 6, 1, 1, '150000', NULL, '2017-12-25 21:31:45'),
(40, 6, 1, 1, '150000', '86.', '2017-12-25 21:32:52'),
(41, 6, 2, 3, '1750000', NULL, '2017-12-26 20:12:54'),
(42, 6, 1, 2, '100000', NULL, '2017-12-27 06:06:02'),
(43, 6, 1, 1, '150000', NULL, '2017-12-27 06:06:52'),
(44, 6, 2, 4, '2350000', NULL, '2017-12-27 08:28:06'),
(45, 6, 2, 3, '1750000', NULL, '2017-12-27 08:29:27'),
(46, 6, 1, 2, '100000', NULL, '2017-12-27 08:30:26'),
(47, 6, 2, 3, '1750000', NULL, '2017-12-27 08:38:30'),
(48, 6, 1, 2, '100000', NULL, '2017-12-27 08:40:54'),
(49, 6, 1, 1, '150000', NULL, '2017-12-27 08:46:00'),
(50, 6, 1, 1, '150000', NULL, '2017-12-27 08:49:51'),
(51, 6, 1, 1, '150000', NULL, '2017-12-27 08:53:28'),
(52, 6, 2, 4, '2350000', NULL, '2017-12-27 08:59:30'),
(53, 6, 1, 1, '150000', NULL, '2017-12-27 09:22:24'),
(54, 6, 2, 4, '2350000', NULL, '2017-12-27 09:35:14'),
(55, 6, 1, 1, '150000', NULL, '2017-12-27 09:39:04'),
(56, 4, 3, 5, '225000', '80', '2017-12-27 04:37:51'),
(57, 4, 1, 1, '150000', NULL, '2018-01-09 02:27:20'),
(58, 4, 1, 2, '100000', '80', '2018-01-09 09:07:56'),
(59, 6, 2, 3, '1750000', '100', '2018-01-09 13:45:27'),
(60, 4, 1, 2, '100000', NULL, '2018-01-15 01:51:52'),
(61, 4, 3, 5, '225000', NULL, '2018-01-15 02:42:06'),
(62, 4, 1, 1, '150000', NULL, '2018-01-15 02:57:28'),
(63, 4, 1, 1, '150000', NULL, '2018-01-15 04:47:50'),
(64, 4, 3, 7, '350000', NULL, '2018-01-15 04:58:01'),
(65, 4, 3, 7, '350000', NULL, '2018-01-15 04:58:08'),
(66, 4, 3, 5, '225000', NULL, '2018-01-15 05:01:47'),
(67, 4, 3, 5, '225000', NULL, '2018-01-15 05:01:54'),
(68, 4, 3, 5, '225000', NULL, '2018-01-15 05:02:02'),
(69, 4, 3, 5, '225000', NULL, '2018-01-15 05:02:09'),
(70, 4, 3, 5, '225000', NULL, '2018-01-15 05:02:17'),
(71, 4, 3, 5, '225000', NULL, '2018-01-15 05:02:24'),
(72, 4, 3, 5, '225000', NULL, '2018-01-15 05:02:32'),
(73, 4, 1, 2, '100000', NULL, '2018-01-15 05:09:20'),
(74, 4, 1, 2, '100000', NULL, '2018-01-15 05:09:28'),
(75, 4, 1, 2, '100000', NULL, '2018-01-15 05:09:35'),
(76, 4, 1, 2, '100000', NULL, '2018-01-15 05:09:42'),
(77, 4, 1, 2, '100000', NULL, '2018-01-15 09:10:13'),
(78, 4, 1, 1, '150000', NULL, '2018-01-15 10:26:20'),
(79, 4, 4, 9, '250000', NULL, '2018-01-16 02:12:25'),
(80, 4, 3, 5, '225000', NULL, '2018-01-16 02:20:15'),
(81, 4, 1, 1, '150000', NULL, '2018-01-16 02:21:10'),
(82, 4, 3, 5, '225000', NULL, '2018-01-16 02:22:25'),
(83, 4, 1, 1, '150000', NULL, '2018-01-16 04:44:48'),
(84, 4, 1, 1, '150000', NULL, '2018-01-16 05:22:12'),
(85, 4, 3, 5, '225000', NULL, '2018-01-16 06:59:23'),
(86, 4, 3, 6, '275000', NULL, '2018-01-16 08:47:26'),
(87, 4, 4, 8, '150000', NULL, '2018-01-16 08:56:33'),
(88, 4, 1, 1, '150000', NULL, '2018-01-17 02:29:05'),
(89, 4, 4, 9, '250000', '80', '2018-01-17 04:53:17'),
(90, 14, 1, 2, '100000', '90', '2018-01-19 05:22:10'),
(91, 15, 2, 3, '1750000', '80', '2018-01-19 07:03:46'),
(92, 13, 8, 12, '1000000', '80', '2018-01-22 06:44:52'),
(93, 13, 1, 1, '150000', '86.', '2018-01-22 09:23:08'),
(94, 13, 1, 2, '100000', NULL, '2018-01-22 09:29:40'),
(95, 13, 4, 10, '300000', '80', '2018-01-22 09:30:11'),
(96, 16, 1, 2, '100000', NULL, '2018-01-23 01:29:27'),
(97, 6, 9, 15, '125000', '80', '2018-01-23 08:11:59'),
(98, 12, 3, 5, '225000', NULL, '2018-01-25 01:28:08'),
(99, 12, 7, 11, '1500000', '40', '2018-01-25 01:34:35'),
(100, 4, 1, 1, '150000', NULL, '2018-01-25 04:43:04'),
(101, 4, 1, 1, '150000', NULL, '2018-01-25 04:44:45'),
(102, 2, 1, 1, '150000', NULL, '2018-01-25 08:48:44'),
(103, 2, 1, 1, '150000', '86.', '2018-01-25 09:04:42'),
(104, 12, 1, 1, '150000', '80', '2018-01-25 23:49:56'),
(105, 6, 9, 15, '125000', NULL, '2018-01-26 04:36:51'),
(106, 6, 9, 16, '100000', NULL, '2018-01-26 10:10:01'),
(107, 6, 9, 16, '100000', NULL, '2018-01-26 12:02:47'),
(108, 6, 1, 1, '150000', NULL, '2018-01-26 12:04:59'),
(109, 6, 1, 2, '100000', NULL, '2018-01-26 12:08:47'),
(110, 6, 3, 6, '275000', NULL, '2018-01-29 07:48:04'),
(111, 6, 1, 1, '150000', NULL, '2018-01-29 07:51:23'),
(112, 6, 3, 5, '225000', NULL, '2018-01-29 12:48:37'),
(113, 6, 8, 12, '1000000', NULL, '2018-01-31 06:09:42'),
(114, 6, 9, 16, '100000', NULL, '2018-01-31 09:54:45'),
(115, 6, 9, 15, '125000', NULL, '2018-01-31 09:57:25'),
(116, 6, 1, 1, '150000', NULL, '2018-01-31 09:58:27'),
(117, 6, 4, 8, '150000', NULL, '2018-02-03 02:16:07'),
(118, 6, 8, 12, '1000000', '20', '2018-02-05 05:14:19'),
(119, 6, 9, 15, '125000', '0', '2018-02-15 07:28:22'),
(120, 18, 1, 2, '100000', '100', '2018-02-15 10:14:32'),
(121, 6, 5, 14, '125000', NULL, '2018-02-22 10:09:22'),
(122, 6, 1, 1, '150000', NULL, '2018-02-27 05:49:32'),
(123, 6, 1, 1, '150000', '80', '2018-02-27 07:56:07'),
(124, 6, 3, 7, '350000', NULL, '2018-02-27 08:38:52'),
(125, 1, 1, 2, '100000', '100', '2018-03-22 22:57:55'),
(126, 1, 1, 1, '150000', '60', '2018-03-23 00:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `file_modul`
--

CREATE TABLE `file_modul` (
  `id` int(11) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_modul`
--

INSERT INTO `file_modul` (`id`, `id_modul`, `file`) VALUES
(1, 1, 'past.pdf'),
(2, 1, 'javascript.png'),
(3, 2, 'Trigonometry.pdf'),
(4, 1, 'Film_katun_lucu_kegagalan_malaikat_pencabut_nyawa___part_02.mp4'),
(5, 3, 'Analisa_Menggunakan_Candle_Stick.pdf'),
(6, 3, 'Analisa_Menggunakan_Indikator_ADX_dan_Moving_Average.pdf'),
(7, 3, 'Materi_Edukasi_GKInvest_Analisa_Teknikal__Dasar.pdf'),
(8, 4, 'Panduan_Instalasi_MT4.pdf'),
(9, 4, 'Panduan_penggunaan_MT4.pdf'),
(10, 4, 'Stochastic_Oscillators.pdf'),
(11, 4, 'Film_katun_lucu_kegagalan_malaikat_pencabut_nyawa___part_02.mp4'),
(12, 3, 'img_20171217_102629_-1194188724.jpg'),
(13, 5, 'DOKU-DOKUHostedAPI-DOC-v1-2.pdf'),
(14, 5, 'bocah.mp4'),
(15, 6, 'Belajar_CISCO_CCNA_Routing_and_Switching.pdf'),
(16, 7, 'Film_katun_lucu_kegagalan_malaikat_pencabut_nyawa___part_02.mp4'),
(17, 8, '2017-12-22-transaction-detail_pdf.pdf'),
(18, 8, 'bocah.mp4'),
(19, 9, 'Film_katun_lucu_kegagalan_malaikat_pencabut_nyawa___part_02.mp4'),
(20, 9, 'DOKU-DOKUHostedAPI-DOC-v1-2_(2).pdf'),
(21, 10, 'bocah.mp4'),
(22, 11, 'Belajar_CISCO_CCNA_Routing_and_Switching.pdf'),
(23, 11, 'Film_katun_lucu_kegagalan_malaikat_pencabut_nyawa___part_02.mp4'),
(24, 12, 'AWARENESS_ISO_9001_-_2015.pdf'),
(25, 14, 'Film_katun_lucu_kegagalan_malaikat_pencabut_nyawa___part_02.mp4'),
(26, 14, 'Belajar_CISCO_CCNA_Routing_and_Switching.pdf'),
(27, 15, 'Install_Server_W2K8.pdf'),
(28, 15, 'How_To_Install_and_completely_configure_Your_First_Domain_Controller.mp4'),
(29, 16, 'Membuat_Aplikasi_Android_Pertama_dengan_Android_Studio.mp4'),
(30, 17, '012bb1e6-e857-40b5-8d80-4895985e9a8f.pdf'),
(31, 17, 'Untitled.png'),
(32, 18, 'BNI-Carousel-Menu_Produk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pengalaman` text NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `ttd` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:belum,1:sudah',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `email`, `telp`, `password`, `tgl_lahir`, `pengalaman`, `deskripsi`, `foto`, `file`, `ttd`, `skype`, `status`, `created_at`) VALUES
(1, 'Ananda Dwi Rahma', 'nanda@gmail.com', '086573647583', '202cb962ac59075b964b07152d234b70', '2017-12-21', 'saya pernah ini', 'saya ini adalah', 'adr.jpg', 'php-7_1_8-nts-Win32-VC14-x64.zip', '5pilar.jpg', 'budi', 1, '2017-12-20 05:58:40'),
(2, 'Virza', 'andreas.donny29@gmail.com', '085656565656', '1', '2017-12-20', 'sangat banget', 'kurang lebih begitulah', 'Za.jpg', 'easid.zip', 'ijasah.jpg', 'donny andreas', 1, '2017-12-20 13:02:53'),
(3, 'febri', 'febri@tsicertification.co.id', '0875515132', '123', '1995-01-03', 'Saya pernah bekerja di Kementrian Hukum dan HAM Indonesia', 'Mandiri 128000121265 a/n Febriyanti Maulani', 'img_bg_11.jpg', 'Ijasah.zip', 'contoh-001.jpg', 'febri03', 1, '2017-12-27 04:08:31'),
(4, 'Jhony Andrean', 'andreasdonnyariyanto@gmail.com', '08545454556', '1', '1995-01-15', 'Bekerja sebagai trainer di semua pengurus', 'BCA 8800565122 a/n Jhony Andrean', 'img_bg_7.jpg', 'manage-user-bootstrap.zip', 'contoh-001.jpg', '', 1, '2018-01-15 07:24:59'),
(5, 'Ricat', 'ricat@gmail.com', '08765567775', '1', '1981-12-22', 'Saya pernah jadi asisten dosen', 'Humoris', 'images-p8.jpg', 'CV.zip', 'Lima_Pilar_Management_(2).png', '', 1, '2018-01-17 04:55:48'),
(6, 'Nungky awang chandra', 'nungkyac@yahoo.co.id', '081212355300', '99u300', '0000-00-00', '', '', NULL, NULL, NULL, NULL, 1, '2018-01-17 21:52:02'),
(7, 'Nurjanah Iskak', 'nurjanah@gmail.com', '08545689845', '1', '1993-01-03', 'Pernah mengajar sebagai assisten dosen Cisco', 'Sangat berpengalaman sekali', 'images-p1.jpg', 'CV.zip', 'Lima_Pilar_Management_(1).png', 'nurjanah iskak', 1, '2018-01-19 07:32:02'),
(8, 'kokok surya nusantara', 'kokok.nusantara@gmail.com', '081519246700', 'tafa1212', '1972-12-12', 'menjadi instruktur di  manufakturing dan dunia konstruksi', 'aku seorang yang baperan,kalau sudah baper tingkat dewa', 'IMG_3763.JPG', 'surat_keterangan_kerja.rar', 'KTP_kokok.jpg', '', 1, '2018-01-22 05:54:22'),
(9, 'Donny Andreas', 'andriefris@gmail.com', '08561210733', '2829', '1980-02-12', 'Mengajar di tempat kursus', 'BCA 8800908842 a/n Andreas Donny Ariyanto', 'WhatsApp_Image_2018-01-23_at_13_23_43.jpeg', 'CV.zip', 'Lima_Pilar_Management_(2).png', 'donny andreas', 1, '2018-01-23 04:00:46'),
(10, 'vaisal', 'vaisalreksi@gmail.com', '0868768687', '1', '2018-01-25', 'tes', 'tes', 'male-user-silhouette_318-35708.jpg', 'thor-ragnarok-thor-ragnark_indonesian-1657682.zip', NULL, NULL, 1, '2018-01-24 04:43:19'),
(11, 'Susmoyo Adim', 'susmoyoadim@gmail.com', '08456547875', '1', '1995-02-04', 'Sebagai Dosen Universitas Mercubuana', 'BCA 5154546545 a/n Susmoyo Adim', 'images-p3.jpg', 'CV.zip', 'Lima_Pilar_Management_(2).jpg', NULL, 1, '2018-01-24 06:35:15'),
(12, 'daniel alexander pangkey', 'pangkeyd@gmail.com', '081386293152', 'boteng123!#', '2018-02-15', 'yhhh', 'bni ghhg 676788767', 'Untitled.png', '012bb1e6-e857-40b5-8d80-4895985e9a8f.rar', '012bb1e6-e857-40b5-8d80-4895985e9a8f.pdf', NULL, 1, '2018-02-15 10:33:58'),
(13, 'Andi Ryan', 'andi@gmail.com', '123456', '202cb962ac59075b964b07152d234b70', '0000-00-00', '', '', NULL, NULL, NULL, NULL, 0, '2018-03-23 00:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `mata_pelajaran` varchar(50) NOT NULL,
  `modul` varchar(100) NOT NULL,
  `harga` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id`, `id_guru`, `mata_pelajaran`, `modul`, `harga`) VALUES
(1, 1, 'B. Inggris', 'Simple Past Tense', '150000.00'),
(2, 1, 'MATEMATIKA', 'Trigonometry', '100000.00'),
(3, 2, 'Forex', 'Forex ID Paket Pertama', '1750000.00'),
(4, 2, 'Forex', 'Forex ID Paket Kedua', '2350000.00'),
(5, 3, 'Hukum', 'Sejarah Hukum Part 1', '225000.00'),
(6, 3, 'Hukum', 'Sejarah Hukum Part 2', '275000.00'),
(7, 3, 'Hukum', 'Sejarah Hukum Part 3', '350000.00'),
(8, 4, 'Web Developer', 'HTML 5 Part 1', '150000.00'),
(9, 4, 'Web Developer', 'HTML 5 Part 2', '250000.00'),
(10, 4, 'Web Developer', 'HTML 5 Part 3', '300000.00'),
(11, 7, 'CISCO', 'Cisco Part 1', '1500000.00'),
(12, 8, 'ISO 9001:2015', 'Awareness ISO 9001:2015', '1000000.00'),
(14, 5, 'OHSAS', 'OHSAS 14000', '125000.00'),
(15, 9, 'Network Administrator', 'Install Windows Server 2008', '125000.00'),
(16, 9, 'Android', 'Aplikasi Pertama Android Studio', '100000.00'),
(17, 12, 'bahasa', 'bhs ind', '120000.00'),
(18, 11, 'bla', 'bla 2', '120000.00');

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`id`, `nama`, `email`, `telp`, `password`, `created_at`, `foto`) VALUES
(1, 'Firdha Imamah', 'fifi@gmail.com', '0878765654', '202cb962ac59075b964b07152d234b70', '2017-11-26 17:35:31', NULL),
(2, 'andre29', 'andreas.donny29@gmail.com', '08787878787', 'GXPsjpbH', '2017-11-27 10:46:41', 'images6.jpg'),
(3, 'donny29', 'andriefris@gmail.com', '08136666666', '1', '2017-11-27 13:23:38', NULL),
(4, 'Adit', 'andrienbata@gmail.com', '086766568', 'tpMJMvhB', '2017-11-27 21:25:01', 'IMG-20171201-WA0034.jpg'),
(5, 'hanavilzen', 'hanavilzen2016@gmail.com', '08462263747', 'jrGDrXAw', '2017-12-01 09:04:16', NULL),
(6, 'Donny29', 'aryo.mv@gmail.com', '087654667', '1', '2017-12-01 09:29:02', 'IMG-20171201-WA0029.jpg'),
(7, 'nanda tirong', 'ananda.pratiwi34@yahoo.com', '087676766767', 'YtgoNmfY', '2017-12-04 10:12:15', NULL),
(8, 'desi', 'desy@gmail.com', '081312345678', '1', '2017-12-08 08:52:14', NULL),
(9, 'deni aryanto', 'denibrekele@gmail.com', '087780362452', 'aUkQULd4', '2017-12-08 16:08:47', NULL),
(10, 'febri', 'febri@tsicertification.co.id', '081818181818', '1', '2017-12-19 13:53:52', NULL),
(11, 'Rina Gunawan', 'rina@gmail.com', '081818181818', '1', '2017-12-20 13:25:18', NULL),
(12, 'iqlima', 'iqlima@gmail.com', '085747364578', '123', '2017-12-21 16:51:55', NULL),
(13, 'Susmoyo Adi Murdono', 'susmoyoadim@gmail.com', '081310982019', 'perikanan2011', '2018-01-17 12:39:50', 'IMG_20180115_170201_865.jpg'),
(14, 'riko', 'riko@gmail.com', '08545245654', '1', '2018-01-19 05:20:47', NULL),
(15, 'Arie Hanggara', 'arie@gmail.com', '08564585465', '1', '2018-01-19 07:00:31', 'images-p2.jpg'),
(16, 'Bambang Wahyudi', 'bwahyudi@gmail.com', '085775952797', 'jembawan16', '2018-01-23 01:27:42', NULL),
(17, 'vaisal', 'vaisalreksi@gmail.com', '07823678', '1', '2018-01-24 06:19:40', 'avatar-2024924_960_720.png'),
(18, 'daniel alexander pangkey', 'pangkeyd@gmail.com', '081386293152', 'boteng123!#', '2018-02-14 10:14:40', NULL),
(19, 'Ade Eka', 'ade@gmail.com', '1234567', '202cb962ac59075b964b07152d234b70', '2018-03-23 00:30:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(100) NOT NULL,
  `b` varchar(100) NOT NULL,
  `c` varchar(100) NOT NULL,
  `d` varchar(100) NOT NULL,
  `e` varchar(100) NOT NULL,
  `benar` varchar(1) NOT NULL,
  `tipe_soal` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `id_modul`, `soal`, `a`, `b`, `c`, `d`, `e`, `benar`, `tipe_soal`) VALUES
(26, 3, '1', '1', '2', '3', '4', '5', 'A', ''),
(27, 3, '2', '1', '2', '3', '4', '5', 'B', ''),
(28, 3, '3', '1', '2', '3', '4', '5', 'C', ''),
(29, 3, '4', '1', '2', '3', '4', '5', 'D', ''),
(30, 3, '5', '1', '2', '3', '4', '5', 'E', ''),
(31, 4, '1', '1\r\n', '2', '3', '4', '5', 'A', ''),
(32, 4, '2', '1', '2', '3', '4', '5', 'B', ''),
(33, 4, '3', '1', '2', '3', '4', '5', 'C', ''),
(34, 4, '4', '1', '2', '3', '4', '5', 'D', ''),
(35, 4, '5', '1', '2', '3', '4', '5', 'E', ''),
(36, 5, '1', '1', '2', '3', '4', '5', 'A', ''),
(37, 5, '2', '1', '2', '3', '4', '5', 'B', ''),
(38, 5, '3', '1', '2', '3', '4', '5', 'C', ''),
(39, 5, '4', '1', '2', '3', '4', '5', 'D', ''),
(40, 5, '5', '1', '2', '3', '4', '5', 'E', ''),
(41, 6, '1', '1', '2', '3', '4', '5', 'A', ''),
(42, 6, '2', '1', '2', '3', '4', '5', 'B', ''),
(43, 6, '3', '1', '2', '3', '4', '5', 'C', ''),
(44, 6, '4', '1', '2', '3', '4', '5', 'D', ''),
(45, 6, '5', '1', '2', '3', '4', '5', 'E', ''),
(46, 7, '1', '1', '2', '3', '4', '5', 'A', ''),
(47, 7, '2', '1', '2', '3', '4', '5', 'B', ''),
(48, 7, '3', '1', '2', '3', '4', '5', 'C', ''),
(49, 7, '4', '1', '2', '3', '4', '5', 'D', ''),
(50, 7, '5', '1', '2', '3', '4', '5', 'E', ''),
(51, 8, '1', '1', '2', '3', '4', '5', 'A', ''),
(52, 8, '2', '1', '2', '3', '4', '5', 'B', ''),
(53, 8, '3', '1', '2', '3', '4', '5', 'C', ''),
(54, 8, '4', '1', '2', '3', '4', '5', 'D', ''),
(55, 8, '5', '1', '2', '3', '4', '5', 'E', ''),
(56, 9, '1', '1', '2', '3', '4', '5', 'A', ''),
(57, 9, '2', '1', '2', '3', '4', '5', 'B', ''),
(58, 9, '3', '1', '2', '3', '4', '5', 'C', ''),
(59, 9, '4', '1', '2', '3', '4', '5', 'D', ''),
(60, 9, '5', '1', '2', '3', '4', '5', 'E', ''),
(61, 10, '1', '1', '2', '3', '4', '5', 'A', ''),
(62, 10, '2', '1', '2', '3', '4', '5', 'B', ''),
(63, 10, '3', '1', '2', '3', '4', '5', 'C', ''),
(64, 10, '4', '1', '2', '3', '4', '5', 'D', ''),
(65, 10, '5', '1', '2', '3', '4', '5', 'E', ''),
(66, 11, '1', '1', '2', '3', '4', '5', 'A', ''),
(67, 11, '2', '1', '2', '3', '4', '5', 'B', ''),
(68, 11, '3', '1', '2', '3', '4', '5', 'C', ''),
(69, 11, '4', '1', '2', '3', '4', '5', 'D', ''),
(70, 11, '6', '1', '2', '3', '4', '5', 'E', ''),
(71, 12, 'Pernyataan :  Kata “ analisa “ dan “evaluasi” adalah sama', 'Benar', 'Salah', 'Tidak relevan', 'Tidak relevan', 'Tidak relevan', 'B', ''),
(72, 12, 'Pernyataan :  Top Managemen harus memastikan keefektifan system manajemen mutu', 'Benar', 'Salah', 'Tidak relevan', 'Tidak relevan', 'Tidak relevan', 'B', ''),
(73, 12, 'Pernyataan :  Ketika menentukan lingkup,   salah satunya organisasi harus mempertimbangkan produk dan jasa  ', 'Benar', 'Salah', 'Tidak relevan', 'Tidak relevan', 'Tidak relevan', 'A', ''),
(74, 12, 'Pernyataan : Sistem manajemen mutu organisasi harus mencakup salah satunya  informasi terdokumentasi  yang diperlukan oleh persyaratan  ISO 9001:2015', 'Benar', 'Salah', 'Tidak relevan', 'Tidak relevan', 'Tidak relevan', 'A', ''),
(75, 12, 'Pernyataan :  Audit internal dilakukan secara rutin setiap 6 bulan', 'Benar', 'Salah', 'Tidak relevan', 'Tidak relevan', 'Tidak relevan', 'A', ''),
(76, 14, 'bener', 'Bener', 'salah', 't', 't', 't', 'A', ''),
(77, 14, 'salah', 'bener', 'salah', 't', 't', 't', 'B', ''),
(78, 14, 'salah', 'bener', 'salah', 't', 't', 't', 'B', ''),
(79, 14, 'bener', 'bener', 'salah', 't', 't', 't', 'A', ''),
(80, 14, 'salah', 'bener', 'salah', 't', 't', 't', 'B', ''),
(81, 15, 'Pertama Install apa yg harus di perhatikan', 'CD Rom', 'USB', 'Operating System W2k8', 'Operating W2k', 'Jaringan Internet', 'C', ''),
(82, 15, 'Minimal RAM dari PC yang sesuai dengan W2k8', '512MB', '256MB', '128MB', '1GB', '2GB', 'D', ''),
(83, 15, 'Sebelum hadir W2k8 adalah Operating System', 'W2k12', 'W2k8', 'W2k', 'W2k9', 'W2k, W2k3 dan W2k8', 'E', ''),
(84, 15, 'Tampilan W2k8 hampir seperti', 'Win 2k', 'Win XP', 'Win XP Pro', 'Win Vista', 'Win 8', 'E', ''),
(85, 15, 'Setelah install W2k8 apa yang harus dilakukan', 'Seting DHCP', 'Seting DNS', 'Seting IP', 'Active Drirectories', 'DCPROMO', 'E', ''),
(86, 16, 'Angka 1', '1', '2', '3', '4', '5', 'A', ''),
(87, 16, 'Angka 2', '1', '2', '3', '4', '5', 'B', ''),
(88, 16, 'Angka 3', '1', '2', '3', '4', '5', 'C', ''),
(89, 16, 'Angka 4', '1', '2', '3', '4', '5', 'D', ''),
(90, 16, 'Angka 5', '1', '2', '3', '4', '5', 'E', ''),
(91, 17, '1', '1', '2', '3', '4', '5', 'A', ''),
(92, 17, '2', '1', '2', '3', '4', '5', 'B', ''),
(93, 17, '3', '1', '2', '3', '4', '5', 'C', ''),
(94, 17, '4', '1', '2', '3', '4', '5', 'D', ''),
(95, 17, '5', '1', '2', '3', '4', '5', 'E', ''),
(96, 18, '1', '1', '1', '1', '1', '1', 'A', ''),
(97, 18, '1', '1', '1', '1', '1', '1', 'A', ''),
(98, 18, '1', '1', '1', '1', '1', '1', 'A', ''),
(99, 18, '1', '1', '1', '1', '1', '1', 'A', ''),
(100, 18, '1', '1', '1', '1', '1', '1', 'A', ''),
(136, 2, 'T51', 'A1', 'B1', 'C1', 'D1', 'E1', 'D', 'pilihan_ganda'),
(137, 2, 'T52', '', '', '', '', '', 'T', 'true_false'),
(138, 2, 'T53', '', '', '', '', '', 'F', 'true_false'),
(139, 2, 'T54', '', '', '', '', '', 'T', 'true_false'),
(140, 2, 'T55', '', '', '', '', '', 'F', 'true_false'),
(141, 1, 'Past Tense 1', 'A1', 'B1', 'C1', 'D1', 'E1', 'A', 'pilihan_ganda'),
(142, 1, 'Past Tense 2', '', '', '', '', '', 'T', 'true_false'),
(143, 1, 'Past Tense 3', 'A3', 'B3', 'C3', 'D3', 'E3', 'E', 'pilihan_ganda'),
(144, 1, 'Past Tense 4', '', '', '', '', '', 'F', 'true_false'),
(145, 1, 'Past Tense 5', '', '', '', '', '', 'T', 'true_false');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `crerated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `id_guru`, `id_murid`, `rating`, `deskripsi`, `crerated_at`) VALUES
(1, 1, 4, 4, 'thank mr :)', '2017-12-20 06:32:48'),
(2, 1, 6, 5, 'thank you', '2017-12-20 09:04:24'),
(3, 1, 6, 5, 'thank you', '2017-12-20 09:04:24'),
(4, 1, 6, 5, 'mantap, thanks', '2017-12-20 13:01:17'),
(5, 1, 12, 4, 'thank mr budi :)', '2017-12-24 23:15:39'),
(6, 1, 6, 5, 'Mantap, lulus juga akhirnya', '2017-12-25 21:41:16'),
(7, 1, 6, 5, 'mantap', '2017-12-27 10:00:23'),
(8, 1, 6, 5, 'mantap', '2017-12-27 10:00:29'),
(9, 3, 4, 5, 'nilai aku bagus sekali....', '2017-12-27 04:41:25'),
(10, 1, 4, 4, 'Good materi dan soal', '2018-01-16 05:58:10'),
(11, 4, 4, 4, 'Nilai aku 80 jadi bs lulus dan dpt sertifikat', '2018-01-18 15:23:11'),
(12, 1, 14, 4, 'Nilai aku 90, jadi aku bisa dapat sertifikat dari ', '2018-01-19 05:27:05'),
(13, 2, 15, 5, 'Nilai aku 80, jadi aku bisa dapat Sertifikat', '2018-01-19 07:09:57'),
(14, 8, 13, 5, 'hore nilai saya 80', '2018-01-22 06:53:20'),
(15, 9, 6, 5, 'Aku lulus sebagai Network Administrator dengan nil', '2018-01-23 08:20:22'),
(16, 2, 6, 5, 'Nilai yang sangat WAOW sekali', '2018-01-23 08:26:33'),
(17, 1, 13, 2, 'Aku lulus dengan nilai bagus. makasih pelatihannya', '2018-01-25 08:43:22'),
(18, 4, 13, 2, 'Pelatihannya bagus sekali dan sangat bermanfaat. makasih pak...', '2018-01-25 08:46:47'),
(19, 1, 2, 2, 'Materinya berbobot sekali, saya akan terus selalu mengembangkan diri lagi', '2018-01-25 09:21:05'),
(20, 1, 12, 4, 'sip, makasih ya mr', '2018-01-26 00:36:02'),
(21, 1, 18, 4, 'bljhijbiyg iugyig', '2018-02-15 10:29:29'),
(22, 1, 6, 4, 'Mantaf mas... Makasih materinya', '2018-02-27 08:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_belajar` int(11) NOT NULL,
  `no_invoice` varchar(50) DEFAULT NULL,
  `file` varchar(30) DEFAULT NULL,
  `status_verf` tinyint(1) NOT NULL COMMENT '0:belum verf, 1:sudah di verf oleh murid; 2 sudah di verf oleh admin',
  `status_clear` tinyint(1) NOT NULL COMMENT '0:belum, 1:sudah(murid), 2:sertifikat, 3:sudah di admin',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_verified` datetime DEFAULT NULL,
  `tgl_clear` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_belajar`, `no_invoice`, `file`, `status_verf`, `status_clear`, `created_at`, `updated_at`, `tgl_verified`, `tgl_clear`) VALUES
(1, 1, NULL, 'fahmy.png', 2, 3, '2017-12-20 06:28:57', '2017-12-20 06:33:38', '2017-12-20 06:29:12', '2017-12-19 23:32:28'),
(2, 2, NULL, 'bayar_hutang_moyo.jpg', 2, 3, '2017-12-20 08:42:49', '2017-12-20 14:58:47', '2017-12-20 08:43:04', '2017-12-20 02:04:01'),
(3, 3, NULL, 'Dimitri_Dp1.jpg', 2, 3, '2017-12-20 11:33:47', '2017-12-20 14:58:59', '2017-12-20 12:28:07', '2017-12-20 06:00:58'),
(4, 4, NULL, 'Uang_Jajan.jpg', 2, 0, '2017-12-20 14:00:00', '2017-12-20 14:58:36', '2017-12-20 14:07:58', NULL),
(5, 5, NULL, NULL, 0, 0, '2017-12-20 20:27:26', '2017-12-20 20:27:26', NULL, NULL),
(6, 6, NULL, NULL, 0, 0, '2017-12-21 10:40:19', '2017-12-21 10:40:19', NULL, NULL),
(7, 7, NULL, NULL, 0, 0, '2017-12-21 10:46:30', '2017-12-21 10:46:30', NULL, NULL),
(8, 8, NULL, NULL, 0, 0, '2017-12-21 15:53:15', '2017-12-21 15:53:15', NULL, NULL),
(9, 9, NULL, NULL, 0, 0, '2017-12-21 16:33:57', '2017-12-21 16:33:57', NULL, NULL),
(10, 10, NULL, NULL, 0, 0, '2017-12-21 16:37:52', '2017-12-21 16:37:52', NULL, NULL),
(11, 11, NULL, NULL, 0, 0, '2017-12-21 16:50:11', '2017-12-21 16:50:11', NULL, NULL),
(12, 12, NULL, NULL, 0, 0, '2017-12-21 16:51:56', '2017-12-21 16:51:56', NULL, NULL),
(13, 13, NULL, NULL, 0, 0, '2017-12-21 16:52:20', '2017-12-21 16:52:20', NULL, NULL),
(14, 14, NULL, NULL, 0, 0, '2017-12-21 16:58:20', '2017-12-21 16:58:20', NULL, NULL),
(15, 15, NULL, NULL, 0, 0, '2017-12-22 12:12:47', '2017-12-22 12:12:47', NULL, NULL),
(16, 16, NULL, NULL, 0, 0, '2017-12-22 12:27:20', '2017-12-22 12:27:20', NULL, NULL),
(17, 17, NULL, NULL, 0, 0, '2017-12-22 12:28:22', '2017-12-22 12:28:22', NULL, NULL),
(18, 18, NULL, NULL, 0, 0, '2017-12-22 12:32:47', '2017-12-22 12:32:47', NULL, NULL),
(19, 19, NULL, NULL, 0, 0, '2017-12-22 13:21:48', '2017-12-22 13:21:48', NULL, NULL),
(20, 20, NULL, NULL, 0, 0, '2017-12-22 15:08:44', '2017-12-22 15:08:44', NULL, NULL),
(21, 21, NULL, NULL, 0, 0, '2017-12-22 15:11:35', '2017-12-22 15:11:35', NULL, NULL),
(22, 22, NULL, NULL, 0, 0, '2017-12-22 15:53:18', '2017-12-22 15:53:18', NULL, NULL),
(23, 23, NULL, NULL, 0, 0, '2017-12-22 15:58:14', '2017-12-22 15:58:14', NULL, NULL),
(24, 24, NULL, NULL, 0, 0, '2017-12-22 19:00:08', '2017-12-22 19:00:08', NULL, NULL),
(25, 25, NULL, NULL, 0, 0, '2017-12-22 19:02:47', '2017-12-22 19:02:47', NULL, NULL),
(26, 26, NULL, NULL, 0, 0, '2017-12-22 19:03:43', '2017-12-22 19:03:43', NULL, NULL),
(27, 27, NULL, NULL, 0, 0, '2017-12-22 19:16:13', '2017-12-22 19:16:13', NULL, NULL),
(28, 28, NULL, NULL, 0, 0, '2017-12-22 19:43:26', '2017-12-22 19:43:26', NULL, NULL),
(29, 29, NULL, NULL, 0, 0, '2017-12-22 19:45:54', '2017-12-22 19:45:54', NULL, NULL),
(30, 30, NULL, NULL, 0, 0, '2017-12-22 19:48:15', '2017-12-22 19:48:15', NULL, NULL),
(31, 31, NULL, NULL, 0, 0, '2017-12-23 04:57:11', '2017-12-23 04:57:11', NULL, NULL),
(32, 32, NULL, NULL, 0, 0, '2017-12-23 04:58:46', '2017-12-23 04:58:46', NULL, NULL),
(33, 33, NULL, NULL, 0, 0, '2017-12-23 05:10:15', '2017-12-23 05:10:15', NULL, NULL),
(34, 34, NULL, NULL, 0, 0, '2017-12-23 12:27:24', '2017-12-23 12:27:24', NULL, NULL),
(35, 35, NULL, NULL, 0, 0, '2017-12-24 16:03:06', '2017-12-24 16:03:06', NULL, NULL),
(36, 36, NULL, NULL, 0, 0, '2017-12-24 16:06:08', '2017-12-24 16:06:08', NULL, NULL),
(37, 37, NULL, NULL, 2, 3, '2017-12-24 23:09:00', '2017-12-24 23:16:40', NULL, '2017-12-24 16:14:47'),
(38, 38, NULL, NULL, 2, 3, '2017-12-24 23:25:10', '2017-12-27 11:13:07', NULL, '2017-12-27 03:00:04'),
(39, 39, NULL, NULL, 2, 0, '2017-12-25 21:31:45', '2017-12-27 09:05:50', NULL, NULL),
(40, 40, NULL, NULL, 2, 3, '2017-12-25 21:32:52', '2017-12-25 21:46:51', NULL, '2017-12-25 14:40:53'),
(41, 41, NULL, NULL, 2, 0, '2017-12-26 20:12:54', '2017-12-27 09:06:04', NULL, NULL),
(42, 42, NULL, NULL, 2, 0, '2017-12-27 06:06:02', '2017-12-27 09:06:24', NULL, NULL),
(43, 43, NULL, NULL, 2, 0, '2017-12-27 06:06:53', '2017-12-27 09:06:41', NULL, NULL),
(44, 44, NULL, NULL, 2, 0, '2017-12-27 08:28:06', '2017-12-27 09:06:50', NULL, NULL),
(45, 45, NULL, NULL, 2, 0, '2017-12-27 08:29:27', '2017-12-27 09:07:01', NULL, NULL),
(46, 46, NULL, NULL, 2, 0, '2017-12-27 08:30:26', '2017-12-27 09:09:11', NULL, NULL),
(47, 47, NULL, NULL, 2, 0, '2017-12-27 08:38:30', '2017-12-27 09:09:22', NULL, NULL),
(48, 48, NULL, NULL, 2, 0, '2017-12-27 08:40:55', '2017-12-27 09:09:33', NULL, NULL),
(49, 49, NULL, NULL, 2, 0, '2017-12-27 08:46:00', '2017-12-27 09:09:44', NULL, NULL),
(50, 50, NULL, NULL, 2, 0, '2017-12-27 08:49:51', '2017-12-27 09:09:53', NULL, NULL),
(51, 51, NULL, NULL, 2, 0, '2017-12-27 08:53:28', '2017-12-27 09:10:04', NULL, NULL),
(52, 52, NULL, NULL, 2, 0, '2017-12-27 08:59:31', '2017-12-27 09:10:14', NULL, NULL),
(53, 53, NULL, NULL, 2, 0, '2017-12-27 09:22:25', '2017-12-27 11:12:33', NULL, NULL),
(54, 54, NULL, NULL, 2, 0, '2017-12-27 09:35:14', '2017-12-27 11:12:40', NULL, NULL),
(55, 55, NULL, NULL, 2, 0, '2017-12-27 09:39:04', '2017-12-27 11:12:48', NULL, NULL),
(56, 56, NULL, NULL, 2, 3, '2017-12-27 04:37:51', '2018-01-17 12:13:51', NULL, '2017-12-27 04:41:07'),
(57, 57, NULL, NULL, 2, 0, '2018-01-09 02:27:20', '2018-01-09 16:09:37', NULL, NULL),
(58, 58, NULL, NULL, 2, 3, '2018-01-09 09:07:56', '2018-01-17 12:13:41', NULL, '2018-01-16 05:57:39'),
(59, 59, NULL, NULL, 2, 3, '2018-01-09 13:45:27', '2018-01-24 13:45:45', NULL, '2018-01-23 08:26:13'),
(60, 60, NULL, NULL, 2, 0, '2018-01-15 01:51:52', '2018-01-17 12:13:24', NULL, NULL),
(61, 61, NULL, NULL, 2, 0, '2018-01-15 02:42:06', '2018-01-17 12:13:19', NULL, NULL),
(62, 62, NULL, NULL, 2, 0, '2018-01-15 02:57:28', '2018-01-17 12:13:09', NULL, NULL),
(63, 63, NULL, NULL, 2, 0, '2018-01-15 04:47:50', '2018-01-17 12:13:00', NULL, NULL),
(64, 64, NULL, NULL, 2, 0, '2018-01-15 04:58:01', '2018-01-17 12:12:29', NULL, NULL),
(65, 65, NULL, NULL, 2, 0, '2018-01-15 04:58:08', '2018-01-17 12:12:18', NULL, NULL),
(66, 66, NULL, NULL, 2, 0, '2018-01-15 05:01:47', '2018-01-17 12:12:04', NULL, NULL),
(67, 67, NULL, NULL, 2, 0, '2018-01-15 05:01:54', '2018-01-17 12:11:27', NULL, NULL),
(68, 68, NULL, NULL, 2, 0, '2018-01-15 05:02:02', '2018-01-17 12:10:38', NULL, NULL),
(69, 69, NULL, NULL, 2, 0, '2018-01-15 05:02:09', '2018-01-17 12:10:12', NULL, NULL),
(70, 70, NULL, NULL, 2, 0, '2018-01-15 05:02:17', '2018-01-17 12:09:48', NULL, NULL),
(71, 71, NULL, NULL, 2, 0, '2018-01-15 05:02:24', '2018-01-17 12:08:50', NULL, NULL),
(72, 72, NULL, NULL, 2, 0, '2018-01-15 05:02:32', '2018-01-17 12:08:12', NULL, NULL),
(73, 73, NULL, NULL, 2, 0, '2018-01-15 05:09:20', '2018-01-17 12:07:31', NULL, NULL),
(74, 74, NULL, NULL, 2, 0, '2018-01-15 05:09:28', '2018-01-17 12:06:19', NULL, NULL),
(75, 75, NULL, NULL, 2, 0, '2018-01-15 05:09:35', '2018-01-17 12:06:09', NULL, NULL),
(76, 76, NULL, NULL, 2, 0, '2018-01-15 05:09:42', '2018-01-17 12:05:59', NULL, NULL),
(77, 77, NULL, NULL, 2, 0, '2018-01-15 09:10:13', '2018-01-17 12:05:50', NULL, NULL),
(78, 78, NULL, NULL, 2, 0, '2018-01-15 10:26:20', '2018-01-17 12:05:40', NULL, NULL),
(79, 79, NULL, NULL, 2, 0, '2018-01-16 02:12:25', '2018-01-17 12:05:30', NULL, NULL),
(80, 80, NULL, NULL, 2, 0, '2018-01-16 02:20:15', '2018-01-17 12:05:20', NULL, NULL),
(81, 81, NULL, NULL, 2, 0, '2018-01-16 02:21:10', '2018-01-17 12:05:12', NULL, NULL),
(82, 82, NULL, NULL, 2, 0, '2018-01-16 02:22:25', '2018-01-17 12:05:02', NULL, NULL),
(83, 83, NULL, NULL, 2, 0, '2018-01-16 04:44:48', '2018-01-17 12:04:54', NULL, NULL),
(84, 84, NULL, NULL, 2, 0, '2018-01-16 05:22:12', '2018-01-17 12:04:45', NULL, NULL),
(85, 85, NULL, NULL, 2, 0, '2018-01-16 06:59:23', '2018-01-17 12:04:35', NULL, NULL),
(86, 86, NULL, NULL, 2, 0, '2018-01-16 08:47:26', '2018-01-17 12:04:25', NULL, NULL),
(87, 87, NULL, NULL, 2, 0, '2018-01-16 08:56:33', '2018-01-17 12:04:16', NULL, NULL),
(88, 88, NULL, NULL, 2, 0, '2018-01-17 02:29:05', '2018-01-17 12:04:06', NULL, NULL),
(89, 89, NULL, NULL, 2, 3, '2018-01-17 04:53:17', '2018-01-19 09:59:02', NULL, '2018-01-18 15:22:25'),
(90, 90, NULL, NULL, 2, 3, '2018-01-19 05:22:10', '2018-01-19 12:28:17', NULL, '2018-01-19 05:26:36'),
(91, 91, NULL, NULL, 2, 3, '2018-01-19 07:03:46', '2018-01-19 14:11:10', NULL, '2018-01-19 07:09:25'),
(92, 92, NULL, NULL, 2, 3, '2018-01-22 06:44:52', '2018-01-22 16:34:24', NULL, '2018-01-22 06:52:58'),
(93, 93, NULL, NULL, 2, 3, '2018-01-22 09:23:08', '2018-01-25 15:44:25', NULL, '2018-01-25 08:42:43'),
(94, 94, NULL, NULL, 1, 0, '2018-01-22 09:29:40', '2018-01-22 09:29:40', NULL, NULL),
(95, 95, NULL, NULL, 2, 3, '2018-01-22 09:30:11', '2018-01-25 15:47:05', NULL, '2018-01-25 08:46:01'),
(96, 96, NULL, NULL, 1, 0, '2018-01-23 01:29:27', '2018-01-23 01:29:27', NULL, NULL),
(97, 97, NULL, NULL, 2, 3, '2018-01-23 08:11:59', '2018-01-24 13:45:38', NULL, '2018-01-23 08:19:23'),
(98, 98, 'INV-20180125012808', NULL, 1, 0, '2018-01-25 01:28:08', '2018-01-25 01:28:08', NULL, NULL),
(99, 99, 'INV-20180125013435', NULL, 2, 0, '2018-01-25 01:34:35', '2018-01-25 08:49:55', NULL, NULL),
(100, 100, 'INV-20180125044304', NULL, 1, 0, '2018-01-25 04:43:04', '2018-01-25 04:43:04', NULL, NULL),
(101, 101, 'INV-20180125044445', NULL, 1, 0, '2018-01-25 04:44:45', '2018-01-25 04:44:45', NULL, NULL),
(102, 102, 'INV-20180125084844', NULL, 1, 0, '2018-01-25 08:48:44', '2018-01-25 08:48:44', NULL, NULL),
(103, 103, 'INV-20180125090442', NULL, 2, 3, '2018-01-25 09:04:42', '2018-01-25 16:33:50', NULL, '2018-01-25 09:20:29'),
(104, 104, 'INV-20180125234956', NULL, 2, 3, '2018-01-25 23:49:56', '2018-01-26 13:10:52', NULL, '2018-01-26 00:35:49'),
(105, 105, 'INV-20180126043651', NULL, 2, 0, '2018-01-26 04:36:51', '2018-01-26 13:10:45', NULL, NULL),
(106, 106, 'INV-20180126101001', NULL, 1, 0, '2018-01-26 10:10:01', '2018-01-26 10:10:01', NULL, NULL),
(107, 107, 'INV-20180126120247', NULL, 1, 0, '2018-01-26 12:02:47', '2018-01-26 12:02:47', NULL, NULL),
(108, 108, 'INV-20180126120459', NULL, 1, 0, '2018-01-26 12:04:59', '2018-01-26 12:04:59', NULL, NULL),
(109, 109, 'INV-20180126120847', NULL, 1, 0, '2018-01-26 12:08:47', '2018-01-26 12:08:47', NULL, NULL),
(110, 110, 'INV-20180129074804', NULL, 1, 0, '2018-01-29 07:48:04', '2018-01-29 07:48:04', NULL, NULL),
(111, 111, 'INV-20180129075123', NULL, 1, 0, '2018-01-29 07:51:23', '2018-01-29 07:51:23', NULL, NULL),
(112, 112, 'INV-20180129124837', NULL, 1, 0, '2018-01-29 12:48:37', '2018-01-29 12:48:37', NULL, NULL),
(113, 113, 'INV-20180131060942', NULL, 2, 0, '2018-01-31 06:09:42', '2018-01-31 13:12:12', NULL, NULL),
(114, 114, 'INV-20180131095445', NULL, 1, 0, '2018-01-31 09:54:45', '2018-01-31 09:54:45', NULL, NULL),
(115, 115, 'INV-20180131095725', NULL, 1, 0, '2018-01-31 09:57:25', '2018-01-31 09:57:25', NULL, NULL),
(116, 116, 'INV-20180131095827', NULL, 1, 0, '2018-01-31 09:58:27', '2018-01-31 09:58:27', NULL, NULL),
(117, 117, 'INV-20180203021607', NULL, 1, 0, '2018-02-03 02:16:07', '2018-02-03 02:16:07', NULL, NULL),
(118, 118, 'INV-20180205051419', NULL, 2, 0, '2018-02-05 05:14:19', '2018-02-05 12:18:39', NULL, NULL),
(119, 119, 'INV-20180215072822', NULL, 2, 0, '2018-02-15 07:28:22', '2018-02-15 16:51:23', NULL, NULL),
(120, 120, 'INV-20180215101432', NULL, 2, 3, '2018-02-15 10:14:32', '2018-02-15 17:36:37', NULL, '2018-02-15 10:29:14'),
(121, 121, 'INV-20180222100922', NULL, 1, 0, '2018-02-22 10:09:22', '2018-02-22 10:09:22', NULL, NULL),
(122, 122, 'INV-20180227054932', NULL, 1, 0, '2018-02-27 05:49:32', '2018-02-27 05:49:32', NULL, NULL),
(123, 123, 'INV-20180227075607', NULL, 2, 2, '2018-02-27 07:56:07', '2018-02-27 14:58:30', NULL, '2018-02-27 08:01:11'),
(124, 124, 'INV-20180227083852', NULL, 1, 0, '2018-02-27 08:38:52', '2018-02-27 08:38:52', NULL, NULL),
(125, 125, 'INV-20180322165755', NULL, 2, 2, '2018-03-22 22:57:55', '2018-03-22 22:57:55', NULL, '2018-03-22 18:18:10'),
(126, 126, 'INV-20180322183858', NULL, 2, 0, '2018-03-23 00:38:58', '2018-03-23 00:38:58', NULL, NULL);

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
  ADD KEY `FK_murid` (`id_murid`),
  ADD KEY `FK_belajar_guru` (`id_guru`),
  ADD KEY `FK_belajar_modul` (`id_modul`);

--
-- Indexes for table `file_modul`
--
ALTER TABLE `file_modul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_file_modul_modul` (`id_modul`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_modul_guru` (`id_guru`);

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_quiz_modul` (`id_modul`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_rating_guru` (`id_guru`),
  ADD KEY `FK_rating_murid` (`id_murid`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_transaksi_to_belajar` (`id_belajar`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `file_modul`
--
ALTER TABLE `file_modul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `murid`
--
ALTER TABLE `murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `FK_quiz_modul` FOREIGN KEY (`id_modul`) REFERENCES `modul` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
