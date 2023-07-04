-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: elecequip
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu` (
  `Manufacturer` varchar(15) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Release_date` date DEFAULT NULL,
  `Cores` int NOT NULL,
  `Threads` int NOT NULL,
  `Manufacturing` int DEFAULT NULL,
  `Base_Clock` float NOT NULL,
  `Turbo_Clock` float DEFAULT NULL,
  `TDP` int DEFAULT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` VALUES ('Intel','Core i3-10300','2020-09-01',4,8,14,3.7,4.4,65,143),('Intel','Core i5-10600K','2020-09-01',6,12,14,4.1,4.8,125,262),('Intel','Core i5-11600K','2021-12-01',6,12,14,3.9,4.9,125,262),('Intel','Core i7-10700K','2020-09-01',8,16,14,3.8,5.1,125,374),('Intel','Core i7-11700K','2021-12-01',8,16,14,3.6,5,125,399),('AMD','Ryzen 7 7700','2023-01-14',8,16,5,3.8,5.3,65,329),('AMD','Ryzen 7 7700X','2022-09-27',8,16,5,4.5,5.4,105,399),('AMD','Ryzen 9 7900','2023-01-14',12,24,5,3.7,5.4,65,429),('AMD','Ryzen 9 7900x','2022-09-27',12,24,5,4.7,5.6,170,549),('AMD','Ryzen 9 7950X','2022-09-27',16,32,5,4.5,5.7,170,699);
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-30 12:29:58
