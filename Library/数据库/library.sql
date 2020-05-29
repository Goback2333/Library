/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-10-31 13:27:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` varchar(10) NOT NULL COMMENT '书本ID',
  `bookname` varchar(30) DEFAULT NULL COMMENT '书本名称',
  `author` varchar(20) DEFAULT NULL COMMENT '书本作者',
  `publisher` varchar(30) DEFAULT NULL COMMENT '出版社',
  `price` int(11) DEFAULT NULL COMMENT '书本价格',
  `category` varchar(10) DEFAULT NULL COMMENT '书本类目',
  `store` int(11) DEFAULT NULL,
  `bookdesc` varchar(1000) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍数据库';

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('000001', 'Java核心技术', 'S', '1234', '119', '编程类', '20', '《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。', '3');
INSERT INTO `book` VALUES ('000002', 'C++', 'SP', 'ss', '99', '编程类', '15', '《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。', '3');
INSERT INTO `book` VALUES ('000003', '算法竞赛入门经典', 'bb', '清华大学出版社', '50', '编程类', '15', '《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。', '3');
INSERT INTO `book` VALUES ('000004', '概率论与数理统计', 'oo', 'jj', '38', '数学类', '15', '《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。', '1');
INSERT INTO `book` VALUES ('000005', '数据结构(C语言版)', '严蔚敏 吴伟民', '清华大学出版社', '29', '编程类', '8', '《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。', '3');
INSERT INTO `book` VALUES ('000006', 'Java核心技术', 'null', 'null', '0', 'null', '0', 'null', 'null');
INSERT INTO `book` VALUES ('000007', 'QRWQ', 'ERASFD', 'SFSDF', '0', 'ASD', '0', 'null', 'ASD');
INSERT INTO `book` VALUES ('000008', 'JAVAWEB', '张三', '清华1', '15', '编程', '15', '的身份aad', '1');
INSERT INTO `book` VALUES ('001', '活着', '4', '4', '65', 'null', '15', 'null', 'null');

-- ----------------------------
-- Table structure for iolog
-- ----------------------------
DROP TABLE IF EXISTS `iolog`;
CREATE TABLE `iolog` (
  `bookid` varchar(10) DEFAULT NULL,
  `readerid` varchar(45) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `borrowtime` varchar(45) NOT NULL,
  `borrowday` int(11) DEFAULT NULL,
  `complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`borrowtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iolog
-- ----------------------------
INSERT INTO `iolog` VALUES ('000001', '1', '-1', '2019年10月18日 17时46分24秒', '14', '1');
INSERT INTO `iolog` VALUES ('000001', '1', '-1', '2019年10月18日 17时46分37秒', '7', '1');
INSERT INTO `iolog` VALUES ('000001', '1', '1', '2019年10月18日 17时48分43秒', null, '1');
INSERT INTO `iolog` VALUES ('000001', '1', '1', '2019年10月18日 17时49分03秒', null, '1');
INSERT INTO `iolog` VALUES ('000003', '1', '-1', '2019年10月21日 21时45分59秒', '7', '1');
INSERT INTO `iolog` VALUES ('000003', '1', '1', '2019年10月24日 21时31分01秒', null, '1');
INSERT INTO `iolog` VALUES ('000005', '1', '-1', '2019年10月29日 19时56分37秒', '7', '1');
INSERT INTO `iolog` VALUES ('000005', '1', '1', '2019年10月29日 19时56分55秒', null, '1');
INSERT INTO `iolog` VALUES ('000008', '1', '-1', '2019年10月30日 15时26分08秒', '7', '1');
INSERT INTO `iolog` VALUES ('000008', '1', '1', '2019年10月30日 15时26分19秒', null, '1');
INSERT INTO `iolog` VALUES ('000008', '1', '-1', '2019年10月30日 15时26分42秒', '7', '0');
INSERT INTO `iolog` VALUES ('000005', '1', '-1', '2019年10月30日 15时26分58秒', '7', '1');
INSERT INTO `iolog` VALUES ('000005', '1', '1', '2019年10月30日 15时27分10秒', null, '1');
INSERT INTO `iolog` VALUES ('000008', '1', '-1', '2019年10月30日 15时27分52秒', '7', '1');
INSERT INTO `iolog` VALUES ('000008', '1', '1', '2019年10月30日 15时28分07秒', null, '1');

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader` (
  `username` varchar(50) NOT NULL COMMENT '读者用户名',
  `password` varchar(45) DEFAULT NULL COMMENT '读者密码',
  `name` varchar(45) DEFAULT NULL COMMENT '读者姓名',
  `sex` varchar(45) DEFAULT NULL COMMENT '读者性别',
  `status` int(11) DEFAULT NULL COMMENT '读者状态(1.正常 -1.黑名单)',
  `mail` varchar(45) DEFAULT NULL COMMENT '读者邮箱',
  `tel` varchar(45) DEFAULT NULL COMMENT '读者电话',
  `grade` int(11) DEFAULT '-1' COMMENT '读者年级',
  `classnum` int(11) DEFAULT '-1' COMMENT '读者班级',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='读者表';

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES ('1', '123456', '张三', '男', '1', '测试', '测试', '1', '1');

-- ----------------------------
-- Table structure for tempadd
-- ----------------------------
DROP TABLE IF EXISTS `tempadd`;
CREATE TABLE `tempadd` (
  `id` varchar(10) NOT NULL,
  `bookname` varchar(30) DEFAULT NULL COMMENT '书本名称',
  `author` varchar(20) DEFAULT NULL COMMENT '书本作者',
  `publisher` varchar(30) DEFAULT NULL COMMENT '出版社',
  `price` int(11) DEFAULT NULL COMMENT '书本价格',
  `category` varchar(10) DEFAULT NULL COMMENT '书本类目',
  `store` int(11) DEFAULT NULL,
  `bookdesc` varchar(100) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tempadd
-- ----------------------------
INSERT INTO `tempadd` VALUES ('000008', 'JAVAWEB', '张三', '清华1', '15', '编程', '15', '的身份aad', '1');
INSERT INTO `tempadd` VALUES ('000009', 'java', '李四', '北大', '19', '编程', '20', '单身公', '5');
INSERT INTO `tempadd` VALUES ('12', null, null, null, '0', null, '0', null, null);
INSERT INTO `tempadd` VALUES ('13', null, null, null, '0', null, '0', null, null);
INSERT INTO `tempadd` VALUES ('14', null, null, null, '0', null, '0', null, null);
INSERT INTO `tempadd` VALUES ('15', null, null, null, '0', null, '0', null, null);
INSERT INTO `tempadd` VALUES ('16', null, null, null, '0', null, '0', null, null);
INSERT INTO `tempadd` VALUES ('17', null, null, null, '0', null, '0', null, null);
INSERT INTO `tempadd` VALUES ('18', null, null, null, '0', null, '0', null, null);
INSERT INTO `tempadd` VALUES ('19', null, null, null, '0', null, '0', null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user` varchar(15) NOT NULL COMMENT '用户名',
  `password` varchar(25) DEFAULT NULL COMMENT '用户密码',
  `name` varchar(20) DEFAULT NULL COMMENT '用户真实姓名',
  `sex` varchar(5) DEFAULT NULL COMMENT '用户性别',
  `department` varchar(45) DEFAULT NULL COMMENT '用户部门',
  `tel` varchar(20) DEFAULT NULL COMMENT '用户电话',
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123456', '123456', '测试', '男', '图书馆', '12345678901');
