-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: mustafakoca
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `iletisim`
--

DROP TABLE IF EXISTS `iletisim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iletisim` (
  `idiletisim` int NOT NULL,
  `kitap_ad_soyad` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kitap_eposta` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kitap_ileti_konusu` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kitap_ileti` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`idiletisim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='iletisim bilgileri kayiti';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iletisim`
--

LOCK TABLES `iletisim` WRITE;
/*!40000 ALTER TABLE `iletisim` DISABLE KEYS */;
INSERT INTO `iletisim` VALUES (1,'mustafa koca','mustafakoca220@gmail.com','kitap','güzel'),(2,'hasan hüseyin','hasanhuseyin@gmail.com','film','korku seansı'),(3,'DG','DFSF','SDFS','SDFS'),(5,'gdfg','sdf','sdf','sdfsd');
/*!40000 ALTER TABLE `iletisim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kayit`
--

DROP TABLE IF EXISTS `kayit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kayit` (
  `idkayit` int NOT NULL,
  `kayit_ad_soyad` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kayit_email` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kayit_tel` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kayit_sifre` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kayit_sifre_tekrar` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`idkayit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='kayit olup giris yapan kisiler';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kayit`
--

LOCK TABLES `kayit` WRITE;
/*!40000 ALTER TABLE `kayit` DISABLE KEYS */;
INSERT INTO `kayit` VALUES (1,'mustafa koca','mustafakoca220@gmail.com','05416514214','12345','12345'),(2,'hasan hüseyin','hasanhuseyin@gmail.com','05416587458','123456789','123456789'),(3,'asd','asd','sfd','sdfsf','sdfsf'),(4,'FS','DFS','SDF','sdfsf','sdfsf'),(5,'SGFSD','SDFS','SFSDF','1','1');
/*!40000 ALTER TABLE `kayit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08 10:11:04
