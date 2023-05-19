-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
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


-- Dumping database structure for perpus
CREATE DATABASE IF NOT EXISTS `perpus` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `perpus`;

-- Dumping structure for table perpus.book
CREATE TABLE IF NOT EXISTS `book` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publication_year` varchar(4) NOT NULL,
  `id_publisher` int NOT NULL,
  `id_category` int NOT NULL,
  `quantity` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_publisher` (`id_publisher`),
  KEY `id_category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table perpus.book: ~8 rows (approximately)
INSERT INTO `book` (`id`, `title`, `author`, `publication_year`, `id_publisher`, `id_category`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Sebuah Perjalanan', 'Michale Umbas', '2013', 2, 3, 246, NULL, NULL, NULL),
	(2, 'True Spirit', 'Ira Puspita', '2015', 2, 3, 10, '2023-05-16 11:02:14', '2023-05-16 11:02:14', NULL),
	(3, 'Bolehh', 'Bagas', '2022', 3, 2, 5, '2023-05-16 11:18:14', '2023-05-16 12:31:19', NULL),
	(4, 'Yaudahh', 'A arkan', '2022', 3, 3, 10, '2023-05-16 12:03:21', '2023-05-16 12:15:34', NULL),
	(5, 'Fur Immer Dein Ian – Valerie', 'Valerie', '2021', 4, 2, 5, '2023-05-17 11:33:29', '2023-05-17 11:33:29', NULL),
	(6, 'Merdeka Sejak hari', 'Fuadi, A', '2019', 4, 2, 5, '2023-05-17 11:40:06', '2023-05-17 11:40:06', NULL),
	(7, 'Detektif Conan', 'Gosho Aoyama', '1994', 5, 4, 5, '2023-05-17 11:44:24', '2023-05-17 11:44:24', NULL),
	(8, 'Bleach', 'Tite Kubo', '2001', 6, 4, 5, '2023-05-17 11:46:53', '2023-05-17 11:46:53', NULL);

-- Dumping structure for table perpus.borrow
CREATE TABLE IF NOT EXISTS `borrow` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_borrower` int unsigned NOT NULL,
  `id_book` int unsigned NOT NULL,
  `id_staff` int unsigned NOT NULL,
  `release_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_borrower` (`id_borrower`),
  KEY `id_book` (`id_book`),
  KEY `id_staff` (`id_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table perpus.borrow: ~3 rows (approximately)
INSERT INTO `borrow` (`id`, `id_borrower`, `id_book`, `id_staff`, `release_date`, `due_date`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 2, 3, 4, '0000-00-00', '2023-05-17', '...', '2023-05-17 10:36:21', '2023-05-17 10:41:54', '2023-05-17 10:41:54'),
	(2, 2, 1, 1, '0000-00-00', '2023-05-21', '...', '2023-05-19 10:20:54', '2023-05-19 11:08:59', '2023-05-19 11:08:59'),
	(3, 3, 1, 1, '0000-00-00', '2023-05-23', 'Selesai pinjam', '2023-05-19 11:09:27', '2023-05-19 11:24:25', NULL);

-- Dumping structure for table perpus.borrower
CREATE TABLE IF NOT EXISTS `borrower` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table perpus.borrower: ~4 rows (approximately)
INSERT INTO `borrower` (`id`, `name`, `birthdate`, `address`, `gender`, `contact`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'aa', '0001-01-01', '11', '', '11', 'aa@aa.aa', '2023-05-15 13:36:15', '2023-05-16 08:14:12', '2023-05-16 08:14:12'),
	(2, 'Bagas', '2003-09-08', 'leles', 'L', '1234567890', 'admin@ini.com', '2023-05-15 13:37:12', '2023-05-16 12:29:52', NULL),
	(3, 'user1', '1111-01-01', 'leles', 'L', '1234567890', 'bay123@gmail.com', '2023-05-16 08:14:41', '2023-05-16 08:14:41', NULL),
	(4, 'a arkan', '1111-01-01', 'kadungora', 'L', '1234567890', 'bianalbaihaqi@gmail.com', '2023-05-16 12:19:28', '2023-05-16 12:26:40', NULL);

-- Dumping structure for table perpus.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table perpus.category: ~2 rows (approximately)
INSERT INTO `category` (`id`, `category`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'book1', '2023-05-15 11:21:12', '2023-05-15 11:27:30', '2023-05-15 11:27:30'),
	(2, 'Novel', '2023-05-15 11:35:17', '2023-05-15 11:35:17', NULL),
	(3, 'Sejarah', '2023-05-15 11:35:56', '2023-05-15 11:35:56', NULL),
	(4, 'Comic', '2023-05-16 11:14:14', '2023-05-16 11:14:14', NULL);

-- Dumping structure for table perpus.publisher
CREATE TABLE IF NOT EXISTS `publisher` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table perpus.publisher: ~5 rows (approximately)
INSERT INTO `publisher` (`id`, `name`, `address`, `contact`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'bian', 'kandang', '89453341b5446cf', '2023-05-15 10:54:04', '2023-05-15 10:56:25', '2023-05-15 10:56:25'),
	(2, 'Gita Wirjawan', 'kandang', '087727726316', '2023-05-15 10:56:41', '2023-05-15 10:57:44', NULL),
	(3, 'PT. Bolehh', 'Bandung', '1234567890', '2023-05-16 11:17:23', '2023-05-16 11:17:23', NULL),
	(4, 'Gramedia', 'Bandung', '1234567890', '2023-05-17 11:31:55', '2023-05-17 11:31:55', NULL),
	(5, 'Shogakukan', 'Jepang', '1234567890', '2023-05-17 11:42:48', '2023-05-17 11:42:48', NULL),
	(6, 'Shueisha', 'Jepang', '1234567890', '2023-05-17 11:45:40', '2023-05-17 11:45:40', NULL);

-- Dumping structure for table perpus.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table perpus.staff: ~2 rows (approximately)
INSERT INTO `staff` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Bian', 'bianalbaihaqi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL),
	(2, 'user1', 'user1@gmail.com', '7ac66c0f148de9519b8bd264312c4d64', NULL, NULL, NULL),
	(4, 'arkan', 'user2@gmail.com', '7ac66c0f148de9519b8bd264312c4d64', '2023-05-12 11:30:12', '2023-05-16 12:21:18', NULL),
	(5, 'user3', 'user3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-05-15 09:25:32', '2023-05-15 09:35:22', '2023-05-15 09:35:22');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
