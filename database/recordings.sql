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
-- Table structure for table `recordings`
--

DROP TABLE IF EXISTS `recordings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `recordings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayname` varchar(50) DEFAULT NULL,
  `filename` longblob DEFAULT NULL,
  `description` varchar(254) DEFAULT NULL,
  `fcode` tinyint(1) DEFAULT 0,
  `fcode_pass` varchar(20) DEFAULT NULL,
  `fcode_lang` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordings`
--

LOCK TABLES `recordings` WRITE;
/*!40000 ALTER TABLE `recordings` DISABLE KEYS */;
INSERT INTO `recordings` VALUES
(1,'recording-consent-inbound','custom/recording-consent-inbound','Inbound call recording consent',0,NULL,NULL),
(2,'recording-consent-outbound','custom/recording-consent-outbound','Outbound call recording consent',0,NULL,NULL),
(3,'welcome-menu-PSTN','custom/welcome-menu-for-PSTN-callers','Welcome and menu for landline callers',0,NULL,NULL),
(4,'welcome-menu-mobile','custom/welcome-menu-for-mobile-callers','Welcome and menu for mobile callers',0,NULL,NULL),
(5,'announcement-holiday','custom/announcement-jan8','Holiday announcement',0,NULL,NULL),
(6,'enter-file-number','custom/Enter_FileNum','Enter file team extension',0,NULL,NULL),
(7,'error-retry','custom/Erorr_Retry','Error - please retry',0,NULL,NULL),
(8,'error-hangup','custom/Erorr_HungUp','Error - hanging up',0,NULL,NULL),
(9,'voicemail-after-beep','custom/Voicemail_After_Beeb','Leave message after beep',0,NULL,NULL),
(10,'all-lines-busy','custom/AllLineBasy','All lines are busy',0,NULL,NULL),
(11,'welcome-salama','custom/Welcome_Salama','Welcome to Salama Services',0,NULL,NULL),
(12,'busy-voicemail','custom/Bussy_Voicemail','Busy - leave voicemail',0,NULL,NULL),
(13,'menu-arabic','custom/02_-','Arabic main menu',0,NULL,NULL),
(14,'files-outworktime-voicemail','custom/Voicemail_File_AllNum','Files department out of hours voicemail message',0,NULL,NULL),
(15,'sales-busy-retry','custom/Bussy_and_Retry','Sales busy retry prompt (Egypt parity)',0,NULL,NULL);
/*!40000 ALTER TABLE `recordings` ENABLE KEYS */;
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
