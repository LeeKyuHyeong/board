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
-- Table structure for table `kh_team_code`
--

DROP TABLE IF EXISTS `kh_team_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kh_team_code` (
  `team_idx` int unsigned NOT NULL AUTO_INCREMENT COMMENT '팀 식별자',
  `cate_cd` varchar(10) NOT NULL COMMENT '카테고리 코드',
  `cate2_cd` varchar(10) NOT NULL COMMENT '상세 카테고리 코드',
  `team_cd` varchar(10) NOT NULL COMMENT '팀 코드',
  `team_cd_nm` varchar(45) NOT NULL COMMENT '팀 코드명',
  `code_comment` varchar(100) DEFAULT NULL COMMENT '코드 설명',
  PRIMARY KEY (`team_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='팀 코드';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kh_team_code`
--

LOCK TABLES `kh_team_code` WRITE;
/*!40000 ALTER TABLE `kh_team_code` DISABLE KEYS */;
INSERT INTO `kh_team_code` VALUES (1,'001','01','01','두산','OB-두산'),(2,'001','01','02','한화','빙그레-한화'),(3,'001','01','03','기아','해태-기아'),(4,'001','01','04','키움','현대-우리-서울-넥센-키움'),(5,'001','01','05','KT','KT'),(6,'001','01','06','LG','MBC-LG'),(7,'001','01','07','롯데','롯데'),(8,'001','01','08','NC','NC'),(9,'001','01','09','삼성','삼성'),(10,'001','01','10','SSG','SK-SSG');
/*!40000 ALTER TABLE `kh_team_code` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-20 14:26:12
