/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : graduationdesigntopicselectionsystem

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-12-28 19:14:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chooseinftable
-- ----------------------------
DROP TABLE IF EXISTS `chooseinftable`;
CREATE TABLE `chooseinftable` (
  `chooseID` int(11) NOT NULL AUTO_INCREMENT,
  `collegeID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `isChoose` tinyint(1) NOT NULL,
  PRIMARY KEY (`chooseID`),
  KEY `CstudentID` (`studentID`),
  KEY `CteacherID` (`teacherID`),
  KEY `CcollegeID` (`collegeID`),
  KEY `CsubjectID` (`subjectID`),
  CONSTRAINT `CcollegeID` FOREIGN KEY (`collegeID`) REFERENCES `collegetable` (`collegeID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `CstudentID` FOREIGN KEY (`studentID`) REFERENCES `studentinftable` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CsubjectID` FOREIGN KEY (`subjectID`) REFERENCES `subjecttable` (`subjectID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CteacherID` FOREIGN KEY (`teacherID`) REFERENCES `teacherinftable` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chooseinftable
-- ----------------------------
INSERT INTO `chooseinftable` VALUES ('1', '3', '1', '1', '4', '1');
INSERT INTO `chooseinftable` VALUES ('2', '3', '1', '1', '4', '1');

-- ----------------------------
-- Table structure for collegetable
-- ----------------------------
DROP TABLE IF EXISTS `collegetable`;
CREATE TABLE `collegetable` (
  `collegeID` int(11) NOT NULL AUTO_INCREMENT,
  `collegeName` varchar(255) NOT NULL,
  PRIMARY KEY (`collegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collegetable
-- ----------------------------
INSERT INTO `collegetable` VALUES ('1', '音乐学院');
INSERT INTO `collegetable` VALUES ('2', '计算机学院');
INSERT INTO `collegetable` VALUES ('3', '美术学院');

-- ----------------------------
-- Table structure for gradetable
-- ----------------------------
DROP TABLE IF EXISTS `gradetable`;
CREATE TABLE `gradetable` (
  `gradeID` int(11) NOT NULL AUTO_INCREMENT,
  `gradeName` varchar(255) NOT NULL,
  PRIMARY KEY (`gradeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gradetable
-- ----------------------------
INSERT INTO `gradetable` VALUES ('1', '2015');
INSERT INTO `gradetable` VALUES ('2', '2016');
INSERT INTO `gradetable` VALUES ('3', '2017');
INSERT INTO `gradetable` VALUES ('4', '2018');
INSERT INTO `gradetable` VALUES ('5', '2019');

-- ----------------------------
-- Table structure for studentinftable
-- ----------------------------
DROP TABLE IF EXISTS `studentinftable`;
CREATE TABLE `studentinftable` (
  `studentID` int(11) NOT NULL AUTO_INCREMENT,
  `studentName` varchar(20) NOT NULL,
  `studentSex` varchar(4) NOT NULL,
  `collegeID` int(11) NOT NULL,
  `gradeID` int(11) NOT NULL,
  `studentEmail` varchar(100) NOT NULL,
  `studentTelephone` varchar(20) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`studentID`),
  KEY `userID` (`userID`),
  KEY `collegeID` (`collegeID`),
  KEY `gradeID` (`gradeID`),
  CONSTRAINT `collegeID` FOREIGN KEY (`collegeID`) REFERENCES `collegetable` (`collegeID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `gradeID` FOREIGN KEY (`gradeID`) REFERENCES `gradetable` (`gradeID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `userID` FOREIGN KEY (`userID`) REFERENCES `usertable` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentinftable
-- ----------------------------
INSERT INTO `studentinftable` VALUES ('1', '222', '男', '3', '4', '111@qq.com', '12312312', '7');

-- ----------------------------
-- Table structure for subjecttable
-- ----------------------------
DROP TABLE IF EXISTS `subjecttable`;
CREATE TABLE `subjecttable` (
  `subjectID` int(11) NOT NULL AUTO_INCREMENT,
  `subjectName` varchar(50) NOT NULL,
  `subContext` varchar(255) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `collegeID` int(11) NOT NULL,
  PRIMARY KEY (`subjectID`),
  KEY `SteacherID` (`teacherID`),
  KEY `ScollegeID` (`collegeID`),
  CONSTRAINT `ScollegeID` FOREIGN KEY (`collegeID`) REFERENCES `collegetable` (`collegeID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `SteacherID` FOREIGN KEY (`teacherID`) REFERENCES `teacherinftable` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subjecttable
-- ----------------------------
INSERT INTO `subjecttable` VALUES ('4', '111', '222', '1', '3');

-- ----------------------------
-- Table structure for teacherinftable
-- ----------------------------
DROP TABLE IF EXISTS `teacherinftable`;
CREATE TABLE `teacherinftable` (
  `teacherID` int(11) NOT NULL AUTO_INCREMENT,
  `teacherName` varchar(20) NOT NULL,
  `teacherSex` varchar(4) NOT NULL,
  `collegeID` int(11) NOT NULL,
  `teacherEmail` varchar(100) NOT NULL,
  `teacherTelephone` varchar(20) NOT NULL,
  `teacherField` varchar(255) NOT NULL,
  `teacherPost` varchar(20) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`teacherID`),
  KEY `TuserID` (`userID`),
  KEY `TcollegeID` (`collegeID`),
  CONSTRAINT `TcollegeID` FOREIGN KEY (`collegeID`) REFERENCES `collegetable` (`collegeID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `TuserID` FOREIGN KEY (`userID`) REFERENCES `usertable` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacherinftable
-- ----------------------------
INSERT INTO `teacherinftable` VALUES ('1', 'li', '男', '3', '123@qq.com', '1111111', '1111', '1111', '6');

-- ----------------------------
-- Table structure for usertable
-- ----------------------------
DROP TABLE IF EXISTS `usertable`;
CREATE TABLE `usertable` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `userstate` tinyint(4) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertable
-- ----------------------------
INSERT INTO `usertable` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Manager', '1');
INSERT INTO `usertable` VALUES ('6', 'li', 'e10adc3949ba59abbe56e057f20f883e', 'Teacher', '1');
INSERT INTO `usertable` VALUES ('7', 'liu', 'e10adc3949ba59abbe56e057f20f883e', 'Student', '1');

-- ----------------------------
-- View structure for subjectview
-- ----------------------------
DROP VIEW IF EXISTS `subjectview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `subjectview` AS select `subjecttable`.`subjectID` AS `subjectID`,`subjecttable`.`subjectName` AS `subjectName`,`subjecttable`.`subContext` AS `subContext`,`teacherinftable`.`teacherName` AS `teacherName`,`collegetable`.`collegeName` AS `collegeName` from ((`subjecttable` join `teacherinftable` on((`subjecttable`.`teacherID` = `teacherinftable`.`teacherID`))) join `collegetable` on(((`subjecttable`.`collegeID` = `collegetable`.`collegeID`) and (`teacherinftable`.`collegeID` = `collegetable`.`collegeID`)))) ;
