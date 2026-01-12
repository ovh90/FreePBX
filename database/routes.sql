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
-- Table structure for table `incoming`
--

DROP TABLE IF EXISTS `incoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `incoming` (
  `cidnum` varchar(50) DEFAULT NULL,
  `extension` varchar(50) NOT NULL,
  `destination` varchar(60) DEFAULT NULL,
  `privacyman` tinyint(1) DEFAULT NULL,
  `alertinfo` varchar(255) DEFAULT NULL,
  `ringing` varchar(20) DEFAULT NULL,
  `fanswer` varchar(20) DEFAULT NULL,
  `mohclass` varchar(80) NOT NULL DEFAULT 'default',
  `description` varchar(100) DEFAULT NULL,
  `grppre` varchar(80) DEFAULT NULL,
  `delay_answer` int(11) DEFAULT NULL,
  `pricid` varchar(20) DEFAULT NULL,
  `pmmaxretries` varchar(2) DEFAULT NULL,
  `pmminlength` varchar(2) DEFAULT NULL,
  `reversal` varchar(10) DEFAULT NULL,
  `rvolume` varchar(2) DEFAULT '',
  `indication_zone` varchar(20) DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incoming`
--

LOCK TABLES `incoming` WRITE;
/*!40000 ALTER TABLE `incoming` DISABLE KEYS */;
INSERT INTO `incoming` VALUES
('','','timeconditions,1,1',0,'','','','default','Main-Inbound','',0,'','3','10','','','default');
/*!40000 ALTER TABLE `incoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_routes`
--

DROP TABLE IF EXISTS `outbound_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_routes` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `outcid` varchar(255) DEFAULT NULL,
  `outcid_mode` varchar(20) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `emergency_route` varchar(4) DEFAULT NULL,
  `intracompany_route` varchar(4) DEFAULT NULL,
  `mohclass` varchar(80) DEFAULT NULL,
  `time_group_id` int(11) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL,
  `time_mode` varchar(20) DEFAULT '',
  `calendar_id` varchar(255) DEFAULT NULL,
  `calendar_group_id` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `notification_on` varchar(255) DEFAULT 'call',
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_routes`
--

LOCK TABLES `outbound_routes` WRITE;
/*!40000 ALTER TABLE `outbound_routes` DISABLE KEYS */;
INSERT INTO `outbound_routes` VALUES
(1,'Egypt-Mobile','','','','','','default',0,'','',NULL,NULL,'default','call'),
(2,'Egypt-Landline','','','','','','default',0,'','',NULL,NULL,'default','call'),
(3,'International','','','','','','default',0,'','',NULL,NULL,'default','call');
/*!40000 ALTER TABLE `outbound_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_route_patterns`
--

DROP TABLE IF EXISTS `outbound_route_patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_route_patterns` (
  `route_id` int(11) NOT NULL,
  `match_pattern_prefix` varchar(60) NOT NULL DEFAULT '',
  `match_pattern_pass` varchar(60) NOT NULL DEFAULT '',
  `match_cid` varchar(60) NOT NULL DEFAULT '',
  `prepend_digits` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`route_id`,`match_pattern_prefix`,`match_pattern_pass`,`match_cid`,`prepend_digits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_route_patterns`
--

LOCK TABLES `outbound_route_patterns` WRITE;
/*!40000 ALTER TABLE `outbound_route_patterns` DISABLE KEYS */;
INSERT INTO `outbound_route_patterns` VALUES
(1,'','01XXXXXXXXX','',''),
(1,'','2XXXXXXXXXX','',''),
(2,'','0XXXXXXXXX','',''),
(3,'','00.','','');
/*!40000 ALTER TABLE `outbound_route_patterns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_route_trunks`
--

DROP TABLE IF EXISTS `outbound_route_trunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_route_trunks` (
  `route_id` int(11) NOT NULL,
  `trunk_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  PRIMARY KEY (`route_id`,`trunk_id`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_route_trunks`
--

LOCK TABLES `outbound_route_trunks` WRITE;
/*!40000 ALTER TABLE `outbound_route_trunks` DISABLE KEYS */;
INSERT INTO `outbound_route_trunks` VALUES
(1,2,0),
(2,1,0),
(3,3,0);
/*!40000 ALTER TABLE `outbound_route_trunks` ENABLE KEYS */;
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
