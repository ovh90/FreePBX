/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: asterisk
-- ------------------------------------------------------
-- Server version	10.11.14-MariaDB-0+deb12u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `timeconditions`
--

DROP TABLE IF EXISTS `timeconditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeconditions` (
  `timeconditions_id` int(11) NOT NULL AUTO_INCREMENT,
  `displayname` varchar(50) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `truegoto` varchar(50) DEFAULT NULL,
  `falsegoto` varchar(50) DEFAULT NULL,
  `deptname` varchar(50) DEFAULT NULL,
  `generate_hint` tinyint(1) DEFAULT 0,
  `invert_hint` tinyint(1) DEFAULT 0,
  `fcc_password` varchar(20) DEFAULT '',
  `priority` varchar(50) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `mode` varchar(20) DEFAULT 'time-group',
  `calendar_id` varchar(150) DEFAULT NULL,
  `calendar_group_id` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`timeconditions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeconditions`
--

LOCK TABLES `timeconditions` WRITE;
/*!40000 ALTER TABLE `timeconditions` DISABLE KEYS */;
INSERT INTO `timeconditions` VALUES
(1,'Holiday-Mode',1,'app-announcement-2,s,1','timeconditions,2,1','',1,1,'28',NULL,'Africa/Cairo','time-group','',''),
(2,'Sales-WorkTime',2,'ivr-1,s,1','ext-local,vms502,1','',0,0,'',NULL,'Africa/Cairo','time-group','',''),
(3,'FileTeam-WorkTime',3,'ivr-4,s,1','app-announcement-5,s,1','',0,0,'',NULL,'Africa/Cairo','time-group','','');
/*!40000 ALTER TABLE `timeconditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timegroups_groups`
--

DROP TABLE IF EXISTS `timegroups_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `timegroups_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `display` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timegroups_groups`
--

LOCK TABLES `timegroups_groups` WRITE;
/*!40000 ALTER TABLE `timegroups_groups` DISABLE KEYS */;
INSERT INTO `timegroups_groups` VALUES
(3,'FileTeam-WorkTime'),
(1,'Holiday'),
(2,'Sales-WorkTime');
/*!40000 ALTER TABLE `timegroups_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timegroups_details`
--

DROP TABLE IF EXISTS `timegroups_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `timegroups_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timegroupid` int(11) NOT NULL DEFAULT 0,
  `time` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timegroups_details`
--

LOCK TABLES `timegroups_details` WRITE;
/*!40000 ALTER TABLE `timegroups_details` DISABLE KEYS */;
INSERT INTO `timegroups_details` VALUES
(1,2,'08:10-22:59|sun-sat|1-31|jan-dec'),
(2,3,'08:00-16:59|sun-thu|1-31|jan-dec');
/*!40000 ALTER TABLE `timegroups_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-12  5:06:03
