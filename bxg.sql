/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : localhost
 Source Database       : bxg

 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : utf-8

 Date: 02/08/2017 21:54:25 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `advert`
-- ----------------------------
DROP TABLE IF EXISTS `advert`;
CREATE TABLE `advert` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称',
  `ad_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '广告类型',
  `ad_link` varchar(255) NOT NULL DEFAULT '' COMMENT '广告链接',
  `ad_order` int(11) NOT NULL DEFAULT '10' COMMENT '排序',
  `ad_is_hide` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `ad_start_time` int(11) NOT NULL DEFAULT '0' COMMENT '开启时间',
  `ad_end_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `ad_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
--  Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cg_id` int(11) NOT NULL AUTO_INCREMENT,
  `cg_pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `cg_name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称',
  `cg_order` int(11) NOT NULL DEFAULT '10' COMMENT '排序',
  `cg_is_hide` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `cg_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`cg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
--  Records of `category`
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES ('1', '0', '前端开发', '10', '0', '2016-11-13 15:36:01'), ('2', '0', '后端开发', '10', '0', '2016-11-13 15:36:10'), ('3', '0', '数据库', '10', '0', '2016-11-13 15:36:17'), ('4', '0', '视觉设计', '10', '0', '2016-11-13 15:36:28'), ('5', '1', 'HTML/CSS', '10', '0', '2016-11-13 15:36:46'), ('6', '1', 'Javascript', '10', '0', '2016-11-13 15:36:56'), ('7', '1', 'Mobile', '10', '0', '2016-11-13 15:37:07'), ('8', '2', 'PHP', '10', '0', '2016-11-13 15:37:28'), ('9', '2', 'NodeJS', '10', '0', '2016-11-13 15:37:37'), ('10', '2', 'Python', '10', '0', '2016-11-13 15:37:53'), ('11', '3', 'MySQL', '10', '0', '2016-11-13 15:38:04'), ('12', '3', 'MongoDB', '10', '0', '2016-11-13 15:38:38'), ('13', '3', 'Oracle', '10', '0', '2016-11-13 15:39:01'), ('14', '4', 'Photoshop', '10', '0', '2016-11-13 15:39:28'), ('15', '0', '移动开发', '10', '0', '2016-11-14 13:25:45'), ('16', '0', '云计算&大数据', '10', '0', '2016-11-14 13:26:07'), ('17', '0', '运维&测试', '10', '0', '2016-11-14 13:26:27'), ('18', '15', 'Android', '10', '0', '2016-11-14 13:37:01'), ('19', '15', 'IOS', '10', '0', '2016-11-14 13:37:13'), ('20', '16', '云数据', '10', '0', '2016-11-14 13:37:41'), ('21', '16', '大数据', '10', '0', '2016-11-14 13:37:50'), ('22', '17', '测式', '10', '0', '2016-11-14 13:38:08'), ('23', '17', 'Linux', '10', '0', '2016-11-14 13:38:19'), ('24', '1', 'AngularJS', '10', '0', '2016-12-22 17:14:53'), ('25', '1', 'Vue', '6', '0', '2016-12-28 17:14:27');
COMMIT;

-- ----------------------------
--  Table structure for `chapter`
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_cs_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `ct_name` varchar(128) NOT NULL DEFAULT '' COMMENT '课时名称',
  `ct_brief` text COMMENT '课时简介',
  `ct_is_free` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否免费',
  `ct_video` varchar(255) NOT NULL DEFAULT '' COMMENT '视频',
  `ct_video_duration` varchar(16) NOT NULL DEFAULT '00:00' COMMENT '视频时长',
  `ct_recommend_duration` varchar(16) NOT NULL DEFAULT '' COMMENT '推荐时长',
  `ct_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`ct_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='章节表';

-- ----------------------------
--  Records of `chapter`
-- ----------------------------
BEGIN;
INSERT INTO `chapter` VALUES ('1', '1', '介绍', '层叠样式表(英文全称：Cascading Style Sheets)是一种用来表现HTML（标准通用标记语言的一个应用）或XML（标准通用标记语言的一个子集）等文件样式的计算机语言。CSS不仅可以静态地修饰网页，还可以配合各种脚本语言动态地对网页各元素进行格式化。', '1', 'http://www.youku.com', '08:12', '0.5', '2017-01-06 11:29:51'), ('2', '1', '定位和浮动', 'CSS 为定位和浮动提供了一些属性，利用这些属性，可以建立列式布局，将布局的一部分与另一部分重叠，还可以完成多年来通常需要使用多个表格才能完成的任务。', '0', 'http://www.youku.com', '08:14', '0.4', '2017-01-06 11:30:24'), ('3', '1', '弹性盒子', null, '0', '', '10:12', '0.3', '2017-01-06 14:44:49'), ('4', '1', '动画', null, '1', '', '08:10', '', '2017-01-06 14:49:18'), ('5', '1', '3d转换', null, '1', '', '06:14', '0.2', '2017-01-06 14:50:59'), ('6', '1', '盒模型', null, '0', '', '10:08', '0.3', '2017-01-07 13:54:56');
COMMIT;

-- ----------------------------
--  Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT,
  `cs_cg_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程分类ID',
  `cs_tc_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程讲师ID',
  `cs_name` varchar(128) NOT NULL DEFAULT '' COMMENT '课程名称',
  `cs_brief` text COMMENT '课程简介',
  `cs_tags` varchar(64) NOT NULL DEFAULT '' COMMENT '课程标签',
  `cs_cover` varchar(255) NOT NULL DEFAULT '' COMMENT '课程封面',
  `cs_cover_original` varchar(255) NOT NULL DEFAULT '' COMMENT '封面原图',
  `cs_visited` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `cs_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`cs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
--  Records of `course`
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES ('1', '5', '2', 'CSS', '<p>网页基础</p>\n', '布局', 'x-oss-process=image/crop,x_0,y_0,w_0,h_0', '586a53f784601.jpg', '0', '2017-01-02 14:03:05'), ('2', '5', '3', '移动Web', '<p>移动Web适配</p>\n', 'Mobile', 'x-oss-process=image/crop,x_13,y_0,w_699,h_350', '586a5c7659052.jpg', '0', '2017-01-02 21:56:57');
COMMIT;

-- ----------------------------
--  Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tc_id` int(4) NOT NULL AUTO_INCREMENT,
  `tc_name` varchar(16) NOT NULL DEFAULT '' COMMENT '讲师姓名',
  `tc_roster` varchar(10) NOT NULL DEFAULT '攻城狮' COMMENT '讲师花名',
  `tc_pass` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `tc_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否为管理员',
  `tc_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '讲师状态',
  `tc_birthday` int(11) NOT NULL DEFAULT '0' COMMENT '讲师生日',
  `tc_province` char(6) NOT NULL DEFAULT '110000' COMMENT '所在省份',
  `tc_city` char(6) NOT NULL DEFAULT '110100' COMMENT '所在城市',
  `tc_district` char(6) NOT NULL DEFAULT '110108' COMMENT '所在区县',
  `tc_hometown` varchar(120) NOT NULL DEFAULT '北京市|市辖区|海淀区' COMMENT '家乡',
  `tc_avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '讲师头像',
  `tc_gender` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别',
  `tc_cellphone` char(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `tc_email` varchar(30) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `tc_join_date` int(11) NOT NULL DEFAULT '0' COMMENT '入职时间',
  `tc_introduce` text COMMENT '讲师介绍',
  `tc_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`tc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='讲师表';

-- ----------------------------
--  Records of `teacher`
-- ----------------------------
BEGIN;
INSERT INTO `teacher` VALUES ('1', '前端学院', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '-28800', '110000', '110100', '110108', '北京市|市辖区|海淀区', '586bbb17132c9.jpg', '0', '', '', '-28800', '<p>Web前端开发是从网页制作演变而来的，名称上有很明显的时代特征。在互联网的演化进程中，网页制作是Web1.0时代的产物，那时网站的主要内容都是静态的，用户使用网站的行为也以浏览为主。</p>\n\n<p>掌握HTML是网页的核心，是一种制作万维网页面的标准语言，是万维网浏览器使用的一种语言，它消除了不同计算机之间信息交流的障碍。因此，它是目前网络上应用最为广泛的语言，也是构成网页文档的主要语言，学好HTML是成为Web开发人员的基本条件。</p>\n', '2017-01-02 14:05:53'), ('2', '李清照', '易安居士', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '-28800', '370000', '370100', '370181', '山东省|济南市|章丘市', '5869fc961c17f.jpg', '1', '', 'liqingzhao@itcast.cn', '1423843200', '<p>李清照（1084年3月13日&mdash;1155年？），号易安居士，汉族，齐州济南（今山东省济南市章丘区）人。宋代女词人，婉约词派代表，有&ldquo;千古第一才女&rdquo;之称。</p>\n\n<p>李清照出生于书香门第，早期生活优裕，其父李格非藏书甚富，她小时候就在良好的家庭环境中打下文学基础。出嫁后与夫赵明诚共同致力于书画金石的搜集整理。金兵入据中原时，流寓南方，境遇孤苦。所作词，前期多写其悠闲生活，后期多悲叹身世，情调感伤。形式上善用白描手法，自辟途径，语言清丽。论词强调协律，崇尚典雅，提出词&ldquo;别是一家&rdquo;之说，反对以作诗文之法作词。能诗，留存不多，部分篇章感时咏史，情辞慷慨，与其词风不同。</p>\n', '2017-01-02 14:12:46'), ('3', '风清扬', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1473350400', null, '2017-01-02 14:14:21'), ('4', '令狐冲', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1452787200', null, '2017-01-02 14:15:04');
COMMIT;

-- ----------------------------
--  Table structure for `teacher_copy`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_copy`;
CREATE TABLE `teacher_copy` (
  `tc_id` int(11) NOT NULL AUTO_INCREMENT,
  `tc_name` varchar(16) NOT NULL DEFAULT '' COMMENT '讲师姓名',
  `tc_roster` varchar(10) NOT NULL DEFAULT '攻城狮' COMMENT '讲师花名',
  `tc_pass` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `tc_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否为管理员',
  `tc_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '讲师状态',
  `tc_birthday` varchar(16) NOT NULL DEFAULT '' COMMENT '讲师生日',
  `tc_province` char(6) NOT NULL DEFAULT '0' COMMENT '所在省份',
  `tc_city` char(6) NOT NULL DEFAULT '0' COMMENT '所在城市',
  `tc_district` char(6) NOT NULL DEFAULT '0' COMMENT '所在区县',
  `tc_hometown` varchar(120) NOT NULL DEFAULT '' COMMENT '家乡',
  `tc_avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '讲师头像',
  `tc_gender` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别',
  `tc_cellphone` char(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `tc_email` varchar(30) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `tc_join_date` varchar(16) NOT NULL DEFAULT '' COMMENT '入职时间',
  `tc_introduce` text COMMENT '讲师介绍',
  `tc_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`tc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='讲师表';

-- ----------------------------
--  Records of `teacher_copy`
-- ----------------------------
BEGIN;
INSERT INTO `teacher_copy` VALUES ('1', '赵玉川', '麻衣长老', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '1482414036', '130000', '130600', '130634', '河北省|保定市|曲阳县', 'psb-1479027801338.jpg', '0', '13051524959', 'zhaoyuchuan@itcast.cn', '', '<p>写点什么吧...</p>\n', '2016-11-13 17:01:43'), ('2', '李清照', '白玫瑰', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '1482414036', '130000', '130600', '130623', '河北省|保定市|涞水县', 'linan-1479027925188.jpg', '1', '18000489233', 'liqingzhao@itcast.cn', '1443628800', '<p>宇宙无敌！！超级无敌美少女</p>\n\n<p>&nbsp;</p>\n', '2016-11-13 17:04:51'), ('3', '李鹏周', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '', '0', '0', '0', '', '', '0', '', '', '1444900000', null, '2016-11-13 17:19:42'), ('4', '王朝华', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '', '0', '0', '0', '', '', '0', '', '', '1467561600', null, '2016-11-13 17:20:04'), ('5', '汪磊', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '', '0', '0', '0', '', '', '0', '', '', '0', null, '2016-11-13 17:20:21'), ('6', '蒋坤', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '', '0', '0', '0', '', '', '0', '', '', '', null, '2016-11-13 17:20:30'), ('7', '牛亮亮', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '', '0', '0', '0', '', '', '0', '', '', '0', null, '2016-11-13 17:20:40'), ('8', '前端学院', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '1482414036', '110000', '110100', '110114', '北京市|市辖区|昌平区', 'html5-1480745892943.jpg', '0', '', '', '1478534400', '<p>写点什么吧...</p>\n', '2016-11-13 19:06:47'), ('9', '风清杨', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '', '0', '0', '0', '', '', '0', '', '', '0', null, '2016-11-28 23:51:31'), ('10', '令狐冲', '攻城狮', 'd41d8cd98f00b204e9800998ecf8427e', '1', '0', '', '0', '0', '0', '', '', '0', '', '', '', null, '2016-12-04 18:07:10'), ('11', '张无忌', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '', '0', '0', '0', '', '', '0', '', '', '', null, '2016-12-22 13:31:21'), ('12', '谢逊', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '', '0', '0', '0', '', '', '0', '', '', '', null, '2016-12-22 13:43:59'), ('13', '谢逊', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '', '0', '0', '0', '', '', '0', '', '', '', null, '2016-12-22 13:44:16'), ('14', '谢逊', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '', '0', '0', '0', '', '', '0', '', '', '', null, '2016-12-22 13:45:58');
COMMIT;

-- ----------------------------
--  Table structure for `user_to_course`
-- ----------------------------
DROP TABLE IF EXISTS `user_to_course`;
CREATE TABLE `user_to_course` (
  `utc_id` int(11) NOT NULL AUTO_INCREMENT,
  `utc_cs_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `utc_us_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `utc_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`utc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户课程关联表';

SET FOREIGN_KEY_CHECKS = 1;
