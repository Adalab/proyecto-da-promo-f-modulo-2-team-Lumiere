-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: cinemextract
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `oscars`
--

DROP TABLE IF EXISTS `oscars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oscars` (
  `año_ceremonia` varchar(500) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `mejor_actor` varchar(50) DEFAULT NULL,
  `mejor_actriz` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`año_ceremonia`),
  KEY `fk_oscars_titulo_pelis1_idx` (`titulo`),
  KEY `fk_oscars_direccion1_idx` (`direccion`),
  KEY `fk_oscars_actores1_idx` (`mejor_actor`,`mejor_actriz`),
  KEY `oscars_actores2_idx` (`mejor_actriz`),
  CONSTRAINT `oscars_actores1` FOREIGN KEY (`mejor_actor`) REFERENCES `actores` (`nombre_actor`),
  CONSTRAINT `oscars_actores2` FOREIGN KEY (`mejor_actriz`) REFERENCES `actores` (`nombre_actor`),
  CONSTRAINT `oscars_direccion` FOREIGN KEY (`direccion`) REFERENCES `direccion` (`direccion`),
  CONSTRAINT `oscars_titulo_pelis1` FOREIGN KEY (`titulo`) REFERENCES `titulo_pelis` (`titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oscars`
--

LOCK TABLES `oscars` WRITE;
/*!40000 ALTER TABLE `oscars` DISABLE KEYS */;
/*!40000 ALTER TABLE `oscars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-17  8:29:13
