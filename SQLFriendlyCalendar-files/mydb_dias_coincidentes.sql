-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `dias_coincidentes`
--

DROP TABLE IF EXISTS `dias_coincidentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dias_coincidentes` (
  `id_dia_coincidente` int NOT NULL AUTO_INCREMENT,
  `nombre_dia_coincidente` varchar(45) NOT NULL,
  `dias_id_dia` int NOT NULL,
  `calendarios_id_calendario` int NOT NULL,
  PRIMARY KEY (`id_dia_coincidente`,`dias_id_dia`,`calendarios_id_calendario`),
  KEY `fk_dias_coincidentes_dias1_idx` (`dias_id_dia`),
  KEY `fk_dias_coincidentes_calendarios1_idx` (`calendarios_id_calendario`),
  CONSTRAINT `fk_dias_coincidentes_calendarios1` FOREIGN KEY (`calendarios_id_calendario`) REFERENCES `calendarios` (`id_calendario`),
  CONSTRAINT `fk_dias_coincidentes_dias1` FOREIGN KEY (`dias_id_dia`) REFERENCES `dias` (`id_dia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dias_coincidentes`
--

LOCK TABLES `dias_coincidentes` WRITE;
/*!40000 ALTER TABLE `dias_coincidentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dias_coincidentes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-10 10:22:48
