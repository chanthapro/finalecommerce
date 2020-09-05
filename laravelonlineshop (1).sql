-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 03, 2019 at 03:55 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelonlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` double NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `name`, `phone`, `address`, `total_price`, `status`, `created_at`, `updated_at`, `email`) VALUES
(1, 'rith', '12345678', 'pp', 2, 3, '2019-06-28 02:56:37', '2019-06-29 00:37:49', 'rith@gmail.com'),
(2, 'rith', '12345678', 'pp', 2, 3, '2019-06-28 02:59:33', '2019-06-29 00:37:55', 'rith@gmail.com'),
(3, 'rith', '0965564677', 'pp', 1, 3, '2019-06-29 00:27:06', '2019-06-29 00:37:57', 'rith@gmail.com'),
(4, 'lyprono', '0965564677', 'pp', 1, 2, '2019-06-29 02:04:57', '2019-07-04 06:56:24', 'lyprono@gmail.com'),
(5, 'hhh', '0965564677', 'dfghj', 1, 1, '2019-07-03 06:30:43', '2019-07-04 06:51:38', 'pora@gmail.com'),
(6, 'Lyprono', '0965564677', 'dfghj', 1, 1, '2019-07-04 06:50:17', '2019-07-04 06:51:39', 'lyprono@gmail.com'),
(7, 'lyprono', '0965564677', 'dfghj', 2, 1, '2019-07-04 06:56:08', '2019-07-04 06:56:08', 'lyprono@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE IF NOT EXISTS `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bill_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `bill_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 1, 970, '2019-06-28 02:56:37', '2019-06-28 02:56:37'),
(2, 1, 6, 1, 1100, '2019-06-28 02:56:37', '2019-06-28 02:56:37'),
(3, 2, 7, 1, 970, '2019-06-28 02:59:33', '2019-06-28 02:59:33'),
(4, 2, 6, 1, 1100, '2019-06-28 02:59:33', '2019-06-28 02:59:33'),
(5, 3, 8, 1, 450, '2019-06-29 00:27:06', '2019-06-29 00:27:06'),
(6, 3, 7, 1, 970, '2019-06-29 00:27:06', '2019-06-29 00:27:06'),
(7, 4, 9, 1, 700, '2019-06-29 02:04:57', '2019-06-29 02:04:57'),
(8, 4, 8, 1, 450, '2019-06-29 02:04:57', '2019-06-29 02:04:57'),
(9, 5, 9, 1, 700, '2019-07-03 06:30:43', '2019-07-03 06:30:43'),
(10, 5, 8, 1, 450, '2019-07-03 06:30:43', '2019-07-03 06:30:43'),
(11, 6, 8, 3, 450, '2019-07-04 06:50:17', '2019-07-04 06:50:17'),
(12, 7, 7, 1, 970, '2019-07-04 06:56:08', '2019-07-04 06:56:08'),
(13, 7, 6, 1, 1100, '2019-07-04 06:56:08', '2019-07-04 06:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `export`
--

DROP TABLE IF EXISTS `export`;
CREATE TABLE IF NOT EXISTS `export` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `total_quantity` int(11) NOT NULL DEFAULT '0',
  `total_price` double NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `export`
--

INSERT INTO `export` (`id`, `user_id`, `total_quantity`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 2070, 1, '2019-06-29 00:37:49', '2019-06-29 00:37:49'),
(2, 3, 2, 2070, 1, '2019-06-29 00:37:55', '2019-06-29 00:37:55'),
(3, 3, 2, 1420, 1, '2019-06-29 00:37:57', '2019-06-29 00:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `export_detail`
--

DROP TABLE IF EXISTS `export_detail`;
CREATE TABLE IF NOT EXISTS `export_detail` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `export_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `export_detail`
--

INSERT INTO `export_detail` (`id`, `export_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 1, 970, '2019-06-29 00:37:49', '2019-06-29 00:37:49'),
(2, 1, 6, 1, 1100, '2019-06-29 00:37:49', '2019-06-29 00:37:49'),
(3, 2, 7, 1, 970, '2019-06-29 00:37:55', '2019-06-29 00:37:55'),
(4, 2, 6, 1, 1100, '2019-06-29 00:37:55', '2019-06-29 00:37:55'),
(5, 3, 8, 1, 450, '2019-06-29 00:37:57', '2019-06-29 00:37:57'),
(6, 3, 7, 1, 970, '2019-06-29 00:37:57', '2019-06-29 00:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `import`
--

DROP TABLE IF EXISTS `import`;
CREATE TABLE IF NOT EXISTS `import` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `total_quantity` int(11) NOT NULL DEFAULT '0',
  `total_price` double NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `import`
--

INSERT INTO `import` (`id`, `user_id`, `total_quantity`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 36000, 2, '2019-06-20 06:04:24', '2019-06-20 06:05:03'),
(2, 3, 0, 0, 2, '2019-06-26 07:30:23', '2019-06-26 07:40:17'),
(3, 3, 10, 5000, 1, '2019-06-26 07:30:42', '2019-07-04 06:53:27'),
(4, 3, 0, 0, 2, '2019-06-29 00:44:31', '2019-06-29 00:44:55'),
(5, 3, 0, 0, 2, '2019-06-29 00:45:06', '2019-06-29 00:45:27'),
(6, 3, 10, 5000, 2, '2019-06-29 00:45:18', '2019-06-29 00:46:22'),
(7, 3, 0, 0, 1, '2019-06-29 00:45:21', '2019-06-29 00:45:21'),
(8, 3, 15, 10500, 2, '2019-06-29 00:45:37', '2019-06-29 00:50:01'),
(9, 3, 0, 0, 1, '2019-06-29 00:45:52', '2019-06-29 00:45:52'),
(10, 3, 0, 0, 1, '2019-07-04 06:53:09', '2019-07-04 06:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `import_detail`
--

DROP TABLE IF EXISTS `import_detail`;
CREATE TABLE IF NOT EXISTS `import_detail` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `import_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `import_detail`
--

INSERT INTO `import_detail` (`id`, `import_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 6, 6000, '2019-06-20 06:04:53', '2019-06-20 06:04:53'),
(2, 6, 9, 10, 500, '2019-06-29 00:46:17', '2019-06-29 00:46:17'),
(3, 8, 7, 15, 700, '2019-06-29 00:49:25', '2019-06-29 00:49:25'),
(4, 3, 9, 10, 500, '2019-07-04 06:53:27', '2019-07-04 06:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE IF NOT EXISTS `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Foxconn Technology Group', '2019-06-01 14:51:59', '2019-06-19 14:52:04'),
(2, 'Samsung company', '2019-06-22 07:15:47', '2019-06-22 07:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_09_26_224717_create_roles_table', 1),
(4, '2017_09_26_224837_create_permissions_table', 1),
(5, '2017_09_26_224909_create_news_table', 1),
(6, '2017_09_26_224929_create_bills_table', 1),
(7, '2017_09_26_224946_create_import_table', 1),
(8, '2017_09_26_225024_create_export_table', 1),
(9, '2017_09_26_225049_create_import_detail_table', 1),
(10, '2017_09_26_225107_create_export_detail_table', 1),
(11, '2017_09_26_225132_create_bill_detail_table', 1),
(12, '2017_09_26_225208_create_products_table', 1),
(13, '2017_09_26_225238_create_manufacturers_table', 1),
(14, '2017_09_29_215256_update_bills_table', 1),
(15, '2017_10_06_234353_add_price_products_table', 1),
(16, '2017_10_07_013923_add_new_and_hot_products_table', 1),
(17, '2017_10_08_132930_create_types_table', 1),
(18, '2017_10_08_133646_create_product_type_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `promotion_price` double NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `OS` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RAM` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `new` int(11) NOT NULL DEFAULT '0',
  `hot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `manufacturer_id`, `name`, `alias`, `detail`, `image`, `unit_price`, `promotion_price`, `quantity`, `OS`, `memory`, `RAM`, `display`, `color`, `status`, `created_at`, `updated_at`, `price`, `new`, `hot`) VALUES
(9, 1, 'Iphone7', 'iphone7', 'good', 'iphone7.png', 700, 700, 10, 'ios', '64GB', '4G', '12', 'Gold', 1, '2019-06-29 00:44:15', '2019-06-29 00:46:22', 700, 0, 0),
(8, 1, 'iphone7', 'iphone7', 'good', 'ip7plus_gold.jpg', 500, 450, -1, 'ios', '32', '6', '12', 'Gold', 1, '2019-06-27 08:35:01', '2019-06-29 00:37:57', 450, 0, 0),
(7, 1, 'iphonex', 'iphonex', 'good', 'iphonex.png', 1000, 970, 12, 'ios', '64GB', '6', '12', '5.80\"', 1, '2019-06-26 06:23:31', '2019-06-29 00:50:01', 970, 1, 0),
(6, 1, 'iPhone XS Max', 'iphone-xs-max', 'good', 'iphone-xs-gold-select-2018.png', 1200, 1100, -2, 'ios', '120', '4G', '12', 'Gold', 1, '2019-06-26 06:11:21', '2019-06-29 00:37:55', 1100, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2019-06-19 12:12:30', '2019-06-19 12:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', '2019-06-13 14:53:01', '2019-06-19 14:53:16'),
(2, 'samsung Note8', '2019-06-22 07:17:42', '2019-06-22 07:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
--

DROP TABLE IF EXISTS `type_product`;
CREATE TABLE IF NOT EXISTS `type_product` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `type_product_product_id_unique` (`product_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`id`, `product_id`, `type_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-06-19 14:53:34', '2019-06-19 14:53:39'),
(2, 2, 1, '2019-06-22 05:36:25', '2019-06-22 05:36:25'),
(3, 3, 1, '2019-06-22 07:11:29', '2019-06-22 07:11:29'),
(4, 4, 2, '2019-06-22 07:17:42', '2019-06-22 07:17:42'),
(5, 5, 1, '2019-06-24 09:41:44', '2019-06-24 09:41:44'),
(6, 6, 1, '2019-06-26 06:11:21', '2019-06-26 06:11:21'),
(7, 7, 1, '2019-06-26 06:23:31', '2019-06-26 06:23:31'),
(8, 8, 1, '2019-06-27 08:35:01', '2019-06-27 08:35:01'),
(9, 9, 1, '2019-06-29 00:44:15', '2019-06-29 00:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `phone`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'jack', 'nangjack@gmail.com', '$2y$10$7gM/05fPiZ0rAYXNtHbrx.CuIMRlkoVoP68A2IJuZU3fb5wHqb7yu', '011726224', 1, '1231', '2019-06-19 08:53:58', '2019-06-19 08:54:24'),
(2, 1, 'lyprono', 'Lyprono@gmail.com', '$2y$10$.Q25mstdSo8huxnicEEpnuII/GJXUBi9qz..a.FQiC1wRGSsxYVkS', '0965564677', 1, 'yv1PyIrALnOuvPuG3Oo9QaqMMcVAAdQ4I8dqD3Lo36B1CHzaF07EPvY607EL', '2019-06-19 13:39:16', '2019-06-20 10:12:10'),
(3, 1, 'rith', 'rith@gmail.com', '$2y$10$9XBwbJnLk4Wv7d01VC9twe0/1b6tMq6Xs5tWaZshvWnez0.req6HO', '12345678', 1, NULL, '2019-06-21 03:27:34', '2019-06-21 03:27:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
