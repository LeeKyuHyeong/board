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
-- Table structure for table `kh_menu`
--

DROP TABLE IF EXISTS `kh_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kh_menu` (
  `menu_id` varchar(20) NOT NULL COMMENT '메뉴 고유식별자',
  `menu_nm` varchar(45) DEFAULT NULL COMMENT '메뉴명',
  `menu_lv` int unsigned NOT NULL COMMENT '메인 구분',
  `menu_seq` int unsigned NOT NULL COMMENT '메뉴 순서 구분',
  `up_menu_id` varchar(20) DEFAULT NULL COMMENT '상위 메뉴 식별자',
  `view_page` varchar(100) DEFAULT NULL COMMENT '연결 url',
  `use_yn` char(1) DEFAULT 'y' COMMENT '사용여부',
  `create_id` varchar(45) DEFAULT NULL COMMENT '작성자',
  `create_dt` date DEFAULT NULL COMMENT '작성일',
  `update_id` varchar(45) DEFAULT NULL COMMENT '수정자',
  `update_dt` date DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='메뉴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kh_menu`
--

LOCK TABLES `kh_menu` WRITE;
/*!40000 ALTER TABLE `kh_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `kh_menu` ENABLE KEYS */;
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
