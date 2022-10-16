-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2022 at 10:07 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_pw_uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `gambar`, `jumlah`) VALUES
(1, 'The Mind of A Leader', 'fotobuku_TheMindOfALeader.jpg', 3),
(3, 'Kereta Utara', 'fotobuku_6337f0c872d4b6.22087486.png', 20),
(5, 'Buku Tamu extra', 'fotobuku_6338011e6fd2b6.77077100.png', 10),
(6, 'BBC Nieuws', 'fotobuku_633d10149b23d7.31417386.png', 0),
(9, 'Moby Dick', 'fotobuku_634126ff897d79.47015435.jpg', 4),
(10, 'Minecraft guide for crafting', 'fotobuku_6341278d7e16b3.08381197.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `kritik_saran`
--

CREATE TABLE `kritik_saran` (
  `id` int(10) NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `konten` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_kirim` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kritik_saran`
--

INSERT INTO `kritik_saran` (`id`, `id_user`, `judul`, `konten`, `tanggal_kirim`) VALUES
(1, 10, '123', 'PRO DANGDUT 444', '2022-10-08 14:51:27'),
(2, 4, 'Kritik buku tamu', 'bukunya sangat jelek sekali', '2022-10-07 16:11:58'),
(3, 10, '123', '123', '2022-10-08 00:00:00'),
(11, 16, 'Ini Komentar/ ini saran', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '2022-10-08 17:10:08'),
(17, 4, '4', '4', '2022-10-08 14:51:28'),
(18, 16, 'Ini Komentar', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '2022-10-08 17:10:38'),
(19, 10, 'WABUP BELU PASTIKAN PENANGANAN SAMPAH SUDAH TERKENDALI', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vestibulum ut est sit amet tristique. Aenean sollicitudin diam eget nunc aliquet, eu interdum erat tincidunt. Duis sed magna ligula. Integer bibendum ex et ipsum malesuada, sit amet finibus', '2022-10-08 17:09:44'),
(20, 4, '1231312312', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia volupt', '2022-10-08 17:11:55'),
(21, 4, '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, t', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia volupt', '2022-10-08 17:16:04'),
(22, 4, 'carousel', 'carouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouse', '2022-10-08 17:26:14'),
(24, 4, 'asd', 'carouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouselcarouse', '2022-10-08 17:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_buku` int(10) UNSIGNED NOT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `id_user`, `id_buku`, `tanggal_pinjam`, `tanggal_kembali`, `status`) VALUES
(1, 4, 1, '2022-10-04', '2022-10-01', 0),
(2, 1, 1, '2022-10-01', '2022-10-01', 0),
(3, 1, 1, '2022-10-01', '2022-10-08', 0),
(4, 1, 1, '2022-10-01', '2022-10-01', 0),
(5, 1, 1, '2022-10-01', '2022-10-01', 0),
(6, 1, 1, '2022-10-01', '2022-10-01', 0),
(7, 4, 1, '2022-10-01', '2022-10-01', 0),
(8, 15, 1, '2022-10-01', '2022-10-08', 1),
(9, 4, 1, '2022-10-01', '2022-10-01', 0),
(11, 4, 1, '2022-10-01', '2022-10-01', 0),
(13, 16, 1, '2022-10-01', '2022-10-07', 0),
(16, 4, 1, '2022-10-01', '2022-10-08', 1),
(17, 4, 3, '2022-10-01', '2022-10-08', 1),
(18, 10, 1, '2022-10-01', '2022-10-01', 0),
(19, 10, 1, '2022-10-01', '2022-10-07', 0),
(23, 10, 5, '2022-10-01', '2022-10-09', 0),
(25, 16, 3, '2022-10-07', '2022-10-08', 0),
(26, 10, 6, '2022-10-08', '2022-10-15', 1),
(27, 16, 1, '2022-10-08', '2022-10-15', 1),
(28, 16, 5, '2022-10-08', '2022-10-08', 0),
(29, 4, 5, '2022-10-08', '2022-10-08', 0),
(30, 16, 10, '2022-10-08', '2022-10-15', 1),
(31, 4, 10, '2022-10-08', '2022-10-15', 1),
(32, 19, 10, '2022-10-08', '2022-10-15', 1),
(33, 4, 9, '2022-10-08', '2022-10-15', 1),
(34, 10, 1, '2022-10-08', '2022-10-08', 0),
(35, 10, 5, '2022-10-09', '2022-10-09', 0),
(36, 10, 10, '2022-10-09', '2022-10-09', 0),
(37, 10, 1, '2022-10-09', '2022-10-09', 0),
(38, 10, 1, '2022-10-09', '2022-10-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reservasi_ruang_baca`
--

CREATE TABLE `reservasi_ruang_baca` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_ruang` int(10) UNSIGNED NOT NULL,
  `tanggal` date DEFAULT NULL,
  `sesi` tinyint(4) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservasi_ruang_baca`
--

INSERT INTO `reservasi_ruang_baca` (`id`, `id_user`, `id_ruang`, `tanggal`, `sesi`, `status`) VALUES
(4, 10, 3, '2022-10-01', 3, 0),
(5, 10, 2, '2022-10-27', 3, 1),
(6, 16, 2, '2022-10-09', 2, 1),
(7, 16, 3, '2022-10-09', 1, 1),
(8, 4, 3, '2022-10-23', 3, 1),
(9, 10, 2, '2022-10-19', 3, 0),
(10, 10, 2, '2022-10-15', 3, 0),
(13, 16, 4, '2022-10-09', 1, 1),
(15, 4, 4, '2022-10-09', 3, 1),
(19, 4, 2, '2022-10-19', 4, 0),
(20, 16, 2, '2022-10-11', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ruang_baca`
--

CREATE TABLE `ruang_baca` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_ruang` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kapasitas` int(10) NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruang_baca`
--

INSERT INTO `ruang_baca` (`id`, `nama_ruang`, `deskripsi`, `kapasitas`, `gambar`) VALUES
(1, 'Ruang Baca 1', 'Ruang Baca 1 adalah ruang baca dengan ukuran terbesar, dilengkapi fasilitas seperti AC, TV 48 inch, serta kursi untuk 12 orang.', 12, 'ruang1.png'),
(2, 'Ruang Meeting 1', 'Ruang Baca 2 adalah ruang baca ukuran kecil, dapat menampung hingga 6 orang di kursi.', 6, 'ruangBaca2.webp'),
(3, 'Bilik Renungan 1', 'Kamar renungan yang dapat menampung hingga 3 orang dalam 1 bangku. Tersedia 1 buah TV 14 inch.', 3, 'ruangBaca3.webp'),
(4, 'Ruang Baca 2', 'Ruang ini bisa digunakan untuk meeting ataupun kerja kelompok. Mahasiswa dapat menggunakan ini untuk kerja kelompok serta meeting. Ruangnan ini tersedia 2 kursi sofa panjang, 1 meja bundar, 2 kursi bantal, AC, lemari, dan lampu indah. Ruangan ini bisa mencakup 10 orang', 10, 'ruangBaca4.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `nama`, `foto`, `role`) VALUES
(1, 'admin', '$2y$10$j6fR8II1dmVqRxSRx6cCB.YwLDDxjHnI.dCdF70L4a6v3nll7oIRu', 'Administrasi Minecraft', 'fotouser_634129a23a5fa8.45841245.png', 'admin'),
(4, 'danielricky33@yahoo.com', '$2y$10$meyDtFLAfkXHFiBXnXtukeBbZtoTUgSdTfhOumcr.7M92TAkSNSEi', 'Riq', 'fotouser_634129c9d40148.37562812.jpg', 'user'),
(10, 'jollyfrankle3@gmail.com', '$2y$10$meyDtFLAfkXHFiBXnXtukeBbZtoTUgSdTfhOumcr.7M92TAkSNSEi', 'Jolly Hans Frankle', 'fotouser_63414e217bf305.71975676.png', 'user'),
(11, 'jol4yfrankle3@gmail.com', '$2y$10$Ds3QQAI9QDdyKcO50slzbuj0V05e.OzFVkxrm4cthGn1V2v2ba.sm', 'Jolly 2', NULL, 'user'),
(12, 'jollyfrankle4@gmail.com', '$2y$10$ESeBFmjZPXJzZMIqja4b/.TC6UB5PtpF7w4T0XwkPgcHboSfv97ta', 'qweqe', 'fotouser_6337b71e074270.37070299.png', 'user'),
(14, '123@ee.ww', '$2y$10$pcwDS49NB7NPTG8FPxjK4ex6bR21lc9MrGfQhajFBA.3bHhq3FQRC', '123', 'fotouser_6337d00c434b63.41400932.png', 'user'),
(15, 'krisna@gmail.com', '$2y$10$zmS1q2zOMojIrntBnic32eE8p9wW1LawEzrXuKt.brQHAZtXN/5Mm', 'krisnarata', 'fotouser_6337d021cfff12.29895413.jpg', 'user'),
(16, 'krisnarata2@gmail.com', '$2y$10$P9CRL04ERpeHrArfF.Dw2uJACYGqS9gLww91l7U3G5qZqoTfDgMfy', 'krisna', 'fotouser_6337fe265d2e48.49849435.jpg', 'user'),
(17, 'User@gmail.com', '$2y$10$49h9q0xgqQd92YCJ7gLA2OEfLBapRebwiCPQfgICHVbZj3lbiCt26', 'User', 'fotouser_63380bdb066974.63308337.jpg', 'user'),
(18, 'danielricky1404@yahoo.com', '$2y$10$Sr80Ogl1Dc7MUY9cKGuya.VSiSyruy9B60e.8eXtyx7hInWlmzmoe', 'Daniel Ricky Alexander', 'fotouser_63380cb37565f7.89475995.png', 'user'),
(19, 'Email@mail.com', '$2y$10$fzAYc45LDCQm6sQQJ4utOeLglPfeL8nRWUpqYp5HvjsqX79eySCq6', 'User', 'fotouser_634128b7839327.61839312.jpg', 'user'),
(20, '123@r', '$2y$10$R01gdGgpSBCrvzhKBBI4G.4hbjM0lzX4V0OsuSd9Ot6FyAR22Fx92', '123', 'fotouser_634128c1e61392.97962267.png', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK id_user` (`id_user`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK buku` (`id_buku`),
  ADD KEY `FK user` (`id_user`);

--
-- Indexes for table `reservasi_ruang_baca`
--
ALTER TABLE `reservasi_ruang_baca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user` (`id_user`),
  ADD KEY `FK_ruang` (`id_ruang`),
  ADD KEY `tanggal` (`tanggal`),
  ADD KEY `sesi` (`sesi`);

--
-- Indexes for table `ruang_baca`
--
ALTER TABLE `ruang_baca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `reservasi_ruang_baca`
--
ALTER TABLE `reservasi_ruang_baca`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ruang_baca`
--
ALTER TABLE `ruang_baca`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  ADD CONSTRAINT `FK id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `FK buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservasi_ruang_baca`
--
ALTER TABLE `reservasi_ruang_baca`
  ADD CONSTRAINT `FK_ruang` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_baca` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;