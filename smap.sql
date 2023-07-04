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
-- Table structure for table `smap`
--

DROP TABLE IF EXISTS `smap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smap` (
  `Manufacturer` varchar(10) DEFAULT NULL,
  `Release_Date` date DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Ram` int DEFAULT NULL,
  `Memory` varchar(20) DEFAULT NULL,
  `Weight` int DEFAULT NULL,
  `Bettery` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Front_Camera` varchar(200) DEFAULT NULL,
  `Back_Camera` varchar(200) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Color` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smap`
--

LOCK TABLES `smap` WRITE;
/*!40000 ALTER TABLE `smap` DISABLE KEYS */;
INSERT INTO `smap` VALUES ('Galaxy','2023-02-02','70.9 × 146.3 × 7.6(mm)',8,'256GB\r 512GB',168,3900,1155000,'1,200만 화소','기본 : 5,000만 초광각 : 1,200만 화소 망원 :1,000만 화소','Galaxy S23','그린 크림 라벤더 팬텀블랙 그라파이트 라임'),('Galaxy','2023-02-02','78.1 × 163.4 × 8.9(mm)',12,'256GB 512GB 1TB',233,5000,1599400,'1,200만 화소','기본 : 2억 화소 초광각 : 120만 화소 3배망원 : 1,000만 화소 10배 폴리드 망원 : 1,000만 화소','Galaxy S23 Ultra','그린 크림 라벤더 팬텀블랙 그라파이트 라임 스카이블루 레드'),('Galaxy','2023-02-02','78.1 × 163.4 × 8.9(mm)',8,'256GB 512GB',195,4700,1353000,'1,200만 화소','기본 : 5,000만 초광각 : 1,200만 화소 망원 :1,000만 화소','Galaxy S23+','그린 크림 라벤더 팬텀블랙 그라파이트 라임'),('Galaxy','2022-08-10','접힌 상태 : 71.9 × 84.9 × 15.9-17.1(mm) 펼친 상태 : 71.9 × 165.2 × 6.9(mm)',8,'256GB 512GB',187,3700,1353000,'1,000만 화소','초광각 : 1,200만 화소 광각 : 1,200만 화소','Galaxy Z Flip 4','보라 퍼플 그라파이트 핑크 골드 블루'),('Galaxy','2022-08-10','접힌 상태 : 155.1 x 67.1 x 14.2(mm) \n펼친 상태 : 155.1 x 130.1 x 6.3(mm)',12,'256GB 512GB 1TB',263,4400,1998700,'메인 화면 : 400만 화소 커버 화면: 1,000만 화소','초광각: 1,200만 화소 광각: 5,000만 화소 망원: 1,000만 화소','Galaxy Z Fold 4','그레이그린 팬텀블랙 베이지');
/*!40000 ALTER TABLE `smap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-30 12:30:28
