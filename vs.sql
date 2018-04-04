-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-04-04 09:35:17
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vs`
--

-- --------------------------------------------------------

--
-- 表的结构 `sys_sidebar`
--

CREATE TABLE `sys_sidebar` (
  `id` int(11) NOT NULL COMMENT '主键',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` varchar(100) DEFAULT NULL COMMENT '提示文本',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `style` varchar(100) DEFAULT NULL COMMENT '样式',
  `path` varchar(100) DEFAULT NULL COMMENT '跳转地址',
  `fun` varchar(11) DEFAULT NULL COMMENT '方法',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sys_sidebar`
--

INSERT INTO `sys_sidebar` (`id`, `sort`, `text`, `icon`, `style`, `path`, `fun`, `createtime`, `status`, `remark`) VALUES
(1, 1, '菜单', 'fa-bars', NULL, NULL, NULL, '2018-01-25 11:15:51', 1, NULL),
(2, 20, '首页', 'fa-windows', NULL, NULL, NULL, '2018-01-25 11:15:51', 1, NULL),
(3, 3, '页面', 'fa-files-o', 'page/pages', NULL, NULL, '2018-01-25 11:15:51', 1, NULL),
(4, 4, '博客', 'fa-pied-piper', 'blog/blogs', NULL, NULL, '2018-01-25 11:15:51', 1, NULL),
(5, 5, '项目', 'fa-github', NULL, 'project/project', NULL, '2018-01-25 11:15:51', 1, NULL),
(6, 6, '设计', 'fa-drupal', NULL, 'desgin/desgins', NULL, '2018-01-25 11:15:51', 1, NULL),
(7, 7, '音乐', 'fa-music', NULL, 'music/musics', NULL, '2018-01-25 11:15:51', 1, NULL),
(8, 8, '视频', 'fa-film', NULL, 'video/videos', NULL, '2018-01-25 11:15:51', 1, NULL),
(9, 9, '书籍', 'fa-paste', NULL, 'book/books', NULL, '2018-01-25 11:15:51', 1, NULL),
(10, 10, '财务', 'fa-pie-chart', NULL, 'finance/finances', NULL, '2018-01-25 11:15:51', 1, NULL),
(11, 11, '微信', 'fa-wechat', NULL, 'wechat/wechats', NULL, '2018-01-25 11:15:51', 1, NULL),
(12, 12, '链接', 'fa-link', NULL, 'link/links', NULL, '2018-01-25 11:15:51', 1, NULL),
(13, 13, '工具', 'fa-wrench', NULL, 'tool/tools', NULL, '2018-01-25 11:15:51', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_tool`
--

CREATE TABLE `sys_tool` (
  `id` int(11) NOT NULL COMMENT '主键',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` varchar(100) DEFAULT NULL COMMENT '提示文本',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `style` varchar(100) DEFAULT NULL COMMENT '样式',
  `path` varchar(100) DEFAULT NULL COMMENT '跳转地址',
  `fun` varchar(11) DEFAULT NULL COMMENT '方法',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sys_tool`
--

INSERT INTO `sys_tool` (`id`, `sort`, `text`, `icon`, `style`, `path`, `fun`, `createtime`, `status`, `remark`) VALUES
(1, 1, '系统菜单', 'fa-bars', NULL, NULL, NULL, '2018-01-25 11:15:51', 1, NULL),
(2, 2, '全屏显示', 'fa-arrows', NULL, NULL, NULL, '2018-01-25 11:15:51', 1, NULL),
(3, 3, '个人信息', 'fa-eye', 'page/pages', NULL, NULL, '2018-01-25 11:15:51', 1, NULL),
(4, 4, '性能检测', 'fa-desktop', 'blog/blogs', NULL, NULL, '2018-01-25 11:15:51', 1, NULL),
(5, 5, '欣赏音乐', 'fa-music', NULL, 'project/project', NULL, '2018-01-25 11:15:51', 1, NULL),
(6, 6, '时间日期', 'fa-clock-o', NULL, 'desgin/desgins', NULL, '2018-01-25 11:15:51', 1, NULL),
(7, 7, 'WebQQ', 'fa-qq', NULL, 'music/musics', NULL, '2018-01-25 11:15:51', 1, NULL),
(8, 8, '微信登录', 'fa-qrcode', NULL, 'video/videos', NULL, '2018-01-25 11:15:51', 1, NULL),
(9, 9, '微信登录', 'fa-paper-plane-o', NULL, 'book/books', NULL, '2018-01-25 11:15:51', 1, NULL),
(10, 10, '退出系统', 'fa-power-off', NULL, 'finance/finances', NULL, '2018-01-25 11:15:51', 1, NULL),
(11, 11, '', 'fa-flag', NULL, 'wechat/wechats', NULL, '2018-01-25 11:15:51', 1, NULL),
(12, 12, '', 'fa-heartbeat', NULL, 'link/links', NULL, '2018-01-25 11:15:51', 1, NULL),
(13, 13, '', 'fa-cloud', NULL, 'tool/tools', NULL, '2018-01-25 11:15:51', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `vs_admin_user`
--

CREATE TABLE `vs_admin_user` (
  `id` int(11) NOT NULL COMMENT '主键',
  `username` varchar(100) DEFAULT NULL COMMENT '账号',
  `password` varchar(100) DEFAULT 'd93a5def7511da3d0f2d171d9c344e91' COMMENT '密码',
  `nickname` varchar(100) DEFAULT NULL COMMENT '昵称',
  `moblie` varchar(11) DEFAULT NULL COMMENT '手机号',
  `header` varchar(100) DEFAULT NULL COMMENT '头像',
  `structureid` varchar(100) DEFAULT NULL COMMENT '部门',
  `postid` varchar(100) DEFAULT NULL COMMENT '岗位',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_admin_user`
--

INSERT INTO `vs_admin_user` (`id`, `username`, `password`, `nickname`, `moblie`, `header`, `structureid`, `postid`, `createtime`, `status`, `remark`) VALUES
(1, 'vsery', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'vsery', '1', '1', '2018-01-01 00:00:00', 1, '拥护者'),
(2, 'admin', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'admin', '1', '1', '2018-01-01 00:00:00', 0, '管理员'),
(3, 'test', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'test', '1', '1', '2018-01-01 00:00:00', 0, '测试员'),
(4, 'vs', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'vsery', '1', '1', '2018-01-01 00:00:00', 1, '拥护者'),
(5, 'administrator', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'admin', '1', '1', '2018-01-01 00:00:00', 0, '管理员'),
(6, 'text', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'test', '1', '1', '2018-01-01 00:00:00', 0, '测试员');

-- --------------------------------------------------------

--
-- 表的结构 `vs_banner`
--

CREATE TABLE `vs_banner` (
  `id` int(11) NOT NULL COMMENT '主键',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `src` varchar(100) DEFAULT NULL COMMENT '网络地址',
  `path` varchar(100) DEFAULT NULL COMMENT '跳转地址',
  `width` varchar(11) DEFAULT NULL COMMENT '宽度',
  `height` varchar(11) DEFAULT NULL COMMENT '高度',
  `style` varchar(100) DEFAULT NULL COMMENT '样式',
  `thumbnail` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_banner`
--

INSERT INTO `vs_banner` (`id`, `sort`, `src`, `path`, `width`, `height`, `style`, `thumbnail`, `createtime`, `status`, `remark`) VALUES
(1, 1, 'http://img.zcool.cn/community/01ed7a5a694068a80120a123041778.jpg', NULL, '1385', '360', '1', NULL, '2018-01-25 11:15:51', 1, '拥护者'),
(2, 2, 'http://img.zcool.cn/community/015f5e5a69403fa80120a123c1d5aa.jpg', NULL, '1385', '360', '1', NULL, '2018-01-25 11:15:51', 0, '管理员'),
(3, 3, 'http://img.zcool.cn/community/011bb85a693d19a80120a123c6b023.jpg', NULL, '1385', '360', '1', NULL, '2018-01-25 11:15:51', 0, '测试员'),
(4, 4, 'http://img.zcool.cn/community/01cdce5a69407ea8012134661beee8.jpg', NULL, '1385', '360', '1', NULL, '2018-01-25 11:15:51', 0, '测试员'),
(5, 5, 'http://img.zcool.cn/community/0189a25a693dcfa80120a123d8aa51.jpg', NULL, '1385', '360', '1', NULL, '2018-01-25 11:15:51', 0, '测试员');

-- --------------------------------------------------------

--
-- 表的结构 `vs_key`
--

CREATE TABLE `vs_key` (
  `id` int(11) NOT NULL COMMENT '主键',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` varchar(100) DEFAULT NULL COMMENT '文本',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_key`
--

INSERT INTO `vs_key` (`id`, `sort`, `text`, `createtime`, `status`, `remark`) VALUES
(1, 1, '前端', '2018-01-25 11:15:51', 1, NULL),
(2, 2, '前端开发', '2018-01-25 11:15:51', 1, NULL),
(3, 3, 'web前端开发', '2018-01-25 11:15:51', 1, NULL),
(4, 4, 'HTML', '2018-01-25 11:15:51', 1, NULL),
(5, 5, 'HTML/CSS', '2018-01-25 11:15:51', 1, NULL),
(6, 6, 'CSS', '2018-01-25 11:15:51', 1, NULL),
(7, 7, 'JavaScript', '2018-01-25 11:15:51', 1, NULL),
(8, 8, 'jQuery', '2018-01-25 11:15:51', 1, NULL),
(9, 9, 'Html5', '2018-01-25 11:15:51', 1, NULL),
(11, 11, 'Css3', '2018-01-25 11:15:51', 1, NULL),
(12, 12, 'Node.js', '2018-01-25 11:15:51', 1, NULL),
(13, 13, 'AngularJS', '2018-01-25 11:15:51', 1, NULL),
(14, 14, 'Bootstrap', '2018-01-25 11:15:51', 1, NULL),
(15, 15, 'React', '2018-01-25 11:15:51', 1, NULL),
(16, 16, 'Sass/Less', '2018-01-25 11:15:51', 1, NULL),
(17, 17, 'Vue.js', '2018-01-25 11:15:51', 1, NULL),
(18, 18, 'WebApp', '2018-01-25 11:15:51', 1, NULL),
(19, 19, '前端工具', '2018-01-25 11:15:51', 1, NULL),
(20, 20, '后端', '2018-01-25 11:15:51', 1, NULL),
(21, 21, '后端开发', '2018-01-25 11:15:51', 1, NULL),
(22, 22, 'PHP', '2018-01-25 11:15:51', 1, NULL),
(23, 23, 'Java', '2018-01-25 11:15:51', 1, NULL),
(24, 24, 'python', '2018-01-25 11:15:51', 1, NULL),
(25, 25, 'C', '2018-01-25 11:15:51', 1, NULL),
(26, 26, 'C++', '2018-01-25 11:15:51', 1, NULL),
(27, 27, 'Go', '2018-01-25 11:15:51', 1, NULL),
(28, 28, 'C#', '2018-01-25 11:15:51', 1, NULL),
(29, 29, 'Ruby', '2018-01-25 11:15:51', 1, NULL),
(30, 30, '移动开发', '2018-01-25 11:15:51', 1, NULL),
(31, 31, 'Android', '2018-01-25 11:15:51', 1, NULL),
(32, 32, 'IOS', '2018-01-25 11:15:51', 1, NULL),
(33, 33, 'Unity 3D', '2018-01-25 11:15:51', 1, NULL),
(34, 34, 'Cocos2d-x', '2018-01-25 11:15:51', 1, NULL),
(35, 35, '数据库', '2018-01-25 11:15:51', 1, NULL),
(36, 36, 'MySQL', '2018-01-25 11:15:51', 1, NULL),
(37, 37, 'MongoDB', '2018-01-25 11:15:51', 1, NULL),
(38, 38, 'Oracle', '2018-01-25 11:15:51', 1, NULL),
(39, 39, 'SQL Server', '2018-01-25 11:15:51', 1, NULL),
(40, 40, '大数据', '2018-01-25 11:15:51', 1, NULL),
(41, 41, '云计算', '2018-01-25 11:15:51', 1, NULL),
(42, 42, '大数据/云计算', '2018-01-25 11:15:51', 1, NULL),
(43, 43, '运维', '2018-01-25 11:15:51', 1, NULL),
(44, 44, '测试', '2018-01-25 11:15:51', 1, NULL),
(45, 45, '运维&测试', '2018-01-25 11:15:51', 1, NULL),
(46, 46, 'Linux', '2018-01-25 11:15:51', 1, NULL),
(47, 47, '设计', '2018-01-25 11:15:51', 1, NULL),
(48, 48, 'UI设计', '2018-01-25 11:15:51', 1, NULL),
(49, 49, 'VI设计', '2018-01-25 11:15:51', 1, NULL),
(50, 50, 'Web设计', '2018-01-25 11:15:51', 1, NULL),
(51, 51, '动画动效', '2018-01-25 11:15:51', 1, NULL),
(52, 52, 'APPUI设计', '2018-01-25 11:15:51', 1, NULL),
(53, 53, '设计工具', '2018-01-25 11:15:51', 1, NULL),
(54, 54, '设计基础', '2018-01-25 11:15:51', 1, NULL),
(55, 55, 'PS', '2018-01-25 11:15:51', 1, NULL),
(56, 56, 'Photoshop', '2018-01-25 11:15:51', 1, NULL),
(57, 57, 'CoreDraw', '2018-01-25 11:15:51', 1, NULL),
(58, 58, '矢量绘图软件', '2018-01-25 11:15:51', 1, NULL),
(59, 59, 'Adobe Photoshop CC', '2018-01-25 11:15:51', 1, NULL),
(60, 60, 'Adobe Photoshop', '2018-01-25 11:15:51', 1, NULL),
(61, 61, 'Adobe Illustrator CS5', '2018-01-25 11:15:51', 1, NULL),
(62, 62, '图形软件', '2018-01-25 11:15:51', 1, NULL),
(63, 63, 'UI', '2018-01-25 11:15:51', 1, NULL),
(64, 64, 'AI', '2018-01-25 11:15:51', 1, NULL),
(65, 65, 'VI', '2018-01-25 11:15:51', 1, NULL),
(66, 66, 'Web', '2018-01-25 11:15:51', 1, NULL),
(67, 67, 'Banner', '2018-01-25 11:15:51', 1, NULL),
(68, 68, 'Adobe Illustrator', '2018-01-25 11:15:51', 1, NULL),
(69, 69, 'Adobe Photoshop CS5', '2018-01-25 11:15:51', 1, NULL),
(70, 70, 'Adobe Photoshop CS6', '2018-01-25 11:15:51', 1, NULL),
(71, 71, 'sublime', '2018-01-25 11:15:51', 1, NULL),
(72, 72, 'github', '2018-01-25 11:15:51', 1, NULL),
(73, 73, 'Facebook', '2018-01-25 11:15:51', 1, NULL),
(74, 74, 'twitter', '2018-01-25 11:15:51', 1, NULL),
(75, 75, '正则表达式', '2018-01-25 11:15:51', 1, NULL),
(76, 76, '代码格式化', '2018-01-25 11:15:51', 1, NULL),
(77, 77, '编码转换', '2018-01-25 11:15:51', 1, NULL),
(78, 78, '加密', '2018-01-25 11:15:51', 1, NULL),
(79, 79, '解密', '2018-01-25 11:15:51', 1, NULL),
(80, 80, '加密/解密', '2018-01-25 11:15:51', 1, NULL),
(81, 81, '压缩', '2018-01-25 11:15:51', 1, NULL),
(82, 82, '解压', '2018-01-25 11:15:51', 1, NULL),
(83, 83, '压缩/解压', '2018-01-25 11:15:51', 1, NULL),
(84, 84, 'Fiddler', '2018-01-25 11:15:51', 1, NULL),
(85, 85, 'FIS', '2018-01-25 11:15:51', 1, NULL),
(86, 86, 'Jade', '2018-01-25 11:15:51', 1, NULL),
(87, 87, 'Firebug', '2018-01-25 11:15:51', 1, NULL),
(88, 88, 'Dreamweaver', '2018-01-25 11:15:51', 1, NULL),
(89, 89, 'DW', '2018-01-25 11:15:51', 1, NULL),
(90, 90, 'Grunt', '2018-01-25 11:15:51', 1, NULL),
(91, 91, 'Grunt-beginner', '2018-01-25 11:15:51', 1, NULL),
(92, 92, 'Git', '2018-01-25 11:15:51', 1, NULL),
(93, 93, 'webpack', '2018-01-25 11:15:51', 1, NULL),
(94, 94, '浏览器', '2018-01-25 11:15:51', 1, NULL),
(95, 95, 'websocket', '2018-01-25 11:15:51', 1, NULL),
(96, 96, '微信', '2018-01-25 11:15:51', 1, NULL),
(97, 97, '微信公众号', '2018-01-25 11:15:51', 1, NULL),
(98, 98, '小程序', '2018-01-25 11:15:51', 1, NULL),
(99, 99, '微信小程序', '2018-01-25 11:15:51', 1, NULL),
(100, 100, '响应式', '2018-01-25 11:15:51', 1, NULL),
(101, 101, 'http', '2018-01-25 11:15:51', 1, NULL),
(102, 102, 'Ajax', '2018-01-25 11:15:51', 1, NULL),
(103, 103, 'ReactNative', '2018-01-25 11:15:51', 1, NULL),
(104, 104, 'OkHttp', '2018-01-25 11:15:51', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `vs_link`
--

CREATE TABLE `vs_link` (
  `id` int(11) NOT NULL COMMENT '主键',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `link_group_id` int(11) DEFAULT NULL COMMENT '分类ID',
  `text` varchar(100) DEFAULT NULL COMMENT '文本',
  `src` varchar(100) DEFAULT NULL COMMENT '链接',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_link`
--

INSERT INTO `vs_link` (`id`, `sort`, `link_group_id`, `text`, `src`, `createtime`, `status`, `remark`) VALUES
(1, 1, 1, '财付通设计中心', 'http://tid.tenpay.com/', '2018-01-01 00:00:00', 1, ''),
(2, 2, 2, 'w3cplus', 'http://www.w3cplus.com/', '2018-01-01 00:00:00', 1, ''),
(3, 3, 3, 'Web前端开发', 'http://www.css88.com/', '2018-01-01 00:00:00', 1, ''),
(4, 4, 1, '前端观察', 'http://www.qianduan.net', '2018-01-01 00:00:00', 1, ''),
(5, 5, 2, '淘宝UED', 'http://ued.taobao.com/blog/', '2018-01-01 00:00:00', 1, ''),
(6, 6, 3, '腾讯全端AlloyTeam团队Blog', 'http://www.alloyteam.com/', '2018-01-01 00:00:00', 1, ''),
(7, 7, 3, 'tgideas.qq.com', 'http://tgideas.qq.com/', '2018-01-01 00:00:00', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `vs_link_group`
--

CREATE TABLE `vs_link_group` (
  `id` int(11) NOT NULL COMMENT '主键',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` varchar(100) DEFAULT NULL COMMENT '文本',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_link_group`
--

INSERT INTO `vs_link_group` (`id`, `sort`, `text`, `status`, `remark`) VALUES
(1, 1, '团队博客', 1, ''),
(2, 2, '朋友同事同行', 1, ''),
(3, 3, '推荐资源', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `vs_page`
--

CREATE TABLE `vs_page` (
  `id` int(11) NOT NULL COMMENT '主键',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `page_group_id` int(10) DEFAULT NULL COMMENT '分类ID',
  `page_group_child_id` int(10) DEFAULT NULL COMMENT '分类子ID',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `key` varchar(100) DEFAULT NULL COMMENT '关机字',
  `text` varchar(100) DEFAULT NULL COMMENT '文本',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `thumbnail` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `updatetime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '更新时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `desc` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_page`
--

INSERT INTO `vs_page` (`id`, `sort`, `page_group_id`, `page_group_child_id`, `title`, `key`, `text`, `author`, `thumbnail`, `createtime`, `updatetime`, `status`, `desc`) VALUES
(1, 1, 1, 1, 'Aston Martin Interactive Experience', 'Aston Martin Interactive Experience', 'Aston Martin', 'vsery', 'http://vs.vsery.com/upload/design/1515413229115.jpg', '2018-01-25 11:15:51', '2018-01-25 13:34:38', 1, 'Aston Martin Interactive Experience'),
(2, 1, 1, 1, 'Nike Global Football', 'Nike', 'Aston Martin', 'vsery', 'http://vs.vsery.com/upload/design/1515725900528.jpg', '2018-01-25 11:15:51', '2018-01-25 17:41:38', 1, 'Nike Global Football'),
(3, 1, 1, 1, 'Cadillac.com', 'Cadillac.com', 'Cadillac', 'vsery', 'http://vs.vsery.com/upload/design/1516764204856.png', '2018-01-25 11:15:51', '2018-01-25 08:27:24', 1, 'Cadillac.com'),
(4, 1, 1, 1, 'McKinney Corporate Website', 'McKinney Corporate Website', 'McKinney', 'vsery', 'http://vs.vsery.com/upload/design/1518319622659.jpg', '2018-01-25 11:15:51', '2018-01-26 08:15:20', 1, 'McKinney Corporate Website'),
(5, 1, 1, 1, 'Stedina – design studio web', 'Stedina – design studio web', 'Stedina', 'vsery', 'http://vs.vsery.com/upload/design/1515724778135.jpg', '2018-01-25 11:15:51', '2018-01-27 15:23:17', 1, 'Stedina – design studio web'),
(6, 1, 1, 1, 'OXXXYMIRON x IMPERIVM — Redesign', 'OXXXYMIRON x IMPERIVM — Redesign', 'Redesign', 'vsery', 'http://vs.vsery.com/upload/design/1516969657908.png', '2018-01-25 11:15:51', '2018-01-28 12:27:38', 1, 'OXXXYMIRON x IMPERIVM — Redesign'),
(7, 1, 1, 1, 'K E I M O S S Photolab Web / ui / 2017', 'K E I M O S S Photolab Web / ui / 2017', 'K E I M O S S', 'vsery', 'http://vs.vsery.com/upload/design/1514949159268.png', '2018-01-25 11:15:51', '2018-01-29 19:25:36', 1, 'K E I M O S S Photolab Web / ui / 2017'),
(8, 1, 1, 1, 'Agency', 'Agency', 'Agency', 'vsery', 'http://vs.vsery.com/upload/design/1513831494428.png', '2018-01-25 11:15:51', '2018-01-30 21:28:51', 1, 'Agency'),
(9, 1, 1, 1, 'EGLOO', 'EGLOO', 'EGLOO', 'vsery', 'http://vs.vsery.com/upload/design/151324683468.jpg', '2018-01-25 11:15:51', '2018-01-31 07:35:51', 1, 'EGLOO'),
(10, 1, 1, 1, 'Marvel Black Panther 2018', 'Marvel Black Panther 2018', 'Marvel Black Panther 2018', 'vsery', 'http://vs.vsery.com/upload/design/1513418723833.jpg', '2018-01-25 11:15:51', '2018-02-01 19:23:51', 1, 'Marvel Black Panther 2018'),
(11, 1, 1, 1, 'Roads (Website, Dashboard, App)', 'Roads (Website, Dashboard, App)', 'Roads (Website, Dashboard, App)', 'vsery', 'http://vs.vsery.com/upload/design/1513675706829.jpg', '2018-01-25 11:15:51', '2018-02-02 06:23:29', 1, 'Roads (Website, Dashboard, App)'),
(12, 1, 1, 1, 'CLoQK', 'CLoQK', 'CLoQK', 'vsery', 'http://vs.vsery.com/upload/design/1513518229513.jpg', '2018-01-25 11:15:51', '2018-02-03 14:23:51', 1, 'CLoQK'),
(13, 1, 1, 1, 'Amazon redesign', 'Amazon redesign', 'Amazon redesign', 'vsery', 'http://vs.vsery.com/upload/design/1512532811168.jpg', '2018-01-25 11:15:51', '2018-02-04 11:15:51', 1, 'Amazon redesign'),
(14, 1, 1, 1, 'roberto valentinuzzi', 'roberto valentinuzzi', 'Aston Martin', 'vsery', 'http://vs.vsery.com/upload/design/151307597737.png', '2018-01-25 11:15:51', '2018-02-05 06:15:51', 1, 'roberto valentinuzzi'),
(15, 1, 1, 1, 'Onepage design - Fast food franchise', 'Onepage design - Fast food franchise', 'Onepage design - Fast food franchise', 'vsery', 'http://vs.vsery.com/upload/design/1511522844120.jpg', '2018-01-25 11:15:51', '2018-02-06 14:15:51', 1, 'Onepage design - Fast food franchise'),
(16, 1, 1, 1, 'Avrora Systems', 'Avrora Systems', 'Avrora Systems', 'vsery', 'http://vs.vsery.com/upload/design/1511926477850.jpg', '2018-01-25 11:15:51', '2018-02-07 14:22:35', 1, 'Avrora Systems'),
(17, 1, 1, 1, 'Piaget', 'Aston Martin Interactive Experience', 'Piaget', 'vsery', 'http://vs.vsery.com/upload/design/151010753381_280x180.jpg', '2018-01-25 11:15:51', '2018-02-08 07:27:39', 1, 'Piaget'),
(18, 1, 1, 1, 'Black-Sky', 'Black-Sky', 'Black-Sky', 'vsery', 'http://vs.vsery.com/upload/design/1509992170166.jpg', '2018-01-25 11:15:51', '2018-02-09 14:21:33', 1, 'Black-Sky'),
(19, 1, 1, 1, 'Meet a new kind of protection', 'Meet a new kind of protection', 'Meet a new kind of protection', 'vsery', 'http://vs.vsery.com/upload/design/1471848807722.jpg', '2018-01-25 11:15:51', '2018-02-10 14:22:28', 1, 'Meet a new kind of protection'),
(20, 1, 1, 1, 'Triumph Classics Website', 'Triumph Classics Website', 'Triumph Classics Website', 'vsery', 'http://vs.vsery.com/upload/design/1470020395166.jpg', '2018-01-25 11:15:51', '2018-02-11 14:25:51', 1, 'Triumph Classics Website');

-- --------------------------------------------------------

--
-- 表的结构 `vs_page_group`
--

CREATE TABLE `vs_page_group` (
  `id` int(11) NOT NULL COMMENT '主键',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` varchar(100) DEFAULT NULL COMMENT '文本',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_page_group`
--

INSERT INTO `vs_page_group` (`id`, `sort`, `text`, `createtime`, `status`, `remark`) VALUES
(1, 1, '前端', '2018-01-25 11:15:51', 1, NULL),
(2, 1, '后端', '2018-01-25 11:15:51', 1, NULL),
(3, 1, '设计', '2018-01-25 11:15:51', 1, NULL),
(4, 1, '工具', '2018-01-25 11:15:51', 1, NULL),
(5, 1, '书籍', '2018-01-25 11:15:51', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `vs_page_group_child`
--

CREATE TABLE `vs_page_group_child` (
  `id` int(11) NOT NULL COMMENT '主键',
  `page_group_id` int(10) DEFAULT NULL COMMENT '分类ID',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` varchar(100) DEFAULT NULL COMMENT '文本',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_page_group_child`
--

INSERT INTO `vs_page_group_child` (`id`, `page_group_id`, `sort`, `text`, `createtime`, `status`, `remark`) VALUES
(1, 1, 1, 'jQueryUI', '2018-01-25 11:15:51', 1, NULL),
(2, 1, 1, 'Vue', '2018-01-25 11:15:51', 1, NULL),
(3, 1, 1, 'jQuery', '2018-01-25 11:15:51', 1, NULL),
(4, 1, 1, 'Html', '2018-01-25 11:15:51', 1, NULL),
(5, 1, 1, 'CSS', '2018-01-25 11:15:51', 1, NULL),
(6, 1, 1, 'JavaScript', '2018-01-25 11:15:51', 1, NULL),
(7, 1, 1, 'Bootstrap', '2018-01-25 11:15:51', 1, NULL),
(8, 2, 1, 'Ruby', '2018-01-25 11:15:51', 1, NULL),
(9, 2, 1, 'PHP', '2018-01-25 11:15:51', 1, NULL),
(10, 2, 1, 'Java', '2018-01-25 11:15:51', 1, NULL),
(11, 2, 1, 'Python', '2018-01-25 11:15:51', 1, NULL),
(12, 2, 1, 'C++', '2018-01-25 11:15:51', 1, NULL),
(13, 2, 1, 'C#', '2018-01-25 11:15:51', 1, NULL),
(14, 3, 1, '平面设计', '2018-01-25 11:15:51', 1, NULL),
(15, 3, 1, 'Web', '2018-01-25 11:15:51', 1, NULL),
(16, 3, 1, 'banner', '2018-01-25 11:15:51', 1, NULL),
(17, 3, 1, 'UI', '2018-01-25 11:15:51', 1, NULL),
(18, 4, 1, '字体计算', '2018-01-25 11:15:51', 1, NULL),
(19, 4, 1, '正则表达式测试', '2018-01-25 11:15:51', 1, NULL),
(20, 4, 1, 'SQL工具', '2018-01-25 11:15:51', 1, NULL),
(21, 4, 1, 'JSON工具', '2018-01-25 11:15:51', 1, NULL),
(22, 4, 1, 'HTML工具', '2018-01-25 11:15:51', 1, NULL),
(23, 4, 1, 'CSS工具', '2018-01-25 11:15:51', 1, NULL),
(24, 4, 1, 'JavaScript工具', '2018-01-25 11:15:51', 1, NULL),
(25, 4, 1, 'favicon只做', '2018-01-25 11:15:51', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `vs_user`
--

CREATE TABLE `vs_user` (
  `id` int(11) NOT NULL COMMENT '主键',
  `username` varchar(100) DEFAULT NULL COMMENT '账号',
  `password` varchar(100) DEFAULT 'd93a5def7511da3d0f2d171d9c344e91' COMMENT '密码',
  `nickname` varchar(100) DEFAULT NULL COMMENT '昵称',
  `moblie` varchar(11) DEFAULT NULL COMMENT '手机号',
  `header` varchar(100) DEFAULT NULL COMMENT '头像',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `county` varchar(100) DEFAULT NULL COMMENT '县',
  `street` varchar(100) DEFAULT NULL COMMENT '街道',
  `wechat` varchar(100) DEFAULT NULL COMMENT '微信',
  `qq` varchar(100) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(100) DEFAULT NULL COMMENT 'Email',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_user`
--

INSERT INTO `vs_user` (`id`, `username`, `password`, `nickname`, `moblie`, `header`, `province`, `city`, `county`, `street`, `wechat`, `qq`, `email`, `createtime`, `status`, `remark`) VALUES
(1, 'abcd', 'd93a5def7511da3d0f2d171d9c344e91', '白尊者', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/107590675.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', 1, '拥护者'),
(2, 'text', 'd93a5def7511da3d0f2d171d9c344e91', '纪晓岚', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/106779355.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', 0, '管理员'),
(3, 'test2', 'd93a5def7511da3d0f2d171d9c344e91', '后羿', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/104730974.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', 0, '测试员'),
(4, 'abcdef', 'd93a5def7511da3d0f2d171d9c344e91', '杨戬', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/93938406.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', 1, '拥护者'),
(5, 'adminy', 'd93a5def7511da3d0f2d171d9c344e91', '观音大湿', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/110523568.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', 0, '管理员'),
(6, 'zero', 'd93a5def7511da3d0f2d171d9c344e91', '张无忌', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/107644834.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', 0, '测试员');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sys_sidebar`
--
ALTER TABLE `sys_sidebar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tool`
--
ALTER TABLE `sys_tool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_admin_user`
--
ALTER TABLE `vs_admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_banner`
--
ALTER TABLE `vs_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_key`
--
ALTER TABLE `vs_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_link`
--
ALTER TABLE `vs_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_link_group`
--
ALTER TABLE `vs_link_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_page`
--
ALTER TABLE `vs_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_page_group`
--
ALTER TABLE `vs_page_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_page_group_child`
--
ALTER TABLE `vs_page_group_child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_user`
--
ALTER TABLE `vs_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `sys_sidebar`
--
ALTER TABLE `sys_sidebar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `sys_tool`
--
ALTER TABLE `sys_tool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `vs_admin_user`
--
ALTER TABLE `vs_admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `vs_banner`
--
ALTER TABLE `vs_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `vs_key`
--
ALTER TABLE `vs_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=105;
--
-- 使用表AUTO_INCREMENT `vs_link`
--
ALTER TABLE `vs_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `vs_link_group`
--
ALTER TABLE `vs_link_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `vs_page`
--
ALTER TABLE `vs_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `vs_page_group`
--
ALTER TABLE `vs_page_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `vs_page_group_child`
--
ALTER TABLE `vs_page_group_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=26;
--
-- 使用表AUTO_INCREMENT `vs_user`
--
ALTER TABLE `vs_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
