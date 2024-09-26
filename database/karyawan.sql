-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 04:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_shifts`
--

CREATE TABLE `auto_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jabatan_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cutis`
--

CREATE TABLE `cutis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_cuti` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `alasan_cuti` text NOT NULL,
  `foto_cuti` varchar(255) DEFAULT NULL,
  `status_cuti` varchar(255) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dinas_luars`
--

CREATE TABLE `dinas_luars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `jam_absen` varchar(255) DEFAULT NULL,
  `telat` varchar(255) DEFAULT NULL,
  `lat_absen` varchar(255) DEFAULT NULL,
  `long_absen` varchar(255) DEFAULT NULL,
  `foto_jam_absen` varchar(255) DEFAULT NULL,
  `jam_pulang` varchar(255) DEFAULT NULL,
  `pulang_cepat` varchar(255) DEFAULT NULL,
  `foto_jam_pulang` varchar(255) DEFAULT NULL,
  `lat_pulang` varchar(255) DEFAULT NULL,
  `long_pulang` varchar(255) DEFAULT NULL,
  `status_absen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_file` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fileUpload` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `golongans`
--

CREATE TABLE `golongans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `golongans`
--

INSERT INTO `golongans` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'DIREKSI', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(2, 'KABAG', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(3, 'STAFF', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(4, 'PELAKSANA', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(5, 'dosen', '2024-05-10 06:27:55', '2024-05-10 06:27:55'),
(6, 'tukang peropesi', '2024-05-16 06:06:12', '2024-05-16 06:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatans`
--

INSERT INTO `jabatans` (`id`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi Informasi', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(2, 'Keuangan dan Akutansi', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(3, 'Administrasi & Umum', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(4, 'Humas & Pemasaran', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(5, 'Sekretariat', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(6, 'Direktur', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(7, 'teknisi', '2024-05-10 06:26:22', '2024-05-10 06:26:22'),
(8, 'tukang', '2024-05-16 06:05:47', '2024-05-16 06:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `lemburs`
--

CREATE TABLE `lemburs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `jam_masuk` varchar(255) NOT NULL,
  `lat_masuk` varchar(255) NOT NULL,
  `long_masuk` varchar(255) NOT NULL,
  `jarak_masuk` varchar(255) NOT NULL,
  `foto_jam_masuk` varchar(255) NOT NULL,
  `jam_keluar` varchar(255) DEFAULT NULL,
  `lat_keluar` varchar(255) DEFAULT NULL,
  `long_keluar` varchar(255) DEFAULT NULL,
  `jarak_keluar` varchar(255) DEFAULT NULL,
  `foto_jam_keluar` varchar(255) DEFAULT NULL,
  `total_lembur` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lokasis`
--

CREATE TABLE `lokasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lokasi` varchar(255) NOT NULL,
  `lat_kantor` varchar(255) NOT NULL,
  `long_kantor` varchar(255) NOT NULL,
  `radius` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasis`
--

INSERT INTO `lokasis` (`id`, `nama_lokasi`, `lat_kantor`, `long_kantor`, `radius`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'cabang curug', '-6.258805806672876', '106.56050504383467', '200', 'approved', 1, '2024-05-03 00:14:35', '2024-05-10 05:54:35'),
(2, 'cabanng pamulang', '-6.346095957973469,', '106.69148968076192', '100', 'approved', 1, '2024-05-10 06:11:23', '2024-05-16 03:47:19'),
(3, 'cabang tamrin', '-6.18047694943142', '106.82326098324573', '100', 'approved', 1, '2024-05-10 06:32:29', '2024-05-10 06:32:29'),
(4, 'cabang cipetey', '-6.344018445072011', '106.73723771419235', '5000', 'approved', 1, '2024-05-16 06:05:21', '2024-05-16 06:10:34'),
(5, 'Jdc', '-6.1234225', '106.6679042', '100', 'approved', 1, '2024-06-13 03:53:40', '2024-06-13 03:53:40'),
(6, 'jakarta pusat', '-6.2291968', '106.807296', '2000', 'approved', 1, '2024-07-20 19:55:22', '2024-07-20 19:55:22'),
(7, 'pusat 1', '-6.22592', '106.8302336', '2000', 'approved', 1, '2024-07-27 22:07:15', '2024-07-27 22:07:15'),
(8, 'jogja', '-7.9233946', '110.3478088', '2000', 'approved', 1, '2024-07-27 22:14:26', '2024-07-27 22:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_shifts`
--

CREATE TABLE `mapping_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam_absen` varchar(255) DEFAULT NULL,
  `telat` varchar(255) DEFAULT NULL,
  `lat_absen` varchar(255) DEFAULT NULL,
  `long_absen` varchar(255) DEFAULT NULL,
  `jarak_masuk` varchar(255) DEFAULT NULL,
  `foto_jam_absen` varchar(255) DEFAULT NULL,
  `jam_pulang` varchar(255) DEFAULT NULL,
  `pulang_cepat` varchar(255) DEFAULT NULL,
  `foto_jam_pulang` varchar(255) DEFAULT NULL,
  `lat_pulang` varchar(255) DEFAULT NULL,
  `long_pulang` varchar(255) DEFAULT NULL,
  `jarak_pulang` varchar(255) DEFAULT NULL,
  `status_absen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapping_shifts`
--

INSERT INTO `mapping_shifts` (`id`, `user_id`, `shift_id`, `tanggal`, `jam_absen`, `telat`, `lat_absen`, `long_absen`, `jarak_masuk`, `foto_jam_absen`, `jam_pulang`, `pulang_cepat`, `foto_jam_pulang`, `lat_pulang`, `long_pulang`, `jarak_pulang`, `status_absen`, `created_at`, `updated_at`) VALUES
(32, 1, 3, '2024-05-10', '20:33', '27180', '-6.2590045', '106.5604485', '22.959503035982', 'foto_jam_absen/663e223095fc9.png', '20:34', '1560', 'foto_jam_pulang/663e2252e5170.png', '-6.2590045', '106.5604485', '22.959503035982', 'Masuk', '2024-05-10 13:29:41', '2024-05-10 13:34:10'),
(33, 12, 3, '2024-06-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-06-22 02:29:51', '2024-06-22 02:29:51'),
(35, 1, 2, '2024-07-21', '09:55', '6900', '-6.2291968', '106.807296', '0', 'foto_jam_absen/669c78bdae7d6.png', '09:57', '25380', 'foto_jam_pulang/669c792005776.png', '-6.2291968', '106.807296', '0', 'Masuk', '2024-07-21 02:53:55', '2024-07-21 02:57:36'),
(36, 12, 2, '2024-07-28', '12:09', '14940', '-6.22592', '106.8302336', '0', 'foto_jam_absen/66a5d29ec5f43.png', '12:10', '17400', 'foto_jam_pulang/66a5d2aa378db.png', '-6.22592', '106.8302336', '0', 'Masuk', '2024-07-28 05:04:11', '2024-07-28 05:10:02'),
(37, 13, 2, '2024-07-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-07-28 05:15:25', '2024-07-28 05:15:25'),
(38, 12, 4, '2024-07-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-07-28 08:40:26', '2024-07-28 08:40:26'),
(39, 14, 2, '2024-07-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-07-28 05:15:25', '2024-07-28 05:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_16_095447_create_shifts_table', 1),
(6, '2022_09_19_032649_create_mapping_shifts_table', 1),
(7, '2022_09_20_074944_create_lemburs_table', 1),
(8, '2022_09_20_092230_create_cutis_table', 1),
(9, '2022_10_31_083510_create_lokasis_table', 1),
(10, '2022_11_02_061554_create_reset_cutis_table', 1),
(11, '2022_12_01_041742_create_sips_table', 1),
(12, '2022_12_14_080034_create_jabatans_table', 1),
(13, '2023_03_22_103407_create_dinas_luars_table', 1),
(14, '2023_04_10_130307_create_auto_shifts_table', 1),
(15, '2023_06_28_042019_create_files_table', 1),
(16, '2023_07_15_095632_create_tunjangans_table', 1),
(17, '2023_07_16_152608_create_golongans_table', 1),
(18, '2023_07_19_122052_create_status_ptkps_table', 1),
(19, '2023_07_20_082307_create_pajaks_table', 1),
(20, '2023_07_21_085614_create_payrolls_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pajaks`
--

CREATE TABLE `pajaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `gaji` decimal(15,2) NOT NULL DEFAULT 0.00,
  `pot_tunjangan_makan` decimal(15,2) NOT NULL DEFAULT 0.00,
  `pot_tunjangan_transport` decimal(15,2) NOT NULL DEFAULT 0.00,
  `setoran_bpjs_kes` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tunjangan_bpjs_kes` decimal(15,2) NOT NULL DEFAULT 0.00,
  `setoran_bpjs_tk` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tunjangan_bpjs_tk` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tunjangan_pensiun` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tunjangan_komunikasi` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tunjangan_pph_21` decimal(15,2) NOT NULL DEFAULT 0.00,
  `pot_lainnya` decimal(15,2) NOT NULL DEFAULT 0.00,
  `lembur` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `user_id`, `bulan`, `tahun`, `status_id`, `gaji`, `pot_tunjangan_makan`, `pot_tunjangan_transport`, `setoran_bpjs_kes`, `tunjangan_bpjs_kes`, `setoran_bpjs_tk`, `tunjangan_bpjs_tk`, `tunjangan_pensiun`, `tunjangan_komunikasi`, `tunjangan_pph_21`, `pot_lainnya`, `lembur`, `created_at`, `updated_at`) VALUES
(1, 1, '7', '2023', 1, 2000000.00, 0.00, 0.00, 497500.00, 398000.00, 620880.00, 421880.00, 0.00, 350000.00, 0.00, 0.00, 0.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(2, 12, '7', '2023', 2, 4000000.00, 0.00, 0.00, 600000.00, 400000.00, 300000.00, 200000.00, 0.00, 200000.00, 0.00, 100000.00, 0.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(3, 13, '7', '2023', 2, 2500000.00, 0.00, 0.00, 600000.00, 400000.00, 300000.00, 200000.00, 0.00, 200000.00, 0.00, 100000.00, 0.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(4, 14, '7', '2023', 2, 3000000.00, 0.00, 0.00, 600000.00, 400000.00, 300000.00, 200000.00, 0.00, 200000.00, 0.00, 100000.00, 0.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reset_cutis`
--

CREATE TABLE `reset_cutis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cuti_dadakan` varchar(255) NOT NULL,
  `cuti_bersama` varchar(255) NOT NULL,
  `cuti_menikah` varchar(255) NOT NULL,
  `cuti_diluar_tanggungan` varchar(255) NOT NULL,
  `cuti_khusus` varchar(255) NOT NULL,
  `cuti_melahirkan` varchar(255) NOT NULL,
  `izin_telat` varchar(255) NOT NULL,
  `izin_pulang_cepat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reset_cutis`
--

INSERT INTO `reset_cutis` (`id`, `cuti_dadakan`, `cuti_bersama`, `cuti_menikah`, `cuti_diluar_tanggungan`, `cuti_khusus`, `cuti_melahirkan`, `izin_telat`, `izin_pulang_cepat`, `created_at`, `updated_at`) VALUES
(1, '10', '10', '10', '10', '10', '10', '10', '10', '2024-05-03 00:14:35', '2024-05-03 00:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_shift` varchar(255) NOT NULL,
  `jam_masuk` varchar(255) NOT NULL,
  `jam_keluar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `nama_shift`, `jam_masuk`, `jam_keluar`, `created_at`, `updated_at`) VALUES
(1, 'Libur', '00:00', '00:00', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(2, 'Office', '08:00', '17:00', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(3, 'Siang', '12:00', '21:00', '2024-05-03 00:14:35', '2024-06-14 06:42:59'),
(4, 'Malam', '17:53', '17:53', '2024-05-03 00:14:35', '2024-06-13 03:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `sips`
--

CREATE TABLE `sips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `tanggal_berakhir` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_ptkps`
--

CREATE TABLE `status_ptkps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `ptkp_2016` decimal(15,2) NOT NULL DEFAULT 0.00,
  `ptkp_2015` decimal(15,2) NOT NULL DEFAULT 0.00,
  `ptkp_2009_2012` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_ptkps`
--

INSERT INTO `status_ptkps` (`id`, `name`, `ptkp_2016`, `ptkp_2015`, `ptkp_2009_2012`, `created_at`, `updated_at`) VALUES
(1, 'TK/0', 54000000.00, 36000000.00, 15840000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(2, 'TK/1', 58500000.00, 39000000.00, 17160000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(3, 'TK/2', 63000000.00, 42000000.00, 18480000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(4, 'TK/3', 67500000.00, 45000000.00, 19800000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangans`
--

CREATE TABLE `tunjangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `golongan_id` bigint(20) UNSIGNED NOT NULL,
  `tunjangan_makan` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tunjangan_transport` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tunjangans`
--

INSERT INTO `tunjangans` (`id`, `golongan_id`, `tunjangan_makan`, `tunjangan_transport`, `created_at`, `updated_at`) VALUES
(1, 1, 20000.00, 20000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(2, 2, 30000.00, 20000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
(3, 3, 30000.00, 30000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `foto_karyawan` varchar(255) DEFAULT NULL,
  `foto_face_recognition` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `tgl_join` varchar(255) NOT NULL,
  `status_nikah` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `cuti_dadakan` varchar(255) NOT NULL,
  `cuti_bersama` varchar(255) NOT NULL,
  `cuti_menikah` varchar(255) NOT NULL,
  `cuti_diluar_tanggungan` varchar(255) NOT NULL,
  `cuti_khusus` varchar(255) NOT NULL,
  `cuti_melahirkan` varchar(255) NOT NULL,
  `izin_telat` varchar(255) NOT NULL,
  `izin_pulang_cepat` varchar(255) NOT NULL,
  `is_admin` varchar(255) NOT NULL,
  `jabatan_id` bigint(20) UNSIGNED NOT NULL,
  `golongan_id` bigint(20) UNSIGNED NOT NULL,
  `lokasi_id` bigint(20) UNSIGNED NOT NULL,
  `upah_normal` int(11) DEFAULT NULL,
  `upah_target` int(11) DEFAULT NULL,
  `upah_lembur` int(11) DEFAULT NULL,
  `masuk_minggu` int(11) DEFAULT NULL,
  `kasbon` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `foto_karyawan`, `foto_face_recognition`, `email`, `telepon`, `username`, `password`, `tgl_lahir`, `gender`, `tgl_join`, `status_nikah`, `alamat`, `cuti_dadakan`, `cuti_bersama`, `cuti_menikah`, `cuti_diluar_tanggungan`, `cuti_khusus`, `cuti_melahirkan`, `izin_telat`, `izin_pulang_cepat`, `is_admin`, `jabatan_id`, `golongan_id`, `lokasi_id`, `upah_normal`, `upah_target`, `upah_lembur`, `masuk_minggu`, `kasbon`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL, 'admin@gmail.com', '0987654321', 'admin', '$2y$10$w4QjVL4D0PkCZWYyHclq9u4muFusI5HA9aZovud1tyjILLdeCwqym', '2024-05-03', 'Laki-Laki', '1998-01-26', 'Menikah', 'jl. admin test', '12', '5', '2', '10', '8', '6', '16', '9', 'admin', 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-03 00:14:35', '2024-07-20 19:55:47'),
(12, 'ROHMAT', NULL, NULL, 'rohmatalmusawa@gmail.com', '083813350567', 'Rohmat', '$2y$10$x/kUWv92wWH3HCGoYTpSauAdH1UWinCLj868q37EMgttdLKb8CkJa', '1995-05-31', 'Laki-Laki', '2024-06-14', 'Lajang', 'JL.TAMRIN', '0', '0', '0', '0', '0', '0', '0', '0', 'user', 1, 3, 7, 5000000, 100000, 50000, 125000, 250000, NULL, NULL, '2024-06-14 06:41:54', '2024-09-08 05:11:52'),
(13, 'andry adiwibawa', NULL, NULL, 'test@gmail.com', '0899889823', 'andry', '$2y$10$Wv7s.AZb8vL5ckVenO9muedOcd4jChvFuJfjOf24vNsLc5CcABVp2', '2024-07-01', 'Laki-Laki', '2024-07-15', 'Lajang', 'test', '1', '1', '1', '1', '1', '1', '1', '1', 'user', 5, 3, 6, 2500000, 75000, 35000, 35000, 20000, NULL, NULL, '2024-07-20 19:47:13', '2024-09-07 20:14:46'),
(14, 'Wisnu', NULL, NULL, 'test@gmail.com', '0899889823', 'andry', '$2y$10$Wv7s.AZb8vL5ckVenO9muedOcd4jChvFuJfjOf24vNsLc5CcABVp2', '2024-07-01', 'Laki-Laki', '2024-07-15', 'Lajang', 'test', '1', '1', '1', '1', '1', '1', '1', '1', 'user', 2, 3, 6, 2000000, 12500, 100000, 75000, 450000, NULL, NULL, '2024-07-20 19:47:13', '2024-09-07 20:14:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_shifts`
--
ALTER TABLE `auto_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cutis`
--
ALTER TABLE `cutis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinas_luars`
--
ALTER TABLE `dinas_luars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `golongans`
--
ALTER TABLE `golongans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lemburs`
--
ALTER TABLE `lemburs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lemburs_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lokasis_created_by_foreign` (`created_by`);

--
-- Indexes for table `mapping_shifts`
--
ALTER TABLE `mapping_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pajaks`
--
ALTER TABLE `pajaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pajaks_status_id_foreign` (`status_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payrolls_status_id_foreign` (`status_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reset_cutis`
--
ALTER TABLE `reset_cutis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sips`
--
ALTER TABLE `sips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_ptkps`
--
ALTER TABLE `status_ptkps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tunjangans`
--
ALTER TABLE `tunjangans`
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
-- AUTO_INCREMENT for table `auto_shifts`
--
ALTER TABLE `auto_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cutis`
--
ALTER TABLE `cutis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dinas_luars`
--
ALTER TABLE `dinas_luars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `golongans`
--
ALTER TABLE `golongans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lemburs`
--
ALTER TABLE `lemburs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lokasis`
--
ALTER TABLE `lokasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mapping_shifts`
--
ALTER TABLE `mapping_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pajaks`
--
ALTER TABLE `pajaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_cutis`
--
ALTER TABLE `reset_cutis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sips`
--
ALTER TABLE `sips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_ptkps`
--
ALTER TABLE `status_ptkps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tunjangans`
--
ALTER TABLE `tunjangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lemburs`
--
ALTER TABLE `lemburs`
  ADD CONSTRAINT `lemburs_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD CONSTRAINT `lokasis_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `pajaks`
--
ALTER TABLE `pajaks`
  ADD CONSTRAINT `pajaks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status_ptkps` (`id`);

--
-- Constraints for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD CONSTRAINT `payrolls_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status_ptkps` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
