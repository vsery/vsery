/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 1000
Source Host           : localhost:3306
Source Database       : vsery

Target Server Type    : MYSQL
Target Server Version : 1000
File Encoding         : 65001

Date: 2017-12-13 14:17:22
UpDate: 2018-1-25 15:35:58 [第一版]
*/

SET FOREIGN_KEY_CHECKS = 0;

-- TRUNCATE `sys_sidebar`; // 清空表

-- ------------------------------------
-- Table Administator for vs_admin_user : 管理员用户表
-- ------------------------------------
DROP TABLE IF EXISTS `vs_admin_user`;
CREATE TABLE `vs_admin_user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` VARCHAR(100) DEFAULT NULL COMMENT '账号',
  `password` VARCHAR(100) DEFAULT 'd93a5def7511da3d0f2d171d9c344e91' COMMENT '密码',
  `nickname` VARCHAR(100) DEFAULT NULL COMMENT '昵称',
  `moblie` VARCHAR(11) DEFAULT NULL COMMENT '手机号',
  `header` VARCHAR(100) DEFAULT NULL COMMENT '头像',
  `structureid` VARCHAR(100) DEFAULT NULL COMMENT '部门',
  `postid` VARCHAR(100) DEFAULT NULL COMMENT '岗位',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00 ' COMMENT '创建时间',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` VARCHAR(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;
INSERT INTO `vs_admin_user` VALUES( '1', 'vsery', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'vsery', '1', '1', '2018-01-01 00:00:00', '1', '拥护者');
INSERT INTO `vs_admin_user` VALUES( '2', 'admin', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'admin', '1', '1', '2018-01-01 00:00:00', '0', '管理员');
INSERT INTO `vs_admin_user` VALUES( '3', 'test', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'test', '1', '1', '2018-01-01 00:00:00', '0', '测试员');
INSERT INTO `vs_admin_user` VALUES( '4', 'vs', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'vsery', '1', '1', '2018-01-01 00:00:00', '1', '拥护者');
INSERT INTO `vs_admin_user` VALUES( '5', 'administrator', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'admin', '1', '1', '2018-01-01 00:00:00', '0', '管理员');
INSERT INTO `vs_admin_user` VALUES( '6', 'text', 'd93a5def7511da3d0f2d171d9c344e91', '超级管理员', '18075177451', 'test', '1', '1', '2018-01-01 00:00:00', '0', '测试员');

-- ------------------------------------
-- Table Administator for vs_user : 用户表
-- ------------------------------------
DROP TABLE IF EXISTS `vs_user`;
CREATE TABLE `vs_user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` VARCHAR(100) DEFAULT NULL COMMENT '账号',
  `password` VARCHAR(100) DEFAULT 'd93a5def7511da3d0f2d171d9c344e91' COMMENT '密码',
  `nickname` VARCHAR(100) DEFAULT NULL COMMENT '昵称',
  `moblie` VARCHAR(11) DEFAULT NULL COMMENT '手机号',
  `header` VARCHAR(100) DEFAULT NULL COMMENT '头像',
  `province` VARCHAR(100) DEFAULT NULL COMMENT '省',
  `city` VARCHAR(100) DEFAULT NULL COMMENT '市',
  `county` VARCHAR(100) DEFAULT NULL COMMENT '县',
  `street` VARCHAR(100) DEFAULT NULL COMMENT '街道',
  `wechat` VARCHAR(100) DEFAULT NULL COMMENT '微信',
  `qq` VARCHAR(100) DEFAULT NULL COMMENT 'QQ',
  `email` VARCHAR(100) DEFAULT NULL COMMENT 'Email',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00 ' COMMENT '创建时间',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` VARCHAR(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;
INSERT INTO `vs_user` VALUES( '1', 'abcd', 'd93a5def7511da3d0f2d171d9c344e91', '白尊者', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/107590675.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', '1', '拥护者');
INSERT INTO `vs_user` VALUES( '2', 'text', 'd93a5def7511da3d0f2d171d9c344e91', '纪晓岚', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/106779355.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', '0', '管理员');
INSERT INTO `vs_user` VALUES( '3', 'test2', 'd93a5def7511da3d0f2d171d9c344e91', '后羿', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/104730974.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', '0', '测试员');
INSERT INTO `vs_user` VALUES( '4', 'abcdef', 'd93a5def7511da3d0f2d171d9c344e91', '杨戬', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/93938406.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', '1', '拥护者');
INSERT INTO `vs_user` VALUES( '5', 'adminy', 'd93a5def7511da3d0f2d171d9c344e91', '观音大湿', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/110523568.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', '0', '管理员');
INSERT INTO `vs_user` VALUES( '6', 'zero', 'd93a5def7511da3d0f2d171d9c344e91', '张无忌', '13838384138', 'http://images9.baihe.com/landingpage/images_0925/107644834.jpg', '湖南省', '长沙市', '雨花区', '雨花区政府2021', 'zero', '3132629604', '3132626904@qq.com', '2018-01-01 00:00:00', '0', '测试员');
 
-- ------------------------------------
-- Table Administator for vs_link_group : 用户表
-- ------------------------------------
DROP TABLE IF EXISTS `vs_link_group`;
CREATE TABLE `vs_link_group` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort` INT(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` VARCHAR(100) DEFAULT NULL COMMENT '文本',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` VARCHAR(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;
INSERT INTO `vs_link_group` VALUES( '1', '1', '团队博客', '1', '');
INSERT INTO `vs_link_group` VALUES( '2', '2', '朋友同事同行', '1', '');
INSERT INTO `vs_link_group` VALUES( '3', '3', '推荐资源', '1', '');

-- ------------------------------------
-- Table Administator for vs_link : 用户表
-- ------------------------------------
DROP TABLE IF EXISTS `vs_link`;
CREATE TABLE `vs_link` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort` INT(10) DEFAULT '10' COMMENT '排序:越小越前',
  `groupid` INT(11) DEFAULT NULL COMMENT '分类ID',
  `text` VARCHAR(100) DEFAULT NULL COMMENT '文本',
  `src` VARCHAR(100) DEFAULT NULL COMMENT '链接',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00 ' COMMENT '创建时间',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` VARCHAR(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;
INSERT INTO `vs_link` VALUES( '1', '1', '1', '财付通设计中心', 'http://tid.tenpay.com/',  '2018-01-01 00:00:00', '1', '');
INSERT INTO `vs_link` VALUES( '2', '2', '1', 'w3cplus', 'http://www.w3cplus.com/',  '2018-01-01 00:00:00', '1', '');
INSERT INTO `vs_link` VALUES( '3', '3', '1', 'Web前端开发', 'http://www.css88.com/',  '2018-01-01 00:00:00', '1', '');
INSERT INTO `vs_link` VALUES( '4', '4', '1', '前端观察', 'http://www.qianduan.net',  '2018-01-01 00:00:00', '1', '');
INSERT INTO `vs_link` VALUES( '5', '5', '1', '淘宝UED', 'http://ued.taobao.com/blog/',  '2018-01-01 00:00:00', '1', '');
INSERT INTO `vs_link` VALUES( '6', '6', '1', '腾讯全端AlloyTeam团队Blog', 'http://www.alloyteam.com/',  '2018-01-01 00:00:00', '1', '');
INSERT INTO `vs_link` VALUES( '7', '7', '1', 'tgideas.qq.com', 'http://tgideas.qq.com/',  '2018-01-01 00:00:00', '1', '');

-- ------------------------------------
-- Table Web for vs_banner : 前台 banner表
-- ------------------------------------
DROP TABLE IF EXISTS `vs_banner`;
CREATE TABLE `vs_banner` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort` INT(10) DEFAULT '10' COMMENT '排序:越小越前',
  `src` VARCHAR(100) DEFAULT NULL COMMENT '网络地址',
  `path` VARCHAR(100) DEFAULT NULL COMMENT '跳转地址',
  `width` VARCHAR(11) DEFAULT NULL COMMENT '宽度',
  `height` VARCHAR(11) DEFAULT NULL COMMENT '高度',
  `style` VARCHAR(100) DEFAULT NULL COMMENT '样式',
  `thumbnail` VARCHAR(100) DEFAULT NULL COMMENT '缩略图',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00 ' COMMENT '创建时间',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` VARCHAR(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;
INSERT INTO `vs_banner` VALUES( '1', '1', 'http://img.zcool.cn/community/01ed7a5a694068a80120a123041778.jpg', NULL, '1385', '360', '1', NULL, '2018-1-25 11:15:51', '1', '拥护者');
INSERT INTO `vs_banner` VALUES( '2', '2', 'http://img.zcool.cn/community/015f5e5a69403fa80120a123c1d5aa.jpg', NULL, '1385', '360', '1', NULL, '2018-1-25 11:15:51', '0', '管理员');
INSERT INTO `vs_banner` VALUES( '3', '3', 'http://img.zcool.cn/community/011bb85a693d19a80120a123c6b023.jpg', NULL, '1385', '360', '1', NULL, '2018-1-25 11:15:51', '0', '测试员');
INSERT INTO `vs_banner` VALUES( '4', '4', 'http://img.zcool.cn/community/01cdce5a69407ea8012134661beee8.jpg', NULL, '1385', '360', '1', NULL, '2018-1-25 11:15:51', '0', '测试员');
INSERT INTO `vs_banner` VALUES( '5', '5', 'http://img.zcool.cn/community/0189a25a693dcfa80120a123d8aa51.jpg', NULL, '1385', '360', '1', NULL, '2018-1-25 11:15:51', '0', '测试员');

-- ------------------------------------
-- Table Web for vs_group : 页面分类
-- ------------------------------------
DROP TABLE IF EXISTS `vs_group`;
CREATE TABLE `vs_group` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort` INT(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` VARCHAR(100) DEFAULT NULL COMMENT '文本',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00 ' COMMENT '创建时间',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` VARCHAR(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;
INSERT INTO `vs_group` VALUES( '1', '1', '前端', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group` VALUES( '2', '1', '后端', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group` VALUES( '3', '1', '设计', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group` VALUES( '4', '1', '工具', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group` VALUES( '5', '1', '书籍', '2018-1-25 11:15:51', '1', NULL);

-- ------------------------------------
-- Table Web for vs_web_page_group : 页面 子分类
-- ------------------------------------
DROP TABLE IF EXISTS `vs_group_item`;
CREATE TABLE `vs_group_item` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `groupid` INT(10) DEFAULT NULL COMMENT '分类ID',
  `sort` INT(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` VARCHAR(100) DEFAULT NULL COMMENT '文本',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00 ' COMMENT '创建时间',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` VARCHAR(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;
INSERT INTO `vs_group_item` VALUES( '1', '1', '1', 'jQueryUI', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '2', '1', '1', 'Vue', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '3', '1', '1', 'jQuery', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '4', '1', '1', 'Html', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '5', '1', '1', 'CSS', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '6', '1', '1', 'JavaScript', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '7', '1', '1', 'Bootstrap', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '8', '2', '1', 'Ruby', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '9', '2', '1', 'PHP', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '10', '2', '1', 'Java', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '11', '2', '1', 'Python', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '12', '2', '1', 'C++', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '13', '2', '1', 'C#', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '14', '3', '1', '平面设计', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '15', '3', '1', 'Web', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '16', '3', '1', 'banner', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '17', '3', '1', 'UI', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '18', '4', '1', '字体计算', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '19', '4', '1', '正则表达式测试', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '20', '4', '1', 'SQL工具', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '21', '4', '1', 'JSON工具', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '22', '4', '1', 'HTML工具', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '23', '4', '1', 'CSS工具', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '24', '4', '1', 'JavaScript工具', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_group_item` VALUES( '25', '4', '1', 'favicon只做', '2018-1-25 11:15:51', '1', NULL);

-- ------------------------------------
-- Table Web for vs_web_page_group : 页面分类
-- ------------------------------------
DROP TABLE IF EXISTS `vs_page`;
CREATE TABLE `vs_page` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort` INT(10) DEFAULT '10' COMMENT '排序:越小越前',
  `groupid` INT(10) DEFAULT NULL COMMENT '分类ID',
  `groupitemid` INT(10) DEFAULT NULL COMMENT '分类子ID',
  `title` VARCHAR(100) DEFAULT NULL COMMENT '标题',
  `key` VARCHAR(100) DEFAULT NULL COMMENT '关机字',
  `text` VARCHAR(100) DEFAULT NULL COMMENT '文本',
  `author` VARCHAR(100) DEFAULT NULL COMMENT '作者',
  `thumbnail` VARCHAR(100) DEFAULT NULL COMMENT '缩略图',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00 ' COMMENT '创建时间',
  `updatetime` datetime DEFAULT '2000-01-01 00:00:00 ' COMMENT '更新时间',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` VARCHAR(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;
INSERT INTO `vs_page` VALUES( '1', '1', '1', '1', '前端学习目录', '前端, F2E, WEB开发', '前端学习目录,欢迎光临这边文章', 'vsery', '', '2018-1-25 11:15:51', '2018-1-25 11:15:51', '1', NULL);

-- ------------------------------------
-- Table Web for vs_key : 关键字
-- ------------------------------------
DROP TABLE IF EXISTS `vs_key`;
CREATE TABLE `vs_key` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort` INT(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` VARCHAR(100) DEFAULT NULL COMMENT '文本',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00 ' COMMENT '创建时间',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` VARCHAR(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;
INSERT INTO `vs_key` VALUES( '1', '1', '前端', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '2', '2', '前端开发', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '3', '3', 'web前端开发', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '4', '4', 'HTML', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '5', '5', 'HTML/CSS', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '6', '6', 'CSS', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '7', '7', 'JavaScript', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '8', '8', 'jQuery', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '9', '9', 'Html5', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '11', '11', 'Css3', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '12', '12', 'Node.js', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '13', '13', 'AngularJS', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '14', '14', 'Bootstrap', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '15', '15', 'React', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '16', '16', 'Sass/Less', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '17', '17', 'Vue.js', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '18', '18', 'WebApp', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '19', '19', '前端工具', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '20', '20', '后端', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '21', '21', '后端开发', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '22', '22', 'PHP', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '23', '23', 'Java', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '24', '24', 'python', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '25', '25', 'C', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '26', '26', 'C++', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '27', '27', 'Go', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '28', '28', 'C#', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '29', '29', 'Ruby', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '30', '30', '移动开发', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '31', '31', 'Android', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '32', '32', 'IOS', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '33', '33', 'Unity 3D', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '34', '34', 'Cocos2d-x', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '35', '35', '数据库', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '36', '36', 'MySQL', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '37', '37', 'MongoDB', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '38', '38', 'Oracle', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '39', '39', 'SQL Server', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '40', '40', '大数据', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '41', '41', '云计算', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '42', '42', '大数据/云计算', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '43', '43', '运维', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '44', '44', '测试', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '45', '45', '运维&测试', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '46', '46', 'Linux', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '47', '47', '设计', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '48', '48', 'UI设计', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '49', '49', 'VI设计', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '50', '50', 'Web设计', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '51', '51', '动画动效', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '52', '52', 'APPUI设计', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '53', '53', '设计工具', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '54', '54', '设计基础', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '55', '55', 'PS', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '56', '56', 'Photoshop', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '57', '57', 'CoreDraw', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '58', '58', '矢量绘图软件', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '59', '59', 'Adobe Photoshop CC', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '60', '60', 'Adobe Photoshop', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '61', '61', 'Adobe Illustrator CS5', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '62', '62', '图形软件', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '63', '63', 'UI', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '64', '64', 'AI', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '65', '65', 'VI', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '66', '66', 'Web', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '67', '67', 'Banner', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '68', '68', 'Adobe Illustrator', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '69', '69', 'Adobe Photoshop CS5', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '70', '70', 'Adobe Photoshop CS6', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '71', '71', 'sublime', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '72', '72', 'github', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '73', '73', 'Facebook', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '74', '74', 'twitter', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '75', '75', '正则表达式', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '76', '76', '代码格式化', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '77', '77', '编码转换', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '78', '78', '加密', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '79', '79', '解密', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '80', '80', '加密/解密', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '81', '81', '压缩', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '82', '82', '解压', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '83', '83', '压缩/解压', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '84', '84', 'Fiddler', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '85', '85', 'FIS', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '86', '86', 'Jade', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '87', '87', 'Firebug', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '88', '88', 'Dreamweaver', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '89', '89', 'DW', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '90', '90', 'Grunt', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '91', '91', 'Grunt-beginner', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '92', '92', 'Git', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '93', '93', 'webpack', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '94', '94', '浏览器', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '95', '95', 'websocket', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '96', '96', '微信', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '97', '97', '微信公众号', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '98', '98', '小程序', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '99', '99', '微信小程序', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '100', '100', '响应式', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '101', '101', 'http', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '102', '102', 'Ajax', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '103', '103', 'ReactNative', '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `vs_key` VALUES( '104', '104', 'OkHttp', '2018-1-25 11:15:51', '1', NULL);

-- ------------------------------------
-- Table Web for sys_sidebar : 系统侧边栏
-- ------------------------------------
DROP TABLE IF EXISTS `sys_sidebar`;
CREATE TABLE `sys_sidebar` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort` INT(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` VARCHAR(100) DEFAULT NULL COMMENT '提示文本',
  `icon` VARCHAR(100) DEFAULT NULL COMMENT '图标',
  `style` VARCHAR(100) DEFAULT NULL COMMENT '样式',
  `path` VARCHAR(100) DEFAULT NULL COMMENT '跳转地址',
  `fun` VARCHAR(11) DEFAULT NULL COMMENT '方法',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00 ' COMMENT '创建时间',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` VARCHAR(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;
INSERT INTO `sys_sidebar` VALUES( '1', '1', '菜单', 'fa-bars', NULL, NULL, NULL, '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `sys_sidebar` VALUES( '2', '2', '首页', 'fa-windows', NULL, NULL, NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_sidebar` VALUES( '3', '3', '页面', 'fa-files-o', 'page/pages', NULL, NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_sidebar` VALUES( '4', '4', '博客', 'fa-pied-piper', 'blog/blogs', NULL, NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_sidebar` VALUES( '5', '5', '项目', 'fa-github', NULL, 'project/project', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_sidebar` VALUES( '6', '6', '设计', 'fa-drupal', NULL, 'desgin/desgins', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_sidebar` VALUES( '7', '7', '音乐', 'fa-music', NULL, 'music/musics', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_sidebar` VALUES( '8', '8', '视频', 'fa-film', NULL, 'video/videos', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_sidebar` VALUES( '9', '9', '书籍', 'fa-paste', NULL, 'book/books', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_sidebar` VALUES( '10', '10', '财务', 'fa-pie-chart', NULL, 'finance/finances', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_sidebar` VALUES( '11', '11', '微信', 'fa-wechat', NULL, 'wechat/wechats', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_sidebar` VALUES( '12', '12', '链接', 'fa-link', NULL, 'link/links', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_sidebar` VALUES( '13', '13', '工具', 'fa-wrench', NULL, 'tool/tools', NULL, '2018-1-25 11:15:51', '1', NULL); 

-- ------------------------------------
-- Table Web for sys_sidebar : 系统工具栏
-- ------------------------------------
DROP TABLE IF EXISTS `sys_tool`;
CREATE TABLE `sys_tool` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort` INT(10) DEFAULT '10' COMMENT '排序:越小越前',
  `text` VARCHAR(100) DEFAULT NULL COMMENT '提示文本',
  `icon` VARCHAR(100) DEFAULT NULL COMMENT '图标',
  `style` VARCHAR(100) DEFAULT NULL COMMENT '样式',
  `path` VARCHAR(100) DEFAULT NULL COMMENT '跳转地址',
  `fun` VARCHAR(11) DEFAULT NULL COMMENT '方法',
  `createtime` datetime DEFAULT '2000-01-01 00:00:00 ' COMMENT '创建时间',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  `remark` VARCHAR(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;
INSERT INTO `sys_tool` VALUES( '1', '1', '打开系统菜单', 'fa-bars', NULL, NULL, NULL, '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `sys_tool` VALUES( '2', '2', '全屏显示', 'fa-arrows', NULL, NULL, NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_tool` VALUES( '3', '3', '个人信息', 'fa-eye', 'page/pages', NULL, NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_tool` VALUES( '4', '4', '性能检测', 'fa-desktop', 'blog/blogs', NULL, NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_tool` VALUES( '5', '5', '欣赏音乐', 'fa-music', NULL, 'project/project', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_tool` VALUES( '6', '6', '时间日期', 'fa-clock-o', NULL, 'desgin/desgins', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_tool` VALUES( '7', '7', 'WebQQ', 'fa-qq', NULL, 'music/musics', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_tool` VALUES( '8', '8', '微信登录', 'fa-qrcode', NULL, 'video/videos', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_tool` VALUES( '9', '9', '微信登录', 'fa-paper-plane-o', NULL, 'book/books', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_tool` VALUES( '10', '10', '退出系统', 'fa-power-off', NULL, 'finance/finances', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_tool` VALUES( '11', '11', '', 'fa-flag', NULL, 'wechat/wechats', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_tool` VALUES( '12', '12', '', 'fa-heartbeat', NULL, 'link/links', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `sys_tool` VALUES( '13', '13', '', 'fa-cloud', NULL, 'tool/tools', NULL, '2018-1-25 11:15:51', '1', NULL); 
