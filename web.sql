/*
Navicat MySQL Data Transfer
Source Server         : localhost
Source Server Version : 1000
Source Host           : localhost:3306
Source Database       : vsery
Target Server Type    : MYSQL
Target Server Version : 1000
File Encoding         : 65001
Date: 2018-4-12 16:14:22
*/

-- ------------------------------------
-- Table Web for web_menu : 系统侧边栏
-- ------------------------------------
DROP TABLE IF EXISTS `web_menu`;
CREATE TABLE `web_menu` (
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
INSERT INTO `web_menu` VALUES( '1', '1', '菜单', 'fa-bars', NULL, NULL, NULL, '2018-1-25 11:15:51', '1', NULL);
INSERT INTO `web_menu` VALUES( '2', '2', '首页', 'fa-windows', NULL, 'index', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `web_menu` VALUES( '3', '3', '页面', 'fa-files-o', NULL, 'page', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `web_menu` VALUES( '4', '4', '博客', 'fa-pied-piper', NULL, 'blog', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `web_menu` VALUES( '5', '5', '项目', 'fa-github', NULL, 'project', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `web_menu` VALUES( '6', '6', '设计', 'fa-drupal', NULL, 'desgin', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `web_menu` VALUES( '7', '7', '音乐', 'fa-music', NULL, 'music', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `web_menu` VALUES( '8', '8', '视频', 'fa-film', NULL, 'video', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `web_menu` VALUES( '9', '9', '书籍', 'fa-paste', NULL, 'book', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `web_menu` VALUES( '10', '10', '财务', 'fa-pie-chart', NULL, 'finance', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `web_menu` VALUES( '11', '11', '微信', 'fa-wechat', NULL, 'wechat', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `web_menu` VALUES( '12', '12', '链接', 'fa-link', NULL, 'link', NULL, '2018-1-25 11:15:51', '1', NULL); 
INSERT INTO `web_menu` VALUES( '13', '13', '工具', 'fa-wrench', NULL, 'tool', NULL, '2018-1-25 11:15:51', '1', NULL); 