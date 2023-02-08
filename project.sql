-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 07:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  `chat_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chatroom`
--

CREATE TABLE `chatroom` (
  `chatroomid` int(11) NOT NULL,
  `chat_name` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `chat_password` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `chatroom`
--

INSERT INTO `chatroom` (`chatroomid`, `chat_name`, `date_created`, `chat_password`, `userid`) VALUES
(12, 'bdbdf', '2023-02-02 10:48:56', '23', 8);

-- --------------------------------------------------------

--
-- Table structure for table `chat_member`
--

CREATE TABLE `chat_member` (
  `chat_memberid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `chat_member`
--

INSERT INTO `chat_member` (`chat_memberid`, `chatroomid`, `userid`, `access`) VALUES
(21, 12, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `city_name`) VALUES
(1, 'تهران'),
(2, 'دماوند');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'آذربایجان شرقی'),
(2, 'آذربایجان غربی'),
(3, 'اردبیل'),
(4, 'اصفهان'),
(5, 'البرز'),
(6, 'ایلام'),
(7, 'بوشهر'),
(8, 'تهران'),
(9, 'چهارمحال و بختیاری'),
(10, 'خراسان جنوبی'),
(11, 'خراسان رضوی'),
(12, 'خراسان شمالی'),
(13, 'خوزستان'),
(14, 'زنجان'),
(15, 'سمنان'),
(16, 'سیستان و بلوچستان'),
(17, 'فارس'),
(18, 'قزوین'),
(19, 'قم'),
(20, 'کردستان'),
(21, 'کرمان'),
(22, 'کرمانشاه'),
(23, 'کهگیلویه و بویراحمد'),
(24, 'گلستان'),
(25, 'گیلان'),
(26, 'لرستان'),
(27, 'مازندران'),
(28, 'مرکزی'),
(29, 'هرمزگان'),
(30, 'همدان'),
(31, 'یزد');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` mediumtext NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` mediumtext NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` mediumtext NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL,
  `cust_latitude` varchar(100) NOT NULL,
  `cust_longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`, `cust_latitude`, `cust_longitude`) VALUES
(13, 'mohammad', '', 'mh.karimi179@gmail.com', '9126589874', 2, 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 39', 'تهران', 'تهران', '1494673888', 'محمد حسین کریمی', 'nfgnfgn', '9129265614', 1, 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 39', 'تهران', 'تهران', '1494673888', 'محمد حسین کریمی', 'fgnfgnfgn', '9129265614', 1, 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 39', 'تهران', 'تهران', '1494673888', '827ccb0eea8a706c4c34a16891f84e7b', 'cce0e1ac75463453d46ce899508ba496', '2023-01-25 09:21:46', '1674710506', 1, '35.6946007887369', '53.6946007884369'),
(14, 'ali', '', 'mh.karimi29@gmail.com', '1231564654', 4, 'dqw\'d,;qwd\',qwd', 'تهران', 'تهران', '1494673888', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '202cb962ac59075b964b07152d234b70', 'f258a238325482d2111de918ec36aad4', '2023-01-25 09:40:42', '1674711642', 1, '', ''),
(15, 'qwe', '', 'admin@mail.com', '9126589874', 3, 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 39', 'تهران', 'تهران', '1494673888', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '202cb962ac59075b964b07152d234b70', 'e97ae987f1c58eb1a6e2c553a28b7a2f', '2023-01-25 09:55:50', '1674712550', 1, '', ''),
(17, 'abbas', 'acasc', 'mh.karimi79@gmail.com', '36584222', 40, 'sacsacs;a\'cs,c\'asc,', 'تهران', 'تهران', '1494673888', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '827ccb0eea8a706c4c34a16891f84e7b', 'c63847d769f8c96f9fc2321c9f1920f0', '2023-01-28 09:19:14', '1674969554', 1, '', ''),
(18, 'abbbas', '', 'admisdvsdvdn@mail.com', '564564646', 5, 'sdklnvklnsdklvnskldvn', 'تهران', 'تهران', '1494673888', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '81dc9bdb52d04dc20036dbd8313ed055', 'ede53133b11874fb5f62dca8da10710e', '2023-01-28 09:25:48', '1674969948', 1, '35.69460078873696', '51.18713384494186'),
(19, 'محمد حسین کریمی', 'dwdwq', 'administrator@cewwe.com', '123123', 246, 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 39', 'تهران', 'تهران', '1494673888', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '202cb962ac59075b964b07152d234b70', 'e66beb268c33ff76097b231c708a98a1', '2023-02-01 11:53:48', '1675324428', 1, '36.11952092755109', '50.94680791720749');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `discount_id` int(11) NOT NULL,
  `discount_code` varchar(20) NOT NULL,
  `discount_value` int(11) NOT NULL,
  `code_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_discount`
--

INSERT INTO `tbl_discount` (`discount_id`, `discount_code`, `discount_value`, `code_status`) VALUES
(1, '2e5fgh8', 20, 'deactive'),
(2, '2e5fgh8dfvfdv', 60, 'deactive');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(84, 'بادام', 92),
(88, 'خرما', 93),
(89, 'سیب', 93),
(90, 'پرتغال', 93),
(92, 'کیوی', 93),
(94, 'لیمو ترش', 93),
(95, 'زیتون', 93),
(97, 'نارنگی', 93),
(98, 'موز', 93),
(99, 'هلو', 93),
(101, 'گیلاس', 93),
(102, 'زرد آلو', 93),
(103, 'گلابی', 93),
(104, 'توت فرنگی', 93),
(105, 'انبه', 93),
(106, 'آلبالو', 93),
(107, 'به', 93),
(108, 'لیمو شیرین', 93),
(110, 'آناناس', 93),
(111, 'گوجه', 94),
(112, 'هندوانه', 94),
(113, 'سیب زمینی', 94),
(114, 'پیاز', 94),
(115, 'سیر', 94),
(116, 'فلفل دلمه ای', 94),
(125, 'خربزه', 94),
(127, 'فلفل', 94),
(128, 'ملون', 94),
(130, 'کرفس', 94),
(131, 'شلغم', 94),
(133, 'طالبی', 94),
(134, 'برنج', 95),
(135, 'ذرت', 95),
(136, 'گندم', 95),
(137, 'جو', 95),
(138, 'کنجد', 95),
(139, 'زعفران', 96),
(140, 'آویشن', 96),
(141, 'زرد چوبه', 96),
(142, 'فلفل سیاه', 96),
(145, 'زنجبیل', 96),
(146, 'دارچین', 96),
(147, 'عسل', 97),
(148, 'کره', 97),
(149, 'لوبیا', 98),
(150, 'نخود', 98),
(153, 'لپه', 98),
(156, 'چای', 100),
(157, 'گلاب', 100),
(158, 'قهوه', 100),
(159, 'سویا', 101),
(160, 'گوشت', 101);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_keshavarz`
--

CREATE TABLE `tbl_keshavarz` (
  `id` int(11) NOT NULL,
  `keshavarz_name` varchar(100) NOT NULL,
  `keshavarz_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keshavarz_phone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keshavarz_address` mediumtext NOT NULL,
  `keshavarz_city` varchar(100) NOT NULL,
  `keshavarz_password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `cust_status` int(11) NOT NULL,
  `keshavarz_latitude` varchar(100) NOT NULL,
  `keshavarz_longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_keshavarz`
--

INSERT INTO `tbl_keshavarz` (`id`, `keshavarz_name`, `keshavarz_email`, `keshavarz_phone`, `keshavarz_address`, `keshavarz_city`, `keshavarz_password`, `photo`, `role`, `status`, `cust_status`, `keshavarz_latitude`, `keshavarz_longitude`) VALUES
(1, 'keshavarz', 'keshavarz@gmail.com', '564561516516', '', '', '202cb962ac59075b964b07152d234b70', 'user-1.png', 'admin', 'Active', 1, '', ''),
(3, 'cdscsd', 'administrator@email.com', '32132131', 'sdcsdc', 'sdsdvdsvdsl,,;,', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '', ''),
(4, 'cdscsd', 'mh.karimi11279@gmail.com', '32132131', 'sdcsdc', 'sdsdvdsvdsl,,;,', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '', ''),
(5, 'sdvdsv', 'administrator@outlll.com', '32132121', 'sdvsdv', 'l;ml;mv ;dmbfdvfdv', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '', ''),
(6, '???? ???? ?????', 'administrator@dfvfd.com', 'ccccc', 'تهران', 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 3', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '', ''),
(7, 'ahma', 'administrator@svssdv.com', '4564564', 'fvdsvdsv', 'sdvsvsdvsdvsvsvsdvl;ml;mv;lsdmv;lm', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '35.996834503903014', '60.72982793673874'),
(8, 'ahmadi', 'administrator@xasxas.com', '32132121', 'sdvsdv', 'تهران', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '35.946839503903014', '50.72982793673874'),
(9, 'ali', 'administrator@maill.com', '09125478598', 'bnmbnmbnm', 'bnmbnmb', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '35.449837503903014', '50.74768071994186'),
(10, 'abbas', 'abbas@gmail.com', '9874512367', 'tehran', 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 3', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '35.70075796172278', '51.29150396212936'),
(11, 'hossein', 'administrator@wqer.com', '456456466', 'tehran', 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 3', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '35.6929510647047', '51.23931890353561'),
(12, 'andi', 'administ@wer.com', '1486558', 'tre', 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 3', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '36.03573056846609', '51.078643854707494'),
(13, 'qweeeeeeeeeeee', 'administrator@email.com', '32132131', 'dsvdsf', 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 3', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '36.17761787909138', '50.72570823132993'),
(14, 'امیر عباس احمدی', 'vdscsdc@gmail.com', '09047859621', 'سرسیرسیر', 'tehran', '202cb962ac59075b964b07152d234b70', '', 'admin', 'Active', 1, '35.76384725466079', '50.93582158908249');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(43, 'انبه', 8),
(44, 'آلبالو', 8),
(45, 'به', 8),
(46, 'لیمو شیرین', 8),
(47, 'گریپ فروت', 8),
(48, 'آناناس', 8),
(49, 'گوجه', 9),
(50, 'هندوانه', 9),
(51, 'سیب زمینی', 9),
(52, 'پیاز', 9),
(53, 'سیر', 9),
(54, 'فلفل دلمه ای', 9),
(55, 'کلم', 9),
(56, 'قارچ', 9),
(57, 'خیار', 9),
(58, 'کاهو', 9),
(59, 'بادمجان', 9),
(60, 'کدو', 9),
(61, 'شوید', 9),
(62, 'هویج', 9),
(63, 'خربزه', 9),
(64, 'فلفل', 9),
(65, 'ملون', 9),
(66, 'کرفس', 9),
(67, 'شلغم', 9),
(68, 'لوبیا سبز', 9),
(69, 'طالبی', 9),
(70, 'ذرت', 10),
(71, 'گندم', 10),
(72, 'جو', 10),
(73, 'کنجد', 10),
(74, 'زعفران', 11),
(75, 'آویشن', 11),
(76, 'زردچوبه', 11),
(77, 'فلفل سیاه', 11),
(78, 'هل', 11),
(79, 'پودر سیر', 11),
(80, 'زنجبیل', 11),
(81, 'دارچین', 11),
(82, 'عسل', 12),
(83, 'پنیر', 12),
(84, 'کره', 12),
(85, 'لوبیا', 13),
(86, 'نخود', 13),
(87, 'عدس', 13),
(88, 'سویا', 13),
(89, 'لپه', 13),
(90, 'بذر', 14),
(91, 'نهال', 14),
(92, 'خشکبار', 15),
(93, 'میوه', 15),
(94, 'صیفی', 15),
(95, 'غلات', 15),
(96, 'ادویه', 15),
(97, 'محصولات دامی', 15),
(98, 'حبوبات', 15),
(100, 'نوشیدنی', 16),
(101, 'مواد پروتوئینی', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_name_category`
--

CREATE TABLE `tbl_name_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_name_category`
--

INSERT INTO `tbl_name_category` (`category_id`, `category_name`) VALUES
(30, 'sabad'),
(31, 'kartoni');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_name_keshavarz`
--

CREATE TABLE `tbl_name_keshavarz` (
  `keshavarz_id` int(11) NOT NULL,
  `keshavarz_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_name_keshavarz`
--

INSERT INTO `tbl_name_keshavarz` (`keshavarz_id`, `keshavarz_name`) VALUES
(1, 'ahmadi'),
(2, 'ali'),
(50, 'cdscsd'),
(51, 'ahma');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cust_latitude` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cust_longitude` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`, `cust_latitude`, `cust_longitude`) VALUES
(53, 143, 'سیب قرمز', 'ahmadi', 'sabad', '1', '35000', '1675422802', '35.6946007887369', '53.6946007884369'),
(54, 142, 'پرتغال درجه1', 'ahmadi', 'kartoni', '1', '35000', '1675427002', '35.6946007887369', '53.6946007884369'),
(56, 142, 'پرتغال درجه1', 'ahmadi', 'kartoni', '1', '35000', '1675438566', '35.6946007887369', '53.6946007884369'),
(58, 142, 'پرتغال درجه1', 'ahmadi', 'kartoni', '1', '35000', '1675445233', '35.6946007887369', '53.6946007884369'),
(59, 145, 'فلفل دلمه ای رنگی', 'ahmadi', 'kartoni', '7', '41000', '1675445233', '35.6946007887369', '53.6946007884369'),
(60, 143, 'سیب قرمز', 'ahmadi', 'sabad', '1', '35000', '1675675739', '35.6946007887369', '53.6946007884369'),
(61, 142, 'پرتغال درجه1', 'ahmadi', 'kartoni', '1', '35000', '1675784622', '35.6946007887369', '53.6946007884369'),
(62, 145, 'فلفل دلمه ای رنگی', 'ali', 'kartoni', '1', '41000', '1675784622', '35.6946007887369', '53.6946007884369'),
(63, 148, 'عسل کله پوره', 'ahma', 'sabad', '1', '156000', '1675784622', '35.6946007887369', '53.6946007884369'),
(64, 151, 'گوجه دست چین شده', 'ahmadi', 'sabad', '1', '36200', '1675835556', '35.6946007887369', '53.6946007884369');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `shipping_cost` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `payment_method` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_status` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `shipping_status` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `shipping_cost`, `paid_amount`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(97, 13, 'mohammad', 'mh.karimi179@gmail.com', '2023-02-03 03:13:22', 0, 35269, 'Bank Deposit', 'Completed', 'Pending', '1675422802'),
(101, 13, 'mohammad', 'mh.karimi179@gmail.com', '2023-02-03 09:27:13', 0, 322269, 'Bank Deposit', 'Completed', 'Completed', '1675445233'),
(99, 13, 'mohammad', 'mh.karimi179@gmail.com', '2023-02-03 07:36:06', 0, 35269, 'Bank Deposit', 'Completed', 'Completed', '1675438566'),
(102, 13, 'mohammad', 'mh.karimi179@gmail.com', '2023-02-06 01:28:59', 0, 35269, 'Bank Deposit', 'Completed', 'Pending', '1675675739'),
(103, 13, 'mohammad', 'mh.karimi179@gmail.com', '2023-02-07 07:43:42', 0, 233172, 'Bank Deposit', 'Completed', 'Pending', '1675784622'),
(104, 13, 'mohammad', 'mh.karimi179@gmail.com', '2023-02-07 21:52:36', 0, 36469, 'Bank Deposit', 'Completed', 'Pending', '1675835556');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `p_keshavarz` varchar(100) NOT NULL,
  `p_category` varchar(100) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_keshavarz`, `p_category`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(142, 'پرتغال درجه1', 'ahmadi', 'kartoni', '', '35000', 49993, 'product-featured-142.jpeg', '', '', '', '', 31, 1, 1, 90),
(143, 'سیب قرمز', 'ahmadi', 'sabad', '25000', '35000', 13998, 'product-featured-143.jpeg', '', '', '', '', 20, 0, 1, 89),
(144, 'سیب زمینی', 'ahmadi', 'kartoni', '', '21000', 3600, 'product-featured-144.jpg', '', '', '', '', 4, 0, 1, 113),
(145, 'فلفل دلمه ای رنگی', 'ali', 'kartoni', '', '41000', 312, 'product-featured-145.jpg', '', '', '', '', 6, 0, 1, 116),
(146, 'برنج طارم', 'ahmadi', 'kartoni', '280000', '300000', 14000, 'product-featured-146.jpeg', '', '', '', '', 3, 0, 1, 134),
(148, 'عسل کله پوره', 'ahma', 'sabad', '', '156000', 149, 'product-featured-148.jpeg', '', '', '', '', 5, 0, 1, 147),
(151, 'گوجه دست چین شده', 'ahmadi', 'sabad', '33000', '36200', 649, 'product-featured-151.jpeg', '', '', '', '', 12, 1, 1, 111);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `featured_product_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `featured_product_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `latest_product_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `latest_product_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `popular_product_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `popular_product_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_blog_on_off`) VALUES
(1, 4, 4, 5, 5, 7, 4, 8, 'محصولات ویژه', 'Our list on Top Featured Products', '', '', '', '', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `position` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', '', 'خرید محصولات عمده و تکی کشاورزی', 'محصولات کشاورزی', '', 'Center'),
(2, 'slider-2.jpg', '', 'خرید محصولات تازه از کشاورز بدون واسط', 'محصولات', '', 'Center'),
(3, 'slider-3.png', 'پشتیبانی 24 ساعت', '', 'پشتیبان آنلاین', '', 'Center');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(15, 'کشاورزی', 1),
(16, 'فرآورده های غذایی', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `role` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'admin@mail.com', '7777777777', '202cb962ac59075b964b07152d234b70', 'user-1.png', 'Super Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `uname` varchar(60) NOT NULL,
  `photo` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `uname`, `photo`, `access`) VALUES
(5, 'ali', '202cb962ac59075b964b07152d234b70', 'ali', '', 1),
(6, 'qwe', '202cb962ac59075b964b07152d234b70', 'qwe', '', 2),
(8, 'ahmad', '202cb962ac59075b964b07152d234b70', 'ahmad', '', 2),
(9, 'abbas', '827ccb0eea8a706c4c34a16891f84e7b', 'abbas', '', 2),
(10, 'abbbas', '81dc9bdb52d04dc20036dbd8313ed055', 'abbbas', '', 2),
(11, 'vdvds', '202cb962ac59075b964b07152d234b70', 'vdvds', '', 2),
(12, 'mbnmnbmbnmbn', '202cb962ac59075b964b07152d234b70', 'mbnmnbmbnmbn', '', 2),
(13, 'abbas', '202cb962ac59075b964b07152d234b70', 'abbas', '', 2),
(14, 'hossein-keshavarz', '202cb962ac59075b964b07152d234b70', 'hossein', '', 2),
(15, 'andi-keshavarz', '202cb962ac59075b964b07152d234b70', 'andi-keshavarz', '', 2),
(16, '???? ???? ?????', '202cb962ac59075b964b07152d234b70', '???? ???? ?????(user)', '', 2),
(17, 'qweeeeeeeeeeee', '202cb962ac59075b964b07152d234b70', 'qweeeeeeeeeeee(keshavarz)', '', 2),
(18, '???? ???? ?????', '202cb962ac59075b964b07152d234b70', '???? ???? ?????(keshavarz)', '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatid`);

--
-- Indexes for table `chatroom`
--
ALTER TABLE `chatroom`
  ADD PRIMARY KEY (`chatroomid`);

--
-- Indexes for table `chat_member`
--
ALTER TABLE `chat_member`
  ADD PRIMARY KEY (`chat_memberid`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_keshavarz`
--
ALTER TABLE `tbl_keshavarz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_name_category`
--
ALTER TABLE `tbl_name_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_name_keshavarz`
--
ALTER TABLE `tbl_name_keshavarz`
  ADD PRIMARY KEY (`keshavarz_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chatroom`
--
ALTER TABLE `chatroom`
  MODIFY `chatroomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `chat_member`
--
ALTER TABLE `chat_member`
  MODIFY `chat_memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `tbl_keshavarz`
--
ALTER TABLE `tbl_keshavarz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tbl_name_category`
--
ALTER TABLE `tbl_name_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_name_keshavarz`
--
ALTER TABLE `tbl_name_keshavarz`
  MODIFY `keshavarz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
