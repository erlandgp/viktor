-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Apr 2025 pada 04.38
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku_tamu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `id` int(11) NOT NULL,
  `pilih_kategori` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `nomor_hp_telepon` varchar(20) NOT NULL,
  `biro_tujuan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `keperluan` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tamu`
--

INSERT INTO `tamu` (`id`, `pilih_kategori`, `nama`, `instansi`, `nomor_hp_telepon`, `biro_tujuan`, `alamat`, `keperluan`, `tanggal`) VALUES
(9, 'tamu', 'Budi', 'humas', '0891234567', 'Biro Pemerintahan, Otonomi Daerah dan Kerjasama', 'semarang', 'cek ', '0000-00-00'),
(10, 'tamu', 'riski', 'protokol', '99876543', 'Biro Infrastruktur dan Sumber Daya Alam', 'pahlawan', 'cek', '0000-00-00'),
(11, 'tamu', 'vwn', 'skretaris', '21343412324', 'Biro Organisasi', 'semarang', 'test', '0000-00-00'),
(12, 'tamu', 'vwn', 'skretaris', '21343412324', 'Biro Organisasi', 'semarang', 'test', '0000-00-00'),
(13, 'tamu', 'vwn', 'skretaris', '21343412324', 'Biro Organisasi', 'semarang', 'test', '0000-00-00'),
(14, 'Dinas', 'oki', 'setda', '0891234567', 'Biro Infrastruktur dan Sumber Daya Alam', 'kab.smg', 'coba', '0000-00-00'),
(15, 'Dinas', 'vwn', 'skretaris', '0891234567', 'Biro Pemerintahan, Otonomi Daerah dan Kerjasama', 'semarang', 'test', '0000-00-00'),
(16, 'Dinas', 'vwn', 'skretaris', '0891234567', 'Biro Pemerintahan, Otonomi Daerah dan Kerjasama', 'semarang', 'test', '0000-00-00'),
(17, 'Dinas', 'vwn', 'skretaris', '0891234567', 'Biro Pemerintahan, Otonomi Daerah dan Kerjasama', 'semarang', 'test', '0000-00-00'),
(18, 'Umum', 'ruwanto', 'skretaris', '08323456789', 'Biro Pemerintahan, Otonomi Daerah dan Kerjasama', 'semarang', 'okei', '2025-03-21'),
(19, 'Umum', 'ruwanto', 'skretaris', '08323456789', 'Biro Pemerintahan, Otonomi Daerah dan Kerjasama', 'semarang', 'okei', '2025-03-21'),
(20, 'Umum', 'Budi', 'skretaris', '21343412324', 'Biro Pemerintahan, Otonomi Daerah dan Kerjasama', 'pahlawan', 'test', '2025-03-26'),
(21, 'Umum', 'Budi', 'skretaris', '21343412324', 'Biro Pemerintahan, Otonomi Daerah dan Kerjasama', 'pahlawan', 'test', '2025-03-26'),
(34, 'Dinas', 'Budi', 'skretaris', '086123456789', 'Biro Hukum', 'DIWAK', 'fsghjklk', '2025-03-26'),
(35, 'Dinas', 'bijer', 'skretaris', '098765432456', 'Biro Perekonomian', 'kendal', 'lain lain', '2025-04-15'),
(36, 'Dinas', 'bayu', 'setda', '081234567890', 'Biro Infrastruktur dan Sumber Daya Alam', 'semarang', 'test', '2025-04-15'),
(37, 'Dinas', 'bayu', 'setda', '081234567890', 'Biro Infrastruktur dan Sumber Daya Alam', 'semarang', 'test', '2025-04-15'),
(38, 'Dinas', 'bayu', 'setda', '081234567890', 'Biro Infrastruktur dan Sumber Daya Alam', 'semarang', 'test', '2025-04-15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
