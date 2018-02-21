-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2018 at 08:28 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desaPetang`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE `bidang` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`id`, `nama`) VALUES
(1, 'Pertanian'),
(2, 'Perdagangan'),
(3, 'Kuliner');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` int(11) NOT NULL,
  `pemilik` int(11) NOT NULL,
  `diskripsi` text NOT NULL,
  `files` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `nama`, `jenis`, `pemilik`, `diskripsi`, `files`) VALUES
(1, 'Kartu Keluarga Fred Iddy ', 1, 1, 'Kartu Keluarga Fred Iddy ', NULL),
(2, 'Asuransi Kesehatan Fred Iddy ', 2, 1, 'Asuransi Kesehatan Fred Iddy ', NULL),
(3, 'Surat Ijin Bertamu Fred Iddy ', 3, 1, 'Surat Ijin Bertamu Fred Iddy ', NULL),
(4, 'Kartu Tanda Penduduk Fred Iddy ', 4, 1, 'Kartu Tanda Penduduk Fred Iddy ', NULL),
(5, 'Surat Kelakuan Baik Fred Iddy ', 5, 1, 'Surat Kelakuan Baik Fred Iddy ', NULL),
(6, 'Kartu Keluarga Stu Furber ', 1, 2, 'Kartu Keluarga Stu Furber ', NULL),
(7, 'Asuransi Kesehatan Stu Furber ', 2, 2, 'Asuransi Kesehatan Stu Furber ', NULL),
(8, 'Surat Ijin Bertamu Stu Furber ', 3, 2, 'Surat Ijin Bertamu Stu Furber ', NULL),
(9, 'Kartu Tanda Penduduk Stu Furber ', 4, 2, 'Kartu Tanda Penduduk Stu Furber ', NULL),
(10, 'Surat Kelakuan Baik Stu Furber ', 5, 2, 'Surat Kelakuan Baik Stu Furber ', NULL),
(11, 'Kartu Keluarga Kelsi Braley ', 1, 3, 'Kartu Keluarga Kelsi Braley ', NULL),
(12, 'Asuransi Kesehatan Kelsi Braley ', 2, 3, 'Asuransi Kesehatan Kelsi Braley ', NULL),
(13, 'Surat Ijin Bertamu Kelsi Braley ', 3, 3, 'Surat Ijin Bertamu Kelsi Braley ', NULL),
(14, 'Kartu Tanda Penduduk Kelsi Braley ', 4, 3, 'Kartu Tanda Penduduk Kelsi Braley ', NULL),
(15, 'Surat Kelakuan Baik Kelsi Braley ', 5, 3, 'Surat Kelakuan Baik Kelsi Braley ', NULL),
(16, 'Kartu Keluarga Andrej Zywicki ', 1, 4, 'Kartu Keluarga Andrej Zywicki ', NULL),
(17, 'Asuransi Kesehatan Andrej Zywicki ', 2, 4, 'Asuransi Kesehatan Andrej Zywicki ', NULL),
(18, 'Surat Ijin Bertamu Andrej Zywicki ', 3, 4, 'Surat Ijin Bertamu Andrej Zywicki ', NULL),
(19, 'Kartu Tanda Penduduk Andrej Zywicki ', 4, 4, 'Kartu Tanda Penduduk Andrej Zywicki ', NULL),
(20, 'Surat Kelakuan Baik Andrej Zywicki ', 5, 4, 'Surat Kelakuan Baik Andrej Zywicki ', NULL),
(21, 'Kartu Keluarga Merill Martynikhin ', 1, 5, 'Kartu Keluarga Merill Martynikhin ', NULL),
(22, 'Asuransi Kesehatan Merill Martynikhin ', 2, 5, 'Asuransi Kesehatan Merill Martynikhin ', NULL),
(23, 'Surat Ijin Bertamu Merill Martynikhin ', 3, 5, 'Surat Ijin Bertamu Merill Martynikhin ', NULL),
(24, 'Kartu Tanda Penduduk Merill Martynikhin ', 4, 5, 'Kartu Tanda Penduduk Merill Martynikhin ', NULL),
(25, 'Surat Kelakuan Baik Merill Martynikhin ', 5, 5, 'Surat Kelakuan Baik Merill Martynikhin ', NULL),
(26, 'Kartu Keluarga Babbette Benini ', 1, 6, 'Kartu Keluarga Babbette Benini ', NULL),
(27, 'Asuransi Kesehatan Babbette Benini ', 2, 6, 'Asuransi Kesehatan Babbette Benini ', NULL),
(28, 'Surat Ijin Bertamu Babbette Benini ', 3, 6, 'Surat Ijin Bertamu Babbette Benini ', NULL),
(29, 'Kartu Tanda Penduduk Babbette Benini ', 4, 6, 'Kartu Tanda Penduduk Babbette Benini ', NULL),
(30, 'Surat Kelakuan Baik Babbette Benini ', 5, 6, 'Surat Kelakuan Baik Babbette Benini ', NULL),
(31, 'Kartu Keluarga Dianna Bannester ', 1, 7, 'Kartu Keluarga Dianna Bannester ', NULL),
(32, 'Asuransi Kesehatan Dianna Bannester ', 2, 7, 'Asuransi Kesehatan Dianna Bannester ', NULL),
(33, 'Surat Ijin Bertamu Dianna Bannester ', 3, 7, 'Surat Ijin Bertamu Dianna Bannester ', NULL),
(34, 'Kartu Tanda Penduduk Dianna Bannester ', 4, 7, 'Kartu Tanda Penduduk Dianna Bannester ', NULL),
(35, 'Surat Kelakuan Baik Dianna Bannester ', 5, 7, 'Surat Kelakuan Baik Dianna Bannester ', NULL),
(36, 'Kartu Keluarga Ellery Ryles ', 1, 8, 'Kartu Keluarga Ellery Ryles ', NULL),
(37, 'Asuransi Kesehatan Ellery Ryles ', 2, 8, 'Asuransi Kesehatan Ellery Ryles ', NULL),
(38, 'Surat Ijin Bertamu Ellery Ryles ', 3, 8, 'Surat Ijin Bertamu Ellery Ryles ', NULL),
(39, 'Kartu Tanda Penduduk Ellery Ryles ', 4, 8, 'Kartu Tanda Penduduk Ellery Ryles ', NULL),
(40, 'Surat Kelakuan Baik Ellery Ryles ', 5, 8, 'Surat Kelakuan Baik Ellery Ryles ', NULL),
(41, 'Kartu Keluarga Stu Furber ', 1, 9, 'Kartu Keluarga Stu Furber ', NULL),
(42, 'Asuransi Kesehatan Stu Furber ', 2, 9, 'Asuransi Kesehatan Stu Furber ', NULL),
(43, 'Surat Ijin Bertamu Stu Furber ', 3, 9, 'Surat Ijin Bertamu Stu Furber ', NULL),
(44, 'Kartu Tanda Penduduk Stu Furber ', 4, 9, 'Kartu Tanda Penduduk Stu Furber ', NULL),
(45, 'Surat Kelakuan Baik Stu Furber ', 5, 9, 'Surat Kelakuan Baik Stu Furber ', NULL),
(46, 'Kartu Keluarga Aura Singleton ', 1, 10, 'Kartu Keluarga Aura Singleton ', NULL),
(47, 'Asuransi Kesehatan Aura Singleton ', 2, 10, 'Asuransi Kesehatan Aura Singleton ', NULL),
(48, 'Surat Ijin Bertamu Aura Singleton ', 3, 10, 'Surat Ijin Bertamu Aura Singleton ', NULL),
(49, 'Kartu Tanda Penduduk Aura Singleton ', 4, 10, 'Kartu Tanda Penduduk Aura Singleton ', NULL),
(50, 'Surat Kelakuan Baik Aura Singleton ', 5, 10, 'Surat Kelakuan Baik Aura Singleton ', NULL),
(51, 'Kartu Keluarga Darn Flecknoe ', 1, 11, 'Kartu Keluarga Darn Flecknoe ', NULL),
(52, 'Asuransi Kesehatan Darn Flecknoe ', 2, 11, 'Asuransi Kesehatan Darn Flecknoe ', NULL),
(53, 'Surat Ijin Bertamu Darn Flecknoe ', 3, 11, 'Surat Ijin Bertamu Darn Flecknoe ', NULL),
(54, 'Kartu Tanda Penduduk Darn Flecknoe ', 4, 11, 'Kartu Tanda Penduduk Darn Flecknoe ', NULL),
(55, 'Surat Kelakuan Baik Darn Flecknoe ', 5, 11, 'Surat Kelakuan Baik Darn Flecknoe ', NULL),
(56, 'Kartu Keluarga Grethel Duffyn ', 1, 12, 'Kartu Keluarga Grethel Duffyn ', NULL),
(57, 'Asuransi Kesehatan Grethel Duffyn ', 2, 12, 'Asuransi Kesehatan Grethel Duffyn ', NULL),
(58, 'Surat Ijin Bertamu Grethel Duffyn ', 3, 12, 'Surat Ijin Bertamu Grethel Duffyn ', NULL),
(59, 'Kartu Tanda Penduduk Grethel Duffyn ', 4, 12, 'Kartu Tanda Penduduk Grethel Duffyn ', NULL),
(60, 'Surat Kelakuan Baik Grethel Duffyn ', 5, 12, 'Surat Kelakuan Baik Grethel Duffyn ', NULL),
(61, 'Kartu Keluarga Gabrielle Bichard ', 1, 13, 'Kartu Keluarga Gabrielle Bichard ', NULL),
(62, 'Asuransi Kesehatan Gabrielle Bichard ', 2, 13, 'Asuransi Kesehatan Gabrielle Bichard ', NULL),
(63, 'Surat Ijin Bertamu Gabrielle Bichard ', 3, 13, 'Surat Ijin Bertamu Gabrielle Bichard ', NULL),
(64, 'Kartu Tanda Penduduk Gabrielle Bichard ', 4, 13, 'Kartu Tanda Penduduk Gabrielle Bichard ', NULL),
(65, 'Surat Kelakuan Baik Gabrielle Bichard ', 5, 13, 'Surat Kelakuan Baik Gabrielle Bichard ', NULL),
(66, 'Kartu Keluarga Bobby Thackray ', 1, 14, 'Kartu Keluarga Bobby Thackray ', NULL),
(67, 'Asuransi Kesehatan Bobby Thackray ', 2, 14, 'Asuransi Kesehatan Bobby Thackray ', NULL),
(68, 'Surat Ijin Bertamu Bobby Thackray ', 3, 14, 'Surat Ijin Bertamu Bobby Thackray ', NULL),
(69, 'Kartu Tanda Penduduk Bobby Thackray ', 4, 14, 'Kartu Tanda Penduduk Bobby Thackray ', NULL),
(70, 'Surat Kelakuan Baik Bobby Thackray ', 5, 14, 'Surat Kelakuan Baik Bobby Thackray ', NULL),
(71, 'Kartu Keluarga Babbette Benini ', 1, 15, 'Kartu Keluarga Babbette Benini ', NULL),
(72, 'Asuransi Kesehatan Babbette Benini ', 2, 15, 'Asuransi Kesehatan Babbette Benini ', NULL),
(73, 'Surat Ijin Bertamu Babbette Benini ', 3, 15, 'Surat Ijin Bertamu Babbette Benini ', NULL),
(74, 'Kartu Tanda Penduduk Babbette Benini ', 4, 15, 'Kartu Tanda Penduduk Babbette Benini ', NULL),
(75, 'Surat Kelakuan Baik Babbette Benini ', 5, 15, 'Surat Kelakuan Baik Babbette Benini ', NULL),
(76, 'Kartu Keluarga Gloria Lampett ', 1, 16, 'Kartu Keluarga Gloria Lampett ', NULL),
(77, 'Asuransi Kesehatan Gloria Lampett ', 2, 16, 'Asuransi Kesehatan Gloria Lampett ', NULL),
(78, 'Surat Ijin Bertamu Gloria Lampett ', 3, 16, 'Surat Ijin Bertamu Gloria Lampett ', NULL),
(79, 'Kartu Tanda Penduduk Gloria Lampett ', 4, 16, 'Kartu Tanda Penduduk Gloria Lampett ', NULL),
(80, 'Surat Kelakuan Baik Gloria Lampett ', 5, 16, 'Surat Kelakuan Baik Gloria Lampett ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `nama`) VALUES
(1, 'Kartu Keluarga'),
(2, 'Asuransi Kesehatan'),
(3, 'Surat Ijin Bertamu'),
(4, 'Kartu Tanda Penduduk'),
(5, 'Surat Kelakuan Baik');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `diskripsi` text NOT NULL,
  `files` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('admin','pegawai','penduduk') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'pegawai', '047aeeb234644b9e2d4138ed3bc7976a', 'pegawai'),
(3, 'penduduk', '0ae60711d957cb3539d536bf9d5693e1', 'penduduk');

-- --------------------------------------------------------

--
-- Table structure for table `loginpenduduk`
--

CREATE TABLE `loginpenduduk` (
  `id` int(11) NOT NULL,
  `rfid` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `status` enum('belum menikah','menikah','','') NOT NULL,
  `desa` varchar(255) NOT NULL,
  `KTP` varchar(150) DEFAULT NULL,
  `KK` varchar(150) DEFAULT NULL,
  `rfid` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`id`, `nama`, `alamat`, `telp`, `status`, `desa`, `KTP`, `KK`, `rfid`, `foto`) VALUES
(1, 'Fred Iddy ', 'alamat1', '08153905', 'belum menikah', 'desa1', '9985706', '6488522', '1739021643', NULL),
(2, 'Stu Furber ', 'alamat27', '08168823', 'menikah', 'desa5', '9860609', '3184888', '22922970213', NULL),
(3, 'Kelsi Braley ', 'alamat37', '08116651', 'belum menikah', 'desa5', '3733750', '8026865', '9024222143', NULL),
(4, 'Andrej Zywicki ', 'alamat45', '08178629', 'belum menikah', 'desa5', '7421402', '1895404', '2917222143', NULL),
(5, 'Merill Martynikhin ', 'alamat53', '08187728', 'belum menikah', 'desa2', '1999661', '8632864', '10120912799', NULL),
(6, 'Babbette Benini ', 'alamat60', '08167366', 'belum menikah', 'desa3', '8041405', '4009104', '1341217288', NULL),
(7, 'Dianna Bannester ', 'alamat66', '08197436', 'menikah', 'desa4', '8289036', '9752060', '13311012799', NULL),
(8, 'Ellery Ryles ', 'alamat73', '08125851', 'belum menikah', 'desa3', '1899746', '4150945', '19713113299', NULL),
(9, 'Stu Furber ', 'alamat79', '08153519', 'belum menikah', 'desa3', '3676894', '8435268', '1338313099', NULL),
(10, 'Aura Singleton ', 'alamat83', '08191263', 'menikah', 'desa4', '2028915', '8207793', '17224322143', NULL),
(11, 'Darn Flecknoe ', 'alamat89', '08161189', 'belum menikah', 'desa5', '1227691', '2985802', '2494823043', NULL),
(12, 'Grethel Duffyn ', 'alamat94', '08118249', 'belum menikah', 'desa1', '7966793', '1018469', '523211599', NULL),
(13, 'Gabrielle Bichard ', 'alamat101', '08172934', 'belum menikah', 'desa1', '1969960', '3503397', '86617088', NULL),
(14, 'Bobby Thackray ', 'alamat107', '08136732', 'menikah', 'desa4', '8188305', '1532217', '13323912699', NULL),
(15, 'Babbette Benini ', 'alamat115', '08145987', 'menikah', 'desa1', '1358712', '1687514', '18119313899', NULL),
(16, 'Gloria Lampett ', 'alamat123', '08157515', 'menikah', 'desa2', '4167814', '7034130', '16625117088', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rfidlist`
--

CREATE TABLE `rfidlist` (
  `id` int(11) NOT NULL,
  `rfid` varchar(255) NOT NULL,
  `status` enum('available','unavailable','','') NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfidlist`
--

INSERT INTO `rfidlist` (`id`, `rfid`, `status`) VALUES
(1, '1739021643', 'available'),
(27, '22922970213', 'available'),
(37, '9024222143', 'available'),
(45, '2917222143', 'available'),
(53, '10120912799', 'available'),
(60, '1341217288', 'available'),
(66, '13311012799', 'available'),
(73, '19713113299', 'available'),
(79, '1338313099', 'available'),
(83, '17224322143', 'available'),
(89, '2494823043', 'available'),
(94, '523211599', 'available'),
(101, '86617088', 'available'),
(107, '13323912699', 'available'),
(115, '18119313899', 'available'),
(123, '16625117088', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `ukm`
--

CREATE TABLE `ukm` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bidang` int(11) NOT NULL,
  `pemilik` int(11) NOT NULL,
  `diskripsi` text NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ukm`
--

INSERT INTO `ukm` (`id`, `nama`, `bidang`, `pemilik`, `diskripsi`, `alamat`) VALUES
(1, 'Perdagangan Fred Iddy ', 2, 1, 'Perdagangan Fred Iddy ', 'Alamat UKM Fred Iddy '),
(2, 'Perdagangan Stu Furber ', 2, 2, 'Perdagangan Stu Furber ', 'Alamat UKM Stu Furber '),
(3, 'Kuliner Stu Furber ', 3, 2, 'Kuliner Stu Furber ', 'Alamat UKM Stu Furber '),
(4, 'Pertanian Kelsi Braley ', 1, 3, 'Pertanian Kelsi Braley ', 'Alamat UKM Kelsi Braley '),
(5, 'Kuliner Kelsi Braley ', 3, 3, 'Kuliner Kelsi Braley ', 'Alamat UKM Kelsi Braley '),
(6, 'Perdagangan Kelsi Braley ', 2, 3, 'Perdagangan Kelsi Braley ', 'Alamat UKM Kelsi Braley '),
(7, 'Pertanian Kelsi Braley ', 1, 3, 'Pertanian Kelsi Braley ', 'Alamat UKM Kelsi Braley '),
(8, 'Kuliner Kelsi Braley ', 3, 3, 'Kuliner Kelsi Braley ', 'Alamat UKM Kelsi Braley '),
(9, 'Perdagangan Andrej Zywicki ', 2, 4, 'Perdagangan Andrej Zywicki ', 'Alamat UKM Andrej Zywicki '),
(10, 'Kuliner Andrej Zywicki ', 3, 4, 'Kuliner Andrej Zywicki ', 'Alamat UKM Andrej Zywicki '),
(11, 'Kuliner Merill Martynikhin ', 3, 5, 'Kuliner Merill Martynikhin ', 'Alamat UKM Merill Martynikhin '),
(12, 'Pertanian Merill Martynikhin ', 1, 5, 'Pertanian Merill Martynikhin ', 'Alamat UKM Merill Martynikhin '),
(13, 'Pertanian Merill Martynikhin ', 1, 5, 'Pertanian Merill Martynikhin ', 'Alamat UKM Merill Martynikhin '),
(14, 'Pertanian Babbette Benini ', 1, 6, 'Pertanian Babbette Benini ', 'Alamat UKM Babbette Benini '),
(15, 'Perdagangan Dianna Bannester ', 2, 7, 'Perdagangan Dianna Bannester ', 'Alamat UKM Dianna Bannester '),
(16, 'Kuliner Dianna Bannester ', 3, 7, 'Kuliner Dianna Bannester ', 'Alamat UKM Dianna Bannester '),
(17, 'Pertanian Dianna Bannester ', 1, 7, 'Pertanian Dianna Bannester ', 'Alamat UKM Dianna Bannester '),
(18, 'Pertanian Dianna Bannester ', 1, 7, 'Pertanian Dianna Bannester ', 'Alamat UKM Dianna Bannester '),
(19, 'Kuliner Dianna Bannester ', 3, 7, 'Kuliner Dianna Bannester ', 'Alamat UKM Dianna Bannester '),
(20, 'Pertanian Ellery Ryles ', 1, 8, 'Pertanian Ellery Ryles ', 'Alamat UKM Ellery Ryles '),
(21, 'Perdagangan Ellery Ryles ', 2, 8, 'Perdagangan Ellery Ryles ', 'Alamat UKM Ellery Ryles '),
(22, 'Kuliner Stu Furber ', 3, 9, 'Kuliner Stu Furber ', 'Alamat UKM Stu Furber '),
(23, 'Kuliner Stu Furber ', 3, 9, 'Kuliner Stu Furber ', 'Alamat UKM Stu Furber '),
(24, 'Pertanian Aura Singleton ', 1, 10, 'Pertanian Aura Singleton ', 'Alamat UKM Aura Singleton '),
(25, 'Pertanian Aura Singleton ', 1, 10, 'Pertanian Aura Singleton ', 'Alamat UKM Aura Singleton '),
(26, 'Perdagangan Aura Singleton ', 2, 10, 'Perdagangan Aura Singleton ', 'Alamat UKM Aura Singleton '),
(27, 'Perdagangan Darn Flecknoe ', 2, 11, 'Perdagangan Darn Flecknoe ', 'Alamat UKM Darn Flecknoe '),
(28, 'Perdagangan Grethel Duffyn ', 2, 12, 'Perdagangan Grethel Duffyn ', 'Alamat UKM Grethel Duffyn '),
(29, 'Perdagangan Grethel Duffyn ', 2, 12, 'Perdagangan Grethel Duffyn ', 'Alamat UKM Grethel Duffyn '),
(30, 'Kuliner Gabrielle Bichard ', 3, 13, 'Kuliner Gabrielle Bichard ', 'Alamat UKM Gabrielle Bichard '),
(31, 'Kuliner Bobby Thackray ', 3, 14, 'Kuliner Bobby Thackray ', 'Alamat UKM Bobby Thackray '),
(32, 'Perdagangan Bobby Thackray ', 2, 14, 'Perdagangan Bobby Thackray ', 'Alamat UKM Bobby Thackray '),
(33, 'Pertanian Babbette Benini ', 1, 15, 'Pertanian Babbette Benini ', 'Alamat UKM Babbette Benini '),
(34, 'Perdagangan Babbette Benini ', 2, 15, 'Perdagangan Babbette Benini ', 'Alamat UKM Babbette Benini '),
(35, 'Pertanian Babbette Benini ', 1, 15, 'Pertanian Babbette Benini ', 'Alamat UKM Babbette Benini '),
(36, 'Pertanian Babbette Benini ', 1, 15, 'Pertanian Babbette Benini ', 'Alamat UKM Babbette Benini '),
(37, 'Perdagangan Babbette Benini ', 2, 15, 'Perdagangan Babbette Benini ', 'Alamat UKM Babbette Benini '),
(38, 'Kuliner Gloria Lampett ', 3, 16, 'Kuliner Gloria Lampett ', 'Alamat UKM Gloria Lampett '),
(39, 'Kuliner Gloria Lampett ', 3, 16, 'Kuliner Gloria Lampett ', 'Alamat UKM Gloria Lampett '),
(40, 'Kuliner Gloria Lampett ', 3, 16, 'Kuliner Gloria Lampett ', 'Alamat UKM Gloria Lampett ');

-- --------------------------------------------------------

--
-- Table structure for table `ukmtahun`
--

CREATE TABLE `ukmtahun` (
  `id` int(11) NOT NULL,
  `bidang` varchar(255) NOT NULL,
  `tahun` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `pendapatan` int(11) NOT NULL,
  `pengeluaran` int(11) NOT NULL,
  `profit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ukmtahun`
--

INSERT INTO `ukmtahun` (`id`, `bidang`, `tahun`, `jumlah`, `pendapatan`, `pengeluaran`, `profit`) VALUES
(1, 'pertanian', 2012, 8, 50, 40, 10),
(2, 'pertanian', 2013, 12, 80, 50, 30),
(3, 'pertanian', 2014, 15, 95, 70, 25),
(4, 'pertanian', 2015, 14, 90, 65, 25),
(5, 'pertanian', 2016, 16, 100, 60, 40),
(6, 'perdagangan', 2012, 2, 20, 10, 10),
(7, 'perdagangan', 2013, 4, 24, 12, 12),
(8, 'perdagangan', 2014, 5, 25, 15, 10),
(9, 'perdagangan', 2015, 6, 27, 17, 10),
(10, 'perdagangan', 2016, 6, 30, 18, 12),
(11, 'kuliner', 2012, 5, 120, 90, 30),
(12, 'kuliner', 2013, 6, 125, 100, 25),
(13, 'kuliner', 2014, 5, 122, 102, 20),
(14, 'kuliner', 2015, 6, 124, 100, 24),
(15, 'kuliner', 2016, 8, 140, 112, 28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginpenduduk`
--
ALTER TABLE `loginpenduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rfidlist`
--
ALTER TABLE `rfidlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rfid` (`rfid`);

--
-- Indexes for table `ukm`
--
ALTER TABLE `ukm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ukmtahun`
--
ALTER TABLE `ukmtahun`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidang`
--
ALTER TABLE `bidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `loginpenduduk`
--
ALTER TABLE `loginpenduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `rfidlist`
--
ALTER TABLE `rfidlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `ukm`
--
ALTER TABLE `ukm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `ukmtahun`
--
ALTER TABLE `ukmtahun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
