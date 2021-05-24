-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: toeicmyclass
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorymember`
--

DROP TABLE IF EXISTS `categorymember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categorymember` (
  `categorymemberid` int(11) NOT NULL,
  `categorymembername` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`categorymemberid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorymember`
--

LOCK TABLES `categorymember` WRITE;
/*!40000 ALTER TABLE `categorymember` DISABLE KEYS */;
INSERT INTO `categorymember` VALUES (1,'Người dùng'),(2,'Quản trị');
/*!40000 ALTER TABLE `categorymember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmtexam`
--

DROP TABLE IF EXISTS `cmtexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cmtexam` (
  `cmtexamid` int(11) NOT NULL,
  `cmtexamcontent` text,
  `examid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmtexamid`),
  KEY `Fk_c_le_idx` (`examid`),
  KEY `FK_c_qe_idx` (`memberid`),
  CONSTRAINT `FK_c_qe` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`),
  CONSTRAINT `Fk_c_le` FOREIGN KEY (`examid`) REFERENCES `listexam` (`examid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmtexam`
--

LOCK TABLES `cmtexam` WRITE;
/*!40000 ALTER TABLE `cmtexam` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmtexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmtgrammar`
--

DROP TABLE IF EXISTS `cmtgrammar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cmtgrammar` (
  `cmtgrammarid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtgrammarcontent` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `memberid` int(11) DEFAULT NULL,
  `grammarguidelineid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmtgrammarid`),
  KEY `FK_CMTGRA_GRAGU_idx` (`grammarguidelineid`),
  KEY `FK_CMTGRA_ME_idx` (`memberid`),
  CONSTRAINT `FK_CMTGRA_GRAGU` FOREIGN KEY (`grammarguidelineid`) REFERENCES `grammarguideline` (`grammarguidelineid`),
  CONSTRAINT `FK_CMTGRA_ME` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmtgrammar`
--

LOCK TABLES `cmtgrammar` WRITE;
/*!40000 ALTER TABLE `cmtgrammar` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmtgrammar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmtvocabulary`
--

DROP TABLE IF EXISTS `cmtvocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cmtvocabulary` (
  `cmtvocabularyid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtvocabularycontent` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `memberid` int(11) DEFAULT NULL,
  `vocabularyguidelineid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmtvocabularyid`),
  KEY `FK_CMTVO_MEM_idx` (`memberid`),
  KEY `FK_CMTVO_VOGU_idx` (`vocabularyguidelineid`),
  CONSTRAINT `FK_CMTVO_MEM` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`),
  CONSTRAINT `FK_CMTVO_VOGU` FOREIGN KEY (`vocabularyguidelineid`) REFERENCES `vocabularyguideline` (`vocabularyguidelineid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmtvocabulary`
--

LOCK TABLES `cmtvocabulary` WRITE;
/*!40000 ALTER TABLE `cmtvocabulary` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmtvocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `examquestion` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `quizname` text,
  `op1` varchar(45) DEFAULT NULL,
  `op2` varchar(45) DEFAULT NULL,
  `op3` varchar(45) DEFAULT NULL,
  `op4` varchar(45) DEFAULT NULL,
  `da` varchar(45) DEFAULT NULL,
  `examid` int(11) DEFAULT NULL,
  PRIMARY KEY (`questionid`),
  KEY `FK_em_lexam_idx` (`examid`),
  CONSTRAINT `FK_em_lexam` FOREIGN KEY (`examid`) REFERENCES `listexam` (`examid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'You are old enough to take______for what you have done.','responsible','responsibility','responsibly','irresponsible','1',1),(2,'Tony would have forgotten the appointment if I hadn’t_____ him.','remembered','regarded','reminded','recommended','2',1),(3,'Could you please stop_______so much noise?','make','making','to make','to making','3',1),(4,'He is doing very badly but he tries to_____ appearance.','hold on','stick to','keep up','make out','4',1),(5,'Choose the word which is stressed differently from the rest.','hospital','mischievous','supportive','special','3',2),(6,'Choose the word which is stressed differently from the rest.','family','whenever','obedient',' solution','1',2),(7,'John is ............... only child in his family so his parents love him a lot.','a','an','the','no acticle','1',2);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grammarguideline`
--

DROP TABLE IF EXISTS `grammarguideline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grammarguideline` (
  `grammarguidelineid` int(11) NOT NULL AUTO_INCREMENT,
  `grammarname` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`grammarguidelineid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grammarguideline`
--

LOCK TABLES `grammarguideline` WRITE;
/*!40000 ALTER TABLE `grammarguideline` DISABLE KEYS */;
INSERT INTO `grammarguideline` VALUES (48,'Hướng dẫn 1'),(49,'Hướng dẫn 2'),(52,'Hướng dẫn 3'),(53,'Hướng dẫn 4');
/*!40000 ALTER TABLE `grammarguideline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grammarquestion`
--

DROP TABLE IF EXISTS `grammarquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grammarquestion` (
  `idquesttion` int(11) NOT NULL AUTO_INCREMENT,
  `quizname` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `op1` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `op2` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `op3` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `op4` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `da` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `grammarguidelineid` int(11) NOT NULL,
  PRIMARY KEY (`idquesttion`),
  KEY `FK_GQ_GU_idx` (`grammarguidelineid`),
  CONSTRAINT `FK_GQ_GU` FOREIGN KEY (`grammarguidelineid`) REFERENCES `grammarguideline` (`grammarguidelineid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grammarquestion`
--

LOCK TABLES `grammarquestion` WRITE;
/*!40000 ALTER TABLE `grammarquestion` DISABLE KEYS */;
INSERT INTO `grammarquestion` VALUES (1,'Yesterday I ____________ to see my grandparents.','go','have gone','gone','went','2',48),(2,'Have you ever ____________ to Canada?','being','been','be','havebeen','3',48),(3,'The party _______________ when he arrived.','had ended','ended','was ending','has ended','1',48),(4,'Have you ever ____________ to Canada?','being','been','be','havebeen','2',49);
/*!40000 ALTER TABLE `grammarquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listenexercise`
--

DROP TABLE IF EXISTS `listenexercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listenexercise` (
  `listenexerciseid` int(11) NOT NULL AUTO_INCREMENT,
  `listenexercisename` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `listenexerciseimage` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `checkcauhoi` int(11) DEFAULT NULL,
  PRIMARY KEY (`listenexerciseid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listenexercise`
--

LOCK TABLES `listenexercise` WRITE;
/*!40000 ALTER TABLE `listenexercise` DISABLE KEYS */;
/*!40000 ALTER TABLE `listenexercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listenquestion`
--

DROP TABLE IF EXISTS `listenquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listenquestion` (
  `listenquestionid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `imagename` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `audiomp3` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `audiogg` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `question` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option1` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option2` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option3` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option4` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `correctanswer` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `listenexerciseid` int(11) DEFAULT NULL,
  PRIMARY KEY (`listenquestionid`),
  KEY `FK_LIQU_LIEX_idx` (`listenexerciseid`),
  CONSTRAINT `FK_LIQU_LIEX` FOREIGN KEY (`listenexerciseid`) REFERENCES `listenexercise` (`listenexerciseid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listenquestion`
--

LOCK TABLES `listenquestion` WRITE;
/*!40000 ALTER TABLE `listenquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `listenquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listexam`
--

DROP TABLE IF EXISTS `listexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listexam` (
  `examid` int(11) NOT NULL AUTO_INCREMENT,
  `examname` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`examid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listexam`
--

LOCK TABLES `listexam` WRITE;
/*!40000 ALTER TABLE `listexam` DISABLE KEYS */;
INSERT INTO `listexam` VALUES (1,'Bài thi 1'),(2,'Bài thi 2'),(3,'Bài thi 3'),(4,'Bai thi 4');
/*!40000 ALTER TABLE `listexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `memberid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `membername` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `memberpass` varchar(120) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `categorymemberid` int(11) DEFAULT NULL,
  PRIMARY KEY (`memberid`),
  KEY `FK_MB_CMB_idx` (`categorymemberid`),
  CONSTRAINT `FK_MB_CMB` FOREIGN KEY (`categorymemberid`) REFERENCES `categorymember` (`categorymemberid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (34,'Mạc Trung Tình','tinhdz','$2a$10$L1PqzrJCL6AVEzXPYyoF8e.hsccs1fW5cB6xhAsVXcfyjLuV06nEa',1),(35,'admin','admin','$2a$10$KAsrOybB0k/6.a3cgEnkD.nP8h34Ty2c4VZhLWKsCMrbqk9YZpSy6',2),(36,'sss','aaa','$2a$10$h3qRbZcgr1/xOBxpX6rnsu0d4MhSgTKd34MmD8hR.0RnkqObjXFAS',1),(37,'Mac Trung Tinh','tinh','$2a$10$p8n/yQ0h3Hsx6nggoZ2z2Os2CQvXWWrQ21hgkfqzsIEsggr8YOKJK',1),(38,'MTT','hihi','$2a$10$lFFSXbyusoXQR.MoVJwn6OPZR6ko88MvGDTHe9TeHZj9EmVaL7tdK',1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slidebanner`
--

DROP TABLE IF EXISTS `slidebanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `slidebanner` (
  `slidebannerid` int(11) NOT NULL,
  `slidename` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `slidecontent` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `slideimage` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`slidebannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slidebanner`
--

LOCK TABLES `slidebanner` WRITE;
/*!40000 ALTER TABLE `slidebanner` DISABLE KEYS */;
INSERT INTO `slidebanner` VALUES (1,'Hướng Dẫn Phần Nghe, Đọc Toeic','Chúng tôi cung cấp cho các bạn những kiến thức tốt nhất','slide1.jpg'),(2,'Cung Cấp Dạng Bài Tập Nghe, Đọc','Chúng tôi cung cấp cho các bạn các dạng bài tập hay, bổ ích','slide2.jpg'),(3,'Thi Thử Toeic Online','Sau khi có kiến thức vững vàng, các bạn sẽ được trải nghiệm thi online','slide3.png');
/*!40000 ALTER TABLE `slidebanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabularyguideline`
--

DROP TABLE IF EXISTS `vocabularyguideline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vocabularyguideline` (
  `vocabularyguidelineid` int(11) NOT NULL AUTO_INCREMENT,
  `vocabularyname` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`vocabularyguidelineid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularyguideline`
--

LOCK TABLES `vocabularyguideline` WRITE;
/*!40000 ALTER TABLE `vocabularyguideline` DISABLE KEYS */;
INSERT INTO `vocabularyguideline` VALUES (4,'Hướng dẫn 1'),(5,'Hướng dẫn 2');
/*!40000 ALTER TABLE `vocabularyguideline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabularyquestion`
--

DROP TABLE IF EXISTS `vocabularyquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vocabularyquestion` (
  `vocabularyid` int(11) NOT NULL AUTO_INCREMENT,
  `vocabularyname` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `op1` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `op2` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `op3` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `op4` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `da` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `vocabularyguidelineid` int(11) DEFAULT NULL,
  PRIMARY KEY (`vocabularyid`),
  KEY `FK_VOCO_VOGU_idx` (`vocabularyguidelineid`),
  CONSTRAINT `FK_VOCO_VOGU` FOREIGN KEY (`vocabularyguidelineid`) REFERENCES `vocabularyguideline` (`vocabularyguidelineid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularyquestion`
--

LOCK TABLES `vocabularyquestion` WRITE;
/*!40000 ALTER TABLE `vocabularyquestion` DISABLE KEYS */;
INSERT INTO `vocabularyquestion` VALUES (1,'I am sorry that I can\'t _______ your invitation.','take','except','agree','accept','2',4),(2,'If you _____ money to mine, we shall have enough.','add','combine','unite','bank','3',4);
/*!40000 ALTER TABLE `vocabularyquestion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-24  9:37:52
