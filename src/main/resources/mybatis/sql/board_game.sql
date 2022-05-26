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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `game_idx` int NOT NULL AUTO_INCREMENT,
  `game_dt` varchar(45) NOT NULL,
  `game_home` varchar(45) NOT NULL,
  `home_win_lose` char(3) DEFAULT NULL,
  `home_sp` varchar(45) NOT NULL,
  `home_sp_era` varchar(10) DEFAULT NULL,
  `game_away` varchar(45) NOT NULL,
  `away_win_lose` char(3) DEFAULT NULL,
  `away_sp` varchar(45) NOT NULL,
  `away_sp_era` varchar(10) DEFAULT NULL,
  `latest_score` varchar(45) NOT NULL,
  `home_stad` varchar(255) NOT NULL COMMENT '게임정보',
  PRIMARY KEY (`game_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'2022-05-26','삼성','2L','뷰캐넌','2.07','기아','3W','로니','2.35','5-11','삼성 라이온즈파크'),(2,'2022-05-26','NC','1L','이재학','7.23','KT','1W','소형준','2.85','2-3','창원 NC파크'),(3,'2022-05-26','SSG','3W','김광현','1.21','롯데','2L','나균안','1.42','9-1','인청 SSG 랜더스필드'),(4,'2022-05-26','한화','3W','윤대경','5.73','두산','3L','스탁','2.40','14-1','한화생명 이글즈파크'),(5,'2022-05-26','LG','3L','플럿코','3.25','키움','2W','요키시','2.45','5-10','잠실 야구장'),(6,'2022-05-27','롯데','3L','박세웅','2.75','키움','3W','애플러','3.20','0-0','사직 야구장'),(7,'2022-05-27','LG','4L','이민호','5.05','삼성','3L','수아레즈','2.03','0-0','잠실 야구장'),(8,'2022-05-27','기아','4W','임기영','4.78','SSG','4W','이태양','2.56','0-0','기아 챔피언스필드'),(9,'2022-05-27','NC','2L','김시훈','4.02','두산','1W','최원준','2.54','0-0','창원 NC파크'),(10,'2022-05-27','KT','2W','배제성','3.35','한화','1L','장민재','5.10','0-0','KT 위즈 파크');
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-27  0:35:36
