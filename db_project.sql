-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 25, 2024 lúc 12:53 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_project`
--
CREATE DATABASE IF NOT EXISTS `db_project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `db_project`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baner`
--

CREATE TABLE `baner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `baner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baner`
--

INSERT INTO `baner` (`id`, `baner`, `link`, `created_at`, `updated_at`) VALUES
(2, 'baner1/1712742173_6-dieu-dang-mong-doi-o-sieu-pham-iphone-13-iphone-27 (2).jpg', 'http://127.0.0.1:8000/detail/3', '2024-03-15 05:51:24', '2024-04-10 02:42:53'),
(3, 'baner1/1710507917_123.jfif', '11111', '2024-03-15 05:51:41', '2024-03-15 06:05:17'),
(4, 'baner1/1710507943_123.jfif', 'http://127.0.0.1:8000/admin/editbaner/3', '2024-03-15 05:52:44', '2024-03-15 06:05:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_13_072046_vp_user', 1),
(6, '2022_06_15_022011_vp_categories', 1),
(7, '2022_06_16_021603_vp_products', 1),
(8, '2022_06_22_150026_vp_comment', 1),
(9, '2024_03_15_085353_create_baner_table', 2),
(10, '2024_03_16_150533_create_usersfe_table', 3),
(11, '2024_04_23_135552_create_orders_table', 4),
(12, '2024_04_23_135650_create_order_details_table', 4),
(13, '2024_04_25_101030_add_status_to_orders_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'chờ xác nhận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `email`, `name`, `phone`, `address`, `created_at`, `updated_at`, `status`) VALUES
(3, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 07:27:41', '2024-04-25 03:12:17', 'đã xác nhận'),
(4, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 07:29:07', '2024-04-25 03:12:17', 'đã xác nhận'),
(5, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 07:30:26', '2024-04-25 03:12:18', 'đã xác nhận'),
(6, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 07:30:37', '2024-04-25 03:12:18', 'đã xác nhận'),
(7, 'dangkhoa882001@gmail.com', 'Samsung Galaxy S23 Ultra', '0396536090', 'Nam Định', '2024-04-23 09:21:03', '2024-04-25 03:12:19', 'đã xác nhận'),
(8, 'dangkhoa882001@gmail.com', 'Samsung Galaxy S23 Ultra', '0396536090', 'Nam Định', '2024-04-23 09:21:47', '2024-04-25 03:12:19', 'đã xác nhận'),
(9, 'dangkhoa882001@gmail.com', 'Samsung Galaxy S23 Ultra', '0396536090', 'Nam Định', '2024-04-23 09:21:59', '2024-04-25 03:12:20', 'đã xác nhận'),
(10, 'dangkhoa882001@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 09:27:48', '2024-04-25 03:12:22', 'đã xác nhận'),
(11, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 09:42:55', '2024-04-25 03:12:23', 'đã xác nhận'),
(12, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 09:43:51', '2024-04-25 03:12:25', 'đã xác nhận'),
(13, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 09:48:16', '2024-04-25 03:12:26', 'đã xác nhận'),
(14, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 09:59:52', '2024-04-25 03:12:27', 'đã xác nhận'),
(15, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 10:03:02', '2024-04-25 03:12:28', 'đã xác nhận'),
(16, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 10:06:06', '2024-04-25 03:12:30', 'đã xác nhận'),
(17, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'QUẢNG NINH', '2024-04-23 10:11:40', '2024-04-25 03:12:13', 'đã xác nhận'),
(18, 'admin@gmail.com', 'dangkhoa88', '0396536090', 'na uy', '2024-04-23 10:40:59', '2024-04-25 03:12:10', 'đã xác nhận'),
(19, 'dangkhoa882001@gmail.com', 'Samsung Galaxy S23 Ultra', '0396536090', 'hà nội', '2024-04-25 03:14:07', '2024-04-25 03:14:13', 'đã xác nhận'),
(20, 'admin@gmail.com', 'dangkhoa88', '1', 'QUẢNG NINH', '2024-04-25 03:24:09', '2024-04-25 03:24:09', 'chờ xác nhận');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 17, 'SamsungGalaxyS23 Ultra', 1, '1200.00', '2024-04-23 10:11:40', '2024-04-23 10:11:40'),
(2, 18, 'SamsungGalaxyS23 Ultra', 1, '1200.00', '2024-04-23 10:40:59', '2024-04-23 10:40:59'),
(3, 19, 'SamsungGalaxyS23 Ultra', 1, '1200.00', '2024-04-25 03:14:07', '2024-04-25 03:14:07'),
(4, 20, 'iphone 13', 1, '30000000.00', '2024-04-25 03:24:09', '2024-04-25 03:24:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usersfe`
--

CREATE TABLE `usersfe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `usersfe`
--

INSERT INTO `usersfe` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dangkhoa88', 'admin@gmail.com', NULL, '$2y$10$5nRRpNojTGVnj/XVTrbwc.2OkO4e.JGVx96eNy7doTB9MZWFm2362', NULL, '2024-03-16 08:30:40', '2024-03-16 08:30:40'),
(3, 'iphone14', 'cubom8820001@gmail.com', NULL, '12345678\r\n', NULL, '2024-03-16 09:52:21', '2024-03-16 09:52:21'),
(4, 'dangkhoa881', 'admin1111@gmail.com', NULL, '$2y$10$qGNaAyY1V5C3Ld6HTsx6u.gVJ2OhPtMaATmI/pvl6r6D4DboUT00q', NULL, '2024-03-17 03:55:43', '2024-03-17 03:55:43'),
(5, 'dangkhoa882001', 'dangkhoa@gmail.com', NULL, '$2y$10$hD3zzU2kKBHTEha.fnDX2OG0bZRNZ6V1228bOOpG8bAXgEYxDzZlu', NULL, '2024-04-10 02:22:29', '2024-04-10 02:22:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_categories`
--

CREATE TABLE `vp_categories` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_categories`
--

INSERT INTO `vp_categories` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', 'iphone', NULL, '2024-04-25 03:41:35'),
(2, 'Samsung', 'samsung', NULL, NULL),
(5, 'Xaomi', 'xaomi', '2024-04-25 03:41:17', '2024-04-25 03:41:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_comment`
--

CREATE TABLE `vp_comment` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_product` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_comment`
--

INSERT INTO `vp_comment` (`com_id`, `com_email`, `com_name`, `com_content`, `com_product`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'dangkhoa88', 'đẹp đó', 2, '2024-04-11 02:55:09', '2024-04-11 02:55:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_products`
--

CREATE TABLE `vp_products` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_products`
--

INSERT INTO `vp_products` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_warranty`, `prod_accessories`, `prod_condition`, `prod_promotion`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Galaxy S23 Ultra', 'samsung-galaxy-s23-ultra', 12121212, '123.jfif', '12 tháng', 'Tai nghe,Sạc', 'Mới', '0', 1, '12222222222222', 0, 1, '2024-03-15 04:13:15', '2024-03-17 04:24:42'),
(2, 'SamsungGalaxyS23 Ultra', 'samsunggalaxys23-ultra', 1200, '123.jfif', '12 tháng', 'Tai nghe,Sạc', 'Mới', '0', 1, '1111111', 1, 2, '2024-03-17 04:25:14', '2024-03-17 04:25:14'),
(3, 'iphone 13', 'iphone-13', 30000000, 'Dang Khoa.png', '12 tháng', 'Tai nghe,Sạc', 'Mới', '0', 1, 'sản phẩm cực đẹp', 0, 1, '2024-04-10 02:41:27', '2024-04-10 02:41:27'),
(4, 'Xiaomi 13T Pro 5G', 'xiaomi-13t-pro-5g', 11000000, 'Screenshot 2024-04-25 173755.png', '12 tháng', 'Tai nghe,Sạc', 'Mới', '0', 1, 'Cực đẹp', 1, 5, '2024-04-25 03:43:41', '2024-04-25 03:43:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_users`
--

CREATE TABLE `vp_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_users`
--

INSERT INTO `vp_users` (`id`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dangkhoa88@gmail.com', '$2y$10$uyM45Nu9dSj08XJk5bBtPex4sESCwnEhLgPWAm3Qp3XWsg/GmdgIa', 1, NULL, NULL, NULL),
(2, 'admin@gmail.com', '$2y$10$D9oPnULO.rPCs/euGxVzMOpyfxSBSAjIVlLOIGZ72ZZnFM5lkqLqa', 1, 'v42SVZRihdBUaPm0TOSLeNYZzHr1BU7REyMlERIa3XVix9ck7RLEV23EepmI', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baner`
--
ALTER TABLE `baner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `usersfe`
--
ALTER TABLE `usersfe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usersfe_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vp_categories`
--
ALTER TABLE `vp_categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  ADD PRIMARY KEY (`com_id`);

--
-- Chỉ mục cho bảng `vp_products`
--
ALTER TABLE `vp_products`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `vp_products_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baner`
--
ALTER TABLE `baner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `usersfe`
--
ALTER TABLE `usersfe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `vp_categories`
--
ALTER TABLE `vp_categories`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vp_products`
--
ALTER TABLE `vp_products`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_products`
--
ALTER TABLE `vp_products`
  ADD CONSTRAINT `vp_products_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_categories` (`cate_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
