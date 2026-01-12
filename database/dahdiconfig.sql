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
-- Table structure for table `dahdi`
--

DROP TABLE IF EXISTS `dahdi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dahdi` (
  `id` varchar(20) NOT NULL DEFAULT '-1',
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `data` varchar(255) NOT NULL DEFAULT '',
  `flags` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dahdi`
--

LOCK TABLES `dahdi` WRITE;
/*!40000 ALTER TABLE `dahdi` DISABLE KEYS */;
/*!40000 ALTER TABLE `dahdi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dahdi_advanced`
--

DROP TABLE IF EXISTS `dahdi_advanced`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dahdi_advanced` (
  `keyword` varchar(50) NOT NULL,
  `val` varchar(255) DEFAULT NULL,
  `default_val` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT 'chandahdi',
  `additional` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dahdi_advanced`
--

LOCK TABLES `dahdi_advanced` WRITE;
/*!40000 ALTER TABLE `dahdi_advanced` DISABLE KEYS */;
INSERT INTO `dahdi_advanced` VALUES
('alawoverride',NULL,'0','chandahdi',1),
('alawoverride_checkbox',NULL,'0','chandahdi',1),
('boostringer',NULL,'0','chandahdi',1),
('boostringer_checkbox',NULL,'0','chandahdi',1),
('busycount',NULL,'10','chandahdi',0),
('busydetect',NULL,'yes','chandahdi',0),
('callreturn',NULL,'yes','chandahdi',0),
('callwaiting',NULL,'yes','chandahdi',0),
('cancallforward',NULL,'yes','chandahdi',0),
('echocan_nlp_max_supp',NULL,'','chandahdi',1),
('echocan_nlp_threshold',NULL,'','chandahdi',1),
('echocan_nlp_type',NULL,'0','chandahdi',1),
('echocancel',NULL,'yes','chandahdi',0),
('echocancelwhenbridged',NULL,'no','chandahdi',0),
('echotraining',NULL,'no','chandahdi',0),
('fastringer',NULL,'0','chandahdi',1),
('fastringer_checkbox',NULL,'0','chandahdi',1),
('faxdetect',NULL,'no','chandahdi',0),
('fxs_honor_mode',NULL,'0','chandahdi',1),
('fxs_honor_mode_checkbox',NULL,'0','chandahdi',1),
('immediate',NULL,'no','chandahdi',0),
('language',NULL,'en','chandahdi',0),
('lowpower',NULL,'0','chandahdi',1),
('lowpower_checkbox',NULL,'0','chandahdi',1),
('module_name',NULL,'wctdm24xxp','chandahdi',1),
('mwi',NULL,'none','chandahdi',1),
('mwi_checkbox',NULL,'0','chandahdi',1),
('neon_offlimit',NULL,'','chandahdi',1),
('neon_voltage',NULL,'','chandahdi',1),
('opermode',NULL,'USA','chandahdi',1),
('opermode_checkbox',NULL,'0','chandahdi',1),
('ringdetect',NULL,'0','chandahdi',1),
('ringdetect_checkbox',NULL,'0','chandahdi',1),
('rxgain',NULL,'0.0','chandahdi',0),
('threewaycalling',NULL,'yes','chandahdi',0),
('tone_region',NULL,'us','system',0),
('transfer',NULL,'yes','chandahdi',0),
('txgain',NULL,'0.0','chandahdi',0),
('usecallerid',NULL,'yes','chandahdi',0),
('usecallingpres',NULL,'yes','chandahdi',0);
/*!40000 ALTER TABLE `dahdi_advanced` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dahdi_advanced_modules`
--

DROP TABLE IF EXISTS `dahdi_advanced_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dahdi_advanced_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `settings` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module_name` (`module_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dahdi_advanced_modules`
--

LOCK TABLES `dahdi_advanced_modules` WRITE;
/*!40000 ALTER TABLE `dahdi_advanced_modules` DISABLE KEYS */;
INSERT INTO `dahdi_advanced_modules` VALUES
(1,'wctdm24xxp','{\"alawoverride\":\"0\",\"alawoverride_checkbox\":false,\"boostringer\":\"0\",\"boostringer_checkbox\":false,\"echocan_nlp_max_supp\":\"\",\"echocan_nlp_threshold\":\"\",\"echocan_nlp_type\":\"0\",\"fastringer\":\"0\",\"fastringer_checkbox\":false,\"fxs_honor_mode\":\"0\",\"fxs_honor_mode_checkbox\":false,\"lowpower\":\"0\",\"lowpower_checkbox\":false,\"mwi\":\"none\",\"mwi_checkbox\":false,\"neon_offlimit\":\"\",\"neon_voltage\":\"\",\"opermode\":\"USA\",\"opermode_checkbox\":false,\"ringdetect\":\"0\",\"ringdetect_checkbox\":false,\"tone_region\":\"us\"}');
/*!40000 ALTER TABLE `dahdi_advanced_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dahdi_analog`
--

DROP TABLE IF EXISTS `dahdi_analog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dahdi_analog` (
  `port` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `signalling` varchar(255) DEFAULT NULL,
  `group` varchar(10) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `txgain` varchar(10) NOT NULL DEFAULT '0.0',
  `rxgain` varchar(10) NOT NULL DEFAULT '0.0',
  UNIQUE KEY `port` (`port`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dahdi_analog`
--

LOCK TABLES `dahdi_analog` WRITE;
/*!40000 ALTER TABLE `dahdi_analog` DISABLE KEYS */;
/*!40000 ALTER TABLE `dahdi_analog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dahdi_analog_custom`
--

DROP TABLE IF EXISTS `dahdi_analog_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dahdi_analog_custom` (
  `dahdi_analog_port` int(11) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `val` varchar(255) DEFAULT NULL,
  UNIQUE KEY `idx` (`dahdi_analog_port`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dahdi_analog_custom`
--

LOCK TABLES `dahdi_analog_custom` WRITE;
/*!40000 ALTER TABLE `dahdi_analog_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `dahdi_analog_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dahdi_configured_locations`
--

DROP TABLE IF EXISTS `dahdi_configured_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dahdi_configured_locations` (
  `location` varchar(50) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `basechan` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dahdi_configured_locations`
--

LOCK TABLES `dahdi_configured_locations` WRITE;
/*!40000 ALTER TABLE `dahdi_configured_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `dahdi_configured_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dahdi_modules`
--

DROP TABLE IF EXISTS `dahdi_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dahdi_modules` (
  `module_name` varchar(100) DEFAULT NULL,
  `settings` longblob DEFAULT NULL,
  UNIQUE KEY `module_name` (`module_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dahdi_modules`
--

LOCK TABLES `dahdi_modules` WRITE;
/*!40000 ALTER TABLE `dahdi_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `dahdi_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dahdi_spans`
--

DROP TABLE IF EXISTS `dahdi_spans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dahdi_spans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `span` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT 1,
  `alarms` varchar(15) DEFAULT NULL,
  `basechan` int(11) DEFAULT NULL,
  `coding` varchar(10) DEFAULT NULL,
  `coding_opts` varchar(255) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `definedchans` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `devicetype` varchar(255) DEFAULT NULL,
  `framing` varchar(10) DEFAULT NULL,
  `framing_opts` varchar(255) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `irq` varchar(10) DEFAULT NULL,
  `lbo` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `manufacturer` varchar(25) NOT NULL DEFAULT 'Digium',
  `max_ch` int(11) DEFAULT NULL,
  `min_ch` int(11) DEFAULT NULL,
  `pridialplan` varchar(25) DEFAULT NULL,
  `prilocaldialplan` varchar(25) DEFAULT NULL,
  `reserved_ch` int(11) DEFAULT NULL,
  `signalling` varchar(50) DEFAULT NULL,
  `spantype` varchar(10) DEFAULT NULL,
  `switchtype` varchar(50) DEFAULT NULL,
  `syncsrc` int(11) DEFAULT NULL,
  `timing` int(11) DEFAULT NULL,
  `totchans` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `priexclusive` varchar(3) DEFAULT NULL,
  `additional_groups` longblob DEFAULT NULL,
  `txgain` varchar(10) NOT NULL DEFAULT '0.0',
  `rxgain` varchar(10) NOT NULL DEFAULT '0.0',
  `mfcr2_variant` varchar(3) NOT NULL DEFAULT 'ITU',
  `mfcr2_get_ani_first` varchar(3) NOT NULL DEFAULT 'no',
  `mfcr2_max_ani` smallint(6) NOT NULL DEFAULT 10,
  `mfcr2_max_dnis` smallint(6) NOT NULL DEFAULT 4,
  `mfcr2_category` varchar(50) NOT NULL DEFAULT 'national_subscriber',
  `mfcr2_call_files` varchar(3) NOT NULL DEFAULT 'yes',
  `mfcr2_skip_category` varchar(3) NOT NULL DEFAULT 'no',
  `mfcr2_logdir` varchar(10) DEFAULT NULL,
  `mfcr2_logging` varchar(10) DEFAULT NULL,
  `mfcr2_mfback_timeout` decimal(10,0) NOT NULL DEFAULT 0,
  `mfcr2_mfback_pulse_timeout` decimal(10,0) NOT NULL DEFAULT 0,
  `mfcr2_metering_pulse_timeout` decimal(10,0) NOT NULL DEFAULT 0,
  `mfcr2_allow_collect_calls` varchar(3) NOT NULL DEFAULT 'no',
  `mfcr2_double_answer` varchar(3) NOT NULL DEFAULT 'no',
  `mfcr2_immediate_accept` varchar(3) NOT NULL DEFAULT 'no',
  `mfcr2_forced_release` varchar(3) NOT NULL DEFAULT 'no',
  `mfcr2_charge_calls` varchar(3) NOT NULL DEFAULT 'yes',
  `mfcr2_accept_on_offer` varchar(3) NOT NULL DEFAULT 'yes',
  `mfcr2_skip_catefory` varchar(3) NOT NULL DEFAULT 'no',
  `mfcr2_advanced_protocol_file` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dahdi_spans`
--

LOCK TABLES `dahdi_spans` WRITE;
/*!40000 ALTER TABLE `dahdi_spans` DISABLE KEYS */;
/*!40000 ALTER TABLE `dahdi_spans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dahdichandids`
--

DROP TABLE IF EXISTS `dahdichandids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dahdichandids` (
  `channel` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) NOT NULL DEFAULT '',
  `did` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`channel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dahdichandids`
--

LOCK TABLES `dahdichandids` WRITE;
/*!40000 ALTER TABLE `dahdichandids` DISABLE KEYS */;
/*!40000 ALTER TABLE `dahdichandids` ENABLE KEYS */;
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
