-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: tp
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `logininfo`
--

DROP TABLE IF EXISTS `logininfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logininfo` (
  `machineId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `lastLogin` datetime NOT NULL,
  PRIMARY KEY (`machineId`,`userId`,`lastLogin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logininfo`
--

LOCK TABLES `logininfo` WRITE;
/*!40000 ALTER TABLE `logininfo` DISABLE KEYS */;
INSERT INTO `logininfo` VALUES (1,1,'2018-05-05 14:54:14'),(1,10,'2018-05-05 14:55:23'),(2,2,'2018-05-05 14:54:25'),(2,11,'2018-05-05 14:55:27'),(3,3,'2018-05-05 14:54:29'),(3,12,'2018-05-05 14:55:31'),(4,5,'2018-05-05 14:54:39'),(4,13,'2018-05-05 14:55:35'),(5,4,'2018-05-05 14:54:34'),(5,14,'2018-05-05 14:55:39'),(10,6,'2018-05-05 14:54:47'),(10,15,'2018-05-05 14:55:50'),(11,7,'2018-05-05 14:54:56'),(11,16,'2018-05-05 14:55:54'),(12,8,'2018-05-05 14:55:04'),(12,17,'2018-05-05 14:56:03'),(13,9,'2018-05-05 14:55:12'),(13,18,'2018-05-05 14:56:10');
/*!40000 ALTER TABLE `logininfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `machineId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `severityId` int(11) NOT NULL,
  `logMessage` varchar(256) NOT NULL,
  PRIMARY KEY (`machineId`,`userId`,`time`,`severityId`,`logMessage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,3,'2018-04-29 00:23:45',1,'Downloaded Virus'),(1,6,'2018-04-29 23:38:41',5,'Opened Firefox browser'),(2,2,'2018-04-29 23:37:44',4,'Activated cmd.exe'),(2,4,'2018-04-29 19:48:47',3,'Downloaded exe file'),(3,5,'2018-04-29 23:27:15',5,'Activated Calculator'),(4,7,'2018-04-29 00:24:18',4,'Deleted chrome browser'),(4,8,'2018-04-29 23:39:59',1,'Activated unknown executable file'),(5,9,'2018-04-29 23:28:07',5,'Activated Excel'),(6,10,'2018-05-05 14:44:34',5,'Restarted machine'),(7,11,'2018-05-05 14:46:11',3,'Unknown process \"asd\" is running'),(8,12,'2018-05-05 14:49:50',4,'User has opened task manager'),(9,13,'2018-05-05 14:51:41',5,'User has logged off');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(30) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `mac` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `os` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machines`
--

LOCK TABLES `machines` WRITE;
/*!40000 ALTER TABLE `machines` DISABLE KEYS */;
INSERT INTO `machines` VALUES (1,'Machine1','192.168.1.1','00-50-56-ef-3e-db',2,1),(2,'Machine2','192.168.1.2','01-00-5e-00-00-02',1,2),(3,'Machine3','192.168.1.3','00-50-56-f4-d9-65',3,2),(4,'Machine4','192.168.1.4','00-50-52-d2-f8-ca',4,2),(6,'Security Machine','192.168.1.5','00-52-3d-4f-5a-22',2,1),(7,'Gateway Machine','192.168.1.254','0a-13-4d-4c-5a-25',2,2),(8,'Machine5','192.168.1.6','00-22-33-44-55-11',1,2),(10,'Machine6','192.168.1.10','47-A9-2F-68-16-A5',1,2),(11,'Machine7','192.168.1.11','9A-A0-D2-B2-81-2D',3,1),(12,'Machine8','192.168.1.12','60-ED-C0-B1-FA-FD',4,2),(13,'Machine9','192.168.1.13','B6-E1-6F-B2-14-28',4,1),(14,'Machine10','192.168.1.14','39-AE-DA-39-47-2D',1,2);
/*!40000 ALTER TABLE `machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os`
--

DROP TABLE IF EXISTS `os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os`
--

LOCK TABLES `os` WRITE;
/*!40000 ALTER TABLE `os` DISABLE KEYS */;
INSERT INTO `os` VALUES (1,'Windows'),(2,'Linux');
/*!40000 ALTER TABLE `os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `severities`
--

DROP TABLE IF EXISTS `severities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `severities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `severities`
--

LOCK TABLES `severities` WRITE;
/*!40000 ALTER TABLE `severities` DISABLE KEYS */;
INSERT INTO `severities` VALUES (1,'Critical'),(2,'High'),(3,'Medium'),(4,'Low'),(5,'Info');
/*!40000 ALTER TABLE `severities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'Down'),(2,'Protected'),(3,'Up'),(4,'Maintenance');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'amit','turge91@gmail.com'),(2,'eilon','eilonram3491@gmail.com'),(3,'gilad','gilad215@gmail.com'),(4,'paz','Paz-121@hotmail.com'),(5,'sharon','sher.gueta93@gmail.com'),(6,'netzer','scipioenterprises@gmail.com'),(7,'asaf','asaf@trulyprotect.com'),(8,'shmulik','shmulik@gmail.com'),(9,'yossi','yossi@gmail.com'),(10,'michael','michael@gmail.com'),(11,'dima','dima@gmail.com'),(12,'gal','gal@gmail.com'),(13,'dor','dor@gmail.com'),(14,'adir','adir@gmail.com'),(15,'noy','noy@gmail.com'),(16,'koral','koral@gmail.com'),(17,'yoav','yoav@gmail.com'),(18,'ben','ben@gmail.com'),(19,'avi','avi@gmail.com'),(20,'marshall','eminem@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-05 15:16:09
