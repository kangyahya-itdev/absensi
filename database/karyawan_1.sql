-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.2.0 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for karyawan
DROP DATABASE IF EXISTS `karyawan`;
CREATE DATABASE IF NOT EXISTS `karyawan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `karyawan`;

-- Dumping structure for table karyawan.auto_shifts
DROP TABLE IF EXISTS `auto_shifts`;
CREATE TABLE IF NOT EXISTS `auto_shifts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `jabatan_id` bigint unsigned NOT NULL,
  `shift_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.auto_shifts: ~0 rows (approximately)
DELETE FROM `auto_shifts`;
INSERT INTO `auto_shifts` (`id`, `jabatan_id`, `shift_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, '2024-09-12 00:32:32', '2024-09-12 00:32:32'),
	(2, 1, 4, '2024-09-14 03:36:11', '2024-09-14 03:36:11');

-- Dumping structure for table karyawan.cutis
DROP TABLE IF EXISTS `cutis`;
CREATE TABLE IF NOT EXISTS `cutis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `nama_cuti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alasan_cuti` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_cuti` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_cuti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.cutis: ~0 rows (approximately)
DELETE FROM `cutis`;

-- Dumping structure for table karyawan.dinas_luars
DROP TABLE IF EXISTS `dinas_luars`;
CREATE TABLE IF NOT EXISTS `dinas_luars` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `shift_id` bigint unsigned NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulang_cepat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.dinas_luars: ~0 rows (approximately)
DELETE FROM `dinas_luars`;

-- Dumping structure for table karyawan.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table karyawan.files
DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `jenis_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `fileUpload` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.files: ~0 rows (approximately)
DELETE FROM `files`;

-- Dumping structure for table karyawan.golongans
DROP TABLE IF EXISTS `golongans`;
CREATE TABLE IF NOT EXISTS `golongans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.golongans: ~6 rows (approximately)
DELETE FROM `golongans`;
INSERT INTO `golongans` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'DIREKSI', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(2, 'KABAG', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(3, 'STAFF', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(4, 'PELAKSANA', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(5, 'dosen', '2024-05-10 06:27:55', '2024-05-10 06:27:55'),
	(6, 'tukang peropesi', '2024-05-16 06:06:12', '2024-05-16 06:06:12');

-- Dumping structure for table karyawan.jabatans
DROP TABLE IF EXISTS `jabatans`;
CREATE TABLE IF NOT EXISTS `jabatans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.jabatans: ~5 rows (approximately)
DELETE FROM `jabatans`;
INSERT INTO `jabatans` (`id`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
	(1, 'Teknologi Informasi', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(2, 'Keuangan dan Akutansi', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(3, 'Administrasi & Umum', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(4, 'Humas & Pemasaran', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(5, 'Sekretariat', '2024-05-03 00:14:35', '2024-05-03 00:14:35');

-- Dumping structure for table karyawan.lemburs
DROP TABLE IF EXISTS `lemburs`;
CREATE TABLE IF NOT EXISTS `lemburs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jarak_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_jam_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_lembur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lemburs_approved_by_foreign` (`approved_by`),
  CONSTRAINT `lemburs_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.lemburs: ~1 rows (approximately)
DELETE FROM `lemburs`;
INSERT INTO `lemburs` (`id`, `user_id`, `tanggal`, `jam_masuk`, `lat_masuk`, `long_masuk`, `jarak_masuk`, `foto_jam_masuk`, `jam_keluar`, `lat_keluar`, `long_keluar`, `jarak_keluar`, `foto_jam_keluar`, `total_lembur`, `status`, `notes`, `approved_by`, `created_at`, `updated_at`) VALUES
	(1, 15, '2024-09-14', '2024-09-14 17:47', '-6.8341564', '108.6340004', '6.8290768512769', 'foto_jam_masuk_lembur/66e569d44d42e.png', '2024-09-14 21:28', '-6.834152', '108.634001', '7.3232152280159', 'foto_jam_keluar_lembur/66e59da39c571.png', '13260', 'Approved', NULL, 1, '2024-09-14 10:47:48', '2024-09-14 07:34:45');

-- Dumping structure for table karyawan.lokasis
DROP TABLE IF EXISTS `lokasis`;
CREATE TABLE IF NOT EXISTS `lokasis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat_kantor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_kantor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `radius` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lokasis_created_by_foreign` (`created_by`),
  CONSTRAINT `lokasis_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.lokasis: ~9 rows (approximately)
DELETE FROM `lokasis`;
INSERT INTO `lokasis` (`id`, `nama_lokasi`, `lat_kantor`, `long_kantor`, `radius`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'cabang curug', '-6.258805806672876', '106.56050504383467', '200', 'approved', 1, '2024-05-03 00:14:35', '2024-05-10 05:54:35'),
	(2, 'cabanng pamulang', '-6.346095957973469,', '106.69148968076192', '100', 'approved', 1, '2024-05-10 06:11:23', '2024-05-16 03:47:19'),
	(3, 'cabang tamrin', '-6.18047694943142', '106.82326098324573', '100', 'approved', 1, '2024-05-10 06:32:29', '2024-05-10 06:32:29'),
	(4, 'cabang cipetey', '-6.344018445072011', '106.73723771419235', '5000', 'approved', 1, '2024-05-16 06:05:21', '2024-05-16 06:10:34'),
	(5, 'Jdc', '-6.1234225', '106.6679042', '100', 'approved', 1, '2024-06-13 03:53:40', '2024-06-13 03:53:40'),
	(6, 'jakarta pusat', '-6.2291968', '106.807296', '2000', 'approved', 1, '2024-07-20 19:55:22', '2024-07-20 19:55:22'),
	(7, 'pusat 1', '-6.22592', '106.8302336', '2000', 'approved', 1, '2024-07-27 22:07:15', '2024-07-27 22:07:15'),
	(8, 'jogja', '-7.9233946', '110.3478088', '2000', 'approved', 1, '2024-07-27 22:14:26', '2024-07-27 22:14:26'),
	(9, 'Cabang Cirebon', '-6.8342172', '108.6339916', '10', 'approved', 1, '2024-09-14 02:48:09', '2024-09-14 02:48:09');

-- Dumping structure for table karyawan.mapping_shifts
DROP TABLE IF EXISTS `mapping_shifts`;
CREATE TABLE IF NOT EXISTS `mapping_shifts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `shift_id` bigint unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `jam_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_masuk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulang_cepat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.mapping_shifts: ~15 rows (approximately)
DELETE FROM `mapping_shifts`;
INSERT INTO `mapping_shifts` (`id`, `user_id`, `shift_id`, `tanggal`, `jam_absen`, `telat`, `lat_absen`, `long_absen`, `jarak_masuk`, `foto_jam_absen`, `jam_pulang`, `pulang_cepat`, `foto_jam_pulang`, `lat_pulang`, `long_pulang`, `jarak_pulang`, `status_absen`, `created_at`, `updated_at`) VALUES
	(33, 12, 3, '2024-06-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-06-22 02:29:51', '2024-06-22 02:29:51'),
	(36, 12, 2, '2024-07-28', '12:09', '14940', '-6.22592', '106.8302336', '0', 'foto_jam_absen/66a5d29ec5f43.png', '12:10', '17400', 'foto_jam_pulang/66a5d2aa378db.png', '-6.22592', '106.8302336', '0', 'Masuk', '2024-07-28 05:04:11', '2024-07-28 05:10:02'),
	(37, 13, 2, '2024-07-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-07-28 05:15:25', '2024-07-28 05:15:25'),
	(38, 12, 4, '2024-07-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-07-28 08:40:26', '2024-07-28 08:40:26'),
	(39, 14, 2, '2024-07-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-07-28 05:15:25', '2024-07-28 05:15:25'),
	(40, 14, 3, '2024-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-09-12 07:33:48', '2024-09-12 07:33:48'),
	(41, 14, 3, '2024-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-09-12 07:33:48', '2024-09-12 07:33:48'),
	(42, 14, 3, '2024-09-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-09-12 07:33:48', '2024-09-12 07:33:48'),
	(43, 15, 4, '2024-09-14', '21:28', '12900', '-6.834152', '108.634001', '7.3232152280159', 'foto_jam_absen/66e59d822a0a0.png', '21:29', '0', 'foto_jam_pulang/66e59dbcc565b.png', '-6.834152', '108.634001', '7.3232152280159', 'Masuk', '2024-09-14 14:27:46', '2024-09-14 14:29:16'),
	(45, 15, 2, '2024-09-15', '08:36', '2160', '-6.834143', '108.6340037', '8.3576790892896', 'foto_jam_absen/66e63a0a036e7.png', '08:36', '30240', 'foto_jam_pulang/66e63a354277d.png', '-6.834143', '108.6340037', '8.3576790892896', 'Masuk', '2024-09-15 01:35:56', '2024-09-15 01:36:53'),
	(46, 15, 2, '2024-09-23', '08:00', '0', '-6.8341543', '108.6339727', '7.2979446207928', 'foto_jam_absen/66f0bdb6c362b.png', '17:01', '0', 'foto_jam_pulang/66f13c93eefd3.png', '-6.8341535', '108.6339729', '7.3771622940548', 'Masuk', '2024-09-18 15:58:14', '2024-09-23 10:01:56'),
	(47, 15, 2, '2024-09-24', '08:01', '60', '-6.8341535', '108.6339729', '7.3771622940548', 'foto_jam_absen/66f20f5f81cb6.png', '17:02', '0', 'foto_jam_pulang/66f28e1e23ce9.png', '-6.8341535', '108.6339729', '7.3771622940548', 'Masuk', '2024-09-18 15:58:15', '2024-09-24 10:02:06'),
	(48, 15, 2, '2024-09-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-09-18 15:58:15', '2024-09-18 15:58:15'),
	(49, 15, 2, '2024-09-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-09-18 15:58:15', '2024-09-18 15:58:15'),
	(50, 15, 2, '2024-09-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-09-18 15:58:15', '2024-09-18 15:58:15');

-- Dumping structure for table karyawan.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.migrations: ~20 rows (approximately)
DELETE FROM `migrations`;
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

-- Dumping structure for table karyawan.pajaks
DROP TABLE IF EXISTS `pajaks`;
CREATE TABLE IF NOT EXISTS `pajaks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `status_id` bigint unsigned NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pajaks_status_id_foreign` (`status_id`),
  CONSTRAINT `pajaks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status_ptkps` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.pajaks: ~0 rows (approximately)
DELETE FROM `pajaks`;

-- Dumping structure for table karyawan.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;

-- Dumping structure for table karyawan.payrolls
DROP TABLE IF EXISTS `payrolls`;
CREATE TABLE IF NOT EXISTS `payrolls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint unsigned NOT NULL,
  `gaji` decimal(15,2) NOT NULL DEFAULT '0.00',
  `pot_tunjangan_makan` decimal(15,2) NOT NULL DEFAULT '0.00',
  `pot_tunjangan_transport` decimal(15,2) NOT NULL DEFAULT '0.00',
  `setoran_bpjs_kes` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tunjangan_bpjs_kes` decimal(15,2) NOT NULL DEFAULT '0.00',
  `setoran_bpjs_tk` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tunjangan_bpjs_tk` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tunjangan_pensiun` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tunjangan_komunikasi` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tunjangan_pph_21` decimal(15,2) NOT NULL DEFAULT '0.00',
  `pot_lainnya` decimal(15,2) NOT NULL DEFAULT '0.00',
  `upah_normal` decimal(15,0) NOT NULL DEFAULT '0',
  `upah_target` decimal(15,0) NOT NULL DEFAULT '0',
  `masuk_minggu` decimal(15,0) NOT NULL DEFAULT '0',
  `kasbon` decimal(15,0) NOT NULL DEFAULT '0',
  `lembur` decimal(15,0) NOT NULL DEFAULT '0',
  `denda` decimal(15,0) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payrolls_status_id_foreign` (`status_id`),
  CONSTRAINT `payrolls_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status_ptkps` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.payrolls: ~1 rows (approximately)
DELETE FROM `payrolls`;
INSERT INTO `payrolls` (`id`, `user_id`, `bulan`, `tahun`, `status_id`, `gaji`, `pot_tunjangan_makan`, `pot_tunjangan_transport`, `setoran_bpjs_kes`, `tunjangan_bpjs_kes`, `setoran_bpjs_tk`, `tunjangan_bpjs_tk`, `tunjangan_pensiun`, `tunjangan_komunikasi`, `tunjangan_pph_21`, `pot_lainnya`, `upah_normal`, `upah_target`, `masuk_minggu`, `kasbon`, `lembur`, `denda`, `created_at`, `updated_at`) VALUES
	(19, 15, '9', '2024', 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 1000, 15000, 5000, 12000, 1000, '2024-09-23 02:22:17', NULL);

-- Dumping structure for table karyawan.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table karyawan.reset_cutis
DROP TABLE IF EXISTS `reset_cutis`;
CREATE TABLE IF NOT EXISTS `reset_cutis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cuti_dadakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_bersama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_menikah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_diluar_tanggungan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_khusus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_melahirkan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_telat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_pulang_cepat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.reset_cutis: ~1 rows (approximately)
DELETE FROM `reset_cutis`;
INSERT INTO `reset_cutis` (`id`, `cuti_dadakan`, `cuti_bersama`, `cuti_menikah`, `cuti_diluar_tanggungan`, `cuti_khusus`, `cuti_melahirkan`, `izin_telat`, `izin_pulang_cepat`, `created_at`, `updated_at`) VALUES
	(1, '10', '10', '10', '10', '10', '10', '10', '10', '2024-05-03 00:14:35', '2024-05-03 00:14:35');

-- Dumping structure for table karyawan.shifts
DROP TABLE IF EXISTS `shifts`;
CREATE TABLE IF NOT EXISTS `shifts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_shift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_keluar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.shifts: ~4 rows (approximately)
DELETE FROM `shifts`;
INSERT INTO `shifts` (`id`, `nama_shift`, `jam_masuk`, `jam_keluar`, `created_at`, `updated_at`) VALUES
	(1, 'Libur', '00:00', '00:00', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(2, 'Office', '08:00', '17:00', '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(3, 'Siang', '12:00', '21:00', '2024-05-03 00:14:35', '2024-06-14 06:42:59'),
	(4, 'Malam', '17:53', '17:53', '2024-05-03 00:14:35', '2024-06-13 03:53:05');

-- Dumping structure for table karyawan.sips
DROP TABLE IF EXISTS `sips`;
CREATE TABLE IF NOT EXISTS `sips` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `nama_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_berakhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.sips: ~0 rows (approximately)
DELETE FROM `sips`;

-- Dumping structure for table karyawan.status_ptkps
DROP TABLE IF EXISTS `status_ptkps`;
CREATE TABLE IF NOT EXISTS `status_ptkps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptkp_2016` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ptkp_2015` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ptkp_2009_2012` decimal(15,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.status_ptkps: ~4 rows (approximately)
DELETE FROM `status_ptkps`;
INSERT INTO `status_ptkps` (`id`, `name`, `ptkp_2016`, `ptkp_2015`, `ptkp_2009_2012`, `created_at`, `updated_at`) VALUES
	(1, 'TK/0', 54000000.00, 36000000.00, 15840000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(2, 'TK/1', 58500000.00, 39000000.00, 17160000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(3, 'TK/2', 63000000.00, 42000000.00, 18480000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(4, 'TK/3', 67500000.00, 45000000.00, 19800000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35');

-- Dumping structure for table karyawan.tunjangans
DROP TABLE IF EXISTS `tunjangans`;
CREATE TABLE IF NOT EXISTS `tunjangans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `golongan_id` bigint unsigned NOT NULL,
  `tunjangan_makan` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tunjangan_transport` decimal(15,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.tunjangans: ~3 rows (approximately)
DELETE FROM `tunjangans`;
INSERT INTO `tunjangans` (`id`, `golongan_id`, `tunjangan_makan`, `tunjangan_transport`, `created_at`, `updated_at`) VALUES
	(1, 1, 20000.00, 20000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(2, 2, 30000.00, 20000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35'),
	(3, 3, 30000.00, 30000.00, '2024-05-03 00:14:35', '2024-05-03 00:14:35');

-- Dumping structure for table karyawan.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_karyawan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_face_recognition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_join` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_nikah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_dadakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_bersama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_menikah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_diluar_tanggungan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_khusus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_melahirkan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_telat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_pulang_cepat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_id` bigint unsigned NOT NULL,
  `golongan_id` bigint unsigned NOT NULL,
  `lokasi_id` bigint unsigned NOT NULL,
  `upah_normal` int DEFAULT NULL,
  `upah_target` int DEFAULT NULL,
  `upah_lembur` int DEFAULT NULL,
  `masuk_minggu` int DEFAULT NULL,
  `kasbon` int DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table karyawan.users: ~5 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `foto_karyawan`, `foto_face_recognition`, `email`, `telepon`, `username`, `password`, `tgl_lahir`, `gender`, `tgl_join`, `status_nikah`, `alamat`, `cuti_dadakan`, `cuti_bersama`, `cuti_menikah`, `cuti_diluar_tanggungan`, `cuti_khusus`, `cuti_melahirkan`, `izin_telat`, `izin_pulang_cepat`, `is_admin`, `jabatan_id`, `golongan_id`, `lokasi_id`, `upah_normal`, `upah_target`, `upah_lembur`, `masuk_minggu`, `kasbon`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', NULL, NULL, 'admin@gmail.com', '0987654321', 'admin', '$2y$10$w4QjVL4D0PkCZWYyHclq9u4muFusI5HA9aZovud1tyjILLdeCwqym', '2024-05-03', 'Laki-Laki', '1998-01-26', 'Menikah', 'jl. admin test', '12', '5', '2', '10', '8', '6', '16', '9', 'admin', 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-03 00:14:35', '2024-07-20 19:55:47'),
	(12, 'ROHMAT', NULL, NULL, 'rohmatalmusawa@gmail.com', '083813350567', 'Rohmat', '$2y$10$x/kUWv92wWH3HCGoYTpSauAdH1UWinCLj868q37EMgttdLKb8CkJa', '1995-05-31', 'Laki-Laki', '2024-06-14', 'Lajang', 'JL.TAMRIN', '0', '0', '0', '0', '0', '0', '0', '0', 'user', 1, 3, 7, 200000, 100000, 50000, 125000, 250000, NULL, NULL, '2024-06-14 06:41:54', '2024-09-14 02:57:39'),
	(13, 'andry adiwibawa', NULL, NULL, 'test@gmail.com', '0899889823', 'andry', '$2y$10$Wv7s.AZb8vL5ckVenO9muedOcd4jChvFuJfjOf24vNsLc5CcABVp2', '2024-07-01', 'Laki-Laki', '2024-07-15', 'Lajang', 'test', '1', '1', '1', '1', '1', '1', '1', '1', 'user', 5, 3, 6, 250000, 75000, 35000, 35000, 20000, NULL, NULL, '2024-07-20 19:47:13', '2024-09-19 18:47:44'),
	(14, 'Wisnu', NULL, NULL, 'test@gmail.com', '0899889823', 'andry', '$2y$10$Wv7s.AZb8vL5ckVenO9muedOcd4jChvFuJfjOf24vNsLc5CcABVp2', '2024-07-01', 'Laki-Laki', '2024-07-15', 'Lajang', 'test', '1', '1', '1', '1', '1', '1', '1', '1', 'user', 2, 3, 6, 200000, 12500, 100000, 75000, 450000, NULL, NULL, '2024-07-20 19:47:13', '2024-09-07 20:14:46'),
	(15, 'Yahya', NULL, NULL, 'yahya@gmail.com', '0896567777777', 'yahya', '$2y$10$wr4rRavswhXqtJAFN8E5WuzbIAc3mdpSt1NWn8OAqrmv/k/WJwet2', '2000-09-01', 'Laki-Laki', '2022-09-01', 'Menikah', 'Setu', '1', '1', '3', '2', '1', '40', '0', '0', 'user', 1, 3, 9, 250000, 1000000, 200000, 200000, 500000, NULL, NULL, '2024-09-12 00:25:01', '2024-09-19 19:43:18');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
