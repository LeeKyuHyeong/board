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
-- Table structure for table `kh_user`
--

DROP TABLE IF EXISTS `kh_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kh_user` (
  `user_id` int unsigned NOT NULL COMMENT '사용자 식별자',
  `user_loginid` varchar(45) NOT NULL COMMENT '사용자 로그인 아이디',
  `user_loginpwd` varchar(1024) NOT NULL COMMENT '사용자 로그인 비밀번호',
  `user_name` char(10) NOT NULL COMMENT '사용자 이름',
  `user_email` varchar(100) NOT NULL COMMENT '사용자 이메일',
  `user_phone` varchar(13) NOT NULL COMMENT '사용자 전화번호',
  `user_addr` varchar(10) DEFAULT NULL COMMENT '사용자 주소',
  `user_gameid` varchar(45) DEFAULT NULL COMMENT '사용자 게임상 아이디',
  `user_type` char(3) DEFAULT '001' COMMENT '사용자 등급',
  `create_loginid` varchar(45) DEFAULT NULL COMMENT '생성시 아이디',
  `create_dt` date DEFAULT NULL COMMENT '생성일',
  `upate_loginid` varchar(45) DEFAULT NULL COMMENT '새로운 아이디',
  `update_dt` date DEFAULT NULL COMMENT '변경일',
  `use_yn` char(1) DEFAULT 'y' COMMENT '사용여부',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='사용자 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kh_user`
--

LOCK TABLES `kh_user` WRITE;
/*!40000 ALTER TABLE `kh_user` DISABLE KEYS */;
INSERT INTO `kh_user` VALUES (1,'user1','1234','유저1','user@mail.com','010-1111-2222','Seoul','서울은LG','001','user1','2022-05-17',NULL,NULL,'Y'),(2,'user2','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','유저2','user2@mail.com','010-2222-3333','Daegu','대구는삼성','001','user2',NULL,NULL,NULL,'Y'),(3,'admin','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','관리자','admin@naver.com','010-2333-4434','Daejun','대전은한화','005','admin','2022-05-20',NULL,NULL,'Y'),(4,'manager','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','이정후','leejh@gmail.com','010-2444-5555','Gwangju','광주는기아','004','manager','2022-05-20',NULL,NULL,'Y');
/*!40000 ALTER TABLE `kh_user` ENABLE KEYS */;
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
