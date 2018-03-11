-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11 Mar 2018 pada 12.47
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sibuku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `isbn` varchar(10) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `id_penulis` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `cover` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`isbn`, `judul_buku`, `id_penulis`, `id_kategori`, `deskripsi`, `harga`, `cover`) VALUES
('201710209', 'TRIK SEO DAN SECURITY CODEIGNITER', 1, 2, 'sample text', 60000, '16ci-security-miring.jpg'),
('2017102131', 'Seminggu Menguasai Bahasa Pemograman Kotlin', 1, 1, 'sample text', 100000, ''),
('2017102132', 'Menguasai Database Oracle Untuk Orang Awam', 1, 1, 'sample text', 10000, ''),
('2017102133', 'Pembahasan 10 Proyek PHP Untuk Tugas Akhir', 2, 1, 'sample text', 20000, ''),
('2017102134', 'Ebook Menguasai Bahasa Pemograman PHP Dan Oracle', 1, 1, 'sample text', 120000, ''),
('2017102135', '20 Judul Tugas Akhir Untuk Mahasiswa Informatika', 1, 2, 'sample text', 100000, ''),
('2017102136', 'Membangun sistem informasi rumah sakit dengan codeigniter', 4, 2, 'sample text', 90000, ''),
('2017102137', 'membangun sistem informasi sekolah dengan codeigni', 1, 2, 'sample text', 145000, ''),
('2017102138', 'Membangun layanan sms gateway dengan codeigniter dan mysql', 2, 2, 'sample text', 145000, ''),
('2017102139', 'seminggu jago codeigniter dan bootstrap', 4, 2, 'sample text', 100000, ''),
('2017102165', 'Paket Belajar Web Programming all in one', 1, 2, 'sample text', 145000, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Fiksi'),
(2, 'teknologi'),
(3, 'budaya'),
(4, 'ilmu pengetahuan sosial');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `id_penulis` int(11) NOT NULL,
  `nama_penulis` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`id_penulis`, `nama_penulis`, `email`, `no_hp`) VALUES
(1, 'nuris akbar', 'nuris.akbar@gmail.com', '089699935552'),
(2, 'hafidz muzaki', 'hafidz@gmail.com', '08563232323'),
(3, 'desi handyaani', 'desihandayani037@gmail.com', '085642216978'),
(4, 'durratul hafizah', 'hafizah@gmail.com', '089699935552');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `email`, `password`) VALUES
(2, 'Durratul Hafizah', 'hafizah@gmail.com', '$2y$04$F7OsPGXr7g.D1mEQDbLLcuOhWiCTX69PFV3MrPdiOp7WIVsLPmDKC'),
(12, 'MUHAMMAD HAFIDZ MUZAKI', 'hafid@gmail.com', '$2y$04$x64sTW/XZqehXyunluJaieUvObOqslyI9ycu1ZgIpvg1eK9LWaNBO'),
(16, 'NURIS AKBAR', 'nuris.akbar@gmail.com', '$2y$04$vtozW24qFFANDkWMySqrS.m4o5V1hVuygEhWWkOdnOfDfg/PjUw.a'),
(17, 'Wahyu Safrizal', 'wahyusafrizal@gmail.com', '$2y$04$Sz1mrbfF3gzkVK9fqiVqv.p6Db4ku3G7le1vAjomh4UMNMnxdF2nu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id_penulis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id_penulis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
