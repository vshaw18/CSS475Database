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
-- Table structure for table `played_for`
--

DROP TABLE IF EXISTS `played_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `played_for` (
  `P_playerID` int(11) NOT NULL,
  `T_teamName` varchar(30) NOT NULL,
  `S_year` int(11) NOT NULL,
  PRIMARY KEY (`P_playerID`,`T_teamName`,`S_year`),
  KEY `T_teamName` (`T_teamName`),
  KEY `S_year` (`S_year`),
  CONSTRAINT `played_for_ibfk_1` FOREIGN KEY (`P_playerID`) REFERENCES `player` (`playerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `played_for_ibfk_2` FOREIGN KEY (`T_teamName`) REFERENCES `team` (`teamName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `played_for_ibfk_3` FOREIGN KEY (`S_year`) REFERENCES `season` (`year`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `played_for`
--

LOCK TABLES `played_for` WRITE;
/*!40000 ALTER TABLE `played_for` DISABLE KEYS */;
INSERT INTO `played_for` VALUES (1,'Edgetag',1900),(56,'Eazzy',1900),(192,'Viva',1900),(218,'Jetpulse',1900),(251,'Dablist',1900),(457,'Eazzy',1900),(495,'Skipfire',1900),(97,'Fliptune',1901),(211,'Eazzy',1901),(384,'Wikibox',1901),(426,'Dablist',1901),(497,'Meezzy',1901),(549,'Digitube',1901),(576,'Eimbee',1901),(802,'Zoomlounge',1901),(806,'Digitube',1901),(105,'Avavee',1902),(142,'Jayo',1902),(166,'Digitube',1902),(411,'Camido',1902),(554,'Zoomlounge',1902),(765,'Jetpulse',1902),(911,'Gigaclub',1902),(42,'Vitz',1903),(104,'Wikido',1903),(140,'Oyoba',1903),(258,'Rhycero',1903),(320,'Bubbletube',1903),(371,'Jetpulse',1903),(676,'Rhycero',1903),(789,'Gigabox',1903),(924,'Kaymbo',1903),(937,'Wikido',1903),(942,'Edgetag',1903),(23,'Rhycero',1904),(283,'Jetpulse',1904),(497,'Voolia',1904),(629,'Eazzy',1904),(788,'Gigabox',1904),(111,'Edgetag',1905),(187,'Vitz',1905),(211,'Dabtype',1905),(812,'Riffwire',1905),(824,'Quatz',1905),(838,'Jayo',1905),(956,'Oyoba',1905),(150,'Avavee',1906),(161,'Eazzy',1906),(318,'Jayo',1906),(571,'Zoomlounge',1906),(830,'Voolia',1906),(901,'Vitz',1906),(902,'Divape',1906),(924,'Linklinks',1906),(164,'Skimia',1907),(238,'Jabbersphere',1907),(245,'Fliptune',1907),(250,'Browsetype',1907),(252,'Vitz',1907),(355,'Fliptune',1907),(726,'Zoomlounge',1907),(779,'Viva',1907),(925,'Wikibox',1907),(964,'Jetpulse',1907),(82,'Oyoba',1908),(224,'Meezzy',1908),(228,'Digitube',1908),(275,'Dabtype',1908),(303,'Gigaclub',1908),(396,'Browsetype',1908),(523,'Digitube',1908),(539,'Quatz',1908),(565,'Gigaclub',1908),(742,'Jetpulse',1908),(850,'Gigabox',1908),(948,'Jetpulse',1908),(26,'Linklinks',1909),(233,'Dabtype',1909),(473,'Oyoba',1909),(979,'Divape',1909),(33,'Divape',1910),(281,'Rhycero',1910),(551,'LiveZ',1910),(739,'Eimbee',1910),(750,'Dablist',1910),(759,'Skipfire',1910),(986,'Thoughtbeat',1910),(122,'Browsetype',1911),(124,'Tagpad',1911),(255,'Linklinks',1911),(328,'Tagpad',1911),(682,'Fliptune',1911),(770,'Digitube',1911),(823,'LiveZ',1911),(891,'Wikido',1911),(123,'Browsetype',1912),(329,'Tagpad',1912),(492,'Wikibox',1912),(543,'Wikibox',1912),(698,'Jabbersphere',1912),(880,'Realpoint',1912),(896,'Vitz',1912),(473,'LiveZ',1913),(730,'Jayo',1913),(846,'Fivespan',1913),(954,'Linklinks',1913),(183,'Meezzy',1914),(249,'Gigabox',1914),(286,'Tagpad',1914),(567,'Zoomlounge',1914),(906,'Wikibox',1914),(1,'Eimbee',1915),(61,'Oyoba',1915),(74,'Jetpulse',1915),(134,'Skipfire',1915),(150,'Jetpulse',1915),(229,'Tagopia',1915),(246,'Digitube',1915),(374,'Gigaclub',1915),(394,'Kaymbo',1915),(433,'Dabtype',1915),(540,'Oyonder',1915),(604,'Thoughtbeat',1915),(922,'Riffwire',1915),(933,'Vitz',1915),(940,'Eimbee',1915),(960,'Camido',1915),(980,'Edgetag',1915),(336,'Skipfire',1916),(520,'Kaymbo',1916),(597,'Thoughtbeat',1916),(786,'Fliptune',1916),(833,'Yombu',1916),(973,'Dabtype',1916),(36,'Oyoba',1917),(111,'Oyoba',1917),(258,'Buzzster',1917),(415,'Skimia',1917),(600,'Fivespan',1917),(757,'Eimbee',1917),(806,'Gigabox',1917),(891,'Rhycero',1917),(181,'Gigabox',1918),(289,'Oyonder',1918),(570,'Dabtype',1918),(624,'Centidel',1918),(657,'Bubbletube',1918),(806,'Tagopia',1918),(83,'Thoughtbeat',1919),(117,'Dabtype',1919),(216,'Tagopia',1919),(220,'Gigabox',1919),(427,'Tagpad',1919),(433,'Skimia',1919),(539,'Dabvine',1919),(103,'Wikido',1920),(238,'Divape',1920),(249,'Browsetype',1920),(263,'Camido',1920),(318,'Voolia',1920),(468,'Jetpulse',1920),(543,'Wikido',1920),(626,'Eazzy',1920),(683,'Skipfire',1920),(718,'Digitube',1920),(201,'Browsetype',1921),(337,'Yombu',1921),(678,'Thoughtbeat',1921),(831,'Gigabox',1921),(853,'Centidel',1921),(911,'Gigabox',1921),(983,'Quatz',1921),(998,'Riffwire',1921),(52,'Thoughtbeat',1922),(110,'Brainbox',1922),(250,'Browsetype',1922),(369,'Digitube',1922),(432,'Avavee',1922),(525,'Eimbee',1922),(548,'Dablist',1922),(571,'Eazzy',1922),(594,'Voolia',1922),(717,'Jabbersphere',1922),(765,'Vitz',1922),(884,'Digitube',1922),(980,'Browsetype',1922),(184,'Eimbee',1923),(250,'Gigaclub',1923),(589,'Jayo',1923),(877,'Kaymbo',1923),(102,'Vitz',1924),(209,'Skipfire',1924),(270,'Eazzy',1924),(277,'Linklinks',1924),(294,'Gigabox',1924),(353,'Camido',1924),(411,'Browsetype',1924),(433,'Dabvine',1924),(464,'Dabtype',1924),(475,'Linklinks',1924),(492,'Wikibox',1924),(498,'Yombu',1924),(628,'Fivespan',1924),(743,'Thoughtbeat',1924),(761,'Dablist',1924),(934,'Buzzster',1924),(271,'Camido',1925),(343,'Innotype',1925),(347,'Voolia',1925),(369,'Jayo',1925),(388,'Dablist',1925),(32,'Brainbox',1926),(81,'Gigabox',1926),(87,'Meezzy',1926),(253,'Fliptune',1926),(301,'Tagpad',1926),(567,'Avavee',1926),(738,'Jetpulse',1926),(756,'Bubbletube',1926),(807,'Brainbox',1926),(832,'Jabbersphere',1926),(111,'Tagopia',1927),(169,'Gigaclub',1927),(178,'Kaymbo',1927),(229,'Kaymbo',1927),(256,'Rhycero',1927),(730,'Wikido',1927),(786,'Rhycero',1927),(935,'Viva',1927),(184,'Browsetype',1928),(185,'LiveZ',1928),(235,'Edgetag',1928),(326,'Buzzster',1928),(329,'Skipfire',1928),(331,'Dabvine',1928),(336,'Avavee',1928),(410,'Oyonder',1928),(415,'Yombu',1928),(436,'Gigabox',1928),(636,'Dablist',1928),(797,'Gigabox',1928),(296,'Buzzster',1929),(452,'Dabvine',1929),(519,'Quatz',1929),(563,'Kaymbo',1929),(591,'Rhycero',1929),(693,'Thoughtbeat',1929),(719,'Yombu',1929),(847,'Fliptune',1929),(322,'Tagopia',1930),(335,'Riffwire',1930),(701,'Gigaclub',1930),(719,'Divape',1930),(794,'Voolia',1930),(536,'Viva',1931),(594,'Camido',1931),(993,'Linklinks',1931),(1,'Rhycero',1932),(84,'Innotype',1932),(242,'Gigaclub',1932),(321,'Divape',1932),(461,'Jayo',1932),(508,'Quatz',1932),(518,'Buzzster',1932),(530,'Oyoba',1932),(619,'Gigaclub',1932),(747,'Bubbletube',1932),(827,'Gigabox',1932),(842,'Camido',1932),(999,'Gigabox',1932),(77,'Linklinks',1933),(164,'Meezzy',1933),(241,'Viva',1933),(952,'Centidel',1933),(962,'Kaymbo',1933),(72,'Wikido',1934),(425,'Dablist',1934),(466,'Vitz',1934),(498,'Camido',1934),(744,'Oyonder',1934),(755,'Bubblebox',1934),(768,'Jayo',1934),(800,'Gigabox',1934),(808,'Camido',1934),(820,'Divape',1934),(989,'Meezzy',1934),(65,'Jabbersphere',1935),(130,'Camido',1935),(148,'Gigabox',1935),(154,'Browsetype',1935),(367,'Oyonder',1935),(634,'Brainbox',1935),(714,'Oyoba',1935),(814,'LiveZ',1935),(846,'Dablist',1935),(929,'Oyonder',1935),(991,'Wikibox',1935),(89,'Oyonder',1936),(101,'Edgetag',1936),(113,'Rhycero',1936),(147,'Quatz',1936),(233,'Gigaclub',1936),(581,'Gigabox',1936),(724,'Viva',1936),(33,'Vitz',1937),(153,'Vitz',1937),(259,'Viva',1937),(290,'Eimbee',1937),(585,'Wikido',1937),(79,'Rhycero',1938),(138,'Kaymbo',1938),(629,'Eimbee',1938),(674,'Jabbersphere',1938),(17,'Browsetype',1939),(72,'Avavee',1939),(105,'Realpoint',1939),(587,'Jabbersphere',1939),(604,'Rhycero',1939),(671,'Yombu',1939),(695,'Divape',1939),(760,'Digitube',1939),(849,'Brainbox',1939),(925,'Camido',1939),(36,'Jetpulse',1940),(98,'Realpoint',1940),(783,'Skipfire',1940),(873,'Tagpad',1940),(884,'Gigabox',1940),(981,'Quatz',1940),(992,'Avavee',1940),(177,'Zoomlounge',1941),(351,'Linklinks',1941),(639,'LiveZ',1941),(788,'Eazzy',1941),(806,'Centidel',1941),(859,'Avavee',1941),(36,'Meezzy',1942),(177,'Jetpulse',1942),(234,'Riffwire',1942),(236,'Edgetag',1942),(708,'Bubblebox',1942),(822,'Gigaclub',1942),(866,'Brainbox',1942),(898,'Skipfire',1942),(931,'Centidel',1942),(954,'Camido',1942),(27,'Eazzy',1943),(370,'Skimia',1943),(408,'Gigabox',1943),(834,'Gigaclub',1943),(846,'Gigabox',1943),(904,'Dabvine',1943),(907,'Avavee',1943),(572,'Jayo',1944),(589,'Linklinks',1944),(790,'Fliptune',1944),(810,'Fliptune',1944),(988,'LiveZ',1944),(11,'Dabvine',1945),(12,'Wikido',1945),(46,'Rhycero',1945),(54,'Avavee',1945),(110,'Oyonder',1945),(249,'LiveZ',1945),(264,'Realpoint',1945),(326,'Centidel',1945),(659,'Voolia',1945),(937,'Bubblebox',1945),(971,'Wikibox',1945),(985,'Avavee',1945),(114,'Zoomlounge',1946),(280,'Zoomlounge',1946),(440,'Jetpulse',1946),(562,'Dabtype',1946),(923,'Divape',1946),(927,'Meezzy',1946),(990,'Divape',1946),(999,'Dabvine',1946),(31,'Fliptune',1947),(56,'Skimia',1947),(204,'Innotype',1947),(258,'Innotype',1947),(287,'Wikido',1947),(372,'Dablist',1947),(485,'Bubblebox',1947),(651,'Tagopia',1947),(672,'Camido',1947),(730,'Avavee',1947),(788,'Avavee',1947),(810,'Avavee',1947),(865,'Fivespan',1947),(108,'Voolia',1948),(223,'Skimia',1948),(294,'LiveZ',1948),(447,'Wikido',1948),(492,'Bubbletube',1948),(559,'Gigabox',1948),(663,'Jetpulse',1948),(729,'Centidel',1948),(770,'Camido',1948),(786,'Browsetype',1948),(869,'Voolia',1948),(925,'Wikibox',1948),(997,'Gigabox',1948),(58,'Jetpulse',1949),(111,'Eazzy',1949),(123,'Bubblebox',1949),(200,'Bubblebox',1949),(346,'Brainbox',1949),(347,'Tagpad',1949),(430,'Viva',1949),(574,'Realpoint',1949),(724,'Skimia',1949),(745,'Digitube',1949),(925,'Dabvine',1949),(500,'Kaymbo',1950),(681,'Browsetype',1950),(766,'Zoomlounge',1950),(815,'Edgetag',1950),(168,'Edgetag',1951),(197,'Divape',1951),(291,'Vitz',1951),(393,'Dablist',1951),(688,'Gigabox',1951),(724,'Centidel',1951),(734,'Eazzy',1951),(804,'Dablist',1951),(820,'Skimia',1951),(868,'Eimbee',1951),(961,'Bubblebox',1951),(998,'Browsetype',1951),(34,'Meezzy',1952),(255,'Gigabox',1952),(338,'Skipfire',1952),(351,'Brainbox',1952),(1000,'Linklinks',1952),(34,'Centidel',1953),(191,'Yombu',1953),(207,'Centidel',1953),(225,'Dablist',1953),(648,'LiveZ',1953),(782,'Edgetag',1953),(790,'Dablist',1953),(971,'Fivespan',1953),(255,'Eazzy',1954),(413,'Wikibox',1954),(967,'Fliptune',1954),(110,'Skipfire',1955),(206,'LiveZ',1955),(318,'LiveZ',1955),(957,'Realpoint',1955),(58,'Dabvine',1956),(573,'Zoomlounge',1956),(786,'Brainbox',1956),(874,'Voolia',1956),(23,'Fivespan',1957),(50,'Oyoba',1957),(169,'Yombu',1957),(285,'Quatz',1957),(340,'Kaymbo',1957),(372,'Eazzy',1957),(838,'Camido',1957),(846,'Riffwire',1957),(870,'Oyoba',1957),(919,'Gigaclub',1957),(926,'Meezzy',1957),(101,'Gigabox',1958),(113,'Dablist',1958),(164,'Fivespan',1958),(166,'Dabvine',1958),(292,'Wikibox',1958),(489,'Fivespan',1958),(496,'Tagpad',1958),(517,'Thoughtbeat',1958),(598,'Browsetype',1958),(837,'Dabvine',1958),(928,'Gigaclub',1958),(43,'Meezzy',1959),(212,'Fliptune',1959),(239,'Fivespan',1959),(301,'Quatz',1959),(478,'Tagpad',1959),(555,'Brainbox',1959),(556,'Dablist',1959),(567,'LiveZ',1959),(971,'Eazzy',1959),(21,'Digitube',1960),(144,'Realpoint',1960),(189,'Meezzy',1960),(228,'Fliptune',1960),(825,'Realpoint',1960),(844,'Eimbee',1960),(975,'Browsetype',1960),(159,'Meezzy',1961),(346,'Avavee',1961),(507,'Bubblebox',1961),(605,'Bubbletube',1961),(610,'Edgetag',1961),(829,'Edgetag',1961),(885,'Gigaclub',1961),(254,'LiveZ',1962),(326,'Gigaclub',1962),(505,'Avavee',1962),(523,'Centidel',1962),(824,'Meezzy',1962),(867,'Dabvine',1962),(900,'Gigabox',1962),(47,'Eazzy',1963),(615,'Quatz',1963),(915,'Gigabox',1963),(118,'Kaymbo',1964),(283,'Realpoint',1964),(671,'Voolia',1964),(745,'Wikibox',1964),(108,'Browsetype',1965),(248,'Voolia',1965),(337,'Centidel',1965),(453,'Gigaclub',1965),(486,'Tagopia',1965),(701,'Wikibox',1965),(913,'Bubblebox',1965),(962,'Thoughtbeat',1965),(101,'Fivespan',1966),(257,'Jabbersphere',1966),(537,'Kaymbo',1966),(586,'Thoughtbeat',1966),(624,'Camido',1966),(854,'Dabvine',1966),(966,'Oyonder',1966),(56,'Tagopia',1967),(128,'Linklinks',1967),(409,'Edgetag',1967),(415,'Yombu',1967),(422,'Dabtype',1967),(513,'Wikido',1967),(529,'Centidel',1967),(567,'Tagopia',1967),(575,'Thoughtbeat',1967),(579,'Kaymbo',1967),(632,'Dabtype',1967),(741,'Vitz',1967),(767,'Edgetag',1967),(823,'Tagopia',1967),(930,'Dablist',1967),(965,'Dablist',1967),(982,'Dabtype',1967),(72,'Bubblebox',1968),(211,'Wikido',1968),(289,'Voolia',1968),(425,'Bubbletube',1968),(425,'Linklinks',1968),(462,'Zoomlounge',1968),(551,'Jayo',1968),(809,'Dabtype',1968),(830,'Gigabox',1968),(901,'Digitube',1968),(966,'Rhycero',1968),(989,'Thoughtbeat',1968),(12,'Fivespan',1969),(205,'Fivespan',1969),(406,'Jetpulse',1969),(624,'Dabvine',1969),(81,'Kaymbo',1970),(232,'Thoughtbeat',1970),(268,'Dabtype',1970),(466,'Gigabox',1970),(505,'Bubbletube',1970),(517,'Digitube',1970),(600,'Thoughtbeat',1970),(678,'Linklinks',1970),(685,'Tagpad',1970),(721,'Bubbletube',1970),(740,'Buzzster',1970),(899,'Centidel',1970),(113,'Camido',1971),(166,'Thoughtbeat',1971),(184,'Fivespan',1971),(359,'Wikibox',1971),(610,'Eimbee',1971),(791,'Skimia',1971),(878,'Brainbox',1971),(361,'Buzzster',1972),(411,'Innotype',1972),(689,'Rhycero',1972),(710,'Edgetag',1972),(848,'Yombu',1972),(850,'Kaymbo',1972),(12,'Centidel',1973),(323,'Thoughtbeat',1973),(765,'Thoughtbeat',1973),(771,'Dabvine',1973),(89,'Oyonder',1974),(192,'Jayo',1974),(204,'Dabtype',1974),(507,'Dablist',1974),(552,'Rhycero',1974),(572,'Dablist',1974),(578,'Thoughtbeat',1974),(681,'Oyoba',1974),(779,'Viva',1974),(900,'Linklinks',1974),(975,'Innotype',1974),(118,'Innotype',1975),(411,'Yombu',1975),(552,'Voolia',1975),(554,'Wikibox',1975),(576,'Skimia',1975),(772,'Viva',1975),(779,'Avavee',1975),(957,'Gigabox',1975),(51,'Oyonder',1976),(408,'Voolia',1976),(536,'Browsetype',1976),(593,'LiveZ',1976),(737,'Dablist',1976),(838,'Dabtype',1976),(950,'Kaymbo',1976),(960,'Jabbersphere',1976),(272,'Skimia',1977),(335,'Quatz',1977),(534,'Vitz',1977),(736,'Innotype',1977),(754,'Tagpad',1977),(815,'Fliptune',1977),(949,'Jayo',1977),(412,'Skimia',1978),(435,'Camido',1978),(467,'Yombu',1978),(530,'Avavee',1978),(615,'Browsetype',1978),(93,'Brainbox',1979),(207,'Linklinks',1979),(284,'Brainbox',1979),(291,'Riffwire',1979),(409,'Browsetype',1979),(532,'Eimbee',1979),(619,'Gigaclub',1979),(653,'Bubbletube',1979),(859,'Oyoba',1979),(899,'Divape',1979),(914,'Voolia',1979),(926,'Realpoint',1979),(984,'LiveZ',1979),(19,'Skimia',1980),(172,'Bubbletube',1980),(260,'Fivespan',1980),(279,'Tagpad',1980),(338,'Skimia',1980),(394,'Riffwire',1980),(521,'Eimbee',1980),(547,'Gigabox',1980),(391,'Tagpad',1981),(789,'Tagopia',1981),(892,'Skimia',1981),(915,'Dabtype',1981),(958,'Gigaclub',1981),(24,'Oyoba',1982),(527,'Centidel',1982),(529,'Meezzy',1982),(613,'Wikido',1982),(701,'Bubbletube',1982),(871,'Edgetag',1982),(112,'Tagpad',1983),(314,'Fliptune',1983),(332,'Quatz',1983),(492,'Tagpad',1983),(771,'Fivespan',1983),(993,'Linklinks',1983),(517,'LiveZ',1984),(627,'Yombu',1984),(765,'Jetpulse',1984),(901,'Skimia',1984),(275,'Tagopia',1985),(298,'Camido',1985),(488,'Vitz',1985),(802,'LiveZ',1985),(811,'Tagpad',1985),(913,'Divape',1985),(983,'Thoughtbeat',1985),(128,'Gigabox',1986),(259,'Divape',1986),(727,'Realpoint',1986),(728,'Tagopia',1986),(833,'Divape',1986),(874,'Gigabox',1986),(945,'Eimbee',1986),(405,'Eimbee',1987),(616,'Kaymbo',1987),(791,'Riffwire',1987),(878,'Kaymbo',1987),(944,'Avavee',1987),(949,'Avavee',1987),(970,'Divape',1987),(990,'Digitube',1987),(297,'Digitube',1988),(482,'Gigaclub',1988),(609,'Skipfire',1988),(754,'Browsetype',1988),(849,'Camido',1988),(1,'Dabtype',1989),(59,'Kaymbo',1989),(209,'Edgetag',1989),(438,'Gigaclub',1989),(458,'Riffwire',1989),(478,'Digitube',1989),(482,'Kaymbo',1989),(538,'Thoughtbeat',1989),(750,'Tagpad',1989),(790,'Gigabox',1989),(932,'Realpoint',1989),(989,'Realpoint',1989),(48,'Kaymbo',1990),(126,'Eazzy',1990),(173,'Fivespan',1990),(201,'Dabtype',1990),(245,'Gigabox',1990),(261,'Brainbox',1990),(361,'LiveZ',1990),(572,'Skimia',1990),(588,'Eimbee',1990),(620,'Skimia',1990),(662,'Innotype',1990),(697,'Fliptune',1990),(776,'Bubbletube',1990),(865,'Wikido',1990),(880,'Bubbletube',1990),(892,'Jayo',1990),(2,'Zoomlounge',1991),(323,'Brainbox',1991),(645,'Skimia',1991),(773,'Browsetype',1991),(806,'Thoughtbeat',1991),(824,'Gigabox',1991),(918,'Gigaclub',1991),(24,'Realpoint',1992),(415,'Skimia',1992),(613,'Voolia',1992),(709,'Buzzster',1992),(765,'Wikibox',1992),(846,'Eimbee',1992),(104,'Vitz',1993),(349,'Quatz',1993),(468,'Jetpulse',1993),(473,'Innotype',1993),(602,'Bubbletube',1993),(654,'Gigaclub',1993),(743,'Browsetype',1993),(763,'Tagopia',1993),(784,'Thoughtbeat',1993),(829,'Realpoint',1993),(874,'Dabvine',1993),(895,'Tagpad',1993),(989,'Oyonder',1993),(73,'Bubblebox',1994),(349,'Vitz',1994),(412,'Vitz',1994),(546,'Brainbox',1994),(666,'Voolia',1994),(785,'Buzzster',1994),(936,'Dablist',1994),(967,'Digitube',1994),(980,'Zoomlounge',1994),(135,'Thoughtbeat',1995),(544,'Jayo',1995),(600,'Riffwire',1995),(749,'Eazzy',1995),(796,'Buzzster',1995),(974,'Vitz',1995),(89,'Oyoba',1996),(179,'Bubbletube',1996),(263,'Dabvine',1996),(267,'Bubbletube',1996),(365,'Digitube',1996),(455,'Bubbletube',1996),(617,'Digitube',1996),(737,'Dabtype',1996),(937,'Dabvine',1996),(945,'Avavee',1996),(964,'Gigabox',1996),(172,'Skimia',1997),(292,'Dabtype',1997),(319,'Browsetype',1997),(335,'Rhycero',1997),(336,'Dabvine',1997),(388,'Edgetag',1997),(516,'Quatz',1997),(621,'Zoomlounge',1997),(964,'Dabtype',1997),(45,'Vitz',1998),(167,'Bubbletube',1998),(416,'Linklinks',1998),(418,'Gigaclub',1998),(700,'LiveZ',1998),(779,'Quatz',1998),(828,'Vitz',1998),(937,'Digitube',1998),(16,'Wikido',1999),(524,'Gigabox',1999),(533,'Gigabox',1999),(560,'Edgetag',1999),(153,'LiveZ',2000),(402,'Dabtype',2000),(472,'Tagopia',2000),(548,'Yombu',2000),(573,'Tagopia',2000),(671,'Thoughtbeat',2000),(820,'Dabtype',2000),(967,'Quatz',2000),(171,'Innotype',2001),(183,'LiveZ',2001),(205,'LiveZ',2001),(340,'Avavee',2001),(342,'Gigaclub',2001),(717,'Buzzster',2001),(785,'LiveZ',2001),(823,'Innotype',2001),(949,'Edgetag',2001),(998,'Voolia',2001),(52,'Kaymbo',2002),(95,'Fivespan',2002),(133,'Thoughtbeat',2002),(152,'Dabvine',2002),(273,'Browsetype',2002),(605,'Kaymbo',2002),(751,'Rhycero',2002),(811,'Realpoint',2002),(836,'Jetpulse',2002),(842,'Bubblebox',2002),(915,'Dablist',2002),(43,'Brainbox',2003),(203,'Oyoba',2003),(308,'Bubblebox',2003),(495,'Wikido',2003),(564,'Tagpad',2003),(623,'Quatz',2003),(708,'Jabbersphere',2003),(713,'Divape',2003),(892,'Wikido',2003),(64,'Wikido',2004),(170,'Voolia',2004),(190,'Skipfire',2004),(346,'Vitz',2004),(379,'Gigaclub',2004),(460,'Divape',2004),(481,'Tagopia',2004),(779,'Vitz',2004),(813,'LiveZ',2004),(954,'Tagpad',2004),(322,'Brainbox',2005),(479,'Viva',2005),(640,'Dablist',2005),(699,'Edgetag',2005),(724,'Browsetype',2005),(907,'Centidel',2005),(101,'Skipfire',2006),(318,'Bubblebox',2006),(570,'Kaymbo',2006),(981,'Avavee',2006),(128,'Avavee',2007),(230,'Tagopia',2007),(406,'Dablist',2007),(409,'Quatz',2007),(473,'Voolia',2007),(498,'Fivespan',2007),(778,'Skimia',2007),(818,'Rhycero',2007),(905,'Skimia',2007),(18,'Dabvine',2008),(30,'Voolia',2008),(114,'Digitube',2008),(147,'LiveZ',2008),(179,'Vitz',2008),(198,'Wikido',2008),(369,'Eazzy',2008),(428,'Browsetype',2008),(434,'Dabvine',2008),(501,'Brainbox',2008),(565,'Tagpad',2008),(958,'Thoughtbeat',2008),(960,'Oyonder',2008),(987,'LiveZ',2008),(69,'Skipfire',2009),(138,'Wikido',2009),(542,'Dabvine',2009),(934,'Bubblebox',2009),(188,'Viva',2010),(320,'Wikibox',2010),(500,'Oyonder',2010),(664,'Buzzster',2010),(861,'Quatz',2010),(964,'Avavee',2010),(45,'LiveZ',2011),(233,'Linklinks',2011),(322,'Jabbersphere',2011),(517,'Kaymbo',2011),(528,'Rhycero',2011),(583,'Tagpad',2011),(967,'Wikido',2011),(15,'Quatz',2012),(149,'Gigaclub',2012),(754,'Tagpad',2012),(865,'Gigabox',2012),(46,'Jabbersphere',2013),(85,'Gigabox',2013),(106,'Linklinks',2013),(133,'Digitube',2013),(433,'Eimbee',2013),(504,'Viva',2013),(590,'Tagopia',2013),(773,'Thoughtbeat',2013),(835,'Vitz',2013),(893,'Rhycero',2013),(982,'Skimia',2013),(32,'Oyoba',2014),(264,'Buzzster',2014),(350,'Oyoba',2014),(388,'Quatz',2014),(419,'Dabvine',2014),(438,'Meezzy',2014),(464,'Eazzy',2014),(491,'Thoughtbeat',2014),(528,'Dabtype',2014),(533,'Browsetype',2014),(807,'Buzzster',2014),(30,'Linklinks',2015),(66,'Eimbee',2015),(851,'Jetpulse',2015),(853,'Innotype',2015),(872,'Brainbox',2015),(983,'Dabtype',2015),(454,'Centidel',2016),(538,'Oyonder',2016),(578,'Dabtype',2016),(601,'Jayo',2016),(610,'LiveZ',2016),(925,'Tagpad',2016),(956,'Realpoint',2016),(260,'Eazzy',2017),(269,'Rhycero',2017),(584,'Riffwire',2017),(778,'Wikido',2017),(902,'Avavee',2017),(982,'Tagopia',2017),(88,'Edgetag',2018),(366,'Realpoint',2018),(455,'Camido',2018),(525,'Jetpulse',2018),(623,'Buzzster',2018),(778,'Voolia',2018),(786,'Fivespan',2018),(971,'Jetpulse',2018),(13,'Jetpulse',2019),(73,'Eazzy',2019),(73,'Fivespan',2019),(254,'LiveZ',2019),(258,'Dablist',2019),(314,'Tagpad',2019),(472,'Meezzy',2019),(477,'Oyonder',2019),(496,'Oyonder',2019),(605,'Wikibox',2019),(860,'Thoughtbeat',2019);
/*!40000 ALTER TABLE `played_for` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-15 23:49:35