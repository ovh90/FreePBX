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
-- Table structure for table `cxpanel_conference_rooms`
--

DROP TABLE IF EXISTS `cxpanel_conference_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cxpanel_conference_rooms` (
  `cxpanel_conference_room_id` int(11) NOT NULL AUTO_INCREMENT,
  `conference_room_id` varchar(190) NOT NULL,
  `display_name` varchar(1000) NOT NULL,
  `add_conference_room` int(11) NOT NULL,
  PRIMARY KEY (`cxpanel_conference_room_id`),
  UNIQUE KEY `conference_room_id` (`conference_room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxpanel_conference_rooms`
--

LOCK TABLES `cxpanel_conference_rooms` WRITE;
/*!40000 ALTER TABLE `cxpanel_conference_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `cxpanel_conference_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cxpanel_email`
--

DROP TABLE IF EXISTS `cxpanel_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cxpanel_email` (
  `subject` varchar(1000) NOT NULL,
  `body` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxpanel_email`
--

LOCK TABLES `cxpanel_email` WRITE;
/*!40000 ALTER TABLE `cxpanel_email` DISABLE KEYS */;
INSERT INTO `cxpanel_email` VALUES
('iSymphony user login password','<img src=\"%%logo%%\"><br/><br/>Hello,<br/><br/> This email is to inform you of your iSymphony login credentials:<br/><br/><b>Username:</b> %%userId%%<br/><br/> <b>Password:</b> %%password%%<br/><br/> <a href=\"%%clientURL%%\">Click Here To Login</a>');
/*!40000 ALTER TABLE `cxpanel_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cxpanel_managed_items`
--

DROP TABLE IF EXISTS `cxpanel_managed_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cxpanel_managed_items` (
  `cxpanel_id` varchar(1000) NOT NULL,
  `fpbx_id` varchar(1000) NOT NULL,
  `type` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxpanel_managed_items`
--

LOCK TABLES `cxpanel_managed_items` WRITE;
/*!40000 ALTER TABLE `cxpanel_managed_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cxpanel_managed_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cxpanel_phone_number`
--

DROP TABLE IF EXISTS `cxpanel_phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cxpanel_phone_number` (
  `cxpanel_phone_number_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(1000) NOT NULL,
  `phone_number` varchar(1000) NOT NULL,
  `type` varchar(1000) NOT NULL,
  PRIMARY KEY (`cxpanel_phone_number_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxpanel_phone_number`
--

LOCK TABLES `cxpanel_phone_number` WRITE;
/*!40000 ALTER TABLE `cxpanel_phone_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `cxpanel_phone_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cxpanel_queues`
--

DROP TABLE IF EXISTS `cxpanel_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cxpanel_queues` (
  `cxpanel_queue_id` int(11) NOT NULL AUTO_INCREMENT,
  `queue_id` varchar(190) NOT NULL,
  `display_name` varchar(1000) NOT NULL,
  `add_queue` int(11) NOT NULL,
  PRIMARY KEY (`cxpanel_queue_id`),
  UNIQUE KEY `queue_id` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxpanel_queues`
--

LOCK TABLES `cxpanel_queues` WRITE;
/*!40000 ALTER TABLE `cxpanel_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cxpanel_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cxpanel_recording_agent`
--

DROP TABLE IF EXISTS `cxpanel_recording_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cxpanel_recording_agent` (
  `identifier` varchar(1000) NOT NULL,
  `directory` varchar(1000) NOT NULL,
  `resource_host` varchar(1000) NOT NULL,
  `resource_extension` varchar(1000) NOT NULL,
  `file_name_mask` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxpanel_recording_agent`
--

LOCK TABLES `cxpanel_recording_agent` WRITE;
/*!40000 ALTER TABLE `cxpanel_recording_agent` DISABLE KEYS */;
INSERT INTO `cxpanel_recording_agent` VALUES
('local-rec','/var/spool/asterisk/monitor','6d8e8389abd8','wav','${Tag(exten)}-${DstExtension}-${SrcExtension}-${Date(yyyyMMdd)}-${Time(HHmmss)}-${CDRUniqueId}');
/*!40000 ALTER TABLE `cxpanel_recording_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cxpanel_server`
--

DROP TABLE IF EXISTS `cxpanel_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cxpanel_server` (
  `name` varchar(1000) NOT NULL,
  `asterisk_host` varchar(1000) NOT NULL,
  `client_host` varchar(1000) NOT NULL,
  `client_port` int(11) NOT NULL,
  `client_use_ssl` int(11) NOT NULL,
  `api_host` varchar(1000) NOT NULL,
  `api_port` int(11) NOT NULL,
  `api_username` varchar(1000) NOT NULL,
  `api_password` varchar(1000) NOT NULL,
  `api_use_ssl` int(11) NOT NULL,
  `sync_with_userman` int(11) NOT NULL,
  `clean_unknown_items` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxpanel_server`
--

LOCK TABLES `cxpanel_server` WRITE;
/*!40000 ALTER TABLE `cxpanel_server` DISABLE KEYS */;
INSERT INTO `cxpanel_server` VALUES
('default','localhost','',58080,0,'localhost',58080,'manager','manag3rpa55word',0,1,1);
/*!40000 ALTER TABLE `cxpanel_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cxpanel_users`
--

DROP TABLE IF EXISTS `cxpanel_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cxpanel_users` (
  `cxpanel_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(190) NOT NULL,
  `display_name` varchar(1000) NOT NULL,
  `peer` varchar(1000) NOT NULL,
  `add_extension` int(11) NOT NULL,
  `full` int(11) NOT NULL,
  `add_user` int(11) NOT NULL,
  `hashed_password` varchar(1000) NOT NULL,
  `initial_password` varchar(1000) NOT NULL,
  `auto_answer` int(11) NOT NULL DEFAULT 1,
  `parent_user_id` varchar(1000) NOT NULL,
  `password_dirty` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cxpanel_user_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxpanel_users`
--

LOCK TABLES `cxpanel_users` WRITE;
/*!40000 ALTER TABLE `cxpanel_users` DISABLE KEYS */;
INSERT INTO `cxpanel_users` VALUES
(1,'101','MR. Youssef','SIP/101',1,1,1,'8d054ec2da5d854bed53ae92b0c08ddb3604704c','mJWY9dKrct',0,'101',1),
(2,'102','MS. Elham','SIP/102',1,1,1,'3e36930b78efb3557857938256532bb2d8146315','7DNkHybjL9',0,'102',1),
(3,'103','MS. Monica','SIP/103',1,1,1,'5ac76219e8bb1edff841b150445e87ef2d23971e','bcy34Pm7f2',0,'103',1),
(4,'104','MS. Christina','SIP/104',1,1,1,'f8b437be27394035a89ee085072e32005c088f20','kKmdrHQ98f',0,'104',1),
(5,'200','Alex Sales','SIP/200',1,1,1,'635fa48cd5a4aa0295c56ffd537c9062ef81ae26','Xqc4xVBRJ3',0,'200',1),
(6,'201','Alex Sales 1 (olivia)','SIP/201',1,1,1,'ba203e6161e7ada1f142523fdca3ba85b43f67f6','fMTDkZKtHR',0,'201',1),
(7,'202','Alex Sales 2 (Avrosina)','SIP/202',1,1,1,'dc1e761bba9e0e2ac5ffb6ee733be34f566e3440','YcKTQX6gL7',0,'202',1),
(8,'206','Cairo Sales 1 (Marina)','SIP/206',1,1,1,'84fdd810bfa1170d6ccb256a3ac9eef6789e4c47','82XQjNgH4m',0,'206',1),
(9,'207','Cairo Sales 2 (Marim W)','PJSIP/207',1,1,1,'7cc9cb1f703e4682ad343cb6980dcfa0f0fa5f43','jDpPgRTrd4',0,'207',1),
(10,'301','MS. Marian','SIP/301',1,1,1,'c26e7df5494628ad9613bbed15965dbc5defaa78','PJ8CrKhgW6',0,'301',1),
(11,'302','MS.Maha','SIP/302',1,1,1,'8a11eef060942ef98fc4124b5b652838867190b2','Ng3rqvxyGZ',0,'302',1),
(12,'303','MS. Karen Akrm','SIP/303',1,1,1,'bf754a7845e6e5bd29536a5b0f786f5c5a6fb70e','2wBKyzGcVj',0,'303',1),
(13,'304','MS. Caroline Hany','SIP/304',1,1,1,'a48a45432cd0d93a7f88abb6668efd89d54f290d','YXNwc7D6zg',0,'304',1),
(14,'1002','IT Micheal','SIP/1002',1,1,1,'8cae37928c2e4badac32ef1be051a795c90c7334','Wq3yN4DQFr',0,'1002',1),
(16,'502','Voicemail OutWorkTime','SIP/502',1,1,1,'9e2a0d512a487389bde0a4f1f1d709adc40a480e','gxCmqh8dTD',0,'502',1),
(17,'503','Voicemail YoussefShakwa','SIP/503',1,1,1,'aedfb086484aeb061a570920616ee85cb92f478d','4R7BGpYWgc',0,'503',1),
(18,'203','Alex Sales 3 (Mirana)','SIP/203',1,1,1,'405beda888e30d7f4b953e2d54356a42fec6be23','cPzb4gNWF3',0,'203',1),
(19,'999','Test','SIP/999',1,1,1,'6563e98c140f725dec1cad47f374e26d2ec94dd1','qVp7DPmFC8',0,'999',1),
(20,'501','Voicemail InWorkTime','SIP/501',1,1,1,'c9210aea8853218ded8eb6b7a445a5bdfcd8151c','cZpdLj3KNh',0,'501',1),
(21,'401','Ms. Mariz Saber','SIP/401',1,1,1,'2dc875dab8856118a746bfbdf49db22e2b9898fa','hcRM3nq6dt',0,'401',1),
(22,'402','Ms. Amalide','SIP/402',1,1,1,'da72445b3122dbe6928af99e9146be2b7110ae3f','gqM9yKQtjv',0,'402',1),
(23,'504','FilesVoicemail','SIP/504',1,1,1,'bc16903de7ddede428a3f566a4c8ac841ee08777','RZLqW6YCQ9',0,'504',1),
(24,'205','Cairo Sales','SIP/205',1,1,1,'89940d85f15ef78657104740b0579831f3924cf1','KMw4CPzGLf',0,'205',1),
(26,'305','ms.Ojonei','SIP/305',1,1,1,'17457a7b7cb0a70a0876659b75a1c95b43bbc57d','2Vckn8ZRPm',0,'305',1),
(28,'505','Shakwa','SIP/505',1,1,1,'f687bab2623aaa1ae97d129dc2be4f6b8dc16647','HwYcR8XL92',0,'505',1),
(29,'2424','Mina','SIP/2424',1,1,1,'b3ee92cf2702ff41c905b42ccad2701aa649ee7c','QCXwrm86y2',0,'2424',1),
(30,'204','Alex Sales ( Silvia )','SIP/204',1,1,1,'40243f2536760c35722fbabd4204beccd834e670','dt4k3T9wmL',0,'204',1),
(31,'306','Karla','SIP/306',1,1,1,'6b677d191dc597fead6e47044b07e2ef26831bac','VtPkZDBm4y',0,'306',1),
(33,'209','Alex Sales ( Nagy )','SIP/209',1,1,1,'2b25023a00cb5eb32626db4928dadb2f3f927a06','HMcRdtGWrZ',0,'209',1),
(34,'5050','Malak Magdy Lawyer','SIP/5050',1,1,1,'a6f533508204117779ffa1f14d65d75b8ac68beb','3ZQ9xVY8pJ',0,'5050',1),
(35,'403','Ms. Amy','SIP/403',1,1,1,'999a3423a2cd08fd4d1fea74a195442fa65c01ce','ZJMhRmx94b',0,'403',1),
(36,'201283504660','201283504660','SIP/201283504660',1,1,1,'037a72eb7a264231e7c6dcf05d2bfc692a7acd3c','8RrkMfyXCP',0,'201283504660',1),
(37,'603','Extension 603','SIP/603',1,1,1,'752812f0fabd0fc1021d99321dbb88f01a384700','V6L2bCfWHM',0,'603',0),
(38,'600','Extension 600','PJSIP/600',1,1,1,'d69201217abc9bc7366852ddf31e70097f9df0e3','cbgQfJnYx8',0,'600',0),
(39,'601','Extension 601','PJSIP/601',1,1,1,'33253d4a76794b357bc40e10824fe442d55033e1','bwXdPNFYC2',0,'601',0),
(40,'602','Extension 602','PJSIP/602',1,1,1,'429e26d66c1f5f95ee01d156a5158469a7993457','WK3DGq6zCV',0,'602',0),
(41,'604','Extension 604','PJSIP/604',1,1,1,'e5aa69f8ab1e491a5c4bc975f90234f7d1ceb7d5','JF87xjBCqT',0,'604',0),
(42,'605','Extension 605','PJSIP/605',1,1,1,'87fee5b93a42d4835e70fbcdfec680554f4e8db6','BbVdLwrR2D',0,'605',0),
(43,'606','Extension 606','PJSIP/606',1,1,1,'b391b10b02c00bc6658c4bf426b3bfa0b50047f4','rMYd6PBG4Q',0,'606',0),
(44,'607','Extension 607','PJSIP/607',1,1,1,'a75dd644a66bf4a631401bb43d2befe077922e94','9mYrzQ8v3x',0,'607',0),
(45,'608','Extension 608','PJSIP/608',1,1,1,'c4ef28a85b26ce6b7cf1995ed86181f9dfa44e06','fB8vh6yFk7',0,'608',0),
(46,'609','Extension 609','PJSIP/609',1,1,1,'744d0cd3d551679316c28c0de62001b0166d8a96','fm96M4RGFN',0,'609',0),
(47,'610','Extension 610','PJSIP/610',1,1,1,'741070715431f4336eb49af7ea93013fe24b182e','xTVj3zX6Yr',0,'610',0),
(48,'208','Cairo Sales 2 (Marim W)','PJSIP/208',1,1,1,'50ff521a6a6ce7b71db437d4765021a0ef256bd9','YwkJM6cNHT',0,'208',0);
/*!40000 ALTER TABLE `cxpanel_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cxpanel_voicemail_agent`
--

DROP TABLE IF EXISTS `cxpanel_voicemail_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cxpanel_voicemail_agent` (
  `identifier` varchar(1000) NOT NULL,
  `directory` varchar(1000) NOT NULL,
  `resource_host` varchar(1000) NOT NULL,
  `resource_extension` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxpanel_voicemail_agent`
--

LOCK TABLES `cxpanel_voicemail_agent` WRITE;
/*!40000 ALTER TABLE `cxpanel_voicemail_agent` DISABLE KEYS */;
INSERT INTO `cxpanel_voicemail_agent` VALUES
('local-vm','/var/spool/asterisk/voicemail','6d8e8389abd8','wav');
/*!40000 ALTER TABLE `cxpanel_voicemail_agent` ENABLE KEYS */;
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
