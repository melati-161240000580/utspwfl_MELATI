-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Nov 2019 pada 12.55
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` int(20) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `no_hp_lama` varchar(50) NOT NULL,
  `no_hp_baru` varchar(50) NOT NULL,
  `tgl_diubah` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id`, `nim`, `no_hp_lama`, `no_hp_baru`, `tgl_diubah`) VALUES
(1, '161240000551', '0812738282818', '08497576767', '2019-10-29 13:27:38'),
(2, '161240000551', '08497576767', '08497576767', '2019-11-01 17:14:29'),
(3, '161240000523', '0897373733', '0897373733', '2019-11-01 17:14:39'),
(4, '161240000562', '089736327', '089736327', '2019-11-01 17:14:45'),
(5, '161240000534', '0897366272', '0897366272', '2019-11-01 17:14:51'),
(6, '161240000562', '089736327', '089736327', '2019-11-01 17:16:44'),
(7, '161240000562', '089736327', '089736327', '2019-11-01 17:17:04'),
(8, '161240000562', '089736327', '089736327', '2019-11-01 17:17:18'),
(9, '161240000534', '0897366272', '0897366272', '2019-11-01 17:26:08'),
(10, '161240000523', '0897373733', '0897373733', '2019-11-01 17:26:17'),
(11, '161240000551', '08497576767', '08497576767', '2019-11-01 17:26:25'),
(12, '161240000523', '0897373733', '0897373733', '2019-11-01 17:28:10'),
(13, '1612400000666', '089886868', '089886868', '2019-11-11 14:33:07'),
(14, '161240000567', '089766555', '089766555123', '2019-11-11 18:04:43'),
(15, '161240000512', '089377483', '089377483678', '2019-11-11 18:04:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(20) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama_mhs`, `jenis_kelamin`, `alamat`, `no_hp`) VALUES
(3, '161240000551', 'retno nur cahyanti', 'Laki-laki', 'demaan', '08497576767'),
(7, '161240000534', 'farin hernando', 'Perempuan', 'karang gondang', '0897366272'),
(12, '161240000999', 'hadi', 'Laki-laki', 'Jepara', '089765432123'),
(13, '161240000580', 'melati nur indah sari', 'Perempuan', 'ngabul', '085713722804');

--
-- Trigger `mahasiswa`
--
DELIMITER $$
CREATE TRIGGER `membuat_log` BEFORE UPDATE ON `mahasiswa` FOR EACH ROW INSERT INTO log
SET nim = old.nim,
no_hp_lama = old.no_hp,
no_hp_baru = new.no_hp,
tgl_diubah = now()
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
