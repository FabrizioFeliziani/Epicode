-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: logistica
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `viaggi`
--

DROP TABLE IF EXISTS `viaggi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viaggi` (
  `id_viaggi` int NOT NULL AUTO_INCREMENT,
  `autista` smallint NOT NULL,
  `mezzo` smallint NOT NULL,
  `data_partenza` date NOT NULL,
  `data_arrivo` date DEFAULT NULL,
  `prenotazione_id` int NOT NULL,
  PRIMARY KEY (`id_viaggi`),
  KEY `id_mezzo_idx` (`mezzo`),
  KEY `id_autista_idx` (`autista`),
  KEY `id_prenotazione_idx` (`prenotazione_id`),
  CONSTRAINT `id_autista` FOREIGN KEY (`autista`) REFERENCES `autisti` (`id_autista`),
  CONSTRAINT `id_mezzo` FOREIGN KEY (`mezzo`) REFERENCES `mezzi` (`id_mezzo`),
  CONSTRAINT `id_prenotazione` FOREIGN KEY (`prenotazione_id`) REFERENCES `prenotazioni` (`id_prenotazione`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viaggi`
--

LOCK TABLES `viaggi` WRITE;
/*!40000 ALTER TABLE `viaggi` DISABLE KEYS */;
INSERT INTO `viaggi` VALUES (1,3,3,'2000-02-01','2000-02-03',1),(2,1,1,'2000-02-21','2000-02-22',2),(3,5,5,'2000-02-26','2000-03-28',3),(4,7,6,'2000-04-20','2000-04-24',4),(5,3,2,'2000-05-10','2000-05-15',5),(6,8,1,'2001-02-03','2001-02-06',6),(7,10,2,'2002-05-08','2002-05-10',7),(8,15,7,'2006-08-09','2006-08-12',8),(9,13,6,'2010-12-18','2011-01-03',9),(10,9,5,'2014-12-27','2015-01-02',10),(11,2,12,'2016-02-16','2016-02-24',11),(12,6,8,'2020-09-18','2020-09-22',12),(13,1,1,'2020-06-18','2020-06-22',13),(14,8,5,'2021-01-20','2021-01-22',14),(15,15,11,'2022-03-18','2022-03-19',15),(16,1,1,'2023-03-12',NULL,16),(17,1,1,'2023-03-12',NULL,17);
/*!40000 ALTER TABLE `viaggi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-12 20:00:19
