-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2021 pada 07.49
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbiot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id_absen` int(11) NOT NULL,
  `nokartu` varchar(20) NOT NULL,
  `id_kelas` int(7) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_pulang` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`id_absen`, `nokartu`, `id_kelas`, `tanggal`, `jam_masuk`, `jam_pulang`) VALUES
(47, '123', 1, '2021-11-17', '20:42:52', '21:10:17'),
(49, '123', 1, '2021-11-22', '08:08:12', '08:09:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(7) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `jurusan`) VALUES
(1, 'X RPL 1', 'Rekayasa Perangkat Lunak'),
(2, 'X RPL 2', 'Rekayasa Perangkat Lunak'),
(3, 'XI RPL 1', 'Rekayasa Perangkat Lunak'),
(4, 'XI RPL 2', 'Rekayasa Perangkat Lunak'),
(5, 'XII RPL 1', 'Rekayasa Perangkat Lunak'),
(6, 'XII RPL 2', 'Rekayasa Perangkat Lunak'),
(7, 'X TFLM 1', 'Teknik Fabrikasi Logam dan Manufaktur'),
(8, 'X TFLM 2', 'Teknik Fabrikasi Logam dan Manufaktur'),
(9, 'XI TFLM 1', 'Teknik Fabrikasi Logam dan Manufaktur'),
(10, 'XI TFLM 2', 'Teknik Fabrikasi Logam dan Manufaktur'),
(11, 'XII TFLM 1', 'Teknik Fabrikasi Logam dan Manufaktur'),
(12, 'XII TFLM 2', 'Teknik Fabrikasi Logam dan Manufaktur'),
(13, 'XIII TFLM 1', 'Teknik Fabrikasi Logam dan Manufaktur'),
(14, 'XIII TFLM 2', 'Teknik Fabrikasi Logam dan Manufaktur'),
(15, 'X TKJ 1', 'Teknik Komputer Jaringan'),
(16, 'X TKJ 2', 'Teknik Komputer Jaringan'),
(17, 'X TKJ 3', 'Teknik Komputer Jaringan'),
(18, 'XI TKJ 1', 'Teknik Komputer Jaringan'),
(19, 'XI TKJ 2', 'Teknik Komputer Jaringan'),
(20, 'XI TKJ 3', 'Teknik Komputer Jaringan'),
(21, 'XII TKJ 1', 'Teknik Komputer Jaringan'),
(22, 'XII TKJ 2', 'Teknik Komputer Jaringan'),
(23, 'XII TKJ 3', 'Teknik Komputer Jaringan'),
(24, 'X TKRO 1', 'Teknik Kendaraan Ringan dan Otomotif'),
(25, 'X TKRO 2', 'Teknik Kendaraan Ringan dan Otomotif'),
(26, 'X TKRO 3', 'Teknik Kendaraan Ringan dan Otomotif'),
(27, 'XI TKRO 1', 'Teknik Kendaraan Ringan dan Otomotif'),
(28, 'XI TKRO 2', 'Teknik Kendaraan Ringan dan Otomotif'),
(29, 'XI TKRO 3', 'Teknik Kendaraan Ringan dan Otomotif'),
(30, 'XII TKRO 1', 'Teknik Kendaraan Ringan dan Otomotif'),
(31, 'XII TKRO 2', 'Teknik Kendaraan Ringan dan Otomotif'),
(32, 'XII TKRO 3', 'Teknik Kendaraan Ringan dan Otomotif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`, `nama_admin`) VALUES
(1, 'admin', 'admin', 'adminku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_kelas` int(7) NOT NULL,
  `nokartu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `nama`, `id_kelas`, `nokartu`) VALUES
('0035754321', 'sss', 6, '89231136229');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `mode` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `mode`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmprfid`
--

CREATE TABLE `tmprfid` (
  `nokartu` varchar(20) NOT NULL,
  `idlab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `w_absen`
--

CREATE TABLE `w_absen` (
  `id_jam` int(11) NOT NULL,
  `jMasuk` time NOT NULL,
  `jMasuk_bt` time NOT NULL,
  `jPulang` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `w_absen`
--

INSERT INTO `w_absen` (`id_jam`, `jMasuk`, `jMasuk_bt`, `jPulang`) VALUES
(1, '11:02:00', '00:00:00', '00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `nokartu` (`nokartu`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tmprfid`
--
ALTER TABLE `tmprfid`
  ADD PRIMARY KEY (`nokartu`);

--
-- Indeks untuk tabel `w_absen`
--
ALTER TABLE `w_absen`
  ADD PRIMARY KEY (`id_jam`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `w_absen`
--
ALTER TABLE `w_absen`
  MODIFY `id_jam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
