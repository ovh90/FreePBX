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
-- Table structure for table `digium_phones_alerts`
--

DROP TABLE IF EXISTS `digium_phones_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `alertinfo` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `ringtone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_alerts`
--

LOCK TABLES `digium_phones_alerts` WRITE;
/*!40000 ALTER TABLE `digium_phones_alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_customapp_settings`
--

DROP TABLE IF EXISTS `digium_phones_customapp_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_customapp_settings` (
  `customappid` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customappid`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_customapp_settings`
--

LOCK TABLES `digium_phones_customapp_settings` WRITE;
/*!40000 ALTER TABLE `digium_phones_customapp_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_customapp_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_customapps`
--

DROP TABLE IF EXISTS `digium_phones_customapps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_customapps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_customapps`
--

LOCK TABLES `digium_phones_customapps` WRITE;
/*!40000 ALTER TABLE `digium_phones_customapps` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_customapps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_device_alerts`
--

DROP TABLE IF EXISTS `digium_phones_device_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_device_alerts` (
  `id` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `alertid` int(11) NOT NULL,
  PRIMARY KEY (`deviceid`,`alertid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_device_alerts`
--

LOCK TABLES `digium_phones_device_alerts` WRITE;
/*!40000 ALTER TABLE `digium_phones_device_alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_device_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_device_customapps`
--

DROP TABLE IF EXISTS `digium_phones_device_customapps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_device_customapps` (
  `id` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `customappid` int(11) NOT NULL,
  PRIMARY KEY (`deviceid`,`customappid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_device_customapps`
--

LOCK TABLES `digium_phones_device_customapps` WRITE;
/*!40000 ALTER TABLE `digium_phones_device_customapps` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_device_customapps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_device_externallines`
--

DROP TABLE IF EXISTS `digium_phones_device_externallines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_device_externallines` (
  `id` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `externallineid` int(11) NOT NULL,
  PRIMARY KEY (`deviceid`,`externallineid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_device_externallines`
--

LOCK TABLES `digium_phones_device_externallines` WRITE;
/*!40000 ALTER TABLE `digium_phones_device_externallines` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_device_externallines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_device_logos`
--

DROP TABLE IF EXISTS `digium_phones_device_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_device_logos` (
  `id` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `logoid` int(11) NOT NULL,
  PRIMARY KEY (`deviceid`,`logoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_device_logos`
--

LOCK TABLES `digium_phones_device_logos` WRITE;
/*!40000 ALTER TABLE `digium_phones_device_logos` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_device_logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_device_mcpages`
--

DROP TABLE IF EXISTS `digium_phones_device_mcpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_device_mcpages` (
  `id` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `mcpageid` int(11) NOT NULL,
  PRIMARY KEY (`deviceid`,`mcpageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_device_mcpages`
--

LOCK TABLES `digium_phones_device_mcpages` WRITE;
/*!40000 ALTER TABLE `digium_phones_device_mcpages` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_device_mcpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_device_networks`
--

DROP TABLE IF EXISTS `digium_phones_device_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_device_networks` (
  `id` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `networkid` int(11) NOT NULL,
  PRIMARY KEY (`deviceid`,`networkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_device_networks`
--

LOCK TABLES `digium_phones_device_networks` WRITE;
/*!40000 ALTER TABLE `digium_phones_device_networks` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_device_networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_device_parkapps`
--

DROP TABLE IF EXISTS `digium_phones_device_parkapps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_device_parkapps` (
  `id` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`deviceid`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_device_parkapps`
--

LOCK TABLES `digium_phones_device_parkapps` WRITE;
/*!40000 ALTER TABLE `digium_phones_device_parkapps` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_device_parkapps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_device_phonebooks`
--

DROP TABLE IF EXISTS `digium_phones_device_phonebooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_device_phonebooks` (
  `id` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `phonebookid` int(11) NOT NULL,
  PRIMARY KEY (`deviceid`,`phonebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_device_phonebooks`
--

LOCK TABLES `digium_phones_device_phonebooks` WRITE;
/*!40000 ALTER TABLE `digium_phones_device_phonebooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_device_phonebooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_device_ringtones`
--

DROP TABLE IF EXISTS `digium_phones_device_ringtones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_device_ringtones` (
  `id` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `ringtoneid` int(11) NOT NULL,
  PRIMARY KEY (`deviceid`,`ringtoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_device_ringtones`
--

LOCK TABLES `digium_phones_device_ringtones` WRITE;
/*!40000 ALTER TABLE `digium_phones_device_ringtones` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_device_ringtones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_device_settings`
--

DROP TABLE IF EXISTS `digium_phones_device_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_device_settings` (
  `deviceid` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`deviceid`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_device_settings`
--

LOCK TABLES `digium_phones_device_settings` WRITE;
/*!40000 ALTER TABLE `digium_phones_device_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_device_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_device_statuses`
--

DROP TABLE IF EXISTS `digium_phones_device_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_device_statuses` (
  `id` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `statusid` int(11) NOT NULL,
  PRIMARY KEY (`deviceid`,`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_device_statuses`
--

LOCK TABLES `digium_phones_device_statuses` WRITE;
/*!40000 ALTER TABLE `digium_phones_device_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_device_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_devices`
--

DROP TABLE IF EXISTS `digium_phones_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_devices`
--

LOCK TABLES `digium_phones_devices` WRITE;
/*!40000 ALTER TABLE `digium_phones_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_extension_settings`
--

DROP TABLE IF EXISTS `digium_phones_extension_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_extension_settings` (
  `extension` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`extension`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_extension_settings`
--

LOCK TABLES `digium_phones_extension_settings` WRITE;
/*!40000 ALTER TABLE `digium_phones_extension_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_extension_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_externalline_settings`
--

DROP TABLE IF EXISTS `digium_phones_externalline_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_externalline_settings` (
  `externallineid` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`externallineid`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_externalline_settings`
--

LOCK TABLES `digium_phones_externalline_settings` WRITE;
/*!40000 ALTER TABLE `digium_phones_externalline_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_externalline_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_externallines`
--

DROP TABLE IF EXISTS `digium_phones_externallines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_externallines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_externallines`
--

LOCK TABLES `digium_phones_externallines` WRITE;
/*!40000 ALTER TABLE `digium_phones_externallines` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_externallines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_firmware`
--

DROP TABLE IF EXISTS `digium_phones_firmware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_firmware` (
  `unique_id` varchar(50) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `phone_model` varchar(30) NOT NULL,
  `package_id` varchar(50) NOT NULL,
  PRIMARY KEY (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_firmware`
--

LOCK TABLES `digium_phones_firmware` WRITE;
/*!40000 ALTER TABLE `digium_phones_firmware` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_firmware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_firmware_packages`
--

DROP TABLE IF EXISTS `digium_phones_firmware_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_firmware_packages` (
  `unique_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `file_path` varchar(512) NOT NULL,
  `version` varchar(30) NOT NULL,
  PRIMARY KEY (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_firmware_packages`
--

LOCK TABLES `digium_phones_firmware_packages` WRITE;
/*!40000 ALTER TABLE `digium_phones_firmware_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_firmware_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_general`
--

DROP TABLE IF EXISTS `digium_phones_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_general` (
  `keyword` varchar(50) NOT NULL,
  `val` varchar(255) DEFAULT NULL,
  `default_val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_general`
--

LOCK TABLES `digium_phones_general` WRITE;
/*!40000 ALTER TABLE `digium_phones_general` DISABLE KEYS */;
INSERT INTO `digium_phones_general` VALUES
('active_locale',NULL,'en_US'),
('config_auth',NULL,'disabled'),
('easy_mode',NULL,'yes'),
('firmware_version',NULL,''),
('globalpin',NULL,''),
('internal_phonebook_sort',NULL,'extension'),
('mdns_address','192.168.1.200',''),
('mdns_port',NULL,'5060'),
('mdns_transport',NULL,''),
('service_name',NULL,'Asterisk'),
('userlist_auth',NULL,'disabled');
/*!40000 ALTER TABLE `digium_phones_general` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_lines`
--

DROP TABLE IF EXISTS `digium_phones_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_lines` (
  `id` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `extension` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`deviceid`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_lines`
--

LOCK TABLES `digium_phones_lines` WRITE;
/*!40000 ALTER TABLE `digium_phones_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_logos`
--

DROP TABLE IF EXISTS `digium_phones_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_logos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_logos`
--

LOCK TABLES `digium_phones_logos` WRITE;
/*!40000 ALTER TABLE `digium_phones_logos` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_mcpage_settings`
--

DROP TABLE IF EXISTS `digium_phones_mcpage_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_mcpage_settings` (
  `mcpageid` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mcpageid`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_mcpage_settings`
--

LOCK TABLES `digium_phones_mcpage_settings` WRITE;
/*!40000 ALTER TABLE `digium_phones_mcpage_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_mcpage_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_mcpages`
--

DROP TABLE IF EXISTS `digium_phones_mcpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_mcpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_mcpages`
--

LOCK TABLES `digium_phones_mcpages` WRITE;
/*!40000 ALTER TABLE `digium_phones_mcpages` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_mcpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_network_settings`
--

DROP TABLE IF EXISTS `digium_phones_network_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_network_settings` (
  `networkid` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`networkid`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_network_settings`
--

LOCK TABLES `digium_phones_network_settings` WRITE;
/*!40000 ALTER TABLE `digium_phones_network_settings` DISABLE KEYS */;
INSERT INTO `digium_phones_network_settings` VALUES
(-1,'cidr','0.0.0.0/0'),
(-1,'file_url_prefix',''),
(-1,'ntp_server','0.digium.pool.ntp.org'),
(-1,'registration_address',''),
(-1,'registration_port',''),
(-1,'transport','');
/*!40000 ALTER TABLE `digium_phones_network_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_networks`
--

DROP TABLE IF EXISTS `digium_phones_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_networks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_networks`
--

LOCK TABLES `digium_phones_networks` WRITE;
/*!40000 ALTER TABLE `digium_phones_networks` DISABLE KEYS */;
INSERT INTO `digium_phones_networks` VALUES
(-1,'Default Network');
/*!40000 ALTER TABLE `digium_phones_networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_phonebook_entries`
--

DROP TABLE IF EXISTS `digium_phones_phonebook_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_phonebook_entries` (
  `id` int(11) NOT NULL,
  `phonebookid` int(11) NOT NULL,
  `extension` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`phonebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_phonebook_entries`
--

LOCK TABLES `digium_phones_phonebook_entries` WRITE;
/*!40000 ALTER TABLE `digium_phones_phonebook_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_phonebook_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_phonebook_entry_settings`
--

DROP TABLE IF EXISTS `digium_phones_phonebook_entry_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_phonebook_entry_settings` (
  `phonebookid` int(11) NOT NULL,
  `phonebookentryid` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`phonebookid`,`phonebookentryid`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_phonebook_entry_settings`
--

LOCK TABLES `digium_phones_phonebook_entry_settings` WRITE;
/*!40000 ALTER TABLE `digium_phones_phonebook_entry_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_phonebook_entry_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_phonebooks`
--

DROP TABLE IF EXISTS `digium_phones_phonebooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_phonebooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_phonebooks`
--

LOCK TABLES `digium_phones_phonebooks` WRITE;
/*!40000 ALTER TABLE `digium_phones_phonebooks` DISABLE KEYS */;
INSERT INTO `digium_phones_phonebooks` VALUES
(-1,'Internal Phonebook');
/*!40000 ALTER TABLE `digium_phones_phonebooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_pnac_settings`
--

DROP TABLE IF EXISTS `digium_phones_pnac_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_pnac_settings` (
  `pnacid` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pnacid`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_pnac_settings`
--

LOCK TABLES `digium_phones_pnac_settings` WRITE;
/*!40000 ALTER TABLE `digium_phones_pnac_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_pnac_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_pnacs`
--

DROP TABLE IF EXISTS `digium_phones_pnacs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_pnacs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_pnacs`
--

LOCK TABLES `digium_phones_pnacs` WRITE;
/*!40000 ALTER TABLE `digium_phones_pnacs` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_pnacs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_queues`
--

DROP TABLE IF EXISTS `digium_phones_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_queues` (
  `queueid` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  `permission` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`queueid`,`deviceid`,`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_queues`
--

LOCK TABLES `digium_phones_queues` WRITE;
/*!40000 ALTER TABLE `digium_phones_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_ringtones`
--

DROP TABLE IF EXISTS `digium_phones_ringtones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_ringtones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `builtin` tinyint(1) DEFAULT 0,
  `filename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_ringtones`
--

LOCK TABLES `digium_phones_ringtones` WRITE;
/*!40000 ALTER TABLE `digium_phones_ringtones` DISABLE KEYS */;
INSERT INTO `digium_phones_ringtones` VALUES
(-14,'Vibe',1,NULL),
(-13,'Twinkle',1,NULL),
(-12,'Tweedle',1,NULL),
(-11,'Theme',1,NULL),
(-10,'Techno',1,NULL),
(-9,'SteelDrum',1,NULL),
(-8,'RotaryPhone',1,NULL),
(-7,'Office2',1,NULL),
(-6,'Office',1,NULL),
(-5,'Jingle',1,NULL),
(-4,'GuitarStrum',1,NULL),
(-3,'Digium',1,NULL),
(-2,'Chimes',1,NULL),
(-1,'Alarm',1,NULL);
/*!40000 ALTER TABLE `digium_phones_ringtones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_status_entries`
--

DROP TABLE IF EXISTS `digium_phones_status_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_status_entries` (
  `id` int(11) NOT NULL,
  `statusid` int(11) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_status_entries`
--

LOCK TABLES `digium_phones_status_entries` WRITE;
/*!40000 ALTER TABLE `digium_phones_status_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_status_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_status_settings`
--

DROP TABLE IF EXISTS `digium_phones_status_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_status_settings` (
  `statusid` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`statusid`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_status_settings`
--

LOCK TABLES `digium_phones_status_settings` WRITE;
/*!40000 ALTER TABLE `digium_phones_status_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_status_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_statuses`
--

DROP TABLE IF EXISTS `digium_phones_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_statuses`
--

LOCK TABLES `digium_phones_statuses` WRITE;
/*!40000 ALTER TABLE `digium_phones_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `digium_phones_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digium_phones_voicemail_translations`
--

DROP TABLE IF EXISTS `digium_phones_voicemail_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `digium_phones_voicemail_translations` (
  `locale` varchar(10) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `val` varchar(255) NOT NULL,
  PRIMARY KEY (`locale`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digium_phones_voicemail_translations`
--

LOCK TABLES `digium_phones_voicemail_translations` WRITE;
/*!40000 ALTER TABLE `digium_phones_voicemail_translations` DISABLE KEYS */;
INSERT INTO `digium_phones_voicemail_translations` VALUES
('de_DE','Family','Familie'),
('de_DE','Friends','Freunde'),
('de_DE','INBOX','INBOX'),
('de_DE','Recordings','Aufnahmen'),
('de_DE','Work','Arbeit'),
('en_AU','IGNOREME','IGNOREME'),
('en_CA','IGNOREME','IGNOREME'),
('en_GB','IGNOREME','IGNOREME'),
('en_US','IGNOREME','IGNOREME'),
('es_ES','Family','Familia'),
('es_ES','Friends','Amigos'),
('es_ES','INBOX','INBOX'),
('es_ES','Recordings','Grabaciones'),
('es_ES','Work','Trabajo'),
('es_MX','Family','Familia'),
('es_MX','Friends','Amigos'),
('es_MX','INBOX','INBOX'),
('es_MX','Recordings','Grabaciones'),
('es_MX','Work','Trabajo'),
('fr_BE','Family','Famille'),
('fr_BE','Friends','Amis'),
('fr_BE','INBOX','INBOX'),
('fr_BE','Recordings','Enregistrements'),
('fr_BE','Work','Travail'),
('fr_CA','Family','Famille'),
('fr_CA','Friends','Amis'),
('fr_CA','INBOX','INBOX'),
('fr_CA','Recordings','Enregistrements'),
('fr_CA','Work','Travail'),
('fr_FR','Family','Famille'),
('fr_FR','Friends','Amis'),
('fr_FR','INBOX','INBOX'),
('fr_FR','Recordings','Enregistrements'),
('fr_FR','Work','Travail'),
('it_IT','Family','Famiglia'),
('it_IT','Friends','Amici'),
('it_IT','INBOX','INBOX'),
('it_IT','Recordings','Registrazioni'),
('it_IT','Work','Lavori'),
('nl_BE','Family','Familie'),
('nl_BE','Friends','Vrienden'),
('nl_BE','INBOX','INBOX'),
('nl_BE','Recordings','Opnamen'),
('nl_BE','Work','Werk'),
('nl_NL','Family','Familie'),
('nl_NL','Friends','Vrienden'),
('nl_NL','INBOX','INBOX'),
('nl_NL','Recordings','Opnamen'),
('nl_NL','Work','Werk'),
('pt_BR','Family','Família'),
('pt_BR','Friends','Amigos'),
('pt_BR','INBOX','INBOX'),
('pt_BR','Recordings','Gravações'),
('pt_BR','Work','Trabalho'),
('pt_PT','Family','Família'),
('pt_PT','Friends','Amigos'),
('pt_PT','INBOX','INBOX'),
('pt_PT','Recordings','Gravações'),
('pt_PT','Work','Trabalho');
/*!40000 ALTER TABLE `digium_phones_voicemail_translations` ENABLE KEYS */;
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
