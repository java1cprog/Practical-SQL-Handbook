-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 05 2018 г., 19:01
-- Версия сервера: 5.6.37
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bookbiz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `au_id` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `au_lname` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `au_fname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`au_id`, `au_lname`, `au_fname`, `phone`, `address`, `city`, `state`, `zip`) VALUES
('172-32-1176', 'White', 'Johnson', '408 496-7223', '10932 Bigge Rd.', 'Menlo Park', 'CA', '94025'),
('213-46-8915', 'Green', 'Marjorie', '415 986-7020', '309 63rd St. #411', 'Oakland', 'CA', '94618'),
('238-95-7766', 'Carson', 'Cheryl', '415 548-7723', '589 Darwin Ln.', 'Berkeley', 'CA', '94705'),
('267-41-2394', 'O''Leary', 'Michael', '408 286-2428', '22 Cleveland Av. #14', 'San Jose', 'CA', '95128'),
('274-80-9391', 'Straight', 'Dick', '415 834-2919', '5420 College Av.', 'Oakland', 'CA', '94609'),
('341-22-1782', 'Smith', 'Meander', '913 843-0462', '10 Misisipi Dr.', 'Lawrence', 'KS', '66044'),
('409-56-7008', 'Bennet', 'Abraham', '415 658-9932', '6223 Bateman St.', 'Berkeley', 'CA', '94705'),
('427-17-2319', 'Dull', 'Ann', '415 836-7128', '3410 Blonde St.', 'Palo Alto', 'CA', '94301'),
('472-27-2349', 'Gringlesby', 'Burt', '707 938-6445', 'PO Box 792', 'Covelo', 'CA', '95428'),
('486-29-1786', 'Locksley', 'Chastity', '415 585-4620', '18 Broadway Av.', 'San Francisco', 'CA', '94130'),
('527-72-3246', 'Greene', 'Morningstar', '615 297-2723', '22 Graybar Rd.', 'Nashville', 'TN', '37215'),
('648-92-1872', 'Blotchet-Halls', 'Reginald', '503 745-6402', '55 Hillsdale Bl.', 'Corvallis', 'OR', '97330'),
('672-71-3249', 'Yokomoto', 'Akiko', '415 935-4228', '3 Silver Ct.', 'Walnut Creek', 'CA', '94595'),
('712-45-1867', 'del Castillo', 'Innes', '615 996-8275', '2286 Cram Pl. #86', 'Ann Arbor', 'MI', '48105'),
('722-51-5454', 'DeFrance', 'Michel', '219 547-9982', '3 Balding Pl.', 'Gary', 'IN', '46403'),
('724-08-9931', 'Stringer', 'Dirk', '415 843-2991', '5420 Telegraph Av.', 'Oakland', 'CA', '94609'),
('724-80-9391', 'MacFeather', 'Stearns', '415 354-7128', '44 Upland Hts.', 'Oakland', 'CA', '94612'),
('756-30-7391', 'Karsen', 'Livia', '415 534-9219', '5720 McAuley St.', 'Oakland', 'CA', '94609'),
('807-91-6654', 'Panteley', 'Sylvia', '301 946-8853', '1956 Arlington Pl.', 'Rockville', 'MD', '20853'),
('846-92-7186', 'Hunter', 'Sheryl', '415 836-7128', '3410 Blonde St.', 'Palo Alto', 'CA', '94301'),
('893-72-1158', 'McBadden', 'Heather', '707 448-4982', '301 Putnam', 'Vacaville', 'CA', '95688'),
('899-46-2035', 'Ringer', 'Anne', '801 826-0752', '67 Seventh Av.', 'Salt Lake City', 'UT', '84152'),
('998-72-3567', 'Ringer', 'Albert', '801 826-0752', '67 Seventh Av.', 'Salt Lake City', 'UT', '84152');

-- --------------------------------------------------------

--
-- Структура таблицы `editors`
--

CREATE TABLE IF NOT EXISTS `editors` (
  `ed_id` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ed_lname` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ed_fname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ed_pos` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ed_boss` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `editors`
--

INSERT INTO `editors` (`ed_id`, `ed_lname`, `ed_fname`, `ed_pos`, `phone`, `address`, `city`, `state`, `zip`, `ed_boss`) VALUES
('321-55-8906', 'DeLongue', 'Martinella', 'project', '415 843-2222', '3000 6th St.', 'Berkeley', 'CA', '94710', '993-86-0420'),
('527-72-3246', 'Greene', 'Morningstar', 'copy', '615 297-2723', '22 Graybar House Rd.', 'Nashville', 'TN', '37215', '826-11-9034'),
('712-45-1867', 'del Castillo', 'Innes', 'copy', '615 996-8275', '2286 Cram Pl. #86', 'Ann Arbor', 'MI', '48105', '826-11-9034'),
('777-02-9831', 'Samuelson', 'Bernard', 'project', '415 843-6990', '27 Yosemite', 'Oakland', 'CA', '94609', '993-86-0420'),
('777-66-9902', 'Almond', 'Alfred', 'copy', '312 699-4177', '1010 E. Devon', 'Chicago', 'IL', '60018', '826-11-9034'),
('826-11-9034', 'Himmel', 'Eleanore', 'project', '617 423-0552', '97 Bleaker', 'Boston', 'MA', '02210', '993-86-0420'),
('885-23-9140', 'Rutherford-Hayes', 'Hannah', 'project', '301 468-3909', '32 Rockbill Pike', 'Rockbill', 'MD', '20852', '993-86-0420'),
('943-88-7920', 'Kaspchek', 'Christof', 'acquisition', '415 549-3909', '18 Severe Rd.', 'Berkeley', 'CA', '94710', NULL),
('993-86-0420', 'McCann', 'Dennis', 'acquisition', '301 468-3909', '32 Rockbill Pike', 'Rockbill', 'MD', '20852', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `publishers`
--

CREATE TABLE IF NOT EXISTS `publishers` (
  `pub_id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `publishers`
--

INSERT INTO `publishers` (`pub_id`, `pub_name`, `address`, `city`, `state`) VALUES
('0736', 'New Age Books', '1 1st St', 'Boston', 'MA'),
('0877', 'Binnet & Hardley', '2 2nd Ave.', 'Washington', 'DC'),
('1389', 'Algodata Infosystems', '3 3rd Dr.', 'Berkeley', 'CA');

-- --------------------------------------------------------

--
-- Структура таблицы `roysched`
--

CREATE TABLE IF NOT EXISTS `roysched` (
  `title_id` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lorange` int(11) DEFAULT NULL,
  `hirange` int(11) DEFAULT NULL,
  `royalty` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roysched`
--

INSERT INTO `roysched` (`title_id`, `lorange`, `hirange`, `royalty`) VALUES
('BU1032', 0, 5000, 0.1),
('BU1032', 5001, 50000, 0.12),
('PC1035', 0, 2000, 0.1),
('PC1035', 2001, 4000, 0.12),
('PC1035', 4001, 50000, 0.16),
('BU2075', 0, 1000, 0.1),
('BU2075', 1001, 5000, 0.12),
('BU2075', 5001, 7000, 0.16),
('BU2075', 7001, 50000, 0.18),
('PS9999', 0, 50000, 0.1),
('PS2091', 0, 1000, 0.1),
('PS2091', 1001, 5000, 0.12),
('PS2091', 5001, 50000, 0.14),
('PS2106', 0, 2000, 0.1),
('PS2106', 2001, 5000, 0.12),
('PS2106', 5001, 50000, 0.14),
('MC3021', 0, 1000, 0.1),
('MC3021', 1001, 2000, 0.12),
('MC3021', 2001, 6000, 0.14),
('MC3021', 6001, 8000, 0.18),
('MC3021', 8001, 50000, 0.2),
('TC3218', 0, 2000, 0.1),
('TC3218', 2001, 6000, 0.12),
('TC3218', 6001, 8000, 0.16),
('TC3218', 8001, 50000, 0.16),
('PC8888', 0, 5000, 0.1),
('PC8888', 5001, 50000, 0.12),
('PS7777', 0, 5000, 0.1),
('PS7777', 5001, 50000, 0.12),
('PS3333', 0, 5000, 0.1),
('PS3333', 5001, 50000, 0.12),
('MC3026', 0, 1000, 0.1),
('MC3026', 1001, 2000, 0.12),
('MC3026', 2001, 6000, 0.14),
('MC3026', 6001, 8000, 0.18),
('MC3026', 8001, 50000, 0.2),
('BU1111', 0, 4000, 0.1),
('BU1111', 4001, 8000, 0.12),
('BU1111', 8001, 50000, 0.14),
('MC2222', 0, 2000, 0.1),
('MC2222', 2001, 4000, 0.12),
('MC2222', 4001, 8000, 0.14),
('MC2222', 8001, 12000, 0.16),
('TC7777', 0, 5000, 0.1),
('TC7777', 5001, 15000, 0.12),
('TC4203', 0, 2000, 0.1),
('TC4203', 2001, 8000, 0.12),
('TC4203', 8001, 16000, 0.14),
('BU7832', 0, 5000, 0.1),
('BU7832', 5001, 50000, 0.12),
('PS1372', 0, 50000, 0.1);

-- --------------------------------------------------------

--
-- Структура таблицы `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `sonum` int(11) NOT NULL,
  `stor_id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ponum` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sales`
--

INSERT INTO `sales` (`sonum`, `stor_id`, `ponum`, `sdate`) VALUES
(1, '7066', 'QA7442.3', '1998-09-13'),
(2, '7067', 'D4482', '1998-09-14'),
(3, '7131', 'N914008', '1998-09-14'),
(4, '7131', 'N914014', '1998-09-14'),
(5, '8042', '423LL922', '1998-09-14'),
(6, '8042', '423LL930', '1998-09-14'),
(7, '6380', '722a', '1998-09-13'),
(8, '6380', '6871', '1998-09-14'),
(9, '8042', 'P723', '2001-03-11'),
(10, '7896', 'QQ2299', '2000-10-28'),
(11, '7896', 'TQ456', '2000-12-12'),
(12, '8042', 'QA879.1', '2000-05-22'),
(13, '7066', 'A2976', '2000-05-24'),
(14, '7131', 'P3087a', '2000-05-29'),
(15, '7067', 'P2121', '2000-06-15'),
(19, '7896', 'X999', '2001-02-21');

-- --------------------------------------------------------

--
-- Структура таблицы `salesdetails`
--

CREATE TABLE IF NOT EXISTS `salesdetails` (
  `sonum` int(11) NOT NULL,
  `qty_ordered` smallint(6) NOT NULL,
  `qty_shipped` smallint(6) DEFAULT NULL,
  `title_id` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_shipped` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `salesdetails`
--

INSERT INTO `salesdetails` (`sonum`, `qty_ordered`, `qty_shipped`, `title_id`, `date_shipped`) VALUES
(1, 75, 75, 'PS2091', '1998-09-15'),
(2, 10, 10, 'PS2091', '1998-09-15'),
(3, 20, 720, 'PS2091', '1998-09-18'),
(4, 25, 20, 'MC3021', '1998-09-18'),
(5, 15, 15, 'MC3021', '1998-09-14'),
(6, 10, 3, 'BU1032', '1998-09-22'),
(7, 3, 3, 'PS2091', '1998-09-20'),
(8, 5, 5, 'BU1032', '1998-09-14'),
(9, 25, 5, 'BU1111', '2001-03-28'),
(10, 15, 15, 'BU7832', '2000-10-29'),
(11, 10, 10, 'MC2222', '2001-01-12'),
(12, 30, 30, 'PC1035', '2000-05-24'),
(13, 50, 50, 'PC8888', '2000-05-24'),
(14, 20, 20, 'PS1372', '2000-05-29'),
(14, 25, 25, 'PS2106', '2000-04-29'),
(14, 15, 10, 'PS3333', '2000-05-29'),
(14, 25, 25, 'PS7777', '2000-06-13'),
(15, 40, 40, 'TC3218', '2000-06-15'),
(15, 20, 20, 'TC4203', '2000-05-30'),
(15, 20, 10, 'TC7777', '2000-06-17'),
(19, 35, 35, 'BU2075', '2001-03-15');

-- --------------------------------------------------------

--
-- Структура таблицы `titleauthors`
--

CREATE TABLE IF NOT EXISTS `titleauthors` (
  `au_id` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_id` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `au_ord` tinyint(4) DEFAULT NULL,
  `royaltyshare` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `titleauthors`
--

INSERT INTO `titleauthors` (`au_id`, `title_id`, `au_ord`, `royaltyshare`) VALUES
('172-32-1176', 'PS3333', 1, 1),
('213-46-8915', 'BU1032', 2, 0.4),
('213-46-8915', 'BU2075', 1, 1),
('238-95-7766', 'PC1035', 1, 1),
('267-41-2394', 'BU1111', 2, 0.4),
('267-41-2394', 'TC7777', 2, 0.3),
('274-80-9391', 'BU7832', 1, 1),
('409-56-7008', 'BU1032', 1, 0.6),
('427-17-2319', 'PC8888', 1, 0.5),
('472-27-2349', 'TC7777', 3, 0.3),
('486-29-1786', 'PC9999', 1, 1),
('486-29-1786', 'PS7777', 1, 1),
('648-92-1872', 'TC4203', 1, 1),
('672-71-3249', 'TC7777', 1, 0.4),
('712-45-1867', 'MC2222', 1, 1),
('722-51-5454', 'MC3021', 1, 0.75),
('724-80-9391', 'BU1111', 1, 0.6),
('724-80-9391', 'PS1372', 2, 0.25),
('756-30-7391', 'PS1372', 1, 0.75),
('807-91-6654', 'TC3218', 1, 1),
('846-92-7186', 'PC8888', 2, 0.5),
('899-46-2035', 'MC3021', 2, 0.25),
('899-46-2035', 'PS2091', 2, 0.5),
('998-72-3567', 'PS2091', 1, 0.5),
('998-72-3567', 'PS2106', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `titleditors`
--

CREATE TABLE IF NOT EXISTS `titleditors` (
  `ed_id` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_id` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ed_ord` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `titleditors`
--

INSERT INTO `titleditors` (`ed_id`, `title_id`, `ed_ord`) VALUES
('321-55-8906', 'BU1032', 2),
('321-55-8906', 'BU1111', 2),
('321-55-8906', 'BU2075', 3),
('321-55-8906', 'BU7832', 2),
('321-55-8906', 'PC1035', 2),
('321-55-8906', 'PC8888', 2),
('777-02-9831', 'PC1035', 3),
('777-02-9831', 'PC8888', 3),
('826-11-9034', 'BU2075', 2),
('826-11-9034', 'PS1372', 2),
('826-11-9034', 'PS2091', 2),
('826-11-9034', 'PS2106', 2),
('826-11-9034', 'PS3333', 2),
('826-11-9034', 'PS7777', 2),
('885-23-9140', 'MC2222', 2),
('885-23-9140', 'MC3021', 2),
('885-23-9140', 'TC3281', 2),
('885-23-9140', 'TC4203', 2),
('885-23-9140', 'TC7777', 2),
('943-88-7920', 'BU1032', 1),
('943-88-7920', 'BU1111', 1),
('943-88-7920', 'BU2075', 1),
('943-88-7920', 'BU7832', 1),
('943-88-7920', 'PC1035', 1),
('943-88-7920', 'PC8888', 1),
('993-86-0420', 'MC2222', 1),
('993-86-0420', 'MC3021', 1),
('993-86-0420', 'PS1372', 1),
('993-86-0420', 'PS2091', 1),
('993-86-0420', 'PS2106', 1),
('993-86-0420', 'PS3333', 1),
('993-86-0420', 'PS7777', 1),
('993-86-0420', 'TC3218', 1),
('993-86-0420', 'TC4203', 1),
('993-86-0420', 'TC7777', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `titles`
--

CREATE TABLE IF NOT EXISTS `titles` (
  `title_id` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pub_id` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `advance` decimal(10,0) DEFAULT NULL,
  `ytd_sales` int(11) DEFAULT NULL,
  `contract` bit(1) NOT NULL,
  `notes` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pubdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `titles`
--

INSERT INTO `titles` (`title_id`, `title`, `type`, `pub_id`, `price`, `advance`, `ytd_sales`, `contract`, `notes`, `pubdate`) VALUES
('BU1032', 'The Busy Executive''s Database Guide', 'business', '1389', '30', '5000', 4095, b'1', 'An overview of available database systems with emphasis on common business applications.  Illustrated.', '1998-06-12'),
('BU1111', 'Cooking with Computers: Surreptitious Balance Sheets', 'business', '1389', '22', '5000', 3876, b'1', 'Helpful hints on how to use your electronic resources to the best advantage.', '1998-06-09'),
('BU2075', 'You Can Combat Computer Stress!', 'business', '0736', '13', '10125', 18722, b'1', 'The latest medical and psychological techniques for living with the electronic office.  Easy-to-understand explanations.', '1998-06-30'),
('BU7832', 'Straight Talk About Computers', 'business', '1389', '30', '5000', 4095, b'1', 'Annotated analysis of what computers can do for you: a no-hype guide for the critical user.', '1998-06-22'),
('MC2222', 'Silicon Valley Gastronomic Treats', 'mod_cook', '0877', '30', '0', 2032, b'1', 'Favorite recipes for quick, easy, and elegant meals tried and tested by people who never have time to eat, let alone cook.', '1998-06-09'),
('MC3021', 'The Gourmet Microwave', 'mod_cook', '0877', '13', '15000', 22246, b'1', 'Traditional French gourmet recipes adapted for modern microwave cooking.', '1998-06-18'),
('MC3026', 'The Psychology of Computer Cooking', NULL, '0877', NULL, NULL, NULL, b'0', NULL, NULL),
('PC1035', 'But Is It User Friendly?', 'popular_comp', '1389', '43', '7000', 8780, b'1', 'A survey of software for the naive user, focusing on the ''friendliness'' of each.', '1998-06-30'),
('PC8888', 'Secrets of Silicon Valley', 'popular_comp', '1389', '40', '8000', 4095, b'1', 'Muckraking reporting on the world''s largest computer hardware and software manufacturers.', '1998-06-12'),
('PC9999', 'Net Etiquette', 'popular_comp', '1389', NULL, NULL, NULL, b'0', 'A must-read for computer conferencing debutantes!.', NULL),
('PS1372', 'Computer Phobic and Non-Phobic Individuals: Behavior Variations', 'psychology', '0736', '42', '7000', 375, b'1', 'A must for the specialist, this book examines the difference between those who hate and fear computers and those who think they are swell.', '1998-10-21'),
('PS2091', 'Is Anger the Enemy?', 'psychology', '0736', '22', '2275', 2045, b'1', 'Carefully researched study of the effects of strong emotions on the body. Metabolic charts included.', '1998-06-15'),
('PS2106', 'Life Without Fear', 'psychology', '0736', '17', '6000', 111, b'1', 'New exercise, meditation, and nutritional techniques that can reduce the shock of daily interactions. Popular audience.  Sample menus included, exercise video available separately.', '1998-10-05'),
('PS3333', 'Prolonged Data Deprivation: Four Case Studies', 'psychology', '0736', '30', '2000', 4072, b'1', 'What happens when the data runs dry?  Searching evaluations of information-shortage effects.', '1998-06-12'),
('PS7777', 'Emotional Security: A New Algorithm', 'psychology', '0736', '18', '4000', 3336, b'1', 'Protecting yourself and your loved ones from undue emotional stress in the modern world.  Use of computer and nutritional aids emphasized.', '1998-06-12'),
('TC3218', 'Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean', 'trad_cook', '0877', '41', '7000', 375, b'1', 'Profusely illustrated in color, this makes a wonderful gift book for a cuisine-oriented friend.', '1998-10-21'),
('TC4203', 'Fifty Years in Buckingham Palace Kitchens', 'trad_cook', '0877', '22', '4000', 15096, b'1', 'More anecdotes from the Queen''s favorite cook describing life among English royalty.  Recipes, techniques, tender vignettes.', '1998-06-12'),
('TC7777', 'Sushi, Anyone?', 'trad_cook', '0877', '30', '8000', 4095, b'1', 'Detailed instructions on improving your position in life by learning how to make authentic Japanese sushi in your spare time. 5-10% increase in number of friends per recipe reported from beta test. ', '1998-06-12');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD UNIQUE KEY `auidind` (`au_id`),
  ADD KEY `aunmind` (`au_lname`,`au_fname`);

--
-- Индексы таблицы `editors`
--
ALTER TABLE `editors`
  ADD UNIQUE KEY `edind` (`ed_id`),
  ADD KEY `ednmind` (`ed_lname`,`ed_fname`);

--
-- Индексы таблицы `publishers`
--
ALTER TABLE `publishers`
  ADD UNIQUE KEY `pubind` (`pub_id`);

--
-- Индексы таблицы `roysched`
--
ALTER TABLE `roysched`
  ADD KEY `rstidind` (`title_id`);

--
-- Индексы таблицы `sales`
--
ALTER TABLE `sales`
  ADD UNIQUE KEY `salesind` (`sonum`);

--
-- Индексы таблицы `salesdetails`
--
ALTER TABLE `salesdetails`
  ADD UNIQUE KEY `sdind` (`sonum`,`title_id`);

--
-- Индексы таблицы `titleauthors`
--
ALTER TABLE `titleauthors`
  ADD UNIQUE KEY `taind` (`au_id`,`title_id`);

--
-- Индексы таблицы `titleditors`
--
ALTER TABLE `titleditors`
  ADD UNIQUE KEY `teind` (`ed_id`,`title_id`);

--
-- Индексы таблицы `titles`
--
ALTER TABLE `titles`
  ADD UNIQUE KEY `titleidind` (`title_id`),
  ADD KEY `titleind` (`title`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
