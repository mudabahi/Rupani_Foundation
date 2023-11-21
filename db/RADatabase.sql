-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 01:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelnotification`
--
CREATE DATABASE IF NOT EXISTS `laravelnotification` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravelnotification`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"9299b8af-3cb7-477a-9f4c-4d9f5228b0c5\",\"displayName\":\"App\\\\Notifications\\\\WelcomeNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\WelcomeNotification\\\":11:{s:2:\\\"id\\\";s:36:\\\"ff603695-c2cd-477b-ba1e-6ae12ef14e82\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1656279757, 1656279757),
(2, 'default', '{\"uuid\":\"c6ad784f-860a-4c53-9f56-18914474d4f8\",\"displayName\":\"App\\\\Notifications\\\\WelcomeNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\WelcomeNotification\\\":11:{s:2:\\\"id\\\";s:36:\\\"a27254b6-81ea-416b-b38c-4ea741c585e1\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1656279760, 1656279760),
(3, 'default', '{\"uuid\":\"5ef52886-498f-4b34-a348-402ef38e56f3\",\"displayName\":\"App\\\\Notifications\\\\WelcomeNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\WelcomeNotification\\\":12:{s:4:\\\"post\\\";a:2:{s:5:\\\"title\\\";s:10:\\\"post_title\\\";s:4:\\\"slug\\\";s:9:\\\"post-slug\\\";}s:2:\\\"id\\\";s:36:\\\"a6035598-41f2-411c-b84e-a6c87fa4ece9\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1656281162, 1656281162),
(4, 'default', '{\"uuid\":\"6c071ff2-e5ff-4bb2-8e26-c3d567968c48\",\"displayName\":\"App\\\\Notifications\\\\WelcomeNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\WelcomeNotification\\\":12:{s:4:\\\"post\\\";a:2:{s:5:\\\"title\\\";s:10:\\\"post_title\\\";s:4:\\\"slug\\\";s:9:\\\"post-slug\\\";}s:2:\\\"id\\\";s:36:\\\"8976053b-c119-40d5-a95d-b57b927017a9\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1656281252, 1656281252),
(5, 'default', '{\"uuid\":\"9919e397-fa9c-4e47-bb6b-d06c235f9090\",\"displayName\":\"App\\\\Notifications\\\\WelcomeNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\WelcomeNotification\\\":12:{s:4:\\\"post\\\";a:2:{s:5:\\\"title\\\";s:10:\\\"post_title\\\";s:4:\\\"slug\\\";s:9:\\\"post-slug\\\";}s:2:\\\"id\\\";s:36:\\\"351c82cb-97f7-43c5-ae93-6cd898d9f349\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1656281297, 1656281297),
(6, 'default', '{\"uuid\":\"1644031f-6881-4509-84a2-3d32c47acbc8\",\"displayName\":\"App\\\\Notifications\\\\WelcomeNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\WelcomeNotification\\\":12:{s:4:\\\"post\\\";a:2:{s:5:\\\"title\\\";s:10:\\\"post_title\\\";s:4:\\\"slug\\\";s:9:\\\"post-slug\\\";}s:2:\\\"id\\\";s:36:\\\"03645ad3-7929-4c26-8b26-0526eb69e473\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1656281297, 1656281297),
(7, 'default', '{\"uuid\":\"4ace76c2-3407-4507-a6db-6b1d17c53b8e\",\"displayName\":\"App\\\\Notifications\\\\WelcomeNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\WelcomeNotification\\\":12:{s:4:\\\"post\\\";a:2:{s:5:\\\"title\\\";s:10:\\\"post_title\\\";s:4:\\\"slug\\\";s:9:\\\"post-slug\\\";}s:2:\\\"id\\\";s:36:\\\"3e7e1f06-04c1-4035-852c-61f23691a682\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1656281320, 1656281320),
(8, 'default', '{\"uuid\":\"80e41eab-d81d-414d-98ab-203a69d5575c\",\"displayName\":\"App\\\\Notifications\\\\WelcomeNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\WelcomeNotification\\\":12:{s:4:\\\"post\\\";a:2:{s:5:\\\"title\\\";s:10:\\\"post_title\\\";s:4:\\\"slug\\\";s:9:\\\"post-slug\\\";}s:2:\\\"id\\\";s:36:\\\"c88e3509-fed5-4175-9d42-57bb3c115943\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1656281320, 1656281320),
(9, 'default', '{\"uuid\":\"cc18e3cc-96f9-4851-a7f5-a593d319870e\",\"displayName\":\"App\\\\Notifications\\\\WelcomeNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\WelcomeNotification\\\":11:{s:2:\\\"id\\\";s:36:\\\"5bc26cd1-069e-424a-94b0-1e0d277c9547\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1656281634, 1656281634);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_26_214108_create_jobs_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'muda', 'muda@gmail.com', NULL, '12345678', NULL, NULL, NULL),
(2, 'admin', 'admin@gmail.com', NULL, '12345678', NULL, NULL, NULL);

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
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `name`, `user_name`, `password`) VALUES
(1, 'muda', 'muda', 'muda'),
(2, 'muda', 'muda', 'muda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"rupani_academy\",\"table\":\"galleries\"},{\"db\":\"rupani_academy\",\"table\":\"users\"},{\"db\":\"rupani_academy\",\"table\":\"abouts\"},{\"db\":\"rupani_academy\",\"table\":\"our_mission_visions\"},{\"db\":\"rupani_acadamey\",\"table\":\"assessment_pages\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'rupani_academy', 'users', '{\"sorted_col\":\"`users`.`role` ASC\"}', '2022-06-23 23:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-06-23 22:28:47', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `rupani_academy`
--
CREATE DATABASE IF NOT EXISTS `rupani_academy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `rupani_academy`;

-- --------------------------------------------------------

--
-- Table structure for table `about_sec1s`
--

CREATE TABLE `about_sec1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aboutTopTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutSec1Image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutSec1Image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_sec1s`
--

INSERT INTO `about_sec1s` (`id`, `aboutTopTitle`, `aboutSec1Image1`, `aboutSec1Image2`, `created_at`, `updated_at`) VALUES
(2, 'ABout', '1657232445 . pyp2.png', '1657232445 . pyp1.png', '2022-07-08 05:20:45', '2022-07-08 05:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `about_sec2s`
--

CREATE TABLE `about_sec2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aboutSec2Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutSec2Descriptions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_sec2s`
--

INSERT INTO `about_sec2s` (`id`, `aboutSec2Image`, `aboutSec2Descriptions`, `created_at`, `updated_at`) VALUES
(1, '1656943881 . background.png', 'Rupani Academy is based on an ideal to abridge the hiatuses in conventional ecosystem of education. Our years of experience in the education field persuaded us to move forward and take the responsibility of setting a new trend by introducing curriculum and education systems as per the need and requirement of the progressing and developing world. After pioneering in Early Childhood Development (ECD) in Pakistan Rupani Academy now aims to bring International Baccalaureate (IB) curriculum in Gilgit-Baltistan for the first time to nurture students as global contributing citizens.\r\n\r\n\r\n\r\nRupani Academy (RA) was founded on a simple belief that access to quality education is crucial for unleashing the real potential of mountain communities. Inspired by their resilience and values, our aim was to create an educational system which promotes inquiry based learning, critical thinking, leadership, inclusion and democratic values. Following our traditions of going extra miles in providing marginalized communities with quality education, skill development and learning resources, Rupani Academy spent years of planning for a world class educational institution that would bring excellence and brilliance to children living in the mountainous valleys of Gilgit Baltistan. The curriculum, campus, teaching and learning programs, sports, critical thinking and social development practices at Rupani Academy are realizations of the same dream of bringing excellence and brilliance to the communities.', '2022-07-04 21:04:05', '2022-07-04 21:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `about_sec3s`
--

CREATE TABLE `about_sec3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aboutSec3Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutSec3Titles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutSec3Descriptions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_sec3s`
--

INSERT INTO `about_sec3s` (`id`, `aboutSec3Image`, `aboutSec3Titles`, `aboutSec3Descriptions`, `created_at`, `updated_at`) VALUES
(1, '1656945451 . principal.png', 'AboutSec 3 Titles', 'Education is only worthwhile if we are able to inculcate the love for the surrounding and mankind with true practices. We, as, educationist have a huge responsibility to deliver far more than content based learning. We need to impart knowledge that goes beyond the realm of the classroom. Self-awareness is the first step to success. And that is where guidance plays the most important role.', '2022-07-04 21:13:52', '2022-07-04 21:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `about_sec4s`
--

CREATE TABLE `about_sec4s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aboutSec4Titles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutSec4Descriptions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_sec4s`
--

INSERT INTO `about_sec4s` (`id`, `aboutSec4Titles`, `aboutSec4Descriptions`, `created_at`, `updated_at`) VALUES
(2, 'vchgsvdhshdvjh', 'vhjbdjhjhbsfsdfdsf', '2022-07-08 05:25:32', '2022-07-08 05:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `about_sections`
--

CREATE TABLE `about_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aboutImages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutTitles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutDescriptions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_sections`
--

INSERT INTO `about_sections` (`id`, `aboutImages`, `aboutTitles`, `aboutDescriptions`, `created_at`, `updated_at`) VALUES
(1, '1656797388 . card-img1.png', 'asasa', 'asasasas', '2022-07-03 04:29:48', '2022-07-03 04:29:48'),
(2, '1656797889 . pyp2.png', 'qwwq', 'wqwqwqw', '2022-07-03 04:38:09', '2022-07-03 04:38:09');

-- --------------------------------------------------------

--
-- Table structure for table `add_card1s`
--

CREATE TABLE `add_card1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addCard1Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addCard1Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addCard1description` text COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_card1s`
--

INSERT INTO `add_card1s` (`id`, `addCard1Image`, `addCard1Title`, `addCard1description`, `created_at`, `updated_at`) VALUES
(4, '1657233662 . policy-img2.png', 'ENTRANCE EXAM AND INTERVIEW', '<p>Rupani Academy reserve the right to review applications holistically, focusing on academic excellence, their leadership potential, and personal context as demonstrated by their prior academic performance, the record of extracurricular activities, community activities, and personal statement. As per Rupani academy&rsquo;s assessment and language policy students will be assessed accordingly and provide need based support to newly inducted pupils.</p>', '2022-07-07 05:49:08', '2022-07-08 05:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `add_card2s`
--

CREATE TABLE `add_card2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addCard2Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addCard2Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addCard2description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_card2s`
--

INSERT INTO `add_card2s` (`id`, `addCard2Image`, `addCard2Title`, `addCard2description`, `created_at`, `updated_at`) VALUES
(2, '1657233711 . policy-img3.png', 'ENTRANCE EXAM AND INTERVIEW', '<p>Rupani Academy reserve the right to review applications holistically, focusing on academic excellence, their leadership potential, and personal context as demonstrated by their prior academic performance, the record of extracurricular activities, community activities, and personal statement. As per Rupani academy&rsquo;s assessment and language policy students will be assessed accordingly and provide need based support to newly inducted pupils.</p>', '2022-07-07 06:07:24', '2022-07-08 05:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `add_card3s`
--

CREATE TABLE `add_card3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_sec1s`
--

CREATE TABLE `add_sec1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addSec1Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addSec1Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addSec1Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_sec1s`
--

INSERT INTO `add_sec1s` (`id`, `addSec1Image`, `addSec1Title`, `addSec1Description`, `created_at`, `updated_at`) VALUES
(4, '1657233117 . policy-img1.png', 'Philosophy and Purpose of Admission Policy', '<p>This admission policy is based on the principles of transparency, equitability and fairness in aiming towards providing quality education. Rupani Academy is a diverse community of students, faculty, and staff members from a wide range of economic, cultural, social, and geographical (rural/urban), linguistic, and religious backgrounds. The school engages a diverse community of students. Therefore, we welcome students and faculty from diverse communities locally and globally in our school (Rupani Academy). The Academy shall make all possible endeavours to ensure that students admitted in school benefit from the educational and recreational provisions at the academy and are successful in achieving their social, emotional and learning goals. Nonetheless, it is understood that not all students would be able to benefit from the model of education established at Rupani Academy, thus a comprehensive policy is designed to help the school leadership team in identifying such students and allow them to make the best of facilities available. Rupani Academy does not guarantee admission to every applicant and reserves the right to deny admission to any applicant if, it appears to the admission committee, that doing so is in the best interest of the school and/or the student.</p>\r\n\r\n<p>In doing so the following considerations are most likely to be taken into account:</p>\r\n\r\n<ul>\r\n	<li>a: A student with any kind of unlawful record.</li>\r\n	<li>b: A student who does not have the required documentation to reside and study in Pakistan.</li>\r\n	<li>c: A student who has been expelled from the previous educational institution on grounds of violent or aggressive behaviour and gross misconduct.</li>\r\n	<li>d: A student who is not able to provide viable guardianship docum</li>\r\n</ul>', '2022-07-08 05:31:58', '2022-07-08 05:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `ass_record_secs`
--

CREATE TABLE `ass_record_secs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assRecordTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assRecordDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ass_record_secs`
--

INSERT INTO `ass_record_secs` (`id`, `assRecordTitle`, `assRecordDescription`, `created_at`, `updated_at`) VALUES
(4, 'Assessment Reporting', '<p>Students&rsquo; progress reports are shared with the parents three times in an academic year. Meetings are conducted with parents at the end of each term to share the progress of the children and area of improvement. Targets are set with the teachers based on the progress of each child and feedback of the parents. This policy is a working document and as such will be reviewed by the management and school leadership of the Academy annually based on the progressive levels offered and their assessment requirements.</p>', '2022-07-06 23:52:23', '2022-07-06 23:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `ass_reporting_secs`
--

CREATE TABLE `ass_reporting_secs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assReportingTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assReportingDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ass_reporting_secs`
--

INSERT INTO `ass_reporting_secs` (`id`, `assReportingTitle`, `assReportingDescription`, `created_at`, `updated_at`) VALUES
(3, 'Assessment Reporting', '<p>Students&rsquo; progress reports are shared with the parents three times in an academic year. Meetings are conducted with parents at the end of each term to share the progress of the children and area of improvement. Targets are set with the teachers based on the progress of each child and feedback of the parents. This policy is a working document and as such will be reviewed by the management and school leadership of the Academy annually based on the progressive levels offered and their assessment requirements.</p>', '2022-07-07 00:55:43', '2022-07-07 00:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `ass_sec1s`
--

CREATE TABLE `ass_sec1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assSecTopTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ass_sec1s`
--

INSERT INTO `ass_sec1s` (`id`, `assSecTopTitle`, `created_at`, `updated_at`) VALUES
(5, 'ASSESSMENT POLICY', '2022-07-04 22:52:16', '2022-07-04 22:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `ass_tool_secs`
--

CREATE TABLE `ass_tool_secs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assToolSecTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assToolSecDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ass_tool_secs`
--

INSERT INTO `ass_tool_secs` (`id`, `assToolSecTitle`, `assToolSecDescription`, `created_at`, `updated_at`) VALUES
(2, 'Heeloo', '<p>hjdjlkadhfljahdfjaf</p>', '2022-07-06 19:27:17', '2022-07-06 19:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `campus_life1s`
--

CREATE TABLE `campus_life1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Cl_image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cl_title1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campus_life1s`
--

INSERT INTO `campus_life1s` (`id`, `Cl_image1`, `Cl_title1`, `created_at`, `updated_at`) VALUES
(1, '1657225610.card-img2.png', 'MudasirAli', '2022-07-08 02:07:28', '2022-07-08 03:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `campus_life2s`
--

CREATE TABLE `campus_life2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Cl_image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cl_title2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campus_life2s`
--

INSERT INTO `campus_life2s` (`id`, `Cl_image2`, `Cl_title2`, `created_at`, `updated_at`) VALUES
(2, '1657223515.gallery-img3.png', 'Muda123', '2022-07-08 02:51:55', '2022-07-08 02:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `campus_life3s`
--

CREATE TABLE `campus_life3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Cl_image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cl_title3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campus_life3s`
--

INSERT INTO `campus_life3s` (`id`, `Cl_image3`, `Cl_title3`, `created_at`, `updated_at`) VALUES
(1, '1657224645.gallery-img3.png', 'You have a Typo in your model Change nama to name  Always be mindful of typos in your code as abeginner', '2022-07-08 03:10:33', '2022-07-08 03:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic_secs`
--

CREATE TABLE `diagnostic_secs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diagnosticTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosticDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diagnostic_secs`
--

INSERT INTO `diagnostic_secs` (`id`, `diagnosticTitle`, `diagnosticDescription`, `created_at`, `updated_at`) VALUES
(2, 'Diagnostic', '<p>Rupani academy applies Diagnostic Assessment to evaluate student&rsquo;s strengths, weaknesses, knowledge, and skills before their unit of inquiry, at the beginning of a course, grade level, unit, or lesson.</p>\r\n\r\n<p>Tools for Diagnostic Assessment:</p>\r\n\r\n<p>The following tools are used for Diagnostic Assessment:</p>\r\n\r\n<ul>\r\n	<li><strong>a.</strong>&nbsp;Mind map: mind mapping tool is used to connect key concepts of students by brainstorming, using images, flashcards, diagrams, puzzles, I spy game etc.</li>\r\n	<li><strong>b.</strong>&nbsp;A short quiz: a short quiz is used such as, short test of knowledge e.g. MCQs, fill in the blanks, true/ false to assess student&#39;s prior knowledge. c. Initial writing prompts: Initial writing prompts are used in which a text (or sometimes an image) that provides an idea or starting point for an original essay, report, story, poem, or other forms of writing of students is in practice.</li>\r\n	<li><strong>d.</strong>&nbsp;Running Records: The academy uses the running records tool to assess the reading level of students.</li>\r\n	<li><strong>e.</strong>&nbsp;Admission interview: The management of the Academy conducts face to face interviews/discussion to probe about children&rsquo;s understanding of basic information and allow children to express them.</li>\r\n	<li><strong>f.&nbsp;</strong>Admission test: Rupani Academy conducts admission test to gauge the basic understanding and information of the children which also provides a baseline data of the children before they become a part of Rupani Academy.</li>\r\n	<li>xchjgjhxvh</li>\r\n</ul>', '2022-07-06 17:53:12', '2022-07-06 23:25:05');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enroll_image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enroll_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enroll_image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `enroll_image1`, `enroll_title`, `enroll_image2`, `created_at`, `updated_at`) VALUES
(8, '1656635382 . apply-now1.png', 'Enroll Your Childern', '1656635382 . apply-now2.png', '2022-07-01 07:29:42', '2022-07-08 05:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `E_titles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `E_discriptions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `E_images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `E_titles`, `E_discriptions`, `E_images`, `created_at`, `updated_at`) VALUES
(3, 'Events Titles', 'Events Discription', '1656687410 . png', '2022-07-01 21:56:50', '2022-07-01 21:56:50'),
(4, 'asa', 'sasasas', '1656940194 . png', '2022-07-04 20:09:54', '2022-07-04 20:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formative_secs`
--

CREATE TABLE `formative_secs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `formativeTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formativeDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formative_secs`
--

INSERT INTO `formative_secs` (`id`, `formativeTitle`, `formativeDescription`, `created_at`, `updated_at`) VALUES
(5, 'Formative Assessment', '<p>Rupani academy applies Formative Assessment to assess and observe students&rsquo; in an on- going way to assess their learning to provide ongoing feedback, enhance their learning and identify skills and concepts that students are struggling to understand, during the unit of inquiry, course, or in a lesson.</p>\r\n\r\n<p>Tools for Formative Assessment:</p>\r\n\r\n<p>Rupani Academy uses the following tools ensure formative (continuous assessment) in the classes:</p>\r\n\r\n<ul>\r\n	<li><strong>a.</strong>&nbsp;Observations: On going observation is used as a tool to observe all students by the focus on individuals, groups, or the whole class.</li>\r\n	<li><strong>b.</strong>&nbsp;Tests/Quizzes: The Academy uses Tests/Quizzes to assess student&rsquo;s knowledge or their understanding during the learning process.</li>\r\n	<li><strong>c.</strong>&nbsp;Projects: Students are involved in project work though which their participation, understating and achievements are assessed.</li>\r\n	<li><strong>d.</strong>&nbsp;Portfolios: Portfolios are developed to identify whether the students meet learning standards or other academic requirements for courses and to evaluate their work.</li>\r\n	<li><strong>e.</strong>&nbsp;Exit tickets: Exit tickets are designed and implemented to assess students&rsquo; understanding of learning material in class. Teachers can then use this data for adapting new strategies to meet student&rsquo;s needs.</li>\r\n	<li><strong>f.</strong>&nbsp;Hand signals: Teachers use hand signals like thumb up, thumb down, and wave hand responses against their understanding of learning.</li>\r\n	<li><strong>g.</strong>&nbsp;Classroom presentations: Through classroom presentations, students&rsquo; communication, presentation skills, confidence, and knowledge of the given tasks are assessed.</li>\r\n	<li><strong>h.</strong>&nbsp;Rubrics: Rupani Academy uses rubrics to assess student&#39;s work, from written to oral and visual. It can be used for tracking assignments, activities, project work, fieldwork, class participation, and presentations.</li>\r\n	<li><strong>i.</strong>&nbsp;Checklist: Checklist are developed and used to assess students&rsquo; level of understanding in content, participation and related to their performance.</li>\r\n	<li><strong>j.</strong>&nbsp;Anecdotal records: Students&rsquo; specific behavior and actions are assessed through anecdotal records and also to identify possible developmental delays and progress.</li>\r\n</ul>', '2022-07-06 18:14:18', '2022-07-06 23:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `G_image1` blob NOT NULL,
  `G_image2` blob NOT NULL,
  `G_image3` blob NOT NULL,
  `G_image4` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `G_image1`, `G_image2`, `G_image3`, `G_image4`, `created_at`, `updated_at`) VALUES
(1, 0x31363536363336373536202e206d697373696f6e2d696d672e706e67, 0x31363536363336373536202e2067616c6c6572792d696d67332e706e67, 0x31363536363336373536202e20636172642d696d67312e706e67, 0x31363536363336373536202e20636172642d696d67332e706e67, '2022-07-01 07:52:36', '2022-07-01 07:52:36');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_05_200628_create_galleries_table', 1),
(6, '2022_06_07_131213_create_enrolls_table', 1),
(7, '2022_06_08_130940_create_abouts_table', 1),
(8, '2022_06_13_224921_create_events_table', 1),
(9, '2022_06_14_140627_create_assessment_pages_table', 1),
(10, '2022_06_28_215728_create_top_slider_table', 1),
(11, '2022_06_28_225732_create_our_mission_visions_table', 1),
(12, '2022_06_30_225822_create_news_table', 1),
(13, '2022_06_30_230755_create_addmission_policies_table', 2),
(14, '2022_06_30_231121_create_addmission_policies_table', 3),
(15, '2022_06_02_234448_create_news_table', 4),
(16, '2022_06_30_234057_create_campus_lives_table', 4),
(17, '2022_07_01_140947_create_news_table', 5),
(18, '2022_07_01_145430_create_events_table', 6),
(19, '2022_07_01_151943_create_about_t_op_secs_table', 7),
(20, '2022_07_02_190030_create_about_top_secs_table', 8),
(21, '2022_07_02_205208_create_about_sections_table', 9),
(22, '2022_07_02_214636_create_about_sec1s_table', 10),
(23, '2022_07_03_185910_create_about_sec2s_table', 11),
(24, '2022_07_03_204144_create_about_sec3s_table', 12),
(25, '2022_07_03_211434_create_about_sec4s_table', 13),
(26, '2022_07_04_151322_create_ass_sec1s_table', 14),
(27, '2022_07_04_160020_create_philosopy_secs_table', 15),
(28, '2022_07_04_210931_create_practices_secs_table', 16),
(29, '2022_07_05_220916_create_purpose_secs_table', 17),
(30, '2022_07_06_090229_create_strategies_secs_table', 18),
(31, '2022_07_06_102625_create_diagnostic_secs_table', 19),
(32, '2022_07_06_110128_create_formative_secs_table', 20),
(33, '2022_07_06_112528_create_summative_secs_table', 21),
(34, '2022_07_06_120642_create_ass_tool_secs_table', 22),
(35, '2022_07_06_122826_create_ass_record_secs_table', 23),
(36, '2022_07_06_171022_create_ass_reporting_secs_table', 24),
(37, '2022_07_06_180154_create_add_sec1s_table', 25),
(38, '2022_07_06_191106_create_add_card1s_table', 26),
(39, '2022_07_06_225654_create_add_card2s_table', 27),
(40, '2022_07_06_230755_create_add_card3s_table', 28),
(41, '2022_07_07_125620_create_campus_life1s_table', 28),
(42, '2022_07_07_125638_create_campus_life2s_table', 28),
(43, '2022_07_07_125655_create_campus_life3s_table', 28),
(44, '2022_07_07_214052_create_news_table', 29);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `N_image1` blob NOT NULL,
  `N_image2` blob NOT NULL,
  `N_image3` blob NOT NULL,
  `N_image4` blob NOT NULL,
  `N_image5` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `N_image1`, `N_image2`, `N_image3`, `N_image4`, `N_image5`, `created_at`, `updated_at`) VALUES
(1, 0x31363537323330313934202e20556e7469746c65642064657369676e202832292e706e67, 0x31363537323330313934202e20556e7469746c65642064657369676e202832292e706e67, 0x31363537323330313934202e20556e7469746c65642064657369676e202832292e706e67, 0x31363537323330313934202e20556e7469746c65642064657369676e202831292e706e67, 0x31363537323330313934202e20556e7469746c65642064657369676e202831292e706e67, '2022-07-08 04:43:14', '2022-07-08 04:43:14');

-- --------------------------------------------------------

--
-- Table structure for table `our_mission_visions`
--

CREATE TABLE `our_mission_visions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mvTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mvDiscription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mvImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_mission_visions`
--

INSERT INTO `our_mission_visions` (`id`, `mvTitle`, `mvDiscription`, `mvImage`, `created_at`, `updated_at`) VALUES
(1, 'Mission Title', 'Mission Discription', '1656692156 . card-img1.png', '2022-07-01 23:15:56', '2022-07-01 23:15:56'),
(2, 'mission Title 2', 'mission description 2', '1656693969 . gallery-img3.png', '2022-07-01 23:46:09', '2022-07-01 23:46:09');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `philosopy_secs`
--

CREATE TABLE `philosopy_secs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `philosopySec_Tile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `philosopySec_Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `philosopy_secs`
--

INSERT INTO `philosopy_secs` (`id`, `philosopySec_Tile`, `philosopySec_Description`, `created_at`, `updated_at`) VALUES
(2, 'Philosophy of Assessment at Rupani Academy', 'At Rupani Academy we believe that assessment is an essential/crucial part of an effective teaching and learning process. It is primarily conducted to support and improve student learning. Teachers can obtain, analyze and interpret evidence derived from a set of assessments, to, further review and plan effectively. Assessment motivates, encourages, and inspires students’ passion for learning when it is delivered in a timely and reasonable manner.', '2022-07-05 04:07:58', '2022-07-06 21:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `practices_secs`
--

CREATE TABLE `practices_secs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `practicesSec_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `practicesSec_Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `practices_secs`
--

INSERT INTO `practices_secs` (`id`, `practicesSec_title`, `practicesSec_Description`, `created_at`, `updated_at`) VALUES
(3, 'Assessment Practices at Rupani Academy', 'Rupani Academy assesses students against age-related learning outcomes, IB Learner Profiles, concepts and Approaches to Learning through diagnostic, formative, and summative assessments. Performance of students, in both Formative and Summative assessment is shared with parents, discussing students’ behavior, participation, progress and challenges in face to face meetings. Assessment at Rupani Academy is considered integral to collaborative planning, teaching, and learning.', '2022-07-06 05:03:32', '2022-07-06 22:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `purpose_secs`
--

CREATE TABLE `purpose_secs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purposeSecImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purposeSecTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purposeSecDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purpose_secs`
--

INSERT INTO `purpose_secs` (`id`, `purposeSecImage`, `purposeSecTitle`, `purposeSecDescription`, `created_at`, `updated_at`) VALUES
(3, '1657096277 . apply-now1.png', 'ENTRANCE EXAM AND INTERVIEW', '<p>Rupani Academy reserve the right to review applications holistically, focusing on academic excellence, their leadership potential, and personal context as demonstrated by their prior academic performance, the record of extracurricular activities, community activities, and personal statement. As per Rupani academy&rsquo;s assessment and language policy students will be assessed accordingly and provide need based support to newly inducted pupils.</p>', '2022-07-06 15:31:17', '2022-07-06 22:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `strategies_secs`
--

CREATE TABLE `strategies_secs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `strategiesImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `strategiesTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `strategiesDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strategies_secs`
--

INSERT INTO `strategies_secs` (`id`, `strategiesImage`, `strategiesTitle`, `strategiesDescription`, `created_at`, `updated_at`) VALUES
(4, '1657100712 . card-img1.png', 'asasas', '<p>Rupani Academy is a candidate school for the International Baccalaureate (IB) Primary Years Programme (PYP) and pursuing authorization as an IB World School. IB World Schools share a common philosophy a commitment to provide authentic teaching and learning opportunities via the high-quality and international educational programme, challenging students&rsquo; inquiry and curiosity to be lifelong learners in a diverse global world.</p>\r\n\r\n<p>&nbsp;</p>', '2022-07-06 16:45:12', '2022-07-06 23:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `summative_secs`
--

CREATE TABLE `summative_secs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `summativeTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summativeDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `summative_secs`
--

INSERT INTO `summative_secs` (`id`, `summativeTitle`, `summativeDescription`, `created_at`, `updated_at`) VALUES
(2, 'Summative Assessment', '<p>Rupani academy uses summative assessment to evaluate student&rsquo;s learning at the end of a unit of inquiry by comparing it against standards or benchmarks designed by Rupani Academy. It is used by teachers to inform parents about the quality of student&rsquo;s learning, whether their classes are at age-related expectations or not.</p>\r\n\r\n<p>Tools for Summative Assessment:</p>\r\n\r\n<p>The following tools are used for the Summative Assessment of students in the Academy:</p>\r\n\r\n<ul>\r\n	<li><strong>a.&nbsp;</strong>Portfolios: Portfolios are developed to identify whether the students meet learning standards and academic requirements for the courses and evaluate students&rsquo; work as a whole.</li>\r\n	<li><strong>b.</strong>&nbsp;End-of-unit or chapter presentations: by the end of each chapter or unit, students are asked for presentations in which their subject content, communication skills, confidence, cooperation, and knowledge are assessed.</li>\r\n</ul>', '2022-07-06 19:05:12', '2022-07-06 23:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `top_sliders`
--

CREATE TABLE `top_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topSliderImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topSlidertitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topSliderDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_sliders`
--

INSERT INTO `top_sliders` (`id`, `topSliderImage`, `topSlidertitle`, `topSliderDescription`, `created_at`, `updated_at`) VALUES
(2, '1656634578 . bg-header-img2.png', 'asas', 'asasas', '2022-07-01 07:16:18', '2022-07-01 07:16:18'),
(3, '1656634661 . bg-header-img3.png', 'asas', 'asasasasas', '2022-07-01 07:17:41', '2022-07-01 07:17:41'),
(4, '1656634721 . bg-header-img4.png', 'sassa', 'sasasasasasas', '2022-07-01 07:18:41', '2022-07-01 07:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin@gmail.com', 'principle', NULL, '$2y$10$Q2i8U0iuKfpsslgWE6BP6u5Y2ijUs3LFYEqcogpuWWpqI2qIeZWo.', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_sec1s`
--
ALTER TABLE `about_sec1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_sec2s`
--
ALTER TABLE `about_sec2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_sec3s`
--
ALTER TABLE `about_sec3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_sec4s`
--
ALTER TABLE `about_sec4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_sections`
--
ALTER TABLE `about_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_card1s`
--
ALTER TABLE `add_card1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_card2s`
--
ALTER TABLE `add_card2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_card3s`
--
ALTER TABLE `add_card3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_sec1s`
--
ALTER TABLE `add_sec1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ass_record_secs`
--
ALTER TABLE `ass_record_secs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ass_reporting_secs`
--
ALTER TABLE `ass_reporting_secs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ass_sec1s`
--
ALTER TABLE `ass_sec1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ass_tool_secs`
--
ALTER TABLE `ass_tool_secs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campus_life1s`
--
ALTER TABLE `campus_life1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campus_life2s`
--
ALTER TABLE `campus_life2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campus_life3s`
--
ALTER TABLE `campus_life3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnostic_secs`
--
ALTER TABLE `diagnostic_secs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `formative_secs`
--
ALTER TABLE `formative_secs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_mission_visions`
--
ALTER TABLE `our_mission_visions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `philosopy_secs`
--
ALTER TABLE `philosopy_secs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practices_secs`
--
ALTER TABLE `practices_secs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purpose_secs`
--
ALTER TABLE `purpose_secs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strategies_secs`
--
ALTER TABLE `strategies_secs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `summative_secs`
--
ALTER TABLE `summative_secs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_sliders`
--
ALTER TABLE `top_sliders`
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
-- AUTO_INCREMENT for table `about_sec1s`
--
ALTER TABLE `about_sec1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `about_sec2s`
--
ALTER TABLE `about_sec2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_sec3s`
--
ALTER TABLE `about_sec3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_sec4s`
--
ALTER TABLE `about_sec4s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `about_sections`
--
ALTER TABLE `about_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `add_card1s`
--
ALTER TABLE `add_card1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_card2s`
--
ALTER TABLE `add_card2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `add_card3s`
--
ALTER TABLE `add_card3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_sec1s`
--
ALTER TABLE `add_sec1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ass_record_secs`
--
ALTER TABLE `ass_record_secs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ass_reporting_secs`
--
ALTER TABLE `ass_reporting_secs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ass_sec1s`
--
ALTER TABLE `ass_sec1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ass_tool_secs`
--
ALTER TABLE `ass_tool_secs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campus_life1s`
--
ALTER TABLE `campus_life1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `campus_life2s`
--
ALTER TABLE `campus_life2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campus_life3s`
--
ALTER TABLE `campus_life3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `diagnostic_secs`
--
ALTER TABLE `diagnostic_secs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formative_secs`
--
ALTER TABLE `formative_secs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `our_mission_visions`
--
ALTER TABLE `our_mission_visions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `philosopy_secs`
--
ALTER TABLE `philosopy_secs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `practices_secs`
--
ALTER TABLE `practices_secs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purpose_secs`
--
ALTER TABLE `purpose_secs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `strategies_secs`
--
ALTER TABLE `strategies_secs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `summative_secs`
--
ALTER TABLE `summative_secs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `top_sliders`
--
ALTER TABLE `top_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `rupani_academy2`
--
CREATE DATABASE IF NOT EXISTS `rupani_academy2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rupani_academy2`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
