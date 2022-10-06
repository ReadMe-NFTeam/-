CREATE DATABASE  IF NOT EXISTS `readme` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `readme`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: j7b108.p.ssafy.io    Database: readme
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

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
-- Table structure for table `solver`
--

DROP TABLE IF EXISTS `solver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solver` (
  `solver_id` bigint NOT NULL AUTO_INCREMENT,
  `token_id` int NOT NULL,
  `wallet_address` varchar(255) NOT NULL,
  PRIMARY KEY (`solver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solver`
--

LOCK TABLES `solver` WRITE;
/*!40000 ALTER TABLE `solver` DISABLE KEYS */;
INSERT INTO `solver` VALUES (1,52,'0xa4fd97211e870f943623e8521b67588aef0b2e7c'),(2,51,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(3,56,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(4,58,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(5,53,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(6,54,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(7,60,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(8,61,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(9,59,'0xa4fd97211e870f943623e8521b67588aef0b2e7c'),(10,63,'0xf5c110e4cf6e82f737ffadc7a6bc2b8bf1ecd4d5'),(11,68,'0xa4fd97211e870f943623e8521b67588aef0b2e7c'),(12,69,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(13,68,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(14,67,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(15,63,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(16,69,'0x4863d935ce84baffb20c6739ee404f4406cf2831'),(17,70,'0x41f0d0083b401ebd2fb4c531742df38343a08455'),(18,67,'0x41f0d0083b401ebd2fb4c531742df38343a08455'),(19,71,'0x41f0d0083b401ebd2fb4c531742df38343a08455'),(20,59,'0x41f0d0083b401ebd2fb4c531742df38343a08455'),(21,70,'0x928e12da5797d02a1926504496f855dffe9e833d'),(22,69,'0x928e12da5797d02a1926504496f855dffe9e833d'),(23,73,'0xc33300ae6b486b2fddb26dffe772f77262c5763a'),(24,71,'0xc33300ae6b486b2fddb26dffe772f77262c5763a'),(25,71,'0x11a599235b6bf44435026c11e6ae9e5fdc52a71c'),(26,74,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(27,75,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(28,76,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(29,73,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(30,71,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(31,70,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(32,72,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(33,66,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(34,64,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(35,59,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(36,65,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(37,62,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(38,76,'0xa4fd97211e870f943623e8521b67588aef0b2e7c'),(39,80,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(40,78,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(41,77,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(42,79,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(43,52,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(44,55,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(45,57,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(46,72,'0x3c97ad99a8cf34f6d43f3e240e59449d120e3a5d'),(47,70,'0x3c97ad99a8cf34f6d43f3e240e59449d120e3a5d'),(48,80,'0x50d5e8dfe5e78c5e21c11ce11bc4a64102187166'),(49,81,'0x50d5e8dfe5e78c5e21c11ce11bc4a64102187166'),(50,81,'0x11a599235b6bf44435026c11e6ae9e5fdc52a71c'),(51,82,'0x3c97ad99a8cf34f6d43f3e240e59449d120e3a5d'),(52,86,'0x11a599235b6bf44435026c11e6ae9e5fdc52a71c'),(53,85,'0x11a599235b6bf44435026c11e6ae9e5fdc52a71c'),(54,84,'0x11a599235b6bf44435026c11e6ae9e5fdc52a71c'),(55,81,'0x6359deebf4bdc9c299aeb557341686333c45c568'),(56,84,'0xf5c110e4cf6e82f737ffadc7a6bc2b8bf1ecd4d5'),(57,87,'0xc33300ae6b486b2fddb26dffe772f77262c5763a'),(58,81,'0xc33300ae6b486b2fddb26dffe772f77262c5763a'),(59,80,'0xc33300ae6b486b2fddb26dffe772f77262c5763a'),(60,79,'0xc33300ae6b486b2fddb26dffe772f77262c5763a'),(61,81,'0xaf19d713f679158e1ec20a94a7ead240618f2361'),(62,80,'0xaf19d713f679158e1ec20a94a7ead240618f2361');
/*!40000 ALTER TABLE `solver` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-06 17:43:55