-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 01, 2019 at 10:37 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logicode`
--

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(6, '2016_06_01_000004_create_oauth_clients_table', 2),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0a00872babdc4da3a19692d9624b2948c3829517a2c4d857d705af6db486f732be3241fcd0b3d3ba', 19, 1, 'MyApp', '[]', 0, '2019-06-01 01:25:57', '2019-06-01 01:25:57', '2020-06-01 06:55:57'),
('0dc3508b22654c991341e95f44fb606a4320b215296c0976fe646edcdbe5f21fa5d27f326930d76a', 13, 1, 'MyApp', '[]', 0, '2019-05-30 07:12:17', '2019-05-30 07:12:17', '2020-05-30 12:42:17'),
('12837a22eabf37a0684b70f68f7fbd38103052641f42442ea8167a9d27fc8126a8599c4f52225f26', 9, 1, 'MyApp', '[]', 0, '2019-05-30 07:31:48', '2019-05-30 07:31:48', '2020-05-30 13:01:48'),
('1490820cfd315a2519d15e313ebd180b1efa17659854d3bfc74936dc9602ad470631631d46c0e611', 12, 1, 'MyApp', '[]', 0, '2019-05-30 07:08:49', '2019-05-30 07:08:49', '2020-05-30 12:38:49'),
('15c23913323d7048f51f6c9a9d05899c44d6887cc9b2f07bfda0474b36fc3cb3ce3c4e7c029e6198', 9, 1, 'MyApp', '[]', 0, '2019-05-30 07:38:49', '2019-05-30 07:38:49', '2020-05-30 13:08:49'),
('248772c7510c659c824164e237b1bf2d89b6d00221f10df3a9cfc248777638431e6c01f1ba8cc848', 9, 1, 'MyApp', '[]', 0, '2019-05-30 07:32:01', '2019-05-30 07:32:01', '2020-05-30 13:02:01'),
('417f732a40065def6425e0e5f31c1599d30e3d5041cccb19da8dc3f1e0bcb184598ddbeea62c06ec', 9, 1, 'MyApp', '[]', 0, '2019-05-30 07:31:02', '2019-05-30 07:31:02', '2020-05-30 13:01:02'),
('55ed3219b35f407d8605426a2b1cf3e56447462a262183b35fe73154f6993c172aa3235747ed5ac5', 9, 1, 'MyApp', '[]', 0, '2019-05-30 07:32:56', '2019-05-30 07:32:56', '2020-05-30 13:02:56'),
('5786717f8b3bf633a38afc127a1971c46be5be1cddc438c6d39cbafa09de254b6faba8fdfd3a7dd9', 9, 1, 'MyApp', '[]', 0, '2019-05-30 07:39:22', '2019-05-30 07:39:22', '2020-05-30 13:09:22'),
('6703b3597f14b7b00a3408d86c1c24d9227ef7bde82f5961b15b356f7dd74be568a17c6f8599c151', 15, 1, 'MyApp', '[]', 0, '2019-05-30 07:14:33', '2019-05-30 07:14:33', '2020-05-30 12:44:33'),
('6848ecc0310d5bdab68c7a35d9c8600adb6dac72416f51fc78b27e326d43fcf131ba3925140e8987', 9, 1, 'MyApp', '[]', 0, '2019-05-30 07:32:51', '2019-05-30 07:32:51', '2020-05-30 13:02:51'),
('6e6f24810cf35035ed45dd94d4623795978e30b6d527094a568cda2dec8ca6a6434cf6925eb641d4', 14, 1, 'MyApp', '[]', 0, '2019-05-30 07:13:47', '2019-05-30 07:13:47', '2020-05-30 12:43:47'),
('868c3fa4103960aec55124668c2d814fbb1d6a838b1905db769e3670e9cb61f5cf0f1f441a437615', 20, 1, 'MyApp', '[]', 0, '2019-06-01 02:28:14', '2019-06-01 02:28:14', '2020-06-01 07:58:14'),
('901a3c7426913c305dec2c9498187b06e480ca5601509286a16313c1b55c7ec84ba125e1b9250bca', 11, 1, 'MyApp', '[]', 0, '2019-05-30 07:06:45', '2019-05-30 07:06:45', '2020-05-30 12:36:45'),
('94aaab259b3d0a1f2390c63da60a4e46ddbb4e14b5085885a336ee5aa0a3784dcd85b46d5aa3a867', 9, 1, 'MyApp', '[]', 0, '2019-05-30 07:32:41', '2019-05-30 07:32:41', '2020-05-30 13:02:41'),
('b1c3c8342d81f84c661a27eabc226816379930584cb43d8d7c2519e60edab29bf233d0461adf92f2', 18, 1, 'MyApp', '[]', 0, '2019-05-31 07:33:39', '2019-05-31 07:33:39', '2020-05-31 13:03:39'),
('c3e0e2b0666075a8bd1d532bbd28bd20d8e95a206fd0303dfad534fa9bf1457d1dae2b1c80e169b3', 17, 1, 'MyApp', '[]', 0, '2019-05-31 02:26:33', '2019-05-31 02:26:33', '2020-05-31 07:56:33'),
('cf57f1a04773f79acf6cd535a2170767a10922061353cac5fe7f79c70137490d58596e1511f15f68', 9, 1, 'MyApp', '[]', 0, '2019-05-30 07:31:55', '2019-05-30 07:31:55', '2020-05-30 13:01:55'),
('e78a7e5eeff07c65e85f82948aaf057ab986194b5ab80217a1a64619c91bd07dab1b0371a9229489', 16, 1, 'MyApp', '[]', 0, '2019-05-30 07:27:38', '2019-05-30 07:27:38', '2020-05-30 12:57:38'),
('ec5de82912b80fad101a61a5a434c30b4ae54ab51fbd2601c84003422ed6b833cdd5f4722fcb4888', 9, 1, 'MyApp', '[]', 0, '2019-05-30 07:31:30', '2019-05-30 07:31:30', '2020-05-30 13:01:30'),
('fe4e0b1778778b8a5291ff6286fef3d54958b20e54025b74991ddad1a54c74c8e12c4980ba243c84', 9, 1, 'MyApp', '[]', 0, '2019-05-30 06:05:55', '2019-05-30 06:05:55', '2020-05-30 11:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ancu3NqdRjJmdUchjKXXYBw2MWBAPDvePYqB328r', 'http://localhost', 1, 0, 0, '2019-05-30 05:56:46', '2019-05-30 05:56:46'),
(2, NULL, 'Laravel Password Grant Client', 'jADLPzcQQf06BtFZAvff3qfV2uJffpGoRny17KB9', 'http://localhost', 0, 1, 0, '2019-05-30 05:56:47', '2019-05-30 05:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-05-30 05:56:47', '2019-05-30 05:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `avatar`, `github_username`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'test', 'admin@chetaru.com', NULL, '$2y$10$COFQMVaXAf5EPKN3rMDqv.Bp/iSkiWJRvJaWRMPJy1i02fxyHC1O6', NULL, NULL, NULL, NULL, '2019-05-30 06:05:55', '2019-05-30 06:05:55'),
(11, 'Business Central', 'info@survey.com', NULL, '$2y$10$rpot8cUpKAsG.38x6JCSKeO/C/mKXUEIE9CsWl09BXAMf7x6rTwVa', NULL, NULL, NULL, NULL, '2019-05-30 07:06:45', '2019-05-30 07:06:45'),
(12, 'Business Central', 'seo@chetaru.com', NULL, '$2y$10$Vx3Djj7as2itJZ6dRHiMIu0qHbSnAmIQRvRf5VXBcIz5E44r/f0cq', NULL, NULL, NULL, NULL, '2019-05-30 07:08:49', '2019-05-30 07:08:49'),
(13, 'Business Central', 'helmutbowes1806@gmail.com', NULL, '$2y$10$2L0eo2LNtOxeUj6cAzsA7eACAWgtmsGcPVvtMJd2aZK8FOUz2jlK.', NULL, NULL, NULL, NULL, '2019-05-30 07:12:17', '2019-05-30 07:12:17'),
(14, 'Business Central', 'sa@sadc.conm', NULL, '$2y$10$nHu8IK6kGbSxfL0iMhioBuM8YffAMDHih7rzryKsxO9x0aRzuDQlm', NULL, NULL, NULL, NULL, '2019-05-30 07:13:47', '2019-05-30 07:13:47'),
(15, 'Business Central', 'ss@hai.com', NULL, '$2y$10$RduXFaEjaAUuBeE6tW0SjepSBMwjN26GuPbzx9O7z86TQLAA.D8z6', NULL, NULL, NULL, NULL, '2019-05-30 07:14:33', '2019-05-30 07:14:33'),
(16, 'vxcv', 'vvx@fs.com', NULL, '$2y$10$x0QU9pnFi.K5YPB2.zowqucYU1wrvcSWIwvVl34TPsCXULiVGIqqa', NULL, NULL, NULL, NULL, '2019-05-30 07:27:38', '2019-05-30 07:27:38'),
(17, 'fsfdf', 'gdg@gmail.com', NULL, '$2y$10$FSrnUG5rmvp0/ZoClwAfEuoyLtvpSdCYY3UTco86SQcpGKCl6Z/Zy', '1234567897', 'avatar1559296664.png', 'octacode', NULL, '2019-05-31 02:26:33', '2019-05-31 08:22:47'),
(18, 'lsfk', 'lll@gmail.com', NULL, NULL, '1234567890', 'avatar1559307849.png', NULL, NULL, '2019-05-31 07:33:39', '2019-05-31 07:34:09'),
(19, 'kksl', 'fasd@gmail.com', NULL, NULL, '1234567890', 'avatar1559372218.png', 'iamprateekchouhan', NULL, '2019-06-01 01:25:57', '2019-06-01 01:27:44'),
(20, 'llgl', 'ldfl@gmail.com', NULL, NULL, '1234567899', 'avatar1559377600.png', 'iamprateekchouhan', NULL, '2019-06-01 02:28:14', '2019-06-01 02:56:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
