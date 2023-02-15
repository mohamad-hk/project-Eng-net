-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 10:37 AM
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
  `message` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `chat_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatid`, `userid`, `chatroomid`, `message`, `chat_date`) VALUES
(11, 24, 22, '????', '2023-02-15 07:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `chatroom`
--

CREATE TABLE `chatroom` (
  `chatroomid` int(11) NOT NULL,
  `chat_name` varchar(60) NOT NULL,
  `date_created` datetime NOT NULL,
  `chat_password` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `chatroom`
--

INSERT INTO `chatroom` (`chatroomid`, `chat_name`, `date_created`, `chat_password`, `userid`) VALUES
(12, 'bdbdf', '2023-02-02 10:48:56', '23', 8),
(19, '????', '2023-02-14 08:37:58', '123', 20),
(20, 'سیرسی', '2023-02-14 08:43:02', '123', 8),
(21, 'صثبصث', '2023-02-14 08:43:40', '123', 21),
(22, 'چت', '2023-02-15 07:48:30', '123', 24);

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
(21, 12, 8, 0),
(33, 19, 20, 0),
(34, 20, 8, 0),
(35, 21, 21, 0),
(36, 22, 24, 0),
(37, 22, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `city_name`, `state_name`) VALUES
(451, 'تبريز', 'آذربایجان شرقی'),
(452, 'كندوان', 'آذربایجان شرقی'),
(453, 'بندر شرفخانه', 'آذربایجان شرقی'),
(454, 'مراغه', 'آذربایجان شرقی'),
(455, 'ميانه', 'آذربایجان شرقی'),
(456, 'شبستر', 'آذربایجان شرقی'),
(457, 'مرند', 'آذربایجان شرقی'),
(458, 'جلفا', 'آذربایجان شرقی'),
(459, 'سراب', 'آذربایجان شرقی'),
(460, 'هاديشهر', 'آذربایجان شرقی'),
(461, 'بناب', 'آذربایجان شرقی'),
(462, 'كليبر', 'آذربایجان شرقی'),
(463, 'تسوج', 'آذربایجان شرقی'),
(464, 'اهر', 'آذربایجان شرقی'),
(465, 'هريس', 'آذربایجان شرقی'),
(466, 'عجبشير', 'آذربایجان شرقی'),
(467, 'هشترود', 'آذربایجان شرقی'),
(468, 'ملكان', 'آذربایجان شرقی'),
(469, 'بستان آباد', 'آذربایجان شرقی'),
(470, 'ورزقان', 'آذربایجان شرقی'),
(471, 'اسكو', 'آذربایجان شرقی'),
(472, 'آذر شهر', 'آذربایجان شرقی'),
(473, 'قره آغاج', 'آذربایجان شرقی'),
(474, 'ممقان', 'آذربایجان شرقی'),
(475, 'صوفیان', 'آذربایجان شرقی'),
(476, 'ایلخچی', 'آذربایجان شرقی'),
(477, 'خسروشهر', 'آذربایجان شرقی'),
(478, 'باسمنج', 'آذربایجان شرقی'),
(479, 'سهند', 'آذربایجان شرقی'),
(480, 'اروميه', 'آذربایجان غربی'),
(481, 'نقده', 'آذربایجان غربی'),
(482, 'ماكو', 'آذربایجان غربی'),
(483, 'تكاب', 'آذربایجان غربی'),
(484, 'خوي', 'آذربایجان غربی'),
(485, 'مهاباد', 'آذربایجان غربی'),
(486, 'سر دشت', 'آذربایجان غربی'),
(487, 'چالدران', 'آذربایجان غربی'),
(488, 'بوكان', 'آذربایجان غربی'),
(489, 'مياندوآب', 'آذربایجان غربی'),
(490, 'سلماس', 'آذربایجان غربی'),
(491, 'شاهين دژ', 'آذربایجان غربی'),
(492, 'پيرانشهر', 'آذربایجان غربی'),
(493, 'سيه چشمه', 'آذربایجان غربی'),
(494, 'اشنويه', 'آذربایجان غربی'),
(495, 'چایپاره', 'آذربایجان غربی'),
(496, 'پلدشت', 'آذربایجان غربی'),
(497, 'شوط', 'آذربایجان غربی'),
(498, 'اردبيل', 'اردبیل'),
(499, 'سرعين', 'اردبیل'),
(500, 'بيله سوار', 'اردبیل'),
(501, 'پارس آباد', 'اردبیل'),
(502, 'خلخال', 'اردبیل'),
(503, 'مشگين شهر', 'اردبیل'),
(504, 'مغان', 'اردبیل'),
(505, 'نمين', 'اردبیل'),
(506, 'نير', 'اردبیل'),
(507, 'كوثر', 'اردبیل'),
(508, 'كيوي', 'اردبیل'),
(509, 'گرمي', 'اردبیل'),
(510, 'اصفهان', 'اصفهان'),
(511, 'فريدن', 'اصفهان'),
(512, 'فريدون شهر', 'اصفهان'),
(513, 'فلاورجان', 'اصفهان'),
(514, 'گلپايگان', 'اصفهان'),
(515, 'دهاقان', 'اصفهان'),
(516, 'نطنز', 'اصفهان'),
(517, 'نايين', 'اصفهان'),
(518, 'تيران', 'اصفهان'),
(519, 'كاشان', 'اصفهان'),
(520, 'فولاد شهر', 'اصفهان'),
(521, 'اردستان', 'اصفهان'),
(522, 'سميرم', 'اصفهان'),
(523, 'درچه', 'اصفهان'),
(524, 'کوهپایه', 'اصفهان'),
(525, 'مباركه', 'اصفهان'),
(526, 'شهرضا', 'اصفهان'),
(527, 'خميني شهر', 'اصفهان'),
(528, 'شاهين شهر', 'اصفهان'),
(529, 'نجف آباد', 'اصفهان'),
(530, 'دولت آباد', 'اصفهان'),
(531, 'زرين شهر', 'اصفهان'),
(532, 'آران و بيدگل', 'اصفهان'),
(533, 'باغ بهادران', 'اصفهان'),
(534, 'خوانسار', 'اصفهان'),
(535, 'مهردشت', 'اصفهان'),
(536, 'علويجه', 'اصفهان'),
(537, 'عسگران', 'اصفهان'),
(538, 'نهضت آباد', 'اصفهان'),
(539, 'حاجي آباد', 'اصفهان'),
(540, 'تودشک', 'اصفهان'),
(541, 'ورزنه', 'اصفهان'),
(542, 'ايلام', 'ایلام'),
(543, 'مهران', 'ایلام'),
(544, 'دهلران', 'ایلام'),
(545, 'آبدانان', 'ایلام'),
(546, 'شيروان چرداول', 'ایلام'),
(547, 'دره شهر', 'ایلام'),
(548, 'ايوان', 'ایلام'),
(549, 'سرابله', 'ایلام'),
(550, 'بوشهر', 'بوشهر'),
(551, 'تنگستان', 'بوشهر'),
(552, 'دشتستان', 'بوشهر'),
(553, 'دير', 'بوشهر'),
(554, 'ديلم', 'بوشهر'),
(555, 'كنگان', 'بوشهر'),
(556, 'گناوه', 'بوشهر'),
(557, 'ريشهر', 'بوشهر'),
(558, 'دشتي', 'بوشهر'),
(559, 'خورموج', 'بوشهر'),
(560, 'اهرم', 'بوشهر'),
(561, 'برازجان', 'بوشهر'),
(562, 'خارك', 'بوشهر'),
(563, 'جم', 'بوشهر'),
(564, 'کاکی', 'بوشهر'),
(565, 'عسلویه', 'بوشهر'),
(566, 'بردخون', 'بوشهر'),
(567, 'تهران', 'تهران'),
(568, 'ورامين', 'تهران'),
(569, 'فيروزكوه', 'تهران'),
(570, 'ري', 'تهران'),
(571, 'دماوند', 'تهران'),
(572, 'اسلامشهر', 'تهران'),
(573, 'رودهن', 'تهران'),
(574, 'لواسان', 'تهران'),
(575, 'بومهن', 'تهران'),
(576, 'تجريش', 'تهران'),
(577, 'فشم', 'تهران'),
(578, 'كهريزك', 'تهران'),
(579, 'پاكدشت', 'تهران'),
(580, 'چهاردانگه', 'تهران'),
(581, 'شريف آباد', 'تهران'),
(582, 'قرچك', 'تهران'),
(583, 'باقرشهر', 'تهران'),
(584, 'شهريار', 'تهران'),
(585, 'رباط كريم', 'تهران'),
(586, 'قدس', 'تهران'),
(587, 'ملارد', 'تهران'),
(588, 'شهركرد', 'چهارمحال و بختیاری'),
(589, 'فارسان', 'چهارمحال و بختیاری'),
(590, 'بروجن', 'چهارمحال و بختیاری'),
(591, 'چلگرد', 'چهارمحال و بختیاری'),
(592, 'اردل', 'چهارمحال و بختیاری'),
(593, 'لردگان', 'چهارمحال و بختیاری'),
(594, 'سامان', 'چهارمحال و بختیاری'),
(595, 'قائن', 'خراسان جنوبی'),
(596, 'فردوس', 'خراسان جنوبی'),
(597, 'بيرجند', 'خراسان جنوبی'),
(598, 'نهبندان', 'خراسان جنوبی'),
(599, 'سربيشه', 'خراسان جنوبی'),
(600, 'طبس مسینا', 'خراسان جنوبی'),
(601, 'قهستان', 'خراسان جنوبی'),
(602, 'درمیان', 'خراسان جنوبی'),
(603, 'مشهد', 'خراسان رضوی'),
(604, 'نيشابور', 'خراسان رضوی'),
(605, 'سبزوار', 'خراسان رضوی'),
(606, 'كاشمر', 'خراسان رضوی'),
(607, 'گناباد', 'خراسان رضوی'),
(608, 'طبس', 'خراسان رضوی'),
(609, 'تربت حيدريه', 'خراسان رضوی'),
(610, 'خواف', 'خراسان رضوی'),
(611, 'تربت جام', 'خراسان رضوی'),
(612, 'تايباد', 'خراسان رضوی'),
(613, 'قوچان', 'خراسان رضوی'),
(614, 'سرخس', 'خراسان رضوی'),
(615, 'بردسكن', 'خراسان رضوی'),
(616, 'فريمان', 'خراسان رضوی'),
(617, 'چناران', 'خراسان رضوی'),
(618, 'درگز', 'خراسان رضوی'),
(619, 'كلات', 'خراسان رضوی'),
(620, 'طرقبه', 'خراسان رضوی'),
(621, 'سر ولایت', 'خراسان رضوی'),
(622, 'بجنورد', 'خراسان شمالی'),
(623, 'اسفراين', 'خراسان شمالی'),
(624, 'جاجرم', 'خراسان شمالی'),
(625, 'شيروان', 'خراسان شمالی'),
(626, 'آشخانه', 'خراسان شمالی'),
(627, 'گرمه', 'خراسان شمالی'),
(628, 'ساروج', 'خراسان شمالی'),
(629, 'اهواز', 'خوزستان'),
(630, 'ايرانشهر', 'خوزستان'),
(631, 'شوش', 'خوزستان'),
(632, 'آبادان', 'خوزستان'),
(633, 'خرمشهر', 'خوزستان'),
(634, 'مسجد سليمان', 'خوزستان'),
(635, 'ايذه', 'خوزستان'),
(636, 'شوشتر', 'خوزستان'),
(637, 'انديمشك', 'خوزستان'),
(638, 'سوسنگرد', 'خوزستان'),
(639, 'هويزه', 'خوزستان'),
(640, 'دزفول', 'خوزستان'),
(641, 'شادگان', 'خوزستان'),
(642, 'بندر ماهشهر', 'خوزستان'),
(643, 'بندر امام خميني', 'خوزستان'),
(644, 'اميديه', 'خوزستان'),
(645, 'بهبهان', 'خوزستان'),
(646, 'رامهرمز', 'خوزستان'),
(647, 'باغ ملك', 'خوزستان'),
(648, 'هنديجان', 'خوزستان'),
(649, 'لالي', 'خوزستان'),
(650, 'رامشیر', 'خوزستان'),
(651, 'حمیدیه', 'خوزستان'),
(652, 'دغاغله', 'خوزستان'),
(653, 'ملاثانی', 'خوزستان'),
(654, 'شادگان', 'خوزستان'),
(655, 'ویسی', 'خوزستان'),
(656, 'زنجان', 'زنجان'),
(657, 'ابهر', 'زنجان'),
(658, 'خدابنده', 'زنجان'),
(659, 'طارم', 'زنجان'),
(660, 'ماهنشان', 'زنجان'),
(661, 'خرمدره', 'زنجان'),
(662, 'ايجرود', 'زنجان'),
(663, 'زرين آباد', 'زنجان'),
(664, 'آب بر', 'زنجان'),
(665, 'قيدار', 'زنجان'),
(666, 'سمنان', 'سمنان'),
(667, 'شاهرود', 'سمنان'),
(668, 'گرمسار', 'سمنان'),
(669, 'ايوانكي', 'سمنان'),
(670, 'دامغان', 'سمنان'),
(671, 'بسطام', 'سمنان'),
(672, 'زاهدان', 'سیستان و بلوچستان'),
(673, 'چابهار', 'سیستان و بلوچستان'),
(674, 'خاش', 'سیستان و بلوچستان'),
(675, 'سراوان', 'سیستان و بلوچستان'),
(676, 'زابل', 'سیستان و بلوچستان'),
(677, 'سرباز', 'سیستان و بلوچستان'),
(678, 'نيكشهر', 'سیستان و بلوچستان'),
(679, 'ايرانشهر', 'سیستان و بلوچستان'),
(680, 'راسك', 'سیستان و بلوچستان'),
(681, 'ميرجاوه', 'سیستان و بلوچستان'),
(682, 'شيراز', 'فارس'),
(683, 'اقليد', 'فارس'),
(684, 'داراب', 'فارس'),
(685, 'فسا', 'فارس'),
(686, 'مرودشت', 'فارس'),
(687, 'خرم بيد', 'فارس'),
(688, 'آباده', 'فارس'),
(689, 'كازرون', 'فارس'),
(690, 'ممسني', 'فارس'),
(691, 'سپيدان', 'فارس'),
(692, 'لار', 'فارس'),
(693, 'فيروز آباد', 'فارس'),
(694, 'جهرم', 'فارس'),
(695, 'ني ريز', 'فارس'),
(696, 'استهبان', 'فارس'),
(697, 'لامرد', 'فارس'),
(698, 'مهر', 'فارس'),
(699, 'حاجي آباد', 'فارس'),
(700, 'نورآباد', 'فارس'),
(701, 'اردكان', 'فارس'),
(702, 'صفاشهر', 'فارس'),
(703, 'ارسنجان', 'فارس'),
(704, 'قيروكارزين', 'فارس'),
(705, 'سوريان', 'فارس'),
(706, 'فراشبند', 'فارس'),
(707, 'سروستان', 'فارس'),
(708, 'ارژن', 'فارس'),
(709, 'گويم', 'فارس'),
(710, 'داريون', 'فارس'),
(711, 'زرقان', 'فارس'),
(712, 'خان زنیان', 'فارس'),
(713, 'کوار', 'فارس'),
(714, 'ده بید', 'فارس'),
(715, 'باب انار/خفر', 'فارس'),
(716, 'بوانات', 'فارس'),
(717, 'خرامه', 'فارس'),
(718, 'خنج', 'فارس'),
(719, 'سیاخ دارنگون', 'فارس'),
(720, 'قزوين', 'قزوین'),
(721, 'تاكستان', 'قزوین'),
(722, 'آبيك', 'قزوین'),
(723, 'بوئين زهرا', 'قزوین'),
(724, 'قم', 'قم'),
(725, 'طالقان', 'البرز'),
(726, 'نظرآباد', 'البرز'),
(727, 'اشتهارد', 'البرز'),
(728, 'هشتگرد', 'البرز'),
(729, 'كن', 'البرز'),
(730, 'آسارا', 'البرز'),
(731, 'شهرک گلستان', 'البرز'),
(732, 'اندیشه', 'البرز'),
(733, 'كرج', 'البرز'),
(734, 'نظر آباد', 'البرز'),
(735, 'گوهردشت', 'البرز'),
(736, 'ماهدشت', 'البرز'),
(737, 'مشکین دشت', 'البرز'),
(738, 'سنندج', 'کردستان'),
(739, 'ديواندره', 'کردستان'),
(740, 'بانه', 'کردستان'),
(741, 'بيجار', 'کردستان'),
(742, 'سقز', 'کردستان'),
(743, 'كامياران', 'کردستان'),
(744, 'قروه', 'کردستان'),
(745, 'مريوان', 'کردستان'),
(746, 'صلوات آباد', 'کردستان'),
(747, 'حسن آباد', 'کردستان'),
(748, 'كرمان', 'کرمان'),
(749, 'راور', 'کرمان'),
(750, 'بابك', 'کرمان'),
(751, 'انار', 'کرمان'),
(752, 'کوهبنان', 'کرمان'),
(753, 'رفسنجان', 'کرمان'),
(754, 'بافت', 'کرمان'),
(755, 'سيرجان', 'کرمان'),
(756, 'كهنوج', 'کرمان'),
(757, 'زرند', 'کرمان'),
(758, 'بم', 'کرمان'),
(759, 'جيرفت', 'کرمان'),
(760, 'بردسير', 'کرمان'),
(761, 'كرمانشاه', 'کرمانشاه'),
(762, 'اسلام آباد غرب', 'کرمانشاه'),
(763, 'سر پل ذهاب', 'کرمانشاه'),
(764, 'كنگاور', 'کرمانشاه'),
(765, 'سنقر', 'کرمانشاه'),
(766, 'قصر شيرين', 'کرمانشاه'),
(767, 'گيلان غرب', 'کرمانشاه'),
(768, 'هرسين', 'کرمانشاه'),
(769, 'صحنه', 'کرمانشاه'),
(770, 'پاوه', 'کرمانشاه'),
(771, 'جوانرود', 'کرمانشاه'),
(772, 'شاهو', 'کرمانشاه'),
(773, 'ياسوج', 'کهگیلویه و بویر احمد'),
(774, 'گچساران', 'کهگیلویه و بویر احمد'),
(775, 'دنا', 'کهگیلویه و بویر احمد'),
(776, 'دوگنبدان', 'کهگیلویه و بویر احمد'),
(777, 'سي سخت', 'کهگیلویه و بویر احمد'),
(778, 'دهدشت', 'کهگیلویه و بویر احمد'),
(779, 'ليكك', 'کهگیلویه و بویر احمد'),
(780, 'گرگان', 'گلستان'),
(781, 'آق قلا', 'گلستان'),
(782, 'گنبد كاووس', 'گلستان'),
(783, 'علي آباد كتول', 'گلستان'),
(784, 'مينو دشت', 'گلستان'),
(785, 'تركمن', 'گلستان'),
(786, 'كردكوي', 'گلستان'),
(787, 'بندر گز', 'گلستان'),
(788, 'كلاله', 'گلستان'),
(789, 'آزاد شهر', 'گلستان'),
(790, 'راميان', 'گلستان'),
(791, 'رشت', 'گیلان'),
(792, 'منجيل', 'گیلان'),
(793, 'لنگرود', 'گیلان'),
(794, 'رود سر', 'گیلان'),
(795, 'تالش', 'گیلان'),
(796, 'آستارا', 'گیلان'),
(797, 'ماسوله', 'گیلان'),
(798, 'آستانه اشرفيه', 'گیلان'),
(799, 'رودبار', 'گیلان'),
(800, 'فومن', 'گیلان'),
(801, 'صومعه سرا', 'گیلان'),
(802, 'بندرانزلي', 'گیلان'),
(803, 'كلاچاي', 'گیلان'),
(804, 'هشتپر', 'گیلان'),
(805, 'رضوان شهر', 'گیلان'),
(806, 'ماسال', 'گیلان'),
(807, 'شفت', 'گیلان'),
(808, 'سياهكل', 'گیلان'),
(809, 'املش', 'گیلان'),
(810, 'لاهیجان', 'گیلان'),
(811, 'خشک بيجار', 'گیلان'),
(812, 'خمام', 'گیلان'),
(813, 'لشت نشا', 'گیلان'),
(814, 'بندر کياشهر', 'گیلان'),
(815, 'خرم آباد', 'لرستان'),
(816, 'ماهشهر', 'لرستان'),
(817, 'دزفول', 'لرستان'),
(818, 'بروجرد', 'لرستان'),
(819, 'دورود', 'لرستان'),
(820, 'اليگودرز', 'لرستان'),
(821, 'ازنا', 'لرستان'),
(822, 'نور آباد', 'لرستان'),
(823, 'كوهدشت', 'لرستان'),
(824, 'الشتر', 'لرستان'),
(825, 'پلدختر', 'لرستان'),
(826, 'ساري', 'مازندران'),
(827, 'آمل', 'مازندران'),
(828, 'بابل', 'مازندران'),
(829, 'بابلسر', 'مازندران'),
(830, 'بهشهر', 'مازندران'),
(831, 'تنكابن', 'مازندران'),
(832, 'جويبار', 'مازندران'),
(833, 'چالوس', 'مازندران'),
(834, 'رامسر', 'مازندران'),
(835, 'سواد كوه', 'مازندران'),
(836, 'قائم شهر', 'مازندران'),
(837, 'نكا', 'مازندران'),
(838, 'نور', 'مازندران'),
(839, 'بلده', 'مازندران'),
(840, 'نوشهر', 'مازندران'),
(841, 'پل سفيد', 'مازندران'),
(842, 'محمود آباد', 'مازندران'),
(843, 'فريدون كنار', 'مازندران'),
(844, 'اراك', 'مرکزی'),
(845, 'آشتيان', 'مرکزی'),
(846, 'تفرش', 'مرکزی'),
(847, 'خمين', 'مرکزی'),
(848, 'دليجان', 'مرکزی'),
(849, 'ساوه', 'مرکزی'),
(850, 'سربند', 'مرکزی'),
(851, 'محلات', 'مرکزی'),
(852, 'شازند', 'مرکزی'),
(853, 'بندرعباس', 'هرمزگان'),
(854, 'قشم', 'هرمزگان'),
(855, 'كيش', 'هرمزگان'),
(856, 'بندر لنگه', 'هرمزگان'),
(857, 'بستك', 'هرمزگان'),
(858, 'حاجي آباد', 'هرمزگان'),
(859, 'دهبارز', 'هرمزگان'),
(860, 'انگهران', 'هرمزگان'),
(861, 'ميناب', 'هرمزگان'),
(862, 'ابوموسي', 'هرمزگان'),
(863, 'بندر جاسك', 'هرمزگان'),
(864, 'تنب بزرگ', 'هرمزگان'),
(865, 'بندر خمیر', 'هرمزگان'),
(866, 'پارسیان', 'هرمزگان'),
(867, 'قشم', 'هرمزگان'),
(868, 'همدان', 'همدان'),
(869, 'ملاير', 'همدان'),
(870, 'تويسركان', 'همدان'),
(871, 'نهاوند', 'همدان'),
(872, 'كبودر اهنگ', 'همدان'),
(873, 'رزن', 'همدان'),
(874, 'اسدآباد', 'همدان'),
(875, 'بهار', 'همدان'),
(876, 'يزد', 'یزد'),
(877, 'تفت', 'یزد'),
(878, 'اردكان', 'یزد'),
(879, 'ابركوه', 'یزد'),
(880, 'ميبد', 'یزد'),
(881, 'طبس', 'یزد'),
(882, 'بافق', 'یزد'),
(883, 'مهريز', 'یزد'),
(884, 'اشكذر', 'یزد'),
(885, 'هرات', 'یزد'),
(886, 'خضرآباد', 'یزد'),
(887, 'شاهديه', 'یزد'),
(888, 'حمیدیه شهر', 'یزد'),
(889, 'سید میرزا', 'یزد'),
(890, 'زارچ', 'یزد');

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
  `cust_address` mediumtext NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_district` varchar(255) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_address` mediumtext NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
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

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_address`, `cust_city`, `cust_state`, `cust_district`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`, `cust_latitude`, `cust_longitude`) VALUES
(13, 'mohammad', '', 'mh.karimi179@gmail.com', '9126589874', 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 39', 'سیرجان', 'کرمان', 'ده مرغ', '1494673888', 'محمد حسین کریمی', 'nfgnfgn', '9129265614', 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 39', 'تهران', 'تهران', '1494673888', 'محمد حسین کریمی', 'fgnfgnfgn', '9129265614', 'دهکده المپیک-چهارراه زیبادشت-زیبادشت بالا -خیابان گلبانگ -گلشاد سوم -مجتمع مسکونی مدیا بلوک D واحد 39', 'تهران', 'تهران', '1494673888', '202cb962ac59075b964b07152d234b70', 'cce0e1ac75463453d46ce899508ba496', '2023-01-25 09:21:46', '1674710506', 1, '35.6946007887369', '53.6946007884369'),
(24, 'محمد حسین کریمی', '', 'mh.karimi23179@gmail.com', '09044795614', 'دهکده المپیک-زیبادشت بالا-حیابان گلبانگ-گلشاد سوم', 'تهران', 'تهران', 'دهکده المپیک', '1494673888', 'محمد حسین کریمی', '', '09044795614', 'دهکده المپیک-زیبادشت بالا-خیابان گلبانگ-گلشاد سوم', 'تهران', 'دهکده المپیک', '1494673888', 'محمد حسین کریمی', '', '09044795614', 'دهکده المپیک-زیبادشت بالا-خیابان گلبانگ-گلشاد سوم', 'تهران', 'دهکده المپیک', '1494673888', 'af252983346ec70e05fae4b3551153da', '382c69fd57d40454d2131ccf9e6d562c', '2023-02-14 12:13:06', '1676405586', 1, '35.75312303471621', '51.25527799134944');

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
(15, 'علی احمدی', 'ali123@gmail.com', '09047856921', 'تبریز-خیابان شریعتی-کوچه بنقشه', 'تهران', 'af252983346ec70e05fae4b3551153da', '', 'admin', 'Active', 1, '37.98059268606369', '46.29272483289243'),
(16, 'محمد یزدانی', 'myazdani@yahoo.com', '09047859621', 'بابلسر-خیابان طالقانی-کوچه الف', 'بابلسر', 'af252983346ec70e05fae4b3551153da', '', 'admin', 'Active', 1, '36.51436162260262', '52.69226096570492'),
(17, 'محسن گورکانی', 'mohsen42@outlook.com', '09123654879', 'هماشهر-روستای اسحاق آباد-کوچه گلرنگ', 'سیرجان', 'af252983346ec70e05fae4b3551153da', '', 'admin', 'Active', 1, '29.68578706135172', '55.77976228203626');

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
(30, 'سبد'),
(31, 'کارتونی'),
(34, 'گونی 10 کیلویی'),
(35, 'گونی 20 کیلویی');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_name_keshavarz`
--

CREATE TABLE `tbl_name_keshavarz` (
  `keshavarz_id` int(11) NOT NULL,
  `keshavarz_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_name_keshavarz`
--

INSERT INTO `tbl_name_keshavarz` (`keshavarz_id`, `keshavarz_name`) VALUES
(52, 'علی احمدی'),
(53, 'محمد یزدانی'),
(54, 'محسن گورکانی');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `keshavarz` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `quantity` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cust_latitude` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cust_longitude` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `keshavarz`, `category`, `quantity`, `unit_price`, `payment_id`, `cust_latitude`, `cust_longitude`) VALUES
(69, 157, 'سیب قرمز', 'علی احمدی', 'سبد', '1', '36000', '1676435278', '35.75312303471621', '51.25527799134944'),
(70, 154, 'سیب زمینی اعلا', 'محمد یزدانی', 'گونی 10 کیلویی', '1', '320000', '1676435278', '35.75312303471621', '51.25527799134944'),
(71, 153, 'زرد آلو دست چین شده', 'علی احمدی', 'سبد', '1', '45000', '1676435278', '35.75312303471621', '51.25527799134944'),
(72, 162, 'گوجه مرغوب', 'محسن گورکانی', 'سبد', '5', '39000', '1676435446', '35.75312303471621', '51.25527799134944'),
(73, 161, 'آویشن تازه', 'محسن گورکانی', 'کارتونی', '1', '65000', '1676435446', '35.75312303471621', '51.25527799134944');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `shipping_cost` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `shipping_cost`, `paid_amount`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(108, 24, 'محمد حسین کریمی', 'mh.karimi23179@gmail.com', '2023-02-14 20:30:46', 796000, 1056000, 'پرداخت از طریق بانک', 'تکمیل پرداخت', 'ارسال شد', '1676435446'),
(107, 24, 'محمد حسین کریمی', 'mh.karimi23179@gmail.com', '2023-02-14 20:27:58', 660000, 1061000, 'پرداخت از طریق بانک', 'تکمیل پرداخت', 'ارسال شد', '1676435278');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

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
(153, 'زرد آلو دست چین شده', 'علی احمدی', 'سبد', '', '45000', 1199, 'product-featured-153.jpeg', '<p>قیمت بر اساس هر کیلو می باشد</p>', '', '', '', 3, 1, 1, 102),
(154, 'سیب زمینی اعلا', 'محمد یزدانی', 'گونی 10 کیلویی', '450000', '320000', 119, 'product-featured-154.jpg', 'قیمت بر اساس کیلوگرم نیست دقت بفرمایید', '', '', '', 14, 1, 1, 113),
(155, 'فلفل دلمه ای رنگی', 'محمد یزدانی', 'سبد', '', '64000', 432, 'product-featured-155.jpg', '<p>هر سبد 20 عدد جا می گیرد</p>', '', '', '', 3, 1, 1, 116),
(157, 'سیب قرمز', 'علی احمدی', 'سبد', '', '36000', 1199, 'product-featured-157.jpeg', '', '', '', '', 5, 1, 1, 89),
(158, 'عسل کوهی', 'علی احمدی', 'کارتونی', '', '123000', 45, 'product-featured-158.jpeg', '<p>قیمت ها به ازای هر کیلوگرم می باشد</p>', '', '', '', 0, 1, 1, 147),
(159, 'برنج طارم', 'محمد یزدانی', 'گونی 10 کیلویی', '1500000', '1400000', 1000, 'product-featured-159.jpeg', '', '', '', '', 1, 1, 1, 134),
(160, 'خرما رطب', 'محسن گورکانی', 'کارتونی', '', '78000', 120, 'product-featured-160.jpg', '', '', '', '', 1, 1, 1, 88),
(161, 'آویشن تازه', 'محسن گورکانی', 'کارتونی', '', '65000', 79, 'product-featured-161.jpg', 'قیمت به ازای هر نیم کیلوگرم است', '', '', '', 3, 0, 1, 140),
(162, 'گوجه مرغوب', 'محسن گورکانی', 'سبد', '42000', '39000', 95, 'product-featured-162.jpeg', 'هر سبد 30 عدد جا می گیرد', '', '', '', 3, 0, 1, 111);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

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
  `featured_product_title` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `featured_product_title`, `latest_product_title`, `popular_product_title`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`) VALUES
(1, 4, 4, 5, 5, 4, 5, 8, 'محصولات ویژه', '', '', 1, 1, 1);

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
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`) VALUES
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
(8, 'ahmad', '202cb962ac59075b964b07152d234b70', 'ahmad', '', 2),
(20, 'محمد حسین کریمی', '202cb962ac59075b964b07152d234b70', 'محمد حسین کریمی(user)', '', 2),
(21, 'محمد امین کریمی', '202cb962ac59075b964b07152d234b70', 'محمد امین کریمی(user)', '', 2),
(23, 'محمد حسین کریمی', 'af252983346ec70e05fae4b3551153da', 'محمد حسین کریمی(user)', '', 2),
(24, 'علی احمدی', 'af252983346ec70e05fae4b3551153da', 'علی احمدی(keshavarz)', '', 2),
(25, 'محمد یزدانی', 'af252983346ec70e05fae4b3551153da', 'محمد یزدانی(keshavarz)', '', 2),
(26, 'محسن گورکانی', 'af252983346ec70e05fae4b3551153da', 'محسن گورکانی(keshavarz)', '', 2);

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
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

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
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

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
  MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chatroom`
--
ALTER TABLE `chatroom`
  MODIFY `chatroomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `chat_member`
--
ALTER TABLE `chat_member`
  MODIFY `chat_memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=891;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tbl_name_category`
--
ALTER TABLE `tbl_name_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_name_keshavarz`
--
ALTER TABLE `tbl_name_keshavarz`
  MODIFY `keshavarz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

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
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
