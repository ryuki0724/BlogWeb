-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2023-06-10 15:15:16
-- 服务器版本： 10.4.27-MariaDB
-- PHP 版本： 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `school_exam`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL COMMENT 'id',
  `userNo` int(11) DEFAULT NULL COMMENT 'users_id',
  `title` varchar(30) DEFAULT NULL COMMENT '文章標題',
  `category` varchar(50) DEFAULT NULL COMMENT '分類',
  `content` text DEFAULT NULL COMMENT '内容',
  `publish` tinyint(1) DEFAULT NULL COMMENT '是否發佈',
  `create_date` datetime DEFAULT NULL COMMENT '建立時間',
  `modify_date` datetime DEFAULT NULL COMMENT '修改時間',
  `image` varchar(50) NOT NULL COMMENT '文章照片',
  `viewCX` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `userNo`, `title`, `category`, `content`, `publish`, `create_date`, `modify_date`, `image`, `viewCX`) VALUES
(3, 8, '愛撒嬌黑貓眼睛嚴重受傷，新北動保處手術後救回', '3', '0003.txt', 1, '2023-06-09 14:30:45', NULL, '0003.png', 5),
(16, 8, '流浪動物之家志工', '5', '0016.txt', 1, '2023-06-10 10:52:57', '2023-06-10 13:46:49', '0016.png', 2),
(18, 7, '愛撒嬌黑貓眼睛嚴重受傷，新北動保處手術後救回', '3', '0017.txt', 1, '2023-06-10 13:37:56', NULL, '0017.png', 1),
(19, 7, '愛撒嬌黑貓眼睛嚴重受傷，新北動保處手術後救回', '6', '0019.txt', 1, '2023-06-10 13:39:04', NULL, '0019.png', 1),
(20, 8, '愛撒嬌黑貓眼睛嚴重受傷，新北動保處手術後救回', '3', '0020.txt', 1, '2023-06-10 13:40:43', NULL, '0020.png', 2),
(21, 8, '流浪動物之家志工', '1', '0021.txt', 1, '2023-06-10 14:53:57', NULL, '0021.png', 0),
(22, 8, '流浪動物之家志工', '1', '0022.txt', 1, '2023-06-10 14:54:31', NULL, '0022.png', 0);

-- --------------------------------------------------------

--
-- 表的结构 `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level_id` tinyint(1) NOT NULL,
  `permis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `level`
--

INSERT INTO `level` (`id`, `level_id`, `permis`) VALUES
(1, 1, '管理員'),
(2, 2, '用戶'),
(3, -1, '停用');

-- --------------------------------------------------------

--
-- 表的结构 `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `DataID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `title`
--

INSERT INTO `title` (`id`, `category`, `DataID`) VALUES
(1, '收養記錄', 'article'),
(3, '動物保護', 'article'),
(5, '寵物訓練', 'article'),
(6, '動物保護', 'article'),
(8, '寵物活動', 'article'),
(9, '寵物飲食', 'article'),
(10, '攝影作品', 'work'),
(11, '插畫作品', 'work'),
(12, '文學作品', 'work'),
(13, '藝術創作', 'work'),
(14, '影片作品', 'work'),
(15, '設計作品', 'work');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `password`, `level`) VALUES
(7, '吉田龍生', 'yoshida122121@gmail.com', 'aaa', 'AAaa123', 1),
(8, '陳貴添', 'QuyThim@gmail.com', 'bbb', 'BBBbbb123', 1),
(11, '張鈵煇', '11115@stu.edu.tw', 'eee', 'EEEeee123', 2),
(13, '阿狗', 'dog@gmail.com', 'dog', 'dog', 2),
(14, '阿貓', 'cat@gmail.com', 'cat', 'cat', 2);

-- --------------------------------------------------------

--
-- 表的结构 `work`
--

CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `userNo` int(11) DEFAULT NULL COMMENT 'users_id',
  `title` varchar(30) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `publish` tinyint(1) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `viewCX` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `work`
--

INSERT INTO `work` (`id`, `userNo`, `title`, `category`, `content`, `publish`, `image`, `video`, `create_date`, `modify_date`, `viewCX`) VALUES
(5, 7, '違法的', '10', '0001.txt', 1, '0001.png', '0001.mp4', '2023-06-09 10:27:40', NULL, 0),
(6, 14, '搜索', '10', '0006.txt', 1, '0006.png', '0006.mp4', '2023-06-09 10:40:19', '2023-06-10 15:08:25', 1),
(7, 14, '測試', '10', '0007.txt', 1, '0007.png', '0007.mp4', '2023-06-09 15:26:28', '2023-06-10 15:08:03', 0),
(9, 8, 'waaaaaaaaaaaaaaaaa', '11', '0009.txt', 1, '0009.jpg', '0009.mp4', '2023-06-09 15:43:07', '2023-06-10 14:23:10', 31),
(10, 8, 'Apple Vision Pro', '10', '0010.txt', 1, '0010.jpg', '0010.mp4', '2023-06-10 14:04:25', '2023-06-10 14:24:56', 5),
(11, 8, 'Apple Vision Pro', '10', '0011.txt', 1, '0011.jpg', '0011.mp4', '2023-06-10 14:25:24', NULL, 1);

--
-- 转储表的索引
--

--
-- 表的索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userNo` (`userNo`),
  ADD KEY `category` (`category`);

--
-- 表的索引 `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_id` (`level_id`);

--
-- 表的索引 `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userNo` (`userNo`),
  ADD KEY `category` (`category`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=23;

--
-- 使用表AUTO_INCREMENT `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
