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
-- Table structure for table `clienti`
--

DROP TABLE IF EXISTS `clienti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clienti` (
  `id_cliente` smallint NOT NULL AUTO_INCREMENT,
  `ragione_sociale` varchar(124) NOT NULL,
  `p_iva` int NOT NULL,
  `indirizzo` varchar(124) DEFAULT 'Nessuna descrizione',
  `telefono` int DEFAULT '0',
  `email` varchar(64) DEFAULT NULL,
  `data_iscrizione` date DEFAULT NULL,
  `contratto` tinyint DEFAULT NULL,
  `citta` varchar(45) DEFAULT 'Nessuna descrizioe',
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `ragione_sociale_UNIQUE` (`ragione_sociale`),
  KEY `contratto` (`contratto`),
  CONSTRAINT `clienti_ibfk_1` FOREIGN KEY (`contratto`) REFERENCES `contratto` (`id_contratto`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienti`
--

LOCK TABLES `clienti` WRITE;
/*!40000 ALTER TABLE `clienti` DISABLE KEYS */;
INSERT INTO `clienti` VALUES (1,'Felici srl',123456789,'Via le mani dalla tasta 18',761820883,'info@felicisrl.it','2020-12-01',1,'Roma'),(2,'Tristi spa',123456789,'Piazza la bomba 2',54879451,'info@tristispa.it','2000-06-07',2,'Roma'),(3,'Apatici & co.',789456132,'Viale speranza 3',654897852,'info@apatia.it','1999-08-08',5,'Trieste'),(4,'Speranza sas',654789321,'Viale tiburtina 127',789456123,'info@speranza.it','2002-06-03',4,'Milano'),(5,'Belli e brutti',456321789,'via specchio riflesso 34',987456123,'belli@brutti.it','2006-02-01',3,'Genova'),(6,'Carini srl',369852147,'Via lunga 54',654123789,'info@carini.it','2003-05-05',2,'Otranto'),(7,'Simpatico amico',123654789,'Via corta 1',123456789,'info@amici.it','2000-05-05',3,'Sassari'),(8,'Scozzesi spa',789456132,'Via rocciosa 77',778965412,'info@scozzesi.it','2000-08-09',3,'Firenze'),(9,'Irlandesi sas',852369741,'Via mina',654789123,'info@irlandesi.it','2001-06-03',2,'Firenze'),(10,'Paradizers',321456789,'Via paradiso 56',7895646,'info@paradiso.it','2008-09-09',5,'Sassuolo'),(11,'Bellazzi',856458256,'Via birra 88',785316458,'birra@bellazzi.it','2007-01-01',1,'Bologna'),(12,'Non retorico',236477895,'Via stout 66',7854126,'non@retorico.it','2010-03-04',2,'Fidenza'),(13,'Rizla spa',159753258,'Via cartina lunga 78',98744552,'info@rizla.com','2012-07-01',3,'Napoli'),(14,'Fazzoletti spa',753159852,'Viale raffreddore 99',7854126,'info@inverno.it','2016-08-01',4,'Caserta'),(15,'Borracce colorate',784512658,'Via acqua chiara 101',326598544,'info@corracce.it','2018-07-06',4,'Reggio Calabria');
/*!40000 ALTER TABLE `clienti` ENABLE KEYS */;
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
