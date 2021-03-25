-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Мар 25 2021 г., 17:12
-- Версия сервера: 5.7.30-log-cll-lve
-- Версия PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `usduzuz_operator`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(10) NOT NULL,
  `message` text NOT NULL,
  `message_type` text NOT NULL,
  `date` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `time` text NOT NULL,
  `token` text NOT NULL,
  `notViewed` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `message`, `message_type`, `date`, `time`, `token`, `notViewed`) VALUES
(12, 'AssalomuAlaykum', 'user', '2021/03/12', '19:36', '998999661999.10', 0),
(14, 'qalaysiz', 'user', '2021/03/14', '14:15', '998999661999.105', 0),
(17, 'Bu ishlayaptikuuu San\'atbeeeek', 'user', '2021/03/14', '16:40', '998999661999.10', 0),
(18, 'salom', 'user', '2021/03/14', '16:41', '998996796785.50', 0),
(19, 'Assalomu alaykum', 'user', '2021/03/15', '10:26', '998999676785.62', 0),
(21, 'assalomu alaykum', 'user', '2021/03/15', '10:36', '998996796785.62', 0),
(22, 'assalomu alaykum yaxshimisiz', 'user', '2021/03/15', '10:40', '998996796785.62', 0),
(23, 'Assalomu alaykum yaxshimisiz menga ucelni tarifini ozgartirish kerak', 'user', '2021/03/15', '10:43', '998996796785.62', 0),
(24, 'valaykum assalom yaxshimisiz', 'user', '2021/03/15', '10:45', '998996796785.62', 0),
(25, 'Hi, bro! What\'s up !?', 'user', '2021/03/15', '11:02', '998999661999.10', 0),
(48, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/19', '08:42', '998999661999.105', 0),
(52, 'sdasdasd', 'operator', '2021/03/20', '10:57', '998999661999.105', 0),
(53, 'asdasdasd', 'operator', '2021/03/20', '10:57', '998999661999.105', 0),
(54, 'asdasdasd', 'operator', '2021/03/20', '10:57', '998999661999.105', 0),
(55, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '10:57', '998999661999.105', 0),
(56, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '10:57', '998999661999.105', 0),
(57, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '10:57', '998999661999.105', 0),
(58, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '10:58', '998999661999.105', 0),
(59, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '10:58', '998999661999.105', 0),
(60, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '14:07', '998999661999.105', 0),
(61, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '14:24', '998999661999.105', 0),
(62, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '14:27', '998999661999.105', 0),
(63, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '14:27', '998999661999.105', 0),
(65, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '16:28', '998999661999.105', 0),
(66, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '16:29', '998999661999.105', 0),
(67, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '16:57', '998996796785.62', 0),
(68, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '16:57', '998999676785.62', 0),
(69, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '16:58', '998999676785.62', 0),
(70, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/20', '16:59', '998996796785.62', 0),
(71, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/21', '13:22', '998999676785.62', 0),
(72, 'Men yaxshi, rahmat! O\'zinggiz qalaysiz, ishlar joyidami !?', 'operator', '2021/03/22', '17:03', '998999661999.10', 0),
(73, 'asdasdasd', 'operator', '2021/03/23', '15:24', '998999661999.105', 0),
(74, '111', 'operator', '2021/03/24', '08:28', '998999661999.105', 0),
(75, 'Assalamu Alaykum, ismim Musobek Madrimov! Men cashback bilan internet paket sotib olmoqchi edim! Shu masalada yordam berolmaysizmi !?', 'user', '2021/03/25', '13:29', '998999661999.58', 0),
(76, 'Vaaleykum Assalam hurmatli mijoz! Albatta, sizga yordam beramiz!', 'operator', '2021/03/25', '13:31', '998999661999.58', 0),
(77, 'Men 5 Gb internet paket sotib olmoqchi edim, bundan men qancha cashback ololaman !?', 'user', '2021/03/25', '13:32', '998999661999.58', 0),
(78, 'Va albatta qancha muddatda va qanday usulda qabul qilib olishim ham men uchun judayam qiziq! ', 'user', '2021/03/25', '13:35', '998999661999.58', 0),
(79, 'Va albatta qancha muddatda va qanday usulda qabul qilib olishim ham men uchun judayam qiziq!', 'operator', '2021/03/25', '15:26', '998999661999.58', 0),
(80, 'Va albatta qancha muddatda va qanday usulda qabul qilib olishim ham men uchun judayam qiziq!', 'operator', '2021/03/25', '15:26', '998999661999.58', 0),
(81, 'Va albatta qancha muddatda va qanday usulda qabul qilib olishim ham men uchun judayam qiziq!', 'operator', '2021/03/25', '15:26', '998999661999.58', 0),
(82, 'Men cashback olmoqchiman', 'user', '2021/03/25', '15:27', '998999661999.58', 0),
(83, '111', 'user', '2021/03/25', '16:58', '998999661999.58', 0),
(84, 'salommmmm', 'operator', '2021/03/25', '16:59', '998999661999.58', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `menutype`
--

CREATE TABLE `menutype` (
  `id` int(11) NOT NULL,
  `nomi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `operator`
--

CREATE TABLE `operator` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `operator_tel` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `operator`
--

INSERT INTO `operator` (`id`, `name`, `operator_tel`) VALUES
(1, 'Perfectum', '98 305 11 1'),
(2, 'Beeline', '0611'),
(3, 'Mobiuz', '0890'),
(4, 'Uzmobile', '1099'),
(5, 'Ucell', '8123');

-- --------------------------------------------------------

--
-- Структура таблицы `paket`
--

CREATE TABLE `paket` (
  `id` int(11) NOT NULL,
  `operator_id` int(255) NOT NULL,
  `nomi` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `turi_id` int(255) NOT NULL,
  `usd_code` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `paket`
--

INSERT INTO `paket` (`id`, `operator_id`, `nomi`, `description`, `turi_id`, `usd_code`) VALUES
(1, 2, '260 MB', 'To\'plam narxi 13 470 so\'m\r\nBerilgan trafik hajmi 260 Mb + 78 Mb BONUS\r\nAmal qilish muddati 30 kun', 3, 'Y110Y0Y03R'),
(2, 2, '800 Mb', 'To\'plam narxi 23 470 so\'m\r\nBerilgan trafik hajmi 800 Mb + 240 Mb BONUS\r\nAmal qilish muddati 3 kun', 3, 'Y110Y0Y04R'),
(3, 2, '1500 Mb', 'To\'plam narxi 31 575 so\'m\r\nBerilgan trafik hajmi 1500 Mb + 450 Mb BONUS\r\nAmal qilish muddati 3 kun', 3, 'Y110Y0Y05R'),
(4, 2, '4000 MB', 'To\'plam narxi 54 730 so\'m\r\nBerilgan trafik hajmi 4000 Mb + 1200 Mb BONUS\r\nAmal qilish muddati 30 kun', 3, 'Y110Y0Y03R'),
(5, 2, '6000 MB', 'To\'plam narxi 84 200 so\'m\r\nBerilgan trafik hajmi 6000 Mb + 1800 Mb BONUS\r\nAmal qilish muddati 30 kun', 3, 'Y110Y0Y08R'),
(96, 2, '100 MB', 'To\'plam narxi 6 900 Berilgan Trafik hajmi 100 MB Amal qilish muddati 7 kun', 4, 'Y110Y0Y18R'),
(97, 2, '10 MB + 100 MB TAS-IX', 'To\'plam narxi 900 Berilgan Trafik hajmi 10 MB + 100 MB TAS-IX Amal qilish muddati 1 kun', 5, 'Y110Y1Y14R'),
(108, 1, '75 MB', 'To\'plam narxi 7 500 so\'m\r\nBerilgan trafik hajmi 75 MB\r\nAmal qilish muddati 30 kun', 1, '7Y7Y75'),
(109, 1, '75 MB+', 'To\'plam narxi 7500 so\'m \r\nBerilgan trafik hajmi 75 MB\r\nAmal qilish muddati\r\n\"INTERNET-PAKET + HAR OYGI ABONENT TO\'LOVINI AVTOMATIK RAVISHDA O\'RNATILISHI\"', 2, '7Y3Y75'),
(110, 5, 'TO\'PLAM 100 MB', 'To\'plam narxi 8 900 so\'m\r\nBerilgan trafik hajmi 100 MB\r\nAmal qilish muddati 31 kun', 17, 'Y555Y3Y1Y1R'),
(111, 5, 'Haftalik 80 MB', 'To\'plam narxi 8 400 so\'m\r\nBerilgan trafik hajmi 80 MB\r\nAmal qilish muddati 7 kun', 18, 'Y555Y2Y1Y1R'),
(112, 5, 'TO\'PLAM 5 MB', 'To\'plam narxi 390 so\'m\r\nBerilgan trafik hajmi 5 MB\r\nAmal qilish muddati 1 kun\r\nKunlik to\'plamlarning asosiy ustunligi shundaki, ishlatilmagan trafik qoldig\'i keyingi kun trafigiga qo\'shilib boraveradi. Xizmat bekor qilingan holda yig\'ilgan internet trafik qoldig\'i bekor qilinadi.', 19, 'Y555Y1Y1Y1R'),
(124, 0, '', '', 0, ''),
(125, 0, '', '', 0, ''),
(127, 0, '', '', 0, ''),
(149, 0, '1000 MB', '', 0, ''),
(170, 3, '50 MB     Kunlik ', 'To`plam narxi 4000 so`m.\r\nBerilgan trafik hajmi 50 MB\r\nAmal qilish muddati 1 sutka.\r\nUlanish:\r\n*171*204*50*010400015*1#', 9, 'Y171Y204Y50Y010400015R'),
(171, 3, '100 MB     Kunlik', 'To`plam narxi 6000 so`m.\r\nBerilgan trafik hajmi 100 MB\r\nAmal qilish muddati 1 sutka.\r\nUlanish:\r\n*171*204*100*010400015*1#', 9, 'Y171Y204Y100Y010400015R'),
(172, 3, '500 MB     Kunlik', 'To`plam narxi 8400 so`m.\r\nBerilgan trafik hajmi 500 MB\r\nAmal qilish muddati 1 sutka.\r\nUlanish:\r\n*171*204*500*010400015*1#', 9, 'Y171Y204Y500Y010400015R'),
(173, 3, '1000 MB     Kunlik', 'To`plam narxi 10500 so`m.\r\nBerilgan trafik hajmi 1000 MB\r\nAmal qilish muddati 1 sutka.\r\nUlanish:\r\n*171*204*1000*010400015*1#', 9, 'Y171Y204Y1000Y010400015R'),
(174, 3, '2000 MB     Kunlik', 'To`plam narxi 14500 so`m.\r\nBerilgan trafik hajmi 2000 MB\r\nAmal qilish muddati 1 sutka.\r\nUlanish:\r\n*171*204*2000*010400015*1#', 9, 'Y171Y204Y2000Y010400015R'),
(175, 3, '3000 MB     Kunlik', 'To`plam narxi 21000 so`m.\r\nBerilgan trafik hajmi 3000 MB\r\nAmal qilish muddati 1 sutka.\r\nUlanish:\r\n*171*204*3000*010400015*1#', 9, 'Y171Y204Y3000Y010400015R'),
(176, 3, '5000 MB     Kunlik', 'To`plam narxi 25000 so`m.\r\nBerilgan trafik hajmi 5000 MB\r\nAmal qilish muddati 1 sutka.\r\nUlanish:\r\n*171*204*5000*010400015*1#', 9, 'Y171Y204Y5000Y010400015R'),
(177, 3, '10000 MB     Kunlik', 'To`plam narxi 37000 so`m.\r\nBerilgan trafik hajmi 10000 MB\r\nAmal qilish muddati 1 sutka.\r\nUlanish:\r\n*171*204*10000*010400015*1#', 9, 'Y171Y204Y10000Y010400015R'),
(179, 3, 'ONNET 300  MB', 'To`plam narxi 12500 so`m.\r\nIkkinchi va keyingi oylardagi narxi 11250 so`m.\r\nBerilgan trafik hajmi 300 MB\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*202*300*010400015*1#', 10, 'Y171Y202Y300Y010400015R'),
(180, 3, 'ONNET 500  MB', 'To`plam narxi 16500 so`m.\r\nIkkinchi va keyingi oylardagi narxi 14850 so`m.\r\nBerilgan trafik hajmi 500 MB\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*202*500*010400015*1#', 10, 'Y171Y202Y500Y010400015R'),
(181, 3, 'ONNET 1000  MB', 'To`plam narxi 22000 so`m.\r\nIkkinchi va keyingi oylardagi narxi 19800 so`m.\r\nBerilgan trafik hajmi 1000 MB\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*202*1000*010400015*1#', 10, 'Y171Y202Y1000Y010400015R'),
(182, 3, 'ONNET 2000  MB', 'To`plam narxi 33000 so`m.\r\nIkkinchi va keyingi oylardagi narxi 29700 so`m.\r\nBerilgan trafik hajmi 2000 MB\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*202*2000*010400015*1#', 10, 'Y171Y202Y2000Y010400015R'),
(183, 3, 'ONNET 3000  MB', 'To`plam narxi 45000 so`m.\r\nIkkinchi va keyingi oylardagi narxi 40500 so`m.\r\nBerilgan trafik hajmi 3000 MB\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*202*3000*010400015*1#', 10, 'Y171Y202Y3000Y010400015R'),
(184, 3, 'ONNET 5000  MB', 'To`plam narxi 56000 so`m.\r\nIkkinchi va keyingi oylardagi narxi 50400 so`m.\r\nBerilgan trafik hajmi 5000 MB\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*202*5000*010400015*1#', 10, 'Y171Y202Y5000Y010400015R'),
(185, 3, 'ONNET 10000  MB', 'To`plam narxi 84000 so`m.\r\nIkkinchi va keyingi oylardagi narxi 75600 so`m.\r\nBerilgan trafik hajmi 10000 MB\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*202*10000*010400015*1#', 10, 'Y171Y202Y10000Y010400015R'),
(186, 3, 'ONNET 20000  MB', 'To`plam narxi 150000 so`m.\r\nIkkinchi va keyingi oylardagi narxi 135000 so`m.\r\nBerilgan trafik hajmi 20000 MB\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*202*20000*010400015*1#', 10, 'Y171Y202Y20000Y010400015R'),
(187, 3, 'ONNET 30000  MB', 'To`plam narxi 164000 so`m.\r\nIkkinchi va keyingi oylardagi narxi 147600 so`m.\r\nBerilgan trafik hajmi 30000 MB\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*202*30000*010400015*1#', 10, 'Y171Y202Y30000Y010400015R'),
(188, 3, 'ONNET 50000  MB', 'To`plam narxi 252000 so`m.\r\nIkkinchi va keyingi oylardagi narxi 226800 so`m.\r\nBerilgan trafik hajmi 50000 MB\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*202*50000*010400015*1#', 10, 'Y171Y202Y50000Y010400015R'),
(190, 3, '300 MB', 'To`plam narxi 12500 so`m.\r\n Berilgan trafik hajmi 300 MB.\r\n Amal qilish muddati 30 kun.\r\n Ulanish: \r\n*171*019*1*010400015*1#', 6, 'Y171Y019Y1Y010400015R'),
(191, 3, '500 MB', 'To`plam narxi 16500 so`m.\r\n Berilgan trafik hajmi 500 MB.\r\n Amal qilish muddati 30 kun.\r\n Ulanish: \r\n*171*019*7*010400015*1#', 6, 'Y171Y019Y7Y010400015R'),
(192, 3, '1000 MB', 'To`plam narxi 22000 so`m.\r\n Berilgan trafik hajmi 1000 MB.\r\n Amal qilish muddati 30 kun.\r\n Ulanish: \r\n*171*019*2*010400015*1#', 6, 'Y171Y019Y2Y010400015R'),
(193, 3, '2000 MB', 'To`plam narxi 33000 so`m.\r\n Berilgan trafik hajmi 2000 MB.\r\n Amal qilish muddati 30 kun.\r\n Ulanish: \r\n*171*019*5*010400015*1#', 6, 'Y171Y019Y5Y010400015R'),
(194, 3, '3000 MB', 'To`plam narxi 45000 so`m.\r\n Berilgan trafik hajmi 3000 MB.\r\n Amal qilish muddati 30 kun.\r\n Ulanish: \r\n*171*019*3*010400015*1#', 6, 'Y171Y019Y3Y010400015R'),
(195, 3, '5000 MB', 'To`plam narxi 56000 so`m.\r\n Berilgan trafik hajmi 5000 MB.\r\n Amal qilish muddati 30 kun.\r\n Ulanish: \r\n*171*019*4*010400015*1#', 6, 'Y171Y019Y4Y010400015R'),
(196, 3, '10000 MB', 'To`plam narxi 84000 so`m.\r\n Berilgan trafik hajmi 10000 MB.\r\n Amal qilish muddati 30 kun.\r\n Ulanish: \r\n*171*019*6*010400015*1#', 6, 'Y171Y019Y6Y010400015R'),
(197, 3, '20000 MB', 'To`plam narxi 150000 so`m.\r\n Berilgan trafik hajmi 20000 MB.\r\n Amal qilish muddati 30 kun.\r\n Ulanish: \r\n*171*019*8*010400015*1#', 6, 'Y171Y019Y8Y010400015R'),
(198, 3, '30000 MB', 'To`plam narxi 164000 so`m.\r\n Berilgan trafik hajmi 30000 MB.\r\n Amal qilish muddati 30 kun.\r\n Ulanish: \r\n*171*019*9*010400015*1#', 6, 'Y171Y019Y9Y010400015R'),
(199, 3, '50000 MB', 'To`plam narxi 252000 so`m.\r\n Berilgan trafik hajmi 50000 MB.\r\n Amal qilish muddati 30 kun.\r\n Ulanish: \r\n*171*019*10*010400015*1#', 6, 'Y171Y019Y10Y010400015R'),
(200, 3, '1000 MB                         Tungi to`plam', 'To`plam narxi 5000 so`m.\r\nBerilgan trafik hajmi 1000 MB.\r\nAmal qilish muddati 30 kun.\r\nTungi internet-to`plamni harid qilib,\r\n00:00dan 08:00gacha internetdan arzonlashgan narhlarda foydalanishingiz mumkin.\r\nUlanish:\r\n*171*203*1000*010400015*1#', 7, 'Y171Y203Y1000Y010400015R'),
(201, 3, '2000 MB                         Tungi to`plam', 'To`plam narxi 9500 so`m.\r\nBerilgan trafik hajmi 2000 MB.\r\nAmal qilish muddati 30 kun.\r\nTungi internet-to`plamni harid qilib,\r\n00:00dan 08:00gacha internetdan arzonlashgan narhlarda foydalanishingiz mumkin.\r\nUlanish:\r\n*171*203*2000*010400015*1#', 7, 'Y171Y203Y2000Y010400015R'),
(202, 3, '3000 MB                         Tungi to`plam', 'To`plam narxi 12500 so`m.\r\nBerilgan trafik hajmi 3000 MB.\r\nAmal qilish muddati 30 kun.\r\nTungi internet-to`plamni harid qilib,\r\n00:00dan 08:00gacha internetdan arzonlashgan narhlarda foydalanishingiz mumkin.\r\nUlanish:\r\n*171*203*3000*010400015*1#', 7, 'Y171Y203Y3000Y010400015R'),
(203, 3, '5000 MB                         Tungi to`plam', 'To`plam narxi 17000 so`m.\r\nBerilgan trafik hajmi 5000 MB.\r\nAmal qilish muddati 30 kun.\r\nTungi internet-to`plamni harid qilib,\r\n00:00dan 08:00gacha internetdan arzonlashgan narhlarda foydalanishingiz mumkin.\r\nUlanish:\r\n*171*203*5000*010400015*1#', 7, 'Y171Y203Y5000Y010400015R'),
(204, 3, '10000 MB                        Tungi to`plam', 'To`plam narxi 22000 so`m.\r\nBerilgan trafik hajmi 10000 MB.\r\nAmal qilish muddati 30 kun.\r\nTungi internet-to`plamni harid qilib,\r\n00:00dan 08:00gacha internetdan arzonlashgan narhlarda foydalanishingiz mumkin.\r\nUlanish:\r\n*171*203*10000*010400015*1#', 7, 'Y171Y203Y10000Y010400015R'),
(205, 3, '20000 MB                             Tungi to`plam', 'To`plam narxi 33000 so`m.\r\nBerilgan trafik hajmi 20000 MB.\r\nAmal qilish muddati 30 kun.\r\nTungi internet-to`plamni harid qilib,\r\n00:00dan 08:00gacha internetdan arzonlashgan narhlarda foydalanishingiz mumkin.\r\nUlanish:\r\n*171*203*20000*010400015*1#', 7, 'Y171Y203Y20000Y010400015R'),
(206, 3, '50000 MB                       Tungi to`plam', 'To`plam narxi 44000 so`m.\r\nBerilgan trafik hajmi 50000 MB.\r\nAmal qilish muddati 30 kun.\r\nTungi internet-to`plamni harid qilib,\r\n00:00dan 08:00gacha internetdan arzonlashgan narhlarda foydalanishingiz mumkin.\r\nUlanish:\r\n*171*203*50000*010400015*1#', 7, 'Y171Y203Y5000Y010400015R'),
(207, 3, 'CHEKSIZ  TUNGI DRIVE 1', 'To`plam narxi 10000 so`m.\r\nBerilgan trafik hajmi Cheksiz.\r\nAmal qilish muddati 1 sutka.\r\nHar tun soat 00:00dan 08:00gacha\r\ninternetdan cheksiz foydalanish imkonini beradi Ulanish:\r\n *171*200*1*010400015*1#', 8, 'Y171Y200Y1Y010400015Y1R'),
(208, 3, 'CHEKSIZ  TUNGI DRIVE 7', 'To`plam narxi 45000 so`m.\r\nBerilgan trafik hajmi Cheksiz.\r\nAmal qilish muddati 7 sutka.\r\nHar tun soat 00:00dan 08:00gacha\r\ninternetdan cheksiz foydalanish imkonini beradi Ulanish:\r\n *171*200*7*010400015*1#', 8, 'Y171Y200Y7Y010400015Y1R'),
(209, 3, 'CHEKSIZ  TUNGI DRIVE 30', 'To`plam narxi 120000 so`m.\r\nBerilgan trafik hajmi Cheksiz.\r\nAmal qilish muddati 30 sutka.\r\nHar tun soat 00:00dan 08:00gacha\r\ninternetdan cheksiz foydalanish imkonini beradi Ulanish:\r\n *171*200*30*010400015*1#', 8, 'Y171Y200Y30Y010400015R'),
(210, 3, '500 MB', 'To\'plam narxi 10 000 so\'m.\r\nBerilgan trafik hajmi 500 MB\r\nAmal qilish muddati 30 kun.\r\nFaollashtirish:\r\n*147*10072*14953#', 11, 'Y147Y10072Y14953#'),
(211, 3, '1500 MB', 'To\'plam narxi 15 000 so\'m.\r\nBerilgan trafik hajmi 1500 MB\r\nAmal qilish muddati 30 kun.\r\nFaollashtirish:\r\n*147*10073*14953#', 11, 'Y147Y10073Y14953#'),
(212, 3, '3000 MB', 'To\'plam narxi 24 000 so\'m.\r\nBerilgan trafik hajmi 3000 MB\r\nAmal qilish muddati 30 kun.\r\nFaollashtirish:\r\n*147*10074*14953#', 11, ''),
(213, 3, '5000 MB', 'To\'plam narxi 32 000 so\'m.\r\nBerilgan trafik hajmi 5000 MB\r\nAmal qilish muddati 30 kun.\r\nFaollashtirish:\r\n*147*10075*14953#', 11, 'Y147Y10075Y14953#'),
(214, 3, '8000 MB', 'To\'plam narxi 41 000 so\'m.\r\nBerilgan trafik hajmi 8000 MB\r\nAmal qilish muddati 30 kun.\r\nFaollashtirish:\r\n*147*10076*14953#', 11, 'Y147Y10076Y14953#'),
(215, 3, '12000 MB', 'To\'plam narxi 50 000 so\'m.\r\nBerilgan trafik hajmi 12000 MB\r\nAmal qilish muddati 30 kun.\r\nFaollashtirish:\r\n*147*10077*14953#', 11, 'Y147Y10077Y14953#'),
(217, 3, '20000 MB', 'To\'plam narxi 65 000 so\'m.\r\nBerilgan trafik hajmi 20000 MB\r\nAmal qilish muddati 30 kun.\r\n Faollashtirish:\r\n *147*10078*14953#', 11, 'Y147Y10078Y14953#'),
(218, 3, '30000 MB', 'To\'plam narxi 75 000 so\'m.\r\nBerilgan trafik hajmi 30000 MB\r\nAmal qilish muddati 30 kun.\r\n Faollashtirish:\r\n *147*10079*14953#', 11, 'Y147Y10079Y14953#'),
(219, 3, '50000 MB', 'To\'plam narxi 85 000 so\'m.\r\nBerilgan trafik hajmi 50000 MB\r\nAmal qilish muddati 30 kun.\r\n Faollashtirish:\r\n *147*10080*14953#', 11, 'Y147Y10080Y14953#'),
(220, 3, '75000 MB', 'To\'plam narxi 110 000 so\'m.\r\nBerilgan trafik hajmi 75000 MB\r\nAmal qilish muddati 30 kun.\r\nFaollashtirish:\r\n*147*10150*14953#', 11, 'Y147Y10150Y14953#'),
(221, 3, '100 MB', 'To\'plam narxi 3000 so\'m.\r\nBerilgan trafik hajmi 100 MB\r\nAmal qilish muddati 1 kun.\r\nFaollashtirish:\r\n*147*10043*14953#', 12, 'Y147Y10043Y14953R'),
(222, 3, '300 MB', 'To\'plam narxi 6000 so\'m.\r\nBerilgan trafik hajmi 300 MB\r\nAmal qilish muddati 1 kun.\r\nFaollashtirish:\r\n*147*10050*14953#', 12, 'Y147Y10050Y14953R'),
(223, 3, '600 MB', 'To\'plam narxi 9000 so\'m.\r\nBerilgan trafik hajmi 600 MB\r\nAmal qilish muddati 1 kun.\r\nFaollashtirish:\r\n*147*10051*14953#', 12, 'Y147Y10051Y14953R'),
(224, 3, '12000 MB   Tun', 'To\'plam narxi 6300 so\'m.\r\nBerilgan trafik hajmi 12000 MB\r\nAmal qilish muddati 1 tun (01:00-07:59)\r\nFaollashtirish:\r\n*111*2*18*1#', 13, 'Y111Y2Y18Y1R'),
(225, 3, '12000 MB   7 Tun', 'To\'plam narxi 31500 so\'m.\r\nBerilgan trafik hajmi 12000 MB\r\nAmal qilish muddati 7 tun (01:00-07:59)\r\nFaollashtirish:\r\n*111*2*18*3#', 13, 'Y111Y2Y18Y3R'),
(226, 3, '12000 MB   30 Tun', 'To\'plam narxi 99000 so\'m.\r\nBerilgan trafik hajmi 12000 MB\r\nAmal qilish muddati 30 tun (01:00-07:59)\r\nFaollashtirish:\r\n*111*2*18*2#', 13, 'Y111Y2Y18Y2R'),
(227, 3, '2048 MB   TAS-IX 2 GB', 'To\'plam narxi 15000 so\'m.\r\nBerilgan trafik hajmi 2048 MB\r\nAmal qilish muddati 90 kun \r\nFaollashtirish:\r\n*147*10068*14953#', 14, 'Y147Y10068Y14953R'),
(228, 3, '10240 MB  TAS-IX 10 GB', 'To\'plam narxi 40000 so\'m.\r\nBerilgan trafik hajmi 10240 MB\r\nAmal qilish muddati 90 kun \r\nFaollashtirish:\r\n*147*10069*14953#', 14, 'Y147Y10069Y14953R'),
(229, 3, '15360 MB TAS-IX 15 GB', 'To\'plam narxi 50000 so\'m.\r\nBerilgan trafik hajmi 15360 MB\r\nAmal qilish muddati 90 kun \r\nFaollashtirish:\r\n*147*10070*14953#', 14, 'Y147Y10070Y14953#'),
(230, 3, '3000 MB  NON-STOP', 'To\'plam narxi 24000 so\'m.\r\nIkkinchi va keyingi oylardagi narxi 21 600 so\'m.\r\nBerilgan trafik hajmi 3000 MB\r\nAmal qilish muddati har 30 kun.\r\nFaollashtirish: *147*10055*14953#\r\nO`chirish: *111*1*14*1*2#\r\n', 15, 'Y147Y10055Y14953R'),
(231, 3, '5000 MB  NON-STOP', 'To\'plam narxi 32000 so\'m.\r\nIkkinchi va keyingi oylardagi narxi 28800 so\'m.\r\nBerilgan trafik hajmi 5000 MB\r\nAmal qilish muddati har 30 kun.\r\nFaollashtirish: *147*10056*14953#\r\nO`chirish: *111*1*14*2*2#', 15, 'Y147Y10056Y14953R'),
(232, 3, '8000 MB  NON-STOP', 'To\'plam narxi 41000 so\'m.\r\nIkkinchi va keyingi oylardagi narxi 36900 so\'m.\r\nBerilgan trafik hajmi 8000 MB\r\nAmal qilish muddati har 30 kun.\r\nFaollashtirish: *147*10057*14953#\r\nO`chirish: *111*1*14*3*2#', 15, 'Y147Y10057Y14953R'),
(233, 3, '12000 MB  NON-STOP', 'To\'plam narxi 50000 so\'m.\r\nIkkinchi va keyingi oylardagi narxi 45000 so\'m.\r\nBerilgan trafik hajmi 12000 MB\r\nAmal qilish muddati har 30 kun.\r\nFaollashtirish: *147*10151*14953#\r\nO`chirish: *111*1*14*4*2#', 15, 'Y147Y10151Y14953R'),
(234, 3, '20000 MB  NON-STOP', 'To\'plam narxi 65000 so\'m.\r\nIkkinchi va keyingi oylardagi narxi 58500 so\'m.\r\nBerilgan trafik hajmi 20000 MB\r\nAmal qilish muddati har 30 kun.\r\nFaollashtirish: *147*10152*14953#\r\nO`chirish: *111*1*14*5*2#', 15, 'Y147Y10152Y14953R'),
(235, 3, '30000 MB  NON-STOP', 'To\'plam narxi 75000 so\'m.\r\nIkkinchi va keyingi oylardagi narxi 67500 so\'m.\r\nBerilgan trafik hajmi 30000 MB\r\nAmal qilish muddati har 30 kun.\r\nFaollashtirish: *147*10153*14953#\r\nO`chirish: *111*1*14*6*2#', 15, 'Y147Y10153Y14953R'),
(236, 3, '50000 MB  NON-STOP', 'To\'plam narxi 85000 so\'m.\r\nIkkinchi va keyingi oylardagi narxi 76500 so\'m.\r\nBerilgan trafik hajmi 50000 MB\r\nAmal qilish muddati har 30 kun.\r\nFaollashtirish: *147*10154*14953#\r\nO`chirish: *111*1*14*7*2#', 15, 'Y147Y10154Y14953R'),
(237, 3, '100 MB', 'To\'plam narxi 6310 so`m.\r\nBerilgan trafik hajmi 100 MB \r\nAmal qilish muddati 30 kun.\r\nFaollashtirish: \r\n*147*10129*14953#', 16, 'Y147Y10129Y14953R'),
(238, 3, '500 MB', 'To\'plam narxi 21050 so`m.\r\nBerilgan trafik hajmi 500 MB \r\nAmal qilish muddati 30 kun.\r\nFaollashtirish: \r\n*147*10133*14953#', 16, 'Y147Y10133Y14953R'),
(239, 3, '1000 MB', 'To\'plam narxi 27360 so`m.\r\nBerilgan trafik hajmi 1000 MB \r\nAmal qilish muddati 30 kun.\r\nFaollashtirish: \r\n*147*10132*14953#', 16, 'Y147Y10132Y14953#'),
(240, 3, '2000 MB', 'To\'plam narxi 46310 so`m.\r\nBerilgan trafik hajmi 2000 MB \r\nAmal qilish muddati 30 kun.\r\nFaollashtirish: \r\n*147*10131*14953#', 16, 'Y147Y10131Y14953R'),
(241, 3, '4000 MB', 'To\'plam narxi 71570 so`m.\r\nBerilgan trafik hajmi 4000 MB \r\nAmal qilish muddati 30 kun.\r\nFaollashtirish: \r\n*147*10130*14953#', 16, 'Y147Y10130Y14953R');

-- --------------------------------------------------------

--
-- Структура таблицы `paket_daqiqa`
--

CREATE TABLE `paket_daqiqa` (
  `id` int(11) NOT NULL,
  `nomi` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `usd_code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `operator_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `paket_daqiqa`
--

INSERT INTO `paket_daqiqa` (`id`, `nomi`, `description`, `usd_code`, `operator_id`) VALUES
(2, 'Exstra 200', 'To\'plam narxi: 10 000 som\r\nBerilgan daqiqalar soni: 200\r\nMobil internet hajmi: 200 mb\r\nAmal qilish muddati: 30kun\r\nUlanish: *110*500#', 'Y110Y500R', 2),
(4, 'Exstra 400', 'To\'plam narxi: 18 000 som\r\nBerilgan daqiqalar soni: 400\r\nMobil internet hajmi: 400 mb\r\nAmal qilish muddati: 30kun\r\nUlanish: *110*501#', 'Y110Y501R', 2),
(5, 'Exstra 600', 'To\'plam narxi: 25 000 som\r\nBerilgan daqiqalar soni: 600\r\nMobil internet hajmi: 600 mb\r\nAmal qilish muddati: 30kun\r\nUlanish: *110*502#', 'Y110Y502R', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `paket_sms`
--

CREATE TABLE `paket_sms` (
  `id` int(11) NOT NULL,
  `nomi` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `usd_code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `operator_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `paket_sms`
--

INSERT INTO `paket_sms` (`id`, `nomi`, `description`, `usd_code`, `operator_id`) VALUES
(1, 'SMS 100', 'To\'plam narxi 10104 som', 'Y171Y018Y1Y01300153R', 0),
(3, '100 sms paket', 'Ulanish narxi 5 262', 'Y110Y044R', 2),
(8, 'SMS 100', 'To`plam narxi 4210 so`m.\r\nBerilgan smslar soni 100.\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*018*1*010400015*1#', 'Y171Y018Y1Y010400015#', 3),
(9, 'SMS 300', 'To`plam narxi 10104 so`m.\r\nBerilgan smslar soni 300.\r\nAmal qilish muddati 30 kun.\r\nUlanish:\r\n*171*018*2*010400015*1#', 'Y171Y018Y2Y010400015#', 3),
(10, 'SMS-ONNET', 'SMS-ONNET xizmatini yoqing va har kuni 50 SMS ga ega bo`ling!\r\nKunlik abonent to`lovi 421 so`m.\r\nXizmatni o`chirish kodi *204*0#\r\nSMS qoldig`ini tekshirish *204#\r\nXizmatdan Farg`ona,Andijon,Namangan,viloyatlari abonentlari foydalanishlari mumkin.\r\nUlanish:\r\n*171*204*50*010400015#', 'Y171Y204Y50Y010400015R', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `paket_turi`
--

CREATE TABLE `paket_turi` (
  `id` int(11) NOT NULL,
  `nomi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `operator_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `paket_turi`
--

INSERT INTO `paket_turi` (`id`, `nomi`, `operator_id`) VALUES
(1, '30 kunlik internet paketlar', 0),
(2, 'INTERNET-PAKETLAR', 0),
(3, 'Oylik internet paketlar', 0),
(4, 'Haftalik internet paketlar', 0),
(5, 'Kunlik internet paketlar', 0),
(6, 'Oylik', 0),
(7, 'Tungi', 0),
(8, 'Tungi DRIVE VIP', 0),
(9, 'Kunlik', 0),
(10, 'ONNET', 0),
(11, 'Oylik paketlar', 0),
(12, 'Kunlik paketlar', 0),
(13, 'Tungi internet', 0),
(14, 'Tas-IX uchun internet paketlar', 0),
(15, 'Internet non-stop', 0),
(16, '\"Constructor\" TR abonentlari uchun', 0),
(17, 'Oylik to\'plamlar', 0),
(18, 'Haftalik to\'plamlar', 0),
(19, 'Kunlik to\'plamlar', 0),
(20, 'Kunlik to\'plamlar', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tarif`
--

CREATE TABLE `tarif` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name_rus` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `description_rus` text CHARACTER SET utf8 NOT NULL,
  `usd` varchar(255) CHARACTER SET utf8 NOT NULL,
  `operator_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tarif`
--

INSERT INTO `tarif` (`id`, `name`, `name_rus`, `description`, `description_rus`, `usd`, `operator_id`) VALUES
(36, '\"MOBI 20\"', '', 'Abonent to`lovi oyiga 20000 so`m.\r\nO`zbekiston bo`yicha 500 daqiqa.\r\nInternet trafik 1500 MB.\r\nO`zbekiston bo`yicha 500 SMS.\r\nTarif o`zgartirish:\r\n*171*120*010400015*1#', '', '', 3),
(39, '\"MOBI 30\"', '', 'Abonent to`lovi oyiga 30000 so`m.\r\nO`zbekiston bo`yicha 1000 daqiqa.\r\nInternet trafik 4000 MB.\r\nO`zbekiston bo`yicha 1000 SMS.\r\nTarif o`zgartirish:\r\n*171*128*010400015*1#', '', '', 3),
(40, '\"MOBI 40\"', '', 'Abonent to`lovi oyiga 40000 so`m.\r\nO`zbekiston bo`yicha 1200 daqiqa.\r\nInternet trafik 6000 MB.\r\nO`zbekiston bo`yicha 1200 SMS.\r\nTarif o`zgartirish:\r\n*171*122*010400015*1#', '', '', 3),
(41, '\"MOBI 50\"', '', 'Abonent to`lovi oyiga 50000 so`m.\r\nO`zbekiston bo`yicha 1500 daqiqa.\r\nInternet trafik 8000 MB.\r\nO`zbekiston bo`yicha 1500 SMS.\r\nTarif o`zgartirish:\r\n*171*129*010400015*1#', '', '', 3),
(42, '\"YORQIN\"', '', 'Abonent to`lovi oyiga 60000 so`m.\r\nO`zbekiston bo`yicha 1000 daqiqa.\r\nInternet trafik 10000 MB.\r\nO`zbekiston bo`yicha 1000 SMS.\r\nTarif o`zgartirish:\r\n*171*113*010400015*1#', '', '', 3),
(43, '\"MOBI 70\"', '', 'Abonent to`lovi oyiga 70000 so`m.\r\nO`zbekiston bo`yicha 2500 daqiqa.\r\nInternet trafik 12000 MB.\r\nO`zbekiston bo`yicha 2500 SMS.\r\nTarif o`zgartirish:\r\n*171*131*010400015*1#', '', '', 3),
(44, '\"MOBI 90\"', '', 'Abonent to`lovi oyiga 90000 so`m.\r\nO`zbekiston bo`yicha 3500 daqiqa.\r\nInternet trafik 18000 MB.\r\nO`zbekiston bo`yicha 3500 SMS.\r\nTarif o`zgartirish:\r\n*171*132*010400015*1#', '', '', 3),
(45, '\"MOBI 110\"', '', 'Abonent to`lovi oyiga 110000 so`m.\r\nO`zbekiston bo`yicha cheksiz daqiqa.\r\nInternet trafik 25000 MB.\r\nO`zbekiston bo`yicha 5000 SMS.\r\nTarif o`zgartirish:\r\n*171*133*010400015*1#', '', '', 3),
(46, '\"MOBI 150\"', '', 'Abonent to`lovi oyiga 150000 so`m.\r\nO`zbekiston bo`yicha cheksiz daqiqa.\r\nInternet trafik 50000 MB.\r\nO`zbekiston bo`yicha 10000 SMS.\r\nTarif o`zgartirish:\r\n*171*134*010400015*1#', '', '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `usd`
--

CREATE TABLE `usd` (
  `id` int(11) NOT NULL,
  `operator_id` int(10) NOT NULL,
  `usd_kod` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `usd`
--

INSERT INTO `usd` (`id`, `operator_id`, `usd_kod`, `description`) VALUES
(1, 2, 'Y102R', 'Balansni tekshirish'),
(2, 2, 'Y141R', '\"Ishonchli to\'lov\" xizmati'),
(3, 2, 'Y5R', '\"Perezagruska\" xizmatini ulash'),
(4, 2, 'Y148R', 'Mening raqamim'),
(5, 2, 'Y103R', 'Mb qoldig\'ini tekshirish'),
(6, 2, 'Y105R', 'Sms qoldig\'ini tekshirish'),
(7, 2, 'Y106R', 'Daqiqalar qoldig\'ini tekshirish'),
(8, 2, 'Y115R', 'Barcha xizmatlarni ochirish'),
(9, 4, 'Y107R', 'Limit qoldig\'i va balansni tekshirish'),
(10, 4, 'Y100Y4R', 'Mening raqamim'),
(11, 4, 'Y100Y2R', 'Va sms limiti haqida ma\'lumot'),
(12, 4, 'Y100Y5R', 'Mening raqamlarim'),
(13, 4, 'Y555R', 'Restart xizmatini muvaffaqiyatli faollashtirganda'),
(14, 4, 'Y111Y2Y7Y1R', '4G LTE ni yoqish'),
(15, 5, 'Y100R', 'Balansni tekshirish'),
(16, 5, 'Y977Y1Y1YR', 'Sizga qo\'ng\'iroq qilishdi xizmati'),
(17, 5, 'Y911R', 'Mobil avans'),
(18, 5, 'Y900R', 'Yagona hisob'),
(19, 5, 'Y450R', 'Mening raqamim'),
(20, 5, 'Y107R', 'Internet to\'plami qoldig\'i'),
(30, 3, 'Y100R', 'BALANSNI TEKSHIRISH'),
(31, 3, 'Y102R', 'INTERNET MB QOLDIG`INI TEKSHIRISH'),
(32, 3, 'Y103R', 'DAQIQA QOLDIG`INI TEKSHIRISH'),
(33, 3, 'Y104R', 'SMS QOLDIG`INI TEKSHIRISH'),
(34, 3, 'Y140R', 'MENING XISMATLARIM'),
(35, 3, 'Y150R', 'MENING RAGAMIM'),
(36, 3, 'Y151R', 'MENING RAGAMLARIM'),
(37, 3, 'Y111Y015R', 'OXIRGI TO`LOV'),
(38, 3, 'Y111Y025R', 'MENING XARAJATLARIM'),
(39, 3, 'Y111Y32R', 'QARS OLISH'),
(40, 3, 'Y111Y0271R', 'REKLAMANI TAQIQLASH'),
(41, 3, 'YR06R', 'IMEI ANIQLASH'),
(42, 3, 'Y102Y0R', 'BONUSLI INTERNET TO`PLAMLARNI TEKSHIRISH'),
(43, 3, 'Y111Y0140R', 'GOOD`OK XIZMATINI O`CHIRISH'),
(44, 3, 'Y43R', 'KUTIB TURISHNI FAOLLASHTIRISH'),
(45, 3, 'Y222Y1R', '4G LTE NI YOQISH'),
(46, 3, 'Y111Y0131R', 'SIZGA QO`NG`IROQ QILISHDI XIZMATNI YOQISH'),
(47, 3, 'Y111Y0130R', 'SIZGA QO`NG`IROQ QILISHDI XIZMATNI O`CHIRISH'),
(48, 3, 'Y111Y0011R', 'INTERNETNI YOQISH'),
(49, 3, 'Y111Y0101R', 'RAQAMNI ANIQLASHGA QARSHILIK XIZMATINI YOQISH'),
(50, 3, 'Y111Y0100R', 'RAQAMNI ANIQLASHGA QARSHILIK XIZMATINI O`CHIRISH'),
(51, 3, 'R998 TEL. RAQAM', 'BIR MARTALIK RAQAMNI ANIQLASHGA QARSHILIK XIZMATI'),
(52, 3, 'Y166R', 'SUPER \"O\" XIZMATI');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `consumption` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `phone_number`, `token`, `consumption`) VALUES
(1, '123123', '123', 30000),
(22, '998914252270', '+998914252270.22', 50000),
(58, '998999661999', '998999661999.58', 100000),
(62, '998996796785', '998996796785.62', 0),
(68, '998995083767', '998995083767.68', 0),
(69, '998991111112', '998991111112.69', 0),
(70, '998943181898', '998943181898.70', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `xizmatlar`
--

CREATE TABLE `xizmatlar` (
  `id` int(11) NOT NULL,
  `nomi` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `operator_id` int(10) NOT NULL,
  `usd_code` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `xizmatlar`
--

INSERT INTO `xizmatlar` (`id`, `nomi`, `description`, `operator_id`, `usd_code`) VALUES
(2, 'beeline tv', 'online kinoteatrda cheksz internet', 2, 'Y6R'),
(17, '*111*0131# Sizga qo`ng`iroq qilishdi', '\"Sizga qo`ng`iroq qilishdi\" Mobiuz abonentiga telefoniga ulanish mumkin yoki hattoki o`chirilgan vaqtda birorta ham chaqiriqni yo`qotmaslik imkonini beruvchi qo`shimcha aloqa xizmatidir.O`tkazib yuborilgan chaqiriqlar haqida axborotni abonent 808 raqamidan SMS xabar shaklida oladi. Abonent to`lovi 84 so`m kunlik. Xizmatni yoqish:*111*0131# Xizmatni o`chirish:*111*0130#', 3, 'Y111Y0131R'),
(18, '*111*0101#  ANTIAON', 'Raqamni aniqlashga qarshilik xizmati abonentga istalgan mobiuz abonenti telefon raqamini aniqlashni taqiqlash yoki ruxsat berish imkonini beradi.Boshqa tarmoqlar abonentlariga jumladan umumiy foydalanishdagi chiquvchi qo`ng`iroqlarda raqamni aniqlashni taqiqlashni kafolatlamaydi.Chaqiruvchi abonent faollashganda raqamni aniqlashga qarshilik xizmatida chaqiriluvchi abonent uning telefon raqamini aniqlay olmaydi. Xizmatga ulanish bepul. Abonent to`lovi 421 so`m kuniga. Xizmatni yoqish: *111*0101# Xizmatni o`chirish: *111*0100#', 3, 'Y111Y0101R'),
(19, '*166#            \"Super 0\"', '\"Super 0\" xizmati bilan mobiuz tarmog`i ichida chiquvchi qo`ng`iroqlar bepul.Xizmatning oylik abonent to`lovi 0 so`m. Xizmatni faollashtirish narxi 4210.35 so`m (faqat 1 marta yechiladi). \r\nXizmatni yoqish: *166#', 3, 'Y166R'),
(23, '*43# Chaqiriqni kutish va ushlab turish', 'Chaqiriqni kutish va ushlab turish.\r\nSuhbat mobaynida javob berish jarayonida boshqa abonent kirish qo`ng`iroqlari ( yoki qo`ng`iroq qilgan boshqa abonent )\r\nChaqiriqni kutish rejimi imkonini beradi va kirish chaqiriqlarini mazkur joriy suhbat tugaguniga qadar ushlab turadi,ya`ni navbatma-navbat 2 abonent bilan suhbatlashadi.\r\nXizmatni o`chirish:  #43#', 3, 'Y43R'),
(26, '*222*1#          4G LTE', 'Mobiuz interneti ortiqcha harajatsiz 4G LTE tezligi.\r\nXizmatni yoqish: *222*1*# \r\nXizmatni o`chirish: *222*0# \r\nXizmatni tekshirish: *222#', 3, 'Y222Y1R'),
(30, '-             \"Menqa qo`ng`iroq qil\"', 'Ushbu xizmat O`zbekistonning barcha uyali aloqa operatorlari abonentlariga ular qo`ng`iroq qilishlarini iltimos qilib,tez va oson so`rov yuborish imkonini beradi.\r\nSo`rov yuborish uchun,quyidagi buyruqlarni terish kerak:\r\n*110* abonentning xalqaro formatdagi raqami#(O`zbekiston uyali aloqa operatorlari abonentlariga)Shundan so`ng,xabar oluvchiga 110 raqamidan <<Abonent +998ХХххххххх Sizni qo`ngiroq qilishingizni iltimos qilyapti>> yozuvi bilan SMS xabari keladi.So`rovlarni nafaqat tamoq ichida,balki O`zbekistonning barcha uyali aloqa operatorlariga yuborish mumkin.\r\nHar bir so`rov narxi 42,10 so`m.', 3, ''),
(31, '\"Pul o`tkazish\"', '\"Bevosita jo`natish\" xizmati yordamida mobiuz abonentlari raqamdan raqamga mablag`larni o`tkazish mumkin.O`z balansingizdan mablag`larni yuborish uchun *112*99897ХХХХХХХ* o`tkazish kerak bo`lgan summani#tering.\r\nBoshqa abonentdan mablag` so`rash uchun *116*99897ХХХХХХХ* o`tkazish kerak bo`lgan summani tering.Faqat 1 sh.b., 2 sh.b., 3 sh.b., 4 sh.b., 5 sh.b.,( 1 sh.b.,=4210,35 so`m)\r\nkuniga o`tkasish mumkin bo`lgan summa - 20 sh.b.(84207 so`m)', 3, ''),
(33, '*111*0011#  MOBIL INTERNET', 'MOBIL INTERNET\r\nXizmatni yoqish: *111*0011#\r\nXizmatni o`chirish: *111*0010#\r\nXizmat xolatini tekshirish: *111*001#', 3, 'Y111Y0011R'),
(35, '*35*0000#   Kiruvchi qo`ng`iroq va SMS larni taqiqlash', 'Kiruvchi qo`ng`iroq va SMS larni taqiqlash xizmati abonentga barcha kiruvchi qo`ng`iroq va SMS larni taqiqlash imkonini beradi.\r\nXizmatni yoqish: *35*0000#\r\nXizmatni o`chirish: #35*0000#', 3, 'Y35Y0000R'),
(36, '*33*0000#   Chiquvchi qo`ng`iroqlarni taqiqlash', 'Chiquvchi qo`ng`iroqlarni taqiqlash xizmati abonentga barcha chiquvchi qo`ng`iroqlarni taqiqlash imkonini beradi.\r\nXizmatni yoqish: *33*0000#\r\nXizmatni o`chirish: #33*0000#', 3, 'Y33Y0000R'),
(37, 'Bir martalik AntiAON', 'Bir martalik AntiAON xizmati sizga chaqirilayotgan abonentga o`z raqamingizni ko`rsatmaslik imkonini beradi.\r\nQanday foydalanish mumkin?\r\nMasalan: #9989******** ', 3, ''),
(38, '*111*0140#   Good`Ok', '', 0, ''),
(39, '*111*0140#   Good`Ok', '<<Good`Ok>> xizmati yordamida,sizga qo`ng`iroq qilayotgan abonentlar odatiy gudoklar o`rniga sevimli taronangizni yoki iboralarni eshitishlari uchun imkoniyat yaratasiz.\r\nXizmatni o`chirish: *111*0140#\r\nXizmatni yoqish: *111*0141#', 3, 'Y111Y0140R'),
(41, 'KONFERENS-ALOQA', 'Konferensaloqa rejimi bir vaqtda bir necha suhbatdoshlar(konferensiya tashabbuschisi bilan birga 6 tagacha ishtirokchi) o`rtasida suhbat tashkil etish imkonini beradi.\r\nXizmatni yo`qish: *111*0061#\r\nXizmatni o`chrish: *111*0060#', 3, 'Y111Y0061R'),
(42, 'YXQ     Jarimalar', 'Yo`l Xarakati Qoidalari jarimalari xabar xizmati.\r\nXizmatni boshqarish: SMS jo`natish.\r\n8860 raqamiga <<avtomobilning davlat raqami va tex pasport seriyasi va raqamini>>jonating (Masalan:\r\n01A***RX\r\nAAC6558880\r\n', 3, ''),
(43, 'Qo`simcha xizmatlarni o`chirish', '345 raqamiga STOP so`zi SMS qilib jo`natiladi.', 3, ''),
(44, '\"Qarz olish\" xizmati', '\"Qarz olish\" xizmati.\r\nQarz olish:  *111*32#\r\nXolatni tekshirish: *111*320#', 3, 'Y111Y32R'),
(45, 'Chaqiriqni boshqa raqamga yo`llash', 'Foydalanish: **21*+9989********#\r\nXizmatni o`chirish: ##21#\r\nXolatni tekshirish: *#21#', 3, ''),
(46, 'Xizmat doirasidan tashqarida', 'Xizmatni yo`qish: **21*+998970000007#\r\nXizmatni o`chirish: ##21#', 3, '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menutype`
--
ALTER TABLE `menutype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `paket_daqiqa`
--
ALTER TABLE `paket_daqiqa`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `paket_sms`
--
ALTER TABLE `paket_sms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `paket_turi`
--
ALTER TABLE `paket_turi`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `usd`
--
ALTER TABLE `usd`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xizmatlar`
--
ALTER TABLE `xizmatlar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT для таблицы `menutype`
--
ALTER TABLE `menutype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `operator`
--
ALTER TABLE `operator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT для таблицы `paket_daqiqa`
--
ALTER TABLE `paket_daqiqa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `paket_sms`
--
ALTER TABLE `paket_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `paket_turi`
--
ALTER TABLE `paket_turi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `tarif`
--
ALTER TABLE `tarif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `usd`
--
ALTER TABLE `usd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `xizmatlar`
--
ALTER TABLE `xizmatlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
