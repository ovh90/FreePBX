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
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
('209','','Alex Sales (Nagy)','novm',0,'','','','','','','','','','','default'),
('205','','Cairo Sales','novm',0,'','','','','','','','','','','default'),
('200','','Alex Sales','novm',0,'','','','','','','','','','','default'),
('203','','Alex Sales 3 (Mirana)','novm',0,'','','','','','','','','','','default'),
('5050','','Malak Magdy Lawyer','novm',0,'','','','','','','','','','','default'),
('505','','Shakwa','default',0,'','','','','','','','','','','default'),
('502','','Voicemail OutWorkTime','default',0,'','','','','','','','','','','default'),
('999','','Test','default',0,'','','','','','','','','','','default'),
('610','','Extension 610','default',0,'','','','','','','','','','','default'),
('609','','Extension 609','default',0,'','','','','','','','','','','default'),
('608','','Extension 608','default',0,'','','','','','','','','','','default'),
('607','','Extension 607','default',0,'','','','','','','','','','','default'),
('606','','Extension 606','default',0,'','','','','','','','','','','default'),
('605','','Extension 605','default',0,'','','','','','','','','','','default'),
('604','','Extension 604','default',0,'','','','','','','','','','','default'),
('603','','Extension 603','default',0,'','','','','','','','','','','default'),
('602','','Extension 602','default',0,'','','','','','','','','','','default'),
('601','','Extension 601','default',0,'','','','','','','','','','','default'),
('600','','Extension 600','default',0,'','','','','','','','','','','default'),
('503','','Voicemail YoussefShakwa','default',0,'','','','','','','','','','','default'),
('1002','','IT Micheal','novm',0,'','','','','','','','','','','default'),
('101','','MR. Youssef','default',0,'','','','','','','','','','','default'),
('102','','MS. Elham','default',0,'','','','','','','','','','','default'),
('103','','MS. Monica','default',0,'','','','','','','','','','','default'),
('104','','MS. Christina','default',0,'','','','','','','','','','','default'),
('201','','Alex Sales 1 (Olivia)','default',0,'','','','','','','','','','','default'),
('202','','Alex Sales 2 (Avrosina)','default',0,'','','','','','','','','','','default'),
('204','','Alex Sales (Silvia)','default',0,'','','','','','','','','','','default'),
('206','','Cairo Sales 1 (Marina)','default',0,'','','','','','','','','','','default'),
('207','','Cairo Sales 2 (Marim W)','default',0,'','','','','','','','','','','default'),
('301','','MS. Marian','default',0,'','','','','','','','','','','default'),
('302','','MS. Maha','default',0,'','','','','','','','','','','default'),
('303','','MS. Karen Akrm','default',0,'','','','','','','','','','','default'),
('304','','MS. Caroline Hany','default',0,'','','','','','','','','','','default'),
('305','','MS. Ojonei','default',0,'','','','','','','','','','','default'),
('306','','Karla','default',0,'','','','','','','','','','','default'),
('401','','Ms. Mariz Saber','default',0,'','','','','','','','','','','default'),
('402','','Ms. Amalide','default',0,'','','','','','','','','','','default'),
('403','','Ms. Amy','default',0,'','','','','','','','','','','default'),
('501','','Voicemail InWorkTime','default',0,'','','','','','','','','','','default'),
('504','','FilesVoicemail','default',0,'','','','','','','','','','','default'),
('208','','Cairo Sales 3 (Marim W)','default',0,'','','','','','','','','','','default');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES
('209','pjsip','PJSIP/209','fixed','209','Alex Sales (Nagy)','',NULL),
('205','pjsip','PJSIP/205','fixed','205','Cairo Sales','',NULL),
('200','pjsip','PJSIP/200','fixed','200','Alex Sales','',NULL),
('203','pjsip','PJSIP/203','fixed','203','Alex Sales 3 (Mirana)','',NULL),
('5050','pjsip','PJSIP/5050','fixed','5050','Malak Magdy Lawyer','',NULL),
('505','pjsip','PJSIP/505','fixed','505','Shakwa','',NULL),
('502','pjsip','PJSIP/502','fixed','502','Voicemail OutWorkTime','',NULL),
('999','pjsip','PJSIP/999','fixed','999','Test','',NULL),
('610','pjsip','PJSIP/610','fixed','610','Extension 610','',NULL),
('609','pjsip','PJSIP/609','fixed','609','Extension 609','',NULL),
('608','pjsip','PJSIP/608','fixed','608','Extension 608','',NULL),
('607','pjsip','PJSIP/607','fixed','607','Extension 607','',NULL),
('606','pjsip','PJSIP/606','fixed','606','Extension 606','',NULL),
('605','pjsip','PJSIP/605','fixed','605','Extension 605','',NULL),
('604','pjsip','PJSIP/604','fixed','604','Extension 604','',NULL),
('603','pjsip','PJSIP/603','fixed','603','Extension 603','',NULL),
('602','pjsip','PJSIP/602','fixed','602','Extension 602','',NULL),
('601','pjsip','PJSIP/601','fixed','601','Extension 601','',NULL),
('600','pjsip','PJSIP/600','fixed','600','Extension 600','',NULL),
('503','pjsip','PJSIP/503','fixed','503','Voicemail YoussefShakwa','',NULL),
('1002','pjsip','PJSIP/1002','fixed','1002','IT Micheal','',NULL),
('101','pjsip','PJSIP/101','fixed','101','MR. Youssef','',NULL),
('102','pjsip','PJSIP/102','fixed','102','MS. Elham','',NULL),
('103','pjsip','PJSIP/103','fixed','103','MS. Monica','',NULL),
('104','pjsip','PJSIP/104','fixed','104','MS. Christina','',NULL),
('201','pjsip','PJSIP/201','fixed','201','Alex Sales 1 (Olivia)','',NULL),
('202','pjsip','PJSIP/202','fixed','202','Alex Sales 2 (Avrosina)','',NULL),
('204','pjsip','PJSIP/204','fixed','204','Alex Sales (Silvia)','',NULL),
('206','pjsip','PJSIP/206','fixed','206','Cairo Sales 1 (Marina)','',NULL),
('207','pjsip','PJSIP/207','fixed','207','Cairo Sales 2 (Marim W)','',NULL),
('301','pjsip','PJSIP/301','fixed','301','MS. Marian','',NULL),
('302','pjsip','PJSIP/302','fixed','302','MS. Maha','',NULL),
('303','pjsip','PJSIP/303','fixed','303','MS. Karen Akrm','',NULL),
('304','pjsip','PJSIP/304','fixed','304','MS. Caroline Hany','',NULL),
('305','pjsip','PJSIP/305','fixed','305','MS. Ojonei','',NULL),
('306','pjsip','PJSIP/306','fixed','306','Karla','',NULL),
('401','pjsip','PJSIP/401','fixed','401','Ms. Mariz Saber','',NULL),
('402','pjsip','PJSIP/402','fixed','402','Ms. Amalide','',NULL),
('403','pjsip','PJSIP/403','fixed','403','Ms. Amy','',NULL),
('501','pjsip','PJSIP/501','fixed','501','Voicemail InWorkTime','',NULL),
('504','pjsip','PJSIP/504','fixed','504','FilesVoicemail','',NULL),
('208','pjsip','PJSIP/208','fixed','208','Cairo Sales 3 (Marim W)','',NULL);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-12  5:06:03
