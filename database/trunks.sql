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
-- Table structure for table `trunks`
--

DROP TABLE IF EXISTS `trunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `trunks` (
  `trunkid` int(11) NOT NULL DEFAULT 0,
  `tech` varchar(20) NOT NULL,
  `channelid` varchar(190) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `outcid` varchar(255) NOT NULL DEFAULT '',
  `keepcid` varchar(4) DEFAULT 'off',
  `maxchans` varchar(6) DEFAULT '',
  `failscript` varchar(255) NOT NULL DEFAULT '',
  `dialoutprefix` varchar(255) NOT NULL DEFAULT '',
  `usercontext` varchar(255) DEFAULT NULL,
  `provider` varchar(40) DEFAULT NULL,
  `disabled` varchar(4) DEFAULT 'off',
  `continue` varchar(4) DEFAULT 'off',
  `routedisplay` varchar(4) DEFAULT 'on',
  PRIMARY KEY (`trunkid`,`tech`,`channelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trunks`
--

LOCK TABLES `trunks` WRITE;
/*!40000 ALTER TABLE `trunks` DISABLE KEYS */;
INSERT INTO `trunks` VALUES
(1,'pjsip','Yeastar-02','Yeastar-02','','off','','','','','','off','off','on'),
(2,'pjsip','YeastarGSM','YeastarGSM','','off','','','','','','off','off','on'),
(3,'pjsip','YeastarGSMCanada','YeastarGSMCanada','','off','','','','','','off','off','on');
/*!40000 ALTER TABLE `trunks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pjsip`
--

DROP TABLE IF EXISTS `pjsip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pjsip` (
  `id` varchar(20) NOT NULL DEFAULT '-1',
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `data` varchar(8100) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pjsip`
--

LOCK TABLES `pjsip` WRITE;
/*!40000 ALTER TABLE `pjsip` DISABLE KEYS */;
INSERT INTO `pjsip` VALUES
('1','allow_unauthenticated_options','off',0),
('1','aor_contact','',0),
('1','aors','',0),
('1','auth_rejection_permanent','off',0),
('1','auth_username','',0),
('1','authentication','off',0),
('1','client_uri','',0),
('1','codecs','ulaw,alaw,gsm,h264,mpeg4',0),
('1','contact_user','',0),
('1','context','from-pstn',0),
('1','dialopts','',0),
('1','dialoutopts_cb','sys',0),
('1','direct_media','no',0),
('1','disabletrunk','off',0),
('1','dtmfmode','auto',0),
('1','expiration','3600',0),
('1','extdisplay','',0),
('1','failtrunk_enable','0',0),
('1','fatal_retry_interval','30',0),
('1','fax_detect','no',0),
('1','forbidden_retry_interval','30',0),
('1','force_rport','yes',0),
('1','from_domain','',0),
('1','from_user','',0),
('1','hcid','on',0),
('1','identify_by','default',0),
('1','inband_progress','no',0),
('1','language','',0),
('1','match','41.129.148.49 ',0),
('1','max_retries','10000',0),
('1','maxchans','',0),
('1','media_address','',0),
('1','media_encryption','no',0),
('1','message_context','',0),
('1','npanxx','',0),
('1','outbound_proxy','',0),
('1','peerdetails','',0),
('1','pjsip_line','true',0),
('1','qualify_frequency','60',0),
('1','register','',0),
('1','registration','none',0),
('1','retry_interval','60',0),
('1','rewrite_contact','no',0),
('1','rtp_symmetric','yes',0),
('1','secret','',0),
('1','send_connected_line','no',0),
('1','sendrpid','no',0),
('1','server_uri','',0),
('1','sip_server','41.129.148.49',0),
('1','sip_server_port','5060',0),
('1','support_path','no',0),
('1','sv_channelid','',0),
('1','sv_trunk_name','',0),
('1','sv_usercontext','',0),
('1','t38_udptl','no',0),
('1','t38_udptl_ec','none',0),
('1','t38_udptl_maxdatagram','',0),
('1','t38_udptl_nat','no',0),
('1','transport','0.0.0.0-udp',0),
('1','trunk_name','Yeastar-02',0),
('1','trust_id_outbound','no',0),
('1','trust_rpid','no',0),
('1','user_eq_phone','no',0),
('1','userconfig','',0),
('1','username','',0),
('2','allow_unauthenticated_options','off',0),
('2','aor_contact','',0),
('2','aors','',0),
('2','auth_rejection_permanent','off',0),
('2','auth_username','',0),
('2','authentication','off',0),
('2','client_uri','',0),
('2','codecs','ulaw,alaw,gsm,h264,mpeg4',0),
('2','contact_user','',0),
('2','context','from-pstn',0),
('2','dialopts','',0),
('2','dialoutopts_cb','sys',0),
('2','direct_media','no',0),
('2','disabletrunk','off',0),
('2','dtmfmode','auto',0),
('2','expiration','3600',0),
('2','extdisplay','',0),
('2','failtrunk_enable','0',0),
('2','fatal_retry_interval','30',0),
('2','fax_detect','no',0),
('2','forbidden_retry_interval','30',0),
('2','force_rport','yes',0),
('2','from_domain','',0),
('2','from_user','',0),
('2','hcid','on',0),
('2','identify_by','default',0),
('2','inband_progress','no',0),
('2','language','',0),
('2','match','41.129.148.49 ',0),
('2','max_retries','10000',0),
('2','maxchans','',0),
('2','media_address','',0),
('2','media_encryption','no',0),
('2','message_context','',0),
('2','npanxx','',0),
('2','outbound_proxy','',0),
('2','peerdetails','',0),
('2','pjsip_line','true',0),
('2','qualify_frequency','60',0),
('2','register','',0),
('2','registration','none',0),
('2','retry_interval','60',0),
('2','rewrite_contact','no',0),
('2','rtp_symmetric','yes',0),
('2','secret','',0),
('2','send_connected_line','no',0),
('2','sendrpid','no',0),
('2','server_uri','',0),
('2','sip_server','41.129.148.49',0),
('2','sip_server_port','5061',0),
('2','support_path','no',0),
('2','sv_channelid','',0),
('2','sv_trunk_name','',0),
('2','sv_usercontext','',0),
('2','t38_udptl','no',0),
('2','t38_udptl_ec','none',0),
('2','t38_udptl_maxdatagram','',0),
('2','t38_udptl_nat','no',0),
('2','transport','0.0.0.0-udp',0),
('2','trunk_name','YeastarGSM',0),
('2','trust_id_outbound','no',0),
('2','trust_rpid','no',0),
('2','user_eq_phone','no',0),
('2','userconfig','',0),
('2','username','',0),
('3','allow_unauthenticated_options','off',0),
('3','aor_contact','',0),
('3','aors','',0),
('3','auth_rejection_permanent','off',0),
('3','auth_username','',0),
('3','authentication','off',0),
('3','client_uri','',0),
('3','codecs','ulaw,alaw,gsm,h264,mpeg4',0),
('3','contact_user','',0),
('3','context','from-pstn',0),
('3','dialopts','',0),
('3','dialoutopts_cb','sys',0),
('3','direct_media','no',0),
('3','disabletrunk','off',0),
('3','dtmfmode','auto',0),
('3','expiration','3600',0),
('3','extdisplay','OUT_3',0),
('3','failtrunk_enable','0',0),
('3','fatal_retry_interval','30',0),
('3','fax_detect','no',0),
('3','forbidden_retry_interval','30',0),
('3','force_rport','yes',0),
('3','from_domain','',0),
('3','from_user','',0),
('3','hcid','on',0),
('3','identify_by','default',0),
('3','inband_progress','no',0),
('3','language','',0),
('3','match','gsmcanda.hopto.org',0),
('3','max_retries','10000',0),
('3','maxchans','',0),
('3','media_address','',0),
('3','media_encryption','sdes',0),
('3','message_context','',0),
('3','npanxx','',0),
('3','outbound_proxy','',0),
('3','peerdetails','',0),
('3','pjsip_line','true',0),
('3','qualify_frequency','60',0),
('3','register','',0),
('3','registration','none',0),
('3','retry_interval','60',0),
('3','rewrite_contact','no',0),
('3','rtp_symmetric','yes',0),
('3','secret','',0),
('3','send_connected_line','no',0),
('3','sendrpid','no',0),
('3','server_uri','',0),
('3','sip_server','gsmcanda.hopto.org',0),
('3','sip_server_port','8899',0),
('3','support_path','no',0),
('3','sv_channelid','YeastarGSMCanada',0),
('3','sv_trunk_name','YeastarGSMCanada',0),
('3','sv_usercontext','',0),
('3','t38_udptl','no',0),
('3','t38_udptl_ec','none',0),
('3','t38_udptl_maxdatagram','',0),
('3','t38_udptl_nat','no',0),
('3','transport','0.0.0.0-tls',0),
('3','trunk_name','YeastarGSMCanada',0),
('3','trust_id_outbound','no',0),
('3','trust_rpid','no',0),
('3','user_eq_phone','no',0),
('3','userconfig','',0),
('3','username','',0);
/*!40000 ALTER TABLE `pjsip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-12  3:49:12
