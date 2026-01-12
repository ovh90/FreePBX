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
-- Table structure for table `contactmanager_groups`
--

DROP TABLE IF EXISTS `contactmanager_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactmanager_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactmanager_groups`
--

LOCK TABLES `contactmanager_groups` WRITE;
/*!40000 ALTER TABLE `contactmanager_groups` DISABLE KEYS */;
INSERT INTO `contactmanager_groups` VALUES
(1,-1,'User Manager Group','internal');
/*!40000 ALTER TABLE `contactmanager_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactmanager_group_entries`
--

DROP TABLE IF EXISTS `contactmanager_group_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactmanager_group_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `displayname` varchar(100) NOT NULL DEFAULT '',
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `company` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `uuid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid_index` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactmanager_group_entries`
--

LOCK TABLES `contactmanager_group_entries` WRITE;
/*!40000 ALTER TABLE `contactmanager_group_entries` DISABLE KEYS */;
INSERT INTO `contactmanager_group_entries` VALUES
(1,1,1,'MR. Youssef','','','','','','7055ae64-5804-11ee-a580-000c29bea0b1'),
(2,1,2,'MS. Elham','','','','','','afe7327c-5804-11ee-a580-000c29bea0b1'),
(3,1,3,'MS. Monica','','','','','','d19d06ed-5804-11ee-a580-000c29bea0b1'),
(4,1,4,'MS. Christina','','','','','','0444859e-5805-11ee-a580-000c29bea0b1'),
(5,1,5,'Alex Sales','','','','','','2de9e4ca-5805-11ee-a580-000c29bea0b1'),
(6,1,6,'Alex Sales 1 (Shery)','','','','','','4cc3458f-5805-11ee-a580-000c29bea0b1'),
(7,1,7,'Alex Sales 2 (Evro)','','','','','','970d4018-5805-11ee-a580-000c29bea0b1'),
(8,1,8,'','','','','','','b4e229da-5805-11ee-a580-000c29bea0b1'),
(9,1,9,'Cairo Sales 2 (M)','','','','','','dab7c4cb-5805-11ee-a580-000c29bea0b1'),
(10,1,10,'Karen','','','','','','ec616d1a-5805-11ee-a580-000c29bea0b1'),
(11,1,11,'MS. Irini','','','','','','01041637-5806-11ee-a580-000c29bea0b1'),
(12,1,12,'MS. Karen Akrm','','','','','','757d57a5-5806-11ee-a580-000c29bea0b1'),
(13,1,13,'MS. Karolin','','','','','','977adcea-5806-11ee-a580-000c29bea0b1'),
(14,1,14,'IT Micheal','','','','','','11f4f93a-580a-11ee-a580-000c29bea0b1'),
(15,1,15,'Voicemail InWorkTime','','','','','','15f61463-5a0e-11ee-ad03-000c29bea0b1'),
(16,1,16,'Voicemail OutWorkTime','','','','','','311db39c-5a0e-11ee-ad03-000c29bea0b1'),
(17,1,17,'Voicemail YoussefShakwa','','','','','','5a7e7ebd-5a0e-11ee-ad03-000c29bea0b1'),
(18,1,18,'Alex Sales 3 (Evro)','','','','','','8349c817-5a0e-11ee-ad03-000c29bea0b1'),
(19,1,19,'Test','','','','','','b5b44616-5a83-11ee-a328-000c29bea0b1'),
(20,1,20,'Cairo1','','','','','','e4a738b5-5c55-11ee-a941-000c29bea0b1'),
(21,1,21,'Cairo2','','','','','','f5a7ddf1-5c55-11ee-a941-000c29bea0b1'),
(22,1,22,'FilesVoicemail','','','','','','a67d5858-6325-11ee-a9bb-000c29bea0b1'),
(23,1,23,'Cairo Sales','','','','','','38cb2edd-637c-11ee-a9bb-000c29bea0b1'),
(24,1,24,'Cairo Sales 2 (Joly)','','','','','','93138cbd-6ab9-11ee-ac81-000c29bea0b1'),
(25,1,25,'ms.Ojonei','','','','','','a3f5e710-9514-11ee-ab85-000c29bea0b1'),
(26,1,26,'Shakwa','','','','','','312d6845-a7ba-11ee-a977-000c29bea0b1'),
(27,1,27,'Mina','','','','','','81aca19f-3339-11ef-aa3d-000c29bea0b1'),
(28,1,28,'Alex Sales ( Rewees )','','','','','','03cf11c3-67a5-11ef-a919-000c29bea0b1'),
(29,1,29,'Karla','','','','','','c33f3437-67b5-11ef-a919-000c29bea0b1'),
(30,1,31,'Alex Sales ( Nagy )','','','','','','342291ad-de44-11ef-ae20-000c29bea0b1'),
(31,1,32,'Malak Magdy Lawyer','','','','','','371c444d-2fcf-11f0-ad2e-000c29bea0b1'),
(32,1,33,'Ms. Veronica Medhat','','','','','','ba7d6a7d-87cd-11f0-8e63-000c29bea0b1'),
(33,1,34,'nad','nad','','','','','018a1ca2-87cf-11f0-8e63-000c29bea0b1'),
(34,1,35,'201283504660','','','','','','a58fe1cb-e17d-11f0-b95f-000c29bea0b1'),
(35,1,36,'','','','','','','4950b296-e3de-11f0-8c76-000c29bea0b1'),
(36,1,37,'','','','','','','6a74f815-e3de-11f0-8c76-000c29bea0b1'),
(37,1,38,'','','','','','','7c57c311-e3de-11f0-8c76-000c29bea0b1'),
(38,1,39,'','','','','','','8ee76a6d-e3de-11f0-8c76-000c29bea0b1');
/*!40000 ALTER TABLE `contactmanager_group_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactmanager_entry_numbers`
--

DROP TABLE IF EXISTS `contactmanager_entry_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactmanager_entry_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryid` int(11) NOT NULL,
  `number` varchar(100) DEFAULT NULL,
  `extension` varchar(100) DEFAULT NULL,
  `countrycode` varchar(4) DEFAULT NULL,
  `nationalnumber` varchar(100) DEFAULT NULL,
  `regioncode` varchar(2) DEFAULT NULL,
  `locale` varchar(2) DEFAULT NULL,
  `stripped` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `flags` varchar(100) DEFAULT NULL,
  `E164` varchar(100) DEFAULT NULL,
  `possibleshort` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=773 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactmanager_entry_numbers`
--

LOCK TABLES `contactmanager_entry_numbers` WRITE;
/*!40000 ALTER TABLE `contactmanager_entry_numbers` DISABLE KEYS */;
INSERT INTO `contactmanager_entry_numbers` VALUES
(365,8,'206','',NULL,NULL,NULL,'','206','internal','',NULL,NULL),
(736,2,'102','',NULL,NULL,NULL,'','102','internal','',NULL,NULL),
(737,3,'103','',NULL,NULL,NULL,'','103','internal','',NULL,NULL),
(738,4,'104','',NULL,NULL,NULL,'','104','internal','',NULL,NULL),
(739,5,'200','',NULL,NULL,NULL,'','200','internal','',NULL,NULL),
(740,6,'201','',NULL,NULL,NULL,'','201','internal','',NULL,NULL),
(741,7,'202','',NULL,NULL,NULL,'','202','internal','',NULL,NULL),
(742,9,'207','',NULL,NULL,NULL,'','207','internal','',NULL,NULL),
(743,10,'301','',NULL,NULL,NULL,'','301','internal','',NULL,NULL),
(744,11,'302','',NULL,NULL,NULL,'','302','internal','',NULL,NULL),
(745,12,'303','',NULL,NULL,NULL,'','303','internal','',NULL,NULL),
(746,13,'304','',NULL,NULL,NULL,'','304','internal','',NULL,NULL),
(747,14,'1002','',NULL,NULL,NULL,'','1002','internal','',NULL,NULL),
(748,15,'501','',NULL,NULL,NULL,'','501','internal','',NULL,NULL),
(749,16,'502','',NULL,NULL,NULL,'','502','internal','',NULL,NULL),
(750,17,'503','',NULL,NULL,NULL,'','503','internal','',NULL,NULL),
(751,18,'203','',NULL,NULL,NULL,'','203','internal','',NULL,NULL),
(752,19,'999','',NULL,NULL,NULL,'','999','internal','',NULL,NULL),
(753,20,'401','',NULL,NULL,NULL,'','401','internal','',NULL,NULL),
(754,21,'402','',NULL,NULL,NULL,'','402','internal','',NULL,NULL),
(755,22,'504','',NULL,NULL,NULL,'','504','internal','',NULL,NULL),
(756,23,'205','',NULL,NULL,NULL,'','205','internal','',NULL,NULL),
(757,24,'208','',NULL,NULL,NULL,'','208','internal','',NULL,NULL),
(758,25,'305','',NULL,NULL,NULL,'','305','internal','',NULL,NULL),
(759,26,'505','',NULL,NULL,NULL,'','505','internal','',NULL,NULL),
(760,27,'2424','',NULL,NULL,NULL,'','2424','internal','',NULL,NULL),
(761,28,'204','',NULL,NULL,NULL,'','204','internal','',NULL,NULL),
(762,29,'306','',NULL,NULL,NULL,'','306','internal','',NULL,NULL),
(763,30,'209','',NULL,NULL,NULL,'','209','internal','',NULL,NULL),
(764,31,'5050','',NULL,NULL,NULL,'','5050','internal','',NULL,NULL),
(765,33,'403','',NULL,NULL,NULL,'','403','internal','',NULL,NULL),
(766,34,'201283504660','',NULL,NULL,NULL,'','201283504660','internal','',NULL,NULL),
(768,36,'601','',NULL,NULL,NULL,'','601','internal','',NULL,NULL),
(769,37,'602','',NULL,NULL,NULL,'','602','internal','',NULL,NULL),
(770,38,'603','',NULL,NULL,NULL,'','603','internal','',NULL,NULL),
(771,35,'600','',NULL,NULL,NULL,'','600','internal','',NULL,NULL),
(772,1,'101','',NULL,NULL,NULL,'','101','internal','',NULL,NULL);
/*!40000 ALTER TABLE `contactmanager_entry_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactmanager_entry_emails`
--

DROP TABLE IF EXISTS `contactmanager_entry_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactmanager_entry_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryid` int(11) NOT NULL,
  `email` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactmanager_entry_emails`
--

LOCK TABLES `contactmanager_entry_emails` WRITE;
/*!40000 ALTER TABLE `contactmanager_entry_emails` DISABLE KEYS */;
INSERT INTO `contactmanager_entry_emails` VALUES
(67,22,'monicagirgis.salama@gmail.com,youssef.salamavoice@gmail.com'),
(68,25,'youssef@salamaservices.com'),
(69,28,'sherysalama1412@gmail.com,youssef.salamavoice@gmail.com'),
(70,29,'irini.salamaservice@gmail.com,youssef.salamavoice@gmail.com'),
(71,32,'veronicamedhat.youssefsalama@gmail.com,youssef.salamavoice@gmail.com'),
(72,33,'nadermagdy13579@gmail.com');
/*!40000 ALTER TABLE `contactmanager_entry_emails` ENABLE KEYS */;
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
