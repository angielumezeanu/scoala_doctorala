-- MySQL dump 10.13  Distrib 5.6.38, for Linux (x86_64)
--
-- Host: localhost    Database: heroku_a43691dc45a3fe9
-- ------------------------------------------------------
-- Server version	5.6.38-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `registration_year` int(11) DEFAULT NULL,
  `coordinator_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `examination_type_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `defense_date` date DEFAULT NULL,
  `comitee` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_activities_on_coordinator_id` (`coordinator_id`),
  KEY `index_activities_on_student_id` (`student_id`),
  KEY `index_activities_on_examination_type_id` (`examination_type_id`),
  CONSTRAINT `fk_rails_7e4e5e893b` FOREIGN KEY (`coordinator_id`) REFERENCES `coordinators` (`id`),
  CONSTRAINT `fk_rails_cd904532e7` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `fk_rails_f0224929c1` FOREIGN KEY (`examination_type_id`) REFERENCES `examination_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','production','2018-07-17 06:53:38','2018-07-17 06:53:38');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinators`
--

DROP TABLE IF EXISTS `coordinators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordinators` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `decree` varchar(255) DEFAULT NULL,
  `remarks` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ordin` varchar(255) DEFAULT NULL,
  `sgroup` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `institut_date` date DEFAULT NULL,
  `cnp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinators`
--

LOCK TABLES `coordinators` WRITE;
/*!40000 ALTER TABLE `coordinators` DISABLE KEYS */;
INSERT INTO `coordinators` VALUES (2,'CSI dr.','Susana','Andea','1956-02-05','3859/31.03.2006','','2018-07-17 07:46:46','2018-07-17 08:22:22',NULL,'Istorie medievala','eandeas@yahoo.co.uk','0751301785','Clinicilor nr. 24 ap. 9',NULL,'2560205120662'),(12,'CSI dr.','Stelian ','Mândruț','1951-08-17','3859/31.03.2006','','2018-07-17 08:26:59','2018-07-17 08:26:59',NULL,'Istorie contempoana','Smandrut1989@gmail.com','0746480640','Sesului nr. 14 ap. 14',NULL,'1510817120689'),(22,'CSI dr.','Dumitru','Suciu','1944-03-06','3003/07.01.2004','','2018-07-17 08:33:41','2018-07-17 08:33:41',NULL,'Istorie modernă','istorie@academia-cj.ro','0746251883','Actorului nr. 8',NULL,'1440306120664'),(32,'CSI dr.','Simion','Retegan','1939-03-16','4794/16.04.1993','','2018-07-17 08:38:47','2018-07-17 08:38:47',NULL,'Istorie modernă','simion.retegan@gmail.com','0734880802','Fagului nr. 68',NULL,'1390316120699'),(42,'CSI dr.','Gheorghe','Iancu','1942-07-01','3204/1996','','2018-07-17 08:41:21','2018-07-17 08:42:06',NULL,'Istorie contemporana','istorie@academia-cj.ro','0722513763','Fântânele nr. 59, ap. 8',NULL,'1420701120685');
/*!40000 ALTER TABLE `coordinators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examination_types`
--

DROP TABLE IF EXISTS `examination_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examination_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination_types`
--

LOCK TABLES `examination_types` WRITE;
/*!40000 ALTER TABLE `examination_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `examination_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20180301093421'),('20180301093744'),('20180301093810'),('20180301093833'),('20180322090628'),('20180622081235'),('20180622081805'),('20180622082849'),('20180622083939'),('20180622085927'),('20180622090251'),('20180716070822');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `matdate` date DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `coordinator_id` bigint(20) DEFAULT NULL,
  `remarks` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_students_on_coordinator_id` (`coordinator_id`),
  CONSTRAINT `fk_rails_351cb154e1` FOREIGN KEY (`coordinator_id`) REFERENCES `coordinators` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (2,'T. Mihai','Kovács','2016-11-01','1990-12-31',756469207,'kovm2005@gmail.com','Călan, Florilor nr. 28','Liceul Teologic Romano-Catolic, Alba Iulia',2,'','2018-07-17 09:17:00','2018-07-17 09:24:37'),(12,'V. Marius-Adrian','Florea ','2017-11-01','1967-02-24',746255032,'mariusflorea.cj@gmail.com','Cluj-Napoca, str. Tecuci nr. 2 ap. 41','Institutul de Istorie ”G. Barițiu” Cluj-Napoca',2,'','2018-07-17 09:22:07','2018-07-17 09:22:07'),(22,'V. Emilia','Mățan-Dragoste','2016-11-01','1977-10-19',741019520,'emilia_matan@yahoo.com','Cluj-Napoca, Plopilor nr. 75 ap. 77','asistent manager, ...',12,'','2018-07-17 09:29:41','2018-07-17 09:29:41'),(32,'S. Ioan Alexandru','Heltianu','2016-11-01','1990-02-26',749124561,'alex.heltianu@gmail.com','Sascut, str. Stadionului nr. 611','arhivist, istoric ...',12,'transfer de la N.Edroiu conform aprobarii SCOSAAR nr. ','2018-07-17 09:34:10','2018-07-17 09:34:10');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'angie.lumezeanu@gmail.com','$2a$11$c4s26P.PPLZSN1ThKK3TgeZNKNsL./yu40iPetcDEXPXwWY5urdAu','Angie',NULL,NULL,NULL,1,'2018-07-17 07:01:56','2018-07-17 07:01:56','5.2.198.37','5.2.198.37','2018-07-17 07:00:27','2018-07-17 07:01:56'),(12,'istorie@academia-cj.ro','$2a$11$C6M23LH29t0qIJZdp90FAOoGJp1dEV23ZhpeOYUt8EUOs9/67iC4e','Codruta',NULL,NULL,NULL,3,'2018-07-17 07:44:15','2018-07-17 07:40:43','5.2.198.37','5.2.198.37','2018-07-17 07:01:42','2018-07-17 07:44:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-18  3:17:29
