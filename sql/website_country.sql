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
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'World',2994960,1698,206997,82,878955,1909008,57603,384,26,0,0),(2,'USA',987322,162,55415,2,118781,813126,15143,2983,167,5470555,16527),(3,'Spain',226629,0,23190,0,117727,85712,7764,4847,496,1199548,25656),(4,'Italy',197675,0,26644,0,64928,106103,2009,3269,441,1757659,29071),(5,'France',162100,0,22856,0,44903,94341,4682,2483,350,463662,7103),(6,'Germany',157770,0,5976,0,112000,39794,2570,1883,71,2072669,24738),(7,'Turkey',110130,0,2805,0,29140,78185,1776,1306,33,898742,10656),(8,'Iran',90481,0,5710,0,69657,15114,3079,1077,68,421313,5016),(9,'Russia',80949,0,747,0,6767,73435,2300,555,5,2877699,19719),(10,'Brazil',63100,241,4286,15,30152,28662,8318,297,20,291922,1373),(11,'Canada',46895,0,2560,0,17321,27014,557,1243,68,707508,18746),(12,'Belgium',46134,0,7094,0,10785,28255,891,3981,612,189067,16313),(13,'Switzerland',29061,0,1610,0,21800,5651,204,3358,186,245300,28343),(14,'India',27892,2,881,0,6523,20488,0,20,0,665819,482),(15,'Peru',27517,0,728,0,8088,18701,554,835,22,232747,7059),(16,'Portugal',23864,0,903,0,1329,21632,182,2340,89,330512,32414),(17,'Ecuador',22719,0,576,0,1366,20777,127,1288,33,56513,3203),(18,'Ireland',19262,0,1087,0,9233,8942,142,3901,220,127319,25785),(19,'Saudi Arabia',17522,0,139,0,2357,15026,115,503,4,200000,5745),(20,'Israel',15443,0,201,0,6731,8511,133,1784,23,302691,34971),(21,'Austria',15225,0,542,0,12282,2401,145,1690,60,227631,25274),(22,'Mexico',14677,835,1351,46,8354,4972,378,114,10,67635,525),(23,'Singapore',13624,0,12,0,1060,12552,22,2329,2,121774,20815),(24,'Japan',13441,0,372,0,1809,11260,296,106,3,149074,1179),(25,'Chile',13331,0,189,0,7024,6118,418,697,10,155975,8159),(26,'Pakistan',13328,0,281,0,3029,10018,111,60,1,150756,682),(27,'Poland',11617,0,535,0,2265,8817,160,307,14,290633,7679),(28,'Romania',11036,0,619,0,3054,7363,236,574,32,136518,7096),(29,'S. Korea',10738,10,243,1,8764,1731,55,209,5,601660,11735),(30,'Belarus',10463,0,72,0,1695,8696,92,1107,8,147525,15612),(31,'UAE',10349,0,76,0,1978,8295,1,1046,8,1057326,106904),(32,'Qatar',10287,0,10,0,1012,9265,72,3571,3,82289,28562),(33,'Indonesia',8882,0,743,0,1107,7032,0,32,3,72099,264),(34,'Ukraine',8617,0,209,0,840,7568,107,197,5,89373,2044),(35,'Denmark',8575,0,422,0,5805,2348,70,1480,73,146915,25364),(36,'Serbia',8042,0,156,0,1182,6704,85,920,18,64303,7360),(37,'Philippines',7579,0,501,0,862,6216,1,69,5,84789,774),(38,'Norway',7527,0,201,0,32,7294,49,1388,37,155125,28614),(39,'Czechia',7404,0,220,0,2545,4639,79,691,21,215116,20087),(40,'Australia',6719,3,83,0,5584,1052,43,263,3,515079,20199),(41,'Dominican Republic',6135,0,278,0,910,4947,144,566,26,22498,2074),(42,'Malaysia',5780,0,98,0,3862,1820,36,179,3,131491,4063),(43,'Panama',5779,241,165,6,369,5245,85,1339,38,26642,6175),(44,'Bangladesh',5416,0,145,0,122,5149,1,33,0,46589,283),(45,'Colombia',5379,0,244,0,1133,4002,117,106,5,87199,1714),(46,'Finland',4576,0,190,0,2500,1886,62,826,34,80300,14493),(47,'South Africa',4546,0,87,0,1473,2986,36,77,1,168643,2843),(48,'Egypt',4534,0,317,0,1176,3041,0,44,3,90000,879),(49,'Morocco',4065,0,161,0,593,3311,1,110,4,27399,742),(50,'Argentina',3892,0,192,0,1107,2593,144,86,4,49905,1104),(51,'Luxembourg',3723,0,88,0,3104,531,22,5947,141,39003,62307),(52,'Moldova',3408,0,96,0,895,2417,212,845,24,11763,2916),(53,'Algeria',3382,0,425,0,1508,1449,40,77,10,6500,148),(54,'Kuwait',3075,0,20,0,806,2249,61,720,5,0,0),(55,'Thailand',2922,0,51,0,2594,277,61,42,0,142589,2043),(56,'Kazakhstan',2717,0,25,0,682,2010,31,145,1,196298,10454),(57,'Bahrain',2647,0,8,0,1189,1450,2,1556,5,114110,67061),(58,'Greece',2517,0,134,0,577,1806,46,241,13,64608,6199),(59,'Hungary',2500,0,272,0,485,1743,61,259,28,63505,6574),(60,'Croatia',2030,0,55,0,1103,872,23,494,13,31622,7703),(61,'Oman',1998,0,10,0,333,1655,3,391,2,0,0),(62,'Uzbekistan',1869,0,8,0,789,1072,8,56,0,242536,7247),(63,'Iraq',1820,0,87,0,1263,470,0,45,2,71471,1777),(64,'Iceland',1792,0,10,0,1608,174,3,5251,29,46352,135833),(65,'Armenia',1746,0,28,0,833,885,10,589,9,17931,6051),(66,'Azerbaijan',1645,0,21,0,1139,485,15,162,2,120479,11883),(67,'Estonia',1643,0,49,0,233,1361,6,1239,37,47933,36134),(68,'Cameroon',1621,0,56,0,786,779,12,61,2,0,0),(69,'Ghana',1550,0,11,0,155,1384,4,50,0,100622,3238),(70,'Afghanistan',1531,0,50,0,207,1274,7,39,1,8090,208),(71,'Bosnia and Herzegovina',1516,0,59,0,624,833,4,462,18,25830,7873),(72,'New Zealand',1469,0,19,1,1180,270,1,305,4,123920,25698),(73,'Lithuania',1438,0,41,0,467,930,17,528,15,104488,38382),(74,'Slovenia',1396,0,82,0,221,1093,23,671,39,48973,23557),(75,'North Macedonia',1386,0,61,0,500,825,13,665,29,15120,7257),(76,'Slovakia',1379,0,18,0,394,967,5,253,3,70928,12991),(77,'Cuba',1369,0,54,0,501,814,11,121,5,39828,3516),(78,'Bulgaria',1300,0,56,0,205,1039,41,187,8,27000,3886),(79,'Nigeria',1273,0,40,0,239,994,2,6,0,10918,53),(80,'Ivory Coast',1150,0,14,0,468,668,0,44,0,0,0),(81,'Hong Kong',1038,0,4,0,772,262,4,138,0,145640,19426),(82,'Djibouti',1023,0,2,0,411,610,0,1035,2,11741,11884),(83,'Guinea',996,0,7,0,208,781,0,76,0,0,0),(84,'Bolivia',950,84,50,4,80,820,3,81,4,5791,496),(85,'Tunisia',949,0,38,0,216,695,20,80,3,20818,1761),(86,'Cyprus',817,0,14,0,148,655,15,677,12,43542,36064),(87,'Latvia',812,0,12,0,267,533,6,430,6,47671,25274),(88,'Andorra',738,0,40,0,344,354,17,9552,518,1673,21653),(89,'Albania',726,0,28,0,410,288,4,252,10,7279,2529),(90,'Diamond Princess',712,0,13,0,645,54,4,0,0,0,0),(91,'Lebanon',707,0,24,0,145,538,44,104,4,27827,4077),(92,'Niger',696,0,29,0,350,317,0,29,1,5013,207),(93,'Costa Rica',695,0,6,0,264,425,8,136,1,12467,2447),(94,'Kyrgyzstan',682,0,8,0,370,304,13,105,1,45627,6994),(95,'Senegal',671,0,9,0,283,379,1,40,0,466,28),(96,'Honduras',661,34,61,2,69,531,10,67,6,3457,349),(97,'Burkina Faso',632,0,42,0,453,137,0,30,2,0,0),(98,'Uruguay',606,10,15,1,375,216,10,174,4,17063,4912),(99,'San Marino',538,0,41,0,64,433,4,15856,1208,2074,61124),(100,'Channel Islands',525,0,35,0,332,158,0,3020,201,5342,30725),(101,'Sri Lanka',523,0,7,0,120,396,2,24,0,15240,712),(102,'Guatemala',500,27,15,2,49,436,5,28,0,7200,402),(103,'Georgia',486,0,6,0,149,331,6,122,2,9699,2431),(104,'Malta',448,0,4,0,282,162,2,1015,9,27981,63371),(105,'Jordan',447,0,7,0,337,103,5,44,0,63737,6247),(106,'DRC',442,0,28,0,50,364,0,5,0,0,0),(107,'Somalia',436,0,23,0,10,403,2,27,1,0,0),(108,'Taiwan',429,0,6,0,281,142,0,18,0,60459,2539),(109,'RÃ©union',417,0,0,0,300,117,2,466,0,0,0),(110,'Mayotte',401,0,4,0,144,253,4,1470,15,2500,9164),(111,'Mali',389,0,23,0,112,254,0,19,1,2172,107),(112,'Kenya',355,0,14,0,106,235,2,7,0,17992,335),(113,'Jamaica',350,45,7,0,28,315,0,118,2,3262,1102),(114,'Palestine',342,0,2,0,83,257,0,67,0,27000,5293),(115,'Mauritius',332,0,9,0,299,24,3,261,7,14445,11358),(116,'Venezuela',325,0,10,0,137,178,3,11,0,423592,14896),(117,'Montenegro',321,0,7,0,153,161,7,511,11,5085,8096),(118,'Isle of Man',308,0,18,0,247,43,22,3622,212,2854,33563),(119,'Tanzania',299,0,10,0,48,241,7,5,0,0,0),(120,'El Salvador',298,0,8,0,83,207,4,46,1,18686,2881),(121,'Vietnam',270,0,0,0,225,45,8,3,0,212965,2188),(122,'Equatorial Guinea',258,0,1,0,8,249,0,184,0,854,609),(123,'Sudan',237,0,21,0,20,196,0,5,0,0,0),(124,'Paraguay',228,0,9,0,85,134,1,32,1,7630,1070),(125,'Maldives',214,0,0,0,17,197,2,396,0,5296,9798),(126,'Congo',200,0,6,0,19,175,0,36,1,0,0),(127,'Rwanda',191,0,0,0,92,99,0,15,0,6959,537),(128,'Faeroe Islands',187,0,0,0,178,9,0,3827,0,6588,134826),(129,'Gabon',176,0,3,0,30,143,1,79,1,572,257),(130,'Martinique',175,0,14,0,77,84,7,466,37,0,0),(131,'Guadeloupe',149,0,12,0,82,55,11,372,30,0,0),(132,'Myanmar',146,0,5,0,10,131,0,3,0,6678,123),(133,'Gibraltar',141,0,0,0,131,10,0,4185,0,2198,65240),(134,'Brunei',138,0,1,0,123,14,2,315,2,12981,29672),(135,'Liberia',124,0,12,0,25,87,0,25,2,0,0),(136,'Madagascar',124,0,0,0,71,53,1,4,0,2357,85),(137,'Ethiopia',123,0,3,0,41,79,0,1,0,13645,119),(138,'Cambodia',122,0,0,0,119,3,1,7,0,11576,692),(139,'Trinidad and Tobago',116,1,8,0,58,50,0,83,6,1525,1090),(140,'French Guiana',111,0,1,0,87,23,0,372,3,0,0),(141,'Bermuda',109,0,6,1,39,64,10,1750,96,1546,24824),(142,'Cabo Verde',106,0,1,0,1,104,0,191,2,791,1423),(143,'Aruba',100,0,2,0,73,25,4,937,19,1622,15192),(144,'Togo',98,0,6,0,62,30,0,12,0,5951,719),(145,'Monaco',94,0,4,0,42,48,1,2395,102,0,0),(146,'Sierra Leone',93,0,4,0,10,79,0,12,0,0,0),(147,'Zambia',88,0,3,0,42,43,1,5,0,2586,141),(148,'Liechtenstein',82,0,1,0,55,26,0,2151,26,900,23605),(149,'Bahamas',80,0,11,0,22,47,1,203,28,0,0),(150,'Barbados',79,0,6,0,39,34,4,275,21,1663,5787),(151,'Uganda',79,0,0,0,46,33,0,2,0,20329,444),(152,'Mozambique',76,0,0,0,12,64,0,2,0,1644,53),(153,'Sint Maarten',74,0,13,0,33,28,7,1726,303,266,6204),(154,'Guyana',74,0,8,0,12,54,5,94,10,442,562),(155,'Haiti',74,0,6,0,7,61,0,6,0,769,67),(156,'Cayman Islands',70,0,1,0,8,61,3,1065,15,940,14303),(157,'Benin',64,0,1,0,33,30,0,5,0,0,0),(158,'Libya',61,0,2,0,18,41,0,9,0,1623,236),(159,'Eswatini',59,0,1,0,10,48,0,51,0,714,615),(160,'French Polynesia',57,0,0,0,41,16,1,203,0,2069,7365),(161,'Guinea-Bissau',53,0,1,0,3,49,0,27,0,1500,762),(162,'Nepal',52,0,0,0,16,36,0,2,0,51367,1763),(163,'Chad',46,0,0,0,15,31,0,3,0,0,0),(164,'Macao',45,0,0,0,31,14,1,69,0,0,0),(165,'Syria',43,0,3,0,14,26,0,2,0,0,0),(166,'Eritrea',39,0,0,0,13,26,0,11,0,0,0),(167,'Saint Martin',38,0,3,0,24,11,3,983,78,0,0),(168,'Mongolia',38,0,0,0,10,28,0,12,0,7292,2224),(169,'Malawi',34,0,3,0,4,27,1,2,0,617,32),(170,'Zimbabwe',31,0,4,0,2,25,0,2,0,6067,408),(171,'Angola',26,0,2,0,6,18,0,0,0,0,0),(172,'Antigua and Barbuda',24,0,3,0,11,10,1,245,31,113,1154),(173,'Timor-Leste',24,0,0,0,2,22,0,18,0,322,244),(174,'Botswana',22,0,1,0,0,21,0,9,0,5023,2136),(175,'CAR',19,0,0,0,10,9,0,4,0,0,0),(176,'Laos',19,0,0,0,7,12,0,3,0,1735,238),(177,'Belize',18,0,2,0,5,11,1,45,5,816,2052),(178,'Fiji',18,0,0,0,12,6,0,20,0,1007,1123),(179,'Grenada',18,0,0,0,7,11,4,160,0,175,1555),(180,'New Caledonia',18,0,0,0,17,1,1,63,0,3952,13842),(181,'CuraÃ§ao',16,0,1,0,11,4,0,98,6,304,1853),(182,'Dominica',16,0,0,0,13,3,0,222,0,383,5320),(183,'Namibia',16,0,0,0,8,8,0,6,0,675,266),(184,'Saint Kitts and Nevis',15,0,0,0,2,13,0,282,0,260,4887),(185,'Saint Lucia',15,0,0,0,15,0,0,82,0,446,2429),(186,'St. Vincent Grenadines',14,0,0,0,5,9,0,126,0,108,973),(187,'Nicaragua',13,0,3,0,7,3,0,2,0,0,0),(188,'Falkland Islands',13,0,0,0,11,2,0,3736,0,353,101437),(189,'Burundi',11,0,1,0,4,6,0,0,0,284,24),(190,'Montserrat',11,0,1,0,2,8,1,2204,200,36,7212),(191,'Turks and Caicos',11,0,1,0,4,6,0,284,26,83,2144),(192,'Greenland',11,0,0,0,11,0,0,194,0,1200,21138),(193,'Seychelles',11,0,0,0,6,5,0,112,0,0,0),(194,'Gambia',10,0,1,0,8,1,0,4,0,401,166),(195,'Suriname',10,0,1,0,7,2,0,17,2,404,689),(196,'MS Zaandam',9,0,2,0,0,7,0,0,0,0,0),(197,'Vatican City',9,0,0,0,2,7,0,11236,0,0,0),(198,'Papua New Guinea',8,0,0,0,0,8,0,0,0,604,68),(199,'Mauritania',7,0,1,0,6,0,0,2,0,1032,222),(200,'Bhutan',7,0,0,0,4,3,0,9,0,9791,12689),(201,'British Virgin Islands',6,0,1,0,3,2,0,198,33,0,0),(202,'St. Barth',6,0,0,0,6,0,0,607,0,0,0),(203,'South Sudan',6,0,0,0,0,6,0,0,0,0,0),(204,'Western Sahara',6,0,0,0,5,1,0,10,0,0,0),(205,'Caribbean Netherlands',5,0,0,0,0,5,0,191,0,110,4195),(206,'Sao Tome and Principe',4,0,0,0,0,4,0,18,0,19,87),(207,'Anguilla',3,0,0,0,1,2,0,200,0,0,0),(208,'Saint Pierre Miquelon',1,0,0,0,0,1,0,173,0,0,0),(209,'Yemen',1,0,0,0,1,0,0,0,0,120,4),(210,'China',82830,3,4633,1,77474,723,52,58,3,0,0);
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

-- Dump completed on 2020-04-28  9:43:22
