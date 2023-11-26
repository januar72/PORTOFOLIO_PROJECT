-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8111
-- Waktu pembuatan: 26 Nov 2023 pada 14.16
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_car`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `gambar` varchar(500) NOT NULL,
  `tgl_muat` varchar(255) NOT NULL,
  `nm_penulis` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_media`
--

CREATE TABLE `tb_media` (
  `id_soc` int(11) NOT NULL,
  `yt` varchar(255) NOT NULL,
  `tiktok` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `ig` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id_pesan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hp` varchar(255) NOT NULL,
  `pesan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_project`
--

CREATE TABLE `tb_project` (
  `id_prj` int(11) NOT NULL,
  `gam_awl` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tgl` varchar(255) NOT NULL,
  `pelanggan` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `isi` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `jabatan`, `status`, `gambar`) VALUES
(9, 'lampur', 'lampur', '123', 'Admin', 'Aktif', 'aku.jpg'),
(10, 'jen', 'jen', '123', 'Admin', 'Aktif', '408dabf94cea80bb9d359a6e4472886b.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `tb_media`
--
ALTER TABLE `tb_media`
  ADD PRIMARY KEY (`id_soc`);

--
-- Indeks untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `tb_project`
--
ALTER TABLE `tb_project`
  ADD PRIMARY KEY (`id_prj`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_media`
--
ALTER TABLE `tb_media`
  MODIFY `id_soc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_project`
--
ALTER TABLE `tb_project`
  MODIFY `id_prj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
