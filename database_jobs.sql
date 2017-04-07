-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: jobs
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

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
  `Kategori` varchar(120) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_pekerjaan`
--

LOCK TABLES `kategori_pekerjaan` WRITE;
/*!40000 ALTER TABLE `kategori_pekerjaan` DISABLE KEYS */;
INSERT INTO `kategori_pekerjaan` VALUES (1,'Web Developer'),(2,'Web Design'),(3,'Graphic Design'),(4,'App Design'),(5,'Legal & Government Relations');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lowongan`
--

LOCK TABLES `lowongan` WRITE;
/*!40000 ALTER TABLE `lowongan` DISABLE KEYS */;
INSERT INTO `lowongan` VALUES (1,'WEB PROGRAMER','Rp8,000,000 - 13,000,000 /bulan (negosiasi)','1','<ol>\r\n	<li>\r\n		Bachelor degree from Informatika system</li>\r\n	<li>\r\n		Min 2 Exsperiences in same possition</li>\r\n	<li>\r\n		Undestand base of software development Life Cycle</li>\r\n	<li>\r\n		Maintanace and troubleshooting application</li>\r\n	<li>\r\n		Develope aplication whose user needes</li>\r\n	<li>\r\n		Creative, inovative and comminicative</li>\r\n	<li>\r\n		Work Area : Jakarta &ndash; Bandung&nbsp;</li>\r\n</ol>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Perpengalaman dan mahir :</div>\r\n<div>\r\n	&nbsp;</div>\r\n<ol>\r\n	<li>\r\n		Database: SQL, MySQL, MS SQL Server, Oracle</li>\r\n	<li>\r\n		SSL security technologies</li>\r\n	<li>\r\n		PHP, Java, JavaScript (inc. libraries such as JQuery or CoffeeScript), ActionScript</li>\r\n	<li>\r\n		HTML5, XML, XHTML and CSS3</li>\r\n	<li>\r\n		Any appropriate MVC Framework (e.g. Codeigniter, Simiar)</li>\r\n	<li>\r\n		Responsive design</li>\r\n	<li>\r\n		API Services : JSON, XML , Restful</li>\r\n</ol>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Send CV &amp; Resume : email@email.com</div>\r\n','1','1','Full Time'),(2,'User Experience Researcher','-','3','<div>\r\n	As Corporate Counsel at Google, you work on the most exciting legal issues as disruptive technological innovations require creative and proactive legal guidance. You&#39;re part of a whip-smart group of in-house lawyers and the projects and cases you take on challenge you to think big and differently. You are collaborative -- ready to partner in initiatives that influence all aspects of the business and work with Googlers from all over the company. As an integrated part of the team, you proactively assess legal risks and advise on products that will not only move information into the 21st century, but move information law forward as well.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	You are an experienced lawyer who will work as part of the Southeast Asia legal team advising on a wide range of legal matters in Southeast Asia. You are a strong legal generalist, with a solid understanding of intellectual property and Internet law matters, a genuine interest in technology, and prior experience in managing advisory, regulatory and policy in Indonesia or Vietnam and other Southeast Asian countries. In this role, you&#39;ll advise the business on its activities in Southeast Asia, including key legal risks and strategies, and work closely with cross-functional colleagues to roll out new products and manage regulatory and policy.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	You are an outstanding lawyer who thinks creatively and strategically and you enjoy rolling up your sleeves to handle complex issues, but at the same time are eager to pitch in where needed to assist our rapidly growing businesses. You will have proven on-the-ground experience in working in the Southeast Asian emerging markets and have the ability to work both independently and collaboratively in a collegial, fast-paced team environment.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	20th century laws don&#39;t always solve 21st century problems, and Google Legal crafts innovative approaches for handling some of the toughest legal challenges of the information age. Whether you&#39;re a patent attorney, an intellectual property expert or an engineer headed to law school, Google Legal lets you take on unanswered legal quandaries and create new precedents. Our innovative services raise challenging questions that demand creative and practical answers. We provide those answers by working at the crossroads of the law and new technology, helping Google build innovative and important products for users around the world.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Responsibilities</div>\r\n<ul>\r\n	<li>\r\n		Conduct legal reviews of Google&rsquo;s product, marketing and business initiatives and work in consultation with Google&rsquo;s government affairs representatives to provide solution-oriented practical advice to facilitate launches and innovation in Southeast Asia.</li>\r\n	<li>\r\n		Advise senior management and cross-functional project teams in Asia Pacific and the USA with regard to potential legal risks in Southeast Asia; ensure compliance with applicable laws across all aspects of Google&rsquo;s operations in region.</li>\r\n	<li>\r\n		Respond promptly to a wide range of legal requests from Sales, Engineering, Product Management, Marketing, Finance and other functional groups.</li>\r\n	<li>\r\n		Work with external legal counsel on specific matters ranging from regulatory issues to expert advice requests. Communicate effectively with English speaking clients.</li>\r\n	<li>\r\n		Liaise with regulators and authorities in Southeast Asia, manage regulatory inquiries and autonomously run matters relating to Google&rsquo;s products and operations in Southeast Asia. Review proposed/draft legislation and work with our Policy team to advocate for improvements to the proposed/draft laws that will support an open online environment.</li>\r\n	<li>\r\n		Qualifications</li>\r\n</ul>\r\n<div>\r\n	Minimum qualifications:</div>\r\n<ul>\r\n	<li>\r\n		Bachelor&#39;s of Law, Juris Doctor, comparable law degree or equivalent practical experience.</li>\r\n	<li>\r\n		6 years of relevant advisory and regulatory experience within the intellectual property, media and technology related areas in Indonesia, Vietnam, or another Southeast Asian country.</li>\r\n	<li>\r\n		Qualification to practice law in Vietnam or Indonesia.</li>\r\n	<li>\r\n		Ability to speak and write in English fluently and idiomatically.</li>\r\n</ul>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Preferred qualifications:</div>\r\n<ul>\r\n	<li>\r\n		In-house experience with a multinational corporation.</li>\r\n	<li>\r\n		Excellent analytical, negotiation and contract drafting skills; exceptional interpersonal and leadership skills.</li>\r\n	<li>\r\n		Well organized and able to manage numerous projects simultaneously under deadline pressure.</li>\r\n	<li>\r\n		Flexibility and willingness to work on a broad variety of matters from the complex matters to the routine standard matters.</li>\r\n	<li>\r\n		Sense of humor and commitment to professionalism.</li>\r\n</ul>\r\n<div>\r\n	&nbsp;</div>\r\n','2','5','Full Time');
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
  `video_perusahaan` longblob NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `telp_perusahaan` varchar(20) NOT NULL,
  `email_perusahaan` varchar(35) NOT NULL,
  `tentang_perusahaan` text NOT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perusahaan`
--

LOCK TABLES `perusahaan` WRITE;
/*!40000 ALTER TABLE `perusahaan` DISABLE KEYS */;
INSERT INTO `perusahaan` VALUES (1,'QREATIF UNGGUL BERNIAGA, PT','07e05-24229x.png','ee25c-sismul-part2.mp4','Jauh','12345678','email@email.com','<p font-size:=\"\" helvetica=\"\" style=\"box-sizing: border-box; outline: none; margin: 0px 0px 12px; zoom: 1; position: relative; color: rgb(51, 51, 51); font-family: \" text-align:=\"\">\r\n	<span style=\"box-sizing: border-box; outline: none; font-size: 10pt; line-height: 14.2667px; font-family: Verdana, sans-serif;\"><span style=\"box-sizing: border-box; outline: none; font-weight: 700;\">PT Qreatif Unggul Berniaga &ldquo; QUBE &ldquo;&nbsp;</span>&nbsp;Perusahaan penyedia perangkat dan sistem Transaksi pembayaran non tunai menggunakan kartu ( card present transaction ).</span></p>\r\n<p font-size:=\"\" helvetica=\"\" style=\"box-sizing: border-box; outline: none; margin: 0px 0px 12px; zoom: 1; position: relative; color: rgb(51, 51, 51); font-family: \" text-align:=\"\">\r\n	<span style=\"box-sizing: border-box; outline: none; font-size: 10pt; line-height: 14.2667px; font-family: Verdana, sans-serif;\">QUBE mengembangkan aplikasi android untuk transaksi&nbsp; pembayaran dan bisnis yang di integrasikan dengan terminal android.</span></p>\r\n<p font-size:=\"\" helvetica=\"\" style=\"box-sizing: border-box; outline: none; margin: 0px 0px 12px; zoom: 1; position: relative; color: rgb(51, 51, 51); font-family: \" text-align:=\"\">\r\n	<span style=\"box-sizing: border-box; outline: none; font-size: 10pt; line-height: 14.2667px; font-family: Verdana, sans-serif;\">QUBE&nbsp;</span><span style=\"box-sizing: border-box; outline: none; font-size: 10pt; line-height: 14.2667px; font-family: Verdana, sans-serif;\">&nbsp;bekerja sama dengan institusi keuangan &nbsp;, perusahaan pemerintah dan swasta&nbsp; untuk menyediakan&nbsp; solusi lengkap transksi &nbsp;&nbsp;pembayaran yang kreatif&nbsp; , aman&nbsp; , dan&nbsp; berkualitas&nbsp; untuk berbagai sektor jenis usaha.</span></p>\r\n'),(2,'Google','227ae-google_2015_logo.svg.png','9f0f3-google-interns-first-week.mp4','Singapore','-','jobs@google.com','<div>\r\n	Google Search (atau Google Web Search) adalah mesin pencari web yang dimiliki Google Inc. Google Search adalah mesin pencari yang paling banyak digunakan di dunia maya. Sekian ratus juta kueri dimasukkan setiap harinya oleh para peselancar web melalui berbagai macam layanan yang disediakan.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Urutan hasil pencarian Google sebagian didasarkan pada peringkat prioritas bernama &quot;PageRank&quot;. Google Search memberikan banyak pilihan pencarian kustom dengan operator Boolean seperti: pengecualian (&quot;-xx&quot;), alternatif (&quot;xx OR yy&quot;), dan kartu liar (&quot;x * x&quot;).</div>\r\n<div>\r\n	Tujuan utama Google Search adalah mencari teks di dokumen-dokumen publik yang tersedia di server web (dalam format HTML, PDF, etc.), berbeda dengan data-data lain yang dapat dicari menggunakan layanan semacam Google Image Search. Google Search awalnya dikembangkan oleh Larry Page dan Sergey Brin pada tahun 1997. Google Search menyediakan sedikitnya 22 fitur istimewa selain pencarian kata, yaitu sinonim, ramalan cuaca, zona waktu, pergerakan saham, peta, data gempa, jadwal bioskop, bandar udara, daftar rumah, dan skor olahraga. Ada pula fitur istimewa untuk penanggalan, termasuk rentang angka (70..73), harga, suhu, konversi mata uang (&quot;10.5 cm in inches&quot;), perhitungan (&quot;3*4+sqrt(6)-pi/2&quot;), pelacakan paket, paten, kode wilayah, dan penerjemahan bahasa. Pada bulan Juni 2011, Google meluncurkan &quot;Google Voice Search&quot; dan &quot;Search by Image&quot; yang memungkinkan pengguna mencari sesuatu dengan perintah suara dan gambar. Bulan Mei 2012, Google memperkenalkan fitur pencarian semantik Knowledge Graph untuk kawasan Amerika Serikat.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Frekuensi pemakaian sejumlah kueri pencarian telah mencapai tingkatan volume tertentu yang menunjukkan tren ekonomi, sosial, dan kesehatan yang lebih luas. Data mengenai frekuensi pemakaian kueri pencarian di Google (tersedia melalui Google Adwords, Google Trends, dan Google Insights for Search) telah dipakai untuk mengaitkan wabah flu dengan tingkat pengangguran dan menyampaikan informasi lebih cepat daripada metode reportase tradisional dan survei pemerintah.</div>\r\n<div>\r\n	Pesaing utama Google adalah Baidu dan Soso.com di Cina dan Korea Selatan; Naver.com di Korea Selatan; Yandex di Rusia; Seznam.cz di Republik Ceko; Yahoo! di Jepang dan Taiwan. Pesaing potensial selanjutnya adalah Bing.</div>\r\n');
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

-- Dump completed on 2017-04-07 12:53:26
