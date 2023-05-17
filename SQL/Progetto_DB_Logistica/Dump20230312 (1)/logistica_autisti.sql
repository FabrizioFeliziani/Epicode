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
-- Table structure for table `autisti`
--

DROP TABLE IF EXISTS `autisti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autisti` (
  `id_autista` smallint NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) NOT NULL,
  `cognome` varchar(64) NOT NULL,
  `data_nascita` date NOT NULL,
  `data_assunzione` date NOT NULL,
  `settore` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_autista`),
  KEY `settore` (`settore`),
  CONSTRAINT `autisti_ibfk_1` FOREIGN KEY (`settore`) REFERENCES `settore` (`id_settore`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autisti`
--

LOCK TABLES `autisti` WRITE;
/*!40000 ALTER TABLE `autisti` DISABLE KEYS */;
INSERT INTO `autisti` VALUES (1,'Fabrizio','Feliziani','1994-02-12','2010-01-01',1),(2,'Giuseppe','Garibaldi','1985-06-14','2000-06-01',3),(3,'Achille','Lauro','1989-04-09','2006-09-12',2),(4,'Maurizio','Santo','1967-05-22','1990-12-01',3),(5,'Silvia','Castelli','1990-05-23','2012-03-03',1),(6,'Simone','Trulli','1975-09-05','1995-11-11',3),(7,'Marco','Friggi','1978-10-01','1996-02-08',1),(8,'Andrea','Russo','1984-01-05','1999-09-09',1),(9,'Simona','Billi','1980-04-11','2000-06-05',1),(10,'Ettore','Rino','1982-09-01','2000-08-01',2),(11,'Luca','Luci','1966-09-07','1990-04-07',2),(12,'Benedetto','Setu','1968-08-12','1991-03-01',2),(13,'Giulia','Tagliotti','1970-05-23','1989-06-06',1),(14,'Daniele','Gallo','1981-07-09','2000-02-02',3),(15,'Alessandro','Alessandri','1991-05-06','2020-06-09',1);
/*!40000 ALTER TABLE `autisti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-12 20:00:20
