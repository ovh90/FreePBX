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
-- Table structure for table `superfecta_to_incoming`
--

DROP TABLE IF EXISTS `superfecta_to_incoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `superfecta_to_incoming` (
  `superfecta_to_incoming_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `extension` varchar(50) DEFAULT NULL,
  `cidnum` varchar(50) DEFAULT NULL,
  `scheme` varchar(50) NOT NULL,
  PRIMARY KEY (`superfecta_to_incoming_id`),
  UNIQUE KEY `extn` (`extension`,`cidnum`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superfecta_to_incoming`
--

LOCK TABLES `superfecta_to_incoming` WRITE;
/*!40000 ALTER TABLE `superfecta_to_incoming` DISABLE KEYS */;
INSERT INTO `superfecta_to_incoming` VALUES
(24,'21','','ALL|ALL'),
(25,'22','','ALL|ALL'),
(26,'23','','ALL|ALL'),
(27,'28','','ALL|ALL');
/*!40000 ALTER TABLE `superfecta_to_incoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superfectaconfig`
--

DROP TABLE IF EXISTS `superfectaconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `superfectaconfig` (
  `source` varchar(150) NOT NULL,
  `field` varchar(150) NOT NULL,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`source`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superfectaconfig`
--

LOCK TABLES `superfectaconfig` WRITE;
/*!40000 ALTER TABLE `superfectaconfig` DISABLE KEYS */;
INSERT INTO `superfectaconfig` VALUES
('base_Default','Caller_Id_Max_Length','60'),
('base_Default','Character_Encodings','ISO-8859-1'),
('base_Default','Curl_Timeout','3'),
('base_Default','order','0'),
('base_Default','sources','Asterisk_Phonebook,Superfecta_Cache,Trunk_Provided,Telco_Data'),
('base_Default','SPAM_Text','SPAM'),
('base_Default','Strip_Accent_Characters','Y'),
('PhoneSpamFilter','SPAM_Threshold','5'),
('Superfecta_Cache','Cache_Timeout','120'),
('Trunk_Provided','Ignore_Keywords','unknown, wireless, toll free, unlisted');
/*!40000 ALTER TABLE `superfectaconfig` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-12  5:14:47
