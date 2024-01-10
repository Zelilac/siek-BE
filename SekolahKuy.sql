CREATE DATABASE  IF NOT EXISTS `db_pharmaclick` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_pharmaclick`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db_pharmaclick
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) NOT NULL,
  `recipient` varchar(45) NOT NULL,
  `iduser` int NOT NULL,
  `id_city_origin` int NOT NULL,
  `address` varchar(500) NOT NULL,
  `postal_code` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_default` int DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (6,'Upin House','Upin ',4,42,'Komplek perumahan blok 19 no 51',40511,'2021-07-22 00:56:10','2021-07-27 12:18:43',2),(20,'Raze House','Raze Mulo',20,151,'Komplek perumahan satchel blok 19 no 5',40521,'2021-07-22 06:58:56','2021-07-27 12:18:43',2),(25,'Rumah','Allysa',22,107,'Komplek Nusa Cisangkan Permai',40526,'2021-07-25 09:38:59','2021-07-27 12:18:43',2),(31,'Rumah Ucup','Ucup sanusi',24,151,'Komplek pegangsaan timur no 118',40413,'2021-08-02 12:30:12','2021-08-08 12:34:04',1),(48,'Rakha House','Rakha',16,22,'Komplek Ujung berung indah blok 16 no 2',40611,'2021-08-04 10:08:22','2021-08-04 17:08:22',1),(51,'Rumah','Allysa',21,107,'Komp ncp',40526,'2021-08-04 11:55:36','2021-08-04 19:04:50',2),(52,'Komplek Nusa Cisangkan Permai Blok H no 23','Kaka',21,107,'Komplek Nusa Cisangkan Permai Blok H no 23',40526,'2021-08-04 12:04:07','2021-08-04 19:04:50',1);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idproduct` int NOT NULL,
  `qty` int NOT NULL,
  `total_netto` float DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_cart_iduser_idx` (`iduser`),
  KEY `fk_cart_idproduct_idx` (`idproduct`),
  CONSTRAINT `fk_cart_idproduct` FOREIGN KEY (`idproduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cart_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Seragam'),(2,'Alat Tulis'),(3,'Buku Cetak'),(4,'Olahraga');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Aceh Barat'),(2,'Aceh Barat Daya'),(3,'Aceh Besar'),(4,'Aceh Jaya'),(5,'Aceh Selatan'),(6,'Aceh Singkil'),(7,'Aceh Tamiang'),(8,'Aceh Tengah'),(9,'Aceh Tenggara'),(10,'Aceh Timur'),(11,'Aceh Utara'),(12,'Agam'),(13,'Alor'),(14,'Ambon'),(15,'Asahan'),(16,'Asmat'),(17,'Badung'),(18,'Balangan'),(19,'Balikpapan'),(20,'Banda Aceh'),(21,'Bandar Lampung'),(22,'Bandung'),(23,'Bandung'),(24,'Bandung Barat'),(25,'Banggai'),(26,'Banggai Kepulauan'),(27,'Bangka'),(28,'Bangka Barat'),(29,'Bangka Selatan'),(30,'Bangka Tengah'),(31,'Bangkalan'),(32,'Bangli'),(33,'Banjar'),(34,'Banjar'),(35,'Banjarbaru'),(36,'Banjarmasin'),(37,'Banjarnegara'),(38,'Bantaeng'),(39,'Bantul'),(40,'Banyuasin'),(41,'Banyumas'),(42,'Banyuwangi'),(43,'Barito Kuala'),(44,'Barito Selatan'),(45,'Barito Timur'),(46,'Barito Utara'),(47,'Barru'),(48,'Batam'),(49,'Batang'),(50,'Batang Hari'),(51,'Batu'),(52,'Batu Bara'),(53,'Bau-Bau'),(54,'Bekasi'),(55,'Bekasi'),(56,'Belitung'),(57,'Belitung Timur'),(58,'Belu'),(59,'Bener Meriah'),(60,'Bengkalis'),(61,'Bengkayang'),(62,'Bengkulu'),(63,'Bengkulu Selatan'),(64,'Bengkulu Tengah'),(65,'Bengkulu Utara'),(66,'Berau'),(67,'Biak Numfor'),(68,'Bima'),(69,'Bima'),(70,'Binjai'),(71,'Bintan'),(72,'Bireuen'),(73,'Bitung'),(74,'Blitar'),(75,'Blitar'),(76,'Blora'),(77,'Boalemo'),(78,'Bogor'),(79,'Bogor'),(80,'Bojonegoro'),(81,'Bolaang Mongondow (Bolmong)'),(82,'Bolaang Mongondow Selatan'),(83,'Bolaang Mongondow Timur'),(84,'Bolaang Mongondow Utara'),(85,'Bombana'),(86,'Bondowoso'),(87,'Bone'),(88,'Bone Bolango'),(89,'Bontang'),(90,'Boven Digoel'),(91,'Boyolali'),(92,'Brebes'),(93,'Bukittinggi'),(94,'Buleleng'),(95,'Bulukumba'),(96,'Bulungan (Bulongan)'),(97,'Bungo'),(98,'Buol'),(99,'Buru'),(100,'Buru Selatan'),(101,'Buton'),(102,'Buton Utara'),(103,'Ciamis'),(104,'Cianjur'),(105,'Cilacap'),(106,'Cilegon'),(107,'Cimahi'),(108,'Cirebon'),(109,'Cirebon'),(110,'Dairi'),(111,'Deiyai (Deliyai)'),(112,'Deli Serdang'),(113,'Demak'),(114,'Denpasar'),(115,'Depok'),(116,'Dharmasraya'),(117,'Dogiyai'),(118,'Dompu'),(119,'Donggala'),(120,'Dumai'),(121,'Empat Lawang'),(122,'Ende'),(123,'Enrekang'),(124,'Fakfak'),(125,'Flores Timur'),(126,'Garut'),(127,'Gayo Lues'),(128,'Gianyar'),(129,'Gorontalo'),(130,'Gorontalo'),(131,'Gorontalo Utara'),(132,'Gowa'),(133,'Gresik'),(134,'Grobogan'),(135,'Gunung Kidul'),(136,'Gunung Mas'),(137,'Gunungsitoli'),(138,'Halmahera Barat'),(139,'Halmahera Selatan'),(140,'Halmahera Tengah'),(141,'Halmahera Timur'),(142,'Halmahera Utara'),(143,'Hulu Sungai Selatan'),(144,'Hulu Sungai Tengah'),(145,'Hulu Sungai Utara'),(146,'Humbang Hasundutan'),(147,'Indragiri Hilir'),(148,'Indragiri Hulu'),(149,'Indramayu'),(150,'Intan Jaya'),(151,'Jakarta Barat'),(152,'Jakarta Pusat'),(153,'Jakarta Selatan'),(154,'Jakarta Timur'),(155,'Jakarta Utara'),(156,'Jambi'),(157,'Jayapura'),(158,'Jayapura'),(159,'Jayawijaya'),(160,'Jember'),(161,'Jembrana'),(162,'Jeneponto'),(163,'Jepara'),(164,'Jombang'),(165,'Kaimana'),(166,'Kampar'),(167,'Kapuas'),(168,'Kapuas Hulu'),(169,'Karanganyar'),(170,'Karangasem'),(171,'Karawang'),(172,'Karimun'),(173,'Karo'),(174,'Katingan'),(175,'Kaur'),(176,'Kayong Utara'),(177,'Kebumen'),(178,'Kediri'),(179,'Kediri'),(180,'Keerom'),(181,'Kendal'),(182,'Kendari'),(183,'Kepahiang'),(184,'Kepulauan Anambas'),(185,'Kepulauan Aru'),(186,'Kepulauan Mentawai'),(187,'Kepulauan Meranti'),(188,'Kepulauan Sangihe'),(189,'Kepulauan Seribu'),(190,'Kepulauan Siau Tagulandang Biaro (Sitaro)'),(191,'Kepulauan Sula'),(192,'Kepulauan Talaud'),(193,'Kepulauan Yapen (Yapen Waropen)'),(194,'Kerinci'),(195,'Ketapang'),(196,'Klaten'),(197,'Klungkung'),(198,'Kolaka'),(199,'Kolaka Utara'),(200,'Konawe'),(201,'Konawe Selatan'),(202,'Konawe Utara'),(203,'Kotabaru'),(204,'Kotamobagu'),(205,'Kotawaringin Barat'),(206,'Kotawaringin Timur'),(207,'Kuantan Singingi'),(208,'Kubu Raya'),(209,'Kudus'),(210,'Kulon Progo'),(211,'Kuningan'),(212,'Kupang'),(213,'Kupang'),(214,'Kutai Barat'),(215,'Kutai Kartanegara'),(216,'Kutai Timur'),(217,'Labuhan Batu'),(218,'Labuhan Batu Selatan'),(219,'Labuhan Batu Utara'),(220,'Lahat'),(221,'Lamandau'),(222,'Lamongan'),(223,'Lampung Barat'),(224,'Lampung Selatan'),(225,'Lampung Tengah'),(226,'Lampung Timur'),(227,'Lampung Utara'),(228,'Landak'),(229,'Langkat'),(230,'Langsa'),(231,'Lanny Jaya'),(232,'Lebak'),(233,'Lebong'),(234,'Lembata'),(235,'Lhokseumawe'),(236,'Lima Puluh Koto/Kota'),(237,'Lingga'),(238,'Lombok Barat'),(239,'Lombok Tengah'),(240,'Lombok Timur'),(241,'Lombok Utara'),(242,'Lubuk Linggau'),(243,'Lumajang'),(244,'Luwu'),(245,'Luwu Timur'),(246,'Luwu Utara'),(247,'Madiun'),(248,'Madiun'),(249,'Magelang'),(250,'Magelang'),(251,'Magetan'),(252,'Majalengka'),(253,'Majene'),(254,'Makassar'),(255,'Malang'),(256,'Malang'),(257,'Malinau'),(258,'Maluku Barat Daya'),(259,'Maluku Tengah'),(260,'Maluku Tenggara'),(261,'Maluku Tenggara Barat'),(262,'Mamasa'),(263,'Mamberamo Raya'),(264,'Mamberamo Tengah'),(265,'Mamuju'),(266,'Mamuju Utara'),(267,'Manado'),(268,'Mandailing Natal'),(269,'Manggarai'),(270,'Manggarai Barat'),(271,'Manggarai Timur'),(272,'Manokwari'),(273,'Manokwari Selatan'),(274,'Mappi'),(275,'Maros'),(276,'Mataram'),(277,'Maybrat'),(278,'Medan'),(279,'Melawi'),(280,'Merangin'),(281,'Merauke'),(282,'Mesuji'),(283,'Metro'),(284,'Mimika'),(285,'Minahasa'),(286,'Minahasa Selatan'),(287,'Minahasa Tenggara'),(288,'Minahasa Utara'),(289,'Mojokerto'),(290,'Mojokerto'),(291,'Morowali'),(292,'Muara Enim'),(293,'Muaro Jambi'),(294,'Muko Muko'),(295,'Muna'),(296,'Murung Raya'),(297,'Musi Banyuasin'),(298,'Musi Rawas'),(299,'Nabire'),(300,'Nagan Raya'),(301,'Nagekeo'),(302,'Natuna'),(303,'Nduga'),(304,'Ngada'),(305,'Nganjuk'),(306,'Ngawi'),(307,'Nias'),(308,'Nias Barat'),(309,'Nias Selatan'),(310,'Nias Utara'),(311,'Nunukan'),(312,'Ogan Ilir'),(313,'Ogan Komering Ilir'),(314,'Ogan Komering Ulu'),(315,'Ogan Komering Ulu Selatan'),(316,'Ogan Komering Ulu Timur'),(317,'Pacitan'),(318,'Padang'),(319,'Padang Lawas'),(320,'Padang Lawas Utara'),(321,'Padang Panjang'),(322,'Padang Pariaman'),(323,'Padang Sidempuan'),(324,'Pagar Alam'),(325,'Pakpak Bharat'),(326,'Palangka Raya'),(327,'Palembang'),(328,'Palopo'),(329,'Palu'),(330,'Pamekasan'),(331,'Pandeglang'),(332,'Pangandaran'),(333,'Pangkajene Kepulauan'),(334,'Pangkal Pinang'),(335,'Paniai'),(336,'Parepare'),(337,'Pariaman'),(338,'Parigi Moutong'),(339,'Pasaman'),(340,'Pasaman Barat'),(341,'Paser'),(342,'Pasuruan'),(343,'Pasuruan'),(344,'Pati'),(345,'Payakumbuh'),(346,'Pegunungan Arfak'),(347,'Pegunungan Bintang'),(348,'Pekalongan'),(349,'Pekalongan'),(350,'Pekanbaru'),(351,'Pelalawan'),(352,'Pemalang'),(353,'Pematang Siantar'),(354,'Penajam Paser Utara'),(355,'Pesawaran'),(356,'Pesisir Barat'),(357,'Pesisir Selatan'),(358,'Pidie'),(359,'Pidie Jaya'),(360,'Pinrang'),(361,'Pohuwato'),(362,'Polewali Mandar'),(363,'Ponorogo'),(364,'Pontianak'),(365,'Pontianak'),(366,'Poso'),(367,'Prabumulih'),(368,'Pringsewu'),(369,'Probolinggo'),(370,'Probolinggo'),(371,'Pulang Pisau'),(372,'Pulau Morotai'),(373,'Puncak'),(374,'Puncak Jaya'),(375,'Purbalingga'),(376,'Purwakarta'),(377,'Purworejo'),(378,'Raja Ampat'),(379,'Rejang Lebong'),(380,'Rembang'),(381,'Rokan Hilir'),(382,'Rokan Hulu'),(383,'Rote Ndao'),(384,'Sabang'),(385,'Sabu Raijua'),(386,'Salatiga'),(387,'Samarinda'),(388,'Sambas'),(389,'Samosir'),(390,'Sampang'),(391,'Sanggau'),(392,'Sarmi'),(393,'Sarolangun'),(394,'Sawah Lunto'),(395,'Sekadau'),(396,'Selayar (Kepulauan Selayar)'),(397,'Seluma'),(398,'Semarang'),(399,'Semarang'),(400,'Seram Bagian Barat');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmation_payment`
--

DROP TABLE IF EXISTS `confirmation_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `confirmation_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idtransaction` int NOT NULL,
  `id_transaction_status` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmation_payment`
--

LOCK TABLES `confirmation_payment` WRITE;
/*!40000 ALTER TABLE `confirmation_payment` DISABLE KEYS */;
INSERT INTO `confirmation_payment` VALUES (10,68,5,'public\\transactions\\IMG1628401109654.jpg','2021-08-08 05:38:29','2021-08-08 12:38:29'),(11,69,5,'public\\transactions\\IMG1628403119434.jpg','2021-08-08 06:11:59','2021-08-08 13:11:59'),(12,74,5,'transactions/IMG1704907474460.jpg','2024-01-10 17:24:34','2024-01-11 00:24:34');
/*!40000 ALTER TABLE `confirmation_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expedition_status`
--

DROP TABLE IF EXISTS `expedition_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expedition_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expedition_status`
--

LOCK TABLES `expedition_status` WRITE;
/*!40000 ALTER TABLE `expedition_status` DISABLE KEYS */;
INSERT INTO `expedition_status` VALUES (1,'REG'),(2,'YES');
/*!40000 ALTER TABLE `expedition_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `idcategory` int NOT NULL,
  `description` longtext,
  `netto` float DEFAULT NULL,
  `pack_price` decimal(12,2) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (6,'Buku Tulis','Campus',2,'Buku tulis trendy, dengan desain kekinian.',1,4000.00,'pcs','2021-07-22 16:19:58','2023-12-20 13:14:01'),(7,'Pulpen Gel Joyko','Joyko',2,'Pulpen Gel Joyko Dengan desain stylish, mudah digenggam, harga yang dicantumkan adalah harga satuan',1,2200.00,'pcs','2021-07-22 16:19:58','2023-12-20 13:27:45'),(8,'Penghapus Papan Tulis','Joko',2,'Penghapus papan tulis dengan bahan halus, mudah untuk menghapus tinta yang tebal.',1,25000.00,'pcs','2021-07-22 16:19:58','2023-12-20 13:31:02'),(9,'Penghapus Pensil Joyko','Joyko',2,'Penghapus pensil dengan bahan yang kuat, bisa menghapus pensil yang tebal.',1,3000.00,'pcs','2021-07-22 16:19:58','2023-12-20 13:35:29'),(10,'Pensil 2B Faber Casltle','Faber Castle',2,'Pensil 2B dari faber castle, lebih tahan lama dari sebelumnya menggunakan teknologi terbaru.',1,2500.00,'pcs','2021-07-22 16:19:58','2023-12-20 13:51:04'),(11,'Buku Matematika SMK/SMA','Kemendikbud',3,'Buku paket matematika kurikulum terbaru, untuk siswa/siswi SMA/SMK',1,75000.00,'pcs','2021-07-22 16:19:58','2023-12-20 13:54:56'),(12,'Buku Fisika SMK/SMA','Kemendikbud',3,'Buku paket Fisika kurikulum terbaru, untuk siswa/siswi SMK/SMA',1,80000.00,'pcs','2021-07-22 16:19:58','2023-12-20 13:54:56'),(13,'Buku Kimia SMK/SMA','Kemendikbud',3,'Buku paket Kimiakurikulum terbaru, untuk siswa/siswi SMK/SMA',1,80000.00,'pcs','2021-07-22 16:19:58','2023-12-20 13:57:23'),(16,'Matras Olahraga','Galih Gunawan',4,'Matras untuk olahraga siswa/siswi, bahan empuk nyaman digunakan untuk roll depan/roll belakang.',1,275000.00,'pcs','2021-07-22 16:19:58','2023-12-20 14:09:10'),(17,'Meja Tenis','Galih Gunawan',4,'Meja Tenis untuk siswa/siswi, bahan kuat tahan lama untuk pemakaian sehari-hari.',1,3500000.00,'pcs','2021-07-22 16:19:58','2023-12-20 14:09:10'),(18,'Raket Bulu Tangkis','Galih Gunawan',4,'Raket Bulu tangkis ringan kuat dan tahan lama, bisa digunakan untuk kegiatan olahraga.',1,180000.00,'pcs','2021-07-22 16:19:58','2023-12-20 14:11:16'),(29,'Seragam Atasan SMA/SMK','Galih Gunawan',1,'Seragam siswa SMA/SMK dibuat menggunakan bahan katun, nayaman digunakan sehari-hari.',5,150000.00,'pcs','2021-07-22 16:19:58','2023-12-20 12:56:00'),(30,'Celana SMA/SMK','Galih Gunawan',1,'Celana SMA/SMK dibuat menggunakan bahan katun yang nyaman saat digunakan.',1,100000.00,'pcs','2021-07-22 16:19:58','2023-12-20 12:56:00'),(73,'Handsanitizeru','kimia farma',2,'a',1,10000.00,'L','2021-07-23 09:19:59','2021-08-03 18:36:34'),(74,'Hansaplast','Hansaplast',1,'Hansaplast',1,1000.00,'lembar','2021-07-26 12:37:59','2023-12-20 10:57:53');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idproduct` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_productimage_idproduct_idx` (`idproduct`),
  CONSTRAINT `fk_productimage_idproduct` FOREIGN KEY (`idproduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (6,6,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRCQUiFw9E1yLZQXWVqM65lMaAqqxvvv6jcw&usqp=CAU'),(7,7,'https://images.tokopedia.net/img/cache/700/product-1/2020/8/26/18158542/18158542_45165bce-6f2a-4b9d-9b12-f1e38c91cf5b_1080_1080'),(8,8,'https://static-siplah.blibli.com/data/images/SJLI-0001-00117/e04732ea-d376-4eb1-85d5-c851c7e10f2c.jpg'),(9,9,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT11GBewLY1EUy-PkRuHBpDyNqhNCABZB2A2OxUnqBTHnH8pPmDLE3j5xUNZlGZejBXIyU&usqp=CAU'),(10,10,'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//103/MTA-6207699/faber-castell_faber_castell_pensil_hb_full02_h9luhzjs.jpg'),(11,11,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTObnVN54zg3tlTvPSm-oO-vPbp71ElZBIYwg&usqp=CAU'),(12,12,'https://ebooks.gramedia.com/ebook-covers/64256/image_highres/BLK_BSFSK12021610571.jpg'),(13,13,'https://cdn.eurekabookhouse.co.id/ebh/product/all/04-34-209-1.jpg'),(16,16,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfwYoIyBf-UVcAQIVPuqq7OMb9ojsr-mzvdw&usqp=CAU'),(17,17,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFrmvd8RK4zOQxFnm9BPcsGk672RsC3uBO0A&usqp=CAU'),(18,18,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKD8CxUNQ-Xd7c529B43QYKy_T1yC_lTYOkxjLez2iqve1zXC7uwUvnG1mzBAu3RvZywI&usqp=CAU'),(21,29,'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/99/MTA-130902388/no-brand_no-brand_full01.jpg'),(22,30,'https://img.ws.mms.shopee.co.id/5f6e7da78193efa570bb8322d583ead3'),(73,73,'products/IMG1627031999831.jpg'),(74,74,'products/IMG1627303079344.png');
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_status`
--

DROP TABLE IF EXISTS `product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_status`
--

LOCK TABLES `product_status` WRITE;
/*!40000 ALTER TABLE `product_status` DISABLE KEYS */;
INSERT INTO `product_status` VALUES (1,'available'),(2,'low'),(3,'unavailable');
/*!40000 ALTER TABLE `product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idproduct` int NOT NULL,
  `rating` varchar(45) NOT NULL,
  `review` varchar(10000) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,4,1,'5','Obat ini baik sekali, karena saya bisa sembuh dengan cepat setelah mengkonsumsi obat ini.','2021-07-22 01:00:18','2021-07-22 08:00:18'),(2,5,1,'4','Obatnya baik untuk saya dan anak, cocok sekali karena anak saya dan saya langsung sembuh dengan cepat.','2021-07-22 01:00:18','2021-07-22 08:00:18'),(3,6,3,'5','Keren obatnya manjur sekali pada saat saya gunakan, karena menurunkan panas dengan sangat cepat dibandingkan obat lain.','2021-07-22 01:00:18','2021-07-28 21:14:01'),(4,22,1,'4','bagus banget','2021-08-04 07:08:50','2021-08-04 14:10:25'),(5,22,2,'4','bagus aja sih','2021-08-04 07:08:50','2021-08-04 14:10:25'),(6,21,1,'4','Bagus product ini','2021-08-04 07:35:49','2021-08-04 14:35:49'),(7,21,2,'2','Kurang bagus untuk sakit kepala','2021-08-04 07:35:49','2021-08-04 14:35:49'),(8,21,1,'4','Bagus banget','2021-08-04 07:36:43','2021-08-04 14:36:43'),(9,21,2,'2','Kurang bagus','2021-08-04 07:36:43','2021-08-04 14:36:43'),(10,21,7,'3','Salep matanya kurang ampuh','2021-08-04 07:45:28','2021-08-04 14:45:28'),(11,21,5,'5','Anak saya langsung sembuh setelah minum ini','2021-08-04 07:48:01','2021-08-04 14:48:01'),(14,21,1,'3','bagus banget','2021-08-04 12:55:29','2021-08-04 19:55:29'),(15,21,2,'5','sangat bagussdssds','2021-08-04 12:55:29','2021-08-04 19:55:29');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `idrole` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'verified'),(2,'unverified'),(3,'available'),(4,'low'),(5,'unvailable'),(6,'onprogress'),(7,'done'),(8,'reject'),(11,'request');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idproduct` int NOT NULL,
  `idtype` int NOT NULL,
  `qty` int NOT NULL,
  `total_netto` float NOT NULL,
  `unit_price` int DEFAULT NULL,
  `idstatus` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stock_idproduct_idx` (`idproduct`),
  CONSTRAINT `fk_stock_idproduct` FOREIGN KEY (`idproduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (6,6,1,11,-1,NULL,1),(7,7,1,100,1,NULL,1),(8,8,1,20,1,NULL,1),(9,9,1,21,1,NULL,1),(10,10,1,4,20,NULL,1),(11,11,1,11,1,NULL,1),(12,12,1,7,1,NULL,1),(13,13,1,13,1,NULL,1),(16,16,1,20,1,NULL,1),(17,17,1,5,1,NULL,1),(18,18,1,14,1,NULL,1),(68,29,1,10,50,NULL,1),(69,30,1,100,1,NULL,1),(154,73,1,1,1,NULL,3),(155,74,1,8,8,NULL,3);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `id_transaction_status` int DEFAULT '4',
  `invoice` varchar(45) NOT NULL,
  `id_city_origin` int NOT NULL,
  `id_city_destination` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `recipient` varchar(45) NOT NULL,
  `postal_code` int NOT NULL,
  `expedition` varchar(45) DEFAULT NULL,
  `service` varchar(45) DEFAULT NULL,
  `shipping_cost` decimal(12,2) NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `note` varchar(45) NOT NULL,
  `idtype` int NOT NULL,
  `img_order_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT NULL,
  `review` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_p_iduser_idx` (`iduser`),
  CONSTRAINT `fk_transaction_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (74,16,1,'PRM#CLICK1704907417633',22,22,'Komplek Ujung berung indah blok 16 no 2','Rakha',40611,NULL,NULL,8000.00,12000.00,'Yang bagus bukunya',1,NULL,'2024-01-11 00:23:37',NULL,'0');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_detail`
--

DROP TABLE IF EXISTS `transaction_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idproduct` int NOT NULL,
  `idtransaction` int NOT NULL,
  `qty_buy` int NOT NULL,
  `netto` float NOT NULL,
  `total_netto` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_detail`
--

LOCK TABLES `transaction_detail` WRITE;
/*!40000 ALTER TABLE `transaction_detail` DISABLE KEYS */;
INSERT INTO `transaction_detail` VALUES (60,32,61,2,100,150,'2021-08-07 02:46:40','2021-08-07 09:46:40'),(61,34,61,1,100,100,'2021-08-07 02:46:40','2021-08-07 09:46:40'),(70,2,67,2,4,8,'2021-08-07 05:39:39','2021-08-07 12:39:39'),(71,3,67,3,4,12,'2021-08-07 05:39:39','2021-08-07 12:39:39'),(72,2,71,1,4,4,'2021-08-08 09:00:10','2021-08-08 16:00:10'),(73,3,71,2,4,8,'2021-08-08 09:00:10','2021-08-08 16:00:10'),(74,6,73,1,1,1,'2024-01-10 17:21:00','2024-01-11 00:21:00'),(75,6,74,1,1,1,'2024-01-10 17:23:37','2024-01-11 00:23:37');
/*!40000 ALTER TABLE `transaction_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_status`
--

DROP TABLE IF EXISTS `transaction_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_status`
--

LOCK TABLES `transaction_status` WRITE;
/*!40000 ALTER TABLE `transaction_status` DISABLE KEYS */;
INSERT INTO `transaction_status` VALUES (1,'onprogress'),(2,'done'),(3,'reject'),(4,'request'),(5,'waiting'),(6,'accept');
/*!40000 ALTER TABLE `transaction_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'pack'),(2,'custom');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) NOT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `idrole` int NOT NULL,
  `idstatus` int NOT NULL,
  `profile_image` varchar(45) DEFAULT NULL,
  `password` varchar(300) NOT NULL,
  `otp` varchar(45) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Allysa Rahmagustiani',NULL,NULL,'allysarh1','allysa.rahmagzstiani@gmail.com',2,2,NULL,'8a0cbb7f3b076c2200ed815b36bd15a4dd7042e08d60ca7b6d6c468130f0c690','atdwni',NULL,'2021-07-21 23:07:38','2021-07-22 06:07:38'),(3,'Allysa Rahmagustiani',NULL,NULL,'allysarh2','allysa.rahagjhkustiani@gmail.com',2,1,NULL,'8a0cbb7f3b076c2200ed815b36bd15a4dd7042e08d60ca7b6d6c468130f0c690','ebk1m8',NULL,'2021-07-21 23:07:38','2021-07-22 06:07:38'),(4,'Upin Upin','Male',22,'upin123','upin@mail.com',2,2,NULL,'789c187b31288bcbe21c354a4d3ad2bdcaffd7ebab90a454957df2568813d911','mi1dxs','082134521','2021-07-21 23:07:38','2021-07-22 09:28:51'),(5,'Upin Upin',NULL,NULL,'upin123','upin@mail.com',2,2,NULL,'789c187b31288bcbe21c354a4d3ad2bdcaffd7ebab90a454957df2568813d911','bejifc',NULL,'2021-07-21 23:07:38','2021-07-22 06:07:38'),(6,'Upin',NULL,NULL,'upinkeren','upin@mail.com',2,1,NULL,'8a0cbb7f3b076c2200ed815b36bd15a4dd7042e08d60ca7b6d6c468130f0c690','lh3hlc',NULL,'2021-07-21 23:07:38','2021-07-23 10:55:09'),(7,'Ipin ganteng',NULL,NULL,'ipin123','ipin@mail.com',2,2,NULL,'789c187b31288bcbe21c354a4d3ad2bdcaffd7ebab90a454957df2568813d911','rwprmv',NULL,'2021-07-21 23:07:38','2021-07-22 06:07:38'),(8,'Ipin ganteng 2',NULL,NULL,'ipin123','ipin@mail.com',2,2,NULL,'789c187b31288bcbe21c354a4d3ad2bdcaffd7ebab90a454957df2568813d911','94ax3r',NULL,'2021-07-21 23:07:38','2021-07-22 06:07:38'),(9,'Kak ros',NULL,NULL,'kakros_cantik','kakrod@mail.com',2,2,NULL,'789c187b31288bcbe21c354a4d3ad2bdcaffd7ebab90a454957df2568813d911','t76ghm',NULL,'2021-07-21 23:07:38','2021-07-22 06:07:38'),(10,'Taeyong lee',NULL,NULL,'tytrack','ty@mail.com',2,2,NULL,'789c187b31288bcbe21c354a4d3ad2bdcaffd7ebab90a454957df2568813d911','18ty1x',NULL,'2021-07-21 23:07:38','2021-07-22 06:07:38'),(11,'Ten lee',NULL,NULL,'tenlee','ten@mail.com',2,2,NULL,'789c187b31288bcbe21c354a4d3ad2bdcaffd7ebab90a454957df2568813d911','bacy8g',NULL,'2021-07-21 23:07:38','2021-07-22 06:07:38'),(12,'jeno lee',NULL,NULL,'jenolee','jeno@mail.com',2,2,NULL,'789c187b31288bcbe21c354a4d3ad2bdcaffd7ebab90a454957df2568813d911','g4hfgj',NULL,'2021-07-21 23:07:38','2021-07-22 06:07:38'),(13,'Mark lee',NULL,NULL,'onyoum','mark@mail.com',2,2,NULL,'789c187b31288bcbe21c354a4d3ad2bdcaffd7ebab90a454957df2568813d911','51wb7w',NULL,'2021-07-21 23:07:38','2021-07-22 06:07:38'),(14,'allysa',NULL,NULL,'allysarh','allysa.rahmaguastiani@gmail.com',2,2,NULL,'8a0cbb7f3b076c2200ed815b36bd15a4dd7042e08d60ca7b6d6c468130f0c690','lcfife',NULL,'2021-07-21 23:07:38','2021-07-27 13:41:51'),(16,'Rakha Luthfi','Male',22,'mrakhalf','mochamadrakha@gmail.com',2,1,'profiles/IMGUSR16.jpeg','2e4439d6d195013ec8e91872e0f47dccc3377e4faa61d828df9351dcf86d38fb','kyd22s','08112264420','2021-07-21 23:07:38','2021-08-08 09:20:36'),(17,'Allysa Rahmagustiani',NULL,NULL,'allysarh','allysa.rahwagustiani@gmail.com',1,1,NULL,'37c83ec241c8ce48080768dea49a731a238a1b237edb464c8a5b631f8bc1ac49','3isc9u',NULL,'2021-07-21 23:07:38','2021-07-25 16:19:36'),(18,'Maman Abdul','',NULL,'mandul','mandul@apeloe.com',2,1,'','2e4439d6d195013ec8e91872e0f47dccc3377e4faa61d828df9351dcf86d38fb','ahmjjr','','2021-07-21 23:07:38','2021-07-22 15:21:33'),(19,'reyna','',22,'reynamain','reynamain@apeloe.com',2,1,'','2e4439d6d195013ec8e91872e0f47dccc3377e4faa61d828df9351dcf86d38fb','cu4xm1','08112264420','2021-07-22 02:42:06','2021-07-26 18:53:54'),(20,'raze mulo','Male',17,'razemulo','razemulo@mail.com',1,1,'','2e4439d6d195013ec8e91872e0f47dccc3377e4faa61d828df9351dcf86d38fb','kaovl2',NULL,'2021-07-22 04:21:43','2021-07-26 09:35:15'),(21,'Renjun Huang','Male',22,'renjunie','renjun@mail.com',2,1,'profiles/IMGUSR21.jpeg','8a0cbb7f3b076c2200ed815b36bd15a4dd7042e08d60ca7b6d6c468130f0c690','x1g3bw','08123132324','2021-07-23 08:33:37','2021-08-04 19:13:32'),(22,'Allysa','Female',22,'allysarah','allysa.rahagustiani@gmail.com',1,1,'','8a0cbb7f3b076c2200ed815b36bd15a4dd7042e08d60ca7b6d6c468130f0c690','vjh1l0','082214708468','2021-07-25 09:20:06','2021-07-26 09:29:18'),(24,'rakha luthfi','Male',23,'mrakahalf','mrakhalf@apeloe.com',1,1,'profiles/IMGUSR24.jpeg','2e4439d6d195013ec8e91872e0f47dccc3377e4faa61d828df9351dcf86d38fb','szufkv','08112264420','2021-08-02 12:02:37','2024-01-10 23:23:22');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_status`
--

DROP TABLE IF EXISTS `user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_status`
--

LOCK TABLES `user_status` WRITE;
/*!40000 ALTER TABLE `user_status` DISABLE KEYS */;
INSERT INTO `user_status` VALUES (1,'verified'),(2,'unverified');
/*!40000 ALTER TABLE `user_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-11  1:19:55
