-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2022 at 04:02 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_pengairan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cth_hari`
--

CREATE TABLE `cth_hari` (
  `id_hari` int(25) NOT NULL,
  `hitungan_hari` int(30) DEFAULT NULL,
  `periode` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cth_hari`
--

INSERT INTO `cth_hari` (`id_hari`, `hitungan_hari`, `periode`) VALUES
(1, 1, 'Periode 1'),
(2, 2, 'Periode 1'),
(3, 3, 'Periode 1'),
(4, 4, 'Periode 1'),
(5, 5, 'Periode 1'),
(6, 6, 'Periode 1'),
(7, 7, 'Periode 1'),
(8, 8, 'Periode 1'),
(9, 9, 'Periode 1'),
(10, 10, 'Periode 1'),
(11, 11, 'Periode 2'),
(12, 12, 'Periode 2'),
(13, 13, 'Periode 2'),
(14, 14, 'Periode 2'),
(15, 15, 'Periode 2'),
(16, 16, 'Periode 2'),
(17, 17, 'Periode 2'),
(18, 18, 'Periode 2'),
(19, 19, 'Periode 2'),
(20, 20, 'Periode 2'),
(21, 21, 'Periode 3'),
(22, 22, 'Periode 3'),
(23, 23, 'Periode 3'),
(24, 24, 'Periode 3'),
(25, 25, 'Periode 3'),
(26, 26, 'Periode 3'),
(27, 27, 'Periode 3'),
(28, 28, 'Periode 3'),
(29, 29, 'Periode 3'),
(30, 30, 'Periode 3'),
(31, 31, 'Periode 3');

-- --------------------------------------------------------

--
-- Table structure for table `cth_laporan`
--

CREATE TABLE `cth_laporan` (
  `id_laporan` int(25) NOT NULL,
  `id_user` varchar(25) DEFAULT NULL,
  `id_daerah` varchar(25) DEFAULT NULL,
  `id_hari` int(25) DEFAULT NULL,
  `nama_sungai` varchar(250) DEFAULT NULL,
  `nama_bendungan` varchar(250) DEFAULT NULL,
  `intake_kanan` int(30) DEFAULT NULL,
  `intake_kiri` int(30) DEFAULT NULL,
  `jumlah_debit` int(30) DEFAULT NULL,
  `l_total` int(30) DEFAULT NULL,
  `l_eff` int(30) DEFAULT NULL,
  `date_laporan` date NOT NULL,
  `jam_laporan` time DEFAULT NULL,
  `foto_laporan` varchar(250) DEFAULT NULL,
  `lokasi_laporan` text,
  `status_laporan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cth_laporan`
--

INSERT INTO `cth_laporan` (`id_laporan`, `id_user`, `id_daerah`, `id_hari`, `nama_sungai`, `nama_bendungan`, `intake_kanan`, `intake_kiri`, `jumlah_debit`, `l_total`, `l_eff`, `date_laporan`, `jam_laporan`, `foto_laporan`, `lokasi_laporan`, `status_laporan`) VALUES
(1, 'RAP008', 'DT002', 1, 'PATALAN', 'TUNGGAK 207 Ha', 12, 10, 22, 20, 17, '2020-05-01', '08:00:00', 'Patalan', 'Patalan', 'Dikonfirmasi'),
(2, 'RAP008', 'DT002', 2, 'PATALAN', 'TUNGGAK 207 Ha', 12, 10, 22, 20, 17, '2020-05-01', '08:00:00', 'Patalan', 'Patalan', 'Dikonfirmasi'),
(3, 'RAP008', 'DT002', 10, 'PATALAN', 'TUNGGAK 207 Ha', 8, 7, 22, 20, 17, '2020-05-01', '08:00:00', 'Patalan', 'Patalan', 'Dikonfirmasi'),
(4, 'RAP008', 'DT002', 11, 'PATALAN', 'TUNGGAK 207 Ha', 8, 7, 22, 20, 17, '2020-05-01', '08:00:00', 'Patalan', 'Patalan', 'Dikonfirmasi'),
(5, 'RAP008', 'DT002', 21, 'PATALAN', 'TUNGGAK 207 Ha', 15, 17, 22, 20, 17, '2020-05-01', '08:00:00', 'Patalan', 'Patalan', 'Dikonfirmasi'),
(6, 'RAP008', 'DT002', 1, 'PATALAN', 'KRASAK 562', 15, 17, 22, 20, 17, '2020-05-01', '08:00:00', 'Patalan', 'Patalan', 'Dikonfirmasi');

-- --------------------------------------------------------

--
-- Table structure for table `daerah_tugas`
--

CREATE TABLE `daerah_tugas` (
  `id_daerah` varchar(25) NOT NULL,
  `daerah_tugas` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daerah_tugas`
--

INSERT INTO `daerah_tugas` (`id_daerah`, `daerah_tugas`) VALUES
('DT001', 'Paiton'),
('DT002', 'Besuk');

-- --------------------------------------------------------

--
-- Table structure for table `db_akses`
--

CREATE TABLE `db_akses` (
  `id_akses` varchar(25) NOT NULL,
  `nama_akses` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_akses`
--

INSERT INTO `db_akses` (`id_akses`, `nama_akses`) VALUES
('1', 'Dinas PUPR'),
('2', 'Kordinator Wilayah'),
('3', 'Pengawas Lapangan');

-- --------------------------------------------------------

--
-- Table structure for table `db_pengaduan`
--

CREATE TABLE `db_pengaduan` (
  `id_pengaduan` int(25) NOT NULL,
  `id_user` varchar(25) DEFAULT NULL,
  `id_daerah` varchar(25) DEFAULT NULL,
  `nama_sungaiPeng` varchar(250) NOT NULL,
  `nama_bendungPeng` varchar(250) NOT NULL,
  `pengaduan` text,
  `foto_pengaduan` varchar(250) DEFAULT NULL,
  `respon_pengaduan` text,
  `date_pengaduan` date DEFAULT NULL,
  `waktu_pengaduan` time DEFAULT NULL,
  `lokasi_pengaduan` text NOT NULL,
  `status_pengaduan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_pengaduan`
--

INSERT INTO `db_pengaduan` (`id_pengaduan`, `id_user`, `id_daerah`, `nama_sungaiPeng`, `nama_bendungPeng`, `pengaduan`, `foto_pengaduan`, `respon_pengaduan`, `date_pengaduan`, `waktu_pengaduan`, `lokasi_pengaduan`, `status_pengaduan`) VALUES
(1, 'RAP008', 'DT002', 'Patalan ', 'Patalan 12Ha', 'Terjadi masalah', '1589864122103_image.jpeg', 'oke', '2020-05-19', '11:55:21', '-7.7799886, 113.4054589', 'Belum Direspon');

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id_user` varchar(25) NOT NULL,
  `nip_user` varchar(30) DEFAULT NULL,
  `nama_user` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `tgl_lahir_user` date DEFAULT NULL,
  `alamat_user` varchar(30) DEFAULT NULL,
  `id_akses` varchar(25) DEFAULT NULL,
  `id_daerah` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id_user`, `nip_user`, `nama_user`, `username`, `password`, `tgl_lahir_user`, `alamat_user`, `id_akses`, `id_daerah`) VALUES
('RAD001', '1731710001', 'Admin Dinas PUPR', 'adminpupr', '$2y$10$ZDPlXDsLg2ft3Up7AHWG8uVL89qYUZxzhWKE890KzKNIrqZbBZmhC', '1998-07-15', 'JL Kyai Mugi no 99', '1', NULL),
('RAD002', '1731710002', 'Admin 1', 'admin1', '$2y$10$lT9ftvWxsYc1/ewEqBeyy.URQMgelW8wvsBH4Jd8L61/ln.8Dse1S', '1998-07-15', 'JL Kyai Mugi no 99', '1', NULL),
('RAK003', '1731710003', 'Admin Kordinator Wilayah', 'adminkorwil', '$2y$10$yxq2m5pXovr9lA0qudt6Q.6lgtYgjU8pqunmo3vcfbgVSHpDuSrgy', '1998-07-15', 'JL Kyai Mugi no 99', '2', 'DT002'),
('RAK004', '1731710004', 'Dimas Bagus WS', 'dimas', 'dimas', '1998-07-15', 'JL Kyai Mugi no 99', '2', 'DT002'),
('RAP008', '1731710001', 'coba', 'coba', '$2y$10$ZTWiinmUWny8xZZ0PXxgHOT5ScUc/f6hXrJhqhXc9RdMXlYaP7Eme', '1998-07-15', 'JL Kyai Mugi no 99', '3', 'DT002'),
('RAP009', '1731710063', 'Tigo', 'tigo', '$2y$10$Pn59d5GJxmd5TJmpP7/Sgu8Dcx78p1WNk9V84pp9SAjmupvY0cmte', '1998-07-15', 'Perum Griya Grand Citarum No.1', '3', 'DT002'),
('RAP010', '1731710063', 'qwe', 'qwe', '$2y$10$0btE1MmmVSDxJLQQA/PA2eZQlQrL7cjxhzPsuzu/eoJynx91udK3C', '1998-12-12', 'qwe', '3', 'DT002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cth_hari`
--
ALTER TABLE `cth_hari`
  ADD PRIMARY KEY (`id_hari`);

--
-- Indexes for table `cth_laporan`
--
ALTER TABLE `cth_laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_hari_laporan` (`id_hari`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `daerah_tugas`
--
ALTER TABLE `daerah_tugas`
  ADD PRIMARY KEY (`id_daerah`);

--
-- Indexes for table `db_akses`
--
ALTER TABLE `db_akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indexes for table `db_pengaduan`
--
ALTER TABLE `db_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `id_user_pengaduan` (`id_user`),
  ADD KEY `id_daerah_pengaduan` (`id_daerah`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_akses` (`id_akses`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cth_hari`
--
ALTER TABLE `cth_hari`
  MODIFY `id_hari` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cth_laporan`
--
ALTER TABLE `cth_laporan`
  MODIFY `id_laporan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_pengaduan`
--
ALTER TABLE `db_pengaduan`
  MODIFY `id_pengaduan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cth_laporan`
--
ALTER TABLE `cth_laporan`
  ADD CONSTRAINT `id_hari_laporan` FOREIGN KEY (`id_hari`) REFERENCES `cth_hari` (`id_hari`),
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `db_user` (`id_user`);

--
-- Constraints for table `db_pengaduan`
--
ALTER TABLE `db_pengaduan`
  ADD CONSTRAINT `id_daerah_pengaduan` FOREIGN KEY (`id_daerah`) REFERENCES `daerah_tugas` (`id_daerah`),
  ADD CONSTRAINT `id_user_pengaduan` FOREIGN KEY (`id_user`) REFERENCES `db_user` (`id_user`);

--
-- Constraints for table `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `id_akses` FOREIGN KEY (`id_akses`) REFERENCES `db_akses` (`id_akses`),
  ADD CONSTRAINT `id_daerah` FOREIGN KEY (`id_daerah`) REFERENCES `daerah_tugas` (`id_daerah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
