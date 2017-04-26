-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2017 at 06:51 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2016_12_25_213320_create_products_table', 1),
(19, '2017_01_08_164117_create_role', 1),
(20, '2017_01_08_164551_create_roles_table', 1),
(22, '2017_01_09_154300_create_user_role_pivot_table', 2),
(23, '2017_01_12_205142_add_role_id_to_users_table', 3),
(28, '2017_01_14_212259_add_roles_id_to_user', 4),
(29, '2017_01_31_202928_create_rates_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial` int(11) NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `manufacturer`, `serial`, `country`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Testewr', 'Bosna', 123456789, 'biih', 'ovo je neki produck', '2017-01-14 21:50:58', '2017-01-14 22:00:25'),
(3, 'dasdasd', '	fsdfsdf', 0, 'bih', 'sdfsdfsd', '2017-02-26 14:15:33', '2017-02-26 14:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `name`, `description`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Pronaa', 'Ovo je neka proba', 2, '2017-01-31 20:07:00', '2017-01-31 20:07:00'),
(2, 'Pronaa', 'Ovo je neka proba', 2, '2017-01-31 20:07:45', '2017-01-31 20:07:45'),
(3, 'Test', 'Neki test', 2, '2017-01-31 20:08:25', '2017-01-31 20:08:25'),
(4, 'Test', 'Neki test', 2, '2017-01-31 20:09:16', '2017-01-31 20:09:16'),
(5, 'PRoba', 'dasdfsdfsdfsdf', 2, '2017-01-31 20:09:28', '2017-01-31 20:09:28'),
(6, 'sfsdfsdf', 'sfsfsdfsdfsdf', 2, '2017-01-31 20:10:03', '2017-01-31 20:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL),
(3, 'product_manager', NULL, NULL),
(4, 'rate_manager', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `roles_id`) VALUES
(1, 'Denis', 'denisdzafo@gmail.com', '$2y$10$bwCFZj63X6/o/586cH30UuuErQe7GfbJO2FuzPV5F.CPrOzpUyC.6', '0s4vmlWFsWHJirGbXaoSw0tYeFCZUxLuC0t2lu3AzkTYa9hsoCHBJApFBzAU', '2017-01-09 14:32:06', '2017-01-12 23:08:18', 1),
(2, 'Denis', 'd@gmail.com', '$2y$10$FkGMPQerkF1CzhO7y.FqOu52F.eaQ8l8KTmoLgyi/rDBMgTXzCSJC', 'nUeCU8VBTJf2nPq1cUWcTgrrQBGF3z0canj88qxyfSs3xHAMs3GW9ZEfFdOi', '2017-01-09 15:24:18', '2017-02-26 14:14:58', 1),
(3, 'Denis', 'da@gmail.com', '$2y$10$5CT8b7GbWVRQJXH9Yfbxt.nct/ftixteke7qj.wk8ssGJT5x/0VtW', 'q4v3YO5jR4DO8MV8uA830vhk6h825XNYnT5Ur3ZhJBFbDB2Ft2vf7MzVMU9C', '2017-01-09 15:24:49', '2017-01-14 20:38:28', 4),
(4, 'Denis', 'd23@gmail.com', '$2y$10$9OrTgKiJXC2cYNZPeflRU.Djgao50URI54dxx6.0fwUdlujhHKr3i', 'nqZ8ocBCdldxJ2TcMCEY6ULYvtxaa8T7jsHgjTKwIZY8N73Mihjd6mwpawZM', '2017-01-12 20:00:25', '2017-02-26 14:16:01', 3),
(5, 'neko', 'a@abc.com', '$2y$10$9mOO4112CyDPT4tlaHiDOOQ48Kc92yqMFtZbiJP4p2qOj.LY.v8Fe', NULL, '2017-01-12 20:48:13', '2017-01-12 20:48:13', 2),
(6, 'Proba', 'dsdss@gmail.com', '$2y$10$yC7KZI4.4mcBemTD0BYx8u.rQlgS3GkbVvknMvA.9UhvxAjiBk4/e', 'uHXebTHFk87ppBz0sutXxe5T4d039uao4k02rCrxIE9nPBzOn9Y6Kil0Tmcp', '2017-01-12 23:55:34', '2017-01-12 23:58:05', 2),
(7, 'dasdas', 'dqwe@gmail.com', '$2y$10$AqStLL2w297EUFeeTzEnyOQN2WCWHu60miE1s.dx7nmCuFaC.d4/O', 'UVts26I4s8nqZ0rwGhudVy55Gerj0ZFxcel1u9o5wvaSe9ZJzpFz1RUp0o1d', '2017-01-13 00:05:36', '2017-02-26 14:14:45', 3),
(8, 'Proba', 'dasd@g.com', '$2y$10$RwiPI.ika8FuhdyiUCxDWOX/2dU00uceFcE90b5zKnBXidlrnT6gi', 'K22iM1b3gnZriUIppPRtCOQkfZiuVv8NNyBtPJamGsGajg8Qr7YKirdCwiEQ', '2017-01-14 18:45:16', '2017-01-14 20:11:17', 2),
(9, 'nesko', 'd123321@g.com', '$2y$10$EbmeuTNPMvjuX5UdsuXTHOkN.eKzDoeBZNVD7B2sDhK7wvn0/uazi', 'mIQW3J3nHqxpCa9HRClXOafnkfJ36jf4T3GX01u209s4DkFqLAKUjvHqFti8', '2017-01-14 20:39:35', '2017-01-14 20:39:40', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_serial_unique` (`serial`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
