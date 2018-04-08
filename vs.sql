-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-04-08 10:09:19
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
(2, 20, '首页', 'fa-windows', NULL, 'index', NULL, '2018-01-25 11:15:51', 1, NULL),
(3, 3, '页面', 'fa-files-o', NULL, 'page', NULL, '2018-01-25 11:15:51', 1, NULL),
(4, 4, '博客', 'fa-pied-piper', NULL, 'blog', NULL, '2018-01-25 11:15:51', 1, NULL),
(5, 5, '项目', 'fa-github', NULL, 'project', NULL, '2018-01-25 11:15:51', 1, NULL),
(6, 6, '设计', 'fa-drupal', NULL, 'desgin', NULL, '2018-01-25 11:15:51', 1, NULL),
(7, 7, '音乐', 'fa-music', NULL, 'music', NULL, '2018-01-25 11:15:51', 1, NULL),
(8, 8, '视频', 'fa-film', NULL, 'video', NULL, '2018-01-25 11:15:51', 1, NULL),
(9, 9, '书籍', 'fa-paste', NULL, 'book', NULL, '2018-01-25 11:15:51', 1, NULL),
(10, 10, '财务', 'fa-pie-chart', NULL, 'finance', NULL, '2018-01-25 11:15:51', 1, NULL),
(11, 11, '微信', 'fa-wechat', NULL, 'wechat', NULL, '2018-01-25 11:15:51', 1, NULL),
(12, 12, '链接', 'fa-link', NULL, 'link', NULL, '2018-01-25 11:15:51', 1, NULL),
(13, 13, '工具', 'fa-wrench', NULL, 'tool', NULL, '2018-01-25 11:15:51', 1, NULL);

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
-- 表的结构 `vs_book`
--

CREATE TABLE `vs_book` (
  `id` int(11) NOT NULL COMMENT '主键',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `book_group_type_id` int(10) DEFAULT NULL COMMENT '类型ID',
  `book_group_id` int(10) DEFAULT NULL COMMENT '分类ID',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `key` varchar(100) DEFAULT NULL COMMENT '关键字',
  `desc` varchar(100) DEFAULT NULL COMMENT '描述',
  `text` varchar(3000) DEFAULT NULL COMMENT '作品信息',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `length` int(10) DEFAULT NULL COMMENT '字数',
  `love` int(10) DEFAULT NULL COMMENT '赞',
  `top` int(10) DEFAULT NULL COMMENT '排行',
  `thumbnail` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `updatetime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '更新时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_book`
--

INSERT INTO `vs_book` (`id`, `sort`, `book_group_type_id`, `book_group_id`, `title`, `key`, `desc`, `text`, `author`, `length`, `love`, `top`, `thumbnail`, `createtime`, `updatetime`, `status`, `remark`) VALUES
(1, 1, 2, 4, '抢临星空', '连载,签约,VIP,玄幻,东方玄幻', '以枪之道，君临星空！', '给我一把符文手枪，我可以射爆星球。以枪之道，君临星空！', 'vsery', 101548447, 22344, 234234, '/upload/book/20180408/180.jpg', '2018-01-25 11:15:51', '2018-01-25 11:15:51', 1, NULL),
(2, 2, 2, 4, '叫我剑魔王', '连载,签约,VIP,玄幻,异世大陆', '逼气纵横九万里，一贱光寒十九洲！开局一个满级号', '逼气纵横九万里，一贱光寒十九洲！开局一个满级号，生存全靠贱！神陨大陆超级大魔王出世。就在剑以为自己就此走上人生巅峰，即将开启他的遨游之旅的时候，却发现这个机会是有时间限制的，这可就让他难做了，到底该继续呢，还是安安稳稳过他的小日子呢？哎呀，一不小心就玩大发了，好在他还有后手，还是发挥他贱死人不偿命的个性吧。从此剑走上了一条作死的道路，让无数人咬牙切齿。 我必须要够贱啊，不贱怎么能对得起这一身才华呢？对此，剑只能说：“你们骂我是因为你们不了解我，当你们了解我，你们会想砍死我！” 其实我还有一个小梦想，那就是打死在座的各位，或者被各位打死！（欢乐向文，萌萌的）', 'vsery', 101548447, 22344, 234234, '/upload/book/20180408/181.jpg', '2018-01-25 11:15:51', '2018-01-25 11:15:51', 1, NULL),
(3, 2, 2, 4, '蛮荒之我是主神', '连载,签约,VIP,玄幻,东方玄幻', '重生蛮荒世界，我有主神系统！主神系统重启', '重生蛮荒世界，我有主神系统！主神系统重启，再次招募轮回者！但这次，我为主神！以众生为棋子，以万界为棋盘，与天地博弈一局！', 'vsery', 101548447, 22344, 234234, '/upload/book/20180408/182.jpg', '2018-01-25 11:15:51', '2018-01-25 11:15:51', 1, NULL),
(4, 2, 2, 4, '超脱于诸天', '连载,签约,VIP,玄幻,东方玄幻', '失意少年古恒偶得永恒道盘穿越到元界下界玄武界', '失意少年古恒偶得永恒道盘穿越到元界下界玄武界，行走混沌诸天，国武世界里追寻极限，巩固道基...在魔改三国世界里屠天建神国，成就仙神....行走于诸天万界，寻求那漫漫的超脱...... (后面可能会写:大主宰，万古神帝，混沌剑神，遮天三部曲，也可能改。)', 'vsery', 1015447, 2233344, 2323434, '/upload/book/20180408/183.jpg', '2018-01-25 11:15:51', '2018-01-25 11:15:51', 1, NULL),
(5, 2, 2, 4, '千山独行', '连载,签约,VIP,玄幻,东方玄幻', '心潮澎湃，无限幻想，迎风挥击千层浪，少年不败热血！', '这个只是穿越到了修真的世界里该如何修炼的故事。或许会有不可名状的东西。', 'vsery', 213745, 95245, 27542, '/upload/book/20180408/184.jpg', '2018-01-25 11:15:51', '2018-01-25 11:15:51', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `vs_book_group`
--

CREATE TABLE `vs_book_group` (
  `id` int(11) NOT NULL COMMENT '主键',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `desc` varchar(100) DEFAULT NULL COMMENT '文本',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_book_group`
--

INSERT INTO `vs_book_group` (`id`, `sort`, `desc`, `createtime`, `status`, `remark`) VALUES
(1, 1, '完本', '2018-01-25 11:15:51', 1, NULL),
(2, 2, '排行', '2018-01-25 11:15:51', 1, NULL),
(3, 3, '免费', '2018-01-25 11:15:51', 1, NULL),
(4, 4, '玄幻', '2018-01-25 11:15:51', 1, NULL),
(5, 5, '奇幻', '2018-01-25 11:15:51', 1, NULL),
(6, 6, '武侠', '2018-01-25 11:15:51', 1, NULL),
(7, 7, '仙侠', '2018-01-25 11:15:51', 1, NULL),
(8, 8, '军事', '2018-01-25 11:15:51', 1, NULL),
(9, 9, '历史', '2018-01-25 11:15:51', 1, NULL),
(10, 10, '游戏', '2018-01-25 11:15:51', 1, NULL),
(11, 11, '体育', '2018-01-25 11:15:51', 1, NULL),
(12, 12, '科幻', '2018-01-25 11:15:51', 1, NULL),
(13, 13, '灵异', '2018-01-25 11:15:51', 1, NULL),
(14, 14, '女生', '2018-01-25 11:15:51', 1, NULL),
(15, 15, '二次元', '2018-01-25 11:15:51', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `vs_book_group_type`
--

CREATE TABLE `vs_book_group_type` (
  `id` int(11) NOT NULL COMMENT '主键',
  `sort` int(10) DEFAULT '10' COMMENT '排序:越小越前',
  `desc` varchar(100) DEFAULT NULL COMMENT '文本',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_book_group_type`
--

INSERT INTO `vs_book_group_type` (`id`, `sort`, `desc`, `createtime`, `status`, `remark`) VALUES
(1, 1, '工具类', '2018-01-25 11:15:51', 1, NULL),
(2, 2, '小说类', '2018-01-25 11:15:51', 1, NULL),
(3, 3, '漫画类', '2018-01-25 11:15:51', 1, NULL),
(4, 4, '美文类', '2018-01-25 11:15:51', 1, NULL),
(5, 5, '报刊类', '2018-01-25 11:15:51', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `vs_book_page`
--

CREATE TABLE `vs_book_page` (
  `id` int(11) NOT NULL COMMENT '主键',
  `book_id` int(10) DEFAULT NULL COMMENT '书籍ID',
  `book_sort` int(10) DEFAULT '10' COMMENT '章节',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `text` varchar(3000) DEFAULT NULL COMMENT '内容',
  `length` int(10) DEFAULT NULL COMMENT '字数',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vs_book_page`
--

INSERT INTO `vs_book_page` (`id`, `book_id`, `book_sort`, `title`, `text`, `length`, `createtime`, `status`, `remark`) VALUES
(1, 1, 1, '及时雨--系统', '<p>　　水蓝星，泰西市，第二中学，演武场。</p><p>　　林洛紧紧的握住手中的符文手枪，瞄准前方五十米处的人形石靶，元气注入符文法阵，一秒钟后，符文阵被激活，一道锥形的元气弹瞬间射向了前方的靶子。</p><p>　　砰的一声，元气弹射中了人形靶的左肩膀，却没有给石靶造成一丝的损伤。</p><p>　　林洛无暇关注射击结果如何，而是紧紧的盯着自己前方屏幕上那行即将消失的字迹——击中目标左肩膀，符文手枪熟练度＋1。</p><p>　　看来真的不是出现幻觉了，林洛松了一口气的同时，巨大的喜悦从内心深处涌了出来。</p><p>　　果然不愧是从远古时代流传至今的幸运子弹，可惜那个卖给自己子弹的云游商人已经不知去向，说不定还能从他手中买到好东西呢。</p><p>　　摇了摇头，将自己的小贪心收回脑海，林洛再次看向眼前的屏幕。</p><p>　　姓名:林洛</p><p>　　年龄:18</p><p>　　职业:学生</p><p>　　主动技能:符文手枪射击术，入门级（32/100），有效射程内击中目标几率为75%，要害射击准确度加5%。</p><p>　　被动技能:基础射击术入门级（3/1000），增加枪械类武器伤害5%。</p><p>　　“林洛，想啥呢，不到一个月就要高考了，还不好好练习。”李振中看着正在发呆的林洛，轻声呵斥道。</p><p>　　“是。”林洛不在关注屏幕，而是继续向符文手枪注入元气，练习起射击。</p><p>　　符文枪械是科技与武道结合的产物，十分的受各个职业者的喜爱，特别是符文手枪，方便易携带，基本上是人手一把。</p><p>　　只不过枪械类武器，易学难精，是普通职业中高手比例最低的一种。一般除非有很强的枪械类天赋，否则很少有人把枪械类武器作为主武器。</p><p>　　林洛主攻枪械，不是因为他有这方面的天赋</p><p>　　，而是因为他在其他方面，更没有天赋。</p><p>　　砰砰砰，连续不断的枪声响起，林洛看着自己眼前不断出现的＋1字样，心中充满了动力。</p><p>　　只是他的基础练气术等级才2级，元气只能支撑他射击十次。看着符文手枪增加的十点熟练度，林洛心中充满了希望。当即随地坐了起来，开始修炼基础练气术恢复元气。</p><p>　　一下午的时间，林洛整整射击了近五十次，让在旁边监督的武道老师十分的满意。天赋差一点没关系，只要好好学习，总会有收获的。</p><p>　　下午放学，林洛恋恋不舍的将符文手枪交回了学校的武器库。</p><p>　　符文手枪是学校的公共财产，只有在上实践课的时候才会免费提供给学生使用。</p><p>　　林洛做梦都想有一把自己的符文手枪，只是一把最便宜的没有任何属性的普通制式符文手枪都需要一万信用点，不是普通家庭能负担得起的。</p><p>　　还差二十点就能达到一百的熟练度，林洛看了看自己的账户余额，723点，除去500点的私人小金库，剩下的是他一个星期的生活费。</p><p>　　不就吃三天的合成套餐么，林洛狠了狠心，走到武器仓库管理赵老师的面前。</p><p>　　据说赵老师是一个上过战场的军人，因为受伤退役，在他们学校做了一个清闲的武器仓库管理员。</p><p>　　“赵老师，我要租用一把符文手枪。”</p><p>　　“二十信用点一小时，晚上八点前归还，如有损坏或丢失，需要按价赔偿。”赵老师懒洋洋的看了林洛一眼，没有起身。“自己去取。”</p><p>　　林洛转了二十信用点后直接拿了一把符文手枪，快速的来到演武场。</p><p>　　幸好演武场是免费使用的，不然林洛还真没勇气下定吃一个星期合成套餐的决心来验证心中的想法。</p><p>　　大部分的位置都已经被占据，林洛找了一个偏僻的角落，开始继续练习了起来。</p><p>　　十次射击过后，林洛刚想坐下修炼基础练气术，就听到身后传来一道悦耳的声音，“同学，我能先用下你的位置吗？”</p><p>　　林洛转过身，一个相貌清秀的女孩子出现在了他的视野里。李梓萌，他认识，第二中学第一学霸。只不过她不认识他而已。</p><p>　　“可以，随便用。”</p><p>　　林洛往一边走了几步，不在关注李梓萌，盘腿修炼起基础练气术。</p><p>　　看了一眼林洛，李梓萌便走到射击位置，开始练习起射击。随着枪声响起，一颗颗的元气弹不断的击中石靶，几乎枪枪不离心脏和头部等要害位置。</p><p>　　一口气将自己的全部元气消耗完，李梓萌才满意的停了下来。刚想离开，眼角的余光却看见一旁修炼的林洛，抬起的脚步便停了下来。</p><p>　　看了一下四周，李梓萌手中突然出现了一个坐垫，放到地上后，李梓萌学着林洛当场修炼起来。</p><p>　　半个小时后，林洛的元气全部恢复，睁开眼睛，看着不远处的李梓萌，不由得愣了一下。</p><p>　　都第一了，还这么勤奋，让人情何以堪啊。</p><p>　　摇了摇头，林洛再次站到射击位置。熟练的瞄准石靶，注入元气，激发符文法阵。一颗元气弹瞬间击中了石靶的身体。</p><p>　　符文手枪熟练度＋1，符文手枪熟练度由入门级晋升为精通级。击中目标几率增加10%，要害射击准确度加10%，符文手枪伤害加5%。</p><p>　　升级了！林洛仿佛感觉自己手中的符文手枪突然熟悉了起来，如同使用过数年一般。</p><p>　　抬手间，林洛就是一枪，元气弹直接命中了石靶的头部，让他很是满意。</p><p>　　只不过看到后面的熟练度，林洛头疼了起来。500熟练度，这需要练习五百次才可以升级啊。</p><p>　　每周只有两次实践课，最多能够增加一百点熟练度。但是不到一个月就要高考，时间已经来不及。如果每天租用两个小时的符文手枪，可以增加三十点熟练度。需要两个星期就可以再次提升一级。只是自己那点小金库看来是保不住了，可怜自己还想着假期里做点什么呢。</p><p>　　“林洛，约会去了，这么晚才回来？”刚一回到宿舍，林洛就听到自己下铺的赵庆祝调侃道。</p><p>　　“是啊，约会去了，我和石靶有个约会。”</p><p>　　林洛疲惫的回了一句。</p><p>　　“吆，这是射多了啊，这么虚。”赵庆祝惊讶的看着林洛，“今天怎么想到去练习了，还有一个月不到就高考，来得及么？”</p><p>　　“只要努力的练习，就会有收获。” </p>', 2077, '2018-02-04 19:20:31', 1, NULL),
(2, 1, 2, '天一舞蹈学院', '<p>　　新的一天，林洛一大早就来到学校的图书馆。</p><p>　　早上是文化课上课时间，图书馆里除了工作人员，只有零零散散的几个人在安静的看着书。</p><p>　　林洛来图书馆是想找一本曾经听武道老师说过的书——拔枪术。</p><p>　　拔枪术——这个名词最早出现在远古时代地球上M国西部开发时代，是由决斗而衍生出来的一种集快速拔枪，快速瞄准和快速射击于一体的射击技术。</p><p>　　这是林洛目前能接触到的唯一一个可以勉强被称为枪术技能的射击技术。为了验证心中的某些想法，林洛将这本书从图书馆借了出来。</p><p>　　林洛将经过无数次修改的新版拔枪术认真的看了三遍，直到确信自己能够按照步骤施展出来后才来到武器仓库租了一把符文手枪。</p><p>　　再次站到射击位置，林洛回忆了一遍拔枪术的要领，便开始练习了起来。</p><p>　　也许是因为拔枪术太简单了，也许是因为自己有了系统，林洛按着拔枪术的要领做了三次，眼前屏幕上就显示出了一行字迹。</p><p>　　“领悟拔枪术，熟练度＋1，初级技能入门级（1/100），可以极大的减少第一枪射击所需的时间。”</p><p>　　林洛虽然高兴，却也没有太过惊讶。反而心底有一丝淡淡的失望。看来这个系统只对枪械类武器和技能有作用了，至于其他的恐怕力所不及。</p><p>　　失望感只不过一闪而逝，林洛就重新高兴起来。即使只能对枪械类有作用，也能让他从此不再普通。他应该感到感激，而不是得陇望蜀，这是做人的原则。</p><p>　　初步了解了自己得到的这个系统，林洛安心的练习起射击技术。</p><p>　　练习了近四个小时，林洛便结束了今天的练习。连续七次的修炼练气术，已经是林洛每天修炼练气术的极限。</p><p>　　感觉到身体中隐隐传来的痛感，林洛不由得发出了一声叹息。在练气术上的修炼天赋，林洛只是一般。这也是他选择主攻枪械类职业者的主要原因。</p><p>　　相对于其他职业，枪械类虽然也是以修炼元气为主，但是在实战上，枪械对本身战力的影响更大。</p><p>　　一把好的枪械武器，甚至有可能让一个普通的枪械职业者越级击杀敌人。</p><p>　　下午，林洛回到了自己的教室——高三三班。</p><p>　　今天的课程是武道基础课，这门课程主要讲述的是武道的发展史和武道职业者的种类和实力划分</p><p>　　。</p><p>　　“下面我们在复习一下每年必考的题目。这是送分的题，如果你们还得不到，还是放弃上学这条路，或许在别的方面还能所发展。”</p><p>　　“人类修炼元气突破九级会获得第一次身体进化，从而觉醒身体属性，这是成为职业者的基础。掌握某职业的两种精通级的初级技能，一种入门级的中级技能后就可以在职业者工会进行考核，考核通过后就可以成为人类联盟认可的一名职业者。可以享有职业者的权利和待遇。”</p><p>　　“普通职业者可以分为以元气攻击为主的术士，以武器攻击为主的战士。术士可以划分为属性术士，血脉术士等，战士分为近战战士和远程战士等。……”</p><p>　　“当然这只是普通职业者的划分，特殊职业者根据不同的要求，种类和数量却是大不相同。从数十上百万人数到唯一职业甚至还有失传的职业。”</p><p>　　“职业者根据实力的划分，士级，男爵级，子爵级，伯爵级，侯爵级，公爵级。至于再往上，就不是我们普通人可以知道的。”</p><p>　　……</p><p>　　“林洛，怎么感觉你今天有点不一样呢？”一下课，赵庆祝就盯着林洛，好奇的问道。</p><p>　　“哪里不一样了？难道今天变帅了？这都被你看出来了。”林洛夸张的说道。</p><p>　　“呸，马不知道脸长。”赵庆祝一脸鄙视的看着林洛，直接起身离开。</p><p>　　林洛确实和过去不一样了，因为有了系统，他对未来充满了信心。从过去的被动应对，转变成了积极面对。这是一种质的变化，一种内在精神上的改变。</p><p>　　明天就是星期天，林洛今天下午就可以离开学校回家。</p><p>　　林洛家离第二中学不是很远，做公共飞车只需要五站。</p><p>　　林洛家居住的房子是二十年前父母结婚的时候购买的房子，只有两室一厅一厨一卫。自从妹妹上学后，林洛的卧室就被一分为二，失去了一半的主权。</p><p>　　父母上班还没有回家，只有妹妹林清媛在家。林清媛十五岁，上初三。只不过无论颜值还是天赋，都比林洛要强出很多，一直是父母的骄傲。</p><p>　　“哥哥，你高考准备的怎么样了？有没有把握考上天一武道学院？”林清媛见哥哥回来，关心的问道。</p><p>　　天一武道学院是水蓝星最好的武道学院，虽然在整个人类联盟来说，仅属于三流武道学院，但在银蓝王国来说，还是属于不错的大学院校。</p><p>　　“有。”林洛信心十足的给了妹妹一个肯定的答案。</p><p>　　如果是之前，他能考上普通的大学都算是超长发挥的话。现在林洛对于进入天一武道学院，可以说十拿九稳。</p><p>　　只要将符文手枪的熟练度晋升专精级，就可以达到天一武道学院枪道专业降分录取的要求。</p><p>　　“咦，今天怎么这么有信心。”林清媛惊讶的看着林洛，一种熟悉而又陌生的感觉从心头升起。“你还是我哥么？”</p><p>　　“如假包换。”林洛揉了揉妹妹的头，“到时候你就知道了。”</p><p>　　“讨厌，别摸人家的头，都被你摸傻了。”林清媛又被哥哥揉乱了头发，但心中丝毫没有生气，反而一种熟悉的感觉让她感到心安，这还是那个讨厌的哥哥。</p><p>　　林洛的父母都是小公司的车间工人，工资不高，勉强能维持一家人的日常所需。</p><p>　　直到下午六点，两人才回到家中。看到桌面上摆好的饭菜，疲惫的脸上露出了一丝欣慰的笑容。</p><p>　　对于做饭这种高级技能，林洛还处于学习当中。他能做的就是把做好的饭菜端到桌子上，然后尽量的将饭菜摆的好看一点。</p><p>　　 </p>', 2015, '2018-02-04 19:30:31', 1, NULL),
(3, 1, 3, '沙漠之鹰', ' <p>　　周末，林洛刚想出门，就被母亲赵莹喊住。</p><p>　　“洛洛，快高考了，就不要去做兼职了，今天就在家好好学习吧。”</p><p>　　“好的。”林洛想了一下，听从了母亲的话。</p><p>　　高考前，符文手枪熟练度能达到专精级，但无论如何是达不到之后的大师级。自己的小金库暂时还够用。现在他最需要做的就是学习，将文化科成绩尽量的提高。</p><p>　　周末父母没有休息，而是选择加班。加班有双倍的工资，这对于他们家来说，算是不错的补贴。</p><p>　　在十多年的记忆里，林洛几乎找不到父母放假休息的记忆。</p><p>　　看着父母离开的背影，林洛又一次的告诉自己，一定要让父母过上衣食无忧，随心所欲的日子。</p><p>　　时间匆匆而过，转眼间就到了高考的日子。林洛看着眼前的屏幕，心中十分的平静。</p><p>　　姓名:林洛</p><p>　　年龄:18</p><p>　　职业:学生</p><p>　　主动技能:符文手枪，专精级（452/10000），有效射程内击中目标几率为95%，要害射击准确度加25%，符文手枪伤害加10%。</p><p>　　拔枪术:精通级（413/500），可极大的减少第一枪射击所需要的时间。</p><p>　　被动技能:基础射击术入门级（95/1000），增加枪械类武器伤害5%。</p><p>　　文化科已经考完，自己发挥的还不错。如果自己估分差距不大，即使武道科成绩一般，也能考上普通的大学院校。</p><p>　　作为主攻枪械的学生，林洛高考考核的主要是立式射击静态靶。</p><p>　　十分的幸运林洛考核的场地就在第二中学。林洛选取了一把符文手枪后走向自己的考核位置。</p><p>　　没想到的是，自己的左边竟然是李梓萌。林洛来到自己的位置，并没有和李梓萌说话，而是闭目养神起来。</p><p>　　考核要求不难，只需要在一分钟内射击十次石靶就可以。</p><p>　　三天前，林洛的基础练气术达到了三级，已经可以连续的射击十五次。</p><p>　　考核时间开始，林洛便将全部精力都投入到了射击当中。经过近一个月的练习，林洛对系统有了进一步的认识。</p><p>　　虽然击中目标几率是95%，但是如果自己胡乱射击，那么击中目标的几率就无限的接近0%，如果自己击中精力，那么击中目标的几率就可能无限的接近100%。</p><p>　　砰砰砰，林洛毫不犹豫的连续射击了十次，第一个完成了射击。放下符文手枪，林洛看向了自己的监考老师。监考老师对着林洛点了点头，在自己的计分板上写下了两个数字——99。</p><p>　　林洛看到自己的成绩，平静的心顿时激动了起来。</p><p>　　虽然自己有把握取得90以上的分数，却也没有想到竟然超常发挥，离满分只有一分之差。如果不是他的文化科成绩和基础练气术扯后腿，进入银蓝王国前三的武道学院都没问题。</p><p>　　李梓萌看到了林洛的成绩，正因为看到了林洛的成绩，她才更惊讶了。没想到这个默默无闻到自己连名字都不知道的同学竟然有如此高的天赋。</p><p>　　看到自己98分的成绩，李梓萌眉头轻皱。竟然在最后一次考试中被别人超越，哪怕是她成绩最不好的射击，她心里也有种被抢了心爱玩具的感觉。</p><p>　　深深地看了一眼林洛，李梓萌转身离去。</p><p>　　第二天，林洛早早地就来到了学校。如今的高考，早已经和过去不同。考试的当天智脑就可以批阅试卷，统计分数，第二天便会公布成绩。</p><p>　　林洛看了眼自己的分数，和自己估计的差不多。文化科总成绩76.6分，武道科总成绩80.2分。</p><p>　　如果不是自己射击分类的成绩突出，这个成绩最多能上一所普通的大学。</p><p>　　“林洛，你个牲口，射击竟然考了99分，全市第一啊。”赵庆祝摇着林洛的胳膊，激动的喊道。</p><p>　　“失误，失误，不小心而已。”林洛摆脱了赵庆祝的魔掌，得意的笑道。</p><p>　　“这个逼，我给你打99分，少那一分怕你骄傲。”赵庆祝竖起中指，鄙视的说道。</p><p>　　“对了，想好报哪所大学了么？估计报银蓝星的那几所大学都有把握。”赵庆祝羡慕的看着林洛。真是走了狗屎运，最后一次考试竟然爆发了。</p><p>　　“天一武道学院。”林洛早就确定了自己想要报考的学校。</p><p>　　“哦，那也不错，至少离家近啊。”赵庆祝点了点头，“我准备报考水蓝大学，两所学校离得不远，记得去找我玩啊。”</p><p>　　“没问题。”</p><p>　　填完志愿表，大家各奔东西。林洛没有直接离开学校，而是走向学校的武器库。</p><p>　　作为全市射击分科第一名，第二中学特别奖励了他一把符文手枪。</p><p>　　如果在往年，林洛也许能被学校重视一点，但是在今年，第二中学出了一个超级学霸——李梓萌。以全水蓝星第一的总成绩考入了青木武道学院，让水蓝星这一届所有的学生黯然失色。</p><p>　　青木武道学院是人类联盟最顶尖的一百零八所大学之一，水蓝星所在的青木星域最好的武道学院。</p><p>　　李梓萌是水蓝星近十年来，唯一考入青木武道学院的学生，这让第二中学名气大增，雄心勃勃的想要和第一中学抢夺优秀生源，争夺第一中学的名头。林洛这样的学生，早已被遗忘在了角落。</p><p>　　林洛并没有感到失落和不平。对于学校的奖励，林洛还是心存感激的。这让他提前实现了拥有一把符文手枪的梦想。</p><p>　　刚来到武器库，就看到赵老师正懒洋洋的坐在那里。</p><p>　　“林洛是吧，这把符文手枪是你的了，希望你能好好的使用它。”不等林洛开口，赵老师直接扔给他一把符文手枪。</p><p>　　林洛手忙脚乱的接住符文手枪，仔细的查看了起来。</p><p>　　“沙漠之鹰”</p><p>　　林洛第一眼就认出了这把符文手枪的名字。之所以用远古时代大名鼎鼎的沙漠之鹰作为这把符文手枪的名字，是因为它的功能和作用跟沙漠之鹰手枪极其相似。</p><p>　　沙漠之鹰是普通制式符文手枪中威力最大的几种之一。如果击中要害，甚至能够对职业者产生伤害。</p><p>　　“谢谢老师。”林洛收好符文手枪，转身离开。 </p>', 2015, '2018-02-04 19:30:31', 1, NULL);

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
-- Indexes for table `vs_book`
--
ALTER TABLE `vs_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_book_group`
--
ALTER TABLE `vs_book_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_book_group_type`
--
ALTER TABLE `vs_book_group_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_book_page`
--
ALTER TABLE `vs_book_page`
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
-- 使用表AUTO_INCREMENT `vs_book`
--
ALTER TABLE `vs_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=100;
--
-- 使用表AUTO_INCREMENT `vs_book_group`
--
ALTER TABLE `vs_book_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=100;
--
-- 使用表AUTO_INCREMENT `vs_book_group_type`
--
ALTER TABLE `vs_book_group_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=100;
--
-- 使用表AUTO_INCREMENT `vs_book_page`
--
ALTER TABLE `vs_book_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=100;
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
