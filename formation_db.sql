-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: GestionFomation
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assoEnFor`
--

DROP TABLE IF EXISTS `assoEnFor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assoEnFor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_en` int NOT NULL,
  `id_for` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_en` (`id_en`),
  KEY `id_for` (`id_for`),
  CONSTRAINT `assoEnFor_ibfk_1` FOREIGN KEY (`id_en`) REFERENCES `enseignant` (`id_en`),
  CONSTRAINT `assoEnFor_ibfk_2` FOREIGN KEY (`id_for`) REFERENCES `formation` (`id_for`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assoEnFor`
--

LOCK TABLES `assoEnFor` WRITE;
/*!40000 ALTER TABLE `assoEnFor` DISABLE KEYS */;
INSERT INTO `assoEnFor` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `assoEnFor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enseignant` (
  `id_en` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  PRIMARY KEY (`id_en`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enseignant`
--

LOCK TABLES `enseignant` WRITE;
/*!40000 ALTER TABLE `enseignant` DISABLE KEYS */;
INSERT INTO `enseignant` VALUES (1,'Jewel','Gallagher'),(2,'Glori','Atterley'),(3,'Skippy','Duhig'),(4,'Valentine','Emer'),(5,'Hughie','Ricioppo'),(6,'Lonny','Singh'),(7,'Sarah','Oxtaby'),(8,'Archibald','Chestnut'),(9,'Waly','Sweetland'),(10,'West','Karran');
/*!40000 ALTER TABLE `enseignant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etudiant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `id_sal` int NOT NULL,
  `id_for` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_sal` (`id_sal`),
  KEY `id_for` (`id_for`),
  CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`id_sal`) REFERENCES `salle` (`id_salle`),
  CONSTRAINT `etudiant_ibfk_2` FOREIGN KEY (`id_for`) REFERENCES `formation` (`id_for`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etudiant`
--

LOCK TABLES `etudiant` WRITE;
/*!40000 ALTER TABLE `etudiant` DISABLE KEYS */;
INSERT INTO `etudiant` VALUES (1,'Ingamar','Biernat',2,2),(2,'Jocelin','Duckerin',3,4),(3,'Maurine','Mackness',1,4),(4,'Felipa','Rudolph',2,10),(5,'Jule','Stanmer',2,2),(6,'Nari','Tunbridge',2,2),(7,'Sheppard','Peers',2,2),(8,'Clement','Wallworke',4,4),(9,'Gaspar','Blackborn',9,9),(10,'Pattie','Dennehy',1,1);
/*!40000 ALTER TABLE `etudiant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formation`
--

DROP TABLE IF EXISTS `formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formation` (
  `id_for` int NOT NULL AUTO_INCREMENT,
  `libelle_for` varchar(100) NOT NULL,
  PRIMARY KEY (`id_for`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formation`
--

LOCK TABLES `formation` WRITE;
/*!40000 ALTER TABLE `formation` DISABLE KEYS */;
INSERT INTO `formation` VALUES (1,'Engineering'),(2,'Sales'),(3,'Product Management'),(4,'Services'),(5,'Research and Development'),(6,'Human Resources'),(7,'Research and Development'),(8,'Accounting'),(9,'Support'),(10,'Product Management');
/*!40000 ALTER TABLE `formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salle` (
  `id_salle` int NOT NULL AUTO_INCREMENT,
  `libelle_salle` varchar(100) NOT NULL,
  PRIMARY KEY (`id_salle`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle`
--

LOCK TABLES `salle` WRITE;
/*!40000 ALTER TABLE `salle` DISABLE KEYS */;
INSERT INTO `salle` VALUES (1,'Apiaceae'),(2,'Clusiaceae'),(3,'Loganiaceae'),(4,'Fumariaceae'),(5,'Apiaceae'),(6,'Lichenotheliaceae'),(7,'Cactaceae'),(8,'Malvaceae'),(9,'Asteraceae'),(10,'Parmeliaceae');
/*!40000 ALTER TABLE `salle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-14 10:53:38
