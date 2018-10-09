-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2018 at 09:49 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vidcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(1, 8, 'Tầm nhìn', 'tam-nhin', '1533089542_about-1.jpg', NULL, NULL, '<p>Tầm nh&igrave;n của ch&uacute;ng t&ocirc;i được ho&agrave;n thiện khi mỗi gia đ&igrave;nh tr&ecirc;n đất nước Việt Nam đều c&oacute; &iacute;t nhất một sản phẩm nội thất của Vidcom</p>', 0, NULL, NULL, NULL, 'tam-nhin', '2018-08-01 02:12:22', '2018-07-31 19:12:22'),
(2, 8, 'Sứ mệnh', 'su-menh', '1533089598_about-2.jpg', NULL, NULL, '<p>Sứ mệnh của Vidcom l&agrave; cung cấp c&aacute;c sản phẩm nội thất c&oacute; thiết kế v&agrave; c&ocirc;ng năng ph&ugrave; hợp đi k&egrave;m với gi&aacute; cả phải chăng. Ch&uacute;ng t&ocirc;i cũng cung cấp dịch vụ tư vấn thiết kế nội thất v&agrave; vận chuyển sản phẩm đến từng gia đ&igrave;nh Việt Nam th&ocirc;ng qua c&aacute;c dịch vụ vận chuyển đa dạng.</p>', 0, NULL, NULL, NULL, 'su-menh', '2018-08-01 02:13:18', '2018-07-31 19:13:18'),
(3, 8, NULL, '', '1533089782_banner-3.jpg', NULL, NULL, '<p class=\"text-center\" style=\"text-align: center;\">Vidcom l&agrave; một c&ocirc;ng ty nhiệt huyết d&agrave;nh nhiều quan t&acirc;m cho cuộc sống của mỗi gia đ&igrave;nh. Được th&agrave;nh lập từ năm 2006, ch&uacute;ng t&ocirc;i hiện nay c&oacute; thể được xem l&agrave; c&ocirc;ng ty lớn nhất trong lĩnh vực nội thất v&agrave; trang tr&iacute; nh&agrave; cửa tại Việt Nam. Vidcom thiết kết v&agrave; ph&aacute;t triển c&aacute;c d&ograve;ng sản phẩm của ri&ecirc;ng m&igrave;nh lấy cảm hứng từ mọi phương diện văn h&oacute;a Việt Nam.</p>\r\n<p class=\"text-center\" style=\"text-align: center;\">Ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang nỗ lực từng ng&agrave;y để gi&uacute;p kh&aacute;ch h&agrave;ng&nbsp;<strong><em>\"Biến ng&ocirc;i nh&agrave; th&agrave;nh tổ ấm\"</em></strong></p>', 0, NULL, NULL, NULL, 'gioi-thieu', '2018-08-01 02:16:22', '2018-07-31 19:16:22'),
(4, 8, 'Giá trị cốt lõi', 'gia-tri-cot-loi', NULL, NULL, NULL, '<h3 class=\"vk-about__title-sub\">CON NGƯỜI</h3>\r\n<p>Đại diện cho nền tảng của thương hiệu UMA. Điều n&agrave;y được thể hiện bằng việc ch&uacute;ng t&ocirc;i quan t&acirc;m đến c&aacute;ch sống v&agrave; l&agrave;m việc của kh&aacute;ch h&agrave;ng cũng như cung cấp cho mỗi nh&acirc;n vi&ecirc;n một m&ocirc;i trường l&agrave;m việc l&agrave;nh mạnh, cơ hội để học hỏi v&agrave; ph&aacute;t triển. UMA cũng đ&aacute;nh gi&aacute; cao sự đa dạng v&agrave; kh&aacute;c biệt văn h&oacute;a, nhằm phấn đấu cải thiện chất lượng cuộc sống của cộng đồng.</p>\r\n<h3 class=\"vk-about__title-sub\">THIẾT KẾ</h3>\r\n<p>L&agrave; đặc điểm tạo n&ecirc;n sự kh&aacute;c biệt của ch&uacute;ng t&ocirc;i. Những thiết kế được li&ecirc;n tục ph&aacute;t triển v&agrave; khuyến kh&iacute;ch tự đ&aacute;nh gi&aacute; để ho&agrave;n thiện. C&aacute;c xu hướng hiện đại lu&ocirc;n được phản &aacute;nh trong thiết kế của Vidcom, nhưng cũng đảm bảo kh&ocirc;ng mất đi n&eacute;t văn h&oacute;a Việt Nam. Điều n&agrave;y gi&uacute;p Vidcom trở th&agrave;nh một trong những c&ocirc;ng ty thiết kế nội thất chủ đạo ở Việt Nam.</p>\r\n<h3 class=\"vk-about__title-sub\">DỊCH VỤ</h3>\r\n<p>Lu&ocirc;n được đảm bảo t&iacute;nh tối ưu, lấy kh&aacute;ch h&agrave;ng l&agrave;m trọng t&acirc;m v&agrave; thể hiện sự thấu hiểu nhu cầu của kh&aacute;ch h&agrave;ng trong việc giao h&agrave;ng, thiết kế nội thất, lắp đặt cũng như tư vấn chuy&ecirc;n nghiệp tại cửa h&agrave;ng lẫn tr&ecirc;n website.</p>\r\n<h3 class=\"vk-about__title-sub\">SỰ PH&Aacute;T TRIỂN</h3>\r\n<p>Bất kể Vidcom muốn x&acirc;y dựng c&aacute;c thiết kế, dẫn đầu xu thế cạnh tranh hoặc đảm bảo tương lai th&igrave; Vidcom vẫn lu&ocirc;n lu&ocirc;n cần phải ph&aacute;t triển.</p>', 0, NULL, NULL, NULL, 'cot-loi', '2018-08-01 02:17:25', '2018-07-31 19:17:25'),
(5, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'taisao', '2018-08-01 00:29:56', '2018-08-01 00:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1533204557_bank-1.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2018-08-02 10:09:17', '2018-08-02 03:09:17'),
(3, '1533204568_bank-2.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN Ho&agrave;ng&nbsp;Hải</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2018-08-02 10:09:28', '2018-08-02 03:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `title` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `mota` text CHARACTER SET utf8,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `position`, `title`, `mota`, `updated_at`, `created_at`) VALUES
(8, '1532916936_banner.jpg', NULL, 3, NULL, NULL, '2018-07-29 19:15:36', '2018-07-09 01:35:30'),
(9, '1532934336_banner.jpg', NULL, 4, NULL, NULL, '2018-07-30 00:05:36', '2018-07-11 06:55:58'),
(13, '1532916175_banner.jpg', NULL, 5, NULL, NULL, '2018-07-29 19:02:55', '2018-07-09 01:39:20'),
(14, '1533002245_banner.jpg', NULL, 8, NULL, NULL, '2018-07-30 18:57:25', '2018-07-09 01:56:17'),
(19, '1532918847_banner.jpg', NULL, 2, NULL, NULL, '2018-07-29 19:47:27', '2018-07-15 20:17:16'),
(20, '1533003456_banner.jpg', NULL, 9, NULL, NULL, '2018-07-30 19:17:36', '2018-07-30 19:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-09-20 08:29:24', '2017-09-20 01:29:24'),
(2, 'Tin tức phong thủy', '2018-07-30 02:46:57', '2018-07-29 19:46:57'),
(3, 'Trang giới thiệu', '2017-11-08 02:03:36', '2017-11-07 19:03:36'),
(4, 'Trang dự án', '2018-07-09 01:38:06', '2018-07-08 18:38:06'),
(5, 'Trang liên hệ', '2018-07-09 01:38:30', '2018-07-08 18:38:30'),
(8, 'Trang kiến trúc', '2018-07-31 01:57:00', '2018-07-30 18:57:00'),
(9, 'Trang nội thất đẹp', '2018-07-30 18:57:09', '2018-07-30 18:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `full_name`, `email`, `phone`, `address`, `province`, `district`, `note`, `status`, `total`, `detail`, `created_at`, `updated_at`, `card_code`, `payment`) VALUES
(11, 'j', 'chuong1194@yahoo.com', '0987654321', 's', NULL, NULL, 'f sfd', 0, 200000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m 2\",\"product_numb\":1,\"product_price\":200000,\"product_img\":\"1533195259_shop-15.jpg\",\"product_code\":null}]', '2018-08-03 08:58:44', '2018-08-03 08:58:44', NULL, 1),
(12, 'Hoàng Hồng Chương', 'admin@team.vn', '0987654321', 'Hà Nội', NULL, NULL, 'sd fsdf s', 0, 20000000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m 8\",\"product_numb\":\"4\",\"product_price\":5000000,\"product_img\":\"1533195355_shop-18.jpg\",\"product_code\":\"5\"}]', '2018-08-16 06:51:43', '2018-08-16 06:51:43', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_type`, `campaign_value`, `campaign_expired`, `created_at`, `updated_at`, `del_flg`, `card_numb`) VALUES
(1, 'Chào mừng giáng sinh', 1, 100000, '2017-09-30', '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0, 7),
(2, 'Chào thu', 2, 10, '2017-09-30', '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_cards`
--

INSERT INTO `campaign_cards` (`id`, `campaign_id`, `card_code`, `is_active`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 1, 'hDXoOAI7BpxYJ', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(2, 1, 'FepHYPARhlTbe', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(3, 1, 'bpDe0nb31sZiN', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(4, 1, '0DK0VoB53JeJj', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(5, 1, 'hF3Ad1g7J411w', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(6, 1, '8PyZN6OTyAIwZ', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(7, 1, 'Zqy0atJII1nzS', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(8, 2, '3Qe06mci6qmMc', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(9, 2, 'vUrrWre9EN6iR', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(10, 2, 'IGzmLXBT9pDk5', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(11, 2, 'OXSiH6ooCzJj7', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `map` text,
  `photo` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `name`, `website`, `phone`, `address`, `map`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'cs1: vidcom hoàng mai', NULL, '0923 556 778', 'Số 125 / 40 / 56 - Vũ Tông Phan - Thanh Xuân - Hà Nội', 'https://www.google.com/maps/place/C%C3%B4ng+ty+c%E1%BB%95+ph%E1%BA%A7n+c%C3%B4ng+ngh%E1%BB%87+v%C3%A0+truy%E1%BB%81n+th%C3%B4ng+GCO/@21.0021961,105.8207131,17z/data=!3m1!4b1!4m5!3m4!1s0x3135ac8429a1d781:0x118b575a1d0db4da!8m2!3d21.0021911!4d105.8229018', '1533094106_shop-1.jpg', '2018-08-01 04:07:44', '2018-07-31 21:07:44'),
(2, 'CS1: VIDCOM THANH XUÂN', NULL, '0987654321', 'Hà NộiĐại sảnh tòa Toyota - 315 Trường Chinh - Thanh Xuân - Hà Nội', 'https://www.google.com/maps/place/C%C3%B4ng+ty+c%E1%BB%95+ph%E1%BA%A7n+c%C3%B4ng+ngh%E1%BB%87+v%C3%A0+truy%E1%BB%81n+th%C3%B4ng+GCO/@21.0021961,105.8207131,17z/data=!3m1!4b1!4m5!3m4!1s0x3135ac8429a1d781:0x118b575a1d0db4da!8m2!3d21.0021911!4d105.8229018', '1533094153_shop-2.jpg', '2018-08-01 04:07:50', '2018-07-31 21:07:50'),
(3, 'CS3: VIDCOM HOÀNG MAI', NULL, '0987654321', 'Số 125 / 40 / 56 - Vũ Tông Phan - Thanh Xuân - Hà Nội', 'https://www.google.com/maps/place/C%C3%B4ng+ty+c%E1%BB%95+ph%E1%BA%A7n+c%C3%B4ng+ngh%E1%BB%87+v%C3%A0+truy%E1%BB%81n+th%C3%B4ng+GCO/@21.0021961,105.8207131,17z/data=!3m1!4b1!4m5!3m4!1s0x3135ac8429a1d781:0x118b575a1d0db4da!8m2!3d21.0021911!4d105.8229018', '1533094305_shop-3.jpg', '2018-08-01 04:07:55', '2018-07-31 21:07:55'),
(4, 'cs1: vidcom hoàng mai', NULL, '0987654321', '315, Trường Chinh, Thanh Xuân, Hà Nội', 'https://www.google.com/maps/place/C%C3%B4ng+ty+c%E1%BB%95+ph%E1%BA%A7n+c%C3%B4ng+ngh%E1%BB%87+v%C3%A0+truy%E1%BB%81n+th%C3%B4ng+GCO/@21.0021961,105.8207131,17z/data=!3m1!4b1!4m5!3m4!1s0x3135ac8429a1d781:0x118b575a1d0db4da!8m2!3d21.0021911!4d105.8229018', '1533096268_shop-4.jpg', '2018-08-01 04:08:02', '2018-07-31 21:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(2, 'Màu 1', '#00FF22', '2018-08-02 03:04:21', '2018-08-01 20:04:21'),
(3, 'màu 2', '#6E00FF', '2018-08-01 20:04:09', '2018-08-01 20:04:09'),
(4, 'Màu 3', '#092E00', '2018-08-01 20:04:39', '2018-08-01 20:04:39'),
(5, 'Màu 4', '#000', '2018-08-01 20:04:52', '2018-08-01 20:04:52'),
(6, 'Màu 5', '#D10000', '2018-08-01 20:05:20', '2018-08-01 20:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `province_id` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `address` text,
  `content` text CHARACTER SET latin1,
  `website` varchar(250) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `photo` text,
  `position` varchar(250) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `image` text,
  `mota` text,
  `content` text,
  `title` varchar(250) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `description` text,
  `status` int(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `name`, `alias`, `image`, `mota`, `content`, `title`, `keyword`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Về công ty', 've-cong-ty', '1509935372_home-1.png', '<h3 class=\"vk-about__title text-uppercase animation fadeIn animation-active\">C&Ocirc;NG TY TNHH SẢN XUẤT NHỰA CH&Acirc;U &Acirc;U</h3>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>', '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, 1, '2017-11-06 02:33:45', '2017-11-05 19:33:45'),
(2, 'Về nhà xưởng', 've-nha-xuong', NULL, NULL, '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, 1, '2017-11-08 02:12:34', '2017-11-07 19:12:34'),
(3, 'Về chi nhánh', 've-chi-nhanh', NULL, NULL, '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', 'Chi nhánh', 'chi nhánh', 'sf s', 1, '2017-11-08 02:12:39', '2017-11-07 19:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT '0',
  `news_id` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `news_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`, `updated_at`) VALUES
(8, 0, 43, NULL, NULL, '1532937692_cate4.jpg', 1, NULL, NULL, 0, '2018-07-30 08:01:32', '2018-07-30 08:01:32'),
(7, 0, 43, NULL, NULL, '1532937692_cate3.jpg', 1, NULL, NULL, 0, '2018-07-30 08:01:32', '2018-07-30 08:01:32'),
(6, 0, 43, NULL, NULL, '1532937692_cate2.jpg', 1, NULL, NULL, 0, '2018-07-30 08:01:32', '2018-07-30 08:01:32'),
(5, 0, 43, NULL, NULL, '1532937692_cate1.jpg', 1, NULL, NULL, 0, '2018-07-30 08:01:32', '2018-07-30 08:01:32'),
(9, 7, NULL, NULL, NULL, '1533195479_shop-16.jpg', 1, NULL, NULL, 0, '2018-08-02 07:37:59', '2018-08-02 07:37:59'),
(10, 7, NULL, NULL, NULL, '1533195479_shop-17.jpg', 1, NULL, NULL, 0, '2018-08-02 07:37:59', '2018-08-02 07:37:59'),
(12, 8, NULL, NULL, NULL, '1533198116_shop-19.jpg', 1, NULL, NULL, 0, '2018-08-02 08:21:56', '2018-08-02 08:21:56'),
(13, 8, NULL, NULL, NULL, '1533198116_shop-20.jpg', 1, NULL, NULL, 0, '2018-08-02 08:21:56', '2018-08-02 08:21:56'),
(14, 8, NULL, NULL, NULL, '1533198116_shop-21.jpg', 1, NULL, NULL, 0, '2018-08-02 08:21:56', '2018-08-02 08:21:56'),
(15, 8, NULL, NULL, NULL, '1533198141_shop-detail-1.jpg', 1, NULL, NULL, 0, '2018-08-02 08:22:21', '2018-08-02 08:22:21'),
(16, 8, NULL, NULL, NULL, '1533198141_shop-detail-2.jpg', 1, NULL, NULL, 0, '2018-08-02 08:22:21', '2018-08-02 08:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `document` text COLLATE utf8_unicode_ci,
  `photo2` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `document`, `photo2`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 8, 'Catalog 2018', NULL, '', '1533112457_tuan1_7.xlsx', '', NULL, '<p>CON NGƯỜI đại diện cho nền tảng của thương hiệu Vidcom. Điều n&agrave;y được thể hiện bằng việc ch&uacute;ng t&ocirc;i quan t&acirc;m đến c&aacute;ch sống v&agrave; l&agrave;m việc của kh&aacute;ch h&agrave;ng cũng như cung cấp cho mỗi nh&acirc;n vi&ecirc;n một m&ocirc;i trường l&agrave;m việc l&agrave;nh mạnh, cơ hội để học hỏi v&agrave; ph&aacute;t triển. Vidcom cũng đ&aacute;nh gi&aacute; cao sự đa dạng v&agrave; kh&aacute;c biệt văn h&oacute;a, nhằm phấn đấu cải thiện chất lượng cuộc sống của cộng đồng.</p>\r\n<p><img src=\"http://localhost/vidcom/upload/cata-log-1.jpg\" alt=\"\" width=\"757\" height=\"392\" /></p>', 0, 0, 'catalog', 1, '2018-08-01 08:38:41', '2018-08-01 01:38:41'),
(2, 8, '1', NULL, '1534403716_ads-1.jpg', NULL, '', NULL, NULL, 1, 0, 'quang-cao', 1, '2018-08-16 07:15:16', '2018-08-16 07:15:16'),
(3, 8, NULL, NULL, '1534403723_ads-2.jpg', NULL, '', NULL, NULL, 1, 0, 'quang-cao', 2, '2018-08-16 07:15:23', '2018-08-16 07:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `alias`, `photo`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 1, '2017-08-24 04:42:40', '2017-08-23 21:42:40'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 2, '2017-09-01 01:33:58', '2017-08-31 18:33:58'),
(12, 'Sản phẩm', 'http://localhost/eu/san-pham', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 3, '2017-11-08 02:41:38', '2017-11-07 19:41:38'),
(13, 'Tin tức', 'http://localhost/eu/tin-tuc', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 6, '2017-11-08 03:44:27', '2017-11-07 20:44:27'),
(18, 'Bảng giá', 'http://localhost/eu/bang-gia', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 4, '2017-11-08 01:54:33', '2017-11-07 18:54:33'),
(19, 'Chứng chỉ kĩ thuật', 'http://localhost/eu/chung-chi-ki-thuat', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 5, '2017-11-08 01:13:44', '2017-11-07 18:13:44'),
(20, 'Về chi nhánh', 'http://localhost/eu/gioi-thieu/ve-chi-nhanh', NULL, 1, 0, 2, NULL, NULL, NULL, 'menu-top', 7, '2017-11-08 01:37:27', '2017-11-07 18:37:27'),
(21, 'Về nhà xưởng', 'http://localhost/eu/gioi-thieu/ve-nha-xuong', NULL, 1, 0, 2, NULL, NULL, NULL, 'menu-top', 8, '2017-11-07 18:15:34', '2017-11-07 18:15:34'),
(23, 'Hàng vặn ren', 'http://localhost/eu/san-pham/hang-van-ren', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 9, '2017-11-07 18:43:17', '2017-11-07 18:43:17'),
(24, 'Đai khởi thủy', 'http://localhost/eu/san-pham/dai-khoi-thuy', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 10, '2017-11-07 18:43:39', '2017-11-07 18:43:39'),
(25, 'Van', 'http://localhost/eu/san-pham/van', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 11, '2017-11-07 18:43:54', '2017-11-07 18:43:54'),
(26, 'Phụ kiện HDPE hàn đối đầu', 'http://localhost/eu/san-pham/phu-kien-hdpe-han-doi-dau', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 12, '2017-11-07 18:44:22', '2017-11-07 18:44:22'),
(27, 'Phụ kiện HDPE hàn điện trở', 'https://developer6.gco.vn/euplastic/san-pham/phu-kien-hdpe-han-dien-tro', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 13, '2017-11-07 18:45:09', '2017-11-07 18:45:09'),
(28, 'Phụ kiện HDPE hàn lồng', 'http://localhost/eu/san-pham/phu-kien-hdpe-han-long', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 14, '2017-11-07 18:45:43', '2017-11-07 18:45:43'),
(29, 'Bảng giá tại Hà Nội', 'http://localhost/eu/bang-gia/bang-gia-tai-ha-noi.html', NULL, 1, 0, 18, NULL, NULL, NULL, 'menu-top', 15, '2017-11-07 18:46:20', '2017-11-07 18:46:20'),
(30, 'Bảng giá tại TP.Hồ Chí Minh', 'http://localhost/eu/bang-gia/bang-gia-tai-tpho-chi-minh.html', NULL, 1, 0, 18, NULL, NULL, NULL, 'menu-top', 16, '2017-11-07 18:46:40', '2017-11-07 18:46:40'),
(31, 'Về công ty', 'http://localhost/eu/gioi-thieu/ve-cong-ty', NULL, 1, 0, 2, NULL, NULL, NULL, 'menu-top', 17, '2017-11-07 19:09:40', '2017-11-07 19:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `home` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `name`, `url`, `photo`, `desc`, `content`, `com`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Đối tác 1', 'https://gco.vn/gioi-thieu', '1531100791_custom-1.png', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:37:56', '2018-07-15 19:21:42'),
(4, 'Đối tác 2', NULL, '1531100800_custom-2.png', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:39:46', '2018-07-08 18:46:40'),
(5, 'Đối tác 3', NULL, '1531100811_custom-3.png', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:39:55', '2018-07-08 18:46:51'),
(6, 'Đối tác 4', NULL, '1531100823_custom-4.png', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:40:10', '2018-07-08 18:47:03'),
(7, 'Đối tác 5', NULL, '1531100831_custom-5.png', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:40:20', '2018-07-08 18:47:11'),
(9, 'đối tác 6', NULL, '1531100852_custom-6.png', NULL, NULL, 'doi-tac', 1, '2018-07-08 18:47:32', '2018-07-08 18:47:32'),
(10, 'đối tác 7', NULL, '1531100871_custom-7.png', NULL, NULL, 'doi-tac', 1, '2018-07-08 18:47:51', '2018-07-08 18:47:51'),
(11, 'đối tác 8', NULL, '1531100889_custom-8.png', NULL, NULL, 'doi-tac', 1, '2018-07-08 18:48:09', '2018-07-08 18:48:09'),
(13, 'đối tác 10', NULL, '1531100928_custom-10.png', NULL, NULL, 'doi-tac', 1, '2018-07-08 18:48:48', '2018-07-08 18:48:48'),
(14, '123', 'https://gco.vn/', '1531707656_logo.png', NULL, NULL, 'doi-tac', 1, '2018-07-15 19:20:56', '2018-07-15 19:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `color_id` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `baohanh` text COLLATE utf8_unicode_ci,
  `properties` text CHARACTER SET utf8,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `ratepoint` int(2) DEFAULT NULL,
  `quatang` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) NOT NULL DEFAULT '0',
  `spbc` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `code`, `color_id`, `stt`, `name`, `alias`, `photo`, `price`, `sale`, `price_old`, `mota`, `content`, `thuonghieu`, `tinhtrang`, `baohanh`, `properties`, `model`, `namsanxuat`, `ratepoint`, `quatang`, `huongdan`, `vanchuyen`, `noibat`, `spbc`, `status`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 8, 2, NULL, '[2,5,6]', 1, 'Sản phẩm 1', 'san-pham-1', '1533185304_shop-13.jpg', 400000, 0, 600000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2018-08-05 04:51:36', '2018-08-02 00:13:06'),
(2, 8, 1, NULL, '[2,3,5]', 2, 'Sản phẩm 2', 'san-pham-2', '1533195259_shop-15.jpg', 200000, 0, 400000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2018-08-05 05:11:34', '2018-08-05 05:11:34'),
(3, 8, 11, NULL, '[3,4]', 3, 'Sản phẩm 3', 'san-pham-3', '1533195244_shop-14.jpg', 5000000, 0, 6000000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2018-08-06 01:47:10', '2018-08-06 01:47:10'),
(4, 8, 2, NULL, '[3,4]', 4, 'Sản phẩm 4', 'san-pham-4', '1533195302_shop-16.jpg', 300000, 0, 500000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2018-08-05 05:01:48', '2018-08-02 00:35:02'),
(5, 8, 3, NULL, '[3,5]', 5, 'Sản phẩm 6', 'san-pham-6', '1533195331_shop-17.jpg', 5000000, 0, 7000000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2018-08-05 05:01:50', '2018-08-03 01:14:50'),
(6, 8, 8, NULL, '[4,5]', 1, 'Sản phẩm 8', 'san-pham-8', '1533195355_shop-18.jpg', 5000000, 0, 6000000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2018-08-05 05:01:53', '2018-08-03 01:14:44'),
(7, 8, 10, NULL, '[3,4]', 7, 'Sản phẩm 7', 'san-pham-7', '1533195490_shop-19.jpg', 400000, 0, 800000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2018-08-05 05:01:57', '2018-08-03 01:14:45'),
(8, 8, 8, NULL, '[3,4,5]', 8, 'Sản phẩm 9', 'san-pham-9', '1533195544_shop-20.jpg', 300000, 0, 600000, '<p>Gương đứng KITKA mang lại n&eacute;t đẹp cổ điển cho kh&ocirc;ng gian với t&ocirc;ng m&agrave;u n&acirc;u trầm v&agrave; thiết kế theo phong c&aacute;ch retro. Gương cao 165cm, c&oacute; thể điều chỉnh độ nghi&ecirc;ng.</p>\r\n<ul>\r\n<li><strong>Chất liệu:&nbsp;</strong>MDF/Gỗ cao su</li>\r\n<li><strong>M&agrave;u sắc:&nbsp;</strong>M&agrave;u gỗ sậm</li>\r\n<li><strong>K&iacute;ch thước:&nbsp;</strong>S&acirc;u 40 cm, Ngang 56 cm, Cao 165 cm</li>\r\n</ul>', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2018-08-05 05:08:24', '2018-08-05 04:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `noibat` int(2) DEFAULT '0',
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `alias`, `photo`, `noibat`, `status`, `lever`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 15, 'Phòng ngủ', 'phong-ngu', '1533260802_shop-5.jpg', 0, 1, 0, NULL, NULL, NULL, '2018-08-03 07:57:58', '2018-08-03 00:57:58'),
(2, 0, 15, 'Phòng khách', 'phong-khach', '1533260837_shop-6.jpg', 0, 1, 0, NULL, NULL, NULL, '2018-08-03 01:47:17', '2018-08-02 18:47:17'),
(3, 0, 15, 'Phòng ăn', 'phong-an', '1533260859_shop-7.jpg', 0, 1, 0, NULL, NULL, NULL, '2018-08-03 01:47:39', '2018-08-02 18:47:39'),
(4, 0, 15, 'Phòng tắm', 'phong-tam', '1533260999_shop-9.jpg', 0, 1, 0, NULL, NULL, NULL, '2018-08-03 01:49:59', '2018-08-02 18:49:59'),
(5, 0, 15, 'Nhà bếp', 'nha-bep', '1533260972_shop-10.jpg', 0, 1, 0, NULL, NULL, NULL, '2018-08-03 01:49:32', '2018-08-02 18:49:32'),
(6, 0, 15, 'Phòng học & làm việc', 'phong-hoc-lam-viec', '1533260944_shop-8.jpg', 0, 1, 0, NULL, NULL, NULL, '2018-08-03 01:49:04', '2018-08-02 18:49:04'),
(7, 1, NULL, 'Gương', 'guong', '', 0, 1, 0, NULL, NULL, NULL, '2018-08-01 08:54:25', '2018-08-01 01:54:25'),
(8, 1, NULL, 'Kệ sảnh', 'ke-sanh', '', 0, 1, 0, NULL, NULL, NULL, '2018-08-01 08:54:45', '2018-08-01 01:54:45'),
(9, 1, NULL, 'Thảm', 'tham', '', 0, 1, 0, NULL, NULL, NULL, '2018-08-01 01:55:13', '2018-08-01 01:55:13'),
(10, 1, NULL, 'Đèn trang trí', 'den-trang-tri', '', 0, 1, 0, NULL, NULL, NULL, '2018-08-01 08:56:42', '2018-08-01 01:56:42'),
(11, 2, 11, 'Kệ tivi', 'ke-tivi', '1533196140_cat-4.jpg', 1, 1, 0, NULL, NULL, NULL, '2018-08-02 08:04:19', '2018-08-02 01:04:19'),
(12, 5, 12, 'Bàn ăn', 'ban-an', '1533196197_cat-7.jpg', 1, 1, 0, NULL, NULL, NULL, '2018-08-02 08:04:11', '2018-08-02 01:04:11'),
(13, 6, 13, 'Kệ sách', 'ke-sach', '1533196231_cat-6.jpg', 1, 1, 0, NULL, NULL, NULL, '2018-08-02 08:04:03', '2018-08-02 01:04:03'),
(14, 3, 14, 'Bàn cà phê', 'ban-ca-phe', '1533196270_cat-5.jpg', 1, 1, 0, NULL, NULL, NULL, '2018-08-02 08:03:51', '2018-08-02 01:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenkhongdau` varchar(255) DEFAULT NULL,
  `mota_vi` text,
  `mota_en` text,
  `photo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `stt` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`, `tenkhongdau`, `mota_vi`, `mota_en`, `photo`, `thumb`, `stt`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', '', '', '', '', '', 30, 1, '0000-00-00 00:00:00', '2017-11-23 21:04:04'),
(2, 'Hà Nội', '', '', '', '', '', 24, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Hải Phòng', '', '', '', '', '', 28, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'An Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Bà Rịa Vũng Tàu', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Bạc Liêu', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Bắc Cạn', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Bắc Giang', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Bắc Ninh', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Bến Tre', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Bình Dương', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Bình Định', '', '', '', '', '', 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Bình Phước', '', '', '', '', '', 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Bình Thuận', '', '', '', '', '', 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Cà Mau', '', '', '', '', '', 12, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Cao Bằng', '', '', '', '', '', 13, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Cần Thơ', '', '', '', '', '', 14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Đà Nẵng', '', '', '', '', '', 15, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Đắk Lắc ', '', '', '', '', '', 16, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Đắk Nông', '', '', '', '', '', 17, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Điện Biện', '', '', '', '', '', 18, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Đồng Nai', '', '', '', '', '', 19, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Đồng Tháp', '', '', '', '', '', 20, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Gia Lai', '', '', '', '', '', 21, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Hà Giang', '', '', '', '', '', 22, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Hà Nam', '', '', '', '', '', 23, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Hà Tây', '', '', '', '', '', 25, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Hà Tĩnh', '', '', '', '', '', 26, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Hải Dương', '', '', '', '', '', 27, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Hòa Bình', '', '', '', '', '', 29, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Hậu Giang', '', '', '', '', '', 31, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Hưng Yên', '', '', '', '', '', 32, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Khánh Hòa', '', '', '', '', '', 33, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Kiên Giang', '', '', '', '', '', 34, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Kon Tum', '', '', '', '', '', 35, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Lai Châu', '', '', '', '', '', 36, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Lào Cai', '', '', '', '', '', 37, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Lạng Sơn', '', '', '', '', '', 38, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Lâm Đồng ', '', '', '', '', '', 39, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Long An', '', '', '', '', '', 40, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Nam Định', '', '', '', '', '', 41, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Nghệ An', '', '', '', '', '', 42, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Ninh Bình', '', '', '', '', '', 43, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Ninh Thuận', '', '', '', '', '', 44, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Phú Thọ', '', '', '', '', '', 45, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Phú Yên', '', '', '', '', '', 46, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Quảng Bình ', '', '', '', '', '', 47, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Quảng Nam', '', '', '', '', '', 48, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Quảng Ngãi', '', '', '', '', '', 49, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Quảng Ninh', '', '', '', '', '', 50, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Quảng Trị', '', '', '', '', '', 51, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Sóc Trăng', '', '', '', '', '', 52, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Sơn La', '', '', '', '', '', 53, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Tây Ninh', '', '', '', '', '', 54, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Thái Bình', '', '', '', '', '', 55, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Thái Nguyên', '', '', '', '', '', 56, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Thanh Hóa', '', '', '', '', '', 57, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Thừa Thiên - Huế', '', '', '', '', '', 58, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Tiền Giang', '', '', '', '', '', 59, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Trà Vinh', '', '', '', '', '', 60, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Tuyên Quang', '', '', '', '', '', 61, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Vĩnh Long', '', '', '', '', '', 62, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Vĩnh Phúc', '', '', '', '', '', 63, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Yên Bái', '', '', '', '', '', 64, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `photo_footer` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `photo_page` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `google` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `photo`, `photo_footer`, `photo_page`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `skype`, `google`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Vid', 'Vid', 'Vid', 'http://developer6.gco.vn/gcoads/', 'Tầng 8, Tòa nhà TOYOTA Thanh Xuân  315 Trường Chinh, Thanh Xuân, Hà Nội', '(024)7 309 8885', NULL, 'Chúng tôi vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rối nghĩa dễ gây rối trí và cảm trở công việc tập trung vào yếu tố trình bày văn bản.', 'info@gco.vn', '1533088355_logo-1.png', '1533088355_logo-1.png', '1530871000_logo-page.png', '1533088355_logo-1.png', 'http://abc.com.vn', NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', NULL, 'https://plus.google.com/?hl=vi', 'https://www.youtube.com/', 1, NULL, '© GCO GROUP 2018. All rights reserved', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7749747466096!2d105.82069491439643!3d21.00165548601309!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac8429ac32cb%3A0x592668996cef591f!2zMzE1IFRyxrDhu51uZyBDaGluaCwgS2jGsMahbmcgVGjGsOG7o25nLCDEkOG7kW5nIMSQYSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1531887013298\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2018-08-01 01:52:35', '2018-07-31 18:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `photo1` text CHARACTER SET utf8,
  `photo2` text CHARACTER SET utf8,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `photo1`, `photo2`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 8, '1', NULL, '1533193412_banner-4.jpg', '', '', NULL, NULL, NULL, 1, 0, 'gioi-thieu', 1, '2018-08-02 07:03:32', '2018-08-02 00:03:32'),
(2, 8, '2', NULL, '1533193421_banner-4.jpg', '', '', NULL, NULL, NULL, 1, 0, 'gioi-thieu', 2, '2018-08-02 07:03:41', '2018-08-02 00:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `photo` text,
  `photo2` text,
  `stt` int(11) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$IP3633RgCQNAfs6J8cic9.XRNb4v7KxvcI0oF1HpWBQKqPT4v.JYG', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'Ljivi1hsYgR59Oy0OVCKjGS9jXPufymhqIPUw5KmqOOltNBeg2cHsAjOZ4Ve', '2018-07-13 09:06:16', '2018-07-13 02:06:16'),
(7, 'hoangchuong', '$2y$10$PnaSJxmZdL0x0wRtj4q0tODPWKtxI85VefEFNZWDQKEH6q8rxjLc6', 'chuong', 'chuonghoanghong@gmail.com', NULL, NULL, 1, NULL, 1, 'DSYV3dr0q7IjUiVKsa4tl4ApOSuDPybd17EupcaO', '2017-11-07 01:31:10', '2017-11-07 01:31:10'),
(8, 'admin', '$2y$10$54bF9zCcwvAY1oDKCLsN3O/sEUOF/a0Q8Zz/UKti5CzFogRactG3O', 'admin', 'admin@gmail.com', NULL, NULL, 1, 'logo-home-2.png', 1, 'mBaTHa9DMxbdT8l2IW7o5lJGKK3tfAHhp05s6YkXlK1vkLlFYbIDo0dgqqyt', '2018-07-31 10:05:50', '2018-07-13 18:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `link` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `link`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nvy3XBg-tmU\" frameborder=\"0\" allowfullscreen></iframe>', '2017-10-15 20:31:58', '2017-10-15 20:34:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `news_categories` ADD FULLTEXT KEY `name1` (`name`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
