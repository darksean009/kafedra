-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: kafedra
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `degree`
--

DROP TABLE IF EXISTS `degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Payment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree`
--

LOCK TABLES `degree` WRITE;
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
INSERT INTO `degree` VALUES (1,'bachelor',9000),(2,'expert',10000),(3,'master',12000),(4,'doctor of science',17000);
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal`
--

DROP TABLE IF EXISTS `journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sotrudnik` int(11) DEFAULT NULL,
  `discipline` int(11) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sj_idx` (`sotrudnik`),
  KEY `disc_idx` (`discipline`),
  CONSTRAINT `disc` FOREIGN KEY (`discipline`) REFERENCES `subject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sj` FOREIGN KEY (`sotrudnik`) REFERENCES `sotrudnik` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal`
--

LOCK TABLES `journal` WRITE;
/*!40000 ALTER TABLE `journal` DISABLE KEYS */;
INSERT INTO `journal` VALUES (1,1,5,70),(2,1,3,30),(3,2,3,40),(4,1,6,10),(5,2,1,60),(6,7,6,50),(8,5,2,70);
/*!40000 ALTER TABLE `journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Payment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'rector',17000),(2,'docent',13000),(3,'assistant',11000);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd`
--

DROP TABLE IF EXISTS `sd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_s` int(11) DEFAULT NULL,
  `subject` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_idx` (`subject`),
  KEY `sotr` (`id_s`),
  CONSTRAINT `sotru` FOREIGN KEY (`id_s`) REFERENCES `sotrudnik` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `subject` FOREIGN KEY (`subject`) REFERENCES `subject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd`
--

LOCK TABLES `sd` WRITE;
/*!40000 ALTER TABLE `sd` DISABLE KEYS */;
INSERT INTO `sd` VALUES (1,5,2),(2,1,4),(3,1,5),(4,2,1),(5,2,2),(6,2,3),(7,3,2),(8,3,3),(9,1,6),(10,7,6);
/*!40000 ALTER TABLE `sd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sotrudnik`
--

DROP TABLE IF EXISTS `sotrudnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sotrudnik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Surname` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Patronymic` varchar(45) DEFAULT NULL,
  `AcademicDegree` int(11) DEFAULT NULL,
  `Post` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `degree_idx` (`AcademicDegree`),
  KEY `post_idx` (`Post`),
  CONSTRAINT `degree` FOREIGN KEY (`AcademicDegree`) REFERENCES `degree` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `post` FOREIGN KEY (`Post`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sotrudnik`
--

LOCK TABLES `sotrudnik` WRITE;
/*!40000 ALTER TABLE `sotrudnik` DISABLE KEYS */;
INSERT INTO `sotrudnik` VALUES (1,'Ivanov','Ivan','Ivanovich',4,1),(2,'Sidorov','Valery','Petrovich',2,2),(3,'Petrov','Alexander','Sidorovich',1,3),(5,'Kyrteev','Maksim','Nikolaevich',2,3),(6,'Ananichev','Konstantin','Petrovich',4,2),(7,'Sisoev','Dmitry','Alexeevich',3,2),(9,'Alexandrov','Nikita','Fedorovich',2,2),(10,'Dementyeva','Ekaterina','Mihailovna',3,2),(11,'Ivashin','Sergey','Petrovich',3,2),(14,'Orlov','Nikita','Alexandrovich',1,3);
/*!40000 ALTER TABLE `sotrudnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'Algorithmization'),(2,'Informatics'),(3,'Algebra'),(4,'Programming'),(5,'Statistics'),(6,'Operation systems');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'kafedra'
--

--
-- Dumping routines for database 'kafedra'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-20 20:04:20
