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
-- Table structure for table `kh_board`
--

DROP TABLE IF EXISTS `kh_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kh_board` (
  `board_idx` int unsigned NOT NULL AUTO_INCREMENT COMMENT '게시글 식별번호',
  `board_type` varchar(20) NOT NULL COMMENT '게시글 유형',
  `board_title` varchar(45) NOT NULL COMMENT '게시글 제목',
  `board_content` text NOT NULL COMMENT '게시글 내용',
  `view_cnt` int unsigned DEFAULT '0' COMMENT '조회수',
  `top_yn` char(1) NOT NULL DEFAULT 'N' COMMENT '상단고정여부',
  `public_yn` char(1) NOT NULL DEFAULT 'Y' COMMENT '공개여부',
  `del_yn` char(1) DEFAULT 'N' COMMENT '삭제여부',
  `create_id` varchar(45) DEFAULT NULL COMMENT '작성자',
  `create_dt` date DEFAULT NULL COMMENT '작성일',
  `update_id` varchar(45) DEFAULT NULL COMMENT '수정자',
  `update_dt` varchar(45) DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`board_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='게시판 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kh_board`
--

LOCK TABLES `kh_board` WRITE;
/*!40000 ALTER TABLE `kh_board` DISABLE KEYS */;
INSERT INTO `kh_board` VALUES (1,'board_type_01','공지사항','공지사항내용',1,'n','Y','n','admin','2022-05-20',NULL,NULL),(2,'board_type_02','FAQ','FAQ내용',0,'n','Y','n','admin','2022-05-20',NULL,NULL),(3,'board_type_03','QnA','QnA내용',0,'n','Y','n','user1','2022-05-20',NULL,NULL),(4,'board_type_04','이벤트','이벤트내용',0,'n','Y','n','admin','2022-05-20',NULL,NULL),(5,'board_type_05','자유게시판','자유내용',0,'n','Y','n','leejh','2022-05-20',NULL,NULL);
/*!40000 ALTER TABLE `kh_board` ENABLE KEYS */;
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
