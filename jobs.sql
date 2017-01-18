-- MySQL dump 10.16  Distrib 10.1.13-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: jobs
-- ------------------------------------------------------
-- Server version	10.1.13-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(1) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','admin@localhost');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_pekerjaan`
--

DROP TABLE IF EXISTS `kategori_pekerjaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_pekerjaan` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `Kategori` varchar(20) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_pekerjaan`
--

LOCK TABLES `kategori_pekerjaan` WRITE;
/*!40000 ALTER TABLE `kategori_pekerjaan` DISABLE KEYS */;
INSERT INTO `kategori_pekerjaan` VALUES (1,'Web Developer'),(2,'Web Design'),(3,'Graphic Design'),(4,'App Design');
/*!40000 ALTER TABLE `kategori_pekerjaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lokasi`
--

DROP TABLE IF EXISTS `lokasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL AUTO_INCREMENT,
  `kota` varchar(35) NOT NULL,
  `provinsi` varchar(35) NOT NULL,
  PRIMARY KEY (`id_lokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokasi`
--

LOCK TABLES `lokasi` WRITE;
/*!40000 ALTER TABLE `lokasi` DISABLE KEYS */;
INSERT INTO `lokasi` VALUES (1,'Bandung','Jawa Barat'),(2,'Bogor','Jawa Barat'),(3,'Jakarta Pusat','DKI Jakarta'),(4,'Jakarta Selatan','DKI Jakarta');
/*!40000 ALTER TABLE `lokasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lowongan`
--

DROP TABLE IF EXISTS `lowongan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lowongan` (
  `id_lowongan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lowongan` varchar(35) NOT NULL,
  `gaji` varchar(60) NOT NULL,
  `lokasi_penempatan` varchar(35) NOT NULL,
  `detail_info` text NOT NULL,
  `perusahaan` varchar(11) NOT NULL,
  `kategori_pekerjaan` varchar(20) NOT NULL,
  `waktu` varchar(10) NOT NULL,
  PRIMARY KEY (`id_lowongan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lowongan`
--

LOCK TABLES `lowongan` WRITE;
/*!40000 ALTER TABLE `lowongan` DISABLE KEYS */;
INSERT INTO `lowongan` VALUES (1,'WEB PROGRAMER','Rp8,000,000 - 13,000,000 /bulan (negosiasi)','1','<ol>\r\n	<li>\r\n		Bachelor degree from Informatika system</li>\r\n	<li>\r\n		Min 2 Exsperiences in same possition</li>\r\n	<li>\r\n		Undestand base of software development Life Cycle</li>\r\n	<li>\r\n		Maintanace and troubleshooting application</li>\r\n	<li>\r\n		Develope aplication whose user needes</li>\r\n	<li>\r\n		Creative, inovative and comminicative</li>\r\n	<li>\r\n		Work Area : Jakarta &ndash; Bandung&nbsp;</li>\r\n</ol>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Perpengalaman dan mahir :</div>\r\n<div>\r\n	&nbsp;</div>\r\n<ol>\r\n	<li>\r\n		Database: SQL, MySQL, MS SQL Server, Oracle</li>\r\n	<li>\r\n		SSL security technologies</li>\r\n	<li>\r\n		PHP, Java, JavaScript (inc. libraries such as JQuery or CoffeeScript), ActionScript</li>\r\n	<li>\r\n		HTML5, XML, XHTML and CSS3</li>\r\n	<li>\r\n		Any appropriate MVC Framework (e.g. Codeigniter, Simiar)</li>\r\n	<li>\r\n		Responsive design</li>\r\n	<li>\r\n		API Services : JSON, XML , Restful</li>\r\n</ol>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Send CV &amp; Resume : email@email.com</div>\r\n','1','1','Full Time');
/*!40000 ALTER TABLE `lowongan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perusahaan`
--

DROP TABLE IF EXISTS `perusahaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perusahaan` (
  `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(50) NOT NULL,
  `logo_perusahaan` blob NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `telp_perusahaan` varchar(20) NOT NULL,
  `email_perusahaan` varchar(35) NOT NULL,
  `tentang_perusahaan` text NOT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perusahaan`
--

LOCK TABLES `perusahaan` WRITE;
/*!40000 ALTER TABLE `perusahaan` DISABLE KEYS */;
INSERT INTO `perusahaan` VALUES (1,'QREATIF UNGGUL BERNIAGA, PT','07e05-24229x.png','Jauh','12345678','email@email.com','<p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 12px; zoom: 1; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\n	<span style=\"box-sizing: border-box; outline: none; font-size: 10pt; line-height: 14.2667px; font-family: Verdana, sans-serif;\"><span style=\"box-sizing: border-box; outline: none; font-weight: 700;\">PT Qreatif Unggul Berniaga &ldquo; QUBE &ldquo;&nbsp;</span>&nbsp;Perusahaan penyedia perangkat dan sistem Transaksi pembayaran non tunai menggunakan kartu ( card present transaction ).</span></p>\r\n<p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 12px; zoom: 1; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\n	<span style=\"box-sizing: border-box; outline: none; font-size: 10pt; line-height: 14.2667px; font-family: Verdana, sans-serif;\">QUBE mengembangkan aplikasi android untuk transaksi&nbsp; pembayaran dan bisnis yang di integrasikan dengan terminal android.</span></p>\r\n<p style=\"box-sizing: border-box; outline: none; margin: 0px 0px 12px; zoom: 1; position: relative; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\n	<span style=\"box-sizing: border-box; outline: none; font-size: 10pt; line-height: 14.2667px; font-family: Verdana, sans-serif;\">QUBE&nbsp;</span><span style=\"box-sizing: border-box; outline: none; font-size: 10pt; line-height: 14.2667px; font-family: Verdana, sans-serif;\">&nbsp;bekerja sama dengan institusi keuangan &nbsp;, perusahaan pemerintah dan swasta&nbsp; untuk menyediakan&nbsp; solusi lengkap transksi &nbsp;&nbsp;pembayaran yang kreatif&nbsp; , aman&nbsp; , dan&nbsp; berkualitas&nbsp; untuk berbagai sektor jenis usaha.</span></p>\r\n');
/*!40000 ALTER TABLE `perusahaan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-16  5:31:35
