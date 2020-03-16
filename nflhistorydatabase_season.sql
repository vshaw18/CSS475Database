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
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `season` (
  `year` int(11) NOT NULL,
  `T_championTeam` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`year`),
  KEY `year` (`year`),
  KEY `T_championTeam` (`T_championTeam`),
  CONSTRAINT `season_ibfk_1` FOREIGN KEY (`T_championTeam`) REFERENCES `team` (`teamName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (2020,NULL),(1941,'Avavee'),(1942,'Avavee'),(1908,'Browsetype'),(1929,'Browsetype'),(1949,'Browsetype'),(1987,'Browsetype'),(2008,'Browsetype'),(1945,'Bubblebox'),(1974,'Bubblebox'),(1907,'Bubbletube'),(1998,'Bubbletube'),(1991,'Buzzster'),(1995,'Buzzster'),(1906,'Camido'),(1986,'Camido'),(1935,'Centidel'),(1912,'Dablist'),(1925,'Dablist'),(1990,'Dablist'),(1994,'Dablist'),(1933,'Dabvine'),(1980,'Dabvine'),(2017,'Dabvine'),(1909,'Digitube'),(1910,'Digitube'),(1922,'Digitube'),(1900,'Divape'),(1902,'Divape'),(1928,'Divape'),(1901,'Eazzy'),(1951,'Eazzy'),(1968,'Eazzy'),(2007,'Eazzy'),(1964,'Edgetag'),(2009,'Edgetag'),(1956,'Eimbee'),(1926,'Fivespan'),(1952,'Fivespan'),(1924,'Fliptune'),(1943,'Gigabox'),(1977,'Gigabox'),(2015,'Gigabox'),(1954,'Gigaclub'),(1966,'Gigaclub'),(1936,'Innotype'),(1937,'Innotype'),(1958,'Innotype'),(2012,'Innotype'),(1932,'Jabbersphere'),(1931,'Jayo'),(1976,'Jayo'),(1948,'Jetpulse'),(2004,'Jetpulse'),(1905,'Kaymbo'),(1903,'Linklinks'),(1962,'Linklinks'),(1904,'LiveZ'),(1957,'LiveZ'),(1978,'LiveZ'),(2001,'LiveZ'),(2005,'LiveZ'),(2010,'LiveZ'),(2013,'LiveZ'),(1940,'Meezzy'),(1946,'Meezzy'),(1988,'Meezzy'),(2016,'Meezzy'),(1960,'Oyoba'),(1973,'Oyoba'),(1913,'Oyonder'),(1923,'Oyonder'),(1970,'Oyonder'),(1969,'Quatz'),(1971,'Quatz'),(1972,'Quatz'),(1918,'Realpoint'),(1993,'Rhycero'),(2018,'Rhycero'),(1914,'Riffwire'),(1917,'Riffwire'),(1920,'Skimia'),(1950,'Skimia'),(1975,'Skimia'),(1927,'Skipfire'),(1938,'Skipfire'),(1944,'Skipfire'),(1961,'Skipfire'),(1955,'Tagopia'),(1982,'Tagopia'),(2002,'Tagopia'),(2003,'Tagopia'),(2011,'Tagopia'),(1916,'Tagpad'),(1919,'Tagpad'),(1992,'Tagpad'),(1934,'Thoughtbeat'),(1963,'Thoughtbeat'),(1996,'Thoughtbeat'),(2006,'Thoughtbeat'),(2019,'Thoughtbeat'),(1921,'Vitz'),(1965,'Vitz'),(1984,'Viva'),(1989,'Viva'),(1930,'Voolia'),(1953,'Wikibox'),(1959,'Wikibox'),(1983,'Wikibox'),(1999,'Wikibox'),(1985,'Wikido'),(1939,'Yombu'),(1947,'Yombu'),(1981,'Yombu'),(1911,'Zoomlounge'),(1915,'Zoomlounge'),(1967,'Zoomlounge'),(1979,'Zoomlounge'),(1997,'Zoomlounge'),(2000,'Zoomlounge'),(2014,'Zoomlounge');
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-15 23:49:32
