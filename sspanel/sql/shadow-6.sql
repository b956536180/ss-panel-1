-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-10-09 15:06:48
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shadow`
--

-- --------------------------------------------------------

--
-- 表的结构 `danmu`
--

CREATE TABLE `danmu` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_phone` varchar(20) CHARACTER SET gbk NOT NULL,
  `danmu_content` varchar(128) CHARACTER SET gbk NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `danmu`
--

INSERT INTO `danmu` (`id`, `user_phone`, `danmu_content`, `time`) VALUES
(1, '17863963884', '你好', '2016-07-27 18:31:50'),
(2, '17863963884', '你好。', '2016-07-27 18:31:51'),
(3, '17863963884', '你好吗？发一条弹幕测试。', '2016-07-27 18:34:00'),
(4, '17863963884', '模特是山东省', '2016-07-27 18:36:28'),
(5, '17863963884', '模特是山东省。', '2016-07-27 18:36:29'),
(6, '17863963884', '为什么第一次就两条啊', '2016-07-27 18:36:52'),
(7, '17863963884', '为什么第一次就两条啊！', '2016-07-27 18:36:52'),
(8, '17863963884', '第二次你他妈也是两条', '2016-07-27 18:37:04'),
(9, '17863963884', '第二次你他妈也是两条。', '2016-07-27 18:37:04'),
(10, '17863963884', '两条', '2016-07-27 18:38:45'),
(11, '17863963884', '两条。', '2016-07-27 18:38:45'),
(12, '17863963884', '两边', '2016-07-27 18:44:26'),
(13, '17863963884', '两边。', '2016-07-27 18:44:26'),
(14, '17863963884', '你好', '2016-07-27 18:51:36'),
(15, '17863963884', '你好。', '2016-07-27 18:51:37'),
(16, '17863963884', '与瑞', '2016-07-27 18:57:20'),
(17, '17863963884', '与瑞。', '2016-07-27 18:57:22'),
(18, '17863963884', '。', '2016-07-27 19:17:23'),
(19, '17863963884', '谷神家园。', '2016-07-27 19:17:35'),
(20, '17863963884', '。', '2016-07-27 19:17:46'),
(21, '17863963884', '。', '2016-07-27 19:17:57'),
(22, '17863963884', '？', '2016-07-27 19:18:07'),
(23, '17863963884', '。', '2016-07-27 19:25:22'),
(24, '17863963884', '', '2016-07-27 19:30:20'),
(25, '17863963884', '', '2016-07-27 19:30:21'),
(26, '17863963884', '', '2016-07-27 19:30:30'),
(27, '17863963884', '', '2016-07-27 19:30:31'),
(28, '17863963884', '', '2016-07-27 19:30:38'),
(29, '17863963884', '', '2016-07-27 19:30:39'),
(30, '17863963884', '我去上学了', '2016-07-27 19:32:56'),
(31, '17863963884', '我去上学了我去上学了。', '2016-07-27 19:32:57'),
(32, '17863963884', '我去上学了我去上学了。', '2016-07-27 19:35:09'),
(33, '17863963884', '你好你好。', '2016-07-27 19:35:27'),
(34, '17863963884', '上学了上学了。', '2016-07-27 19:37:20'),
(35, '17863963884', '放学来上学了。', '2016-07-27 19:41:03'),
(36, '17863963884', '明天早上上学吗？', '2016-07-27 19:41:19'),
(37, '17863963884', '天天不上学吗？', '2016-07-27 19:41:30'),
(38, '17863963884', '小虎队。', '2016-07-27 19:54:40'),
(39, '17863963884', '变颜色了。', '2016-07-27 20:03:48'),
(40, '17863963884', '长安汽车。', '2016-07-27 20:19:51'),
(41, '17863963884', '这个颜色怎么不变？', '2016-07-27 20:20:01'),
(42, '17863963884', '为什么是白色？', '2016-07-27 20:20:09'),
(43, '17863963884', '为什么颜色不变了？', '2016-07-27 20:25:53'),
(44, '17863963884', '蓝色。', '2016-07-27 20:28:13'),
(45, '17863963884', '嘿嘿。', '2016-07-27 20:31:57'),
(46, '17863963884', '真是黑啊！', '2016-07-27 20:32:10'),
(47, '17863963884', '嗯。', '2016-07-28 02:55:36'),
(48, '17863963884', '淡漠呢！', '2016-07-28 02:56:00'),
(49, '17863963884', '你好。', '2016-07-28 02:56:33'),
(50, '17863963884', '恶魔回来了。', '2016-07-28 02:56:54'),
(51, '17863963884', '怎么会这么坏了？', '2016-07-28 03:00:11'),
(52, '17863963884', '耽误了。', '2016-07-28 03:08:11'),
(53, '17863963884', '怎么？', '2016-07-28 03:21:32'),
(54, '17863963884', '你好。', '2016-07-28 06:14:16'),
(55, '17863963884', '你好。', '2016-07-28 06:21:46'),
(56, '17863963884', '怎么还是白色？', '2016-07-28 06:21:57'),
(57, '17863963884', '终于变色了。', '2016-07-28 06:22:04'),
(58, '17863963884', '又是白色。', '2016-07-28 06:22:11'),
(59, '17863963884', '忘了，难受了，还不错。', '2016-07-28 06:22:20'),
(60, '17863963884', '便说。', '2016-07-28 06:28:24'),
(61, '17863963884', '换个颜色。', '2016-07-28 06:28:33'),
(62, '17863963884', '换颜色呀！', '2016-07-28 06:28:40'),
(63, '17863963884', '我操，怎么都是白色？', '2016-07-28 06:28:49'),
(64, '17863963884', '阿西吧！', '2016-07-28 06:28:57'),
(65, '17863963884', '换个颜色。', '2016-07-28 06:31:08'),
(66, '17863963884', '换换颜色。', '2016-07-28 06:31:22'),
(67, '17863963884', '这还差不多嘛。', '2016-07-28 06:31:33'),
(68, '17863963884', '这里是山东省德州市。', '2016-07-28 06:31:54'),
(69, '17863963884', '为什么科大讯飞的语音识别技术是这么准为什么？就连我随便乱说的话他都能够，嗯出来的。', '2016-07-28 06:32:17'),
(70, '17863963884', '沈东。', '2016-07-28 10:28:12'),
(71, '17863963884', '你说话的人。', '2016-07-28 11:16:32'),
(72, '17863963884', '一。', '2016-07-28 11:16:53'),
(73, '17863963884', '带我上青岛。', '2016-07-28 11:17:24'),
(74, '17863963884', '高德地图继续为您导航。', '2016-07-28 14:50:22'),
(75, '17863963884', '。', '2016-07-29 02:10:49'),
(76, '17863963884', '可看不见，哎。', '2016-07-29 10:49:32'),
(77, '17863963884', '许爸，爸，你好。', '2016-07-29 10:49:53'),
(78, '17863963884', '我。', '2016-07-29 10:54:11'),
(79, '17863963884', '嗯。', '2016-07-29 23:35:02'),
(80, '17863963884', '。', '2016-08-01 12:26:42'),
(81, '17863963884', '你好。', '2016-08-03 00:58:07'),
(82, '商家17854259542', '把。', '2016-08-05 01:43:16'),
(83, '商家17854259542', '。', '2016-08-05 15:54:40'),
(84, '商家17854259542', '你好。', '2016-08-06 01:14:42'),
(85, '17854259542', '你好。', '2016-08-06 01:16:42'),
(86, '商家17854259542', '人都能生长。', '2016-08-06 09:55:18'),
(87, '商家13658667478', '免疫力低下。', '2016-08-06 14:45:31'),
(88, '商家13658667478', '一，这也太应该是长得这么快吧！', '2016-08-06 14:46:07'),
(89, '17854259542', '你好。', '2016-08-11 07:20:57'),
(90, '17854259542', '你好。', '2016-08-11 07:38:41'),
(91, 'xbw@mvp.com', '你。', '2016-08-17 13:56:50'),
(92, 'xbw@mvp.com', '你们家？', '2016-08-17 14:20:10'),
(93, 'xbw@mvp.com', '。', '2016-08-18 15:20:06'),
(94, 'xbw@mvp.com', '嗯。', '2016-08-18 15:20:55'),
(95, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 07:50:36'),
(96, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 07:59:28'),
(97, 'xbw@mvp.com', '下线啦！！！', '2016-08-19 08:00:22'),
(98, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 08:01:23'),
(99, 'xbw@mvp.com', '下线啦！！！', '2016-08-19 08:01:53'),
(100, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 08:02:37'),
(101, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 08:16:15'),
(102, 'xbw@mvp.com', '下线啦！！！', '2016-08-19 08:16:19'),
(103, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 08:16:22'),
(104, 'xbw@mvp.com', '下线啦！！！', '2016-08-19 08:19:07'),
(105, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 08:19:08'),
(106, 'xbw@mvp.com', '下线啦！！！', '2016-08-19 08:20:36'),
(107, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 08:22:34'),
(108, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 09:10:19'),
(109, 'xbw@mvp.com', '下线啦！！！', '2016-08-19 09:10:26'),
(110, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 09:10:38'),
(111, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 09:41:18'),
(112, 'xbw@mvp.com', '下线啦！！！', '2016-08-19 12:11:28'),
(113, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 12:26:57'),
(114, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 13:00:42'),
(115, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 13:16:09'),
(116, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 13:38:51'),
(117, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 13:46:51'),
(118, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 13:52:43'),
(119, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 13:58:04'),
(120, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 14:01:31'),
(121, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 14:19:37'),
(122, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 14:50:17'),
(123, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 14:52:46'),
(124, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 14:53:59'),
(125, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 14:56:28'),
(126, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 14:58:26'),
(127, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 15:02:35'),
(128, 'xbw@mvp.com', '下线啦！！！', '2016-08-19 15:08:11'),
(129, 'xbw@mvp.com', '上线啦！！！', '2016-08-19 15:08:40'),
(130, '11', '22', '2016-08-19 15:24:47'),
(131, '11', '22', '2016-08-19 15:25:22'),
(132, '11', '22', '2016-08-19 15:26:37'),
(133, '11', '22', '2016-08-19 15:26:38'),
(134, '11', '22', '2016-08-19 15:27:12'),
(135, 'xbw@mvp.com', '区', '2016-08-19 15:31:56'),
(136, 'xbw@mvp.com', '来来来', '2016-09-01 17:32:04'),
(137, 'xbw@mvp.com', '弹幕', '2016-09-01 17:33:39'),
(138, 'xbw@mvp.com', '又一次', '2016-09-01 18:11:49'),
(139, 'xbw@mvp.com', '炸了', '2016-09-01 18:12:23'),
(140, 'xbw@mvp.com', '可以吗？', '2016-09-01 18:13:47'),
(141, 'xbw@mvp.com', '项目刚起来。', '2016-09-01 18:14:08'),
(142, 'xbw@mvp.com', '今天不用很多。', '2016-09-01 18:14:17'),
(143, 'xbw@mvp.com', '怎么多了好卡？', '2016-09-01 18:14:40'),
(144, 'xbw@mvp.com', 'iiiiiiiiiiii', '2016-09-01 18:17:20'),
(145, 'xbw@mvp.com', '。', '2016-09-01 18:19:15'),
(146, 'xbw@mvp.com', 'hgggg', '2016-09-02 09:14:29'),
(147, 'xbw@mvp.com', 'gggg', '2016-09-02 09:16:39'),
(148, 'xbw@mvp.com', 'gggg', '2016-09-02 15:04:12'),
(149, 'xbw@mvp.com', '还能用不', '2016-09-02 16:45:37'),
(150, 'xbw@mvp.com', '一起youtube', '2016-09-03 08:35:38'),
(151, 'xbw@mvp.com', '不错', '2016-09-03 08:35:44'),
(152, 'xbw@mvp.com', 'vvvv', '2016-09-09 05:28:13'),
(153, 'xbw@mvp.com', '心DJ舞曲', '2016-09-13 13:00:12'),
(154, 'xbw@mvp.com', '新服务器就是快', '2016-09-13 13:00:28'),
(155, 'xbw@mvp.com', 'hhhhgfddd', '2016-09-13 13:00:38'),
(156, 'xbw@mvp.com', '都宜男', '2016-09-21 08:03:02'),
(157, 'xbw@mvp.com', '都宜男', '2016-09-21 08:03:48'),
(158, 'xbw@mvp.com', '我上线关你屁事', '2016-09-28 16:11:35'),
(159, 'xbw@mvp.com', '就是', '2016-09-28 16:11:45'),
(160, 'xbw@mvp.com', '确实有问题', '2016-09-30 15:29:38'),
(161, 'xbw@mvp.com', '确实有问题。', '2016-09-30 15:29:52'),
(162, 'xbw@mvp.com', 'vvvv', '2016-10-03 03:40:11'),
(163, 'xbw@mvp.com', 'vvvvv', '2016-10-03 04:01:35'),
(164, 'xbw@mvp.com', '沌口。', '2016-10-03 04:04:04'),
(165, 'xbw@mvp.com', 'ggggg', '2016-10-03 04:07:38');

-- --------------------------------------------------------

--
-- 表的结构 `fangke`
--

CREATE TABLE `fangke` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` varchar(256) CHARACTER SET gbk NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `fangke`
--

INSERT INTO `fangke` (`id`, `ids`, `time`) VALUES
(1, 'xbw12138', '2016-10-01 13:54:58'),
(2, 'xbw12138', '2016-10-01 13:56:04'),
(3, 'xbw12138', '2016-10-01 14:21:49'),
(4, 'xbw2138', '2016-10-02 02:35:35'),
(5, 'xbw12138', '2016-10-02 02:35:41'),
(6, 'xbw12138', '2016-10-03 03:16:45'),
(7, 'xbw12138', '2016-10-03 03:42:33'),
(8, 'xbw12138', '2016-10-03 04:14:15'),
(9, 'xbw12138', '2016-10-03 04:16:35'),
(10, 'xbw12138', '2016-10-03 11:29:18');

-- --------------------------------------------------------

--
-- 表的结构 `invite_code`
--

CREATE TABLE `invite_code` (
  `id` int(32) NOT NULL,
  `code` varchar(128) NOT NULL,
  `user` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `invite_code`
--

INSERT INTO `invite_code` (`id`, `code`, `user`) VALUES
(2, 'xbwZDU4NGZjZWQzMDFiNDQyNjU0', 0),
(3, 'xbwThmZGU1OGFiM2MyYjZlNTEzM', 0),
(4, 'xbwmFhZjM2OGUxODQwYTEzMjRlO', 0),
(5, 'xbwM5NWViZDBmNGI0NzgxNDVlY2', 0),
(6, 'xbwgwN2QwZDkyN2RjZDA5ODBmOD', 0),
(7, 'xbwNDNiNTNmNGNjMGFkMzgxOWEz', 0),
(8, 'xbwjFkOTkwNzFjOTNhZjM5MTcyM', 0),
(9, 'cnmddsbQ1NjBkNzhjNWU1OTljMmE5Yz', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ss_node`
--

CREATE TABLE `ss_node` (
  `id` int(11) NOT NULL,
  `node_name` varchar(128) NOT NULL,
  `node_type` int(3) NOT NULL,
  `node_server` varchar(128) NOT NULL,
  `node_method` varchar(64) NOT NULL,
  `node_info` varchar(128) NOT NULL,
  `node_status` varchar(128) NOT NULL,
  `node_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `ss_node`
--

INSERT INTO `ss_node` (`id`, `node_name`, `node_type`, `node_server`, `node_method`, `node_info`, `node_status`, `node_order`) VALUES
(1, '第一个节点', 0, '45.78.32.28', 'aes-256-cfb', 'node描述', '可用', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ss_reset_pwd`
--

CREATE TABLE `ss_reset_pwd` (
  `id` int(11) NOT NULL,
  `init_time` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uni_char` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ss_reset_pwd`
--

INSERT INTO `ss_reset_pwd` (`id`, `init_time`, `expire_time`, `user_id`, `uni_char`) VALUES
(0, 1424448190, 1424534590, 1, '2MzU5ODFkYzM4MmVkZTM2ZTdjNGNhNDI');

-- --------------------------------------------------------

--
-- 表的结构 `ss_user_admin`
--

CREATE TABLE `ss_user_admin` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ss_user_admin`
--

INSERT INTO `ss_user_admin` (`id`, `uid`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `user_name` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(32) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `passwd` varchar(16) NOT NULL,
  `t` int(11) NOT NULL DEFAULT '0',
  `u` bigint(20) NOT NULL,
  `d` bigint(20) NOT NULL,
  `plan` varchar(2) CHARACTER SET utf8mb4 NOT NULL,
  `transfer_enable` bigint(20) NOT NULL,
  `port` int(11) NOT NULL,
  `switch` tinyint(4) NOT NULL DEFAULT '1',
  `enable` tinyint(4) NOT NULL DEFAULT '1',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `last_get_gift_time` int(11) NOT NULL DEFAULT '0',
  `last_check_in_time` int(11) NOT NULL DEFAULT '0',
  `last_rest_pass_time` int(11) NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL,
  `invite_num` int(8) NOT NULL,
  `money` decimal(12,2) NOT NULL,
  `ref_by` int(11) NOT NULL DEFAULT '0',
  `ssbase` varchar(256) CHARACTER SET gbk NOT NULL,
  `user_token` varchar(256) CHARACTER SET gbk NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `user_name`, `email`, `pass`, `passwd`, `t`, `u`, `d`, `plan`, `transfer_enable`, `port`, `switch`, `enable`, `type`, `last_get_gift_time`, `last_check_in_time`, `last_rest_pass_time`, `reg_date`, `invite_num`, `money`, `ref_by`, `ssbase`, `user_token`) VALUES
(1, 'MVP', 'xbw@mvp.com', 'a24109e4a43d9574952668f20a4fa5d9', 'xbw12138', 1476018160, 113827644, 6272924959, 'B', 53847523328, 10000, 1, 1, 7, 0, 1471512614, 0, '1997-01-27 00:00:00', 0, '1.20', 1, '', 'e1f80ebc9c6128314254afbac9299015e712cf4e'),
(3, 'xbw12138', '110@qq.com', '641c0cf81f38d7f3d6ff8012d45d3fa5', 'w147978', 1476017227, 48125, 0, 'A', 53799288832, 10004, 1, 1, 1, 0, 1471320523, 0, '2016-08-07 06:05:47', 1, '0.00', 1, '', ''),
(5, 'Dead_Rabbit', '1054222912@qq.com', '023addedef52f136d44dcff1f8130acb', 's3hD2tRH', 1476017244, 48125, 0, 'A', 53739520000, 10009, 1, 1, 1, 0, 1471335900, 0, '2016-08-16 04:24:21', 1, '0.00', 1, '', ''),
(6, 'lzy12138', '120@qq.com', 'a24109e4a43d9574952668f20a4fa5d9', '123456', 1476017227, 2254240, 312147640, 'A', 53687091200, 10015, 1, 1, 1, 0, 0, 0, '2016-08-18 08:01:26', 1, '0.00', 1, '', ''),
(7, 'AudienL', '591928179@qq.com', '7ba34a7c9344df2acabdb0146b9e15e3', '1iP6vwSR', 1475492537, 1606233, 87081866, 'A', 0, 10017, 1, 1, 1, 0, 1474270404, 0, '2016-09-03 15:16:13', 0, '0.00', 7, '', ''),
(8, 'wzy12138', '130@qq.com', 'a24109e4a43d9574952668f20a4fa5d9', 'xbw12138', 1476017227, 294581, 8615229, 'A', 53687091200, 10018, 1, 1, 1, 0, 0, 0, '2016-09-11 16:09:36', 1, '0.00', 0, '', ''),
(9, 'storm', '865062186@qq.com', '973b7d5f96f8c067a80811680540db4f', 'qwe147978', 1476017227, 19284417, 4656252889, 'A', 53744762880, 10021, 1, 1, 1, 0, 1475424952, 0, '2016-09-11 16:09:36', 0, '0.00', 0, '', ''),
(13, 'pzh12138', '160@qq.com', 'a24109e4a43d9574952668f20a4fa5d9', 'Kq2BXPjY', 1476017227, 1513684, 446998447, 'A', 21474836480, 10025, 1, 1, 1, 0, 0, 0, '2016-10-09 18:53:15', 1, '0.00', 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danmu`
--
ALTER TABLE `danmu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fangke`
--
ALTER TABLE `fangke`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invite_code`
--
ALTER TABLE `invite_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_node`
--
ALTER TABLE `ss_node`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_reset_pwd`
--
ALTER TABLE `ss_reset_pwd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_user_admin`
--
ALTER TABLE `ss_user_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `danmu`
--
ALTER TABLE `danmu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- 使用表AUTO_INCREMENT `fangke`
--
ALTER TABLE `fangke`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `invite_code`
--
ALTER TABLE `invite_code`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `ss_node`
--
ALTER TABLE `ss_node`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ss_reset_pwd`
--
ALTER TABLE `ss_reset_pwd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ss_user_admin`
--
ALTER TABLE `ss_user_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
