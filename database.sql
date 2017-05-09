-- phpMyAdmin SQL Dump
-- version 4.0.10.12
-- http://www.phpmyadmin.net
--
-- Host: 127.7.230.3:3306
-- Generation Time: May 09, 2017 at 01:37 PM
-- Server version: 5.5.52
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `page`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

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

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial` int(11) NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_serial_unique` (`serial`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `manufacturer`, `serial`, `country`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Proizvod', 'Prozivoz izmjenjeni', 123456789, 'Bosna', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mihi, inquam, qui te id ipsum rogavi? Si enim ad populum me vocas, eum. Expectoque quid ad id, quod quaerebam, respondeas. Duo Reges: constructio interrete. Quo studio Aristophanem putamus aetatem in litteris duxisse?  Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Non autem hoc: igitur ne illud quidem. Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Non semper, inquam; Sed fac ista esse non inportuna; Totum autem id externum est, et quod externum, id in casu est. Color egregius, integra valitudo, summa gratia, vita denique conferta voluptatum omnium varietate.', '2017-01-14 21:50:58', '2017-05-09 17:03:37'),
(6, 'Lorem ipsum', 'Proba', 45104150, 'dddd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mihi, inquam, qui te id ipsum rogavi? Si enim ad populum me vocas, eum. Expectoque quid ad id, quod quaerebam, respondeas. Duo Reges: constructio interrete. Quo studio Aristophanem putamus aetatem in litteris duxisse?  Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Non autem hoc: igitur ne illud quidem. Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Non semper, inquam; Sed fac ista esse non inportuna; Totum autem id externum est, et quod externum, id in casu est. Color egregius, integra valitudo, summa gratia, vita denique conferta voluptatum omnium varietate.', '2017-04-29 12:05:03', '2017-05-09 17:03:21'),
(7, 'Lorem ipsum', 'Lorem ipsum', 789654123, 'Japan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mihi, inquam, qui te id ipsum rogavi? Si enim ad populum me vocas, eum. Expectoque quid ad id, quod quaerebam, respondeas. Duo Reges: constructio interrete. Quo studio Aristophanem putamus aetatem in litteris duxisse?  Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Non autem hoc: igitur ne illud quidem. Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Non semper, inquam; Sed fac ista esse non inportuna; Totum autem id externum est, et quod externum, id in casu est. Color egregius, integra valitudo, summa gratia, vita denique conferta voluptatum omnium varietate.', '2017-04-29 20:53:08', '2017-05-09 17:03:04'),
(8, 'New Product', 'Product', 123, 'England', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mihi, inquam, qui te id ipsum rogavi? Si enim ad populum me vocas, eum. Expectoque quid ad id, quod quaerebam, respondeas. Duo Reges: constructio interrete. Quo studio Aristophanem putamus aetatem in litteris duxisse?  Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Non autem hoc: igitur ne illud quidem. Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Non semper, inquam; Sed fac ista esse non inportuna; Totum autem id externum est, et quod externum, id in casu est. Color egregius, integra valitudo, summa gratia, vita denique conferta voluptatum omnium varietate.', '2017-05-09 17:04:03', '2017-05-09 17:04:03'),
(9, 'Laravel', 'PHP', 0, 'Bosnia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mihi, inquam, qui te id ipsum rogavi? Si enim ad populum me vocas, eum. Expectoque quid ad id, quod quaerebam, respondeas. Duo Reges: constructio interrete. Quo studio Aristophanem putamus aetatem in litteris duxisse?  Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Non autem hoc: igitur ne illud quidem. Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Non semper, inquam; Sed fac ista esse non inportuna; Totum autem id externum est, et quod externum, id in casu est. Color egregius, integra valitudo, summa gratia, vita denique conferta voluptatum omnium varietate.', '2017-05-09 17:04:24', '2017-05-09 17:04:24'),
(10, 'Product', 'Factory', 45687, 'Bosnia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mihi, inquam, qui te id ipsum rogavi? Si enim ad populum me vocas, eum. Expectoque quid ad id, quod quaerebam, respondeas. Duo Reges: constructio interrete. Quo studio Aristophanem putamus aetatem in litteris duxisse?  Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Non autem hoc: igitur ne illud quidem. Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Non semper, inquam; Sed fac ista esse non inportuna; Totum autem id externum est, et quod externum, id in casu est. Color egregius, integra valitudo, summa gratia, vita denique conferta voluptatum omnium varietate.', '2017-05-09 17:05:39', '2017-05-09 17:05:39'),
(11, 'PC', 'Apple', 8724, 'USA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mihi, inquam, qui te id ipsum rogavi? Si enim ad populum me vocas, eum. Expectoque quid ad id, quod quaerebam, respondeas. Duo Reges: constructio interrete. Quo studio Aristophanem putamus aetatem in litteris duxisse?  Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Non autem hoc: igitur ne illud quidem. Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Non semper, inquam; Sed fac ista esse non inportuna; Totum autem id externum est, et quod externum, id in casu est. Color egregius, integra valitudo, summa gratia, vita denique conferta voluptatum omnium varietate.', '2017-05-09 17:06:05', '2017-05-09 17:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE IF NOT EXISTS `rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `name`, `description`, `product_id`, `created_at`, `updated_at`) VALUES
(15, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis aspernatur quas quibusdam veniam sunt animi, est quos optio explicabo deleniti inventore unde minus, tempore enim ratione praesentium, cumque, dolores nesciunt?', 7, '2017-05-09 00:44:17', '2017-05-09 00:44:17'),
(16, 'Test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mihi, inquam, qui te id ipsum rogavi? Si enim ad populum me vocas, eum. Expectoque quid ad id, quod quaerebam, respondeas. Duo Reges: constructio interrete. Quo studio Aristophanem putamus aetatem in litteris duxisse? Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Non autem hoc: igitur ne illud quidem. Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Non semper, inquam; Sed fac ista esse non inportuna; Totum autem id externum est, et quod externum, id in casu est. Color egregius, integra valitudo, summa gratia, vita denique conferta voluptatum omnium varietate.  Read more', 9, '2017-05-09 17:25:31', '2017-05-09 17:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

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

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `roles_id`) VALUES
(1, 'Denis', 'denisdzafo@gmail.com', '$2y$10$bwCFZj63X6/o/586cH30UuuErQe7GfbJO2FuzPV5F.CPrOzpUyC.6', '0s4vmlWFsWHJirGbXaoSw0tYeFCZUxLuC0t2lu3AzkTYa9hsoCHBJApFBzAU', '2017-01-09 14:32:06', '2017-01-12 23:08:18', 1),
(2, 'Admin', 'admin@gmail.com', '$2y$10$FkGMPQerkF1CzhO7y.FqOu52F.eaQ8l8KTmoLgyi/rDBMgTXzCSJC', 'vork208t9B2z6IIC9mobOXFu32UY1EsnEyzLNijC0SwToBlSY2cty3iefSgC', '2017-01-09 15:24:18', '2017-04-29 21:06:34', 1),
(4, 'Product Manager', 'product@gmail.com', '$2y$10$9OrTgKiJXC2cYNZPeflRU.Djgao50URI54dxx6.0fwUdlujhHKr3i', 'bpuqoWQjpUgPMIhhs5GAPkMy27odIe4uKcdMktXnajG76b7qwg1fHUydeREI', '2017-01-12 20:00:25', '2017-02-26 14:16:01', 3),
(6, 'Rate Manager', 'rate@gmail.com', '$2y$10$yC7KZI4.4mcBemTD0BYx8u.rQlgS3GkbVvknMvA.9UhvxAjiBk4/e', '8DxtqmxUg191k7ywYEjy42TFFuONHRYjrgEKFNWFUyXB5JH52BfsTEeLuBpu', '2017-01-12 23:55:34', '2017-05-09 16:55:56', 4),
(16, 'Test user', 'test@gmail.com', '$2y$10$76WvGuf08YbXlZMvg8Kcm.G03YlwnPYdY0enkx70DOIJydt4OJsRe', 'RWGhgXsqSK4XZEAzZeVWx12t8VPOoSNliEKMiKWDS42zTFs6CDGRwFLGeRAe', '2017-05-09 17:27:54', '2017-05-09 17:27:54', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
