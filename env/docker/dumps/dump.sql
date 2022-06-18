-- MySQL dump 10.13  Distrib 5.7.38, for osx10.16 (x86_64)
--
-- Host: 127.0.0.1    Database: ZHIN_PRIVET
-- ------------------------------------------------------
-- Server version	5.7.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `TAB_CAR`
--

DROP TABLE IF EXISTS `TAB_CAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAB_CAR` (
  `id` varchar(36) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `specificationsId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `TAB_CAR_TAB_SPECIFICATIONS_id_fk` (`specificationsId`),
  CONSTRAINT `TAB_CAR_TAB_SPECIFICATIONS_id_fk` FOREIGN KEY (`specificationsId`) REFERENCES `TAB_SPECIFICATIONS` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAB_CAR`
--

LOCK TABLES `TAB_CAR` WRITE;
/*!40000 ALTER TABLE `TAB_CAR` DISABLE KEYS */;
INSERT INTO `TAB_CAR` VALUES ('8be3722f-8274-483b-b8e4-ac925e1d188f','Приора',4000000,'740c316a-f9bd-4467-8a3d-200ffef97c8f'),('ad304f94-3c59-4709-bd62-c62a103025da','Камаз',10000000,'35dfd5f6-b401-4733-a87f-79a88b89d384'),('fa834e03-a3d1-4e8a-a69a-4c55087f8ed4','Нива',2000000,'90b16be8-ed23-4c19-95c3-4dc93fb1059c');
/*!40000 ALTER TABLE `TAB_CAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAB_CLIENT`
--

DROP TABLE IF EXISTS `TAB_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAB_CLIENT` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `secondName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAB_CLIENT`
--

LOCK TABLES `TAB_CLIENT` WRITE;
/*!40000 ALTER TABLE `TAB_CLIENT` DISABLE KEYS */;
INSERT INTO `TAB_CLIENT` VALUES ('62f3ca5e-b0aa-41af-9941-5d9c9672a191','Сергей','Борисович','Макоронов','м','89998887756','2017-06-12'),('c209f252-197c-4e66-898a-6089d5dda0ec','Лариса','Ивановна','Гречкина','ж','89998887757','1995-06-12'),('d859dfc3-ae6d-4514-a943-8528f82de125','Борис','Сергевич','Лапшов','м','89998887755','2022-06-12');
/*!40000 ALTER TABLE `TAB_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAB_DEPARTMENT`
--

DROP TABLE IF EXISTS `TAB_DEPARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAB_DEPARTMENT` (
  `id` varchar(36) NOT NULL,
  `title` varchar(100) NOT NULL,
  `place` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAB_DEPARTMENT`
--

LOCK TABLES `TAB_DEPARTMENT` WRITE;
/*!40000 ALTER TABLE `TAB_DEPARTMENT` DISABLE KEYS */;
INSERT INTO `TAB_DEPARTMENT` VALUES ('543fc760-8f7b-48ba-9c3c-dc7346660bda','Отдел маркетинга','Москва'),('94005b2b-330a-41d6-ba27-7653a84935a8','Отдел продаж','Москва'),('d1cbe573-ae55-48de-b5db-bc2fe2cfba60','Отдел айти','Белебей');
/*!40000 ALTER TABLE `TAB_DEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAB_EMPLOYEE`
--

DROP TABLE IF EXISTS `TAB_EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAB_EMPLOYEE` (
  `id` varchar(36) NOT NULL,
  `secondName` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `departmentId` varchar(36) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `passportNumber` int(11) DEFAULT NULL,
  `passportSeries` int(11) DEFAULT NULL,
  `birthplace` varchar(100) DEFAULT NULL,
  `regPlace` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `TAB_EMPLOYEE_TAB_DEPARTMENT_id_fk` (`departmentId`),
  CONSTRAINT `TAB_EMPLOYEE_TAB_DEPARTMENT_id_fk` FOREIGN KEY (`departmentId`) REFERENCES `TAB_DEPARTMENT` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAB_EMPLOYEE`
--

LOCK TABLES `TAB_EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `TAB_EMPLOYEE` DISABLE KEYS */;
INSERT INTO `TAB_EMPLOYEE` VALUES ('10ae10cb-9240-44c0-a126-ca56de56483e','Юрьевич','Евгений','Козлов','d1cbe573-ae55-48de-b5db-bc2fe2cfba60','88005353536',8080,4444,'Белебей','Белебей'),('9a7a6799-707f-4ff3-b963-e3c81991200b','Игоревич','Илья','Трифонов','94005b2b-330a-41d6-ba27-7653a84935a8','88005353535',8080,3333,'Белебей','Москва'),('af9d2de9-6b03-4f35-9a74-f216f65329ea','Юрьевна','Татьяна','Козлова','543fc760-8f7b-48ba-9c3c-dc7346660bda','88005353537',8080,5555,'Белебей','Белебей');
/*!40000 ALTER TABLE `TAB_EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAB_ORDER`
--

DROP TABLE IF EXISTS `TAB_ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAB_ORDER` (
  `id` varchar(100) NOT NULL,
  `serviceName` varchar(100) NOT NULL,
  `servicePrice` int(11) NOT NULL,
  `dateTime` datetime NOT NULL,
  `consultantId` varchar(100) DEFAULT NULL,
  `clientId` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `TAB_ORDER_TAB_CLIENT_clientId_fk` (`clientId`),
  KEY `TAB_ORDER_TAB_EMPLOYEE_id_fk` (`consultantId`),
  CONSTRAINT `TAB_ORDER_TAB_CLIENT_clientId_fk` FOREIGN KEY (`clientId`) REFERENCES `TAB_CLIENT` (`id`),
  CONSTRAINT `TAB_ORDER_TAB_EMPLOYEE_id_fk` FOREIGN KEY (`consultantId`) REFERENCES `TAB_EMPLOYEE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAB_ORDER`
--

LOCK TABLES `TAB_ORDER` WRITE;
/*!40000 ALTER TABLE `TAB_ORDER` DISABLE KEYS */;
INSERT INTO `TAB_ORDER` VALUES ('1c9b7d4e-4077-4711-b998-bfb2b1426185','Видное',565634231,'2018-06-12 14:58:32','af9d2de9-6b03-4f35-9a74-f216f65329ea','d859dfc3-ae6d-4514-a943-8528f82de125','Создание'),('ca79526f-7bc7-4f55-8d08-ae6a72025c2b','Балашиха',1000,'2022-06-12 14:56:46','10ae10cb-9240-44c0-a126-ca56de56483e','62f3ca5e-b0aa-41af-9941-5d9c9672a191','Оплачен'),('e2bdde26-ec23-417d-8751-2d90f75e6c8d','Коммунарка',100000,'2016-06-12 14:57:45','9a7a6799-707f-4ff3-b963-e3c81991200b','c209f252-197c-4e66-898a-6089d5dda0ec','В процессе');
/*!40000 ALTER TABLE `TAB_ORDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAB_ORDER_CAR`
--

DROP TABLE IF EXISTS `TAB_ORDER_CAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAB_ORDER_CAR` (
  `id` varchar(36) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `orderId` varchar(36) NOT NULL,
  `carId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TAB_ORDER_CAR_TAB_CAR_id_fk` (`carId`),
  KEY `TAB_ORDER_CAR_TAB_ORDER_id_fk` (`orderId`),
  CONSTRAINT `TAB_ORDER_CAR_TAB_CAR_id_fk` FOREIGN KEY (`carId`) REFERENCES `TAB_CAR` (`id`),
  CONSTRAINT `TAB_ORDER_CAR_TAB_ORDER_id_fk` FOREIGN KEY (`orderId`) REFERENCES `TAB_ORDER` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAB_ORDER_CAR`
--

LOCK TABLES `TAB_ORDER_CAR` WRITE;
/*!40000 ALTER TABLE `TAB_ORDER_CAR` DISABLE KEYS */;
INSERT INTO `TAB_ORDER_CAR` VALUES ('5e376304-cd3b-4b32-ba68-c5053db5288c',1,10001000,'ca79526f-7bc7-4f55-8d08-ae6a72025c2b','ad304f94-3c59-4709-bd62-c62a103025da'),('bbe9ec3f-4494-43a8-9794-c32cd4ffd3d6',4,8001000,'e2bdde26-ec23-417d-8751-2d90f75e6c8d','fa834e03-a3d1-4e8a-a69a-4c55087f8ed4'),('ec9b10be-5db3-4a41-abd3-12c4a6cfa3c3',2,573634231,'1c9b7d4e-4077-4711-b998-bfb2b1426185','8be3722f-8274-483b-b8e4-ac925e1d188f');
/*!40000 ALTER TABLE `TAB_ORDER_CAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAB_SPECIFICATIONS`
--

DROP TABLE IF EXISTS `TAB_SPECIFICATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAB_SPECIFICATIONS` (
  `id` varchar(36) NOT NULL,
  `yearIssue` date DEFAULT NULL,
  `chassis` varchar(100) DEFAULT NULL,
  `carcase` varchar(100) DEFAULT NULL,
  `enginePower` int(11) DEFAULT NULL,
  `maxWight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAB_SPECIFICATIONS`
--

LOCK TABLES `TAB_SPECIFICATIONS` WRITE;
/*!40000 ALTER TABLE `TAB_SPECIFICATIONS` DISABLE KEYS */;
INSERT INTO `TAB_SPECIFICATIONS` VALUES ('35dfd5f6-b401-4733-a87f-79a88b89d384','2022-06-12','грузовое','метал',6000,100000),('740c316a-f9bd-4467-8a3d-200ffef97c8f','2012-01-01','легковое','карбон',1000,10000),('90b16be8-ed23-4c19-95c3-4dc93fb1059c','2015-06-12','внедорожное','метал',3000,10000);
/*!40000 ALTER TABLE `TAB_SPECIFICATIONS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 15:02:57
