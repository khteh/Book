-- MySQL dump 10.13  Distrib 8.0.15, for Linux (x86_64)
--
-- Host: localhost    Database: book
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (208,'Kok How','Teh',NULL,NULL);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `isbn` varchar(45) DEFAULT NULL,
  `page_count` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `authorID_idx` (`author_id`),
  CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (209,'My First GrapQL Book','1234567890',500,208);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiries`
--

DROP TABLE IF EXISTS `enquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiries`
--

LOCK TABLES `enquiries` WRITE;
/*!40000 ALTER TABLE `enquiries` DISABLE KEYS */;
INSERT INTO `enquiries` VALUES (111,'My Enquiry'),(117,'My Enquiry'),(120,'My Enquiry'),(123,'My Enquiry'),(129,'My Enquiry'),(130,'My Enquiry'),(131,'My Enquiry'),(132,'My Enquiry');
/*!40000 ALTER TABLE `enquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (220);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `states` (
  `id` varchar(255) NOT NULL,
  `name` text,
  `enquiry_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enquiryId_idx` (`enquiry_id`),
  CONSTRAINT `enquiry_id` FOREIGN KEY (`enquiry_id`) REFERENCES `enquiries` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('State 111','Enquiry 111',111),('State 117','State for enquiry 117',117),('State 120','State for enquiry 120',120),('State 123','State for enquiry 123',123),('State 129','State for enquiry 129',129),('State 130','State for enquiry 130',130),('State 131','State for enquiry 131',131),('State 132','State for enquiry 132',132),('TEMP','My State',NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `times`
--

DROP TABLE IF EXISTS `times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times`
--

LOCK TABLES `times` WRITE;
/*!40000 ALTER TABLE `times` DISABLE KEYS */;
INSERT INTO `times` VALUES (1,NULL),(2,NULL),(4,NULL),(5,'2019-01-09 09:57:30'),(6,NULL),(7,'2019-01-10 02:08:01'),(8,NULL),(9,'2019-01-10 02:12:00'),(10,NULL),(11,'2019-01-11 09:14:54'),(12,NULL),(13,'2019-01-14 02:44:09'),(14,NULL),(15,'2019-01-14 02:44:39'),(16,NULL),(17,'2019-01-14 02:45:19'),(18,NULL),(19,'2019-01-14 03:15:31'),(20,NULL),(21,'2019-01-14 03:19:29'),(22,NULL),(23,'2019-01-14 03:21:30'),(24,NULL),(25,'2019-01-14 03:52:57'),(26,NULL),(27,'2019-01-14 03:57:50'),(28,NULL),(29,'2019-01-14 03:59:48'),(30,NULL),(31,'2019-01-14 04:02:28'),(32,NULL),(33,'2019-01-14 05:56:22'),(34,NULL),(35,'2019-01-14 05:58:02'),(36,NULL),(37,'2019-01-14 05:58:48'),(38,NULL),(39,'2019-01-14 06:14:35'),(40,NULL),(41,'2019-01-14 06:25:33'),(42,NULL),(43,'2019-01-14 06:29:22'),(44,NULL),(45,'2019-01-14 06:50:29'),(46,NULL),(47,'2019-01-14 07:39:14'),(48,NULL),(49,'2019-01-14 07:45:30'),(50,NULL),(51,'2019-01-24 03:48:50'),(52,NULL),(53,'2019-01-24 03:52:16'),(54,NULL),(55,'2019-01-24 03:54:02'),(56,NULL),(57,'2019-01-24 03:54:55'),(58,NULL),(59,'2019-01-24 06:27:38'),(61,NULL),(62,'2019-01-24 06:30:22'),(64,NULL),(65,'2019-01-24 06:31:39'),(67,NULL),(68,'2019-01-24 06:32:34'),(70,NULL),(71,'2019-01-24 06:35:30'),(73,NULL),(74,'2019-01-24 06:41:27'),(76,NULL),(77,'2019-01-24 06:43:12'),(79,NULL),(80,'2019-01-24 06:47:26'),(82,NULL),(83,'2019-01-24 06:52:10'),(85,NULL),(86,'2019-01-24 06:53:32'),(88,NULL),(89,'2019-01-24 06:54:15'),(91,NULL),(92,'2019-01-24 06:57:04'),(94,NULL),(95,'2019-01-24 07:03:06'),(97,NULL),(98,'2019-01-24 07:05:18'),(100,NULL),(101,'2019-01-24 07:06:04'),(103,NULL),(104,'2019-01-24 07:07:36'),(106,NULL),(107,'2019-01-24 07:11:58'),(109,NULL),(110,'2019-01-24 07:14:07'),(112,NULL),(113,'2019-01-24 07:16:51'),(115,NULL),(116,'2019-01-24 07:18:43'),(118,NULL),(119,'2019-01-24 07:20:55'),(121,NULL),(122,'2019-01-24 07:23:13'),(124,NULL),(125,'2019-01-24 07:23:25'),(127,NULL),(128,'2019-01-24 07:29:08'),(130,NULL),(131,'2019-01-24 07:32:52'),(132,NULL),(133,'2019-01-24 08:08:37'),(134,NULL),(135,'2019-01-24 08:09:35'),(138,NULL),(139,'2019-03-01 04:13:45'),(140,NULL),(141,'2019-03-01 04:15:00'),(142,NULL),(143,'2019-03-01 06:29:36'),(144,NULL),(145,'2019-03-01 06:35:20'),(146,NULL),(147,'2019-03-01 07:50:41'),(148,NULL),(149,'2019-03-01 07:53:00'),(150,NULL),(151,'2019-03-01 07:56:22'),(152,NULL),(153,'2019-03-01 08:16:24'),(154,NULL),(155,'2019-03-01 08:17:13'),(156,NULL),(157,'2019-03-01 08:18:08'),(158,NULL),(159,'2019-03-01 08:26:04'),(160,NULL),(161,'2019-03-01 08:29:01'),(162,NULL),(163,'2019-03-01 08:30:32'),(164,NULL),(165,'2019-03-01 08:40:02'),(166,NULL),(167,'2019-03-01 08:43:20'),(168,NULL),(169,'2019-03-01 08:57:51'),(170,NULL),(171,'2019-03-01 09:03:18'),(172,NULL),(173,'2019-03-01 13:23:45'),(174,NULL),(175,'2019-03-01 13:27:44'),(176,NULL),(177,'2019-03-02 11:48:56'),(178,NULL),(179,'2019-03-02 11:49:52'),(180,NULL),(181,'2019-03-02 11:58:22'),(182,NULL),(183,'2019-03-02 12:01:07'),(184,NULL),(185,'2019-03-02 12:07:55'),(210,NULL),(211,'2019-03-18 07:58:15'),(212,NULL),(213,'2019-03-18 07:59:20'),(214,NULL),(215,'2019-03-18 08:02:31'),(216,NULL),(217,'2019-03-18 09:25:22'),(218,NULL),(219,'2019-03-18 09:25:49');
/*!40000 ALTER TABLE `times` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-21 15:21:55
