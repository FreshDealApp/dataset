-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: fresh_deal_local
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `customeraddresses`
--

DROP TABLE IF EXISTS `customeraddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customeraddresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(80) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `street` varchar(80) DEFAULT NULL,
  `neighborhood` varchar(80) DEFAULT NULL,
  `district` varchar(80) DEFAULT NULL,
  `province` varchar(80) DEFAULT NULL,
  `country` varchar(80) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `apartmentNo` int DEFAULT NULL,
  `doorNo` varchar(6) DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `customeraddresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customeraddresses`
--

LOCK TABLES `customeraddresses` WRITE;
/*!40000 ALTER TABLE `customeraddresses` DISABLE KEYS */;
INSERT INTO `customeraddresses` VALUES (1,51,'Home',27.128500,38.419200,'Atatürk Caddesi','Güzeltepe','Bornova','İzmir','Türkiye','35000',5,'A1',1),(2,52,'Home',27.135600,38.423400,'İzmir Yolu','Yeni Mahalle','Konak','İzmir','Türkiye','35010',10,'B2',1),(3,53,'Home',27.132800,38.418500,'Mustafa Kemal Bulvarı','Buca','Buca','İzmir','Türkiye','35030',2,'C3',1),(4,54,'Home',27.145700,38.423900,'Şehitler Caddesi','Kocatepe','Karabağlar','İzmir','Türkiye','35040',3,'D4',1),(5,55,'Home',27.125600,38.417800,'Atatürk Bulvarı','Gültepe','Karşıyaka','İzmir','Türkiye','35050',8,'E5',1),(6,56,'Home',27.118300,38.429000,'Süleyman Demirel Bulvarı','Kültür Mahallesi','Bayraklı','İzmir','Türkiye','35060',12,'F6',1),(7,57,'Home',27.136500,38.422300,'Zafer Caddesi','Kurtuluş','Çiğli','İzmir','Türkiye','35070',4,'G7',1),(8,58,'Home',27.130700,38.421800,'Ege Caddesi','Mavişehir','Gaziemir','İzmir','Türkiye','35080',6,'H8',1),(9,59,'Home',27.138900,38.424700,'Kordonboyu','Alsancak','Konak','İzmir','Türkiye','35090',7,'I9',1),(10,60,'Home',27.122200,38.418000,'Karşıyaka Caddesi','Yalı Mahallesi','Buca','İzmir','Türkiye','35100',9,'J10',1),(11,61,'Home',27.123400,38.417300,'Süleyman Demirel Bulvarı','Yenimahalle','Konak','İzmir','Türkiye','35100',11,'J11',1),(12,62,'Home',27.124500,38.418500,'İzmir Yolu','Kocatepe','Bornova','İzmir','Türkiye','35110',12,'K12',1),(13,63,'Home',27.125600,38.419600,'Atatürk Caddesi','Güzeltepe','Çiğli','İzmir','Türkiye','35120',13,'L13',1),(14,64,'Home',27.126700,38.420700,'Mustafa Kemal Bulvarı','Küçükçekmece','Bayraklı','İzmir','Türkiye','35130',14,'M14',1),(15,65,'Home',27.127800,38.421800,'Kordonboyu','Mavişehir','Karabağlar','İzmir','Türkiye','35140',15,'N15',1),(16,66,'Home',27.128900,38.422900,'Zafer Caddesi','Buca','Buca','İzmir','Türkiye','35150',16,'O16',1),(17,67,'Home',27.130000,38.423000,'Süleyman Demirel Bulvarı','Yeni Mahalle','Karşıyaka','İzmir','Türkiye','35160',17,'P17',1),(18,68,'Home',27.131100,38.424100,'Şehitler Caddesi','Gültepe','Çiğli','İzmir','Türkiye','35170',18,'Q18',1),(19,69,'Home',27.132200,38.425200,'Ege Caddesi','Kocatepe','Bornova','İzmir','Türkiye','35180',19,'R19',1),(20,70,'Home',27.133300,38.426300,'Karşıyaka Caddesi','Buca','Gaziemir','İzmir','Türkiye','35190',20,'S20',1),(21,71,'Home',27.128500,38.419200,'Atatürk Caddesi','Güzeltepe','Bornova','İzmir','Türkiye','35000',5,'A1',1),(22,72,'Home',27.135600,38.423400,'İzmir Yolu','Yeni Mahalle','Konak','İzmir','Türkiye','35010',10,'B2',1),(23,73,'Home',27.132800,38.418500,'Mustafa Kemal Bulvarı','Buca','Buca','İzmir','Türkiye','35030',2,'C3',1),(24,74,'Home',27.145700,38.423900,'Şehitler Caddesi','Kocatepe','Karabağlar','İzmir','Türkiye','35040',3,'D4',1),(25,75,'Home',27.125600,38.417800,'Atatürk Bulvarı','Gültepe','Karşıyaka','İzmir','Türkiye','35050',8,'E5',1),(26,76,'Home',27.118300,38.429000,'Süleyman Demirel Bulvarı','Kültür Mahallesi','Bayraklı','İzmir','Türkiye','35060',12,'F6',1),(27,77,'Home',27.136500,38.422300,'Zafer Caddesi','Kurtuluş','Çiğli','İzmir','Türkiye','35070',4,'G7',1),(28,78,'Home',27.130700,38.421800,'Ege Caddesi','Mavişehir','Gaziemir','İzmir','Türkiye','35080',6,'H8',1),(29,79,'Home',27.138900,38.424700,'Kordonboyu','Alsancak','Konak','İzmir','Türkiye','35090',7,'I9',1),(30,80,'Home',27.122200,38.418000,'Karşıyaka Caddesi','Yalı Mahallesi','Buca','İzmir','Türkiye','35100',9,'J10',1),(31,81,'Home',27.128500,38.419200,'Atatürk Caddesi','Güzeltepe','Bornova','İzmir','Türkiye','35000',5,'A1',1),(32,82,'Home',27.135600,38.423400,'İzmir Yolu','Yeni Mahalle','Konak','İzmir','Türkiye','35010',10,'B2',1),(33,83,'Home',27.132800,38.418500,'Mustafa Kemal Bulvarı','Buca','Buca','İzmir','Türkiye','35030',2,'C3',1),(34,84,'Home',27.145700,38.423900,'Şehitler Caddesi','Kocatepe','Karabağlar','İzmir','Türkiye','35040',3,'D4',1),(35,85,'Home',27.125600,38.417800,'Atatürk Bulvarı','Gültepe','Karşıyaka','İzmir','Türkiye','35050',8,'E5',1),(36,86,'Home',27.118300,38.429000,'Süleyman Demirel Bulvarı','Kültür Mahallesi','Bayraklı','İzmir','Türkiye','35060',12,'F6',1),(37,87,'Home',27.136500,38.422300,'Zafer Caddesi','Kurtuluş','Çiğli','İzmir','Türkiye','35070',4,'G7',1),(38,88,'Home',27.130700,38.421800,'Ege Caddesi','Mavişehir','Gaziemir','İzmir','Türkiye','35080',6,'H8',1),(39,89,'Home',27.138900,38.424700,'Kordonboyu','Alsancak','Konak','İzmir','Türkiye','35090',7,'I9',1),(40,90,'Home',27.122200,38.418000,'Karşıyaka Caddesi','Yalı Mahallesi','Buca','İzmir','Türkiye','35100',9,'J10',1),(41,91,'Home',27.128500,38.419200,'Atatürk Caddesi','Güzeltepe','Bornova','İzmir','Türkiye','35000',5,'A1',1),(42,92,'Home',27.135600,38.423400,'İzmir Yolu','Yeni Mahalle','Konak','İzmir','Türkiye','35010',10,'B2',1),(43,93,'Home',27.132800,38.418500,'Mustafa Kemal Bulvarı','Buca','Buca','İzmir','Türkiye','35030',2,'C3',1),(44,94,'Home',27.145700,38.423900,'Şehitler Caddesi','Kocatepe','Karabağlar','İzmir','Türkiye','35040',3,'D4',1),(45,95,'Home',27.125600,38.417800,'Atatürk Bulvarı','Gültepe','Karşıyaka','İzmir','Türkiye','35050',8,'E5',1),(46,96,'Home',27.118300,38.429000,'Süleyman Demirel Bulvarı','Kültür Mahallesi','Bayraklı','İzmir','Türkiye','35060',12,'F6',1),(47,97,'Home',27.136500,38.422300,'Zafer Caddesi','Kurtuluş','Çiğli','İzmir','Türkiye','35070',4,'G7',1),(48,98,'Home',27.130700,38.421800,'Ege Caddesi','Mavişehir','Gaziemir','İzmir','Türkiye','35080',6,'H8',1),(49,99,'Home',27.138900,38.424700,'Kordonboyu','Alsancak','Konak','İzmir','Türkiye','35090',7,'I9',1),(50,100,'Home',27.122200,38.418000,'Karşıyaka Caddesi','Yalı Mahallesi','Buca','İzmir','Türkiye','35100',9,'J10',1);
/*!40000 ALTER TABLE `customeraddresses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-23 17:02:09
