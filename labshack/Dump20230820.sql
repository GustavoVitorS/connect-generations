-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: conexaogeracao
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `termos`
--

DROP TABLE IF EXISTS `termos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `termos` (
  `idTermo` int NOT NULL AUTO_INCREMENT,
  `termo` varchar(100) NOT NULL,
  `significado` text NOT NULL,
  `tag` enum('Jovem','Idoso') DEFAULT NULL,
  PRIMARY KEY (`idTermo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termos`
--

LOCK TABLES `termos` WRITE;
/*!40000 ALTER TABLE `termos` DISABLE KEYS */;
INSERT INTO `termos` VALUES (1,'Dar uma canja','Fazer algo com facilidade','Idoso'),(2,'Ninguém sabe o que se passa na cabeça do palhaço','Esse termo significa que o palhaço pode estar sorridente, porém, ninguém sabe o que realmente se passa na cabeça dele.','Jovem'),(3,'Ficar de butuca','Ficar observando algo com atenção.','Idoso'),(4,'Poggers','Usada para expressar excitação ou excesso de alegria','Jovem'),(5,'Bafafá','É o mesmo que confusão ou bagunça.','Idoso'),(6,'Barbeiro','É um motorista ruim, que não sabe dirigir direito.','Idoso'),(7,'Chá de cadeira','Tomar um chá de cadeira é o mesmo que ter que ficar esperando por muito tempo.','Idoso'),(8,'De lascar o cano','Algo é muito ruim.','Idoso'),(9,'Marcar touca','Perder uma oportunidade, dar bobeira.','Idoso'),(10,'Na boca de espera','É quando você está prestes a conseguir alguma coisa.','Idoso'),(11,'Boa pinta','Pessoa é bonita, de boa aparência.','Idoso'),(12,'Borogodó','Significa charme, sensualidade.','Idoso'),(13,'Broto','É o mesmo que garota bonita.','Idoso'),(14,'Bulhufas','Significa o mesmo que nada, coisa nenhuma.','Idoso'),(15,'Cafona','Algo fora de moda, brega','Idoso');
/*!40000 ALTER TABLE `termos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-20 19:54:12
