/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-06-09 21:03:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `arttable`
-- ----------------------------
DROP TABLE IF EXISTS `arttable`;
CREATE TABLE `arttable` (
  `id` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `img` varchar(1000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arttable
-- ----------------------------
INSERT INTO `arttable` VALUES ('0', '习近平主持政治局会议', '', 'http://10.0.2.2:8080/spring/pic/zhuxi.jpg', 'http://politics.people.com.cn/n1/2018/0629/c1024-30096863.html');
INSERT INTO `arttable` VALUES ('1', '武警', '学习学习党', 'http://10.0.2.2:8080/spring/pic/gun.jpg', 'http://military.people.com.cn/n1/2018/0629/c1011-30096748.html');

-- ----------------------------
-- Table structure for `imgtable`
-- ----------------------------
DROP TABLE IF EXISTS `imgtable`;
CREATE TABLE `imgtable` (
  `id` int(100) NOT NULL,
  `imgurl` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imgtable
-- ----------------------------
INSERT INTO `imgtable` VALUES ('0', 'http://10.0.2.2:8080/spring/pic/img2.jpg');
INSERT INTO `imgtable` VALUES ('1', 'http://10.0.2.2:8080/spring/pic/img1.jpg');
INSERT INTO `imgtable` VALUES ('2', 'http://10.0.2.2:8080/spring/pic/img3.jpg');
INSERT INTO `imgtable` VALUES ('4', 'http://10.0.2.2:8080/spring/pic/img5.jpg');

-- ----------------------------
-- Table structure for `t_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `login_log_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `login_datetime` date DEFAULT NULL,
  PRIMARY KEY (`login_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES ('3', '1', '192.168.12.7', '2017-10-14');
INSERT INTO `t_login_log` VALUES ('4', '1', '0:0:0:0:0:0:0:1', '2017-10-14');
INSERT INTO `t_login_log` VALUES ('5', '1', '192.168.12.7', '2017-10-18');
INSERT INTO `t_login_log` VALUES ('6', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('7', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('8', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('9', '1', '0:0:0:0:0:0:0:1', '1970-01-01');
INSERT INTO `t_login_log` VALUES ('10', '1', '0:0:0:0:0:0:0:1', '1970-01-01');
INSERT INTO `t_login_log` VALUES ('11', '2', '0:0:0:0:0:0:0:1', '1970-01-01');
INSERT INTO `t_login_log` VALUES ('12', '1', '0:0:0:0:0:0:0:1', '1970-01-01');
INSERT INTO `t_login_log` VALUES ('13', '1', '0:0:0:0:0:0:0:1', '2017-12-03');
INSERT INTO `t_login_log` VALUES ('14', '1', '0:0:0:0:0:0:0:1', '2017-12-03');
INSERT INTO `t_login_log` VALUES ('15', '1', '0:0:0:0:0:0:0:1', '2017-12-03');
INSERT INTO `t_login_log` VALUES ('16', '1', '0:0:0:0:0:0:0:1', '2017-12-03');
INSERT INTO `t_login_log` VALUES ('17', '1', '0:0:0:0:0:0:0:1', '2017-12-03');
INSERT INTO `t_login_log` VALUES ('18', '1', '0:0:0:0:0:0:0:1', '2017-12-04');
INSERT INTO `t_login_log` VALUES ('19', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('20', '1', '0:0:0:0:0:0:0:1', '2017-12-04');
INSERT INTO `t_login_log` VALUES ('21', '1', '0:0:0:0:0:0:0:1', '2017-12-04');
INSERT INTO `t_login_log` VALUES ('22', '1', '0:0:0:0:0:0:0:1', '2017-12-04');
INSERT INTO `t_login_log` VALUES ('23', '1', '0:0:0:0:0:0:0:1', '2017-12-04');
INSERT INTO `t_login_log` VALUES ('24', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('25', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('26', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('27', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('28', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('29', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('30', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('31', '1', '0:0:0:0:0:0:0:1', '2017-12-06');
INSERT INTO `t_login_log` VALUES ('32', '1', '0:0:0:0:0:0:0:1', '2017-12-06');
INSERT INTO `t_login_log` VALUES ('33', '1', '0:0:0:0:0:0:0:1', '2017-12-06');
INSERT INTO `t_login_log` VALUES ('34', '1', '0:0:0:0:0:0:0:1', '2017-12-06');
INSERT INTO `t_login_log` VALUES ('35', '1', '0:0:0:0:0:0:0:1', '2017-12-06');
INSERT INTO `t_login_log` VALUES ('36', '1', '0:0:0:0:0:0:0:1', '2017-12-06');
INSERT INTO `t_login_log` VALUES ('37', '1', '0:0:0:0:0:0:0:1', '2017-12-06');
INSERT INTO `t_login_log` VALUES ('38', '1', '0:0:0:0:0:0:0:1', '2017-12-06');
INSERT INTO `t_login_log` VALUES ('39', '1', '0:0:0:0:0:0:0:1', '2017-12-06');
INSERT INTO `t_login_log` VALUES ('40', '1', '0:0:0:0:0:0:0:1', '2017-12-06');
INSERT INTO `t_login_log` VALUES ('41', '1', '0:0:0:0:0:0:0:1', '2017-12-06');
INSERT INTO `t_login_log` VALUES ('42', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('43', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('44', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('45', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('46', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('47', '1', '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_login_log` VALUES ('48', '1', '0:0:0:0:0:0:0:1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('49', '1', '0:0:0:0:0:0:0:1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('50', '1', '0:0:0:0:0:0:0:1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('51', '1', '0:0:0:0:0:0:0:1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('52', '1', '0:0:0:0:0:0:0:1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('53', '1', '0:0:0:0:0:0:0:1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('54', '1', '0:0:0:0:0:0:0:1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('55', '1', '0:0:0:0:0:0:0:1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('56', '1', '0:0:0:0:0:0:0:1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('57', '1', '0:0:0:0:0:0:0:1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('58', '1', '0:0:0:0:0:0:0:1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('59', '1', '0.0.0.1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('60', '1', '0.0.0.1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('61', '1', '0.0.0.1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('62', '1', '0.0.0.1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('63', '1', '0.0.0.1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('64', '1', '0.0.0.1', '2017-12-07');
INSERT INTO `t_login_log` VALUES ('65', '1', '0.0.0.1', '2017-12-20');
INSERT INTO `t_login_log` VALUES ('66', '1', '0.0.0.1', '2017-12-27');
INSERT INTO `t_login_log` VALUES ('67', '0', '0.0.0.1', '2018-06-21');
INSERT INTO `t_login_log` VALUES ('68', '1', '0.0.0.1', '2018-06-21');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) NOT NULL,
  `credits` int(10) DEFAULT NULL,
  `password` varchar(10) NOT NULL,
  `last_visit` date DEFAULT NULL,
  `last_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '1', '70', '1', '2018-06-21', '0.0.0.1');
INSERT INTO `t_user` VALUES ('2', '2', '131', '2', '1970-01-01', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES ('3', '3', '7', '3', '2017-12-03', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES ('4', 'admin', '0', '111', '2017-12-27', '0.0.0.1');
INSERT INTO `t_user` VALUES ('5', '111', '0', '123', '2017-12-27', '0.0.0.1');

-- ----------------------------
-- Table structure for `usertable`
-- ----------------------------
DROP TABLE IF EXISTS `usertable`;
CREATE TABLE `usertable` (
  `avatar` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertable
-- ----------------------------
INSERT INTO `usertable` VALUES ('http://10.0.2.2:8080/spring/pic/pic1.jpg', '1', '1', '12', '0');

-- ----------------------------
-- Table structure for `videotable`
-- ----------------------------
DROP TABLE IF EXISTS `videotable`;
CREATE TABLE `videotable` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pic` varchar(1000) DEFAULT NULL,
  `desc` varchar(1000) DEFAULT NULL,
  `videoUrl` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videotable
-- ----------------------------
INSERT INTO `videotable` VALUES ('0', '123', 'http://10.0.2.2:8080/spring/pic/study0.jpg', '图论的学习', 'http://10.0.2.2:8080/spring/video/1123456.mp4');
INSERT INTO `videotable` VALUES ('1', '123456', 'http://10.0.2.2:8080/spring/pic/study1.jpg', '学习的重要性之数学论述', 'http://10.0.2.2:8080/spring/video/123456.mp4');
INSERT INTO `videotable` VALUES ('2', '123456', 'http://10.0.2.2:8080/spring/pic/study2.jpg', '化妆的重要性', 'http://v.ifeng.com/video_9461946.shtml');
