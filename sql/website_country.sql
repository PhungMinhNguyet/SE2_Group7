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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  `cases` int(10) NOT NULL,
  `todayCases` int(10) NOT NULL,
  `deaths` int(10) NOT NULL,
  `todayDeaths` int(10) NOT NULL,
  `recovered` int(10) NOT NULL,
  `active` int(10) NOT NULL,
  `critical` int(10) NOT NULL,
  `casesPerOneMillion` double NOT NULL,
  `deathsPerOneMillion` double NOT NULL,
  `totalTests` double NOT NULL,
  `testsPerOneMillion` double NOT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=435 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'North America',914550,1639,51231,143,102647,760672,15279,0,0,0,0),(2,'Europe',1174346,6062,111289,87,366120,696937,27079,0,0,0,0),(3,'Asia',424830,2543,15888,34,199421,209521,6137,0,0,0,0),(4,'South America',97150,489,4596,21,41410,51144,9499,0,0,0,0),(5,'Oceania',8212,14,91,3,6167,1954,50,0,0,0,0),(6,'Africa',26686,32,1244,0,7332,18110,174,0,0,0,0),(7,'World',2646495,10779,184354,288,723742,1738399,58222,340,23,0,0),(8,'USA',849092,375,47681,22,84050,717361,14016,2565,144,4326648,13071),(9,'Spain',208389,0,21717,0,85915,100757,7705,4457,464,930230,19896),(10,'Italy',187327,0,25085,0,54543,107699,2384,3098,415,1513251,25028),(11,'France',159877,0,21340,0,40657,97880,5218,2449,327,463662,7103),(12,'Germany',150666,18,5315,0,103300,42051,2908,1798,63,2072669,24738),(13,'Turkey',98674,0,2376,0,16477,79821,1814,1170,28,750944,8904),(14,'Iran',85996,0,5391,0,63113,17492,3311,1024,64,377396,4493),(15,'Russia',62773,4774,555,42,4891,57327,2300,430,4,2401616,16457),(16,'Brazil',46182,425,2924,18,25318,17940,8318,217,14,291922,1373),(17,'Belgium',41889,0,6262,0,9433,26194,1020,3614,540,171400,14789),(18,'Canada',40190,0,1974,0,13986,24230,557,1065,52,612192,16220),(19,'Switzerland',28268,0,1509,0,19900,6859,386,3266,174,227554,26293),(20,'Portugal',21982,0,785,0,1143,20054,207,2156,77,284741,27925),(21,'India',21797,427,681,0,4376,16740,0,16,0,500542,363),(22,'Peru',19250,0,530,0,7027,11693,396,584,16,170400,5168),(23,'Ireland',16671,0,769,0,9233,6669,147,3376,156,111584,22598),(24,'Sweden',16004,0,1937,0,550,13517,515,1585,192,94500,9357),(25,'Austria',14940,15,510,0,11694,2736,169,1659,57,205835,22854),(26,'Israel',14592,94,191,2,5334,9067,136,1686,22,240303,27763),(27,'Saudi Arabia',12772,0,114,0,1812,10846,82,367,3,200000,5745),(28,'Japan',11950,0,299,0,1424,10227,241,94,2,130587,1033),(29,'Chile',11296,0,160,0,5386,5750,399,591,8,128722,6734),(30,'Singapore',11178,1037,12,0,896,10270,27,1911,2,94796,16203),(31,'Ecuador',10850,0,537,0,1262,9051,141,615,30,34840,1975),(32,'S. Korea',10702,8,240,2,8411,2051,55,209,5,583971,11390),(33,'Mexico',10544,1043,970,113,2627,6947,378,82,8,49570,384),(34,'Pakistan',10513,437,224,12,2337,7952,60,48,1,124549,564),(35,'Poland',10346,177,435,9,1740,8171,160,273,11,238799,6310),(36,'Romania',9710,0,527,3,2406,6777,288,505,27,106357,5529),(37,'UAE',8238,0,52,0,1546,6640,1,833,5,790000,79875),(38,'Denmark',8073,161,384,0,5087,2602,80,1394,66,116621,20134),(39,'Indonesia',7418,0,635,0,913,5870,0,27,2,55732,204),(40,'Norway',7338,0,187,0,32,7119,54,1354,34,148656,27421),(41,'Belarus',7281,0,58,0,769,6454,92,771,6,114955,12165),(42,'Ukraine',7170,578,187,13,504,6479,45,164,4,72296,1653),(43,'Qatar',7141,0,10,0,689,6442,37,2479,3,70012,24301),(44,'Czechia',7136,4,210,2,2002,4924,76,666,20,195725,18277),(45,'Serbia',7114,0,134,0,1025,5955,101,814,15,48636,5566),(46,'Philippines',6981,271,462,16,722,5797,1,64,4,68532,625),(47,'Australia',6660,11,75,1,5041,1544,46,261,3,463713,18185),(48,'Malaysia',5532,0,93,0,3452,1987,43,171,3,113755,3515),(49,'Dominican Republic',5300,0,260,0,581,4459,135,489,24,18261,1683),(50,'Panama',4992,171,144,3,255,4593,97,1157,33,22702,5261),(51,'Colombia',4356,0,206,0,870,3280,98,86,4,71500,1405),(52,'Finland',4129,0,149,0,2000,1980,63,745,27,68552,12372),(53,'Bangladesh',3772,0,120,0,92,3560,1,23,0,32630,198),(54,'Egypt',3659,0,276,0,935,2448,0,36,3,55000,537),(55,'Luxembourg',3654,0,80,0,711,2863,32,5837,128,36087,57649),(56,'South Africa',3635,0,65,0,1055,2515,36,61,1,133774,2256),(57,'Morocco',3446,0,149,0,417,2880,1,93,4,19885,539),(58,'Argentina',3288,0,159,0,872,2257,123,73,4,39228,868),(59,'Algeria',2910,0,402,0,1204,1304,40,66,9,6500,148),(60,'Thailand',2839,13,50,1,2430,359,61,41,0,142589,2043),(61,'Moldova',2778,0,76,1,661,2041,212,689,19,11763,2916),(62,'Greece',2408,0,121,0,577,1710,55,231,12,56944,5463),(63,'Hungary',2284,116,239,14,390,1655,61,236,25,55390,5734),(64,'Kuwait',2248,0,13,0,443,1792,50,526,3,0,0),(65,'Kazakhstan',2207,72,20,1,536,1651,29,118,1,153492,8175),(66,'Bahrain',2027,0,7,0,1026,994,2,1191,4,97796,57474),(67,'Croatia',1950,0,48,0,869,1033,19,475,12,27614,6726),(68,'Iceland',1785,0,10,0,1462,313,5,5231,29,44468,130312),(69,'Oman',1716,102,8,0,307,1401,3,336,2,0,0),(70,'Uzbekistan',1716,0,7,0,454,1255,8,51,0,150000,4482),(71,'Iraq',1631,0,83,0,1146,402,0,41,2,62880,1563),(72,'Estonia',1592,33,45,1,192,1355,7,1200,34,45181,34059),(73,'Armenia',1523,50,24,0,659,840,10,514,8,15960,5386),(74,'Azerbaijan',1518,0,20,0,907,591,14,150,2,108221,10674),(75,'New Zealand',1451,3,16,2,1065,370,2,301,3,101277,21002),(76,'Lithuania',1398,28,38,0,399,961,17,514,14,83591,30706),(77,'Bosnia and Herzegovina',1368,0,53,0,460,855,4,417,16,20125,6134),(78,'Slovenia',1353,0,79,0,205,1069,24,651,38,44435,21374),(79,'Slovakia',1325,81,15,1,288,1022,9,243,3,57421,10517),(80,'North Macedonia',1259,0,56,0,272,931,8,604,27,13000,6240),(81,'Cuba',1189,0,40,0,341,808,16,105,4,30416,2685),(82,'Afghanistan',1176,0,40,0,166,970,7,30,1,6422,165),(83,'Cameroon',1163,0,43,0,397,723,33,44,2,0,0),(84,'Ghana',1154,0,9,0,99,1046,4,37,0,68591,2207),(85,'Bulgaria',1081,57,50,1,190,841,37,156,7,27000,3886),(86,'Hong Kong',1034,0,4,0,678,352,8,138,0,131786,17579),(87,'Djibouti',974,0,2,0,183,789,0,986,2,10272,10397),(88,'Ivory Coast',952,0,14,0,310,628,0,36,0,0,0),(89,'Tunisia',909,0,38,0,190,681,32,77,3,18861,1596),(90,'Nigeria',873,0,28,0,197,648,2,4,0,8003,39),(91,'Cyprus',790,0,13,0,98,679,15,654,11,37081,30712),(92,'Latvia',778,17,11,0,133,634,6,412,6,41041,21759),(93,'Guinea',761,0,6,0,164,591,0,58,0,0,0),(94,'Andorra',723,0,37,0,309,377,17,9357,479,1673,21653),(95,'Diamond Princess',712,0,13,0,645,54,4,0,0,0,0),(96,'Lebanon',682,0,22,0,113,547,26,100,3,22853,3348),(97,'Costa Rica',681,0,6,0,180,495,6,134,1,11766,2310),(98,'Bolivia',672,63,40,3,44,588,3,58,3,4420,379),(99,'Niger',662,0,22,0,193,447,0,27,0,4832,200),(100,'Albania',634,0,27,0,356,251,4,220,9,6269,2178),(101,'Kyrgyzstan',612,0,7,0,254,351,5,94,1,26147,4008),(102,'Burkina Faso',609,0,39,0,389,181,0,29,2,0,0),(103,'Uruguay',549,0,12,0,337,200,10,158,3,14532,4183),(104,'Honduras',519,9,47,1,31,441,10,52,5,2535,256),(105,'Channel Islands',498,0,28,0,285,185,0,2864,161,3320,19095),(106,'San Marino',488,0,40,0,62,386,4,14382,1179,1872,55171),(107,'Palestine',480,6,4,0,92,384,0,94,0,27000,5293),(108,'Malta',444,0,3,0,165,276,2,1006,7,26148,59220),(109,'Senegal',442,0,6,0,253,183,1,26,0,466,28),(110,'Jordan',435,0,7,0,315,113,5,43,0,36000,3528),(111,'Taiwan',427,1,6,0,253,168,0,18,0,58003,2435),(112,'Georgia',420,4,5,0,107,308,6,105,1,8375,2099),(113,'RÃ©union',410,0,0,0,238,172,2,458,0,0,0),(114,'DRC',359,0,25,0,45,289,0,4,0,0,0),(115,'Guatemala',342,26,10,2,25,307,3,19,0,7200,402),(116,'Sri Lanka',334,4,7,0,105,222,2,16,0,7393,345),(117,'Mauritius',329,0,9,0,261,59,3,259,7,12300,9672),(118,'Mayotte',326,0,4,0,125,197,4,1195,15,2100,7698),(119,'Montenegro',316,1,5,0,116,195,7,503,8,5085,8096),(120,'Isle of Man',307,0,15,0,212,80,20,3610,176,2654,31211),(121,'Kenya',303,0,14,0,83,206,2,6,0,14704,273),(122,'Venezuela',298,0,10,0,122,166,4,10,0,347236,12211),(123,'Mali',293,0,17,0,73,203,0,14,0,2023,100),(124,'Somalia',286,0,8,0,4,274,2,18,0,0,0),(125,'Tanzania',284,0,10,0,11,263,7,5,0,0,0),(126,'Vietnam',268,0,0,0,224,44,8,3,0,206253,2119),(127,'Jamaica',252,0,6,0,28,218,0,85,2,2125,718),(128,'El Salvador',250,13,8,1,67,175,2,39,1,15385,2372),(129,'Paraguay',213,0,9,0,62,142,1,30,1,6292,882),(130,'Faeroe Islands',187,2,0,0,178,9,0,3827,0,6375,130467),(131,'Congo',186,0,6,0,16,164,0,34,1,0,0),(132,'Gabon',166,0,1,0,24,141,2,75,0,572,257),(133,'Martinique',164,0,14,0,73,77,6,437,37,0,0),(134,'Sudan',162,22,13,0,14,135,0,4,0,0,0),(135,'Rwanda',153,0,0,0,84,69,0,12,0,6959,537),(136,'Guadeloupe',148,0,12,0,76,60,13,370,30,0,0),(137,'Brunei',138,0,1,0,117,20,2,315,2,12149,27770),(138,'Gibraltar',132,0,0,0,127,5,0,3918,0,2020,59957),(139,'Myanmar',127,4,5,0,9,113,0,2,0,5270,97),(140,'Cambodia',122,0,0,0,110,12,1,7,0,5768,345),(141,'Madagascar',121,0,0,0,52,69,1,4,0,2357,85),(142,'Ethiopia',116,0,3,0,21,92,0,1,0,9771,85),(143,'Trinidad and Tobago',115,0,8,0,37,70,0,82,6,1454,1039),(144,'French Guiana',107,0,1,0,84,22,1,358,3,0,0),(145,'Liberia',101,0,8,0,20,73,0,20,2,0,0),(146,'Aruba',100,0,2,0,68,30,4,937,19,1504,14087),(147,'Bermuda',99,0,5,0,39,55,10,1590,80,949,15238),(148,'Monaco',94,0,3,0,26,65,2,2395,76,0,0),(149,'Togo',88,0,6,0,56,26,0,11,0,4733,572),(150,'Maldives',86,0,0,0,16,70,2,159,0,4139,7657),(151,'Equatorial Guinea',84,0,1,0,7,76,0,60,0,854,609),(152,'Liechtenstein',81,0,1,0,55,25,0,2124,26,900,23605),(153,'Barbados',76,0,6,0,27,43,4,264,21,1162,4043),(154,'Zambia',74,0,3,0,35,36,1,4,0,2586,141),(155,'Sint Maarten',73,2,12,1,22,39,8,1703,280,266,6204),(156,'Cabo Verde',73,0,1,0,1,71,0,131,2,0,0),(157,'Guyana',67,0,7,0,9,51,5,85,9,348,442),(158,'Cayman Islands',66,0,1,0,7,58,3,1004,15,778,11838),(159,'Bahamas',65,0,9,0,12,44,1,165,23,0,0),(160,'Uganda',63,0,0,0,46,17,0,1,0,16057,351),(161,'Haiti',62,0,4,0,2,56,0,5,0,642,56),(162,'Sierra Leone',61,0,0,0,6,55,0,8,0,0,0),(163,'Libya',60,0,1,0,15,44,0,9,0,1181,172),(164,'French Polynesia',57,0,0,0,36,21,1,203,0,1803,6418),(165,'Benin',54,0,1,0,27,26,0,4,0,0,0),(166,'Guinea-Bissau',50,0,0,0,3,47,0,25,0,1500,762),(167,'Nepal',48,3,0,0,7,41,0,2,0,8773,301),(168,'Macao',45,0,0,0,26,19,1,69,0,0,0),(169,'Syria',42,0,3,0,6,33,0,2,0,0,0),(170,'Mozambique',41,0,0,0,8,33,0,1,0,1247,40),(171,'Eritrea',39,0,0,0,6,33,0,11,0,0,0),(172,'Saint Martin',38,0,2,0,19,17,3,983,52,0,0),(173,'Mongolia',35,0,0,0,8,27,0,11,0,7156,2183),(174,'Malawi',33,10,3,0,3,27,1,2,0,519,27),(175,'Chad',33,0,0,0,8,25,0,2,0,0,0),(176,'Eswatini',31,0,1,0,8,22,0,27,0,714,615),(177,'Zimbabwe',28,0,4,0,2,22,0,2,0,4990,336),(178,'Angola',25,0,2,0,6,17,0,0,0,0,0),(179,'Antigua and Barbuda',24,0,3,0,10,11,1,245,31,108,1103),(180,'Timor-Leste',23,0,0,0,1,22,0,17,0,322,244),(181,'Botswana',22,0,1,0,0,21,0,9,0,4432,1885),(182,'Laos',19,0,0,0,4,15,0,3,0,1461,201),(183,'Belize',18,0,2,0,5,11,1,45,5,816,2052),(184,'Fiji',18,0,0,0,8,10,0,20,0,0,0),(185,'New Caledonia',18,0,0,0,17,1,1,63,0,3772,13212),(186,'Dominica',16,0,0,0,9,7,0,222,0,377,5237),(187,'Namibia',16,0,0,0,6,10,0,6,0,524,206),(188,'Grenada',15,0,0,0,6,9,4,133,0,92,818),(189,'Saint Kitts and Nevis',15,0,0,0,1,14,0,282,0,257,4831),(190,'Saint Lucia',15,0,0,0,15,0,0,82,0,364,1982),(191,'CuraÃ§ao',14,0,1,0,11,2,0,85,6,302,1840),(192,'CAR',14,0,0,0,10,4,0,3,0,0,0),(193,'St. Vincent Grenadines',13,0,0,0,3,10,0,117,0,99,892),(194,'Falkland Islands',12,1,0,0,11,1,0,3448,0,337,96839),(195,'Burundi',11,0,1,0,4,6,0,0,0,284,24),(196,'Turks and Caicos',11,0,1,0,4,6,0,284,26,83,2144),(197,'Greenland',11,0,0,0,11,0,0,194,0,1150,20257),(198,'Montserrat',11,0,0,0,2,9,1,2204,0,36,7212),(199,'Seychelles',11,0,0,0,5,6,0,112,0,0,0),(200,'Nicaragua',10,0,2,0,7,1,0,2,0,0,0),(201,'Gambia',10,0,1,0,2,7,0,4,0,316,131),(202,'Suriname',10,0,1,0,6,3,0,17,2,404,689),(203,'MS Zaandam',9,0,2,0,0,7,0,0,0,0,0),(204,'Vatican City',9,0,0,0,2,7,0,11236,0,0,0),(205,'Papua New Guinea',8,0,0,0,0,8,0,0,0,604,68),(206,'Mauritania',7,0,1,0,6,0,0,2,0,969,208),(207,'Bhutan',7,0,0,0,3,4,0,9,0,8953,11603),(208,'St. Barth',6,0,0,0,6,0,0,607,0,0,0),(209,'Western Sahara',6,0,0,0,5,1,0,10,0,0,0),(210,'British Virgin Islands',5,0,1,0,3,1,0,165,33,0,0),(211,'Caribbean Netherlands',5,0,0,0,0,5,0,191,0,110,4195),(212,'Sao Tome and Principe',4,0,0,0,0,4,0,18,0,19,87),(213,'South Sudan',4,0,0,0,0,4,0,0,0,0,0),(214,'Anguilla',3,0,0,0,1,2,0,200,0,0,0),(215,'Saint Pierre Miquelon',1,0,0,0,0,1,0,173,0,0,0),(216,'Yemen',1,0,0,0,0,1,0,0,0,0,0),(217,'China',82798,10,4632,0,77207,959,63,58,3,0,0),(218,'North America',914550,1639,51231,143,102647,760672,15279,0,0,0,0),(219,'Europe',1180871,12587,111972,770,369993,698906,26999,0,0,0,0),(220,'Asia',428072,5785,16005,151,201593,210474,5942,0,0,0,0),(221,'South America',97150,489,4596,21,41410,51144,9499,0,0,0,0),(222,'Oceania',8213,15,91,3,6171,1951,49,0,0,0,0),(223,'Africa',26814,160,1246,2,7356,18212,174,0,0,0,0),(224,'World',2656391,20675,185156,1090,729815,1741420,57946,341,23,0,0),(225,'USA',849092,375,47681,22,84050,717361,14016,2565,144,4326648,13071),(226,'Spain',213024,4635,22157,440,89250,101617,7705,4556,474,930230,19896),(227,'Italy',187327,0,25085,0,54543,107699,2384,3098,415,1513251,25028),(228,'France',159877,0,21340,0,40657,97880,5218,2449,327,463662,7103),(229,'Germany',150729,81,5315,0,103300,42114,2908,1799,63,2072669,24738),(230,'Turkey',98674,0,2376,0,16477,79821,1814,1170,28,750944,8904),(231,'Iran',87026,1030,5481,90,64843,16702,3105,1036,65,389507,4637),(232,'Russia',62773,4774,555,42,4891,57327,2300,430,4,2401616,16457),(233,'Brazil',46182,425,2924,18,25318,17940,8318,217,14,291922,1373),(234,'Belgium',42797,908,6490,228,9800,26507,993,3693,560,171400,14789),(235,'Canada',40190,0,1974,0,13986,24230,557,1065,52,612192,16220),(236,'Switzerland',28496,228,1509,0,19900,7087,386,3293,174,227554,26293),(237,'Portugal',21982,0,785,0,1143,20054,207,2156,77,284741,27925),(238,'India',21797,427,681,0,4376,16740,0,16,0,500542,363),(239,'Peru',19250,0,530,0,7027,11693,396,584,16,170400,5168),(240,'Ireland',16671,0,769,0,9233,6669,147,3376,156,111584,22598),(241,'Sweden',16004,0,1937,0,550,13517,515,1585,192,94500,9357),(242,'Austria',15002,77,522,12,11694,2786,169,1666,58,205835,22854),(243,'Israel',14592,94,191,2,5334,9067,136,1686,22,240303,27763),(244,'Saudi Arabia',12772,0,114,0,1812,10846,82,367,3,200000,5745),(245,'Japan',11950,0,299,0,1424,10227,241,94,2,130587,1033),(246,'Chile',11296,0,160,0,5386,5750,399,591,8,128722,6734),(247,'Singapore',11178,1037,12,0,896,10270,27,1911,2,94796,16203),(248,'Ecuador',10850,0,537,0,1262,9051,141,615,30,34840,1975),(249,'S. Korea',10702,8,240,2,8411,2051,55,209,5,583971,11390),(250,'Mexico',10544,1043,970,113,2627,6947,378,82,8,49570,384),(251,'Pakistan',10513,437,224,12,2337,7952,60,48,1,124549,564),(252,'Poland',10346,177,435,9,1740,8171,160,273,11,238799,6310),(253,'Romania',10096,386,527,3,2478,7091,236,525,27,113336,5891),(254,'UAE',8756,518,56,4,1637,7063,1,885,6,790000,79875),(255,'Denmark',8073,161,384,0,5087,2602,80,1394,66,116621,20134),(256,'Indonesia',7775,357,647,12,960,6168,0,28,2,59935,219),(257,'Qatar',7764,623,10,0,750,7004,37,2695,3,73457,25497),(258,'Norway',7338,0,189,2,32,7117,54,1354,35,148656,27421),(259,'Belarus',7281,0,58,0,769,6454,92,771,6,114955,12165),(260,'Ukraine',7170,578,187,13,504,6479,45,164,4,72296,1653),(261,'Czechia',7136,4,210,2,2002,4924,76,666,20,195725,18277),(262,'Serbia',7114,0,134,0,1025,5955,101,814,15,48636,5566),(263,'Philippines',6981,271,462,16,722,5797,1,64,4,72346,660),(264,'Australia',6661,12,75,1,5045,1541,45,261,3,466659,18300),(265,'Malaysia',5603,71,95,2,3542,1966,42,173,3,113755,3515),(266,'Dominican Republic',5300,0,260,0,581,4459,135,489,24,18261,1683),(267,'Panama',4992,171,144,3,255,4593,97,1157,33,22702,5261),(268,'Colombia',4356,0,206,0,870,3280,98,86,4,71500,1405),(269,'Finland',4284,155,149,0,2000,2135,63,773,27,70993,12813),(270,'Bangladesh',4186,414,127,7,108,3951,1,25,0,32630,198),(271,'Egypt',3659,0,276,0,935,2448,0,36,3,55000,537),(272,'Luxembourg',3654,0,80,0,711,2863,32,5837,128,36087,57649),(273,'South Africa',3635,0,65,0,1055,2515,36,61,1,133774,2256),(274,'Morocco',3537,91,151,2,430,2956,1,96,4,20832,564),(275,'Argentina',3288,0,159,0,872,2257,123,73,4,39228,868),(276,'Algeria',2910,0,402,0,1204,1304,40,66,9,6500,148),(277,'Thailand',2839,13,50,1,2430,359,61,41,0,142589,2043),(278,'Moldova',2778,0,76,1,661,2041,212,689,19,11763,2916),(279,'Greece',2408,0,121,0,577,1710,55,231,12,56944,5463),(280,'Kuwait',2399,151,14,1,498,1887,55,562,3,0,0),(281,'Hungary',2284,116,239,14,390,1655,61,236,25,55390,5734),(282,'Kazakhstan',2207,72,20,1,536,1651,29,118,1,153492,8175),(283,'Bahrain',2027,0,7,0,1026,994,2,1191,4,97796,57474),(284,'Croatia',1950,0,48,0,869,1033,19,475,12,27614,6726),(285,'Iceland',1785,0,10,0,1462,313,5,5231,29,44468,130312),(286,'Oman',1716,102,8,0,307,1401,3,336,2,0,0),(287,'Uzbekistan',1716,0,7,0,454,1255,8,51,0,150000,4482),(288,'Iraq',1631,0,83,0,1146,402,0,41,2,62880,1563),(289,'Estonia',1592,33,45,1,192,1355,7,1200,34,45181,34059),(290,'Armenia',1523,50,24,0,659,840,10,514,8,15960,5386),(291,'Azerbaijan',1518,0,20,0,907,591,14,150,2,108221,10674),(292,'New Zealand',1451,3,16,2,1065,370,2,301,3,101277,21002),(293,'Bosnia and Herzegovina',1413,45,54,1,485,874,4,431,16,21432,6533),(294,'Lithuania',1398,28,38,0,399,961,17,514,14,83591,30706),(295,'Slovenia',1366,13,79,0,211,1076,23,657,38,45703,21984),(296,'Slovakia',1325,81,15,1,288,1022,9,243,3,57421,10517),(297,'North Macedonia',1259,0,56,0,272,931,8,604,27,13000,6240),(298,'Afghanistan',1226,50,40,0,177,1009,7,31,1,6422,165),(299,'Cuba',1189,0,40,0,341,808,16,105,4,30416,2685),(300,'Cameroon',1163,0,43,0,397,723,33,44,2,0,0),(301,'Ghana',1154,0,9,0,99,1046,4,37,0,68591,2207),(302,'Bulgaria',1081,57,50,1,190,841,37,156,7,27000,3886),(303,'Hong Kong',1036,2,4,0,699,333,9,138,0,131786,17579),(304,'Djibouti',974,0,2,0,183,789,0,986,2,10272,10397),(305,'Ivory Coast',952,0,14,0,310,628,0,36,0,0,0),(306,'Tunisia',909,0,38,0,190,681,32,77,3,18861,1596),(307,'Nigeria',873,0,28,0,197,648,2,4,0,8003,39),(308,'Cyprus',790,0,13,0,98,679,15,654,11,37081,30712),(309,'Latvia',778,17,11,0,133,634,6,412,6,41041,21759),(310,'Guinea',761,0,6,0,164,591,0,58,0,0,0),(311,'Andorra',723,0,37,0,309,377,17,9357,479,1673,21653),(312,'Diamond Princess',712,0,13,0,645,54,4,0,0,0,0),(313,'Lebanon',682,0,22,0,113,547,26,100,3,22853,3348),(314,'Costa Rica',681,0,6,0,180,495,6,134,1,11766,2310),(315,'Bolivia',672,63,40,3,44,588,3,58,3,4420,379),(316,'Albania',663,29,27,0,385,251,4,230,9,6509,2262),(317,'Niger',662,0,22,0,193,447,0,27,0,4832,200),(318,'Kyrgyzstan',631,19,8,1,302,321,11,97,1,39615,6072),(319,'Burkina Faso',609,0,39,0,389,181,0,29,2,0,0),(320,'Uruguay',549,0,12,0,337,200,10,158,3,14532,4183),(321,'Honduras',519,9,47,1,31,441,10,52,5,2535,256),(322,'Channel Islands',498,0,28,0,285,185,0,2864,161,3320,19095),(323,'San Marino',488,0,40,0,62,386,4,14382,1179,1872,55171),(324,'Palestine',480,6,4,0,92,384,0,94,0,27000,5293),(325,'Senegal',479,37,6,0,257,216,1,29,0,466,28),(326,'Malta',445,1,3,0,204,238,2,1008,7,26148,59220),(327,'Jordan',435,0,7,0,315,113,5,43,0,36000,3528),(328,'Taiwan',427,1,6,0,253,168,0,18,0,58003,2435),(329,'Georgia',420,4,5,0,107,308,6,105,1,8375,2099),(330,'RÃ©union',410,0,0,0,238,172,2,458,0,0,0),(331,'DRC',359,0,25,0,45,289,0,4,0,0,0),(332,'Guatemala',342,26,10,2,25,307,3,19,0,7200,402),(333,'Sri Lanka',334,4,7,0,105,222,2,16,0,7393,345),(334,'Mauritius',329,0,9,0,261,59,3,259,7,12300,9672),(335,'Mayotte',326,0,4,0,125,197,4,1195,15,2100,7698),(336,'Montenegro',316,1,5,0,116,195,7,503,8,5085,8096),(337,'Isle of Man',307,0,15,0,212,80,20,3610,176,2654,31211),(338,'Kenya',303,0,14,0,83,206,2,6,0,14704,273),(339,'Venezuela',298,0,10,0,122,166,4,10,0,347236,12211),(340,'Mali',293,0,17,0,73,203,0,14,0,2023,100),(341,'Somalia',286,0,8,0,4,274,2,18,0,0,0),(342,'Tanzania',284,0,10,0,11,263,7,5,0,0,0),(343,'Vietnam',268,0,0,0,224,44,8,3,0,206253,2119),(344,'Jamaica',252,0,6,0,28,218,0,85,2,2125,718),(345,'El Salvador',250,13,8,1,67,175,2,39,1,15385,2372),(346,'Paraguay',213,0,9,0,62,142,1,30,1,6292,882),(347,'Faeroe Islands',187,2,0,0,178,9,0,3827,0,6375,130467),(348,'Congo',186,0,6,0,16,164,0,34,1,0,0),(349,'Gabon',166,0,1,0,24,141,2,75,0,572,257),(350,'Martinique',164,0,14,0,73,77,6,437,37,0,0),(351,'Sudan',162,22,13,0,14,135,0,4,0,0,0),(352,'Rwanda',153,0,0,0,84,69,0,12,0,6959,537),(353,'Guadeloupe',148,0,12,0,76,60,13,370,30,0,0),(354,'Brunei',138,0,1,0,117,20,2,315,2,12149,27770),(355,'Gibraltar',132,0,0,0,127,5,0,3918,0,2020,59957),(356,'Myanmar',127,4,5,0,9,113,0,2,0,5270,97),(357,'Cambodia',122,0,0,0,110,12,1,7,0,5768,345),(358,'Madagascar',121,0,0,0,58,63,1,4,0,2357,85),(359,'Ethiopia',116,0,3,0,21,92,0,1,0,10736,93),(360,'Trinidad and Tobago',115,0,8,0,37,70,0,82,6,1454,1039),(361,'French Guiana',107,0,1,0,84,22,1,358,3,0,0),(362,'Liberia',101,0,8,0,20,73,0,20,2,0,0),(363,'Aruba',100,0,2,0,68,30,4,937,19,1504,14087),(364,'Bermuda',99,0,5,0,39,55,10,1590,80,949,15238),(365,'Monaco',94,0,3,0,26,65,2,2395,76,0,0),(366,'Maldives',94,8,0,0,16,78,2,174,0,4696,8688),(367,'Togo',88,0,6,0,56,26,0,11,0,4733,572),(368,'Equatorial Guinea',84,0,1,0,7,76,0,60,0,854,609),(369,'Liechtenstein',81,0,1,0,55,25,0,2124,26,900,23605),(370,'Barbados',76,0,6,0,27,43,4,264,21,1162,4043),(371,'Zambia',74,0,3,0,35,36,1,4,0,2586,141),(372,'Sint Maarten',73,2,12,1,22,39,8,1703,280,266,6204),(373,'Cabo Verde',73,0,1,0,1,71,0,131,2,0,0),(374,'Guyana',67,0,7,0,9,51,5,85,9,348,442),(375,'Cayman Islands',66,0,1,0,7,58,3,1004,15,778,11838),(376,'Bahamas',65,0,9,0,12,44,1,165,23,0,0),(377,'Uganda',63,0,0,0,46,17,0,1,0,16057,351),(378,'Haiti',62,0,4,0,2,56,0,5,0,642,56),(379,'Sierra Leone',61,0,0,0,6,55,0,8,0,0,0),(380,'Libya',60,0,1,0,15,44,0,9,0,1181,172),(381,'French Polynesia',57,0,0,0,36,21,1,203,0,1803,6418),(382,'Benin',54,0,1,0,27,26,0,4,0,0,0),(383,'Guinea-Bissau',50,0,0,0,3,47,0,25,0,1500,762),(384,'Nepal',47,2,0,0,9,38,0,2,0,8773,301),(385,'Macao',45,0,0,0,26,19,1,69,0,0,0),(386,'Syria',42,0,3,0,6,33,0,2,0,0,0),(387,'Mozambique',41,0,0,0,8,33,0,1,0,1247,40),(388,'Eritrea',39,0,0,0,6,33,0,11,0,0,0),(389,'Saint Martin',38,0,2,0,19,17,3,983,52,0,0),(390,'Mongolia',35,0,0,0,8,27,0,11,0,7156,2183),(391,'Malawi',33,10,3,0,3,27,1,2,0,519,27),(392,'Chad',33,0,0,0,8,25,0,2,0,0,0),(393,'Eswatini',31,0,1,0,8,22,0,27,0,714,615),(394,'Zimbabwe',28,0,4,0,2,22,0,2,0,4990,336),(395,'Angola',25,0,2,0,6,17,0,0,0,0,0),(396,'Antigua and Barbuda',24,0,3,0,10,11,1,245,31,108,1103),(397,'Timor-Leste',23,0,0,0,1,22,0,17,0,322,244),(398,'Botswana',22,0,1,0,0,21,0,9,0,4432,1885),(399,'Laos',19,0,0,0,4,15,0,3,0,1461,201),(400,'Belize',18,0,2,0,5,11,1,45,5,816,2052),(401,'Fiji',18,0,0,0,8,10,0,20,0,0,0),(402,'New Caledonia',18,0,0,0,17,1,1,63,0,3772,13212),(403,'Dominica',16,0,0,0,9,7,0,222,0,377,5237),(404,'Namibia',16,0,0,0,7,9,0,6,0,524,206),(405,'Grenada',15,0,0,0,6,9,4,133,0,92,818),(406,'Saint Kitts and Nevis',15,0,0,0,1,14,0,282,0,257,4831),(407,'Saint Lucia',15,0,0,0,15,0,0,82,0,364,1982),(408,'CuraÃ§ao',14,0,1,0,11,2,0,85,6,302,1840),(409,'CAR',14,0,0,0,10,4,0,3,0,0,0),(410,'St. Vincent Grenadines',13,0,0,0,3,10,0,117,0,99,892),(411,'Falkland Islands',12,1,0,0,11,1,0,3448,0,337,96839),(412,'Burundi',11,0,1,0,4,6,0,0,0,284,24),(413,'Turks and Caicos',11,0,1,0,4,6,0,284,26,83,2144),(414,'Greenland',11,0,0,0,11,0,0,194,0,1150,20257),(415,'Montserrat',11,0,0,0,2,9,1,2204,0,36,7212),(416,'Seychelles',11,0,0,0,5,6,0,112,0,0,0),(417,'Nicaragua',10,0,2,0,7,1,0,2,0,0,0),(418,'Gambia',10,0,1,0,2,7,0,4,0,316,131),(419,'Suriname',10,0,1,0,6,3,0,17,2,404,689),(420,'MS Zaandam',9,0,2,0,0,7,0,0,0,0,0),(421,'Vatican City',9,0,0,0,2,7,0,11236,0,0,0),(422,'Papua New Guinea',8,0,0,0,0,8,0,0,0,604,68),(423,'Mauritania',7,0,1,0,6,0,0,2,0,969,208),(424,'Bhutan',7,0,0,0,3,4,0,9,0,8953,11603),(425,'St. Barth',6,0,0,0,6,0,0,607,0,0,0),(426,'Western Sahara',6,0,0,0,5,1,0,10,0,0,0),(427,'British Virgin Islands',5,0,1,0,3,1,0,165,33,0,0),(428,'Caribbean Netherlands',5,0,0,0,0,5,0,191,0,110,4195),(429,'Sao Tome and Principe',4,0,0,0,0,4,0,18,0,19,87),(430,'South Sudan',4,0,0,0,0,4,0,0,0,0,0),(431,'Anguilla',3,0,0,0,1,2,0,200,0,0,0),(432,'Saint Pierre Miquelon',1,0,0,0,0,1,0,173,0,0,0),(433,'Yemen',1,0,0,0,0,1,0,0,0,0,0),(434,'China',82798,10,4632,0,77207,959,63,58,3,0,0);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-26 13:34:52
