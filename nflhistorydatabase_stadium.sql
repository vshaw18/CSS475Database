CREATE DATABASE  IF NOT EXISTS `nflhistorydatabase` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `nflhistorydatabase`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: nflhistorydatabase.mysql.database.azure.com    Database: nflhistorydatabase
-- ------------------------------------------------------
-- Server version	5.6.42.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadium` (
  `stadiumName` varchar(30) NOT NULL,
  `T_homeTeam` varchar(30) NOT NULL,
  `yearBuilt` int(11) NOT NULL,
  `location` varchar(30) NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`stadiumName`,`T_homeTeam`),
  KEY `stadiumName` (`stadiumName`),
  KEY `T_homeTeam` (`T_homeTeam`),
  CONSTRAINT `stadium_ibfk_1` FOREIGN KEY (`T_homeTeam`) REFERENCES `team` (`teamName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES ('Ajou University','Gigaclub',1994,'Nerópolis',16306),('Armstrong Atlantic State Unive','Vitz',1996,'Chayuan',15383),('Atomi College','Centidel',1985,'Capitán Sarmiento',13911),('Busoga University','Wikibox',2011,'Nowogard',79709),('Eastern Washington University','Bubblebox',2006,'Micoud',87708),('Ecole Nationale Supérieure de ','Thoughtbeat',1988,'Dagup',40908),('Fujian Medical University','Dablist',2003,'Massenya',16384),('Ho Chi Minh City Open Universi','Edgetag',2001,'Bordeaux',55562),('Kandahar University','Fliptune',2008,'Azacualpa',33861),('Kawamura Gakuen Woman\'s Univer','Divape',1995,'Cravo Norte',38476),('Lancaster University Ghana','Buzzster',2012,'Bununu Dass',43911),('Liaoning Technical University','Jabbersphere',2008,'Pergamos',13586),('Majmaah University','LiveZ',2012,'Krajan',9521),('Marian College','Browsetype',1998,'Örbyhus',12957),('Medical Academy of Latvia','Tagopia',1991,'Haolibao',37708),('Misamis University','Linklinks',1995,'Paris 16',83286),('Ohio State University - Mansfi','Dabvine',2007,'Lyski',47468),('Pázmány Péter Catholic Univers','Yombu',2009,'Oesain',94144),('Roanoke College','Dabtype',1976,'Fairview',21763),('Russell Berrie Nanotechnology ','Tagpad',2006,'Liche? Stary',39517),('Seton Hall University','Quatz',2004,'Jinhe',52754),('St. Louis Christian College','Jayo',1995,'Luena',72627),('Stenden University','Viva',1992,'Longxian Chengguanzhen',60405),('Thammasat University','Zoomlounge',1998,'Monticello',8115),('The American College','Wikido',1989,'Gununganyar',75584),('Universidad Nacional de La Mat','Camido',1996,'Donostia-San Sebastian',66886),('Universidade São Marcos','Jetpulse',2004,'El Chol',36580),('Universitas 17 Agustus 1945 Se','Rhycero',2008,'Maiorca',96961),('Université de Kikwite','Fivespan',2000,'Kidangbang',56012),('University of Health and Scien','Brainbox',2002,'Xinsheng',76354),('Virgen Milagrosa University Fo','Riffwire',1993,'Fengcheng',83800),('Yaroslavl State Theatre Instit','Eimbee',2000,'Orlovat',43354);
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-15 23:49:36
