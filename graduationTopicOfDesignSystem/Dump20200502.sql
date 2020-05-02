-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: gtods
-- ------------------------------------------------------
-- Server version	5.7.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chooseinftable`
--

DROP TABLE IF EXISTS `chooseinftable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chooseinftable`
--

LOCK TABLES `chooseinftable` WRITE;
/*!40000 ALTER TABLE `chooseinftable` DISABLE KEYS */;
INSERT INTO `chooseinftable` VALUES (4,3,1,1,4,1),(5,3,1,1,4,0);
/*!40000 ALTER TABLE `chooseinftable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collegetable`
--

DROP TABLE IF EXISTS `collegetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collegetable` (
  `collegeID` int(11) NOT NULL AUTO_INCREMENT,
  `collegeName` varchar(255) NOT NULL,
  PRIMARY KEY (`collegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collegetable`
--

LOCK TABLES `collegetable` WRITE;
/*!40000 ALTER TABLE `collegetable` DISABLE KEYS */;
INSERT INTO `collegetable` VALUES (1,'music college'),(2,'cs college'),(3,'art college'),(4,'ul');
/*!40000 ALTER TABLE `collegetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradetable`
--

DROP TABLE IF EXISTS `gradetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gradetable` (
  `gradeID` int(11) NOT NULL AUTO_INCREMENT,
  `gradeName` varchar(255) NOT NULL,
  PRIMARY KEY (`gradeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradetable`
--

LOCK TABLES `gradetable` WRITE;
/*!40000 ALTER TABLE `gradetable` DISABLE KEYS */;
INSERT INTO `gradetable` VALUES (1,'2015'),(2,'2016'),(3,'2017'),(4,'2018'),(5,'2019');
/*!40000 ALTER TABLE `gradetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentinftable`
--

DROP TABLE IF EXISTS `studentinftable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentinftable` (
  `studentID` int(11) NOT NULL AUTO_INCREMENT,
  `studentName` varchar(20) NOT NULL,
  `studentSex` varchar(20) NOT NULL,
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentinftable`
--

LOCK TABLES `studentinftable` WRITE;
/*!40000 ALTER TABLE `studentinftable` DISABLE KEYS */;
INSERT INTO `studentinftable` VALUES (1,'222','female',3,4,'111@qq.com','12312312',7);
/*!40000 ALTER TABLE `studentinftable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjecttable`
--

DROP TABLE IF EXISTS `subjecttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjecttable`
--

LOCK TABLES `subjecttable` WRITE;
/*!40000 ALTER TABLE `subjecttable` DISABLE KEYS */;
INSERT INTO `subjecttable` VALUES (4,'111','222',1,3);
/*!40000 ALTER TABLE `subjecttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `subjectview`
--

DROP TABLE IF EXISTS `subjectview`;
/*!50001 DROP VIEW IF EXISTS `subjectview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `subjectview` AS SELECT 
 1 AS `subjectID`,
 1 AS `subjectName`,
 1 AS `subContext`,
 1 AS `teacherName`,
 1 AS `collegeName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `teacherinftable`
--

DROP TABLE IF EXISTS `teacherinftable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacherinftable` (
  `teacherID` int(11) NOT NULL AUTO_INCREMENT,
  `teacherName` varchar(20) NOT NULL,
  `teacherSex` varchar(20) NOT NULL,
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherinftable`
--

LOCK TABLES `teacherinftable` WRITE;
/*!40000 ALTER TABLE `teacherinftable` DISABLE KEYS */;
INSERT INTO `teacherinftable` VALUES (1,'li','female',3,'123@qq.com','1111111','1111','1111',6);
/*!40000 ALTER TABLE `teacherinftable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertable` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `userstate` tinyint(4) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','Manager',1),(6,'li','e10adc3949ba59abbe56e057f20f883e','Teacher',1),(7,'liu','e10adc3949ba59abbe56e057f20f883e','Student',1);
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `subjectview`
--

/*!50001 DROP VIEW IF EXISTS `subjectview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `subjectview` AS select `subjecttable`.`subjectID` AS `subjectID`,`subjecttable`.`subjectName` AS `subjectName`,`subjecttable`.`subContext` AS `subContext`,`teacherinftable`.`teacherName` AS `teacherName`,`collegetable`.`collegeName` AS `collegeName` from ((`subjecttable` join `teacherinftable` on((`subjecttable`.`teacherID` = `teacherinftable`.`teacherID`))) join `collegetable` on(((`subjecttable`.`collegeID` = `collegetable`.`collegeID`) and (`teacherinftable`.`collegeID` = `collegetable`.`collegeID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-02 14:31:06
