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
  KEY `oscar_titulo_peli_idx` (`titulo`),
  KEY `oscar_direccion_idx` (`direccion`),
  KEY `oscar_actores1_idx` (`mejor_actor`),
  KEY `oscar_actores2_idx` (`mejor_actriz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oscars`
--

LOCK TABLES `oscars` WRITE;
/*!40000 ALTER TABLE `oscars` DISABLE KEYS */;
INSERT INTO `oscars` VALUES ('1990',' Driving Miss Daisy','Oliver Stone','Daniel Day-Lewis','Jessica Tandy'),('1991',' Dances with Wolves','Kevin Costner','Jeremy Irons','Kathy Bates'),('1992',' The Silence of the Lambs','Jonathan Demme','Anthony Hopkins','Jodie Foster'),('1993',' Unforgiven','Clint Eastwood','Al Pacino','Emma Thompson'),('1994',' Schindler\'s List','Steven Spielberg','Tom Hanks','Holly Hunter'),('1995',' Forrest Gump','Robert Zemeckis','Tom Hanks','Jessica Lange'),('1996','  Braveheart','Mel Gibson','Nicolas Cage','Susan Sarandon'),('1997',' The English Patient','Anthony Minghella','Geoffrey Rush','Frances McDormand'),('1998','Titanic','James Cameron','Jack Nicholson','Helen Hunt'),('1999',' Shakespeare in Love','Steven Spielberg','Roberto Benigni','Gwyneth Paltrow'),('2000',' American Beauty','Sam Mendes','Kevin Spacey','Hilary Swank'),('2001',' Gladiator','Steven Soderbergh','Russell Crowe','Julia Roberts'),('2002',' A Beautiful Mind','Ron Howard','Denzel Washington','Halle Berry'),('2003',' Chicago','Roman Polanski','Adrien Brody','Nicole Kidman'),('2004',' The Lord of the Rings: The Return of the King','Peter Jackson','Sean Penn','Charlize Theron'),('2005',' Million Dollar Baby','Clint Eastwood','Jamie Foxx','Hilary Swank'),('2006',' Crash','Ang Lee','Philip Seymour Hoffman','Reese Witherspoon'),('2007',' The Departed','Martin Scorsese','Forest Whitaker','Helen Mirren'),('2008',' No Country for Old Men','Hermanos Coen','Daniel Day-Lewis','Marion Cotillard'),('2009','  Slumdog Millionaire','Danny Boyle','Sean Penn','Kate Winslet'),('2010',' The Hurt Locker','Kathryn Bigelow','Jeff Bridges','Sandra Bullock'),('2011',' The King\'s Speech','Tom Hooper (cineasta)','Colin Firth','Natalie Portman'),('2012',' The Artist','Michel Hazanavicius','Jean Dujardin','Meryl Streep'),('2013',' Argo','Ang Lee','Daniel Day-Lewis','Jennifer Lawrence'),('2014','  12 Years a Slave','Alfonso Cuarón','Matthew McConaughey','Cate Blanchett'),('2015',' Birdman or (The Unexpected Virtue of Ignorance)','Alejandro González Iñárritu','Eddie Redmayne','Julianne Moore'),('2016',' Spotlight','Alejandro González Iñárritu','Leonardo DiCaprio','Brie Larson'),('2017',' Moonlight','Damien Chazelle','Casey Affleck','Emma Stone'),('2018',' The Shape of Water','Guillermo del Toro','Gary Oldman','Frances McDormand'),('2019',' Green Book','Alfonso Cuarón','Rami Malek','Olivia Colman'),('2020',' Parasite','Bong Joon-ho','Joaquin Phoenix','Renée Zellweger'),('2021',' Nomadland','Chloé Zhao','Anthony Hopkins','Frances McDormand'),('2022','  CODA','Jane Campion','Will Smith','Jessica Chastain'),('2023',' Everything Everywhere All at Once','Daniels (directores)','Brendan Fraser','Michelle Yeoh');
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

-- Dump completed on 2023-11-21 11:48:25
