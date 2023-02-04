-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2021 at 03:06 PM
-- Server version: 10.3.28-MariaDB-log-cll-lve
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sopnorupayan_qurbani`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryDescription`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(6, 'ELECTRONICES', 'Enim et facilis velit culpa quis sequi. Saepe aspernatur atque ut voluptatem ratione. Et sint ut quos consequatur nesciunt. Et quibusdam quas possimus adipisci impedit enim distinctio.', 0, '2017-02-18 22:48:31', '2017-02-18 22:48:31'),
(7, 'assumenda', 'Perferendis velit omnis doloribus dolor et. Nisi omnis possimus non rerum. Voluptas consequatur quibusdam dolores nemo quo.', 0, '2017-02-18 22:48:31', '2017-02-18 22:48:31'),
(8, 'suscipit', 'Aspernatur qui necessitatibus sapiente consequatur. Sunt quia ratione in ut. Delectus blanditiis deserunt nobis id vel.', 0, '2017-02-18 22:48:31', '2017-02-18 22:48:31'),
(9, 'eaque', 'Magnam odio ab magni enim quod alias rerum perspiciatis. Voluptatem architecto est reiciendis. Voluptate fuga natus ea.', 0, '2017-02-18 22:48:31', '2017-02-18 22:48:31'),
(10, 'quidem', 'Aut numquam vel rerum fugit. Ex necessitatibus quis corporis non ut fugit. Deserunt cupiditate et enim officiis.', 0, '2017-02-18 22:48:31', '2017-02-18 22:48:31'),
(11, 'MEN\'S WEAR', 'Mens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens WearMens', 0, NULL, '2020-04-18 11:21:10'),
(12, 'WOMEN\'S WEAR', 'Women WearsWomen WearsWomen WearsWomen WearsWomen WearsWomen WearsWomen WearsWomen WearsWomen WearsWomen WearsWomen WearsWomen WearsWomen WearsWomen WearsWomen Wears.', 0, NULL, '2020-04-19 03:29:44'),
(13, 'QURBANI COW', '<p>EID-UL-ADHA QURBANI</p>', 1, NULL, NULL),
(14, 'Qubani Goat', '<p>Eid-Ul-Adha Qubani</p>', 1, NULL, NULL),
(15, 'Electronic', '<p>Here all the electronic products will updtae&nbsp;</p>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districtName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `emailAddress`, `password`, `remember_token`, `address`, `phoneNumber`, `districtName`, `created_at`, `updated_at`) VALUES
(2, 'SAkib', 'Al Hasan', 'sakib@gmail.com', '$2y$10$kGu3k/JeSmiHzrgvt1bywO9nurJZ7rIgiaxIiLZjSB8ctGj4we9Au', '', 'asasdasd', '32452345', 'Savar', '2017-02-23 01:27:35', '2017-02-23 01:27:35'),
(3, 'SAkib', 'Al Hasan', 'sakib@gmail.com', '$2y$10$HFZ85DQpTiVrRKoxQUjWFeUyBiZfq7iumHpSfIe1o59NIise/yW8O', '', 'Dhaka', '123', 'Dhaka', '2017-02-25 23:51:02', '2017-02-25 23:51:02'),
(4, 'azizul', 'jabbari', 'm.azizulcse@gmail.com', '$2y$12$7peWOFO7YB9w0FHnO3rRpOFIJ5q51P.0udOESOemmjX/.IONCNBqO', 'DxdRTUcVAj5fobB2JNshkI5K28A3qcB850IRLv53OMMu4au9PELFK0yvEZGx', 'Dhaka', '01746478604', 'Dhaka', '2020-04-15 04:15:26', '2020-04-15 04:15:26'),
(5, 'Md', 'Sagor', 'sagor@gmail.com', '$2y$10$qPM5HuGgyVbitYqn0h5bBOulRerh210jEbZMf5ylDG2YQXMQOtT5S', '', 'Dhaka', '01521122009', 'Dhaka', '2020-04-22 09:05:56', '2020-04-22 09:05:56'),
(6, 'saddam', 'saddam', 'saddam@gmail.com', '$2y$10$3DKun5YNfJg1IvnkQjJPCOyF.9Cjf64C0406iboQiq9EtMwkREO7q', 'CqStcIGPjydThAFn5Wr5cWAvKxsi7LZwAlqN0CAUbnazxVYD9DcoCwHJ0SzG', 'Pabna', '017458236', 'Dhaka', '2020-04-23 00:00:45', '2020-04-23 00:00:45'),
(7, 'abc', 'zxc', 'abc@gmail.com', '$2y$10$MmCnwFwi6fz0lurpV.U32uyKCKQapAw.hqIr7QM3HK0mG9jCWj61W', 'ISLD1oJdjp7nltdvEqxeXrDni8bsqqTNSWXBwZk8fnA2nMR7sDvGVFpOI6f5', 'Dhaka', '0147852', 'Dhaka', '2020-04-23 12:40:11', '2020-04-23 12:40:11'),
(8, 'PUST', 'CSE', 'csepust@gmail.com', '$2y$10$jBD5zCLihQPIh8DYtQJQ/OlhHdEgDMoou4oybYurDEWmOioEsetbe', NULL, 'Pabna', '12345678', 'Dhaka', '2020-04-25 14:58:59', '2020-04-25 14:58:59'),
(9, 'zxcv', 'bnm', 'zxcv@gmail.com', '$2y$10$OI397//DeED7.uwOR.wr.e.e3kUEn.DPguFYjnyAbd1GWzQbdDH.q', 'YysuSH8bQDELGIwKNhnnuXwa8hWY6F2jd0owhmYyosASdPphYWJPDI3UJ7LL', 'asdf', '12563968', 'Comilla', '2020-04-30 11:55:20', '2020-04-30 11:55:20'),
(10, 'ruhul amin', 'sarker', 'ruhulamin.ce.11@gmail.com', '$2y$10$EcfWPJ7YaBuuGNjX8Y8EHe5UoUNNP5xwi6vHz3D6cknkRTms.smzu', 'evRlrZrxTspFV1r4VmoPbgnccQsDIZOGcU2Qcc51dz7DhkvP45PVpnFFBzby', 'mirpur 6', '01751383947', 'Dhaka', '2020-07-14 03:50:19', '2020-07-14 03:50:19'),
(11, 'Net', 'Coden', 'netcoden113@gmail.com', '$2y$10$KTKWoC/0s0EBQbcH9jQloeKNOK3sMOKwVVSEQr9y/g/GNUHwxaXuy', 'SMQvW8EwSJSNuMOmEAfj9j8GidUqteSXYgK7NviwU3jrD1rdlPjUTPiYcv1X', 'dhaka', '01746478604', 'Dhaka', '2020-07-19 14:10:24', '2020-07-19 14:10:24'),
(12, 'azizul', 'azizul', 'azizul@gmail.coom', '$2y$10$hyDV9XswFPxaOBtqR1ynhOnm8md6nsL138DH5wGtFqDNVmXbjrVOq', 'GkT5XsDHG3uust4SPkRdxiz0zDKIlbkU6Ybgre2BqyUEy6RH6z6JCLJMetff', 'Pabna', '01521122009', 'Dhaka', '2020-07-21 00:22:40', '2020-07-21 00:22:40'),
(13, 'saddam', 'saddam', 'saddam@gmail.com', '$2y$10$fMeF9dOsXeFmomu8v8n0g.a.VfaYZA7MJpQdhWTpKwpf0/danmOV6', NULL, 'pabna', '01789652369', 'Dhaka', '2020-07-21 00:39:21', '2020-07-21 00:39:21'),
(14, 'Atik', 'khan', 'atikkhan@gmail.com', '$2y$10$JmdNowf33JbR9oKdg8H2DuWcA/UMHrah4q7O.CRiQHibHXA7KYLJa', 'jDn5tEYjnMCRFi9qmgER63hJLjDpErsZHVz4Xf1j1O5U263RgXiep9hD9UJV', 'abcd1234', '01723469283', 'Barisal', '2020-07-21 21:45:36', '2020-07-21 21:45:36'),
(15, 'RUHUL AMIN', 'sarker', 'ruhulamin.ce.11@gmail.com', '$2y$10$eChv91A4El0mOlP7EsiGCOS7CTowbb.BDGSJ0k8cZgweQl2HEXa/u', NULL, 'mirpur-6', '01751383947', 'Dhaka', '2020-07-23 21:24:19', '2020-07-23 21:24:19'),
(16, 'sumon ruhul', 'sarker', 'qurbani.sopnorupayan@com', '$2y$10$LnZZH/wEWqhamtoEhawrmeddqXa.StstTHHsl7ykoWNlJZRzRP7zq', NULL, 'mirpur-6', '01521120576', 'Dhaka', '2020-07-23 23:51:30', '2020-07-23 23:51:30'),
(17, 'RUHUL AMIN', 'sarker', 'sumonce9@gmail.com', '$2y$10$RVD84kTmrq3EngHNJtLhluPsWLz1EXi3VxH6qLEjeTZ82McibkhdO', NULL, 'mirpur-6', '01751383947', 'Dhaka', '2020-07-24 14:40:12', '2020-07-24 14:40:12'),
(18, 'ruhul', 'amin', 'qurbani.sopnorupayan@gmail.com', '$2y$10$gqdSL1WVj.N/5czKMsa6Oe3PbxkPAMkJV5Oqbm7WvUbh4VALTShEe', NULL, 'malibag', '01751383947', 'Dhaka', '2020-07-25 15:07:48', '2020-07-25 15:07:48'),
(19, 'Asikul', 'Islam', 'asik.sojan.10@gmail.com', '$2y$10$H04Tj0duWSy8wBYfT9b7t.BSeHaHms5eUcg7otPnOL8oRYtO0JN.q', NULL, 'Nop', '01934542851', 'Comilla', '2020-07-26 05:16:38', '2020-07-26 05:16:38'),
(20, 'Md', 'Hossain', 'onlineshop3110@gmail.com', '$2y$10$.jsSHIiw53d2q9EnGlpczONNovCdYakxgI2QIAcxMHs/0xfyBk8ci', NULL, 'Sector#10,Uttara, Dhaka', '+8801710487458', 'Dhaka', '2020-08-22 18:35:35', '2020-08-22 18:35:35'),
(21, 'Zibon', 'Chowdhury', 'jibon.cse2018@gmail.com', '$2y$10$/3ErPNeWqYlfOhUkmsgoaOAYSYb2Y8V6D/04nScAfZ6h8o4WzMPYO', NULL, 'Dhaka', '01746445658', 'Dhaka', '2020-10-03 09:20:20', '2020-10-03 09:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturerDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `manufacturerName`, `manufacturerDescription`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(1, 'culpa', '<p>Quia facilis est reiciendis assumenda quam consequatur qui. Ipsam maiores et est eaque. Exercitationem neque quibusdam occaecati laboriosam. Placeat assumenda suscipit repellat optio soluta eos.</p>', 1, '2017-02-19 00:13:11', '2020-04-22 09:13:51'),
(2, 'laboriosam', 'Incidunt reprehenderit quae rerum excepturi aliquid ut perspiciatis. Aperiam laudantium quaerat et minima quo qui omnis. Molestias dolorem facere quo sit.', 1, '2017-02-19 00:13:12', '2017-02-19 00:13:12'),
(3, 'consectetur', 'Molestias velit earum quo. Error recusandae cum at omnis id. Est corrupti ipsum eveniet aliquid et et. Id aut quia quis ab earum maxime.', 0, '2017-02-19 00:13:12', '2017-02-19 00:13:12'),
(4, 'molestias', 'Ratione quae asperiores in qui dolores ut atque. Consequatur qui et molestiae fuga tempore ex quo. Et natus repellat incidunt omnis voluptas voluptas omnis nesciunt.', 0, '2017-02-19 00:13:12', '2017-02-19 00:13:12'),
(5, 'enim', 'Reiciendis eum dolore rerum voluptatum ex. Assumenda numquam maxime voluptas et velit. Modi earum ex consequatur consequatur. Harum velit qui qui non enim.', 0, '2017-02-19 00:13:12', '2017-02-19 00:13:12');

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2017_02_07_050406_create_categories_table', 1),
(11, '2017_02_10_090127_create_manufacturers_table', 1),
(12, '2017_02_12_034619_create_products_table', 1),
(13, '2017_02_23_071445_create_customers_table', 2),
(14, '2017_02_26_055842_create_shippings_table', 3),
(15, '2017_02_26_063811_create_orders_table', 4),
(16, '2017_02_26_063822_create_payments_table', 4),
(17, '2017_02_26_063844_create_order_details_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `shippingId` int(11) NOT NULL,
  `orderTotal` double(10,2) NOT NULL,
  `orderStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customerId`, `shippingId`, `orderTotal`, `orderStatus`, `created_at`, `updated_at`) VALUES
(4, 3, 1, 702746.00, 'pending', '2017-02-26 01:17:01', '2017-02-26 01:17:01'),
(5, 3, 1, 123.00, 'pending', '2017-02-26 01:18:38', '2017-02-26 01:18:38'),
(6, 3, 1, 12425.00, 'pending', '2017-02-26 01:19:38', '2017-02-26 01:19:38'),
(7, 3, 1, 345837.00, 'pending', '2017-02-26 01:21:13', '2017-02-26 01:21:13'),
(8, 3, 1, 691182.00, 'pending', '2017-02-26 01:24:43', '2017-02-26 01:24:43'),
(9, 4, 2, 345345.00, 'pending', '2020-04-15 04:16:32', '2020-04-15 04:16:32'),
(10, 4, 2, 357524.00, 'pending', '2020-04-15 04:21:20', '2020-04-15 04:21:20'),
(11, 5, 3, 13554.00, 'pending', '2020-04-22 09:06:47', '2020-04-22 09:06:47'),
(12, 5, 3, 1498.00, 'pending', '2020-04-22 09:08:46', '2020-04-22 09:08:46'),
(13, 7, 4, 69314.00, 'pending', '2020-04-23 12:40:57', '2020-04-23 12:40:57'),
(14, 6, 5, 4797.00, 'pending', '2020-04-26 12:22:35', '2020-04-26 12:22:35'),
(15, 6, 5, 7297.00, 'pending', '2020-04-26 12:26:46', '2020-04-26 12:26:46'),
(16, 6, 5, 7297.00, 'pending', '2020-04-26 12:30:36', '2020-04-26 12:30:36'),
(17, 6, 5, 7297.00, 'pending', '2020-04-26 13:30:23', '2020-04-26 13:30:23'),
(18, 6, 5, 7297.00, 'pending', '2020-04-26 13:31:46', '2020-04-26 13:31:46'),
(19, 6, 5, 7297.00, 'pending', '2020-04-26 13:33:45', '2020-04-26 13:33:45'),
(20, 6, 5, 7297.00, 'pending', '2020-04-26 13:34:32', '2020-04-26 13:34:32'),
(21, 6, 5, 7297.00, 'pending', '2020-04-26 13:34:42', '2020-04-26 13:34:42'),
(22, 6, 5, 7297.00, 'pending', '2020-04-26 13:36:19', '2020-04-26 13:36:19'),
(23, 4, 6, 3299.00, 'pending', '2020-04-29 11:17:39', '2020-04-29 11:17:39'),
(24, 4, 6, 1798.00, 'pending', '2020-04-29 11:19:52', '2020-04-29 11:19:52'),
(25, 4, 6, 2798.00, 'pending', '2020-04-29 11:22:10', '2020-04-29 11:22:10'),
(26, 4, 6, 2798.00, 'pending', '2020-04-29 11:29:53', '2020-04-29 11:29:53'),
(27, 4, 6, 6498.00, 'pending', '2020-04-29 12:14:21', '2020-04-29 12:14:21'),
(28, 4, 6, 6498.00, 'pending', '2020-04-29 12:15:32', '2020-04-29 12:15:32'),
(29, 4, 6, 6498.00, 'pending', '2020-04-29 12:17:39', '2020-04-29 12:17:39'),
(30, 4, 6, 41155.00, 'pending', '2020-04-29 12:24:06', '2020-04-29 12:24:06'),
(31, 4, 6, 1122.00, 'pending', '2020-04-29 12:28:58', '2020-04-29 12:28:58'),
(32, 4, 6, 24611.00, 'pending', '2020-04-29 13:57:11', '2020-04-29 13:57:11'),
(33, 4, 6, 36667.00, 'pending', '2020-04-29 14:01:16', '2020-04-29 14:01:16'),
(34, 4, 6, 48211.00, 'pending', '2020-04-29 14:06:09', '2020-04-29 14:06:09'),
(35, 4, 10, 2500.00, 'pending', '2020-05-02 04:09:35', '2020-05-02 04:09:35'),
(36, 10, 11, 1250.00, 'pending', '2020-07-14 03:53:22', '2020-07-14 03:53:22'),
(37, 4, 13, 4750.00, 'pending', '2020-07-14 10:41:38', '2020-07-14 10:41:38'),
(38, 4, 14, 4499.00, 'pending', '2020-07-14 12:34:32', '2020-07-14 12:34:32'),
(39, 10, 15, 72000.00, 'pending', '2020-07-16 12:26:48', '2020-07-16 12:26:48'),
(40, 11, 16, 17500.00, 'pending', '2020-07-19 14:12:31', '2020-07-19 14:12:31'),
(41, 4, 17, 110500.00, 'pending', '2020-07-20 13:54:26', '2020-07-20 13:54:26'),
(42, 14, 18, 90500.00, 'pending', '2020-07-21 22:00:01', '2020-07-21 22:00:01'),
(43, 14, 19, 125500.00, 'pending', '2020-07-23 22:29:58', '2020-07-23 22:29:58'),
(44, 14, 19, 125500.00, 'pending', '2020-07-23 22:30:26', '2020-07-23 22:30:26'),
(45, 14, 19, 125500.00, 'pending', '2020-07-23 22:37:20', '2020-07-23 22:37:20'),
(46, 14, 20, 99500.00, 'pending', '2020-07-23 22:49:43', '2020-07-23 22:49:43'),
(47, 10, 21, 58000.00, 'pending', '2020-07-23 22:55:28', '2020-07-23 22:55:28'),
(48, 14, 20, 99500.00, 'pending', '2020-07-23 23:18:27', '2020-07-23 23:18:27'),
(49, 14, 20, 99500.00, 'pending', '2020-07-23 23:19:31', '2020-07-23 23:19:31'),
(50, 14, 20, 99500.00, 'pending', '2020-07-23 23:19:56', '2020-07-23 23:19:56'),
(51, 14, 20, 99500.00, 'pending', '2020-07-23 23:21:37', '2020-07-23 23:21:37'),
(52, 14, 22, 99500.00, 'pending', '2020-07-23 23:25:49', '2020-07-23 23:25:49'),
(53, 14, 22, 99500.00, 'pending', '2020-07-23 23:34:52', '2020-07-23 23:34:52'),
(54, 16, 23, 148500.00, 'pending', '2020-07-23 23:51:47', '2020-07-23 23:51:47'),
(55, 14, 22, 99500.00, 'pending', '2020-07-23 23:52:19', '2020-07-23 23:52:19'),
(56, 14, 22, 99500.00, 'pending', '2020-07-24 00:04:26', '2020-07-24 00:04:26'),
(57, 14, 22, 99500.00, 'pending', '2020-07-24 00:12:52', '2020-07-24 00:12:52'),
(58, 14, 22, 99500.00, 'pending', '2020-07-24 00:34:48', '2020-07-24 00:34:48'),
(59, 14, 22, 99500.00, 'pending', '2020-07-24 00:39:12', '2020-07-24 00:39:12'),
(60, 14, 22, 99500.00, 'pending', '2020-07-24 00:39:50', '2020-07-24 00:39:50'),
(61, 14, 22, 99500.00, 'pending', '2020-07-24 00:48:47', '2020-07-24 00:48:47'),
(62, 14, 22, 99500.00, 'pending', '2020-07-24 00:51:51', '2020-07-24 00:51:51'),
(63, 14, 22, 99500.00, 'pending', '2020-07-24 00:52:38', '2020-07-24 00:52:38'),
(64, 14, 22, 99500.00, 'pending', '2020-07-24 00:53:40', '2020-07-24 00:53:40'),
(65, 10, 24, 84500.00, 'pending', '2020-07-24 14:37:46', '2020-07-24 14:37:46'),
(66, 17, 25, 84500.00, 'pending', '2020-07-24 14:40:27', '2020-07-24 14:40:27'),
(67, 11, 26, 100000.00, 'pending', '2020-07-25 13:53:53', '2020-07-25 13:53:53'),
(68, 11, 26, 100000.00, 'pending', '2020-07-25 13:54:58', '2020-07-25 13:54:58'),
(69, 11, 26, 100000.00, 'pending', '2020-07-25 13:58:31', '2020-07-25 13:58:31'),
(70, 11, 26, 100000.00, 'pending', '2020-07-25 14:01:19', '2020-07-25 14:01:19'),
(71, 11, 26, 100000.00, 'pending', '2020-07-25 14:03:07', '2020-07-25 14:03:07'),
(72, 11, 26, 100000.00, 'pending', '2020-07-25 14:06:09', '2020-07-25 14:06:09'),
(73, 11, 26, 100000.00, 'pending', '2020-07-25 14:18:22', '2020-07-25 14:18:22'),
(74, 11, 26, 100000.00, 'pending', '2020-07-25 14:21:49', '2020-07-25 14:21:49'),
(75, 11, 26, 100000.00, 'pending', '2020-07-25 14:24:49', '2020-07-25 14:24:49'),
(76, 11, 26, 100000.00, 'pending', '2020-07-25 14:26:12', '2020-07-25 14:26:12'),
(77, 11, 26, 100000.00, 'pending', '2020-07-25 14:29:52', '2020-07-25 14:29:52'),
(78, 11, 26, 100000.00, 'pending', '2020-07-25 14:32:07', '2020-07-25 14:32:07'),
(79, 11, 26, 100000.00, 'pending', '2020-07-25 14:34:26', '2020-07-25 14:34:26'),
(80, 11, 26, 100000.00, 'pending', '2020-07-25 14:35:38', '2020-07-25 14:35:38'),
(81, 11, 27, 120000.00, 'pending', '2020-07-25 14:39:06', '2020-07-25 14:39:06'),
(82, 11, 27, 120000.00, 'pending', '2020-07-25 14:40:39', '2020-07-25 14:40:39'),
(83, 11, 27, 120000.00, 'pending', '2020-07-25 14:42:37', '2020-07-25 14:42:37'),
(84, 11, 27, 120000.00, 'pending', '2020-07-25 14:43:13', '2020-07-25 14:43:13'),
(85, 11, 27, 120000.00, 'pending', '2020-07-25 14:44:08', '2020-07-25 14:44:08'),
(86, 11, 27, 120000.00, 'pending', '2020-07-25 14:44:59', '2020-07-25 14:44:59'),
(87, 11, 27, 120000.00, 'pending', '2020-07-25 14:52:16', '2020-07-25 14:52:16'),
(88, 11, 27, 120000.00, 'pending', '2020-07-25 14:59:13', '2020-07-25 14:59:13'),
(89, 18, 28, 100000.00, 'pending', '2020-07-25 15:09:39', '2020-07-25 15:09:39'),
(90, 4, 29, 61000.00, 'pending', '2020-07-25 18:35:40', '2020-07-25 18:35:40'),
(91, 4, 29, 61000.00, 'pending', '2020-07-25 18:36:12', '2020-07-25 18:36:12'),
(92, 4, 29, 61000.00, 'pending', '2020-07-25 18:38:55', '2020-07-25 18:38:55'),
(93, 4, 30, 15000.00, 'pending', '2020-07-25 18:58:09', '2020-07-25 18:58:09'),
(94, 4, 30, 15000.00, 'pending', '2020-07-25 19:01:48', '2020-07-25 19:01:48'),
(95, 4, 30, 15000.00, 'pending', '2020-07-25 19:03:01', '2020-07-25 19:03:01'),
(96, 4, 30, 15000.00, 'pending', '2020-07-25 19:04:19', '2020-07-25 19:04:19'),
(97, 4, 30, 15000.00, 'pending', '2020-07-25 19:10:54', '2020-07-25 19:10:54'),
(98, 18, 31, 100000.00, 'pending', '2020-07-25 20:34:34', '2020-07-25 20:34:34'),
(99, 19, 32, 100000.00, 'pending', '2020-07-26 05:18:42', '2020-07-26 05:18:42'),
(100, 4, 34, 80000.00, 'pending', '2020-07-27 11:03:42', '2020-07-27 11:03:42'),
(101, 4, 34, 80000.00, 'pending', '2020-07-27 11:09:29', '2020-07-27 11:09:29'),
(102, 4, 34, 80000.00, 'pending', '2020-07-27 11:12:00', '2020-07-27 11:12:00'),
(103, 4, 34, 80000.00, 'pending', '2020-07-27 11:13:29', '2020-07-27 11:13:29'),
(104, 4, 34, 80000.00, 'pending', '2020-07-27 11:22:32', '2020-07-27 11:22:32'),
(105, 4, 34, 80000.00, 'pending', '2020-07-27 11:24:50', '2020-07-27 11:24:50'),
(106, 4, 34, 80000.00, 'pending', '2020-07-27 11:26:23', '2020-07-27 11:26:23'),
(107, 4, 34, 80000.00, 'pending', '2020-07-27 11:28:19', '2020-07-27 11:28:19'),
(108, 4, 34, 80000.00, 'pending', '2020-07-27 11:30:44', '2020-07-27 11:30:44'),
(109, 4, 34, 80000.00, 'pending', '2020-07-27 11:31:26', '2020-07-27 11:31:26'),
(110, 4, 35, 120000.00, 'pending', '2020-07-27 11:58:00', '2020-07-27 11:58:00'),
(111, 4, 35, 120000.00, 'pending', '2020-07-27 11:59:51', '2020-07-27 11:59:51'),
(112, 11, 36, 114500.00, 'pending', '2020-07-27 12:03:13', '2020-07-27 12:03:13'),
(113, 21, 37, 120000.00, 'pending', '2020-10-03 09:22:34', '2020-10-03 09:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productPrice` double(10,2) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderId`, `productId`, `productName`, `productPrice`, `productQuantity`, `created_at`, `updated_at`) VALUES
(3, 4, 2, 'X-peria XZ', 345345.00, 2, '2017-02-26 01:17:01', '2017-02-26 01:17:01'),
(4, 5, 1, 'demo Product', 123.00, 1, '2017-02-26 01:18:38', '2017-02-26 01:18:38'),
(5, 6, 1, 'demo Product', 123.00, 3, '2017-02-26 01:19:38', '2017-02-26 01:19:38'),
(6, 7, 1, 'demo Product', 123.00, 4, '2017-02-26 01:21:14', '2017-02-26 01:21:14'),
(7, 8, 1, 'demo Product', 123.00, 4, '2017-02-26 01:24:44', '2017-02-26 01:24:44'),
(8, 9, 2, 'X-peria XZ', 345345.00, 1, '2020-04-15 04:16:32', '2020-04-15 04:16:32'),
(9, 10, 3, 'Habijabi Product', 12056.00, 1, '2020-04-15 04:21:20', '2020-04-15 04:21:20'),
(10, 11, 4, 'T-shirt', 499.00, 1, '2020-04-22 09:06:47', '2020-04-22 09:06:47'),
(11, 12, 4, 'T-shirt', 499.00, 1, '2020-04-22 09:08:46', '2020-04-22 09:08:46'),
(12, 13, 1, 'demo Product', 123.00, 2, '2020-04-23 12:40:57', '2020-04-23 12:40:57'),
(13, 14, 6, 'T-shirt', 799.00, 1, '2020-04-26 12:22:35', '2020-04-26 12:22:35'),
(14, 15, 7, 'Blazer', 2500.00, 1, '2020-04-26 12:26:46', '2020-04-26 12:26:46'),
(15, 20, 7, 'Blazer', 2500.00, 1, '2020-04-26 13:34:32', '2020-04-26 13:34:32'),
(16, 21, 7, 'Blazer', 2500.00, 1, '2020-04-26 13:34:42', '2020-04-26 13:34:42'),
(17, 22, 7, 'Blazer', 2500.00, 1, '2020-04-26 13:36:19', '2020-04-26 13:36:19'),
(18, 0, 7, 'Blazer', 2500.00, 1, '2020-04-29 11:17:39', '2020-04-29 11:17:39'),
(19, 0, 5, 'Shirt', 999.00, 1, '2020-04-29 11:19:52', '2020-04-29 11:19:52'),
(20, 0, 8, 'Shirt', 1999.00, 1, '2020-04-29 11:29:54', '2020-04-29 11:29:54'),
(21, 0, 8, 'Shirt', 1999.00, 2, NULL, NULL),
(22, 0, 7, 'Blazer', 2500.00, 1, NULL, NULL),
(23, 30, 8, 'Shirt', 1999.00, 2, NULL, NULL),
(24, 30, 7, 'Blazer', 2500.00, 1, NULL, NULL),
(25, 30, 1, 'demo Product', 123.00, 1, NULL, NULL),
(26, 30, 2, 'X-peria XZ', 34534.00, 1, NULL, NULL),
(27, 31, 1, 'demo Product', 123.00, 1, NULL, NULL),
(28, 31, 5, 'Shirt', 999.00, 1, NULL, NULL),
(29, 32, 4, 'T-shirt', 499.00, 1, NULL, NULL),
(30, 32, 3, 'Habijabi Product', 12056.00, 2, NULL, NULL),
(31, 34, 1, 'demo Product', 123.00, 1, NULL, NULL),
(32, 34, 2, 'X-peria XZ', 34534.00, 1, NULL, NULL),
(33, 34, 3, 'Habijabi Product', 12056.00, 1, NULL, NULL),
(34, 34, 4, 'T-shirt', 499.00, 1, NULL, NULL),
(35, 34, 5, 'Shirt', 999.00, 1, NULL, NULL),
(36, 35, 7, 'Blazer', 2500.00, 1, NULL, NULL),
(37, 36, 1, 'Sendale', 1250.00, 1, NULL, NULL),
(38, 37, 1, 'Sendale', 1250.00, 1, NULL, NULL),
(39, 37, 2, 'White Blazer', 3500.00, 1, NULL, NULL),
(40, 38, 8, 'Shirt', 1999.00, 1, NULL, NULL),
(41, 38, 1, 'Sendale', 1250.00, 2, NULL, NULL),
(42, 39, 3, 'Samsung mobile', 12000.00, 6, NULL, NULL),
(43, 40, 21, 'Black Goat', 17500.00, 1, NULL, NULL),
(44, 41, 16, 'Cow for Qurbani-SL27', 110500.00, 1, NULL, NULL),
(45, 42, 15, 'Cow for Qurbani-SL25', 90500.00, 1, NULL, NULL),
(46, 43, 16, 'Cow for Qurbani-SL27', 110500.00, 1, NULL, NULL),
(47, 43, 19, 'Goat for Qurbani-SL14', 15000.00, 1, NULL, NULL),
(48, 44, 16, 'Cow for Qurbani-SL27', 110500.00, 1, NULL, NULL),
(49, 44, 19, 'Goat for Qurbani-SL14', 15000.00, 1, NULL, NULL),
(50, 45, 16, 'Cow for Qurbani-SL27', 110500.00, 1, NULL, NULL),
(51, 45, 19, 'Goat for Qurbani-SL14', 15000.00, 1, NULL, NULL),
(52, 46, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(53, 47, 9, 'Cow for Qurbani-SL12', 58000.00, 1, NULL, NULL),
(54, 48, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(55, 49, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(56, 50, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(57, 51, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(58, 52, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(59, 53, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(60, 54, 9, 'Cow for Qurbani-SL12', 58000.00, 1, NULL, NULL),
(61, 54, 15, 'Cow for Qurbani-SL25', 90500.00, 1, NULL, NULL),
(62, 55, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(63, 56, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(64, 57, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(65, 58, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(66, 59, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(67, 60, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(68, 61, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(69, 62, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(70, 63, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(71, 64, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(72, 65, 11, 'Cow for Qurbani-SL18', 84500.00, 1, NULL, NULL),
(73, 66, 11, 'Cow for Qurbani-SL18', 84500.00, 1, NULL, NULL),
(74, 67, 7, 'Cow for Qurbani-SL9', 100000.00, 1, NULL, NULL),
(75, 68, 7, 'Cow for Qurbani-SL9', 100000.00, 1, NULL, NULL),
(76, 69, 7, 'Cow for Qurbani-SL9', 100000.00, 1, NULL, NULL),
(77, 70, 7, 'Cow for Qurbani-SL9', 100000.00, 1, NULL, NULL),
(105, 98, 7, 'Cow for Qurbani-SL9', 100000.00, 1, NULL, NULL),
(106, 99, 7, 'Cow for Qurbani-SL9', 100000.00, 1, NULL, NULL),
(107, 101, 18, 'Goat for Qurbani-SL13', 19000.00, 1, NULL, NULL),
(108, 101, 12, 'Cow for Qurbani-SL20', 61000.00, 1, NULL, NULL),
(109, 102, 18, 'Goat for Qurbani-SL13', 19000.00, 1, NULL, NULL),
(110, 102, 12, 'Cow for Qurbani-SL20', 61000.00, 1, NULL, NULL),
(111, 103, 18, 'Goat for Qurbani-SL13', 19000.00, 1, NULL, NULL),
(112, 103, 12, 'Cow for Qurbani-SL20', 61000.00, 1, NULL, NULL),
(113, 104, 12, 'Cow for Qurbani-SL20', 61000.00, 1, NULL, NULL),
(114, 105, 18, 'Goat for Qurbani-SL13', 19000.00, 1, NULL, NULL),
(115, 105, 12, 'Cow for Qurbani-SL20', 61000.00, 1, NULL, NULL),
(116, 106, 18, 'Goat for Qurbani-SL13', 19000.00, 1, NULL, NULL),
(117, 106, 12, 'Cow for Qurbani-SL20', 61000.00, 1, NULL, NULL),
(118, 107, 18, 'Goat for Qurbani-SL13', 19000.00, 1, NULL, NULL),
(119, 107, 12, 'Cow for Qurbani-SL20', 61000.00, 1, NULL, NULL),
(120, 108, 18, 'Goat for Qurbani-SL13', 19000.00, 1, NULL, NULL),
(121, 108, 12, 'Cow for Qurbani-SL20', 61000.00, 1, NULL, NULL),
(122, 109, 18, 'Goat for Qurbani-SL13', 19000.00, 1, NULL, NULL),
(123, 109, 12, 'Cow for Qurbani-SL20', 61000.00, 1, NULL, NULL),
(124, 110, 8, 'Cow for Qurbani-SL10', 120000.00, 1, NULL, NULL),
(125, 111, 8, 'Cow for Qurbani-SL10', 120000.00, 1, NULL, NULL),
(126, 112, 17, 'Cow for Qurbani-SL28', 99500.00, 1, NULL, NULL),
(127, 112, 19, 'Goat for Qurbani-SL14', 15000.00, 1, NULL, NULL),
(128, 113, 8, 'Cow for Qurbani-SL10', 120000.00, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `paymentType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `orderId`, `paymentType`, `paymentStatus`, `created_at`, `updated_at`) VALUES
(4, 4, 'cashOnDelivery', 'pending', '2017-02-26 01:17:01', '2017-02-26 01:17:01'),
(5, 5, 'cashOnDelivery', 'pending', '2017-02-26 01:18:38', '2017-02-26 01:18:38'),
(6, 6, 'cashOnDelivery', 'pending', '2017-02-26 01:19:38', '2017-02-26 01:19:38'),
(7, 7, 'cashOnDelivery', 'pending', '2017-02-26 01:21:13', '2017-02-26 01:21:13'),
(8, 8, 'cashOnDelivery', 'pending', '2017-02-26 01:24:43', '2017-02-26 01:24:43'),
(9, 9, 'cashOnDelivery', 'pending', '2020-04-15 04:16:32', '2020-04-15 04:16:32'),
(10, 10, 'cashOnDelivery', 'pending', '2020-04-15 04:21:20', '2020-04-15 04:21:20'),
(11, 11, 'cashOnDelivery', 'pending', '2020-04-22 09:06:47', '2020-04-22 09:06:47'),
(12, 12, 'cashOnDelivery', 'pending', '2020-04-22 09:08:46', '2020-04-22 09:08:46'),
(13, 13, 'cashOnDelivery', 'pending', '2020-04-23 12:40:57', '2020-04-23 12:40:57'),
(14, 14, 'cashOnDelivery', 'pending', '2020-04-26 12:22:35', '2020-04-26 12:22:35'),
(15, 15, 'cashOnDelivery', 'pending', '2020-04-26 12:26:46', '2020-04-26 12:26:46'),
(16, 16, 'cashOnDelivery', 'pending', '2020-04-26 12:30:37', '2020-04-26 12:30:37'),
(17, 17, 'cashOnDelivery', 'pending', '2020-04-26 13:30:23', '2020-04-26 13:30:23'),
(18, 18, 'cashOnDelivery', 'pending', '2020-04-26 13:31:46', '2020-04-26 13:31:46'),
(19, 19, 'cashOnDelivery', 'pending', '2020-04-26 13:33:45', '2020-04-26 13:33:45'),
(20, 20, 'cashOnDelivery', 'pending', '2020-04-26 13:34:32', '2020-04-26 13:34:32'),
(21, 21, 'cashOnDelivery', 'pending', '2020-04-26 13:34:42', '2020-04-26 13:34:42'),
(22, 22, 'cashOnDelivery', 'pending', '2020-04-26 13:36:19', '2020-04-26 13:36:19'),
(23, 23, 'cashOnDelivery', 'pending', '2020-04-29 11:17:39', '2020-04-29 11:17:39'),
(24, 24, 'cashOnDelivery', 'pending', '2020-04-29 11:19:52', '2020-04-29 11:19:52'),
(25, 25, 'cashOnDelivery', 'pending', '2020-04-29 11:22:10', '2020-04-29 11:22:10'),
(26, 26, 'cashOnDelivery', 'pending', '2020-04-29 11:29:53', '2020-04-29 11:29:53'),
(27, 27, 'cashOnDelivery', 'pending', '2020-04-29 12:14:21', '2020-04-29 12:14:21'),
(28, 28, 'cashOnDelivery', 'pending', '2020-04-29 12:15:32', '2020-04-29 12:15:32'),
(29, 29, 'cashOnDelivery', 'pending', '2020-04-29 12:17:39', '2020-04-29 12:17:39'),
(30, 30, 'cashOnDelivery', 'pending', '2020-04-29 12:24:06', '2020-04-29 12:24:06'),
(31, 31, 'cashOnDelivery', 'pending', '2020-04-29 12:28:58', '2020-04-29 12:28:58'),
(32, 32, 'cashOnDelivery', 'pending', '2020-04-29 13:57:11', '2020-04-29 13:57:11'),
(33, 34, 'cashOnDelivery', 'pending', '2020-04-29 14:06:09', '2020-04-29 14:06:09'),
(34, 35, 'cashOnDelivery', 'pending', '2020-05-02 04:09:35', '2020-05-02 04:09:35'),
(35, 36, 'cashOnDelivery', 'pending', '2020-07-14 03:53:22', '2020-07-14 03:53:22'),
(36, 37, 'cashOnDelivery', 'pending', '2020-07-14 10:41:39', '2020-07-14 10:41:39'),
(37, 38, 'cashOnDelivery', 'pending', '2020-07-14 12:34:32', '2020-07-14 12:34:32'),
(38, 39, 'cashOnDelivery', 'pending', '2020-07-16 12:26:48', '2020-07-16 12:26:48'),
(39, 40, 'cashOnDelivery', 'pending', '2020-07-19 14:12:31', '2020-07-19 14:12:31'),
(40, 41, 'cashOnDelivery', 'pending', '2020-07-20 13:54:26', '2020-07-20 13:54:26'),
(41, 42, 'cashOnDelivery', 'pending', '2020-07-21 22:00:01', '2020-07-21 22:00:01'),
(42, 43, 'cashOnDelivery', 'pending', '2020-07-23 22:29:58', '2020-07-23 22:29:58'),
(43, 44, 'cashOnDelivery', 'pending', '2020-07-23 22:30:26', '2020-07-23 22:30:26'),
(44, 45, 'cashOnDelivery', 'pending', '2020-07-23 22:37:20', '2020-07-23 22:37:20'),
(45, 46, 'cashOnDelivery', 'pending', '2020-07-23 22:49:43', '2020-07-23 22:49:43'),
(46, 47, 'cashOnDelivery', 'pending', '2020-07-23 22:55:28', '2020-07-23 22:55:28'),
(47, 48, 'cashOnDelivery', 'pending', '2020-07-23 23:18:27', '2020-07-23 23:18:27'),
(48, 49, 'cashOnDelivery', 'pending', '2020-07-23 23:19:31', '2020-07-23 23:19:31'),
(49, 50, 'cashOnDelivery', 'pending', '2020-07-23 23:19:56', '2020-07-23 23:19:56'),
(50, 51, 'cashOnDelivery', 'pending', '2020-07-23 23:21:37', '2020-07-23 23:21:37'),
(51, 52, 'cashOnDelivery', 'pending', '2020-07-23 23:25:49', '2020-07-23 23:25:49'),
(52, 53, 'cashOnDelivery', 'pending', '2020-07-23 23:34:52', '2020-07-23 23:34:52'),
(53, 54, 'cashOnDelivery', 'pending', '2020-07-23 23:51:47', '2020-07-23 23:51:47'),
(54, 55, 'cashOnDelivery', 'pending', '2020-07-23 23:52:19', '2020-07-23 23:52:19'),
(55, 56, 'cashOnDelivery', 'pending', '2020-07-24 00:04:26', '2020-07-24 00:04:26'),
(56, 57, 'cashOnDelivery', 'pending', '2020-07-24 00:12:52', '2020-07-24 00:12:52'),
(57, 58, 'cashOnDelivery', 'pending', '2020-07-24 00:34:48', '2020-07-24 00:34:48'),
(58, 59, 'cashOnDelivery', 'pending', '2020-07-24 00:39:12', '2020-07-24 00:39:12'),
(59, 60, 'cashOnDelivery', 'pending', '2020-07-24 00:39:50', '2020-07-24 00:39:50'),
(60, 61, 'cashOnDelivery', 'pending', '2020-07-24 00:48:47', '2020-07-24 00:48:47'),
(61, 62, 'cashOnDelivery', 'pending', '2020-07-24 00:51:51', '2020-07-24 00:51:51'),
(62, 63, 'cashOnDelivery', 'pending', '2020-07-24 00:52:38', '2020-07-24 00:52:38'),
(63, 64, 'cashOnDelivery', 'pending', '2020-07-24 00:53:41', '2020-07-24 00:53:41'),
(64, 65, 'cashOnDelivery', 'pending', '2020-07-24 14:37:46', '2020-07-24 14:37:46'),
(65, 66, 'cashOnDelivery', 'pending', '2020-07-24 14:40:27', '2020-07-24 14:40:27'),
(66, 67, 'cashOnDelivery', 'pending', '2020-07-25 13:53:53', '2020-07-25 13:53:53'),
(67, 68, 'cashOnDelivery', 'pending', '2020-07-25 13:54:58', '2020-07-25 13:54:58'),
(68, 69, 'cashOnDelivery', 'pending', '2020-07-25 13:58:31', '2020-07-25 13:58:31'),
(69, 70, 'cashOnDelivery', 'pending', '2020-07-25 14:01:19', '2020-07-25 14:01:19'),
(70, 71, 'cashOnDelivery', 'pending', '2020-07-25 14:03:07', '2020-07-25 14:03:07'),
(71, 72, 'cashOnDelivery', 'pending', '2020-07-25 14:06:09', '2020-07-25 14:06:09'),
(72, 73, 'cashOnDelivery', 'pending', '2020-07-25 14:18:22', '2020-07-25 14:18:22'),
(73, 74, 'cashOnDelivery', 'pending', '2020-07-25 14:21:49', '2020-07-25 14:21:49'),
(74, 75, 'cashOnDelivery', 'pending', '2020-07-25 14:24:49', '2020-07-25 14:24:49'),
(75, 76, 'cashOnDelivery', 'pending', '2020-07-25 14:26:12', '2020-07-25 14:26:12'),
(76, 77, 'cashOnDelivery', 'pending', '2020-07-25 14:29:52', '2020-07-25 14:29:52'),
(77, 78, 'cashOnDelivery', 'pending', '2020-07-25 14:32:07', '2020-07-25 14:32:07'),
(78, 79, 'cashOnDelivery', 'pending', '2020-07-25 14:34:26', '2020-07-25 14:34:26'),
(79, 80, 'cashOnDelivery', 'pending', '2020-07-25 14:35:38', '2020-07-25 14:35:38'),
(80, 81, 'cashOnDelivery', 'pending', '2020-07-25 14:39:06', '2020-07-25 14:39:06'),
(81, 82, 'cashOnDelivery', 'pending', '2020-07-25 14:40:39', '2020-07-25 14:40:39'),
(82, 83, 'cashOnDelivery', 'pending', '2020-07-25 14:42:37', '2020-07-25 14:42:37'),
(83, 84, 'cashOnDelivery', 'pending', '2020-07-25 14:43:13', '2020-07-25 14:43:13'),
(84, 85, 'cashOnDelivery', 'pending', '2020-07-25 14:44:08', '2020-07-25 14:44:08'),
(85, 86, 'cashOnDelivery', 'pending', '2020-07-25 14:44:59', '2020-07-25 14:44:59'),
(86, 87, 'cashOnDelivery', 'pending', '2020-07-25 14:52:16', '2020-07-25 14:52:16'),
(87, 88, 'cashOnDelivery', 'pending', '2020-07-25 14:59:13', '2020-07-25 14:59:13'),
(88, 89, 'cashOnDelivery', 'pending', '2020-07-25 15:09:39', '2020-07-25 15:09:39'),
(89, 90, 'cashOnDelivery', 'pending', '2020-07-25 18:35:40', '2020-07-25 18:35:40'),
(90, 91, 'cashOnDelivery', 'pending', '2020-07-25 18:36:12', '2020-07-25 18:36:12'),
(91, 92, 'cashOnDelivery', 'pending', '2020-07-25 18:38:55', '2020-07-25 18:38:55'),
(92, 93, 'cashOnDelivery', 'pending', '2020-07-25 18:58:09', '2020-07-25 18:58:09'),
(93, 94, 'cashOnDelivery', 'pending', '2020-07-25 19:01:48', '2020-07-25 19:01:48'),
(94, 95, 'cashOnDelivery', 'pending', '2020-07-25 19:03:01', '2020-07-25 19:03:01'),
(95, 96, 'cashOnDelivery', 'pending', '2020-07-25 19:04:19', '2020-07-25 19:04:19'),
(96, 97, 'cashOnDelivery', 'pending', '2020-07-25 19:10:54', '2020-07-25 19:10:54'),
(97, 98, 'cashOnDelivery', 'pending', '2020-07-25 20:34:34', '2020-07-25 20:34:34'),
(98, 99, 'cashOnDelivery', 'pending', '2020-07-26 05:18:42', '2020-07-26 05:18:42'),
(99, 100, 'cashOnDelivery', 'pending', '2020-07-27 11:03:42', '2020-07-27 11:03:42'),
(100, 101, 'cashOnDelivery', 'pending', '2020-07-27 11:09:29', '2020-07-27 11:09:29'),
(101, 102, 'cashOnDelivery', 'pending', '2020-07-27 11:12:00', '2020-07-27 11:12:00'),
(102, 103, 'cashOnDelivery', 'pending', '2020-07-27 11:13:29', '2020-07-27 11:13:29'),
(103, 104, 'cashOnDelivery', 'pending', '2020-07-27 11:22:32', '2020-07-27 11:22:32'),
(104, 105, 'cashOnDelivery', 'pending', '2020-07-27 11:24:50', '2020-07-27 11:24:50'),
(105, 106, 'cashOnDelivery', 'pending', '2020-07-27 11:26:23', '2020-07-27 11:26:23'),
(106, 107, 'cashOnDelivery', 'pending', '2020-07-27 11:28:19', '2020-07-27 11:28:19'),
(107, 108, 'cashOnDelivery', 'pending', '2020-07-27 11:30:44', '2020-07-27 11:30:44'),
(108, 109, 'cashOnDelivery', 'pending', '2020-07-27 11:31:26', '2020-07-27 11:31:26'),
(109, 110, 'cashOnDelivery', 'pending', '2020-07-27 11:58:00', '2020-07-27 11:58:00'),
(110, 111, 'cashOnDelivery', 'pending', '2020-07-27 11:59:51', '2020-07-27 11:59:51'),
(111, 112, 'cashOnDelivery', 'pending', '2020-07-27 12:03:13', '2020-07-27 12:03:13'),
(112, 113, 'cashOnDelivery', 'pending', '2020-10-03 09:22:34', '2020-10-03 09:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  `manufacturerId` int(11) NOT NULL,
  `productPrice` double(10,2) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productShortDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productLongDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_vedio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productImage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `categoryId`, `manufacturerId`, `productPrice`, `productQuantity`, `productShortDescription`, `productLongDescription`, `product_vedio`, `productImage`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(1, 'Sendale', 7, 2, 1250.00, 123, '<p>&nbsp;sasascas</p>', '<p>&nbsp;ascascascasc</p>', 'https://www.youtube.com/embed/1AFivqxbi8o', 'public/productImage/success.jpeg', 0, '2017-02-19 00:13:42', '2017-02-19 00:13:42'),
(2, 'White Blazer', 6, 2, 3500.00, 123, '<p>asdasdasdasdasd</p>', '<p>asdasdasdas asdasdasdasd</p>', NULL, 'public/productImage/14192547_1194886820549385_6751660031947662868_n.jpg', 0, '2017-02-19 00:14:08', '2017-02-19 00:14:08'),
(3, 'Samsung mobile', 6, 2, 12000.00, 123, '<p>zxcZXc</p>', '<p>ShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirt</p>', NULL, 'public/productImage/robustnessDiagram.JPG', 0, '2017-02-19 00:42:25', '2017-02-19 00:42:25'),
(4, 'T-shirt', 11, 2, 499.00, 5, '<p>T-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirtT-shirt</p>', '<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right; background-color: #f5f5f5;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span></p>', NULL, 'public/productImage/mw2.png', 0, '2020-04-18 17:50:57', '2020-04-18 17:50:57'),
(5, 'Shirt', 11, 2, 999.00, 3, '<p>ShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirt</p>', '<p>ShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirtShirt</p>', NULL, 'public/productImage/g3.png', 0, '2020-04-18 17:51:59', '2020-04-18 17:51:59'),
(6, 'T-shirt', 12, 2, 799.00, 4, '<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right; background-color: #f5f5f5;\">Product Short Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Short Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Short Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Short Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Short Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Short Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Short Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Short Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Short Description</span></p>', '<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right; background-color: #f5f5f5;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span><span style=\"background-color: #f5f5f5; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: bold; text-align: right;\">Product Long Description</span></p>', NULL, 'public/productImage/a3.png', 0, '2020-04-18 17:53:26', '2020-04-18 17:53:26'),
(7, 'Cow for Qurbani-SL9', 13, 1, 100000.00, 5, '<p>Eid-ul-adha Cow</p>', '<p>Breed:Native, Color:Red, Age:30 Months, weight (Approx): 260kg</p>', 'https://www.youtube.com/embed/YgdSstfSink', 'public/productImage/cow9.jpg', 1, '2020-04-18 17:56:45', '2020-04-18 17:56:45'),
(8, 'Cow for Qurbani-SL10', 13, 1, 120000.00, 1, '<p>Eid-ul-adha Cow</p>', '<p>Breed:Native, Color:Red Black,Age:32 Months, weight (Approx): 300kg-320kg</p>', 'https://www.youtube.com/embed/CGWICTiQr50', 'public/productImage/cow10.jpg', 1, '2020-04-18 17:58:02', '2020-04-18 17:58:02'),
(9, 'Cow for Qurbani-SL12', 13, 1, 58000.00, 1, '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin: 0px; padding: 0px 24px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: #212121; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: #fafafa;\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.4c4916a3WoknMs\">Native Breed White Cow</h2>', '<p>Breed:Native, Color:Black, Teeth:2, Age:32 Months</p>', 'https://www.youtube.com/embed/MSAHRVrxGKI', 'public/productImage/66551071d5fa10559e7d646137813cf9.jpg', 1, '2020-07-18 00:49:49', '2020-07-18 00:49:49'),
(10, 'Cow for Qurbani-SL15', 13, 1, 92500.00, 1, '<p>Eid-ul-adha Cow</p>', '<p>Breed:Native, Color:Black, Teeth:2, Age:32 Months</p>', 'https://www.youtube.com/embed/QfmOaxLOJ5s', 'public/productImage/78195ead99c806b625b08050bccc6e78.jpg', 1, '2020-07-18 00:58:53', '2020-07-18 00:58:53'),
(11, 'Cow for Qurbani-SL18', 13, 1, 84500.00, 1, '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin: 0px; padding: 0px 24px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: #212121; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: #fafafa;\" data-spm-anchor-id=\"a2a0e.pdp.0.i3.5c956c67D4WRtA\">Product details of Native Breed Red&nbsp; Cow</h2>', '<ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Helvetica Neue\', Helvetica, sans-serif; font-size: 12px;\">\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.5c956c67D4WRtA\">Breed: Native</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.5c956c67D4WRtA\">Color: Red&nbsp;</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.5c956c67D4WRtA\">Meat weight (Approx): 120-130 kg</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Live weight (Approx): 180-190 kg</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Teeth: 2</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Age: 36 Months</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.5c956c67D4WRtA\">Feed: Green Grass, Straw, Bran, Cow Feed</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Height: 44 Inch</li>\r\n</ul>', NULL, 'public/productImage/ff8d71994ce5bfdad68b8f9a7018ff0a.jpg', 1, '2020-07-18 01:05:56', '2020-07-18 01:05:56'),
(12, 'Cow for Qurbani-SL20', 13, 1, 61000.00, 1, '<p>Native Breed White Cow</p>', '<ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Helvetica Neue\', Helvetica, sans-serif; font-size: 12px;\">\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.45d116a3avszqv\">Breed: Native</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: White</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Meat weight (Approx):90KG</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Live weight (Approx): 140 KG</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Teeth:2</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.45d116a3avszqv\">Age:30 Months</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feed:Green Grass, Straw, Bran, Cow Feed</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Height: 41 Inch</li>\r\n</ul>', NULL, 'public/productImage/877c27160b9934e04f10b843cf35420e.jpg', 1, '2020-07-18 01:08:10', '2020-07-18 01:08:10'),
(14, 'Cow for Qurbani-SL22', 13, 1, 86000.00, 1, '<p>Eid-ul-adha Cow</p>', '<ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Helvetica Neue\', Helvetica, sans-serif; font-size: 12px;\">\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.19a043f35sMYNg\">Breed: Native</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Red</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Meat weight (Approx): 120-130 kg</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Live weight (Approx): 180-190 kg</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Teeth: 2</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.19a043f35sMYNg\">Age: 32 Months</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feed: Green Grass, Straw, Bran, Cow Feed</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Height: 47 Inch</li>\r\n</ul>', NULL, 'public/productImage/redcow.jpg', 1, '2020-07-18 01:41:54', '2020-07-18 01:41:54'),
(15, 'Cow for Qurbani-SL25', 13, 1, 90500.00, 1, '<p>Eid-ul-Adha Cow</p>', '<ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Helvetica Neue\', Helvetica, sans-serif; font-size: 12px;\">\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.19a043f35sMYNg\">Breed: Native</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Red Black</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Meat weight (Approx): 120-130 kg</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Live weight (Approx): 180-190 kg</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Teeth: 2</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.19a043f35sMYNg\">Age: 32 Months</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feed: Green Grass, Straw, Bran, Cow Feed</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Height: 47 Inch</li>\r\n</ul>', NULL, 'public/productImage/b7c65d7602ba8b15752412d881a6c647.jpg', 1, '2020-07-18 01:45:09', '2020-07-18 01:45:09'),
(16, 'Cow for Qurbani-SL27', 13, 1, 110500.00, 1, '<p>Eid-ul-Adha Cow</p>', '<ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Helvetica Neue\', Helvetica, sans-serif; font-size: 12px;\">\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.76be58e5Qsw7ON\">Breed: Cross</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Black</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Meat weight (Approx):200-220 kg</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Live weight (Approx): 330kg</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Teeth:2</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.76be58e5Qsw7ON\">Age:36 Months</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feed:Green Grass, Straw, Bran, Cow Feed</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Height: 52 Inch</li>\r\n</ul>', 'https://www.youtube.com/embed/8l3WoRPqBn0', 'public/productImage/271d5d1ad589b6cad6e551d24f5dbdaf.jpg', 1, '2020-07-18 01:49:02', '2020-07-18 01:49:02'),
(17, 'Cow for Qurbani-SL28', 13, 1, 99500.00, 1, '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin: 0px; padding: 0px 24px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: #212121; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: #fafafa;\" data-spm-anchor-id=\"a2a0e.pdp.0.i4.2efd43f3T06F1y\">Product details of Native Breed Black Cow</h2>', '<p>Breed:Native, Color:Black, Age:30 Months, weight (Approx): 200kg</p>', 'https://www.youtube.com/embed/F6y4q19-6gw', 'public/productImage/2e96a9fbffbee3e0df21dd403f11dccc.jpg', 1, '2020-07-18 01:50:59', '2020-07-18 01:50:59'),
(18, 'Goat for Qurbani-SL13', 14, 1, 19000.00, 1, '<h1 style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; font-size: 25px; color: #333333; font-family: \'Open Sans\', sans-serif;\">Black Goat for Qurbani</h1>', '<ul style=\"margin: 12px 0px; outline: none; padding: 0px 0px 0px 36px; box-sizing: border-box; list-style-position: initial; list-style-image: initial; color: #777777; font-family: \'Open Sans\', sans-serif;\">\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Black Goat for Qurbani.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Product Type: Qurbani Goat.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Live Weight: 30kg Approximate.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Black Bengal adult.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Has Teeth.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\"><strong style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box;\">Note:&nbsp;</strong>Full advance payment is required.</li>\r\n</ul>', NULL, 'public/productImage/0174802_black-goat-for-qurbani-sraf003_100.jpeg', 1, '2020-07-18 11:18:09', '2020-07-18 11:18:09'),
(19, 'Goat for Qurbani-SL14', 14, 1, 15000.00, 1, '<h1 style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; font-size: 25px; color: #333333; font-family: \'Open Sans\', sans-serif;\">Grey Goat for Qurbani</h1>', '<ul style=\"margin: 12px 0px; outline: none; padding: 0px 0px 0px 36px; box-sizing: border-box; list-style-position: initial; list-style-image: initial; color: #777777; font-family: \'Open Sans\', sans-serif;\">\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Grey Goat for Qurbani .</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Product Type: Qurbani Goat.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Live Weight: 25kg Approximate.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Black Bengal adult.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Has Teeth.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\"><strong style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box;\">Note:&nbsp;</strong>Full advance payment is required.</li>\r\n</ul>', NULL, 'public/productImage/download.jpg', 1, '2020-07-18 11:27:59', '2020-07-18 11:27:59'),
(20, 'Goat for Qurbani-SL17', 14, 1, 18500.00, 1, '<p>Eid-Ul -Adha Goat</p>', '<ul style=\"margin: 12px 0px; outline: none; padding: 0px 0px 0px 36px; box-sizing: border-box; list-style-position: initial; list-style-image: initial; color: #777777; font-family: \'Open Sans\', sans-serif;\">\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Black Goat for Qurbani.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Product Type: Qurbani Goat.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Live Weight: 32kg Approximate.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Black Bengal adult.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Has Teeth.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\"><strong style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box;\">Note:&nbsp;</strong>Full advance payment is required.</li>\r\n</ul>', NULL, 'public/productImage/download (3).jpg', 1, '2020-07-18 11:29:29', '2020-07-18 11:29:29'),
(21, 'Goat for Qurbani-SL19', 14, 1, 17500.00, 1, '<p>Eid-Ul-Adha Kurbani Goat</p>', '<ul style=\"margin: 12px 0px; outline: none; padding: 0px 0px 0px 36px; box-sizing: border-box; list-style-position: initial; list-style-image: initial; color: #777777; font-family: \'Open Sans\', sans-serif;\">\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Black Goat for Qurbani .</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Product Type: Qurbani Goat.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Live Weight: 24kg Approximate.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Black Bengal adult.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\">Has Teeth.</li>\r\n<li style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box; text-align: left;\"><strong style=\"margin: 0px; outline: none; padding: 0px; box-sizing: border-box;\">Note:&nbsp;</strong>Full advance payment is required.</li>\r\n</ul>', NULL, 'public/productImage/download (2).jpg', 1, '2020-07-18 11:31:52', '2020-07-18 11:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districtName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `fullName`, `emailAddress`, `address`, `phoneNumber`, `districtName`, `created_at`, `updated_at`) VALUES
(1, 'SAkib Al Hasan', 'sakib@gmail.com', 'Dhaka', '123', 'Dhaka', '2017-02-26 00:07:13', '2017-02-26 00:07:13'),
(2, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-04-15 04:15:55', '2020-04-15 04:15:55'),
(3, 'Md Sagor', 'sagor@gmail.com', 'Dhaka', '01521122009', 'Dhaka', '2020-04-22 09:06:17', '2020-04-22 09:06:17'),
(4, 'abc zxc', 'abc@gmail.com', 'Dhaka', '0147852', 'Dhaka', '2020-04-23 12:40:49', '2020-04-23 12:40:49'),
(5, 'saddam saddam', 'saddam@gmail.com', 'Pabna', '017458236', 'Dhaka', '2020-04-26 11:08:15', '2020-04-26 11:08:15'),
(6, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-04-29 11:17:32', '2020-04-29 11:17:32'),
(7, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-04-30 11:17:24', '2020-04-30 11:17:24'),
(8, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-04-30 11:47:00', '2020-04-30 11:47:00'),
(9, 'saddam saddam', 'saddam@gmail.com', 'Pabna', '017458236', 'Dhaka', '2020-04-30 11:51:07', '2020-04-30 11:51:07'),
(10, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-05-02 04:09:23', '2020-05-02 04:09:23'),
(11, 'ruhul amin sarker', 'ruhulamin.ce.11@gmail.com', 'mirpur 6', '01751383947', 'Dhaka', '2020-07-14 03:53:02', '2020-07-14 03:53:02'),
(12, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-07-14 04:17:49', '2020-07-14 04:17:49'),
(13, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dha', '01746478604', 'Dhaka', '2020-07-14 10:41:23', '2020-07-14 10:41:23'),
(14, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-07-14 12:34:24', '2020-07-14 12:34:24'),
(15, 'ruhul amin sarker', 'ruhulamin.ce.11@gmail.com', 'mirpur 10', '01751383947', 'Gazipur', '2020-07-16 12:25:15', '2020-07-16 12:25:15'),
(16, 'Net Coden', 'netcoden113@gmail.com', 'dhaka', '01746478604', 'Dhaka', '2020-07-19 14:12:12', '2020-07-19 14:12:12'),
(17, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-07-20 13:54:06', '2020-07-20 13:54:06'),
(18, 'Atik khan', 'atikkhan@gmail.com', 'abcd1234', '01723469283', 'Barisal', '2020-07-21 21:57:11', '2020-07-21 21:57:11'),
(19, 'Atik khan', 'atikkhan@gmail.com', 'abcd1234', '01723469283', 'Barisal', '2020-07-23 22:29:48', '2020-07-23 22:29:48'),
(20, 'Atik khan', 'atikkhan@gmail.com', 'abcd1234', '01723', 'Savar', '2020-07-23 22:49:36', '2020-07-23 22:49:36'),
(21, 'ruhul amin sarker', 'ruhulamin.ce.11@gmail.com', 'mirpur 6', '01751383947', 'Dhaka', '2020-07-23 22:55:15', '2020-07-23 22:55:15'),
(22, 'Atik khan', 'atikkhan@gmail.com', 'abcd1234', '01723469283', 'Barisal', '2020-07-23 23:25:45', '2020-07-23 23:25:45'),
(23, 'sumon ruhul sarker', 'qurbani.sopnorupayan@com', 'mirpur-6', '01521120576', 'Dhaka', '2020-07-23 23:51:42', '2020-07-23 23:51:42'),
(24, 'ruhul amin sarker', 'ruhulamin.ce.11@gmail.com', 'mirpur 6', '01751383947', 'Dhaka', '2020-07-24 14:37:42', '2020-07-24 14:37:42'),
(25, 'RUHUL AMIN sarker', 'sumonce9@gmail.com', 'mirpur-6', '01751383947', 'Dhaka', '2020-07-24 14:40:22', '2020-07-24 14:40:22'),
(26, 'Net Coden', 'netcoden113@gmail.com', 'dhaka', '01746478604', 'Dhaka', '2020-07-25 13:53:45', '2020-07-25 13:53:45'),
(27, 'Net Coden', 'netcoden113@gmail.com', 'dhaka', '01746478604', 'Dhaka', '2020-07-25 14:39:03', '2020-07-25 14:39:03'),
(28, 'ruhul amin', 'qurbani.sopnorupayan@gmail.com', 'malibag', '01751383947', 'Dhaka', '2020-07-25 15:09:34', '2020-07-25 15:09:34'),
(29, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-07-25 18:35:36', '2020-07-25 18:35:36'),
(30, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-07-25 18:58:05', '2020-07-25 18:58:05'),
(31, 'ruhul amin', 'qurbani.sopnorupayan@gmail.com', 'malibag', '01751383947', 'Dhaka', '2020-07-25 20:34:28', '2020-07-25 20:34:28'),
(32, 'Asikul Islam', 'asik.sojan.10@gmail.com', 'Nop', '01934542851', 'Comilla', '2020-07-26 05:18:10', '2020-07-26 05:18:10'),
(33, 'Asikul Islam', 'asik.sojan.10@gmail.com', 'Nop', '01934542851', 'Comilla', '2020-07-26 05:35:30', '2020-07-26 05:35:30'),
(34, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-07-27 11:03:37', '2020-07-27 11:03:37'),
(35, 'azizul jabbari', 'm.azizulcse@gmail.com', 'Dhaka', '01746478604', 'Dhaka', '2020-07-27 11:57:54', '2020-07-27 11:57:54'),
(36, 'Net Coden', 'netcoden113@gmail.com', 'dhaka', '01746478604', 'Dhaka', '2020-07-27 12:03:02', '2020-07-27 12:03:02'),
(37, 'Zibon Chowdhury', 'jibon.cse2018@gmail.com', 'Dhaka', '01746445658', 'Dhaka', '2020-10-03 09:22:14', '2020-10-03 09:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md. Azizul', '922 Annabelle Stravenue Apt. 673\nNew Taylor, SC 78205', 'm.azizulcse@gmail.com', '$2y$12$7f9mF2uKpbpAPMslUxcLeOVl4in8QIX2jT47YZ0ZCihAFu9H0zxOa', 'edyixU1uCl4QYfMiiKPVfVTXg7xO4QR7vS3bktXldhIABvW8JzRQmB3oKvdC', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(2, 'Eula Davis', '8322 Candida Field\nSouth Meghan, AK 62392', 'hilll.ryleigh@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'cBG4U22x03', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(3, 'Maeve Abernathy', '2254 D\'angelo Drives Apt. 702\nEffertzchester, NJ 87953', 'laron.grimes@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'WPniTs0Pm3', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(4, 'Hilma Robel', '323 Cletus Trace Suite 836\nNorth Quinn, ID 10554', 'matilde70@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'DymreeCfMT', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(5, 'Dr. Trever Haley', '45202 Koch Green\nNew Gilbertchester, HI 55108', 'fern.runolfsdottir@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'tNxxolJGY5', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(6, 'Precious Davis', '4322 Oleta Islands\nNew Gisselle, NY 50784', 'kozey.evangeline@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'dSgUDAjSIz', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(7, 'Prof. Johnathon Fritsch', '4088 Golda Estate\nPort Erictown, FL 06960-1906', 'brycen31@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'cc6Mglg3p5', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(8, 'Ms. Rosalyn Rosenbaum', '472 Wilfred Dam\nEast Yasmine, WI 06474', 'sipes.shania@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'QyK1wHxZj7', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(9, 'Giovanna Labadie', '273 Willis Greens Suite 897\nHellerchester, IN 18000-5112', 'goldner.jerry@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'qlxGg5E2hg', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(10, 'Gus Wilkinson MD', '101 Pablo Wall Suite 675\nLake Cordieton, GA 29143', 'amy.hermiston@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'cddfNBAckP', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(11, 'Adrain Stehr', '562 Stanton Mill\nVinniemouth, VT 37944-0792', 'william10@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'Wl2zjzwHZf', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(12, 'Prof. Darrell Rosenbaum IV', '3182 Emmet Mount\nLake Marielle, NV 69741-8493', 'ortiz.zula@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '4xPhiZlSwA', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(13, 'Karolann Conn', '491 Anjali Port Suite 401\nEliasland, PA 60320-6186', 'eyundt@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '9UD1lfGhvQ', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(14, 'Antonia Frami', '3565 Smitham Ranch Suite 549\nNaomieberg, AK 98093-3102', 'davis.litzy@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'ZWHUiv0cas', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(15, 'Bobby Romaguera', '1878 Hamill Islands\nHamillland, WI 00764', 'rwolff@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'EkicumvRGw', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(16, 'Mr. Colten Goyette', '1645 Feil Manors\nEast Natalia, NH 21289', 'alayna34@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'Wf1hN4cA7i', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(17, 'Ryleigh Reichel', '654 Lukas Ranch Suite 172\nKochbury, MI 07130', 'ncummerata@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'eYXjLS1KqN', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(18, 'Augustus Bernhard', '956 Sauer Estates\nWilmamouth, HI 30336', 'weston49@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'deKsa3IRYT', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(19, 'Mazie Funk', '275 Satterfield Square\nHumbertochester, WY 95388-7097', 'mraz.hoyt@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'iIDCFc8i9K', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(20, 'Prof. Frida Turner', '3706 Hayes Road Suite 433\nRussellmouth, OR 86482', 'ghyatt@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'QmcfxzpVzH', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(21, 'Gordon Block', '61195 Fanny Station\nKayleyland, MD 01711-1185', 'macejkovic.kallie@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '680eU2osNx', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(22, 'Dr. Rashawn Brakus', '36378 Chaim Squares Apt. 979\nGoyetteview, AK 62457-3568', 'zstokes@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'CGhAEKQoyv', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(23, 'Abel Smith', '8587 White Common\nEast Marcos, MA 21361', 'cathy79@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'miu53ICxKk', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(24, 'Casper Welch', '297 Gaylord Cliff\nChayafort, DE 55601', 'ygleason@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'Qhznih2ZXE', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(25, 'Rocio Stiedemann', '910 Audie Courts Apt. 262\nWest Makayla, PA 77144-5727', 'baumbach.fletcher@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'bA0szadrB0', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(26, 'Prof. Regan Simonis', '1903 Kerluke Forge Apt. 173\nNorth Vance, WI 76709-0305', 'morar.jaquelin@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'STEAcwHtjv', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(27, 'Rey Mertz', '8781 Buckridge Turnpike Suite 520\nPort Marilyne, KY 27617-0612', 'dillon69@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'b2q6oqkM08', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(28, 'Cleveland Stamm', '6400 Tracey Springs\nNew Mable, MI 87476-4892', 'sarina.botsford@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'C8iLNpvtEm', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(29, 'Lafayette Torp', '8034 Grady Track\nEarlview, WY 72393-0399', 'annamarie.lebsack@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'IbVBTfGtII', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(30, 'Jessie Johns', '2828 Jarrell Crossroad Apt. 843\nTorranceside, MT 44337-2648', 'isabella37@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'HWe2X3cbUz', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(31, 'Clarissa Effertz', '903 Treva Station Apt. 102\nAmeliaview, TX 43721', 'koch.ludie@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'zLhH6DJLtD', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(32, 'Kristina Stracke I', '8927 Tiara Junction Apt. 867\nNew Jaketon, LA 19572-4537', 'wendy.ondricka@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'vSbJ9QOXqv', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(33, 'Anais Goldner', '7536 Johnston Mews Suite 618\nAdalbertomouth, AR 21560-2084', 'terrill.hand@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'NyjGAYRVUz', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(34, 'Abbigail Leffler', '912 Wyman Road\nSkilesside, AL 64696-4400', 'gstamm@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '7oT1eBeLiq', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(35, 'Maximillia Conroy', '856 Kohler Port\nWest Leopoldoland, NH 76001-3441', 'brigitte17@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'wiInusRw9S', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(36, 'Rahsaan Abshire', '45993 Connor Parks\nGaylordside, MA 63788', 'savannah42@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '29Tbkce0CS', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(37, 'Dr. Cicero Schneider', '37374 Dortha Stream\nNicoletteville, UT 14135-7415', 'williamson.george@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'UzJbkkz5gr', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(38, 'Prof. Madalyn McCullough I', '523 Crona Neck\nMarcosmouth, ID 06047', 'hyatt.eliseo@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'va1N21KmWD', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(39, 'Raymond Reichel', '788 Estel Valleys\nMcClurefurt, NJ 00912-7216', 'oheller@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'fX3ywtCP7J', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(40, 'Jennifer Reinger', '8416 Hackett Views\nNew Edwardhaven, OK 39666-1058', 'bahringer.ari@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'nULz0VpMTQ', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(41, 'Dr. Cruz Rau PhD', '191 Nicolas Shores Apt. 493\nEast Consuelo, OK 18213-9490', 'cgerhold@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '1qKDw3SF4m', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(42, 'Melody Hodkiewicz', '502 Luther Road\nSouth Lew, DC 10192-9870', 'bergnaum.okey@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'n4UKs9nh6u', '2017-02-18 22:16:33', '2017-02-18 22:16:33'),
(43, 'Fermin Rolfson', '1776 Dickens Station\nJacobsonberg, IA 95451-6623', 'oreilly.verna@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'ZpHYueufqI', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(44, 'Melissa Douglas', '69051 Kemmer Key Apt. 326\nKihnfort, ND 05188', 'aracely85@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '7PrxVsdOFC', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(45, 'Timothy Wunsch', '234 Hermann Plains\nHellerstad, WI 31691-2117', 'vgrady@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'Pc4aKDE3is', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(46, 'Giles Mayert V', '8968 Larkin Trace Apt. 831\nNew Leonor, NE 85241-5137', 'erdman.dolores@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', '5ualaTxHey', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(47, 'Mr. Emmanuel Powlowski IV', '6139 Junior Inlet\nLarkinville, GA 15653-5813', 'pollich.alec@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'Z07xGK28xr', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(48, 'Rosa Mayer', '268 Malika Roads\nEast Rosalindamouth, DC 46341', 'carmel22@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'C4yZEGYsbM', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(49, 'Ms. Elissa Labadie I', '9069 King Villages\nPort Jeff, NY 71163-9403', 'daniela92@example.com', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'QJLl98VtOA', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(50, 'Prof. Angelica Medhurst', '4777 Fay Road\nEast Sabinahaven, AZ 99577-7060', 'barney72@example.org', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'WNMVENjJNq', '2017-02-18 22:16:34', '2017-02-18 22:16:34'),
(51, 'Sohihudl Hasan', '922 Annabelle Stravenue Apt. 673\r\nNew Taylor, SC 78205', 'cbraunzx@example.net', '$2y$10$U4L9ZMhqQFE4.Ee3TCX5n.Hj85mu1BlliO2wJcGfv55Npcm/TouZ2', 'vwWxHPQiP7', '2017-02-18 22:16:32', '2017-02-18 22:16:32'),
(52, 'sagor', 'dhaka', 'satterbonkola@gmail.com', '$2y$10$99g0T3Y6c/dwmmYiYA1/L.CistSBcTpJKEBw1dfWnL38mvw2lKMYu', NULL, '2020-08-22 18:51:50', '2020-08-22 18:51:50'),
(53, 'Md Belal Hossain', 'Sector#10,Uttara, Dhaka\r\nBangladesh', 'onlineshop3110@gmail.com', '$2y$10$enGYWiXas1e1WZ5.e3G0qeSU7fNtBGlzjTdqpB3OXdsqwwX7b/Cb.', NULL, '2020-08-22 18:53:25', '2020-08-22 18:53:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
