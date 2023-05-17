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
-- Table structure for table `prenotazioni`
--

DROP TABLE IF EXISTS `prenotazioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenotazioni` (
  `id_prenotazione` int NOT NULL AUTO_INCREMENT,
  `data_prenotazione` date NOT NULL,
  `mittente_id` smallint DEFAULT NULL,
  `ind_partenza` varchar(124) NOT NULL,
  `ind_arrivo` varchar(124) NOT NULL,
  `destinatario` varchar(124) DEFAULT NULL,
  `note` varchar(255) DEFAULT 'Nessuna nota',
  `num_colli` tinyint DEFAULT '1',
  `peso` decimal(10,2) NOT NULL,
  `citta_partenza` varchar(124) NOT NULL,
  `citta_arrivo` varchar(124) NOT NULL,
  PRIMARY KEY (`id_prenotazione`),
  KEY `mittente` (`mittente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenotazioni`
--

LOCK TABLES `prenotazioni` WRITE;
/*!40000 ALTER TABLE `prenotazioni` DISABLE KEYS */;
INSERT INTO `prenotazioni` VALUES (1,'2000-01-12',2,'Piazza la bomba 2','Via disinnesca 3','Serafini','Attenzione,materiale esplosivo',1,1200.00,'Roma','Firenze'),(2,'2000-02-20',3,'Viale speranza 3','Via santitÃ  13','Pironi','',2,50.00,'Trieste','Roma'),(3,'2000-02-23',7,'Via corta 1','Viale Garibaldi 24','Giuseppe Veri','Consegna al piano',3,125.00,'Sassari','Sassuolo'),(4,'2000-04-18',8,'Via rocciosa 77','Piazza libertÃ  112','Casal degli Olivi','Consegna ad orari lavorativi',1,25.00,'Firenze','Firenze'),(5,'2000-05-02',2,'Piazza la bomba 2','Via esplosiva 5','Edilcasa','3 pedane',3,4000.00,'Roma','Genova'),(6,'2001-02-01',3,'Viale speranza 3','strada statale cassia km 94','Autogas','',2,320.00,'Trieste','Montefiascone'),(7,'2002-05-06',9,'Via mina','Viale passilunghi 12','Cementi e co','',4,4500.00,'Firenze','Viterbo'),(8,'2006-08-07',5,'via specchio riflesso 34','Via bambi 3','Gentesana','Maneggiare con cura',6,80.50,'Genova','Viterbo'),(9,'2010-12-12',12,'Via stout 66','Via bock 127','Birreria 3 archi','Maneggiare con cura',12,110.00,'Fidenza','Roma'),(10,'2014-12-23',13,'Via cartina lunga 78','Viale verdi 45','Piante e piante','',1,66.00,'Napoli','Catanzaro'),(11,'2016-02-12',14,'Viale raffreddore 99','Zona industriale le mosse','Gasauto','Attenzione, materiale infiammabile',1,2000.00,'Caserta','Roma'),(12,'2020-09-14',2,'Piazza la bomba 2','Via disinnesca 3','Serafini','Attenzione,materiale esplosivo',1,1500.00,'Roma','Firenze'),(13,'2020-06-17',7,'Via corta 1','Via Bianchi 44','Antonio Rossi','',2,30.25,'Sassari','Firenze'),(14,'2021-01-18',1,'Via le mani dalla tasta 18','Via Benedetti 55','Sergio Peri','',4,50.00,'Roma','Milano'),(15,'2022-03-16',1,'Via le mani dalla tasta 18','Viale Mazzoni 99','Stefano Santi','Fragile',1,25.00,'Roma','Reggio Calabria'),(16,'2023-03-12',1,'Via le mani dalla tasta 18','Via Benedetti 55','Sergio Peri','Nessuna nota',2,12.12,'Roma','Milano'),(17,'2023-03-12',1,'Via le mani dalla tasta 18','Viale Mazzoni 99','Stefano Santi','Nessuna nota',4,30.00,'Roma','Reggio Calabria');
/*!40000 ALTER TABLE `prenotazioni` ENABLE KEYS */;
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
