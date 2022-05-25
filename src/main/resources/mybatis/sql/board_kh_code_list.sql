-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: board
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
-- Table structure for table `kh_code_list`
--

DROP TABLE IF EXISTS `kh_code_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kh_code_list` (
  `cd_idx` int unsigned NOT NULL AUTO_INCREMENT COMMENT '코드 식별번호',
  `cate_cd` varchar(10) NOT NULL COMMENT '카테고리 코드',
  `cate2_cd` varchar(10) NOT NULL COMMENT '상세 카데고리 코드',
  `cate2_cd_nm` varchar(45) NOT NULL COMMENT '상세 카테고리 코드명',
  `code_comment` varchar(100) DEFAULT NULL COMMENT '코드 설명',
  PRIMARY KEY (`cd_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='공통 코드 리스트';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kh_code_list`
--

LOCK TABLES `kh_code_list` WRITE;
/*!40000 ALTER TABLE `kh_code_list` DISABLE KEYS */;
INSERT INTO `kh_code_list` VALUES (1,'001','01','국내야구',NULL),(2,'001','02','해외야구',NULL),(3,'002','01','국내축구',NULL),(4,'002','02','해외야구',NULL),(5,'003','01','프로배구',NULL),(6,'003','02','대학배구',NULL),(7,'004','01','국내농구',NULL),(8,'004','02','해외농구',NULL),(9,'005','01','LOL','리그오브레전드'),(10,'005','02','배틀그라운드',NULL),(11,'005','03','스타크래프트',NULL),(12,'005','04','오버워치',NULL),(13,'006','001','반대표',NULL),(14,'006','002','학교대표',NULL),(15,'006','003','지역대표',NULL),(16,'006','004','국가대표',NULL),(17,'006','005','레전드',NULL);
/*!40000 ALTER TABLE `kh_code_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-25 16:42:27
