-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2023 at 05:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transporter`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(200) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `stok_barang` int(11) DEFAULT NULL,
  `harga_barang` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `deskripsi`, `stok_barang`, `harga_barang`, `created_at`, `updated_at`) VALUES
(1, 'SON1', 'Sonos One SL Black', NULL, NULL, NULL, '2023-07-09 14:42:33', '2023-07-09 14:42:33'),
(2, 'SON2', 'Sonos One Gen 2 Black', NULL, NULL, NULL, '2023-07-09 14:47:08', '2023-07-09 14:47:08'),
(3, 'SON3', 'Sonos Arc Black', NULL, NULL, NULL, '2023-07-09 14:47:55', '2023-07-09 14:47:55'),
(4, 'SON4', 'Sonos Subwoofer Gen 3 Black', NULL, NULL, NULL, '2023-07-09 14:48:26', '2023-07-09 14:48:26'),
(5, 'SON5', 'Sonos Era 100 Black', NULL, NULL, NULL, '2023-07-09 14:49:55', '2023-07-09 14:49:55'),
(6, 'SON6', 'Sonos Era 100 White', NULL, NULL, NULL, '2023-07-09 14:50:45', '2023-07-09 14:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `kode_lokasi` varchar(10) DEFAULT NULL,
  `nama_lokasi` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `kode_lokasi`, `nama_lokasi`, `created_at`, `updated_at`) VALUES
(1, 'MPI', 'Musique Plaza Indonesia', '2023-07-09 14:59:28', '2023-07-09 14:59:28'),
(2, 'MPP', 'Musique Pacific Place', '2023-07-09 15:00:00', '2023-07-09 15:00:00'),
(3, 'MTP', 'Musique Tunjungan Plaza', '2023-07-09 15:00:21', '2023-07-09 15:00:21'),
(4, 'MPM', 'Musique Pakuwon Mall', '2023-07-09 15:00:41', '2023-07-09 15:00:41'),
(5, 'GDJKT', 'Gudang Jakarta', '2023-07-09 15:01:08', '2023-07-09 15:01:08');

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id` int(11) NOT NULL,
  `no_pengiriman` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `harga_barang` int(11) DEFAULT NULL,
  `kurir_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`id`, `no_pengiriman`, `tanggal`, `lokasi_id`, `barang_id`, `jumlah_barang`, `harga_barang`, `kurir_id`, `created_at`, `updated_at`, `status`) VALUES
(1, '0001', '2023-07-09', 1, 1, 100, 4000000, 1, '2023-07-09 08:04:07', '2023-07-09 08:04:07', 2),
(2, '0002', '2023-07-09', 2, 1, 130, 4000000, 1, '2023-07-09 08:06:38', '2023-07-09 08:06:38', 2),
(3, '0003', '2023-07-09', 3, 2, 120, 4500000, 1, '2023-07-09 08:39:04', '2023-07-09 08:39:04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Fariz', '411201048@mahasiswa.undira.ac.id', NULL, '$2y$10$0dZxcQ0n/32C/v/.O2tpfuHTfrf0dgB.qHv6Q5b97U9g9fIjg9FX6', NULL, '2023-05-12 21:41:58', '2023-05-12 21:41:58');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pengiriman`
-- (See below for the actual view)
--
CREATE TABLE `view_pengiriman` (
`id` int(11)
,`id_barang` int(11)
,`nama_barang` varchar(200)
,`kode_barang` varchar(10)
,`nama_lokasi` varchar(255)
,`id_lokasi` int(11)
,`jumlah_barang` int(11)
,`harga_barang` int(11)
,`tanggal` date
,`created_at` datetime
,`no_pengiriman` varchar(15)
,`updated_at` datetime
,`nama_pengirim` varchar(255)
,`kurir_id` bigint(20) unsigned
);

-- --------------------------------------------------------

--
-- Structure for view `view_pengiriman`
--
DROP TABLE IF EXISTS `view_pengiriman`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pengiriman`  AS  select `pengiriman`.`id` AS `id`,`barang`.`id` AS `id_barang`,`barang`.`nama_barang` AS `nama_barang`,`barang`.`kode_barang` AS `kode_barang`,`lokasi`.`nama_lokasi` AS `nama_lokasi`,`lokasi`.`id` AS `id_lokasi`,`pengiriman`.`jumlah_barang` AS `jumlah_barang`,`pengiriman`.`harga_barang` AS `harga_barang`,`pengiriman`.`tanggal` AS `tanggal`,`pengiriman`.`created_at` AS `created_at`,`pengiriman`.`no_pengiriman` AS `no_pengiriman`,`pengiriman`.`updated_at` AS `updated_at`,`users`.`name` AS `nama_pengirim`,`users`.`id` AS `kurir_id` from (((`pengiriman` left join `barang` on(`pengiriman`.`barang_id` = `barang`.`id`)) left join `lokasi` on(`pengiriman`.`lokasi_id` = `lokasi`.`id`)) left join `users` on(`pengiriman`.`kurir_id` = `users`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
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
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
