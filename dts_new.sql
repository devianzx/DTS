-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 09:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dts_new`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_27_115104_create_transactions_table', 1),
(6, '2023_09_27_115131_create_offices_table', 1),
(7, '2023_09_27_140850_create_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `office_name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `office_name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'PESO', NULL, NULL, NULL),
(2, 'HR (Human Resources)', NULL, NULL, NULL),
(3, 'ACCESOR', NULL, NULL, NULL),
(4, 'MLR (MUNICIPAL LOCAL REGISTRAR)', NULL, NULL, NULL),
(5, 'ENGR', NULL, NULL, NULL),
(6, 'MPDO', NULL, NULL, NULL),
(7, 'GSO', NULL, NULL, NULL),
(8, 'ACCOUNTING', NULL, NULL, NULL),
(9, 'COA', NULL, NULL, NULL),
(10, 'TREASURY', NULL, NULL, NULL),
(11, 'SB', NULL, NULL, NULL),
(12, 'MIS', NULL, NULL, NULL),
(13, 'ADMIN OFFICE', NULL, NULL, NULL),
(14, 'MAYOR OFFICE', NULL, NULL, NULL),
(15, 'MSWD', NULL, NULL, NULL),
(16, 'DEPT. of AGRI', NULL, NULL, NULL),
(17, 'NEGO CENTER', NULL, NULL, NULL),
(18, 'TOURISM', NULL, NULL, NULL),
(19, 'MDRRMO', NULL, NULL, NULL),
(20, 'MHO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', NULL, NULL, NULL),
(2, 'admin', NULL, NULL, NULL),
(3, 'office', NULL, NULL, NULL),
(4, 'user', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `requested_by` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `contactnumber` varchar(255) NOT NULL,
  `doctype` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `requested_by`, `fullname`, `office`, `contactnumber`, `doctype`, `details`, `purpose`, `file_path`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 15, 'Dr. Jameson Gottlieb MD', 'PESO', '091700000000', 'Request for Budget 2024', 'Porro eum accusantium corporis nobis provident.', 'no purpose', NULL, NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(2, 16, 'Henri Kohler', 'PESO', '', '', 'Eligendi assumenda ratione ipsum voluptas odit explicabo amet.', 'all purpose', NULL, NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(3, 17, 'Prof. Willow Heller', 'ACCESOR', '09202020202', 'Request for Approval', 'Quam praesentium at eligendi architecto ipsam et.', '', NULL, NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(4, 18, 'Lilliana Farrell', 'HR (Human Resources)', '', '', 'Deleniti aut provident eaque.', '', NULL, NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(5, 19, 'Aaron Bashirian', 'TREASURY', '', '', 'Fugit voluptatem voluptatem quasi quam.', '', NULL, NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(6, 20, 'Marjory Reichel', 'HR (Human Resources)', '', '', 'Modi reprehenderit et facilis nesciunt.', '', NULL, NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(7, 21, 'Deontae Homenick IV', '', '', '', 'Eum a et natus perspiciatis et suscipit.', '', NULL, NULL, '2023-09-27 13:00:34', '2023-09-27 13:00:34'),
(8, 22, 'Alana Schimmel', '', '', '', 'Ea quis rerum est.', '', NULL, NULL, '2023-09-27 13:00:34', '2023-09-27 13:00:34'),
(9, 23, 'Prof. Jarrod Tillman IV', 'TREASURY', '', '', 'Suscipit molestias cupiditate exercitationem cumque voluptate dolorum et.', '', NULL, NULL, '2023-09-27 13:00:34', '2023-09-27 13:00:34'),
(10, 24, 'Dr. Robin Bergnaum', '', '', '', 'Non ea inventore qui incidunt eos ducimus doloribus.', '', NULL, NULL, '2023-09-27 13:00:34', '2023-09-27 13:00:34'),
(11, 25, 'Tianna Tillman III', '', '', '', 'Nemo similique eum repellat et labore ex sed.', '', NULL, NULL, '2023-09-27 13:00:34', '2023-09-27 13:00:34'),
(12, 26, 'Prof. Samir McCullough III', 'MSWD', '', '', 'Unde libero asperiores sed magnam.', '', NULL, NULL, '2023-09-27 13:00:34', '2023-09-27 13:00:34'),
(13, 27, 'Prof. Avery Becker Sr.', 'MSWD', '', '', 'Sit temporibus ratione totam mollitia quas.', '', NULL, NULL, '2023-09-27 13:00:34', '2023-09-27 13:00:34'),
(14, 28, 'Myrl Bergnaum', 'MSWD', '', '', 'Et quis voluptatem qui et amet rerum ea ad.', '', NULL, NULL, '2023-09-27 13:00:34', '2023-09-27 13:00:34'),
(15, 29, 'Nathanael Bernier', '', '', '', 'Et autem quam est est et.', '', NULL, NULL, '2023-09-27 13:00:34', '2023-09-27 13:00:34'),
(16, 30, 'Adrain Volkman', '', '', '', 'Magnam cumque et modi enim odio.', '', NULL, NULL, '2023-09-27 13:00:34', '2023-09-27 13:00:34'),
(17, 31, 'Itzel Nolan', '', '', '', 'Aut id culpa nihil ipsum nobis ex.', '', NULL, NULL, '2023-09-27 13:00:35', '2023-09-27 13:00:35'),
(18, 32, 'Prof. Vernon Schaefer II', '', '', '', 'Nihil beatae in cupiditate aliquam.', '', NULL, NULL, '2023-09-27 13:00:35', '2023-09-27 13:00:35'),
(19, 33, 'Alena Goldner', 'TOURISM', '', '', 'Minus sit nemo nisi.', '', NULL, NULL, '2023-09-27 13:00:35', '2023-09-27 13:00:35'),
(20, 34, 'Easter Mitchell', 'TOURISM', '', '', 'Esse facilis adipisci est provident quis repellendus.', '', NULL, NULL, '2023-09-27 13:00:35', '2023-09-27 13:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `fname` varchar(255) NOT NULL DEFAULT '',
  `mname` varchar(255) NOT NULL DEFAULT '',
  `lname` varchar(255) NOT NULL DEFAULT '',
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `station` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `fname`, `mname`, `lname`, `role`, `station`, `department`, `email`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ian Balbuena', 'Ian', 'Fechalin', 'Balbuena', 'superadmin', 'Station 1', 'Department 1', 'ian@gmail.com', NULL, '$2y$10$ZZAlI4HGlq91hVGt6eJ0feCtQh.w5YhLlVfP53WZSd3k1kx1zMkBu', NULL, NULL, NULL, NULL),
(2, 'Fatima Javier', 'Fatima', 'Coronel', 'Javier', 'admin', 'Station 2', 'Department 2', 'fatima@gmail.com', NULL, '$2y$10$GJnbKSz5yWKBYzS3XkLxWOsiMZli4BO8oogDRYTOTvyBweiwRKMkO', NULL, NULL, NULL, NULL),
(3, 'Crizza Sevilla', 'Crizza Mariette', 'Ganlao', 'Sevilla', 'office', 'Station 3', 'Department 3', 'crizza@gmail.com', NULL, '$2y$10$RTmUW.whcUPN0.xs40m/wel275giK4h7VqOHYk42fmXTPmBdWG/Zm', NULL, NULL, NULL, NULL),
(4, 'User Ako', 'User', 'Po', 'Ako', 'user', 'Station 3', 'Department 3', 'user@gmail.com', NULL, '$2y$10$VgQzK79gvSq4jz6u/1jPn.y/h2JumvXQkKcIkLiVCbUd4z3va12La', NULL, NULL, NULL, NULL),
(5, 'Lance Lindgren', '', '', '', 'admin', '', '', 'weber.raquel@example.com', '2023-09-27 12:59:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0V9Ap3fIVz', NULL, '2023-09-27 12:59:22', '2023-09-27 12:59:22'),
(6, 'Prof. Harrison Reinger PhD', '', '', '', 'superadmin', '', '', 'rashad71@example.org', '2023-09-27 12:59:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SRCR5OgFJg', NULL, '2023-09-27 12:59:23', '2023-09-27 12:59:23'),
(7, 'Nathanial Hermiston', '', '', '', 'office', '', '', 'kpfeffer@example.com', '2023-09-27 12:59:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YvRg4i8YfR', NULL, '2023-09-27 12:59:23', '2023-09-27 12:59:23'),
(8, 'Keven Murray', '', '', '', 'office', '', '', 'arch.langosh@example.net', '2023-09-27 12:59:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fe3PyfrCV6', NULL, '2023-09-27 12:59:23', '2023-09-27 12:59:23'),
(9, 'Prof. Aryanna Roberts', '', '', '', 'office', '', '', 'catalina71@example.org', '2023-09-27 12:59:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '53InzVAjX8', NULL, '2023-09-27 12:59:23', '2023-09-27 12:59:23'),
(10, 'Jane Runte', '', '', '', 'superadmin', '', '', 'adam27@example.com', '2023-09-27 12:59:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sOZKyOuwFQ', NULL, '2023-09-27 12:59:23', '2023-09-27 12:59:23'),
(11, 'Julien Russel', '', '', '', 'admin', '', '', 'bosco.bertha@example.org', '2023-09-27 12:59:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lSWNWy8oWQ', NULL, '2023-09-27 12:59:23', '2023-09-27 12:59:23'),
(12, 'Lela Doyle', '', '', '', 'superadmin', '', '', 'carolyne81@example.net', '2023-09-27 12:59:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k7hLU80tZg', NULL, '2023-09-27 12:59:23', '2023-09-27 12:59:23'),
(13, 'Murray Stehr', '', '', '', 'office', '', '', 'jbeer@example.org', '2023-09-27 12:59:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L0z13ETtBV', NULL, '2023-09-27 12:59:23', '2023-09-27 12:59:23'),
(14, 'Allison Ankunding', '', '', '', 'superadmin', '', '', 'janick52@example.net', '2023-09-27 12:59:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'COZAZeU5SQ', NULL, '2023-09-27 12:59:23', '2023-09-27 12:59:23'),
(15, 'May Reynolds', '', '', '', 'superadmin', '', '', 'mose.zemlak@example.org', '2023-09-27 13:00:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xP4y77urH3', NULL, '2023-09-27 13:00:32', '2023-09-27 13:00:32'),
(16, 'Angela Marks', '', '', '', 'superadmin', '', '', 'anika.herman@example.net', '2023-09-27 13:00:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'goPHkFlqfm', NULL, '2023-09-27 13:00:32', '2023-09-27 13:00:32'),
(17, 'Gillian Doyle', '', '', '', 'superadmin', '', '', 'kristofer63@example.com', '2023-09-27 13:00:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8ZMMf7b5zI', NULL, '2023-09-27 13:00:32', '2023-09-27 13:00:32'),
(18, 'Sammy Russel', '', '', '', 'superadmin', '', '', 'mitchell.watsica@example.com', '2023-09-27 13:00:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mbcDHFJcDn', NULL, '2023-09-27 13:00:32', '2023-09-27 13:00:32'),
(19, 'Mrs. Madelynn Weber', '', '', '', 'office', '', '', 'jaida19@example.org', '2023-09-27 13:00:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KadLwtJ2wA', NULL, '2023-09-27 13:00:32', '2023-09-27 13:00:32'),
(20, 'Cedrick Kilback', '', '', '', 'admin', '', '', 'sauer.laverna@example.org', '2023-09-27 13:00:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AmfZJKi3y4', NULL, '2023-09-27 13:00:32', '2023-09-27 13:00:32'),
(21, 'Albina Beahan', '', '', '', 'user', '', '', 'conroy.prudence@example.org', '2023-09-27 13:00:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DaO9PfXWGT', NULL, '2023-09-27 13:00:32', '2023-09-27 13:00:32'),
(22, 'Prof. Skyla Cassin I', '', '', '', 'user', '', '', 'creola42@example.net', '2023-09-27 13:00:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c5LRsm4Cyp', NULL, '2023-09-27 13:00:32', '2023-09-27 13:00:32'),
(23, 'Frederick Monahan', '', '', '', 'admin', '', '', 'natalie.emard@example.org', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AJlLyN6lg4', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(24, 'Angela Nicolas', '', '', '', 'superadmin', '', '', 'hbogisich@example.org', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vWF1QzIZf4', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(25, 'Meaghan Schulist', '', '', '', 'user', '', '', 'kuhlman.eleanore@example.org', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yHYBwGFonY', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(26, 'Prof. Florian Lindgren I', '', '', '', 'office', '', '', 'ally.satterfield@example.net', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AmWP9ihD8L', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(27, 'Joey Abshire', '', '', '', 'admin', '', '', 'runolfsson.eleanora@example.org', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2YWW4hhhrw', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(28, 'Craig Hermann', '', '', '', 'office', '', '', 'astrid91@example.net', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tTQKXIgc20', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(29, 'Clarissa Paucek DDS', '', '', '', 'superadmin', '', '', 'llakin@example.net', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nCTTpGCZvA', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(30, 'Mr. Helmer Jones', '', '', '', 'admin', '', '', 'ohansen@example.net', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HCBkE5guzf', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(31, 'Mr. Trenton Brekke Jr.', '', '', '', 'office', '', '', 'wisoky.camden@example.org', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uHIASlm1Zm', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(32, 'Dayne Kuhn Jr.', '', '', '', 'user', '', '', 'zkozey@example.org', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '53zH9Hi4mB', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(33, 'Adella Marks', '', '', '', 'office', '', '', 'wsenger@example.com', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '85EFAJSk7Q', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33'),
(34, 'Magali Bayer', '', '', '', 'user', '', '', 'francesco.barton@example.org', '2023-09-27 13:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2uXVHjn2Vf', NULL, '2023-09-27 13:00:33', '2023-09-27 13:00:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
