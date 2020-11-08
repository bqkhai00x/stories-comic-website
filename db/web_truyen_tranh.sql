-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2020 lúc 09:34 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_truyen_tranh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `BirthDate` date DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Bio` text DEFAULT NULL,
  `JoinDate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Priority` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`Username`, `Password`, `fullname`, `Email`, `BirthDate`, `Sex`, `Degree`, `Bio`, `JoinDate`, `Priority`) VALUES
('admin', 'a12345678', 'admin', 'admin@gmail.com', '0000-00-00', NULL, NULL, NULL, '2019-12-12 22:07:39', NULL),
('18020671', 'a12345678', 'Bùi Quang Khải', '18020671@vnu.edu.vn', '2000-07-28', NULL, NULL, NULL, '2020-11-08 08:41:45', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `C_MSS` int(11) NOT NULL,
  `category` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`C_MSS`, `category`) VALUES
(1, 'Horror'),
(1, 'Than Bi'),
(1, 'Trinh Tham'),
(2, 'Action'),
(2, 'Anime'),
(2, 'Comedy'),
(2, 'School Life'),
(3, 'Dam Mi'),
(3, 'Fantasy'),
(3, 'Historical'),
(3, 'Horror'),
(4, 'Adventure'),
(5, 'ecchi'),
(5, 'shounen'),
(6, 'doujinshi'),
(6, 'drama'),
(6, 'fantasy'),
(7, 'harem'),
(7, 'historical'),
(7, 'josei'),
(8, 'live action'),
(9, 'manhua'),
(10, 'manhwa'),
(10, 'mature'),
(10, 'mecha'),
(10, 'mystery'),
(11, 'ngon tinh'),
(12, 'one shot'),
(13, 'pyschological'),
(14, 'romance'),
(14, 'seine'),
(14, 'shoujo'),
(15, 'smut'),
(16, 'sport'),
(16, 'tragedy'),
(17, 'trinh tham'),
(18, 'webtoon');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `T_MSS` int(11) NOT NULL,
  `T_User` varchar(30) NOT NULL,
  `Comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`T_MSS`, `T_User`, `Comment`) VALUES
(1, 'excer', 'hihihiheh, day la de test. '),
(1, 'A', 'sdfsd'),
(1, 'excer;', 'sdas'),
(1, 'excer;', 'sdaswrq'),
(1, 'excer;', 'sdaswrq'),
(1, 'excer;', 'sdaswrq'),
(2, 'excer', 'wow. nói chung là ok rồi'),
(2, 'excer', 'sfdskhflsdgsldg'),
(16, 'excer', 'fgdfgdfg'),
(1, 'excer', 'fdsfdsfdsfds'),
(1, 'excer', 'một lần nữa nói chung là khá là ok'),
(1, 'excer', 'quen mat vu so nay roi ma thoi ke'),
(15, 'excerland2', 'testtwetw'),
(15, 'excerland2', ' qeqe qb., dfsgfgs'),
(17, 'excerland2', 'sfsdfdsfds'),
(16, 'excerland2', 'lúc bấm vào nút gửi, trong thời gian chờ thì nút gửi sẽ ẩn đi'),
(2, 'admin', 'kk ahkfsahfkafa fmashfakhfkaf amfhakhfsa d ajdshasjfakfnas safhaskd'),
(18, '18020671', 'very good'),
(2, 'admin', 'kkafha fajfa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `plot`
--

CREATE TABLE `plot` (
  `R_MSS` int(11) NOT NULL,
  `Chapter` int(11) NOT NULL,
  `Plot` varchar(4000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `plot`
--

INSERT INTO `plot` (`R_MSS`, `Chapter`, `Plot`) VALUES
(1, 1, 'http://imageinstant.com/data/images/4638/93999/001.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/002.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/003.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/004.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/005.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/006.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/007.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/008.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/009.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/010.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/011.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/012.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/013.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/014.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/015.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/016.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/017.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/018.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/019.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/020.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/021.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/022.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/023.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/024.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/025.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/026.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/027.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/028.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/029.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/030.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/031.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/032.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/033.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/034.jpg\r\nhttp://imageinstant.com/data/images/4638/93999/035.jpg'),
(1, 2, 'http://imageinstant.com/data/images/4638/94000/001.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/002.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/003.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/004.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/005.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/006.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/007.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/008.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/009.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/010.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/011.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/012.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/013.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/014.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/015.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/016.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/017.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/018.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/019.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/020.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/021.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/022.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/023.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/024.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/025.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/026.jpg\r\nhttp://imageinstant.com/data/images/4638/94000/027.jpg'),
(1, 3, 'http://imageinstant.com/data/images/4638/94001/001.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/002.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/003.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/004.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/005.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/006.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/007.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/008.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/009.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/010.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/011.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/012.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/013.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/014.jpg\r\nhttp://imageinstant.com/data/images/4638/94001/015.jpg'),
(2, 1, 'http://imageinstant.com/data/images/5613/110629/002.jpg\r\nhttp://imageinstant.com/data/images/5613/110629/003.jpg\r\nhttp://imageinstant.com/data/images/5613/110629/004.jpg\r\nhttp://imageinstant.com/data/images/5613/110629/005.jpg\r\nhttp://imageinstant.com/data/images/5613/110629/006.jpg\r\nhttp://imageinstant.com/data/images/5613/110629/007.jpg\r\nhttp://imageinstant.com/data/images/5613/110629/008.jpg'),
(2, 2, 'http://imageinstant.com/data/images/5613/110603/002.jpg\r\nhttp://imageinstant.com/data/images/5613/110603/003.jpg\r\nhttp://imageinstant.com/data/images/5613/110603/004.jpg\r\nhttp://imageinstant.com/data/images/5613/110603/005.jpg\r\nhttp://imageinstant.com/data/images/5613/110603/006.jpg\r\nhttp://imageinstant.com/data/images/5613/110603/007.jpg\r\nhttp://imageinstant.com/data/images/5613/110603/008.jpg\r\nhttp://imageinstant.com/data/images/5613/110603/009.jpg\r\nhttp://imageinstant.com/data/images/5613/110603/010.jpg\r\nhttp://imageinstant.com/data/images/5613/110603/011.jpg'),
(2, 3, 'http://imageinstant.com/data/images/5613/435158/002.jpg\r\nhttp://imageinstant.com/data/images/5613/435158/003.jpg\r\nhttp://imageinstant.com/data/images/5613/435158/004.jpg\r\nhttp://imageinstant.com/data/images/5613/435158/005.jpg\r\nhttp://imageinstant.com/data/images/5613/435158/006.jpg\r\nhttp://imageinstant.com/data/images/5613/435158/007.jpg\r\nhttp://imageinstant.com/data/images/5613/435158/008.jpg\r\nhttp://imageinstant.com/data/images/5613/435158/009.jpg\r\nhttp://imageinstant.com/data/images/5613/435158/010.jpg\r\nhttp://imageinstant.com/data/images/5613/435158/011.jpg\r\nhttp://imageinstant.com/data/images/5613/435158/012.jpg'),
(3, 1, 'http://imageinstant.com/data/images/19432/402861/002.jpg\r\nhttp://imageinstant.com/data/images/19432/402861/003.jpg\r\nhttp://imageinstant.com/data/images/19432/402861/004.jpg\r\nhttp://imageinstant.com/data/images/19432/402861/005.jpg\r\nhttp://imageinstant.com/data/images/19432/402861/006.jpg\r\nhttp://imageinstant.com/data/images/19432/402861/007.jpg\r\nhttp://imageinstant.com/data/images/19432/402861/008.jpg'),
(3, 2, 'http://imageinstant.com/data/images/19432/402860/002.jpg\r\nhttp://imageinstant.com/data/images/19432/402860/003.jpg\r\nhttp://imageinstant.com/data/images/19432/402860/004.jpg\r\nhttp://imageinstant.com/data/images/19432/402860/005.jpg\r\nhttp://imageinstant.com/data/images/19432/402860/006.jpg\r\nhttp://imageinstant.com/data/images/19432/402860/007.jpg\r\nhttp://imageinstant.com/data/images/19432/402860/008.jpg'),
(3, 3, 'http://imageinstant.com/data/images/19432/402862/002.jpg\r\nhttp://imageinstant.com/data/images/19432/402862/003.jpg\r\nhttp://imageinstant.com/data/images/19432/402862/004.jpg\r\nhttp://imageinstant.com/data/images/19432/402862/005.jpg\r\nhttp://imageinstant.com/data/images/19432/402862/006.jpg\r\nhttp://imageinstant.com/data/images/19432/402862/007.jpg'),
(3, 4, 'http://imageinstant.com/data/images/19432/402863/002.jpg\r\nhttp://imageinstant.com/data/images/19432/402863/003.jpg\r\nhttp://imageinstant.com/data/images/19432/402863/004.jpg\r\nhttp://imageinstant.com/data/images/19432/402863/005.jpg\r\nhttp://imageinstant.com/data/images/19432/402863/006.jpg\r\nhttp://imageinstant.com/data/images/19432/402863/007.jpg\r\nhttp://imageinstant.com/data/images/19432/402863/008.jpg\r\nhttp://imageinstant.com/data/images/19432/402863/009.jpg'),
(4, 1, 'http://imageinstant.com/data/images/42/1795/001.jpg\r\nhttp://imageinstant.com/data/images/42/1795/002.jpg\r\nhttp://imageinstant.com/data/images/42/1795/003.jpg\r\nhttp://imageinstant.com/data/images/42/1795/004.jpg\r\nhttp://imageinstant.com/data/images/42/1795/005.jpg\r\nhttp://imageinstant.com/data/images/42/1795/006.jpg\r\nhttp://imageinstant.com/data/images/42/1795/007.jpg\r\nhttp://imageinstant.com/data/images/42/1795/008.jpg\r\nhttp://imageinstant.com/data/images/42/1795/009.jpg\r\nhttp://imageinstant.com/data/images/42/1795/010.jpg\r\nhttp://imageinstant.com/data/images/42/1795/011.jpg\r\nhttp://imageinstant.com/data/images/42/1795/012.jpg\r\nhttp://imageinstant.com/data/images/42/1795/013.jpg\r\nhttp://imageinstant.com/data/images/42/1795/014.jpg\r\nhttp://imageinstant.com/data/images/42/1795/015.jpg\r\nhttp://imageinstant.com/data/images/42/1795/016.jpg\r\nhttp://imageinstant.com/data/images/42/1795/017.jpg\r\nhttp://imageinstant.com/data/images/42/1795/018.jpg\r\nhttp://imageinstant.com/data/images/42/1795/019.jpg\r\nhttp://imageinstant.com/data/images/42/1795/020.jpg\r\nhttp://imageinstant.com/data/images/42/1795/021.jpg\r\nhttp://imageinstant.com/data/images/42/1795/022.jpg\r\nhttp://imageinstant.com/data/images/42/1795/023.jpg\r\nhttp://imageinstant.com/data/images/42/1795/024.jpg\r\nhttp://imageinstant.com/data/images/42/1795/025.jpg\r\nhttp://imageinstant.com/data/images/42/1795/026.jpg\r\nhttp://imageinstant.com/data/images/42/1795/027.jpg\r\nhttp://imageinstant.com/data/images/42/1795/028.jpg\r\nhttp://imageinstant.com/data/images/42/1795/029.jpg\r\nhttp://imageinstant.com/data/images/42/1795/030.jpg\r\nhttp://imageinstant.com/data/images/42/1795/031.jpg\r\nhttp://imageinstant.com/data/images/42/1795/032.jpg\r\nhttp://imageinstant.com/data/images/42/1795/033.jpg\r\nhttp://imageinstant.com/data/images/42/1795/034.jpg\r\nhttp://imageinstant.com/data/images/42/1795/035.jpg\r\nhttp://imageinstant.com/data/images/42/1795/036.jpg\r\nhttp://imageinstant.com/data/images/42/1795/037.jpg\r\nhttp://imageinstant.com/data/images/42/1795/038.jpg\r\nhttp://imageinstant.com/data/images/42/1795/039.jpg\r\nhttp://imageinstant.com/data/images/42/1795/040.jpg\r\nhttp://imageinstant.com/data/images/42/1795/041.jpg\r\nhttp://imageinstant.com/data/images/42/1795/042.jpg\r\nhttp://imageinstant.com/data/images/42/1795/043.jpg\r\nhttp://imageinstant.com/data/images/42/1795/044.jpg\r\nhttp://imageinstant.com/data/images/42/1795/045.jpg\r\nhttp://imageinstant.com/data/images/42/1795/046.jpg\r\nhttp://imageinstant.com/data/images/42/1795/047.jpg\r\nhttp://imageinstant.com/data/images/42/1795/048.jpg\r\nhttp://imageinstant.com/data/images/42/1795/049.jpg\r\nhttp://imageinstant.com/data/images/42/1795/050.jpg\r\nhttp://imageinstant.com/data/images/42/1795/051.jpg\r\nhttp://imageinstant.com/data/images/42/1795/052.jpg\r\nhttp://imageinstant.com/data/images/42/1795/053.jpg'),
(4, 2, 'http://imageinstant.com/data/images/42/1796/001.jpg\r\nhttp://imageinstant.com/data/images/42/1796/002.jpg\r\nhttp://imageinstant.com/data/images/42/1796/003.jpg\r\nhttp://imageinstant.com/data/images/42/1796/004.jpg\r\nhttp://imageinstant.com/data/images/42/1796/005.jpg\r\nhttp://imageinstant.com/data/images/42/1796/006.jpg\r\nhttp://imageinstant.com/data/images/42/1796/007.jpg\r\nhttp://imageinstant.com/data/images/42/1796/008.jpg\r\nhttp://imageinstant.com/data/images/42/1796/009.jpg\r\nhttp://imageinstant.com/data/images/42/1796/010.jpg\r\nhttp://imageinstant.com/data/images/42/1796/011.jpg\r\nhttp://imageinstant.com/data/images/42/1796/012.jpg\r\nhttp://imageinstant.com/data/images/42/1796/013.jpg\r\nhttp://imageinstant.com/data/images/42/1796/014.jpg\r\nhttp://imageinstant.com/data/images/42/1796/015.jpg\r\nhttp://imageinstant.com/data/images/42/1796/016.jpg\r\nhttp://imageinstant.com/data/images/42/1796/017.jpg\r\nhttp://imageinstant.com/data/images/42/1796/018.jpg\r\nhttp://imageinstant.com/data/images/42/1796/019.jpg\r\nhttp://imageinstant.com/data/images/42/1796/020.jpg\r\nhttp://imageinstant.com/data/images/42/1796/021.jpg\r\nhttp://imageinstant.com/data/images/42/1796/022.jpg\r\nhttp://imageinstant.com/data/images/42/1796/023.jpg\r\nhttp://imageinstant.com/data/images/42/1796/024.jpg\r\nhttp://imageinstant.com/data/images/42/1796/025.jpg\r\nhttp://imageinstant.com/data/images/42/1796/026.jpg\r\nhttp://imageinstant.com/data/images/42/1796/027.jpg\r\nhttp://imageinstant.com/data/images/42/1796/028.jpg\r\nhttp://imageinstant.com/data/images/42/1796/029.jpg\r\nhttp://imageinstant.com/data/images/42/1796/030.jpg'),
(5, 1, 'http://imageinstant.com/data/images/9169/266191/002.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/002.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/004.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/005.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/006.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/008.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/009.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/010.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/011.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/012.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/013.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/014.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/015.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/017.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/018.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/020.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/021.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/022.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/023.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/024.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/025.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/026.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/027.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/027.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/028.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/029.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/030.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/030.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/031.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/032.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/032.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/033.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/033.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/034.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/035.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/037.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/038.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/039.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/040.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/043.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/046.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/048.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/051.jpg\r\nhttp://imageinstant.com/data/images/9169/266191/053.jpg'),
(5, 2, 'http://mangaqq.net/128/2/1.jpg?732=c241\r\nhttp://mangaqq.net/128/2/2.jpg?732=c241\r\nhttp://mangaqq.net/128/2/4.jpg?732=c241\r\nhttp://mangaqq.net/128/2/5.jpg?732=c241\r\nhttp://mangaqq.net/128/2/6.jpg?732=c241\r\nhttp://mangaqq.net/128/2/7.jpg?732=c241\r\nhttp://mangaqq.net/128/2/8.jpg?732=c241\r\nhttp://mangaqq.net/128/2/9.jpg?732=c241\r\nhttp://mangaqq.net/128/2/10.jpg?732=c241\r\nhttp://mangaqq.net/128/2/11.jpg?732=c241\r\nhttp://mangaqq.net/128/2/12.jpg?732=c241\r\nhttp://mangaqq.net/128/2/13.jpg?732=c241\r\nhttp://mangaqq.net/128/2/14.jpg?732=c241\r\nhttp://mangaqq.net/128/2/15.jpg?732=c241\r\nhttp://mangaqq.net/128/2/17.jpg?732=c241\r\nhttp://mangaqq.net/128/2/18.jpg?732=c241\r\nhttp://mangaqq.net/128/2/19.jpg?732=c241\r\nhttp://mangaqq.net/128/2/21.jpg?732=c241\r\nhttp://mangaqq.net/128/2/22.jpg?732=c241\r\nhttp://mangaqq.net/128/2/23.jpg?732=c241'),
(5, 3, 'http://imageinstant.com/data/images/9169/170737/001.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/002.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/003.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/004.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/005.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/006.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/007.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/008.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/009.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/010.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/011.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/012.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/013.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/014.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/015.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/015.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/016.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/017.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/018.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/019.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/020.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/021.jpg\r\nhttp://imageinstant.com/data/images/9169/170737/022.jpg'),
(6, 1, 'http://imageinstant.com/data/images/17023/368299/001.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/002.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/003.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/004.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/005.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/006.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/007.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/008.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/009.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/010.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/011.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/012.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/014.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/015.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/016.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/017.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/019.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/021.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/022.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/024.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/027.jpg\r\nhttp://imageinstant.com/data/images/17023/368299/028.jpg'),
(6, 2, 'http://qqtaku.net/4140/2/0.jpg?783=g5451\r\nhttp://qqtaku.net/4140/2/1.jpg?783=g5451\r\nhttp://qqtaku.net/4140/2/2.jpg?783=g5451\r\nhttp://qqtaku.net/4140/2/3.jpg?783=g5451\r\nhttp://qqtaku.net/4140/2/4.jpg?783=g5451\r\nhttp://qqtaku.net/4140/2/5.jpg?783=g5451\r\nhttp://qqtaku.net/4140/2/6.jpg?783=g5451\r\nhttp://qqtaku.net/4140/2/7.jpg?783=g5451\r\nhttp://qqtaku.net/4140/2/8.jpg?783=g5451\r\nhttp://qqtaku.net/4140/2/9.jpg?783=g5451\r\nhttp://qqtaku.net/4140/2/10.jpg?783=g5451'),
(7, 1, 'http://imageinstant.com/data/images/4389/168970/002.png\r\nhttp://imageinstant.com/data/images/4389/168970/003.png\r\nhttp://imageinstant.com/data/images/4389/168970/004.png\r\nhttp://imageinstant.com/data/images/4389/168970/009.png\r\nhttp://imageinstant.com/data/images/4389/168970/011.png\r\nhttp://imageinstant.com/data/images/4389/168970/012.png\r\nhttp://imageinstant.com/data/images/4389/168970/013.png\r\nhttp://imageinstant.com/data/images/4389/168970/015.png\r\nhttp://imageinstant.com/data/images/4389/168970/016.png\r\nhttp://imageinstant.com/data/images/4389/168970/017.png\r\nhttp://imageinstant.com/data/images/4389/168970/019.png\r\nhttp://imageinstant.com/data/images/4389/168970/020.png\r\nhttp://imageinstant.com/data/images/4389/168970/022.png\r\nhttp://imageinstant.com/data/images/4389/168970/025.png\r\nhttp://imageinstant.com/data/images/4389/168970/026.png\r\nhttp://imageinstant.com/data/images/4389/168970/028.png\r\nhttp://imageinstant.com/data/images/4389/168970/029.png\r\nhttp://imageinstant.com/data/images/4389/168970/031.png\r\nhttp://imageinstant.com/data/images/4389/168970/033.png\r\nhttp://imageinstant.com/data/images/4389/168970/035.png\r\nhttp://imageinstant.com/data/images/4389/168970/036.png\r\nhttp://imageinstant.com/data/images/4389/168970/038.png\r\nhttp://imageinstant.com/data/images/4389/168970/039.png\r\nhttp://imageinstant.com/data/images/4389/168970/041.png\r\nhttp://imageinstant.com/data/images/4389/168970/043.png\r\nhttp://imageinstant.com/data/images/4389/168970/045.png\r\nhttp://imageinstant.com/data/images/4389/168970/046.png'),
(7, 2, 'http://imageinstant.com/data/images/4389/80034/002.png\r\nhttp://imageinstant.com/data/images/4389/80034/003.png\r\nhttp://imageinstant.com/data/images/4389/80034/004.png\r\nhttp://imageinstant.com/data/images/4389/80034/005.png\r\nhttp://imageinstant.com/data/images/4389/80034/006.png\r\nhttp://imageinstant.com/data/images/4389/80034/007.png\r\nhttp://imageinstant.com/data/images/4389/80034/008.png\r\nhttp://imageinstant.com/data/images/4389/80034/009.png\r\nhttp://imageinstant.com/data/images/4389/80034/010.png\r\nhttp://imageinstant.com/data/images/4389/80034/012.png\r\nhttp://imageinstant.com/data/images/4389/80034/013.png\r\nhttp://imageinstant.com/data/images/4389/80034/014.png\r\nhttp://imageinstant.com/data/images/4389/80034/015.png\r\nhttp://imageinstant.com/data/images/4389/80034/016.png\r\nhttp://imageinstant.com/data/images/4389/80034/017.png\r\nhttp://imageinstant.com/data/images/4389/80034/019.png'),
(7, 3, 'http://imageinstant.com/data/images/4389/80035/002.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/003.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/004.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/005.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/006.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/007.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/008.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/009.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/010.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/011.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/012.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/013.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/014.jpg\r\nhttp://imageinstant.com/data/images/4389/80035/016.jpg'),
(8, 1, 'http://imageinstant.com/data/images/11996/235468/002.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/003.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/005.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/005.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/006.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/007.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/008.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/008.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/009.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/010.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/011.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/012.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/013.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/014.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/015.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/016.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/018.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/019.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/020.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/022.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/023.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/024.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/025.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/027.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/028.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/029.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/030.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/031.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/032.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/033.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/034.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/035.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/036.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/038.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/040.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/041.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/042.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/044.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/046.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/047.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/048.jpg\r\nhttp://imageinstant.com/data/images/11996/235468/050.jpg'),
(8, 2, 'http://imageinstant.com/data/images/11996/235469/001.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/002.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/003.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/003.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/004.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/005.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/006.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/007.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/008.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/009.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/010.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/011.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/012.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/013.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/014.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/015.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/017.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/019.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/020.jpg\r\nhttp://imageinstant.com/data/images/11996/235469/022.jpg'),
(9, 1, 'http://imageinstant.com/data/images/19997/418184/002.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/002.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/002.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/002.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/003.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/003.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/004.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/004.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/005.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/005.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/006.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/006.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/007.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/007.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/008.jpg\r\nhttp://imageinstant.com/data/images/19997/418184/008.jpg'),
(9, 2, 'http://imageinstant.com/data/images/19997/419012/002.jpg\r\nhttp://imageinstant.com/data/images/19997/419012/002.jpg\r\nhttp://imageinstant.com/data/images/19997/419012/002.jpg\r\nhttp://imageinstant.com/data/images/19997/419012/003.jpg\r\nhttp://imageinstant.com/data/images/19997/419012/003.jpg\r\nhttp://imageinstant.com/data/images/19997/419012/004.jpg\r\nhttp://imageinstant.com/data/images/19997/419012/004.jpg\r\nhttp://imageinstant.com/data/images/19997/419012/005.jpg\r\nhttp://imageinstant.com/data/images/19997/419012/005.jpg\r\nhttp://imageinstant.com/data/images/19997/419012/006.jpg\r\n http://imageinstant.com/data/images/19997/419012/007.jpg\r\nhttp://imageinstant.com/data/images/19997/419012/007.jpg\r\n'),
(10, 1, 'http://imageinstant.com/data/images/24794/497915/002.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/003.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/004.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/005.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/006.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/007.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/008.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/009.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/010.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/011.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/012.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/013.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/015.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/016.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/018.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/019.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/020.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/021.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/022.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/024.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/025.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/028.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/028.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/032.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/034.jpg\r\nhttp://imageinstant.com/data/images/24794/497915/042.jpg'),
(10, 2, 'http://imageinstant.com/data/images/24794/501563/002.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/004.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/004.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/006.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/007.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/008.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/011.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/012.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/013.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/015.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/017.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/019.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/021.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/022.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/025.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/026.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/028.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/030.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/034.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/035.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/038.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/040.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/042.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/043.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/045.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/047.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/053.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/055.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/057.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/059.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/063.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/065.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/084.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/089.jpg\r\nhttp://imageinstant.com/data/images/24794/501563/092.jpg'),
(11, 1, 'http://imageinstant.com/data/images/22254/466092/003.png\r\nhttp://imageinstant.com/data/images/22254/466092/006.png\r\nhttp://imageinstant.com/data/images/22254/466092/007.png\r\nhttp://imageinstant.com/data/images/22254/466092/009.png\r\nhttp://imageinstant.com/data/images/22254/466092/010.png\r\nhttp://imageinstant.com/data/images/22254/466092/012.png\r\nhttp://imageinstant.com/data/images/22254/466092/014.png\r\nhttp://imageinstant.com/data/images/22254/466092/016.png\r\nhttp://imageinstant.com/data/images/22254/466092/018.png\r\nhttp://imageinstant.com/data/images/22254/466092/020.png\r\nhttp://imageinstant.com/data/images/22254/466092/022.png\r\nhttp://imageinstant.com/data/images/22254/466092/024.png\r\nhttp://imageinstant.com/data/images/22254/466092/025.png\r\nhttp://imageinstant.com/data/images/22254/466092/026.png\r\nhttp://imageinstant.com/data/images/22254/466092/028.png\r\nhttp://imageinstant.com/data/images/22254/466092/030.png\r\nhttp://imageinstant.com/data/images/22254/466092/031.png\r\nhttp://imageinstant.com/data/images/22254/466092/032.png\r\nhttp://imageinstant.com/data/images/22254/466092/034.png\r\nhttp://imageinstant.com/data/images/22254/466092/035.png\r\nhttp://imageinstant.com/data/images/22254/466092/037.png\r\nhttp://imageinstant.com/data/images/22254/466092/039.png\r\nhttp://imageinstant.com/data/images/22254/466092/040.png\r\nhttp://imageinstant.com/data/images/22254/466092/043.jpg'),
(11, 2, 'http://imageinstant.com/data/images/22254/469248/003.png\r\nhttp://imageinstant.com/data/images/22254/469248/004.png\r\nhttp://imageinstant.com/data/images/22254/469248/005.png\r\nhttp://imageinstant.com/data/images/22254/469248/006.png\r\nhttp://imageinstant.com/data/images/22254/469248/008.png\r\nhttp://imageinstant.com/data/images/22254/469248/010.png\r\nhttp://imageinstant.com/data/images/22254/469248/011.png\r\nhttp://imageinstant.com/data/images/22254/469248/013.png\r\nhttp://imageinstant.com/data/images/22254/469248/014.png\r\nhttp://imageinstant.com/data/images/22254/469248/016.png\r\nhttp://imageinstant.com/data/images/22254/469248/018.png\r\nhttp://imageinstant.com/data/images/22254/469248/022.png\r\nhttp://imageinstant.com/data/images/22254/469248/024.png\r\nhttp://imageinstant.com/data/images/22254/469248/026.png\r\nhttp://imageinstant.com/data/images/22254/469248/029.png\r\nhttp://imageinstant.com/data/images/22254/469248/031.png'),
(11, 3, 'http://imageinstant.com/data/images/22254/471401/003.png\r\nhttp://imageinstant.com/data/images/22254/471401/004.png\r\nhttp://imageinstant.com/data/images/22254/471401/005.png\r\nhttp://imageinstant.com/data/images/22254/471401/006.png\r\nhttp://imageinstant.com/data/images/22254/471401/007.png\r\nhttp://imageinstant.com/data/images/22254/471401/008.png\r\nhttp://imageinstant.com/data/images/22254/471401/010.png\r\nhttp://imageinstant.com/data/images/22254/471401/011.png\r\nhttp://imageinstant.com/data/images/22254/471401/013.png\r\nhttp://imageinstant.com/data/images/22254/471401/014.png\r\nhttp://imageinstant.com/data/images/22254/471401/016.png\r\nhttp://imageinstant.com/data/images/22254/471401/018.png\r\nhttp://imageinstant.com/data/images/22254/471401/021.png\r\nhttp://imageinstant.com/data/images/22254/471401/023.png\r\nhttp://imageinstant.com/data/images/22254/471401/025.png\r\nhttp://imageinstant.com/data/images/22254/471401/026.png'),
(12, 1, 'http://imageinstant.com/data/images/12236/240243/001.jpg\r\nhttp://imageinstant.com/data/images/12236/240243/003.jpg\r\nhttp://imageinstant.com/data/images/12236/240243/005.jpg\r\nhttp://imageinstant.com/data/images/12236/240243/009.jpg\r\nhttp://imageinstant.com/data/images/12236/240243/012.jpg\r\nhttp://imageinstant.com/data/images/12236/240243/014.jpg\r\nhttp://imageinstant.com/data/images/12236/240243/016.jpg\r\nhttp://imageinstant.com/data/images/12236/240243/019.jpg\r\nhttp://imageinstant.com/data/images/12236/240243/021.jpg\r\nhttp://imageinstant.com/data/images/12236/240243/022.jpg'),
(12, 2, 'http://imageinstant.com/data/images/12236/240530/001.jpg\r\nhttp://imageinstant.com/data/images/12236/240530/003.jpg\r\nhttp://imageinstant.com/data/images/12236/240530/005.jpg\r\nhttp://imageinstant.com/data/images/12236/240530/007.jpg\r\nhttp://imageinstant.com/data/images/12236/240530/010.jpg\r\nhttp://imageinstant.com/data/images/12236/240530/012.jpg\r\nhttp://imageinstant.com/data/images/12236/240530/013.jpg\r\nhttp://imageinstant.com/data/images/12236/240530/016.jpg\r\nhttp://imageinstant.com/data/images/12236/240530/019.jpg\r\nhttp://imageinstant.com/data/images/12236/240530/021.jpg\r\nhttp://imageinstant.com/data/images/12236/240530/025.jpg\r\nhttp://imageinstant.com/data/images/12236/240530/029.jpg'),
(12, 3, 'http://imageinstant.com/data/images/12236/240655/001.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/002.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/003.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/005.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/006.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/007.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/008.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/010.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/012.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/013.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/014.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/016.jpg\r\nhttp://imageinstant.com/data/images/12236/240655/017.jpg'),
(13, 1, 'http://imageinstant.com/data/images/24034/486540/002.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/004.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/006.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/007.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/009.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/012.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/014.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/017.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/020.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/023.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/025.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/028.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/031.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/035.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/039.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/041.jpg\r\nhttp://imageinstant.com/data/images/24034/486540/044.jpg'),
(13, 2, 'http://imageinstant.com/data/images/24034/487405/001.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/003.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/006.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/007.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/011.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/014.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/017.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/021.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/024.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/028.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/031.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/035.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/042.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/046.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/051.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/051.jpg\r\nhttp://imageinstant.com/data/images/24034/487405/060.jpg'),
(14, 1, 'http://imageinstant.com/data/images/26448/526391/001.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/002.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/003.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/004.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/005.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/006.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/007.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/009.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/010.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/011.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/013.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/014.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/016.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/017.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/019.jpg\r\nhttp://imageinstant.com/data/images/26448/526391/020.jpg'),
(14, 2, 'http://imageinstant.com/data/images/26448/526390/001.jpg\r\nhttp://imageinstant.com/data/images/26448/526390/003.jpg\r\nhttp://imageinstant.com/data/images/26448/526390/005.jpg\r\nhttp://imageinstant.com/data/images/26448/526390/007.jpg\r\nhttp://imageinstant.com/data/images/26448/526390/009.jpg\r\nhttp://imageinstant.com/data/images/26448/526390/011.jpg\r\nhttp://imageinstant.com/data/images/26448/526390/014.jpg\r\nhttp://imageinstant.com/data/images/26448/526390/016.jpg\r\nhttp://imageinstant.com/data/images/26448/526390/018.jpg'),
(14, 3, 'http://imageinstant.com/data/images/26448/526389/001.jpg\r\nhttp://imageinstant.com/data/images/26448/526389/003.jpg\r\nhttp://imageinstant.com/data/images/26448/526389/004.jpg\r\nhttp://imageinstant.com/data/images/26448/526389/005.jpg\r\nhttp://imageinstant.com/data/images/26448/526389/007.jpg\r\nhttp://imageinstant.com/data/images/26448/526389/008.jpg\r\nhttp://imageinstant.com/data/images/26448/526389/010.jpg\r\nhttp://imageinstant.com/data/images/26448/526389/012.jpg\r\nhttp://imageinstant.com/data/images/26448/526389/014.jpg\r\nhttp://imageinstant.com/data/images/26448/526389/017.jpg\r\nhttp://imageinstant.com/data/images/26448/526389/019.jpg\r\nhttp://imageinstant.com/data/images/26448/526389/020.jpg'),
(15, 1, 'http://imageinstant.com/data/images/25778/513747/003.png\r\nhttp://imageinstant.com/data/images/25778/513747/004.png\r\nhttp://imageinstant.com/data/images/25778/513747/005.png\r\nhttp://imageinstant.com/data/images/25778/513747/006.png\r\nhttp://imageinstant.com/data/images/25778/513747/007.png\r\nhttp://imageinstant.com/data/images/25778/513747/008.png\r\nhttp://imageinstant.com/data/images/25778/513747/009.png\r\nhttp://imageinstant.com/data/images/25778/513747/010.png\r\nhttp://imageinstant.com/data/images/25778/513747/012.png\r\nhttp://imageinstant.com/data/images/25778/513747/014.png\r\nhttp://imageinstant.com/data/images/25778/513747/016.png\r\nhttp://imageinstant.com/data/images/25778/513747/018.png\r\nhttp://imageinstant.com/data/images/25778/513747/020.png\r\nhttp://imageinstant.com/data/images/25778/513747/021.png\r\nhttp://imageinstant.com/data/images/25778/513747/023.png'),
(15, 2, 'http://imageinstant.com/data/images/25778/516574/001.jpg\r\nhttp://imageinstant.com/data/images/25778/516574/002.jpg\r\nhttp://imageinstant.com/data/images/25778/516574/003.jpg\r\nhttp://imageinstant.com/data/images/25778/516574/005.jpg\r\nhttp://imageinstant.com/data/images/25778/516574/007.jpg\r\nhttp://imageinstant.com/data/images/25778/516574/009.jpg\r\nhttp://imageinstant.com/data/images/25778/516574/011.jpg\r\nhttp://imageinstant.com/data/images/25778/516574/013.jpg\r\nhttp://imageinstant.com/data/images/25778/516574/015.jpg\r\nhttp://imageinstant.com/data/images/25778/516574/016.jpg\r\nhttp://imageinstant.com/data/images/25778/516574/018.jpg\r\nhttp://imageinstant.com/data/images/25778/516574/020.jpg'),
(16, 1, 'http://imageinstant.com/data/images/24719/494863/001.jpg\r\nhttp://imageinstant.com/data/images/24719/494863/003.jpg\r\nhttp://imageinstant.com/data/images/24719/494863/005.jpg\r\nhttp://imageinstant.com/data/images/24719/494863/007.jpg\r\nhttp://imageinstant.com/data/images/24719/494863/009.jpg\r\nhttp://imageinstant.com/data/images/24719/494863/010.jpg\r\nhttp://imageinstant.com/data/images/24719/494863/012.jpg\r\nhttp://imageinstant.com/data/images/24719/494863/014.jpg\r\nhttp://imageinstant.com/data/images/24719/494863/017.jpg\r\nhttp://imageinstant.com/data/images/24719/494863/019.jpg\r\nhttp://imageinstant.com/data/images/24719/494863/021.jpg\r\nhttp://imageinstant.com/data/images/24719/494863/023.jpg'),
(16, 2, 'http://imageinstant.com/data/images/24719/494864/001.jpg\r\nhttp://imageinstant.com/data/images/24719/494864/003.jpg\r\nhttp://imageinstant.com/data/images/24719/494864/005.jpg\r\nhttp://imageinstant.com/data/images/24719/494864/007.jpg\r\nhttp://imageinstant.com/data/images/24719/494864/009.jpg\r\nhttp://imageinstant.com/data/images/24719/494864/011.jpg\r\nhttp://imageinstant.com/data/images/24719/494864/013.jpg\r\nhttp://imageinstant.com/data/images/24719/494864/014.jpg'),
(17, 1, 'http://imageinstant.com/data/images/17618/359837/001.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/002.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/004.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/005.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/007.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/009.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/010.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/011.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/013.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/016.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/017.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/019.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/022.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/025.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/038.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/040.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/042.jpg\r\nhttp://imageinstant.com/data/images/17618/359837/045.jpg'),
(17, 2, 'http://imageinstant.com/data/images/17618/360642/001.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/002.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/004.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/005.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/006.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/007.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/009.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/010.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/012.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/014.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/016.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/017.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/019.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/019.jpg\r\nhttp://imageinstant.com/data/images/17618/360642/022.jpg'),
(18, 1, 'http://imageinstant.com/data/images/26381/524953/001.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/002.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/007.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/009.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/010.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/013.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/016.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/018.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/021.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/025.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/028.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/031.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/034.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/036.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/040.jpg\r\nhttp://imageinstant.com/data/images/26381/524953/042.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `story`
--

CREATE TABLE `story` (
  `MSS` int(11) NOT NULL,
  `Name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Day_update` date DEFAULT NULL,
  `coverpicture` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `story`
--

INSERT INTO `story` (`MSS`, `Name`, `Day_update`, `coverpicture`, `link`) VALUES
(1, 'conan', '2019-12-04', 'https://upload.wikimedia.org/wikipedia/vi/thumb/3/3e/Detective_conan_cover_1.jpg/230px-Detective_conan_cover_1.jpg', 'doctruyen/conan.php'),
(2, 'wonted', '2019-12-03', 'http://st.truyenchon.com/data/comics/237/wonted.jpg', 'doctruyen/wonted.php'),
(3, 'ma dao to su', '2019-12-03', 'https://3.bp.blogspot.com/-ygi8BwPu7aw/W43PRSMsXqI/AAAAAAAAZVE/27exMPoLyvg5dyWO_fhKjHRmkh9RyPf1ACHMYCw/ma-dao-to-su-mao-doan-tieu-kiem-kiem', 'doctruyen/madaotosu.php'),
(4, 'death note', '2019-12-06', 'https://upload.wikimedia.org/wikipedia/vi/thumb/7/7d/DeathNote_vol1_cover.jpg/275px-DeathNote_vol1_cover.jpg', 'doctruyen/deathnote.php'),
(5, 'one piece', '2019-11-06', 'https://upload.wikimedia.org/wikipedia/en/thumb/9/90/One_Piece%2C_Volume_61_Cover_%28Japanese%29.jpg/220px-One_Piece%2C_Volume_61_Cover_%28Japanese%29.jpg', 'doctruyen/onepiece.php'),
(6, 'toan chuc phap su', '2019-08-05', 'https://weblinhtinh.xyz/wp-content/uploads/2020/05/toan-chuc-phap-su-2-quanzhi-fashi-season-2-250x350.jpg', 'doctruyen/toanchucphapsu.php'),
(7, 'one punch man', '2019-07-02', 'https://i.pinimg.com/236x/fa/11/c5/fa11c51174ffab470ba9768eb991688d.jpg', 'doctruyen/onepunchman.php'),
(8, 'naruto', '2019-06-05', 'http://st.truyenchon.com/data/comics/220/naruto-cuu-vi-ho-ly.jpg', 'doctruyen/naruto.php'),
(9, 'solo leveling', '2019-05-12', 'http://st.truyenchon.com/data/comics/29/toi-thang-cap-mot-minh.jpg', 'doctruyen/sololeveling.php'),
(10, 'nanyak', '2019-04-15', 'http://st.nettruyen.com/data/comics/218/nanyak.jpg', 'doctruyen/nanyak.php'),
(11, 'mao', '2019-01-11', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/ed/MAO_Vol_1.jpg/220px-MAO_Vol_1.jpg', 'doctruyen/mao.php'),
(12, 'doraemon', '2018-08-12', 'https://i.postimg.cc/s1dHhXnJ/doraemon.jpg', 'doctruyen/doraemon.php'),
(13, 'nam dam', '2018-05-14', 'http://st.nettruyen.com/data/comics/226/nam-dam.jpg', 'doctruyen/namdam.php'),
(14, 'parasite', '2018-03-12', 'http://st.nettruyen.com/data/comics/80/di-toc-trung-sinh.jpg', 'doctruyen/parasite.php'),
(15, 'hero', '2018-01-11', 'http://st.nettruyen.com/data/comics/178/heros.jpg', 'doctruyen/hero.php'),
(16, 'fairy tail', '2017-12-12', 'http://st.nettruyen.com/data/comics/143/hoi-phap-su-chuyen-phieu-luu-ki-thu-cua-614.jpg', 'doctruyen/fairytail.php'),
(17, 'gigant', '2017-11-23', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ7StcKj9pDM5lANjRzCWR6C4_SmEVLO42tAg&usqp=CAU', 'doctruyen/gigant.php'),
(18, 'cung dau', '2017-10-01', 'http://st.truyenchon.com/data/comics/13/cung-dau-live.jpg', 'doctruyen/cungdau.php');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`C_MSS`,`category`);

--
-- Chỉ mục cho bảng `plot`
--
ALTER TABLE `plot`
  ADD PRIMARY KEY (`R_MSS`,`Chapter`);

--
-- Chỉ mục cho bảng `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`MSS`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `story`
--
ALTER TABLE `story`
  MODIFY `MSS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
