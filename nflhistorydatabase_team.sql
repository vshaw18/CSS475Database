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
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `teamName` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `owner` varchar(30) NOT NULL,
  PRIMARY KEY (`teamName`),
  KEY `teamName` (`teamName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('Avavee','Pacov','Hube Karpol'),('Brainbox','Xinsheng','Clementius Cornfoot'),('Browsetype','rbyhus','Arman Coutts'),('Bubblebox','Micoud','Jill Brunsden'),('Bubbletube','Balengbeng','Sibeal Lawlor'),('Buzzster','Bununu Dass','Beatrisa Wilshire'),('Camido','Donostia-San Sebastian','Currie MacShane'),('Centidel','Capit Sarmiento','Hilary Bettenson'),('Dablist','Massenya','Buddy Donnell'),('Dabtype','Fairview','Connie Peartree'),('Dabvine','Lyski','Almeria Brandone'),('Digitube','Cuarto','Bambi Lestor'),('Divape','Cravo Norte','Alfy Ovett'),('Eazzy','Huangmao','Neal Rule'),('Edgetag','Bordeaux','Giacobo Torbet'),('Eimbee','Orlovat','Correna Burkitt'),('Fivespan','Kidangbang','Feodor Redhole'),('Fliptune','Azacualpa','Dena Stonelake'),('Gigabox','Inari','Andres Rabat'),('Gigaclub','Nerpolis','Genna Paintain'),('Innotype','irvan','Duffie Moxsom'),('Jabbersphere','Pergamos','Tedd Bywater'),('Jayo','Luena','Claudia Birchall'),('Jetpulse','El Chol','Kalli Hazzard'),('Kaymbo','Atsugi','Ina Petrosian'),('Linklinks','Paris 16','Garold Halfhyde'),('LiveZ','Krajan','Elsinore Amar'),('Meezzy','Washington','Daisey McLucas'),('Oyoba','Paris 09','Torrin Semiras'),('Oyonder','Xiexiong','Elle Jirsa'),('Quatz','Jinhe','Linda Quinnelly'),('Realpoint','Batang','Burnaby Harget'),('Rhycero','Maiorca','Nana Ivanchikov'),('Riffwire','Fengcheng','Ellene Hawksby'),('Skimia','Otaru','Kristin Neilands'),('Skipfire','Matabao','Wait Elsegood'),('Tagopia','Haolibao','Oswald Millbank'),('Tagpad','Stary','Annnora Giovannetti'),('Thoughtbeat','Dagup','Hortense Pietron'),('Vitz','Chayuan','Colline McGilroy'),('Viva','Longxian Chengguanzhen','Gwenette Saura'),('Voolia','Jianli','Yorker Mandre'),('Wikibox','Nowogard','Bree Rothon'),('Wikido','Gununganyar','Shawna Brennand'),('Yombu','Oesain','Brendan Rae'),('Zoomlounge','Monticello','Ashlie Linzee');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-15 23:49:37
