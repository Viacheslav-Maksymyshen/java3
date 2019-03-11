-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: carsdb
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `car` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mark` varchar(30) DEFAULT NULL,
  `Number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `DriverId` int(11) DEFAULT NULL,
  `FuelId` int(10) NOT NULL DEFAULT '1',
  `AverageConsumption` int(11) NOT NULL,
  `OdometerPreviousMonth` int(11) NOT NULL,
  `OdometerCurrentMonth` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'ВАЗ 2110','АВ 0001','Легковой',1,1,11,81655,81855),(2,'ВАЗ 2110','АВ 0002','Легковой',3,1,10,54489,55489),(3,'Volkswagen Passat B6','АВ 0006','Легковой',3,1,11,84854,85154),(4,'Volkswagen Passat B6','АВ 0007','Легковой',1,1,11,49468,52068),(5,'Toyota Camry','АВ 0010','Легковой',4,1,10,44498,45098),(6,'Toyota Camry','АВ 0011','Легковой',4,1,10,19549,20549),(7,'Volkswagen Amarok','АВ 0015','Легковой',1,1,10,73423,74023),(8,'ГАЗ 3309','АВ 0018','Грузовой',4,1,15,75000,76220),(9,'ГАЗ 3309','АВ 0019','Грузовой',1,1,15,82000,83300),(10,'ГАЗ 3309','АВ 0020','Грузовой',3,1,15,80500,82200),(11,'ГАЗ 3309','АВ 0020','Грузовой',4,1,15,78500,80200);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-10 12:52:08
