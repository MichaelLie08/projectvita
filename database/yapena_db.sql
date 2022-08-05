-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2022 at 12:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yapena_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_group`
--

CREATE TABLE `access_group` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `access_detail` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_group`
--

INSERT INTO `access_group` (`id`, `nama`, `keterangan`, `access_detail`, `created_at`, `created_id`, `updated_at`, `updated_id`) VALUES
(1, 'super', '', NULL, '2022-06-23 11:04:47', 1, '2022-07-07 10:57:46', 1),
(2, 'admin', '', 'artikel_add;;artikel_delete;;artikel_edit;;gambar_add;;gambar_delete;;gambar_edit;;video_add;;video_delete;;video_edit;;manage_artikel;;manage_gambar;;manage_video;;artikel_read;;gambar_read;;video_read;;manage_kegiatan;;add_kegiatan;;edit_kegiatan;;kegiatan_read;;delete_kegiatan;;manage_banner;;add_banner;;banner_read;;edit_banner;;add_visi;;delete_visi;;edit_visi;;manage_visi;;visi_read;;add_misi;;delete_misi;;edit_misi;;manage_misi;;misi_read;;add_contact;;delete_contact;;edit_contact;;manage_contact;;contact_read;;', '2022-07-07 10:56:24', 1, '2022-07-19 05:23:20', 1),
(3, 'dev', '', NULL, '2022-07-04 11:21:40', 1, '2022-07-07 10:57:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `access_group_detail`
--

CREATE TABLE `access_group_detail` (
  `id_access_group` int(11) NOT NULL,
  `id_access_master` int(11) NOT NULL,
  `priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_group_detail`
--

INSERT INTO `access_group_detail` (`id_access_group`, `id_access_master`, `priority`) VALUES
(1, 1, NULL),
(1, 2, NULL),
(1, 3, NULL),
(1, 4, NULL),
(1, 5, NULL),
(1, 6, NULL),
(1, 7, NULL),
(1, 8, NULL),
(1, 9, NULL),
(1, 10, NULL),
(1, 11, NULL),
(1, 12, NULL),
(1, 13, NULL),
(1, 14, NULL),
(1, 15, NULL),
(1, 16, NULL),
(1, 17, NULL),
(1, 18, NULL),
(1, 19, NULL),
(1, 23, NULL),
(1, 24, NULL),
(1, 25, NULL),
(1, 26, NULL),
(1, 27, NULL),
(1, 28, NULL),
(1, 29, NULL),
(1, 30, NULL),
(1, 31, NULL),
(1, 32, NULL),
(1, 33, NULL),
(1, 36, NULL),
(1, 37, NULL),
(1, 38, NULL),
(1, 39, NULL),
(1, 40, NULL),
(1, 41, NULL),
(1, 42, NULL),
(1, 43, NULL),
(1, 44, NULL),
(1, 45, NULL),
(1, 46, NULL),
(1, 47, NULL),
(1, 48, NULL),
(1, 49, NULL),
(1, 50, NULL),
(1, 51, NULL),
(1, 52, NULL),
(1, 53, NULL),
(1, 54, NULL),
(1, 55, NULL),
(1, 56, NULL),
(1, 57, NULL),
(1, 58, NULL),
(1, 59, NULL),
(2, 11, NULL),
(2, 12, NULL),
(2, 13, NULL),
(2, 14, NULL),
(2, 15, NULL),
(2, 16, NULL),
(2, 17, NULL),
(2, 18, NULL),
(2, 19, NULL),
(2, 23, NULL),
(2, 24, NULL),
(2, 25, NULL),
(2, 26, NULL),
(2, 27, NULL),
(2, 28, NULL),
(2, 29, NULL),
(2, 30, NULL),
(2, 31, NULL),
(2, 32, NULL),
(2, 33, NULL),
(2, 41, NULL),
(2, 42, NULL),
(2, 43, NULL),
(2, 44, NULL),
(2, 45, NULL),
(2, 46, NULL),
(2, 47, NULL),
(2, 48, NULL),
(2, 49, NULL),
(2, 50, NULL),
(2, 51, NULL),
(2, 52, NULL),
(2, 53, NULL),
(2, 54, NULL),
(2, 55, NULL),
(2, 56, NULL),
(2, 57, NULL),
(2, 58, NULL),
(2, 59, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `access_master`
--

CREATE TABLE `access_master` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_master`
--

INSERT INTO `access_master` (`id`, `nama`, `keterangan`, `created_at`, `created_id`, `updated_at`, `updated_id`) VALUES
(1, 'access_group_manage', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(2, 'access_group_create', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(3, 'access_group_read', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(4, 'access_group_update', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(5, 'access_group_delete', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(6, 'access_master_manage', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(7, 'access_master_create', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(8, 'access_master_read', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(9, 'access_master_update', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(10, 'access_master_delete', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(11, 'artikel_add', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 11:27:25', 1),
(12, 'artikel_delete', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:05:02', 1),
(13, 'artikel_update', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:05:07', 1),
(14, 'gambar_add', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 11:29:01', 1),
(15, 'gambar_delete', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 11:29:08', 1),
(16, 'gambar_update', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:05:12', 1),
(17, 'video_add', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 11:29:25', 1),
(18, 'video_delete', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 11:29:31', 1),
(19, 'video_update', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:05:16', 1),
(23, 'artikel_manage', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:03:25', 0),
(24, 'gambar_manage', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:03:35', 0),
(25, 'video_manage', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:03:40', 0),
(26, 'artikel_read', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(27, 'gambar_read', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(28, 'video_read', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(29, 'kegiatan_manage', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:03:59', 1),
(30, 'kegiatan_add', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:04:14', 1),
(31, 'kegiatan_update', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:05:34', 1),
(32, 'kegiatan_read', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(33, 'kegiatan_delete', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:04:29', 1),
(36, 'users_manage', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(37, 'users_create', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(38, 'users_read', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(39, 'users_update', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(40, 'users_delete', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(41, 'banner_manage', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:05:51', 1),
(42, 'banner_add', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:05:58', 1),
(43, 'banner_read', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(44, 'banner_update', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:06:04', 1),
(45, 'visi_add', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:06:10', 1),
(46, 'visi_delete', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:06:21', 1),
(47, 'visi_update', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:06:28', 1),
(48, 'visi_manage', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:06:35', 1),
(49, 'visi_read', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(50, 'misi_add', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:06:41', 1),
(51, 'misi_delete', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:06:51', 1),
(52, 'misi_update', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:07:02', 1),
(53, 'misi_manage', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:07:08', 1),
(54, 'misi_read', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1),
(55, 'contact_add', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:07:14', 1),
(56, 'contact_delete', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:07:23', 1),
(57, 'contact_update', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:07:30', 1),
(58, 'contact_manage', NULL, '2022-07-12 14:40:27', 1, '2022-07-19 15:07:38', 1),
(59, 'contact_read', NULL, '2022-07-12 14:40:27', 1, '2022-07-12 14:40:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner_yapena`
--

CREATE TABLE `banner_yapena` (
  `id` int(255) NOT NULL,
  `title_banner` text NOT NULL,
  `gambar_banner` text NOT NULL,
  `created_id` int(11) NOT NULL,
  `updated_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_yapena`
--

INSERT INTO `banner_yapena` (`id`, `title_banner`, `gambar_banner`, `created_id`, `updated_id`, `updated_at`, `created_at`, `status`) VALUES
(1, 'czxc', 'unnamed (1).png', 1, 2, '2022-07-19 12:34:36', '2022-07-12 08:09:29', 'Aktif'),
(2, 'khs', 'LogoPetra.png', 1, 4, '2022-07-19 06:39:00', '2022-07-12 08:09:47', 'Tidak Aktif'),
(3, 'xzcxzc', 'uploads/league/Untitled.png', 1, 1, '2022-07-19 12:34:36', '2022-07-12 08:13:20', 'Aktif'),
(4, 'xzcxzc', 'uploads/league/Untitled.png', 1, 1, '2022-07-19 12:34:36', '2022-07-12 08:13:30', 'Aktif'),
(5, 'ffffffff', 'uploads/league/SKKK.png', 1, 1, '2022-07-19 12:34:36', '2022-07-12 08:13:43', 'Aktif'),
(6, 'testBanner', 'uploads/banner_image/Kiana.png', 1, 1, '2022-07-19 12:34:36', '2022-07-15 09:55:41', 'Aktif'),
(7, 'qweqweq', 'unnamed (1).png', 1, 1, '2022-07-19 12:34:36', '2022-07-18 11:44:24', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `linkMap` longtext DEFAULT NULL,
  `created_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `alamat`, `no_telp`, `linkMap`, `created_id`, `created_at`, `updated_at`) VALUES
(1, 'qewql,,l', 'asdcz', 'zxc', NULL, 1, '2022-07-12 10:15:53', '2022-07-19 10:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `misi_yapena`
--

CREATE TABLE `misi_yapena` (
  `id` int(11) NOT NULL,
  `misi` text NOT NULL,
  `created_id` int(11) NOT NULL,
  `updated_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `misi_yapena`
--

INSERT INTO `misi_yapena` (`id`, `misi`, `created_id`, `updated_id`, `updated_at`, `created_at`, `status`) VALUES
(1, 'zz', 1, 2, '2022-07-18 11:52:18', '2022-07-12 08:44:08', 'Tidak Aktif'),
(2, 'test', 1, 4, '2022-07-19 06:34:54', '2022-07-13 03:09:52', 'Aktif'),
(3, 'test2', 1, 1, '2022-07-15 09:37:09', '2022-07-15 09:37:09', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_access_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `id_access_group`) VALUES
(1, 'toros', 'toro@mail.com', '$2y$10$zwpPy0pCJ4IX.OWH0nC.YeP7gnDhjGKhWTeP6fuyzH6N3xlgHqqCO', '2022-07-07 09:10:39', '2022-07-19 08:27:13', 1),
(2, 'admin', 'admin@mail.com', '$2y$10$Rl23qhE5YKNPmz9O2liHLO5RYWHi.oRK1NHiemv6.FPx859XOQK8S', '2022-07-07 09:10:39', '2022-07-08 04:36:21', 3),
(3, 'min', 'min@mail.com', '$2y$10$fziFZu43CZbDQ.MV9lhc6eaoiMJfbxbqTRbwMLzs6wpO6MIMKOsdu', '2022-07-07 09:52:13', '2022-07-07 14:01:16', 2),
(4, 'new2', 'new2@mail.com', '$2y$10$.uPawK1oIkLugbxTuyUgaeHAcPqbTn.ZxIEGhFChy1B8kQYoVNIVW', '2022-07-19 05:22:11', '2022-07-19 05:22:11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `visi_yapena`
--

CREATE TABLE `visi_yapena` (
  `id` int(11) NOT NULL,
  `visi` text NOT NULL,
  `created_id` int(11) NOT NULL,
  `updated_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visi_yapena`
--

INSERT INTO `visi_yapena` (`id`, `visi`, `created_id`, `updated_id`, `updated_at`, `created_at`, `status`) VALUES
(1, '123', 1, 2, '2022-07-18 11:50:26', '2022-07-12 08:29:13', 'Tidak Aktif'),
(2, 'visi Etxt', 1, 4, '2022-07-19 06:35:55', '2022-07-12 08:29:21', 'Aktif'),
(3, 'asdasd', 1, 1, '2022-07-12 08:41:52', '2022-07-12 08:41:52', 'Aktif'),
(4, 'qweqw', 1, 1, '2022-07-12 08:43:04', '2022-07-12 08:43:04', 'Aktif'),
(5, 'test', 1, 1, '2022-07-15 09:32:48', '2022-07-15 09:31:07', 'Aktif'),
(6, 'adsf', 1, 1, '2022-07-18 11:50:31', '2022-07-18 11:50:31', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `yapena_artikel`
--

CREATE TABLE `yapena_artikel` (
  `id` int(11) NOT NULL,
  `gambar` longtext NOT NULL,
  `gambar_preview` longtext NOT NULL,
  `gambar_thumb` longtext NOT NULL,
  `title` varchar(50) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `tanggal_publikasi` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_id` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(15) NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yapena_artikel`
--

INSERT INTO `yapena_artikel` (`id`, `gambar`, `gambar_preview`, `gambar_thumb`, `title`, `deskripsi`, `tanggal_publikasi`, `created_id`, `updated_id`, `tag`, `updated_at`, `created_at`, `status`) VALUES
(3, 'download.png', 'asd.png', 'download.png', 'zxcxzc', '<p>asda</p>', '2022-07-04 11:16:20', 1, 1, 'xzc', '2022-07-19 09:07:15', '2022-07-11 23:25:27', 'Tidak Aktif'),
(4, 'Kiana.png', 'Kiana.png', 'Kiana.png', 'Krisis Moneter di wakanda', 'raja tchala mati sehingga munculnya krisis moneter di wakanda', '2022-07-07 19:02:38', 1, 4, 'keuangan', '2022-07-19 05:24:09', '2022-07-11 23:25:27', 'Aktif'),
(5, 'artikel5.jpg', 'artikel5-prev.jpg', 'artikel5-thumb.jpg', 'Jokowi 5 periode', 'Perjalanan Kasus Medina Zein hingga Dijemput Paksa Polisi', '2022-07-07 19:02:38', 1, 1, 'lifestyle', '2022-07-19 11:37:04', '2022-07-11 23:25:27', 'Aktif'),
(6, 'artikel6.jpeg', 'artikel6-prev.jpg', 'artikel6-thumb.jpg', 'Kasat Reskrim Polres Jombang Disiram Kopi Panas Sa', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-07-07 19:02:38', 1, 1, 'lorem', '2022-07-19 11:37:04', '2022-07-11 23:25:27', 'Aktif'),
(7, 'artikel1.png', 'artikel1-prev.png', 'artikel1-thumb.png', 'jawa barat tsunami', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-07-07 19:02:38', 1, 1, 'keuangan', '2022-07-19 11:37:04', '2022-07-11 23:25:27', 'Aktif'),
(8, 'uploads/Gambar/WhatsApp Image 2022-07-12 at 10.24.38 AM.jpeg', 'uploads/GambarPrev/khs.png', 'uploads/Gambar/SKKK.png', 'test', '123', '2022-07-12 11:17:14', 1, 1, '123', '2022-07-19 11:37:04', '2022-07-12 04:17:14', 'Aktif'),
(9, 'uploads/Gambar/WhatsApp Image 2022-07-12 at 10.24.38 AM.jpeg', 'uploads/GambarPrev/WhatsApp Image 2022-07-12 at 10.24.38 AM.jpeg', 'uploads/Gambar/WhatsApp Image 2022-07-12 at 10.24.38 AM.jpeg', 'asd', 'asd', '2022-07-12 11:20:37', 1, 1, 'sad', '2022-07-19 11:37:04', '2022-07-12 04:20:37', 'Aktif'),
(10, 'uploads/image/WhatsApp Image 2022-07-12 at 10.24.38 AM.jpeg', 'uploads/image_prev/SKKK.png', 'uploads/image/khs.png', 'zvxc', 'zvcvz', '2022-07-12 11:26:14', 1, 1, 'asdasda', '2022-07-19 11:37:04', '2022-07-12 04:26:14', 'Aktif'),
(11, 'uploads/image/WhatsApp Image 2022-07-12 at 10.24.38 AM.jpeg', 'uploads/image_prev/khs.png', 'uploads/image/Untitled.png', '23', '123', '2022-07-12 11:26:59', 1, 1, '123', '2022-07-19 11:37:04', '2022-07-12 04:26:59', 'Aktif'),
(12, 'uploads/image/khs.png', 'uploads/image_prev/Untitled.png', 'uploads/image/SKKK.png', 'zxcxz', 'casdad', '2022-07-12 11:27:38', 1, 1, 'xzcwq', '2022-07-19 11:37:04', '2022-07-12 04:27:38', 'Aktif'),
(13, 'uploads/image/Untitled.png', 'uploads/image_prev/khs.png', 'uploads/image/WhatsApp Image 2022-07-12 at 10.24.38 AM.jpeg', '12312', 'qwewe', '2022-07-12 11:30:22', 1, 1, 'asdas', '2022-07-19 11:37:04', '2022-07-12 04:30:22', 'Aktif'),
(14, 'uploads/image/WhatsApp Image 2022-07-12 at 10.24.38 AM.jpeg', 'uploads/image_prev/Untitled.png', 'uploads/image/khs.png', 'zxvvz', 'zxvvc', '2022-07-12 11:30:44', 1, 1, 'qwesad', '2022-07-19 11:37:04', '2022-07-12 04:30:44', 'Aktif'),
(15, 'uploads/image/Kiana.png', 'uploads/image_prev/Kiana.png', 'uploads/image_thumb/Kiana.png', 'TestSSSSSSSS', 'Another productive way to use this tool to begin a daily writing routine. One way is to generate a random paragraph with the intention to try to rewrite it while still keeping the original meaning. The purpose here is to just get the writing started so that when the writer goes onto their day\'s writing projects, words are already flowing from their fingers.', '2022-07-15 17:00:18', 1, 1, 'Test', '2022-07-19 11:37:04', '2022-07-15 10:00:18', 'Aktif'),
(16, 'unnamed (1).png', 'unnamed.png', 'WhatsApp Image 2022-07-12 at 10.24.38 AM.jpeg', 'asdfasd', 'qweqwe', '2022-07-18 16:45:00', 1, 1, '123', '2022-07-19 11:37:04', '2022-07-18 09:45:00', 'Aktif'),
(17, 'unnamed.png', 'unnamed.png', 'unnamed.png', 'qweqwe', '123123', '2022-07-18 16:50:22', 1, 1, '123123', '2022-07-19 11:37:04', '2022-07-18 09:50:22', 'Aktif'),
(18, 'khs.png', 'unnamed.png', 'unnamed (1).png', '12312', '123132', '2022-07-18 17:17:05', 1, 1, 'qweqw', '2022-07-19 11:37:04', '2022-07-18 10:17:05', 'Aktif'),
(19, 'khs.png', 'unnamed.png', 'unnamed (1).png', '12313', '11', '2022-07-18 17:19:29', 1, 1, '22', '2022-07-19 11:37:04', '2022-07-18 10:19:29', 'Aktif'),
(20, 'khs.png', 'unnamed.png', 'khs.png', '1231', '1qwe', '2022-07-18 17:26:38', 1, 1, 'asd', '2022-07-19 11:37:04', '2022-07-18 10:26:38', 'Aktif'),
(21, 'khs.png', 'khs.png', 'khs.png', '12312', 'qwe', '2022-07-18 17:28:44', 1, 1, 'asd', '2022-07-19 11:37:04', '2022-07-18 10:28:44', 'Aktif'),
(22, 'unnamed.png', 'khs.png', 'unnamed (1).png', '12312', 'qweqw', '2022-07-18 17:29:08', 1, 1, 'asda', '2022-07-19 11:37:04', '2022-07-18 10:29:08', 'Aktif'),
(23, 'unnamed (1).png', 'unnamed.png', 'khs.png', 'qwe', 'qwe', '2022-07-18 17:29:27', 1, 1, 'ads', '2022-07-19 11:37:04', '2022-07-18 10:29:27', 'Aktif'),
(24, 'unnamed.png', 'khs.png', 'khs.png', 'weq', 'sad', '2022-07-18 17:30:00', 1, 1, 'fsd', '2022-07-19 11:37:04', '2022-07-18 10:30:00', 'Aktif'),
(25, 'unnamed (1).png', 'unnamed.png', 'khs.png', 'qwe', 'asd', '2022-07-18 17:31:12', 1, 1, 'zxc', '2022-07-19 11:37:04', '2022-07-18 10:31:12', 'Aktif'),
(26, 'khs.png', 'unnamed.png', 'unnamed (1).png', 'asda', 'qwe', '2022-07-18 17:31:28', 1, 1, 'cz', '2022-07-19 11:37:04', '2022-07-18 10:31:28', 'Aktif'),
(27, 'khs.png', 'unnamed (1).png', 'unnamed.png', 'qwe', 'asd', '2022-07-18 17:31:46', 1, 1, 'fds', '2022-07-19 11:37:04', '2022-07-18 10:31:46', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `yapena_gambar`
--

CREATE TABLE `yapena_gambar` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `orientasi` varchar(50) NOT NULL,
  `created_id` int(11) NOT NULL,
  `updated_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yapena_gambar`
--

INSERT INTO `yapena_gambar` (`id`, `gambar`, `orientasi`, `created_id`, `updated_id`, `updated_at`, `created_at`, `status`) VALUES
(1, 'WhatsApp Image 2022-07-12 at 10.24.38 AM.jpeg', 'Portrait', 1, 1, '2022-07-19 09:09:18', '2022-07-11 23:26:07', 'Aktif'),
(2, 'bemlogo.png', 'Landscape', 1, 4, '2022-07-19 06:37:53', '2022-07-11 23:26:07', 'Tidak Aktif'),
(3, 'aktivitas3.jpeg', 'Landscape', 1, 1, '2022-07-11 23:26:07', '2022-07-11 23:26:07', 'Aktif'),
(4, 'aktivitas4.jpeg', 'Landscape', 1, 1, '2022-07-11 23:26:07', '2022-07-11 23:26:07', 'Aktif'),
(5, 'aktivitas14.jpeg', 'Landscape', 1, 1, '2022-07-11 23:26:07', '2022-07-11 23:26:07', 'Aktif'),
(6, 'aktivitas6.jpeg', 'Landscape', 1, 1, '2022-07-11 23:26:07', '2022-07-11 23:26:07', 'Aktif'),
(7, 'aktivitas7.jpeg', 'Landscape', 1, 1, '2022-07-11 23:26:07', '2022-07-11 23:26:07', 'Aktif'),
(8, 'aktivitas8.jpeg', 'Landscape', 1, 1, '2022-07-11 23:26:07', '2022-07-11 23:26:07', 'Aktif'),
(9, 'aktivitas9.jpeg', 'Landscape', 1, 1, '2022-07-11 23:26:07', '2022-07-11 23:26:07', 'Aktif'),
(10, 'uploads/image_aktivitas/bemlogo.png', 'Landscape', 1, 1, '2022-07-15 09:47:56', '2022-07-11 23:26:07', 'Aktif'),
(11, 'aktivitas11.jpeg', 'Landscape', 1, 1, '2022-07-11 23:26:07', '2022-07-11 23:26:07', 'Aktif'),
(12, 'aktivitas12.jpeg', 'Landscape', 1, 1, '2022-07-11 23:26:07', '2022-07-11 23:26:07', 'Aktif'),
(13, '1657595200.png', 'Landscape', 1, 1, '2022-07-12 03:06:40', '2022-07-12 03:06:40', 'Aktif'),
(14, 'uploads/image_aktivitas/1657597728.png', 'Landscape', 1, 1, '2022-07-12 03:48:48', '2022-07-12 03:48:48', 'Aktif'),
(15, 'uploads/image_aktivitas/1657878263.png', 'Landscape', 1, 1, '2022-07-15 09:44:23', '2022-07-15 09:44:23', 'Aktif'),
(16, 'uploads/image_aktivitas/1658136527.png', 'Landscape', 1, 1, '2022-07-18 09:28:47', '2022-07-18 09:28:47', 'Aktif'),
(17, '1658141920.png', 'Landscape', 1, 1, '2022-07-18 10:58:40', '2022-07-18 10:58:40', 'Tidak Aktif'),
(18, '1658141934.png', 'Landscape', 1, 1, '2022-07-18 10:58:54', '2022-07-18 10:58:54', 'Tidak Aktif'),
(19, '1658141964.unnamed.png', 'Landscape', 1, 1, '2022-07-18 10:59:24', '2022-07-18 10:59:24', 'Tidak Aktif'),
(20, '1658142005.unnamed (1).png', 'Landscape', 1, 1, '2022-07-18 11:00:05', '2022-07-18 11:00:05', 'Tidak Aktif'),
(21, 'unnamed (1).png', 'Landscape', 1, 1, '2022-07-18 11:03:26', '2022-07-18 11:03:26', 'Aktif'),
(22, 'unnamed (1).png', 'Landscape', 1, 1, '2022-07-18 11:59:41', '2022-07-18 11:59:41', 'Aktif'),
(23, '1653132172892.png', 'Landscape', 4, 4, '2022-07-19 06:44:22', '2022-07-19 06:44:22', 'Tidak Aktif'),
(24, '374195.jpg', 'Portrait', 4, 4, '2022-07-19 06:48:33', '2022-07-19 06:48:33', 'Tidak Aktif'),
(25, 'reverse_uno.jpg', 'Portrait', 4, 4, '2022-07-19 06:51:05', '2022-07-19 06:51:05', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `yapena_kegiatan`
--

CREATE TABLE `yapena_kegiatan` (
  `id` int(11) NOT NULL,
  `created_id` int(11) NOT NULL,
  `updated_id` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yapena_kegiatan`
--

INSERT INTO `yapena_kegiatan` (`id`, `created_id`, `updated_id`, `keterangan`, `updated_at`, `created_at`, `status`) VALUES
(1, 1, 2, 'x', '2022-07-18 11:38:40', '2022-07-08 10:26:57', 'Tidak Aktif'),
(2, 1, 1, 'petra univ terbaik', '2022-07-08 10:26:57', '2022-07-08 10:26:57', 'Aktif'),
(3, 1, 1, 'qqqqqqqqqqqq', '2022-07-11 04:44:49', '2022-07-08 10:26:57', 'Aktif'),
(4, 1, 1, 'kucinta indonesia', '2022-07-08 10:26:57', '2022-07-08 10:26:57', 'Aktif'),
(5, 1, 1, 'makan bareng', '2022-07-08 03:31:16', '2022-07-08 03:31:16', 'Aktif'),
(6, 1, 1, 'mabar', '2022-07-08 03:39:33', '2022-07-08 03:39:33', 'Aktif'),
(7, 1, 1, 'makan', '2022-07-08 05:39:18', '2022-07-08 05:39:18', 'Aktif'),
(8, 1, 1, 'qweqwe', '2022-07-08 05:40:06', '2022-07-08 05:40:06', 'Aktif'),
(9, 1, 4, 'tidur', '2022-07-19 06:33:48', '2022-07-09 05:32:04', 'Aktif'),
(10, 1, 1, 'tidur saing', '2022-07-15 09:41:33', '2022-07-15 09:41:33', 'Aktif'),
(11, 1, 1, '123123', '2022-07-18 11:39:00', '2022-07-18 11:39:00', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `yapena_video`
--

CREATE TABLE `yapena_video` (
  `id` int(11) NOT NULL,
  `created_id` int(11) NOT NULL,
  `updated_id` int(11) NOT NULL,
  `url_video` text NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yapena_video`
--

INSERT INTO `yapena_video` (`id`, `created_id`, `updated_id`, `url_video`, `updated_at`, `created_at`, `status`) VALUES
(1, 1, 2, 'zx', '2022-07-18 12:48:24', '2022-07-08 10:27:18', 'Aktif'),
(2, 1, 1, 'https://www.youtube.com/watch?v=8k0-rPunqSY', '2022-07-08 10:27:18', '2022-07-08 10:27:18', 'Aktif'),
(3, 1, 1, 'https://www.youtube.com/watch?v=sphfhgDFSXc', '2022-07-08 10:27:18', '2022-07-08 10:27:18', 'Aktif'),
(4, 1, 1, 'https://www.youtube.com/watch?v=xeTa1l7BB4M', '2022-07-08 10:27:18', '2022-07-08 10:27:18', 'Aktif'),
(5, 1, 1, 'https://www.youtube.com/watch?v=n7sU5QO0Cwo', '2022-07-08 03:27:24', '2022-07-08 03:27:24', 'Aktif'),
(6, 1, 1, 'https://www.youtube.com/watch?v=n7sU5QO0Cwo', '2022-07-08 03:39:19', '2022-07-08 03:39:19', 'Aktif'),
(7, 1, 4, 'test', '2022-07-19 06:36:50', '2022-07-08 05:04:25', 'Aktif'),
(8, 1, 1, 'https://www.youtube.com/watch?v=n7sU5QO0Cwo', '2022-07-08 05:33:41', '2022-07-08 05:33:41', 'Aktif'),
(9, 1, 1, 'https://www.youtube.com/watch?v=n7sU5QO0Cwo', '2022-07-18 11:15:36', '2022-07-18 11:15:26', 'Aktif'),
(10, 1, 1, 'https://www.youtube.com/watch?v=ITA0heQTiaU', '2022-07-18 11:15:42', '2022-07-18 11:15:42', 'Tidak Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_group`
--
ALTER TABLE `access_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_created_id1` (`created_id`),
  ADD KEY `fk_updated_id2` (`updated_id`);

--
-- Indexes for table `access_group_detail`
--
ALTER TABLE `access_group_detail`
  ADD KEY `fk_id_access_group` (`id_access_group`),
  ADD KEY `fk_id_access_master` (`id_access_master`);

--
-- Indexes for table `access_master`
--
ALTER TABLE `access_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_yapena`
--
ALTER TABLE `banner_yapena`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `misi_yapena`
--
ALTER TABLE `misi_yapena`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visi_yapena`
--
ALTER TABLE `visi_yapena`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yapena_artikel`
--
ALTER TABLE `yapena_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`created_id`);

--
-- Indexes for table `yapena_gambar`
--
ALTER TABLE `yapena_gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yapena_kegiatan`
--
ALTER TABLE `yapena_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yapena_video`
--
ALTER TABLE `yapena_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_group`
--
ALTER TABLE `access_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `access_master`
--
ALTER TABLE `access_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `banner_yapena`
--
ALTER TABLE `banner_yapena`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `misi_yapena`
--
ALTER TABLE `misi_yapena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visi_yapena`
--
ALTER TABLE `visi_yapena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `yapena_artikel`
--
ALTER TABLE `yapena_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `yapena_gambar`
--
ALTER TABLE `yapena_gambar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `yapena_kegiatan`
--
ALTER TABLE `yapena_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `yapena_video`
--
ALTER TABLE `yapena_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
