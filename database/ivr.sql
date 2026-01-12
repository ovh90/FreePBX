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
-- Table structure for table `ivr_details`
--

DROP TABLE IF EXISTS `ivr_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ivr_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `announcement` int(11) DEFAULT NULL,
  `directdial` varchar(50) DEFAULT NULL,
  `invalid_loops` varchar(10) DEFAULT NULL,
  `invalid_retry_recording` varchar(25) DEFAULT NULL,
  `invalid_destination` varchar(50) DEFAULT NULL,
  `timeout_enabled` varchar(50) DEFAULT NULL,
  `invalid_recording` varchar(25) DEFAULT NULL,
  `retvm` varchar(8) DEFAULT NULL,
  `timeout_time` int(11) DEFAULT NULL,
  `timeout_recording` varchar(25) DEFAULT NULL,
  `timeout_retry_recording` varchar(25) DEFAULT NULL,
  `timeout_destination` varchar(50) DEFAULT NULL,
  `timeout_loops` varchar(10) DEFAULT NULL,
  `timeout_append_announce` tinyint(1) NOT NULL DEFAULT 1,
  `invalid_append_announce` tinyint(1) NOT NULL DEFAULT 1,
  `timeout_ivr_ret` tinyint(1) NOT NULL DEFAULT 0,
  `invalid_ivr_ret` tinyint(1) NOT NULL DEFAULT 0,
  `alertinfo` varchar(150) DEFAULT NULL,
  `rvolume` varchar(2) NOT NULL DEFAULT '',
  `strict_dial_timeout` tinyint(1) NOT NULL DEFAULT 2,
  `accept_pound_key` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ivr_details`
--

LOCK TABLES `ivr_details` WRITE;
/*!40000 ALTER TABLE `ivr_details` DISABLE KEYS */;
INSERT INTO `ivr_details` VALUES
(1,'Recording-Consent','Inbound call recording consent',1,'Disabled','2','default','app-blackhole,hangup,1',NULL,'default','',10,'default','default','app-blackhole,hangup,1','3',0,0,0,0,'','0',0,1),
(2,'Main-Menu-Mobile','3-option menu for GSM/SIM callers',4,'ext-local','2','default','ext-group,2000,1',NULL,'default','',10,'default','default','ext-group,2000,1','3',0,0,0,0,'','0',0,1),
(3,'Main-Menu-PSTN','4-option menu for landline callers',3,'ext-local','2','default','ext-group,2000,1',NULL,'default','',10,'default','default','ext-group,2000,1','3',0,0,0,0,'','0',0,1),
(4,'File-Team-Entry','Enter file team extension number',6,'ext-local','2','default','ext-group,2000,1',NULL,'default','',10,'default','default','ext-group,2000,1','3',0,0,0,0,'','0',0,1);
/*!40000 ALTER TABLE `ivr_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ivr_entries`
--

DROP TABLE IF EXISTS `ivr_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ivr_entries` (
  `ivr_id` int(11) NOT NULL,
  `selection` varchar(30) DEFAULT NULL,
  `dest` varchar(200) DEFAULT NULL,
  `ivr_ret` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ivr_entries`
--

LOCK TABLES `ivr_entries` WRITE;
/*!40000 ALTER TABLE `ivr_entries` DISABLE KEYS */;
INSERT INTO `ivr_entries` VALUES
(1,'1','ivr-3,s,1',0),
(1,'2','app-blackhole,hangup,1',0),
(2,'1','ext-group,2000,1',0),
(2,'3','ext-local,vms505,1',0),
(2,'2','timeconditions,3,1',0),
(3,'1','ext-group,2000,1',0),
(3,'3','ext-local,vms505,1',0),
(3,'2','timeconditions,3,1',0);
/*!40000 ALTER TABLE `ivr_entries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-12  3:49:12
