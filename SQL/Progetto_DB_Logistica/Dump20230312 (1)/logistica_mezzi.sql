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
-- Table structure for table `mezzi`
--

DROP TABLE IF EXISTS `mezzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mezzi` (
  `id_mezzo` smallint NOT NULL AUTO_INCREMENT,
  `targa` varchar(7) NOT NULL,
  `marca` varchar(24) DEFAULT 'Nessuna descrizione',
  `modello` varchar(24) DEFAULT 'Nessuna descrizione',
  `categoria` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_mezzo`),
  KEY `categoria` (`categoria`),
  CONSTRAINT `mezzi_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categoria_mezzo` (`id_categoria`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mezzi`
--

LOCK TABLES `mezzi` WRITE;
/*!40000 ALTER TABLE `mezzi` DISABLE KEYS */;
INSERT INTO `mezzi` VALUES (1,'AA123BB','Fiat','Ducato',1),(2,'BB345CC','Mercedes','600',2),(3,'CC789DD','Mercedes','660',3),(4,'DD456EE','Iveco','Stralis',2),(5,'FF951GG','Fiat','Ducato',1),(6,'HH156JJ','Mercedes','Vivaro',1),(7,'KK432LL','Peugeot','Trafic',1),(8,'OO852PP','Iveco','Strada',3),(9,'II651UU','Iveco','Stralis',2),(10,'YY651TT','Mercedes','800',2),(11,'EE865RR','Fiat','Ducato',1),(12,'AA694WW','Mercedes','660',3);
/*!40000 ALTER TABLE `mezzi` ENABLE KEYS */;
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
