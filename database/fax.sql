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
-- Table structure for table `fax_details`
--

DROP TABLE IF EXISTS `fax_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fax_details` (
  `key` varchar(50) DEFAULT NULL,
  `value` varchar(710) DEFAULT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fax_details`
--

LOCK TABLES `fax_details` WRITE;
/*!40000 ALTER TABLE `fax_details` DISABLE KEYS */;
INSERT INTO `fax_details` VALUES
('maxaction','delete'),
('maxpages','1000'),
('ecm','yes'),
('force_detection','no'),
('legacy_mode','no'),
('maxrate','14400'),
('minrate','14400');
/*!40000 ALTER TABLE `fax_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fax_users`
--

DROP TABLE IF EXISTS `fax_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fax_users` (
  `user` varchar(15) DEFAULT NULL,
  `faxenabled` varchar(10) DEFAULT NULL,
  `faxemail` longtext DEFAULT NULL,
  `faxattachformat` varchar(10) DEFAULT NULL,
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fax_users`
--

LOCK TABLES `fax_users` WRITE;
/*!40000 ALTER TABLE `fax_users` DISABLE KEYS */;
INSERT INTO `fax_users` VALUES
('1','true','','pdf'),
('2','true','','pdf'),
('3','true','','pdf'),
('4','true','','pdf'),
('5','true','','pdf'),
('6','true','','pdf'),
('7','true','','pdf'),
('8','true','','pdf'),
('9','true','','pdf'),
('10','true','','pdf'),
('11','true','','pdf'),
('12','true','','pdf'),
('13','true','','pdf'),
('14','true','','pdf'),
('15','true','','pdf'),
('16','true','','pdf'),
('17','true','','pdf'),
('18','true','','pdf'),
('19','true','','pdf'),
('20','true','','pdf'),
('21','true','','pdf'),
('22','true','monicagirgis.salama@gmail.com,youssef.salamavoice@gmail.com','pdf'),
('23','true','','pdf'),
('24','true','','pdf'),
('25','true','youssef@salamaservices.com','pdf'),
('26','true','','pdf'),
('27','true','','pdf'),
('28','true','sherysalama1412@gmail.com,youssef.salamavoice@gmail.com','pdf'),
('29','true','irini.salamaservice@gmail.com,youssef.salamavoice@gmail.com','pdf'),
('30','false','',NULL),
('31','true','','pdf'),
('32','true','','pdf'),
('33','true','veronicamedhat.youssefsalama@gmail.com,youssef.salamavoice@gmail.com','pdf'),
('34','true','nadermagdy13579@gmail.com','pdf'),
('35','true','','pdf'),
('36','true','','pdf'),
('37','true','','pdf'),
('38','true','','pdf'),
('39','true','','pdf');
/*!40000 ALTER TABLE `fax_users` ENABLE KEYS */;
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
