/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50614
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50614
 File Encoding         : 65001

 Date: 14/10/2019 09:58:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `article_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志自增ID号',
  `article_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章名称',
  `article_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布时间',
  `article_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布IP',
  `article_click` int(10) NOT NULL COMMENT '查看人数',
  `sort_article_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属分类',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '栏目ID',
  `article_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '文章的模式:0为私有，1为公开，2为仅好友查看',
  `article_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章内容',
  `article_up` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '是否置顶:0为否，1为是',
  `article_support` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '是否博主推荐:0为否，1为是',
  `article_summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '博客摘要',
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('097a', 'esxt', '2019-09-25 16:27:30', '127.0.0.1', 0, '', '26c2d844c58440c5ae95b227f1c306df', '1', '1', '<p>12212</p>', '0', '0', '');
INSERT INTO `article` VALUES ('13c7525db0b4415d820ce658c7a5549a', 'esxt', '2019-09-25 16:59:41', '127.0.0.1', 0, '', '26c2d844c58440c5ae95b227f1c306df', '1', '1', '<p>123</p>', '0', '0', '');
INSERT INTO `article` VALUES ('1db123fcfab743cf806a7da52cdecb56', '深入理解C语言指针', '2019-09-30 11:45:07', '127.0.0.1', 0, '', '26c2d844c58440c5ae95b227f1c306df', '1', '1', '<h2>深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针深入理解C语言指针</h2>', '0', '0', '');
INSERT INTO `article` VALUES ('21b9', 'esxt', '2019-09-25 16:31:54', '127.0.0.1', 0, '', '26c2d844c58440c5ae95b227f1c306df', '1', '1', '<p>1213</p>', '0', '0', '');
INSERT INTO `article` VALUES ('50e4e8a481a241838de68e06813e563b', 'Ubuntu', '2019-10-09 11:21:35', '127.0.0.1', 0, '', '36c4ea7f0adb4f009fc7e73a392c4730', '1', '1', '<h4>一、艺术人生</h4><p>这一次我们邀请的是冯巩</p><h4>二、花天酒地</h4><p><i>你说你要放浪，却固执旧念</i></p><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure>', '0', '0', '');
INSERT INTO `article` VALUES ('ba34787fb84f4d2b8a22f0276d1a227b', '铁公鸡', '2019-09-30 11:30:39', '127.0.0.1', 0, '', '26c2d844c58440c5ae95b227f1c306df', '1', '1', '<p>王天河</p>', '0', '0', '');
INSERT INTO `article` VALUES ('ec57', 'esxt', '2019-09-25 16:26:08', '127.0.0.1', 0, '', '26c2d844c58440c5ae95b227f1c306df', '1', '1', '<p>777</p>', '0', '0', '');

SET FOREIGN_KEY_CHECKS = 1;
