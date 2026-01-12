/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: egypt_asterisk_snapshot
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
-- Table structure for table `restapi_general`
--

DROP TABLE IF EXISTS `restapi_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `restapi_general` (
  `keyword` varchar(50) DEFAULT NULL,
  `value` varchar(150) DEFAULT NULL,
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restapi_general`
--

LOCK TABLES `restapi_general` WRITE;
/*!40000 ALTER TABLE `restapi_general` DISABLE KEYS */;
INSERT INTO `restapi_general` VALUES
('status','normal'),
('token','5ea6ecc8789165ad3dc313d014e684ba00b24126'),
('tokenkey','ee66ec49d35f3b718f4dd17d74064afaf6ad9f71');
/*!40000 ALTER TABLE `restapi_general` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restapi_log_event_details`
--

DROP TABLE IF EXISTS `restapi_log_event_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `restapi_log_event_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `e_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `event` varchar(150) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `trigger` text DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `e_id` (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restapi_log_event_details`
--

LOCK TABLES `restapi_log_event_details` WRITE;
/*!40000 ALTER TABLE `restapi_log_event_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `restapi_log_event_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restapi_log_events`
--

DROP TABLE IF EXISTS `restapi_log_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `restapi_log_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `token` varchar(75) DEFAULT NULL,
  `signature` varchar(150) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `server` varchar(75) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `time` (`time`),
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restapi_log_events`
--

LOCK TABLES `restapi_log_events` WRITE;
/*!40000 ALTER TABLE `restapi_log_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `restapi_log_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restapi_token_details`
--

DROP TABLE IF EXISTS `restapi_token_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `restapi_token_details` (
  `token_id` int(11) DEFAULT NULL,
  `key` varchar(50) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restapi_token_details`
--

LOCK TABLES `restapi_token_details` WRITE;
/*!40000 ALTER TABLE `restapi_token_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `restapi_token_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restapi_token_user_mapping`
--

DROP TABLE IF EXISTS `restapi_token_user_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `restapi_token_user_mapping` (
  `user` varchar(25) DEFAULT NULL,
  `token_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restapi_token_user_mapping`
--

LOCK TABLES `restapi_token_user_mapping` WRITE;
/*!40000 ALTER TABLE `restapi_token_user_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `restapi_token_user_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restapi_tokens`
--

DROP TABLE IF EXISTS `restapi_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `restapi_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `desc` varchar(250) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restapi_tokens`
--

LOCK TABLES `restapi_tokens` WRITE;
/*!40000 ALTER TABLE `restapi_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `restapi_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-12  5:41:42
