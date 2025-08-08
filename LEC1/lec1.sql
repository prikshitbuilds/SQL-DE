-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: temp_db
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int DEFAULT NULL,
  `emp_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_v1`
--

DROP TABLE IF EXISTS `employee_v1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_v1` (
  `id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `hiring_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_v1`
--

LOCK TABLES `employee_v1` WRITE;
/*!40000 ALTER TABLE `employee_v1` DISABLE KEYS */;
INSERT INTO `employee_v1` VALUES (1,'Prikshit',1000,'2025-09-25'),(2,'Sahil',2000,NULL),(3,'Nitin',3000,'2025-08-26'),(4,'Adnan',5000,'2025-08-29'),(5,'Gulrez',10000,'2025-01-26');
/*!40000 ALTER TABLE `employee_v1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_with_constraints`
--

DROP TABLE IF EXISTS `employee_with_constraints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_with_constraints` (
  `id` int DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `salary` double DEFAULT NULL,
  `hiring_date` date DEFAULT '2003-01-01',
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `employee_with_constraints_chk_1` CHECK ((`salary` > 1500))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_with_constraints`
--

LOCK TABLES `employee_with_constraints` WRITE;
/*!40000 ALTER TABLE `employee_with_constraints` DISABLE KEYS */;
INSERT INTO `employee_with_constraints` VALUES (1,'Rahul',5000,'2025-01-06'),(NULL,'Rafa',5000,'2025-08-06'),(NULL,'Rafaa',5006,'2025-08-06'),(2,'Bawa',6000,'2003-01-01');
/*!40000 ALTER TABLE `employee_with_constraints` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-08 18:34:56
