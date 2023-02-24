-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 01:39 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evote_ketua_angkatanit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`) VALUES
('admin', '7cba98c02e0d979c43863d402075cf29'),
('admin2', '84c0c8a0067ea35e4c63823a2cee4dab');

-- --------------------------------------------------------

--
-- Table structure for table `tb_datapilketos`
--

CREATE TABLE `tb_datapilketos` (
  `id` int(1) NOT NULL DEFAULT '1',
  `tapel` varchar(10) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_datapilketos`
--

INSERT INTO `tb_datapilketos` (`id`, `tapel`, `tgl`) VALUES
(1, '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_identitassekolah`
--

CREATE TABLE `tb_identitassekolah` (
  `npsn` varchar(15) NOT NULL,
  `nm_sekolah` varchar(32) NOT NULL,
  `jln` varchar(32) DEFAULT NULL,
  `desa` varchar(32) DEFAULT NULL,
  `kec` varchar(32) DEFAULT NULL,
  `kab` varchar(32) DEFAULT NULL,
  `kpl_sekolah` varchar(32) DEFAULT NULL,
  `nip` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_identitassekolah`
--

INSERT INTO `tb_identitassekolah` (`npsn`, `nm_sekolah`, `jln`, `desa`, `kec`, `kab`, `kpl_sekolah`, `nip`) VALUES
('20219143', 'IT-CLUB SMK NEGERI 5 BANDUNG', 'Jl. Bojong Koneng No.37A', 'Sukapada', 'Cibeunying Kidul ', 'Bandung', 'DINI YUNINGSIH, S.PD., M.M.PD.', '102841204123809');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `kd_kelas` int(3) NOT NULL,
  `nm_kelas` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`kd_kelas`, `nm_kelas`) VALUES
(54, 'PEMBIMBING/MENTOR'),
(55, 'XII/ANGKATAN 4'),
(56, 'XI/ANGKATAN 5'),
(57, 'X/ANGKATAN 6');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pilih`
--

CREATE TABLE `tb_pilih` (
  `id_pilih` int(11) NOT NULL,
  `nisn` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pilihan`
--

CREATE TABLE `tb_pilihan` (
  `nisn` varchar(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `visimisi` mediumtext,
  `photo` varchar(32) NOT NULL,
  `no` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nm_siswa` varchar(32) DEFAULT NULL,
  `jk` char(1) NOT NULL,
  `kd_kelas` int(3) DEFAULT NULL,
  `hadir` varchar(12) NOT NULL DEFAULT 'Tidak Hadir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`username`, `password`, `nm_siswa`, `jk`, `kd_kelas`, `hadir`) VALUES
('1', '1', 'Kang Herdian', 'L', 54, 'Tidak Hadir'),
('10', '10', 'Kang Adam', 'L', 54, 'Tidak Hadir'),
('11', '11', 'Mochammad Dzikri Pratama', 'L', 55, 'Tidak Hadir'),
('12', '12', 'M Rizki Firmansyah ', 'L', 55, 'Tidak Hadir'),
('13', '13', 'Rai Fadhilah ', 'L', 55, 'Tidak Hadir'),
('14', '14', 'M. Alan Rifky Rajabputra', 'L', 55, 'Tidak Hadir'),
('15', '15', 'Gusnaldi Pramudita', 'L', 55, 'Tidak Hadir'),
('16', '16', 'Muhammad Danil Subarkah ', 'L', 55, 'Tidak Hadir'),
('17', '17', 'Devi Febrianti', 'P', 55, 'Tidak Hadir'),
('18', '18', 'Raina Sifa Daniyati', 'P', 55, 'Tidak Hadir'),
('19', '19', 'Alifia Wahyuni ', 'P', 55, 'Tidak Hadir'),
('2', '2', 'Kang Rizkan               ', 'L', 54, 'Tidak Hadir'),
('20', '20', 'Cici Cantika ', 'P', 55, 'Tidak Hadir'),
('21', '21', 'Cintia Sasi Kirani', 'P', 55, 'Tidak Hadir'),
('22', '22', 'Dea Aprilia Al Zauziah', 'P', 55, 'Tidak Hadir'),
('23', '23', 'Dwi Fitria Agustine', 'P', 55, 'Tidak Hadir'),
('24', '24', 'Galih Agustriman', 'L', 56, 'Tidak Hadir'),
('25', '25', 'Muhamad Ghifari Al Farizi', 'L', 56, 'Tidak Hadir'),
('26', '26', 'Fatur Rahman Fadilah', 'L', 56, 'Tidak Hadir'),
('27', '27', 'Naufal Wahyu Pratama', 'L', 56, 'Tidak Hadir'),
('28', '28', 'Adi Aditya ', 'L', 57, 'Tidak Hadir'),
('29', '29', 'Airlangga Putra Sumadi ', 'L', 57, 'Tidak Hadir'),
('3', '3', 'Kang Teguh', 'L', 54, 'Tidak Hadir'),
('30', '30', 'Andini Nurhidayati', 'P', 57, 'Tidak Hadir'),
('31', '31', 'Asy Syams ', 'L', 57, 'Tidak Hadir'),
('32', '32', 'Farzaliano Dwi Putra Heriyadi', 'L', 57, 'Tidak Hadir'),
('33', '33', 'Fachri Fadilah ', 'L', 57, 'Tidak Hadir'),
('34', '34', 'Ilham Tabah Kurniawan ', 'L', 57, 'Tidak Hadir'),
('35', '35', 'Keisha Azurra Putri Kurniawan', 'P', 57, 'Tidak Hadir'),
('36', '36', 'Marsya Nurfitri ', 'P', 57, 'Tidak Hadir'),
('37', '37', 'M. Akbar Emur Hermawan ', 'L', 57, 'Tidak Hadir'),
('38', '38', 'Muhammad Rafli', 'L', 57, 'Tidak Hadir'),
('39', '39', 'Neng Rosita Putri Alisya', 'P', 57, 'Tidak Hadir'),
('4', '4', 'Kang Rian', 'L', 54, 'Tidak Hadir'),
('40', '40', 'Nurkalam Abdurrahman ', 'L', 57, 'Tidak Hadir'),
('41', '41', 'Rafli Insan Karim', 'L', 57, 'Tidak Hadir'),
('42', '42', 'Raihan Al Havsi', 'L', 57, 'Tidak Hadir'),
('43', '43', 'Riyan Handriyana ', 'L', 57, 'Tidak Hadir'),
('44', '44', 'Sandi Virgiawan ', 'L', 57, 'Tidak Hadir'),
('45', '45', 'Tommy Sebastian Altaf', 'L', 57, 'Tidak Hadir'),
('46', '46', 'Wandi Apriansyah ', 'L', 57, 'Tidak Hadir'),
('47', '47', 'Elfanda Zulkha Rachmat ', 'P', 57, 'Tidak Hadir'),
('48', '48', 'Yusvita Sari ', 'P', 57, 'Tidak Hadir'),
('49', '49', 'Abdul Hadi', 'L', 57, 'Tidak Hadir'),
('5', '5', 'Kang Rifki', 'L', 54, 'Tidak Hadir'),
('50', '50', 'Jaenal Ramdhani ', 'L', 57, 'Tidak Hadir'),
('51', '51', 'Khulika Nurdafiqin', 'L', 57, 'Tidak Hadir'),
('52', '52', 'Mochammad Dava Ghifary', 'L', 57, 'Tidak Hadir'),
('53', '53', 'Muhammad Naufal Ikhsan', 'L', 57, 'Tidak Hadir'),
('54', '54', 'Niken Amelia Febriani', 'P', 57, 'Tidak Hadir'),
('55', '55', 'Revaldi Muhamad Setianto ', 'L', 57, 'Tidak Hadir'),
('56', '56', 'Reza Adithya Wijaya', 'L', 57, 'Tidak Hadir'),
('57', '57', 'Sabiq Awalusyabab ', 'L', 57, 'Tidak Hadir'),
('58', '58', 'Yulia Rahma Inayati', 'P', 57, 'Tidak Hadir'),
('59', '59', 'Adinda P', 'P', 57, 'Tidak Hadir'),
('6', '6', 'Kang Hengki', 'L', 54, 'Tidak Hadir'),
('60', '60', 'Muhamad Galih Ramdhani', 'L', 57, 'Tidak Hadir'),
('61', '61', 'Gheffira Salma Andini', 'P', 57, 'Tidak Hadir'),
('62', '62', 'Zoya Putri Samugni ', 'P', 57, 'Tidak Hadir'),
('63', '63', 'Disty Firlyana', 'P', 57, 'Tidak Hadir'),
('7', '7', 'Kang Ihsan', 'L', 54, 'Tidak Hadir'),
('8', '8', 'Kang Yusuf', 'L', 54, 'Tidak Hadir'),
('9', '9', 'Kang Riza', 'L', 54, 'Tidak Hadir');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_daftarhadir`
-- (See below for the actual view)
--
CREATE TABLE `view_daftarhadir` (
`NISN` varchar(32)
,`nm_siswa` varchar(32)
,`nm_kelas` varchar(32)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_vote`
-- (See below for the actual view)
--
CREATE TABLE `view_vote` (
`nisn` varchar(32)
,`nama` varchar(32)
,`photo` varchar(32)
,`no` int(1)
,`username` varchar(32)
);

-- --------------------------------------------------------

--
-- Structure for view `view_daftarhadir`
--
DROP TABLE IF EXISTS `view_daftarhadir`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_daftarhadir`  AS  select `tb_siswa`.`username` AS `NISN`,`tb_siswa`.`nm_siswa` AS `nm_siswa`,`tb_kelas`.`nm_kelas` AS `nm_kelas` from ((`tb_siswa` join `tb_kelas` on((`tb_kelas`.`kd_kelas` = `tb_siswa`.`kd_kelas`))) join `tb_pilih` on((`tb_siswa`.`username` = `tb_pilih`.`username`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_vote`
--
DROP TABLE IF EXISTS `view_vote`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_vote`  AS  select `tb_pilihan`.`nisn` AS `nisn`,`tb_pilihan`.`nama` AS `nama`,`tb_pilihan`.`photo` AS `photo`,`tb_pilihan`.`no` AS `no`,`tb_siswa`.`username` AS `username` from ((`tb_pilih` join `tb_pilihan` on((`tb_pilihan`.`nisn` = `tb_pilih`.`nisn`))) join `tb_siswa` on((`tb_siswa`.`username` = `tb_pilih`.`username`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_datapilketos`
--
ALTER TABLE `tb_datapilketos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_identitassekolah`
--
ALTER TABLE `tb_identitassekolah`
  ADD PRIMARY KEY (`npsn`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indexes for table `tb_pilih`
--
ALTER TABLE `tb_pilih`
  ADD PRIMARY KEY (`id_pilih`);

--
-- Indexes for table `tb_pilihan`
--
ALTER TABLE `tb_pilihan`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `kd_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tb_pilih`
--
ALTER TABLE `tb_pilih`
  MODIFY `id_pilih` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
