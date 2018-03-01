/*
MySQL Data Transfer
Source Host: localhost
Source Database: bodybuilding
Target Host: localhost
Target Database: bodybuilding
Date: 2017/12/28 12:43:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(2) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(20) default NULL,
  `lastlogintime` varchar(50) default NULL COMMENT '最后一次登录时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for apparatus
-- ----------------------------
DROP TABLE IF EXISTS `apparatus`;
CREATE TABLE `apparatus` (
  `id` int(20) NOT NULL auto_increment COMMENT '器材编号',
  `aname` varchar(20) NOT NULL COMMENT '器材名称',
  `astate` int(2) NOT NULL default '0' COMMENT '状态 0正常 1损坏',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(20) NOT NULL auto_increment COMMENT '课程编号',
  `cname` varchar(20) NOT NULL COMMENT '课程名',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for teach
-- ----------------------------
DROP TABLE IF EXISTS `teach`;
CREATE TABLE `teach` (
  `id` int(20) NOT NULL auto_increment COMMENT '教练编号',
  `tname` varchar(20) NOT NULL COMMENT '教练姓名',
  `cid` int(10) default NULL COMMENT '课程编号',
  `ttel` varchar(20) default NULL COMMENT '联系方式',
  `taddress` varchar(20) default NULL COMMENT '地址',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL auto_increment COMMENT '编号',
  `name` varchar(20) NOT NULL COMMENT '用户名',
  `pwd` varchar(20) NOT NULL COMMENT '密码',
  `account` varchar(20) default NULL COMMENT '登录名',
  `age` int(10) default NULL COMMENT '年龄',
  `sex` int(2) default NULL COMMENT '性别 0女 1男',
  `tel` varchar(20) default NULL COMMENT '电话',
  `address` varchar(255) default NULL COMMENT '地址',
  `uclass` int(20) default NULL COMMENT '科目编号',
  `uteach` int(20) default NULL COMMENT '教练编号',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin', '2017-12-28 09:18:06');
INSERT INTO `apparatus` VALUES ('1', '杠铃', '0');
INSERT INTO `apparatus` VALUES ('2', '双杠 ', '0');
INSERT INTO `apparatus` VALUES ('3', '跑步机', '0');
INSERT INTO `apparatus` VALUES ('4', '双杠2 ', '0');
INSERT INTO `apparatus` VALUES ('5', '双杠3', '0');
INSERT INTO `apparatus` VALUES ('6', '双杠4', '0');
INSERT INTO `apparatus` VALUES ('7', '跑步机2', '0');
INSERT INTO `apparatus` VALUES ('8', '跑步机3', '0');
INSERT INTO `apparatus` VALUES ('9', '跑步机4', '1');
INSERT INTO `apparatus` VALUES ('10', '掉电', '1');
INSERT INTO `course` VALUES ('1', '杠铃');
INSERT INTO `course` VALUES ('2', '跑步');
INSERT INTO `course` VALUES ('3', '瑜伽');
INSERT INTO `course` VALUES ('4', '健美操');
INSERT INTO `teach` VALUES ('2', '李四', '2', '13222222222', '山东');
INSERT INTO `teach` VALUES ('3', '王五', '3', '13444444444', '天津');
INSERT INTO `teach` VALUES ('4', '赵六', '4', '13555555555', '江苏');
INSERT INTO `teach` VALUES ('6', '赵七', '3', '13555555555', '江苏');
INSERT INTO `teach` VALUES ('7', '赵八', '2', '13555555555', '江苏');
INSERT INTO `teach` VALUES ('8', '赵九', '4', '13555555555', '江苏2');
INSERT INTO `user` VALUES ('2', '刘聪', '1234', '1234', '22', '1', '15335582485', '计算机学院a', '1', '3');
INSERT INTO `user` VALUES ('3', '张三3', '12345', '12345', '44', '0', '13666666666', '北京东城', '3', '1');
INSERT INTO `user` VALUES ('4', '小明', '1235', 'qwer', '152', '1', '13888888888', '山东济南', '3', '1');
INSERT INTO `user` VALUES ('9', '阿斯蒂芬', '3306', '5252', '89', '1', '15335582486', '计算机学院', null, null);
