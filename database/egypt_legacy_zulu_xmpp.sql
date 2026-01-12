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
-- Table structure for table `kvstore_FreePBX_modules_Zulu`
--

DROP TABLE IF EXISTS `kvstore_FreePBX_modules_Zulu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `kvstore_FreePBX_modules_Zulu` (
  `key` char(255) NOT NULL,
  `val` varchar(4096) DEFAULT NULL,
  `type` char(16) DEFAULT NULL,
  `id` char(255) DEFAULT NULL,
  UNIQUE KEY `uniqueindex` (`key`(190),`id`(190)),
  KEY `keyindex` (`key`(190)),
  KEY `idindex` (`id`(190))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kvstore_FreePBX_modules_Zulu`
--

LOCK TABLES `kvstore_FreePBX_modules_Zulu` WRITE;
/*!40000 ALTER TABLE `kvstore_FreePBX_modules_Zulu` DISABLE KEYS */;
INSERT INTO `kvstore_FreePBX_modules_Zulu` VALUES
('streamActionMigration','1',NULL,'noid'),
('publicActionStream','1',NULL,'noid'),
('mobileTokenMigration','1',NULL,'noid'),
('letschatMigration','1',NULL,'noid'),
('mobileRefreshedAt','1',NULL,'noid'),
('interactionUpdatedAt','1',NULL,'noid');
/*!40000 ALTER TABLE `kvstore_FreePBX_modules_Zulu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmpp_options`
--

DROP TABLE IF EXISTS `xmpp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `xmpp_options` (
  `keyword` varchar(75) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  PRIMARY KEY (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmpp_options`
--

LOCK TABLES `xmpp_options` WRITE;
/*!40000 ALTER TABLE `xmpp_options` DISABLE KEYS */;
INSERT INTO `xmpp_options` VALUES
('dirty','true'),
('domain','localhost');
/*!40000 ALTER TABLE `xmpp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmpp_users`
--

DROP TABLE IF EXISTS `xmpp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `xmpp_users` (
  `user` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmpp_users`
--

LOCK TABLES `xmpp_users` WRITE;
/*!40000 ALTER TABLE `xmpp_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmpp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_interactions_contacts`
--

DROP TABLE IF EXISTS `zulu_interactions_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_interactions_contacts` (
  `id` varchar(36) NOT NULL,
  `zulu_id` int(11) DEFAULT NULL,
  `type` varchar(45) NOT NULL,
  `calleridnumber` varchar(45) DEFAULT NULL,
  `userman_id` int(11) DEFAULT NULL,
  `calleridname` varchar(150) DEFAULT NULL,
  `linkedid` varchar(36) DEFAULT NULL,
  `contactman_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zulu_id` (`zulu_id`),
  KEY `contactman_id` (`contactman_id`),
  KEY `userman_id` (`userman_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_interactions_contacts`
--

LOCK TABLES `zulu_interactions_contacts` WRITE;
/*!40000 ALTER TABLE `zulu_interactions_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_interactions_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_interactions_interaction_states`
--

DROP TABLE IF EXISTS `zulu_interactions_interaction_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_interactions_interaction_states` (
  `userman_id` int(11) NOT NULL,
  `interaction_id` varchar(36) NOT NULL DEFAULT '',
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `topic` varchar(45) DEFAULT NULL,
  `notification` varchar(20) NOT NULL DEFAULT 'normal',
  UNIQUE KEY `contact_id` (`userman_id`,`interaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_interactions_interaction_states`
--

LOCK TABLES `zulu_interactions_interaction_states` WRITE;
/*!40000 ALTER TABLE `zulu_interactions_interaction_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_interactions_interaction_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_interactions_interactions`
--

DROP TABLE IF EXISTS `zulu_interactions_interactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_interactions_interactions` (
  `id` varchar(36) NOT NULL,
  `start_time` int(11) NOT NULL,
  `topic` varchar(45) DEFAULT NULL,
  `type` varchar(45) NOT NULL DEFAULT 'direct',
  `description` varchar(255) DEFAULT NULL,
  `close` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `conference_number` varchar(50) DEFAULT NULL,
  `closable` int(11) NOT NULL DEFAULT 1,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_at` (`updated_at`),
  KEY `conference_number` (`conference_number`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_interactions_interactions`
--

LOCK TABLES `zulu_interactions_interactions` WRITE;
/*!40000 ALTER TABLE `zulu_interactions_interactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_interactions_interactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_interactions_members`
--

DROP TABLE IF EXISTS `zulu_interactions_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_interactions_members` (
  `linkedid` varchar(36) NOT NULL,
  `interaction_id` varchar(36) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`linkedid`,`interaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_interactions_members`
--

LOCK TABLES `zulu_interactions_members` WRITE;
/*!40000 ALTER TABLE `zulu_interactions_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_interactions_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_interactions_owners`
--

DROP TABLE IF EXISTS `zulu_interactions_owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_interactions_owners` (
  `interaction_id` varchar(36) NOT NULL,
  `userman_id` int(11) NOT NULL,
  PRIMARY KEY (`interaction_id`,`userman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_interactions_owners`
--

LOCK TABLES `zulu_interactions_owners` WRITE;
/*!40000 ALTER TABLE `zulu_interactions_owners` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_interactions_owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_interactions_stream_actions`
--

DROP TABLE IF EXISTS `zulu_interactions_stream_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_interactions_stream_actions` (
  `stream_id` varchar(36) NOT NULL,
  `zulu_id` int(11) NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`stream_id`,`zulu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_interactions_stream_actions`
--

LOCK TABLES `zulu_interactions_stream_actions` WRITE;
/*!40000 ALTER TABLE `zulu_interactions_stream_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_interactions_stream_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_interactions_stream_bodies`
--

DROP TABLE IF EXISTS `zulu_interactions_stream_bodies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_interactions_stream_bodies` (
  `stream_id` varchar(36) NOT NULL,
  `body` longblob DEFAULT NULL,
  `searchable` longtext DEFAULT NULL,
  PRIMARY KEY (`stream_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_interactions_stream_bodies`
--

LOCK TABLES `zulu_interactions_stream_bodies` WRITE;
/*!40000 ALTER TABLE `zulu_interactions_stream_bodies` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_interactions_stream_bodies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_interactions_stream_links`
--

DROP TABLE IF EXISTS `zulu_interactions_stream_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_interactions_stream_links` (
  `stream_id` varchar(36) NOT NULL,
  `link` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_interactions_stream_links`
--

LOCK TABLES `zulu_interactions_stream_links` WRITE;
/*!40000 ALTER TABLE `zulu_interactions_stream_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_interactions_stream_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_interactions_streams`
--

DROP TABLE IF EXISTS `zulu_interactions_streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_interactions_streams` (
  `id` varchar(36) NOT NULL,
  `interaction_id` varchar(36) NOT NULL,
  `member_id` varchar(36) DEFAULT NULL,
  `zulu_id` int(11) DEFAULT NULL,
  `when` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `zulu_id` (`zulu_id`),
  KEY `when` (`when`),
  KEY `interaction_id` (`interaction_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_interactions_streams`
--

LOCK TABLES `zulu_interactions_streams` WRITE;
/*!40000 ALTER TABLE `zulu_interactions_streams` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_interactions_streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_login_tokens`
--

DROP TABLE IF EXISTS `zulu_login_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_login_tokens` (
  `token` varchar(36) NOT NULL DEFAULT '',
  `uid` int(11) DEFAULT NULL,
  `temp` tinyint(1) NOT NULL DEFAULT 1,
  `expires` int(11) DEFAULT NULL,
  `websocket_session` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_login_tokens`
--

LOCK TABLES `zulu_login_tokens` WRITE;
/*!40000 ALTER TABLE `zulu_login_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_login_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_mobile_tokens`
--

DROP TABLE IF EXISTS `zulu_mobile_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_mobile_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zulu_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notify_token` varchar(255) DEFAULT NULL,
  `voip_token` varchar(255) DEFAULT NULL,
  `refreshed_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zulu_id` (`zulu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_mobile_tokens`
--

LOCK TABLES `zulu_mobile_tokens` WRITE;
/*!40000 ALTER TABLE `zulu_mobile_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_mobile_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_softphones`
--

DROP TABLE IF EXISTS `zulu_softphones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_softphones` (
  `user` bigint(20) NOT NULL,
  `device` bigint(20) NOT NULL,
  `certid` int(11) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_softphones`
--

LOCK TABLES `zulu_softphones` WRITE;
/*!40000 ALTER TABLE `zulu_softphones` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_softphones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulu_tokens`
--

DROP TABLE IF EXISTS `zulu_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zulu_tokens` (
  `websocket_session` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL,
  `token` varchar(36) NOT NULL,
  `client_version` varchar(255) NOT NULL,
  `connect_time` int(11) NOT NULL,
  `client_ip` varchar(255) NOT NULL,
  `client_type` varchar(255) NOT NULL,
  PRIMARY KEY (`websocket_session`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulu_tokens`
--

LOCK TABLES `zulu_tokens` WRITE;
/*!40000 ALTER TABLE `zulu_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `zulu_tokens` ENABLE KEYS */;
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
