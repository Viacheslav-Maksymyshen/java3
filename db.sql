 SET NAMES utf8 ;

DROP TABLE IF EXISTS `car`;
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

LOCK TABLES `car` WRITE;
INSERT INTO `car` VALUES (1,'ВАЗ 2110','АВ 0001','Легковой',1,1,11,81655,81855),(2,'ВАЗ 2110','АВ 0002','Легковой',3,1,10,54489,55489),(3,'Volkswagen Passat B6','АВ 0006','Легковой',3,1,11,84854,85154),(4,'Volkswagen Passat B6','АВ 0007','Легковой',1,1,11,49468,52068),(5,'Toyota Camry','АВ 0010','Легковой',4,1,10,44498,45098),(6,'Toyota Camry','АВ 0011','Легковой',4,1,10,19549,20549),(7,'Volkswagen Amarok','АВ 0015','Легковой',1,1,10,73423,74023),(8,'ГАЗ 3309','АВ 0018','Грузовой',4,1,15,75000,76220),(9,'ГАЗ 3309','АВ 0019','Грузовой',1,1,15,82000,83300),(10,'ГАЗ 3309','АВ 0020','Грузовой',3,1,15,80500,82200),(11,'ГАЗ 3309','АВ 0020','Грузовой',4,1,15,78500,80200);
UNLOCK TABLES;



DROP TABLE IF EXISTS `driver`;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `driver` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Surname` varchar(30) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Patronymic` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `driver` WRITE;
INSERT INTO `driver` VALUES (1,'Чижик','Владимир','Николаевич'),(3,'Лесенко','Генадий','Потапович'),(4,'Кузьма','Федир','Вячеславович');
UNLOCK TABLES;



DROP TABLE IF EXISTS `fuel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fuel` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(30) DEFAULT NULL,
  `Mark` varchar(10) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `fuel` WRITE;
INSERT INTO `fuel` VALUES (1,'ГАЗ','ГАЗ',11),(2,'Бензин','А-92',29),(3,'Бензин','А-95',30),(4,'ДТ','ДТ',30);
UNLOCK TABLES;



CREATE PROCEDURE getReport()
BEGIN
  SELECT c.Mark, c.Number, c.Type, f.Mark as Fuel, CONCAT(d.Surname, ' ', d.Name, ' ', d.Patronymic) as Name, c.AverageConsumption, c.OdometerPreviousMonth, c.OdometerCurrentMonth, (c.OdometerCurrentMonth - c.OdometerPreviousMonth) * (f.Price * c.AverageConsumption / 100 ) as PricePerMonth FROM  Car c LEFT JOIN Fuel f ON c.FuelId = f.Id  LEFT JOIN driver d ON c.DriverId = d.Id;
end;