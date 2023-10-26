-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 05, 2019 at 11:49 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pkl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absensi`
--

CREATE TABLE `tb_absensi` (
  `id_absen` int(11) NOT NULL,
  `perusahaan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `tanggal` date NOT NULL DEFAULT current_timestamp(),
  `jam` time NOT NULL DEFAULT current_timestamp(),
  `siswa` varchar(110) NOT NULL,
  `jurusan` varchar(10) NOT NULL,
  `foto` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_absensi`
--

INSERT INTO `tb_absensi` (`id_absen`, `perusahaan`, `alamat`, `tanggal`, `jam`, `siswa`, `jurusan`, `foto`) VALUES
(19, 'Grab', 'bandung', '2019-07-29', '10:52:03', 'kepo', 'TKR', 'image_1564372323.png'),
(21, 'Gojek', 'Jakarta Pusat', '2019-07-29', '14:19:45', 'eko eko kkk', 'RPL', 'image_1564384785.png'),
(33, 'Grab', 'bandung', '2019-07-29', '19:27:22', 'oke', 'RPL', 'image_1564403242.png'),
(34, 'Grab', 'bandung', '2019-07-29', '19:27:27', 'oke', 'RPL', 'image_1564403247.png'),
(37, 'Raihan Tech', 'sad', '2019-07-29', '21:26:10', 'Michael Muhammad Raihan', 'RPL', 'image_1564410370.png'),
(61, 'Grab', 'bandung', '2019-07-30', '12:17:51', 'kepo', 'TKR', 'image_1564463871.png'),
(63, 'Gojek', 'Jakarta Pusat', '2019-07-30', '13:23:09', 'eko eko kkk', 'RPL', 'image_1564467789.png'),
(65, 'Raihan Tech', 'sad', '2019-07-30', '23:22:37', 'Michael Muhammad Raihan', 'RPL', 'image_1564503757.png'),
(66, 'Grab', 'bandung', '2019-07-30', '23:24:04', 'oke', 'RPL', 'image_1564503844.png'),
(67, 'SMK MUHAMMADIYAH 1 SUKOHARJO', 'jln anggrek no 2 sukoharjo', '2019-07-31', '10:52:09', 'ajik', 'RPL', 'image_1564545129.png'),
(68, 'Gojek', 'Jakarta Pusat', '2019-07-31', '14:33:10', 'ice', 'TKR', 'image_1564558390.png'),
(69, 'Gojek', 'Jakarta Pusat', '2019-07-31', '21:24:16', 'eko eko kkk', 'RPL', 'image_1564583056.png'),
(70, 'Gojek', 'Jakarta Pusat', '2019-08-01', '15:54:10', 'sanji', 'RPL', 'image_1564649650.png'),
(71, 'Gojek', 'Jakarta Pusat', '2019-08-01', '16:36:20', 'eko eko kkk', 'RPL', 'image_1564652180.png'),
(72, 'Gojek', 'Jakarta Pusat', '2019-08-02', '07:05:13', 'eko eko kkk', 'RPL', 'image_1564704313.png'),
(73, 'Gojek', 'Jakarta Pusat', '2019-08-02', '07:37:53', 'sanji', 'RPL', 'image_1564706273.png'),
(74, 'Grab', 'bandung', '2019-08-02', '07:38:39', 'oke', 'RPL', 'image_1564706319.png'),
(75, 'Gojek', 'Jakarta Pusat', '2019-08-02', '07:39:08', 'ice', 'TKR', 'image_1564706348.png'),
(78, 'Raihan Tech', 'sad', '2019-08-02', '07:40:31', 'Michael Muhammad Raihan', 'RPL', 'image_1564706431.png'),
(79, 'Kepo Tea', 'Sukoharjo', '2019-08-05', '12:55:08', 'pedas', 'TKJ', 'image_1564984508.png'),
(90, 'Gojek', 'Jakarta Pusat', '2019-08-06', '10:13:48', 'eko eko kkk', 'RPL', 'image_1565061228.png'),
(92, 'Raihan Tech', 'sad', '2019-08-06', '22:32:36', 'Michael Muhammad Raihan', 'RPL', 'image_1565105556.png'),
(93, 'Raihan Tech', 'sad', '2019-08-07', '10:17:06', 'Michael Muhammad Raihan', 'RPL', 'image_1565147826.png'),
(94, 'Gojek', 'Jakarta Pusat', '2019-08-13', '18:16:38', 'sanji', 'TBSM', 'image_1565694998.png'),
(103, 'Gojek', 'Jakarta Pusat', '2019-08-30', '13:45:39', 'eko', 'RPL', 'image_1567147539.png'),
(104, 'Gojek', 'Jakarta Pusat', '2019-09-02', '08:59:35', 'eko', 'RPL', 'image_1567389575.png'),
(105, 'Gojek', 'Jakarta Pusat', '2019-09-03', '16:14:38', 'eko', 'RPL', 'image_1567502078.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_absensi_manual`
--

CREATE TABLE `tb_absensi_manual` (
  `id_manual` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `sakit` int(11) NOT NULL,
  `ijin` int(11) NOT NULL,
  `masuk` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_absensi_manual`
--

INSERT INTO `tb_absensi_manual` (`id_manual`, `tahun`, `bulan`, `sakit`, `ijin`, `masuk`, `id_siswa`) VALUES
(1, 2019, 'januari', 0, 0, 29, 1),
(2, 2019, 'Februari', 0, 0, 29, 1),
(5, 2019, 'Maret', 0, 0, 29, 1),
(6, 2019, 'Februari', 1, 2, 28, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama`, `user`, `pass`, `foto`, `level`) VALUES
(1, 'admin', 'admin', 'admin', 'man.png', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berkas`
--

CREATE TABLE `tb_berkas` (
  `id_berkas` int(11) NOT NULL,
  `nama_berkas` varchar(100) NOT NULL,
  `file_berkas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berkas`
--

INSERT INTO `tb_berkas` (`id_berkas`, `nama_berkas`, `file_berkas`) VALUES
(1, 'Panduan Prakerin', 'tset.txt'),
(2, 'Tata Tertib', 'Buku_SKI_kelas_XI_MAN.doc'),
(3, 'Buku Kepo', 'BUKU_SKI_KELAS_XI_MAN_ANAYAR.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tb_chat`
--

CREATE TABLE `tb_chat` (
  `id_chat` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `kepada` varchar(100) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_chat`
--

INSERT INTO `tb_chat` (`id_chat`, `id_siswa`, `pesan`, `kepada`, `id_guru`) VALUES
(67, 16, 'koe', 'admin', 0),
(68, 16, 'ad', 'siswa', 0),
(69, 16, 'adaaada', 'siswa', 0),
(70, 16, 'ff', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nama`, `user`, `pass`) VALUES
(1, 'guru', 'guru', 'guru'),
(2, 'shaim', 'shaim', 'shaim'),
(3, 'kompek', 'kompek', 'kompek'),
(4, 'aaaa', 'a', 'a'),
(8, 'slamet', 'slamet', 'slamet');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_singkat` varchar(100) NOT NULL,
  `nama_panjang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id_jurusan`, `nama_singkat`, `nama_panjang`) VALUES
(1, 'RPL', 'Rekayasa Perangkat Lunak'),
(2, 'TKJ', 'Teknik Komputer Jaringan'),
(3, 'TP', 'Teknik Permesinan'),
(4, 'TKR', 'Teknik Kendaraan Ringan'),
(5, 'TBSM', 'Teknik Bisnis Kendaraan Ringan'),
(6, 'TEI', 'Teknik Elektronika Industri'),
(7, 'TI', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `tb_monitoring`
--

CREATE TABLE `tb_monitoring` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `kejadian` text NOT NULL,
  `keterangan` text NOT NULL,
  `rekomendasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_monitoring`
--

INSERT INTO `tb_monitoring` (`id`, `id_siswa`, `id_guru`, `nama_perusahaan`, `kejadian`, `keterangan`, `rekomendasi`) VALUES
(4, 1, 1, 'Raihan Tech', 'Bagus Sregep ', 'Sregep masuk Terus joss', 'Diberikan nilai yang bagus'),
(5, 4, 2, 'Grab', 'MBOLOS TERUS', 'MBOLOS WAE', 'JAK NGOPI'),
(6, 2, 2, 'Gojek', 'SIP LAH', 'GAME TERUS', 'di jak PS\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ngungsi`
--

CREATE TABLE `tb_ngungsi` (
  `id` int(11) NOT NULL,
  `kepada` varchar(100) NOT NULL,
  `id_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ngungsi`
--

INSERT INTO `tb_ngungsi` (`id`, `kepada`, `id_siswa`) VALUES
(36, 'admin', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id_nilai` int(11) NOT NULL,
  `kerajinan` int(100) NOT NULL,
  `prestasi` int(100) NOT NULL,
  `disiplin` int(100) NOT NULL,
  `kerjasama` int(100) NOT NULL,
  `inisiatif` int(100) NOT NULL,
  `tanggung_jawab` int(100) NOT NULL,
  `ujian_prakerin` int(100) NOT NULL,
  `id_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`id_nilai`, `kerajinan`, `prestasi`, `disiplin`, `kerjasama`, `inisiatif`, `tanggung_jawab`, `ujian_prakerin`, `id_siswa`) VALUES
(1, 99, 90, 98, 9, 90, 90, 90, 2),
(2, 100, 70, 70, 80, 70, 60, 50, 3),
(3, 76, 70, 70, 7, 70, 70, 70, 4),
(4, 20, 30, 30, 30, 7, 80, 8, 5),
(5, 99, 9, 99, 99, 9, 9, 99, 7),
(6, 77, 8, 8, 88, 8, 8, 8, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tb_notif`
--

CREATE TABLE `tb_notif` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `id_siswa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_notif`
--

INSERT INTO `tb_notif` (`id`, `nama_perusahaan`, `pesan`, `id_siswa`) VALUES
(17, 'Gojek', 'Selamat tempat pkl anda telah terkonfirmasi!', '5'),
(22, 'Gojek', 'Maaf jurusan anda tidak sesuai yang di butuhkan perusahaan!', '12'),
(26, '', 'kamu memiliki pesan baru', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sementara`
--

CREATE TABLE `tb_sementara` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `nama_pimpinan` varchar(100) NOT NULL,
  `nama_pembimbing` varchar(100) NOT NULL,
  `jurusan_perusahaan` varchar(100) NOT NULL,
  `bukti` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `cp` varchar(100) NOT NULL,
  `id_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `jurusan` varchar(5) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `jk` enum('P','L') NOT NULL,
  `diskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `kelas`, `jurusan`, `user`, `pass`, `foto`, `jk`, `diskripsi`) VALUES
(16, 2, 'eko', 'XI  TKR 3', 'RPL', 'eko', 'e5ea9b6d71086dfef3a15f726abcc5bf', 'man.png', 'L', 'Saya adalah programmer\r\noi[removed]alert&#40;\"hack\"&#41;[removed]\r\nbody { display: none; }\r\n\r\nSELECT * FROM tb_siswa'),
(17, 2, 'kepo', 'XII RPL 2', 'RPL', 'kepo', '41a93a89579ff675601eb96ff2e9b37f', 'man.png', 'L', 'Oke, saya adalah programmer. how about you brother? ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tampung`
--

CREATE TABLE `tb_tampung` (
  `id` int(11) NOT NULL,
  `kepada` varchar(100) NOT NULL,
  `id_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tampung`
--

INSERT INTO `tb_tampung` (`id`, `kepada`, `id_siswa`) VALUES
(39, 'admin', 16),
(40, 'admin', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat_rekomendasi`
--

CREATE TABLE `tb_tempat_rekomendasi` (
  `id_rekomendasi` int(11) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `jurusan_perusahaan` varchar(100) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `cp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat_rekomendasi`
--

INSERT INTO `tb_tempat_rekomendasi` (`id_rekomendasi`, `nama_perusahaan`, `jurusan_perusahaan`, `visi`, `misi`, `alamat`, `foto`, `cp`) VALUES
(1, 'Gojek', 'RPL, TKJ, TP, TKR, TBSM', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores sunt a distinctio libero magnam quaerat praesentium omnis. Doloremque explicabo molestias unde voluptatum, atque nesciunt voluptatibus necessitatibus a! Incidunt, porro exercitationem?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores sunt a distinctio libero magnam quaerat praesentium omnis. Doloremque explicabo molestias unde voluptatum, atque nesciunt voluptatibus necessitatibus a! Incidunt, porro exercitationem?', 'Jakarta Pusat', 'Cuplikan_layar_dari_2019-07-01_09-15-091.png', '08178676'),
(2, 'Grab', 'RPL, TKJ, TKR', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores sunt a distinctio libero magnam quaerat praesentium omnis. Doloremque explicabo molestias unde voluptatum, atque nesciunt voluptatibus necessitatibus a! Incidunt, porro exercitationem?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores sunt a distinctio libero magnam quaerat praesentium omnis. Doloremque explicabo molestias unde voluptatum, atque nesciunt voluptatibus necessitatibus a! Incidunt, porro exercitationem?', 'bandung', 'sorcecodeAdmin1.png', '098765222'),
(3, 'Raihan Tech', 'TKJ, TP', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores sunt a distinctio libero magnam quaerat praesentium omnis. Doloremque explicabo molestias unde voluptatum, atque nesciunt voluptatibus necessitatibus a! Incidunt, porro exercitationem?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores sunt a distinctio libero magnam quaerat praesentium omnis. Doloremque explicabo molestias unde voluptatum, atque nesciunt voluptatibus necessitatibus a! Incidunt, porro exercitationem?', 'sad', '091.png', '0198675654'),
(4, 'Tech Rai', 'RPL, TP', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores sunt a distinctio libero magnam quaerat praesentium omnis. Doloremque explicabo molestias unde voluptatum, atque nesciunt voluptatibus necessitatibus a! Incidunt, porro exercitationem?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores sunt a distinctio libero magnam quaerat praesentium omnis. Doloremque explicabo molestias unde voluptatum, atque nesciunt voluptatibus necessitatibus a! Incidunt, porro exercitationem?', 'Sukoharjo', 'gofood1.jpg', '098765'),
(5, 'GoJek', 'RPL, TKJ', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores sunt a distinctio libero magnam quaerat praesentium omnis. Doloremque explicabo molestias unde voluptatum, atque nesciunt voluptatibus necessitatibus a! Incidunt, porro exercitationem?', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores sunt a distinctio libero magnam quaerat praesentium omnis. Doloremque explicabo molestias unde voluptatum, atque nesciunt voluptatibus necessitatibus a! Incidunt, porro exercitationem?', 'Ban Matu', 'Cuplikan_layar_dari_2019-07-01_09-15-0911.png', '0987654'),
(7, 'Aqua', 'RPL, TKJ, TP, TKR, TBSM', '', '', 'Sukoharjo, Jawa Tengah', '0111.png', '0987652'),
(8, 'Kepo Media', 'RPL', 'sukses', 'suksess', 'suko', 'team-1-800x8002.jpg', 'Raihan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat_siswa`
--

CREATE TABLE `tb_tempat_siswa` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `nama_pimpinan` varchar(100) NOT NULL,
  `nama_pembimbing` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `cp` varchar(100) NOT NULL,
  `id_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat_siswa`
--

INSERT INTO `tb_tempat_siswa` (`id`, `nama_perusahaan`, `nama_pimpinan`, `nama_pembimbing`, `alamat`, `cp`, `id_siswa`) VALUES
(6, 'Gojek', 'Raihan Pinter', 'Raihan Oke', 'Jakarta Pusat', '08178676', 2),
(7, 'Grab', 'AkuK', 'Raihan Sip', 'bandung', '098765222', 3),
(8, 'Grab', 'Aku COY', 'Raihan Raihan', 'bandung', '098765222', 4),
(9, 'Raihan Tech', 'Rai', 'Raihan Muhammad', 'sad', '0198675654', 1),
(12, 'Gojek', 'Raihan Oke Genah', '', 'Jakarta Pusat', '08178676', 7),
(13, 'Gojek', 'Raihano', '', 'Jakarta Pusat', '08178676', 5),
(14, 'cek', 'cek', '', 'cek', 'cek@gmail.com', 8),
(16, 'Kepo Tea', 'Raihan', 'RaihanTech', 'Sukoharjo', 'kepotea@gmail.com', 11),
(17, 'Gojek', 'Raihan', '', 'Jakarta Pusat', '08178676', 15),
(18, 'Gojek', 'Saya', '', 'Jakarta Pusat', '08178676', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `tb_absensi_manual`
--
ALTER TABLE `tb_absensi_manual`
  ADD PRIMARY KEY (`id_manual`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_berkas`
--
ALTER TABLE `tb_berkas`
  ADD PRIMARY KEY (`id_berkas`);

--
-- Indexes for table `tb_chat`
--
ALTER TABLE `tb_chat`
  ADD PRIMARY KEY (`id_chat`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tb_monitoring`
--
ALTER TABLE `tb_monitoring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ngungsi`
--
ALTER TABLE `tb_ngungsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tb_notif`
--
ALTER TABLE `tb_notif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sementara`
--
ALTER TABLE `tb_sementara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_tampung`
--
ALTER TABLE `tb_tampung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tempat_rekomendasi`
--
ALTER TABLE `tb_tempat_rekomendasi`
  ADD PRIMARY KEY (`id_rekomendasi`);

--
-- Indexes for table `tb_tempat_siswa`
--
ALTER TABLE `tb_tempat_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tb_absensi_manual`
--
ALTER TABLE `tb_absensi_manual`
  MODIFY `id_manual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_berkas`
--
ALTER TABLE `tb_berkas`
  MODIFY `id_berkas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_chat`
--
ALTER TABLE `tb_chat`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_monitoring`
--
ALTER TABLE `tb_monitoring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_ngungsi`
--
ALTER TABLE `tb_ngungsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_notif`
--
ALTER TABLE `tb_notif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_sementara`
--
ALTER TABLE `tb_sementara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_tampung`
--
ALTER TABLE `tb_tampung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tb_tempat_rekomendasi`
--
ALTER TABLE `tb_tempat_rekomendasi`
  MODIFY `id_rekomendasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_tempat_siswa`
--
ALTER TABLE `tb_tempat_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
