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
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `id_evento` int NOT NULL,
  `nombre_evento` varchar(45) NOT NULL,
  `descripcion_evento` varchar(45) NOT NULL,
  `lugar_evento` varchar(45) NOT NULL,
  `meses_id_mes` int NOT NULL,
  `horarios_id_horario` int NOT NULL,
  `dias_id_dia` int NOT NULL,
  `anios_id_anio` int NOT NULL,
  `link_eventos_calendarios_id_link_evento_calendario` int NOT NULL,
  `calendario_general_id_calendario_general` int NOT NULL,
  PRIMARY KEY (`id_evento`,`meses_id_mes`,`horarios_id_horario`,`dias_id_dia`,`anios_id_anio`,`link_eventos_calendarios_id_link_evento_calendario`,`calendario_general_id_calendario_general`),
  KEY `fk_eventos_meses1_idx` (`meses_id_mes`),
  KEY `fk_eventos_horarios1_idx` (`horarios_id_horario`),
  KEY `fk_eventos_dias1_idx` (`dias_id_dia`),
  KEY `fk_eventos_anios1_idx` (`anios_id_anio`),
  KEY `fk_eventos_link_eventos_calendarios1_idx` (`link_eventos_calendarios_id_link_evento_calendario`),
  KEY `fk_eventos_calendario_general1_idx` (`calendario_general_id_calendario_general`),
  CONSTRAINT `fk_eventos_anios1` FOREIGN KEY (`anios_id_anio`) REFERENCES `anios` (`id_anio`),
  CONSTRAINT `fk_eventos_calendario_general1` FOREIGN KEY (`calendario_general_id_calendario_general`) REFERENCES `calendario_general` (`id_calendario_general`),
  CONSTRAINT `fk_eventos_dias1` FOREIGN KEY (`dias_id_dia`) REFERENCES `dias` (`id_dia`),
  CONSTRAINT `fk_eventos_horarios1` FOREIGN KEY (`horarios_id_horario`) REFERENCES `horarios` (`id_horario`),
  CONSTRAINT `fk_eventos_link_eventos_calendarios1` FOREIGN KEY (`link_eventos_calendarios_id_link_evento_calendario`) REFERENCES `link_eventos_calendarios` (`id_link_evento_calendario`),
  CONSTRAINT `fk_eventos_meses1` FOREIGN KEY (`meses_id_mes`) REFERENCES `meses` (`id_mes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'Juntada de Verano','mateada','Villa Devoto, C.A.B.A.',11,1,6,1,1,1);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-10 14:50:27
