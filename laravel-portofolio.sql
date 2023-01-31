-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 05:38 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-portofolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'Andika Permana Putra', '<p>Haii</p>', '2023-01-24 06:51:45', '2023-01-24 06:51:45'),
(2, 'Interest', '<p>interest</p>', '2023-01-30 02:50:51', '2023-01-30 02:50:51'),
(3, 'Award', '<ul><li>PERINGKAT 10 BESAR KARYA ILMIAH SMART CITY DI KOTA GRESIK&nbsp;</li></ul>', '2023-01-30 02:51:35', '2023-01-30 03:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, '_language', 'Java, php, python', '2023-01-14 03:35:47', '2023-01-19 02:13:53'),
(2, '_workflow', '<ul><li>GITLAB</li><li>GITHUB</li></ul>', '2023-01-14 03:35:47', '2023-01-31 03:34:32'),
(3, '_foto', '230125094809.jpg', '2023-01-20 03:00:57', '2023-01-25 02:09:48'),
(4, '_email', 'andikapp1998@gmail.com', '2023-01-20 03:00:58', '2023-01-20 03:06:31'),
(5, '_halaman_about', '1', '2023-01-24 07:00:21', '2023-01-24 07:00:21'),
(6, '_kota', 'Gresik', '2023-01-25 02:09:48', '2023-01-25 02:09:48'),
(7, '_provinsi', 'Jawa Timur', '2023-01-25 02:09:48', '2023-01-25 02:17:02'),
(8, '_nohp', '085130268625', '2023-01-25 02:09:48', '2023-01-25 02:09:48'),
(9, '_facebook', 'https://www.facebook.com/andika.arwet', '2023-01-25 02:09:48', '2023-01-25 02:09:48'),
(10, '_twitter', 'https://twitter.com/AndikaP63498406', '2023-01-25 02:09:48', '2023-01-25 02:09:48'),
(12, '_github', 'https://github.com/andikapp98', '2023-01-25 02:09:48', '2023-01-25 02:09:48'),
(15, '_linkedin', 'https://www.linkedin.com/in/andika-permana-putra-a391231ab/', '2023-01-25 02:20:19', '2023-01-25 02:20:19'),
(16, '_halaman_interest', '2', '2023-01-30 02:52:19', '2023-01-30 02:52:19'),
(17, '_halaman_award', '3', '2023-01-30 02:52:20', '2023-01-30 02:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2022_12_26_071008_table_users_add_column_google_id', 2),
(3, '2022_12_26_080722_users_default_password', 3),
(4, '2023_01_05_033536_user_add_column_avatar', 4),
(6, '2023_01_05_040050_create_halamen_table', 5),
(7, '2023_01_07_061550_create_riwayats_table', 6),
(11, '2023_01_13_105435_riwayat_set_default_isi', 7),
(12, '2023_01_13_144941_create_metadata_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` enum('experience','education') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `info1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id`, `judul`, `tipe`, `tgl_mulai`, `tgl_akhir`, `info1`, `info2`, `info3`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'IT SUPPORT', 'experience', '2023-01-09', NULL, 'IT SUPPORT', NULL, NULL, '<p>hahahaha223</p>', '2023-01-10 23:44:21', '2023-01-13 07:35:06'),
(4, 'Universitas Qomaruddin', 'education', '2016-08-31', '2021-03-01', 'Fakultas Teknik', 'Teknik Informatika', '3.59', NULL, '2023-01-31 02:58:27', '2023-01-31 02:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`, `avatar`) VALUES
(1, 'Andika Pemana Putra', 'andikapp1998@gmail.com', NULL, NULL, NULL, '2023-01-04 19:47:36', '2023-01-04 20:57:03', '102960957974550145167', '102960957974550145167.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
