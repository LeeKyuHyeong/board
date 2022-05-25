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
-- Table structure for table `kh_board_reply`
--

DROP TABLE IF EXISTS `kh_board_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kh_board_reply` (
  `rep_idx` int unsigned NOT NULL AUTO_INCREMENT COMMENT '답변 식별번호',
  `board_idx` int unsigned NOT NULL COMMENT '게시글 식별번호',
  `board_type` varchar(20) NOT NULL COMMENT '게시글 유형',
  `rep_title` varchar(45) NOT NULL COMMENT '답변 제목',
  `rep_content` text NOT NULL COMMENT '답변 내용',
  `rep_id` varchar(45) NOT NULL COMMENT '답변자',
  `rep_dt` varchar(45) NOT NULL COMMENT '답변일',
  PRIMARY KEY (`rep_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='게시판 답글 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kh_board_reply`
--

LOCK TABLES `kh_board_reply` WRITE;
/*!40000 ALTER TABLE `kh_board_reply` DISABLE KEYS */;
INSERT INTO `kh_board_reply` VALUES (1,3,'board_type_03','[답변] 답합니다','이것저것 답합니다.','','');
/*!40000 ALTER TABLE `kh_board_reply` ENABLE KEYS */;
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
