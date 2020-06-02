-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: website
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `video` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'How COVID-19 Spreads','COVID-19 is thought to spread mainly through close contact from person-to-person in respiratory droplets from someone who is infected. People who are infected often have symptoms of illness. Some people without symptoms may be able to spread virus. COVID-19 is a new disease and we are still learning about how it spreads and the severity of illness it causes.','BtulL3oArQw','https://www.abc.net.au/cm/rimage/11915166-3x2-xlarge.jpg?v=2'),(2,'Person-to-person spreads','Between people who are in close contact with one another (within about 6 feet). Through respiratory droplets produced when an infected person coughs, sneezes or talks. These droplets can land in the mouths or noses of people who are nearby or possibly be inhaled into the lungs. Some recent studies have suggested that COVID-19 may be spread by people who are not showing symptoms.','ZvLFz1KSYMA','https://ichef.bbci.co.uk/news/410/cpsprodpb/1422E/production/_111487428_11abcc65-5243-43b1-bbcf-f31a5198b14c.jpg'),(3,'Spread from contact with contaminated surfaces or objects','It may be possible that a person can get COVID-19 by touching a surface or object that has the virus on it and then touching their own mouth, nose, or possibly their eyes. This is not thought to be the main way the virus spreads, but we are still learning more about this virus. Wash your hands often with soap and water. If soap and water are not available, use an alcohol-based hand rub. Also, routinely clean frequently touched surfaces.','RzW9UUmImVA','https://i.guim.co.uk/img/media/80d44ccf903db423aaf84d96a0e74fd78fa46a94/0_0_6001_3751/master/6001.jpg?width=700&quality=85&auto=format&fit=max&s=d2d5b7ad283149ee34503d67ecc32b50'),(4,'How easily the virus spreads','How easily a virus spreads from person-to-person can vary. Some viruses are highly contagious, like measles, while other viruses do not spread as easily. Another factor is whether the spread is sustained, which means it goes from person-to-person without stopping. The virus that causes COVID-19 is spreading very easily and sustainably between people. Information from the ongoing COVID-19 pandemic suggest that this virus is spreading more efficiently than influenza, but not as efficiently as measles, which is highly contagious.','ZkgF-KrugJY','https://www.swissinfo.ch/blob/45580528/66cb50122ead1757f48e2994cf46411f/corona_ansteckungsrate-eng-data.png');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-02 21:00:27
