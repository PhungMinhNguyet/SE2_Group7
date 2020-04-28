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
-- Table structure for table `vietnam`
--

DROP TABLE IF EXISTS `vietnam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vietnam` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(30) NOT NULL,
  `cases` int(10) NOT NULL,
  `beingTreated` int(10) NOT NULL,
  `recovered` int(10) NOT NULL,
  `deaths` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vietnam`
--

LOCK TABLES `vietnam` WRITE;
/*!40000 ALTER TABLE `vietnam` DISABLE KEYS */;
INSERT INTO `vietnam` VALUES (1,'Hanoi',112,27,85,0),(2,'Ho Chi Minh',55,1,54,0),(3,'Vinh Phuc',19,5,14,0),(4,'Ninh Binh',13,2,11,0),(5,'Binh Thuan',9,1,8,0),(6,'Quang Ninh',7,2,5,0),(7,'Da Nang',6,0,6,0),(8,'Bac Giang',4,0,4,0),(9,'Dong Thap',4,0,4,0),(10,'Ha Tinh',4,1,3,0),(11,'Ha Nam',4,1,3,0),(12,'Quang Nam',3,0,3,0),(13,'Thanh Hoa',3,1,2,0),(14,'Bac Lieu',3,0,3,0),(15,'Tay Ninh',3,0,3,0),(16,'Can Tho',2,0,2,0),(17,'Tra Vinh',2,0,2,0),(18,'Ninh Thuan',2,0,2,0),(19,'Lao Cai',2,0,2,0),(20,'Thua Thien Hue',2,0,2,0),(21,'Lai Chau',1,0,1,0),(22,'Hung Yen',1,0,1,0),(23,'Dong Nai',1,0,1,0),(24,'Ha Giang',1,1,0,0),(25,'Hai Duong',1,0,1,0),(26,'Khanh Hoa',1,0,1,0),(27,'Ben Tre',1,0,1,0),(28,'Bac Ninh',1,0,1,0),(29,'Thai Nguyen',1,1,0,0);
/*!40000 ALTER TABLE `vietnam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28  9:43:22
