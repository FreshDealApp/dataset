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
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int NOT NULL,
  `restaurantName` varchar(80) NOT NULL,
  `restaurantDescription` varchar(500) DEFAULT NULL,
  `restaurantEmail` varchar(80) DEFAULT NULL,
  `restaurantPhone` varchar(20) DEFAULT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `category` varchar(80) NOT NULL,
  `workingDays` varchar(500) DEFAULT NULL,
  `workingHoursStart` varchar(5) DEFAULT NULL,
  `workingHoursEnd` varchar(5) DEFAULT NULL,
  `listings` int NOT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `ratingCount` int NOT NULL,
  `image_url` varchar(2083) DEFAULT NULL,
  `pickup` tinyint(1) NOT NULL,
  `delivery` tinyint(1) NOT NULL,
  `maxDeliveryDistance` float DEFAULT NULL,
  `deliveryFee` decimal(10,2) DEFAULT NULL,
  `minOrderAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`),
  CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,1,'Gurme Pizzacısı','Lezzetli pizza ve makarna çeşitleriyle tanışın.','zeynep.kaya1@gmail.com','+90504267558',38.423700,27.142800,'Pizza & Hamburger','Mon-Sun','10:00','22:00',5,4.50,240,'pizza_image.jpg',1,1,5,5.00,50.00),(2,2,'Hamburger Durağı','Mükemmel burgerler ve tatlı patates kızartması.','emine.öztürk2@gmail.com','+90507919669',38.423700,27.142800,'Pizza & Hamburger','Mon-Sun','11:00','23:00',5,4.70,320,'burger_image.jpg',1,1,8,8.00,40.00),(3,3,'Pizza Artı','Sanat gibi pişirilen pizzalarla deneyim.','murat.şahin3@gmail.com','+90508565598',38.423700,27.142800,'Pizza & Hamburger','Mon-Sun','10:00','22:00',5,4.60,210,'pizza_master_image.jpg',1,1,7,7.00,55.00),(4,4,'Pizzacım','En taze malzemelerle hazırlanan nefis pizzalar.','ayşe.çelik4@gmail.com','+90507151990',38.423700,27.142800,'Pizza & Hamburger','Mon-Sun','10:00','22:00',5,4.80,180,'pizzacim_image.jpg',1,1,6,6.00,50.00),(5,5,'Burgerci Baba','Juicy burgerler ve geniş tatlı menüsü.','mustafa.şahin5@gmail.com','+90508006453',38.423700,27.142800,'Pizza & Hamburger','Mon-Sun','12:00','00:00',5,4.30,150,'burgerci_baba_image.jpg',1,1,10,7.00,40.00),(6,6,'Domino’s Express','Hızlı teslimat ve lezzetli pizzalar.','ibrahim.demir6@gmail.com','+90507910410',38.423700,27.142800,'Pizza & Hamburger','Mon-Sun','10:00','23:00',5,4.50,290,'dominos_express_image.jpg',1,1,5,6.00,45.00),(7,7,'Burger&Co','Özel burger tarifleri ve şık ortam.','emine.demir7@gmail.com','+90501479225',38.423700,27.142800,'Pizza & Hamburger','Mon-Sun','11:00','23:00',5,4.40,270,'burger_and_co_image.jpg',1,1,6,6.00,50.00),(8,8,'Pizza Sevdalıları','Pizzalar, makarnalar ve leziz soslar.','mustafa.yılmaz8@gmail.com','+90507954496',38.423700,27.142800,'Pizza & Hamburger','Mon-Sun','11:00','22:00',5,4.60,220,'pizza_sevdalıları_image.jpg',1,1,7,6.00,55.00),(9,9,'Hamburger Krallığı','Burgerler ve çeşitli mezeler.','ahmet.yılmaz9@gmail.com','+90501417391',38.423700,27.142800,'Pizza & Hamburger','Mon-Sun','11:00','22:00',5,4.50,300,'hamburger_krallığı_image.jpg',1,1,8,7.00,50.00),(10,10,'Pizzacı Ristorante','İtalyan pizzalarının nefis hali.','emine.yılmaz10@gmail.com','+90509917652',38.423700,27.142800,'Pizza & Hamburger','Mon-Sun','12:00','00:00',5,4.80,350,'pizzaci_ristorante_image.jpg',1,1,6,5.00,60.00),(11,11,'Pideci Hasan','Közde pişmiş en güzel pideler.','merve.yıldırım11@gmail.com','+90505225444',38.423700,27.142800,'Pide & Lahmacun','Mon-Sun','10:00','22:00',5,4.60,200,'pideci_hasan_image.jpg',1,1,5,5.00,40.00),(12,12,'Lahmacun Durağı','Taze lahmacunlar ve pide çeşitleri.','ismail.çelik12@gmail.com','+90509983984',38.423700,27.142800,'Pide & Lahmacun','Mon-Sun','11:00','23:00',5,4.70,250,'lahmacun_durağı_image.jpg',1,1,6,4.00,45.00),(13,13,'Pideci Ocağı','Közde pişirilmiş pideler ve lahmacun çeşitleri.','hasan.öztürk13@gmail.com','+90508769333',38.423700,27.142800,'Pide & Lahmacun','Mon-Sun','10:00','22:00',5,4.80,220,'pideci_ocagi_image.jpg',1,1,7,5.00,40.00),(14,14,'Baba Pide','Zeytinli pide, kuymak ve özel lahmacunlar.','gamze.arslan14@gmail.com','+90508118408',38.423700,27.142800,'Pide & Lahmacun','Mon-Sun','11:00','23:00',5,4.40,280,'baba_pide_image.jpg',1,1,8,6.00,50.00),(15,15,'Anadolu Pide','Köy usulü pide ve lahmacun çeşitleri.','hatice.kaya15@gmail.com','+90503927669',38.423700,27.142800,'Pide & Lahmacun','Mon-Sun','10:00','22:00',5,4.50,310,'anadolu_pide_image.jpg',1,1,6,5.00,55.00),(16,16,'Saray Pide','Klasik Türk pide çeşitleri.','murat.aydın16@gmail.com','+90506462041',38.423700,27.142800,'Pide & Lahmacun','Mon-Sun','12:00','00:00',5,4.30,200,'saray_pide_image.jpg',1,1,7,4.00,50.00),(17,17,'Osmanlı Pide','Osmanlı tarzı pide ve lahmacunlar.','mehmet.durmaz17@gmail.com','+90508772679',38.423700,27.142800,'Pide & Lahmacun','Mon-Sun','11:00','23:00',5,4.70,230,'osmanlı_pide_image.jpg',1,1,5,5.00,40.00),(18,18,'Kebapçı Pide','Lezzetli kebaplar ve pideler.','elif.kurt18@gmail.com','+90507110288',38.423700,27.142800,'Pide & Lahmacun','Mon-Sun','11:00','23:00',5,4.40,190,'kebapçı_pide_image.jpg',1,1,9,6.00,45.00),(19,19,'Pideci Baba','Köy usulü pideler ve nefis lahmacunlar.','ali.kaya19@gmail.com','+90508549309',38.423700,27.142800,'Pide & Lahmacun','Mon-Sun','11:00','23:00',5,4.50,270,'pideci_baba_image.jpg',1,1,6,5.00,40.00),(20,20,'Pide & Lahmacun Evi','Taze malzemelerle pişirilen pideler ve lahmacunlar.','zeynep.demir20@gmail.com','+90504892985',38.423700,27.142800,'Pide & Lahmacun','Mon-Sun','10:00','22:00',5,4.70,250,'pide_lahmacun_evi_image.jpg',1,1,7,5.00,45.00),(21,21,'Şekerli Dünya','Tatlıların ve pastaların en lezzetli halleri burada.','huseyin.yilmaz21@gmail.com','+90503687654',38.423700,27.142800,'Tatlı','Mon-Sun','10:00','22:00',3,4.80,230,'sugar_world.jpg',1,1,5,5.00,40.00),(22,22,'Tatlı Zamanı','Günün her saati tatlı molası verebileceğiniz mekan.','hatice.demir22@gmail.com','+90507348198',38.423700,27.142800,'Tatlı','Mon-Sun','11:00','23:00',3,4.60,180,'sweet_time.jpg',1,1,6,6.00,45.00),(23,23,'Şekerci Dükkanı','El yapımı tatlılar, geleneksel şekerlemeler ve modern dokunuşlar.','ali.celik23@gmail.com','+90508248455',38.423700,27.142800,'Tatlı','Mon-Sun','09:00','21:00',3,4.70,300,'sweet_shop.jpg',1,1,4,4.00,35.00),(24,24,'Gül Pastanesi','Taze hazırlanmış pastalar, çikolatalar ve tatlılar.','merve.sahin24@gmail.com','+90505981087',38.423700,27.142800,'Tatlı','Mon-Sun','09:00','21:00',3,4.90,220,'gul_pastery.jpg',1,1,7,7.00,50.00),(25,25,'Huzur Tatlıları','Geleneksel ve modern tatlıların birleşimi.','gul.demir25@gmail.com','+90505467509',38.423700,27.142800,'Tatlı','Mon-Sun','10:00','20:00',3,4.50,150,'huzur_sweets.jpg',1,1,5,5.00,30.00),(26,26,'Tatlı Bahçesi','Bahçede tatlı keyfi! Çeşitli tatlılar ve dondurmalar.','mehmet.kaya26@gmail.com','+90504585590',38.423700,27.142800,'Tatlı','Mon-Sun','10:00','22:00',3,4.60,250,'sweet_garden.jpg',1,1,6,6.00,40.00),(27,27,'Meyveli Tatlar','Taze meyvelerle hazırlanan doğal tatlar.','hatice.yilmaz27@gmail.com','+90509846909',38.423700,27.142800,'Tatlı','Mon-Sun','09:00','20:00',3,4.70,220,'fruity_delights.jpg',1,1,4,4.00,35.00),(28,28,'Çikolata Cenneti','Çikolata severler için mükemmel bir tatlı durağı.','mehmet.kaya28@gmail.com','+90505653561',38.423700,27.142800,'Tatlı','Mon-Sun','11:00','23:00',3,4.80,180,'chocolate_heaven.jpg',1,1,5,5.00,40.00),(29,29,'Bal Kaymak','Doğal bal ve kaymak ile yapılan tatlılar.','ibrahim.sahin29@gmail.com','+90507243864',38.423700,27.142800,'Tatlı','Mon-Sun','10:00','22:00',3,4.60,200,'honey_cream.jpg',1,1,6,6.00,45.00),(30,30,'Yıldız Pastanesi','Yıldız gibi tatlar. Pasta, kurabiye ve tatlı çeşitleri.','selin.demir30@gmail.com','+90507493204',38.423700,27.142800,'Tatlı','Mon-Sun','09:00','21:00',3,4.90,250,'star_bakery.jpg',1,1,6,5.00,50.00),(31,31,'Anadolu Kebap Evi','Gerçek kebap lezzetleri, mangalda pişirilmiş etler.','mustafa.kaya31@gmail.com','+90504436540',38.423700,27.142800,'Kebap & Döner','Mon-Sun','10:00','22:00',3,4.80,180,'anadolu_kebap.jpg',1,1,8,7.00,50.00),(32,32,'Dönerci Baba','Et ve tavuk dönerin en lezzetli hali burada.','yusuf.çelik32@gmail.com','+90507820745',38.423700,27.142800,'Kebap & Döner','Mon-Sun','11:00','23:00',3,4.60,210,'doner_baba.jpg',1,1,10,8.00,45.00),(33,33,'Kebapçı Ali','Lezzetli kebaplar ve taze salatalar.','sevim.yılmaz33@gmail.com','+90503245012',38.423700,27.142800,'Kebap & Döner','Mon-Sun','09:00','21:00',3,4.70,195,'kebapci_ali.jpg',1,1,7,6.00,40.00),(34,34,'Döner Durağı','Klasik dönerin en taze hali.','mehmet.yılmaz34@gmail.com','+90508465903',38.423700,27.142800,'Kebap & Döner','Mon-Sun','10:00','22:00',3,4.50,160,'doner_duragi.jpg',1,1,6,5.00,35.00),(35,35,'Yozgat Kebapçısı','Yozgat usulü kebap ve pide çeşitleri.','yusuf.kaya35@gmail.com','+90506321147',38.423700,27.142800,'Kebap & Döner','Mon-Sun','11:00','23:00',3,4.60,190,'yozgat_kebap.jpg',1,1,8,7.00,45.00),(36,36,'Şahin Kebap','Şahin kebap ile et severlerin buluşma noktası.','emre.özkan36@gmail.com','+90504235123',38.423700,27.142800,'Kebap & Döner','Mon-Sun','09:00','21:00',3,4.80,220,'sahin_kebap.jpg',1,1,10,8.00,50.00),(37,37,'Hızır Döner','Dönerin en hızlı ve lezzetli hali.','fatma.çelik37@gmail.com','+90501514235',38.423700,27.142800,'Kebap & Döner','Mon-Sun','10:00','22:00',3,4.70,250,'hizir_doner.jpg',1,1,5,5.00,40.00),(38,38,'Büyük Kebapçı','Büyük porsiyon kebaplar, soğuk içecekler.','ali.kaya38@gmail.com','+90507293864',38.423700,27.142800,'Kebap & Döner','Mon-Sun','10:00','22:00',3,4.90,210,'buyuk_kebapci.jpg',1,1,7,6.00,45.00),(39,39,'İstanbul Dönercisi','İstanbul dönerinin en lezzetli hali.','serkan.şahin39@gmail.com','+90503728565',38.423700,27.142800,'Kebap & Döner','Mon-Sun','09:00','21:00',3,4.60,200,'istanbul_doner.jpg',1,1,6,6.00,40.00),(40,40,'Meze & Kebap','Türk mutfağının en iyi kebap ve mezeleri.','neşet.bayar40@gmail.com','+90502463598',38.423700,27.142800,'Kebap & Döner','Mon-Sun','10:00','22:00',3,4.70,230,'meze_kebap.jpg',1,1,8,7.00,50.00),(41,41,'Yıldız Fırını','Taze ekmek, poğaça, börek ve tatlı çeşitleriyle hizmetinizdeyiz.','özkan.bayram41@gmail.com','+90502211567',38.423700,27.142800,'Fırın & Pastane','Mon-Sun','10:00','21:00',3,4.80,210,'guneydogu_kebap.jpg',1,1,9,8.00,50.00),(42,42,'Çelik Pastanesi','Geleneksel Türk tatlıları ve pasta çeşitleri.','selim.yıldız42@gmail.com','+90507645323',38.423700,27.142800,'Fırın & Pastane','Mon-Sun','09:00','21:00',3,4.70,180,'kebapcilar_kralı.jpg',1,1,7,6.00,45.00),(43,43,'Lezzet Fırını','Günlük taze ekmekler ve nefis tatlılar.','halil.demir43@gmail.com','+90505213498',38.423700,27.142800,'Fırın & Pastane','Mon-Sun','10:00','22:00',3,4.90,230,'anadolu_doner.jpg',1,1,8,7.00,50.00),(44,44,'Tatlı Dünyası','Çeşitli pasta ve tatlı seçenekleri ile mutfağınızda fark yaratın.','yavuz.kaya44@gmail.com','+90504324901',38.423700,27.142800,'Fırın & Pastane','Mon-Sun','09:00','21:00',3,4.60,210,'yavuz_kebap.jpg',1,1,6,5.00,40.00),(45,45,'Vega Fırını','Gluten-free tatlar ve sağlıklı seçenekler.','ozan.turker45@gmail.com','+90507463987',38.423700,27.142800,'Fırın & Pastane','Mon-Sun','10:00','22:00',3,4.70,190,'hasan_usta_kebap.jpg',1,1,8,7.00,50.00),(46,46,'Fırıncı Ali Usta','Köy ekmeği, börek ve tatlı çeşitleri.','hakan.kilic46@gmail.com','+90503427895',38.423700,27.142800,'Fırın & Pastane','Mon-Sun','10:00','21:00',3,4.50,200,'cesme_doner.jpg',1,1,7,6.00,45.00),(47,47,'Saray Pastanesi','Geleneksel Osmanlı tatlıları ve şık pastalar.','murat.bozkurt47@gmail.com','+90506572143',38.423700,27.142800,'Fırın & Pastane','Mon-Sun','09:00','21:00',3,4.80,220,'meze_ve_kebap.jpg',1,1,9,8.00,50.00),(48,48,'Beyaz Fırın','Yerli ve organik ürünlerle hazırlanan tatlar.','ozlem.gok48@gmail.com','+90501264739',38.423700,27.142800,'Fırın & Pastane','Mon-Sun','10:00','22:00',3,4.60,250,'donerci_osman.jpg',1,1,8,7.00,45.00),(49,49,'Renkli Tatlar','Her yaştan tatlı severin buluşma noktası.','ali.koc49@gmail.com','+90503216987',38.423700,27.142800,'Fırın & Pastane','Mon-Sun','09:00','21:00',3,4.70,230,'yuksek_kebap.jpg',1,1,10,8.00,50.00),(50,50,'Beyaz Ay Pastanesi','Özel günler için zarif pastalar ve tatlılar.','mahmut.guler50@gmail.com','+90506578214',38.423700,27.142800,'Fırın & Pastane','Mon-Sun','10:00','22:00',3,4.90,240,'kebapci_mahir.jpg',1,1,6,5.00,40.00);
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
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
