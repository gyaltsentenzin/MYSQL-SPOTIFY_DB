-- MariaDB dump 10.19  Distrib 10.5.9-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ttenzing
-- ------------------------------------------------------
-- Server version	10.5.9-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `accountId` int(11) NOT NULL,
  `account_email` varchar(60) NOT NULL,
  `profile_picture` varchar(60) DEFAULT NULL,
  `payment_info` varchar(20) DEFAULT NULL,
  `display_name` varchar(60) NOT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (100,'tashi@gmail.com','tashi.png','1098409134','Tashi'),(101,'johnny@gmail.com','johnny.png','94138081','Elton John'),(102,'elonmusk@twitter.com','elon.png','14890341','Elon Musk'),(103,'timlang@macalester.edu','tim.png','431098401','Timothy Lang'),(105,'gyalpo@macalester.edu','gyalpo.png','8408132094','Nyima Gyalpo'),(106,'jared@gmail.com','jared.png','491038410','Jared James'),(107,'daniel@gmail.com','daniel.png','30491890','Daniel Johnson'),(108,'jamescarter@gmail.com','james.png','14098331','James Carter'),(109,'obama@president.gov','obama.png','30948103134','Barack Obama'),(110,'abigail@gmail.com','abigail.png','122239032','Abigail'),(111,'vy@gmail.com','vy.png','3222290032','Vy'),(112,'tenzin@gmail.com','tenzin.png','122299032','Tenzin'),(113,'jake@gmail.com','jake.png','12098402352','Jake'),(114,'george@gmail.com','george.png','102003903','George'),(115,'EdSheeran@gmail.com','ed.png','102003903','Ed Sheeran'),(116,'Maroon5@gmail.com','Maroon5.png','102003903','Maroon 5'),(117,'ZaraLarsson@gmail.com','ZaraLarsson.png','102033903','Zara Larsson'),(118,'Chainsmokers@gmail.com','TheChainsmokers.png','10423083903','The Chainsmokers'),(119,'LewisCapaldi@gmail.com','LewisCapaldi.png','10203230833','Lewis Capaldi'),(120,'KatyPerry@gmail.com','KatyPerry.png','1023420803','Katy Perry'),(121,'SamFeldt@gmail.com','SamFeldt.png','11233083903','Sam Feldt'),(122,'Avicii@gmail.com','Avicii.png','102023483903','Avicii'),(123,'ShawnMendes@gmail.com','ShawnMendes.png','23342342343','Shawn Mendes'),(124,'EllieGoulding@gmail.com','EllieGoulding.png','1423433903','Ellie Goulding'),(125,'LoudLuxury@gmail.com','LoudLuxury.png','134314234','Loud Luxury'),(126,'MartinGarrix@gmail.com','MartinGarrix.png','1341341','Martin Garrix'),(127,'AJMitchell@gmail.com','AJMitchell.png','102030843124','AJ Mitchell'),(128,'DavidGuetta@gmail.com','DavidGuetta.png','134143112','David Guetta'),(129,'Marshmello@gmail.com','Marshmello.png','134143112','Marshmello'),(130,'AvaMax@gmail.com','AvaMax.png','134143112','Ava Maxa'),(131,'NikkiVianna@gmail.com','NikkiVianna.png','134143112','Nikki Vianna'),(132,'CharliePuth@gmail.com','CharliePuth.png','134143112','Charlie Puth'),(133,'Starley@gmail.com','Starley.png','134143112','Starley'),(134,'JamesArthur@gmail.com','JamesArthur.png','134143112','James Arthur'),(135,'MAX@gmail.com','MAX.png','134143112','MAX'),(136,'ILLENIUM@gmail.com','ILLENIUM.png','134143112','ILLENIUM'),(137,'CharlBazzivs@gmail.com','CharliePuth.png','134143112','Bazzi vs.'),(138,'Kygo@gmail.com','Kygo.png','134143112','Kygo'),(139,'ArminvanBuuren@gmail.com','ArminvanBuuren.png','134143112','Armin van Buuren'),(140,'BillieEilish@gmail.com','BillieEilish.png','134143112','Billie Eilish'),(141,'SeanPaul@gmail.com','SeanPaul.png','134143112','Sean Paul'),(142,'Sia@gmail.com','Sia.png','134143112','Sia'),(143,'rogan@email.com','rogan.jpg','10849843928','Joe Rogan'),(144,'m_p@email.com','m_p.png','102940384013','Michael Hobbes & Peter Shamshiri'),(145,'fox@fox.com','fox.png','2840324809','Fox Audio Network'),(146,'dearmedia@media.com','DM.png','208092384023','Dear Media'),(147,'ps@gmail.com','P20.png','99093840','The Psychology of your 20â€™s'),(148,'smedia@gmai.com','SM.png','20349190581','Scicomm Media'),(149,'contact@nyt.com','Nyt.png','239148102','The New York Times'),(150,'lex@fridman.com','lex.png','1948109041','Lex Fridman'),(151,'sony@son.com','sony.png','19841092384','EmRata / Sony Music Entertainment / Somethinâ€™ Else'),(152,'wave@sport.com','wave.png','9324810941','Wave Sports + Entertainment'),(153,'audiochuck@gmail.com','audiochuck.png','914091384109','audiochuck'),(154,'YMH@gmail.com','ymh.png','1302480193','YMH Studios'),(155,'gimlet@Gimlet.com','Gimlet.png','4091384091','Gimlet'),(156,'ballen@ballen.com','ballen.png','1984103341',' \'MrBallen\''),(157,'alex@cooper.com','Alex.png','810950095','Alex Cooper'),(158,'theo@von.com','Theo.png',' \'309480941\'','Theo Von'),(159,' \'npr@npr.com\'','npr.png','39184019320','NPR'),(160,'wood@elf.com','wood.png','3129840109','Wood Elf Media'),(161,'morbid@wondery.com','morbid.png','48931084103','Morbid Network | Wondery'),(162,' \'aoki@contact.com\'','aoki.png','109384111','Steve Aoki'),(163,'r3hab@contact.com','r3hab.png','10903284','R3HAB'),(164,'samsmith@contact.com','samsmith.png','98327432','Sam Smith'),(165,'avamax@contact.com','ava.png','9841093','Ava Max'),(166,'xcx@contact.com','xcx.png','79042502','Charli XCX'),(167,'jb@contact.com','jb.png','1413153',' \'Justin Bieber\'');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievedSkill`
--

DROP TABLE IF EXISTS `achievedSkill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievedSkill` (
  `skillcode` varchar(3) NOT NULL,
  PRIMARY KEY (`skillcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievedSkill`
--

LOCK TABLES `achievedSkill` WRITE;
/*!40000 ALTER TABLE `achievedSkill` DISABLE KEYS */;
INSERT INTO `achievedSkill` VALUES ('A'),('B2'),('D3'),('E'),('PK'),('THR'),('TR4'),('Z');
/*!40000 ALTER TABLE `achievedSkill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievement_by_creatures`
--

DROP TABLE IF EXISTS `achievement_by_creatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievement_by_creatures` (
  `achId` int(11) NOT NULL DEFAULT 0,
  `creatureId` int(11) DEFAULT NULL,
  `skillCode` varchar(3) DEFAULT NULL,
  `proficiency` int(11) DEFAULT NULL,
  `achDate` text DEFAULT NULL,
  `test_townId` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement_by_creatures`
--

LOCK TABLES `achievement_by_creatures` WRITE;
/*!40000 ALTER TABLE `achievement_by_creatures` DISABLE KEYS */;
INSERT INTO `achievement_by_creatures` VALUES (1,1,'A',3,'2023-03-21 16:36:49','a'),(2,1,'E',3,'2017-09-15 15:35','d'),(3,1,'A',3,'2018-07-14 14:00','a'),(4,1,'E',3,'2023-03-21 16:36:49','d'),(5,5,'Z',6,'2016-04-12 15:42:30','t'),(6,3,'Z',4,'2018-07-15','be'),(7,3,'Z',4,'2018-07-15','be'),(8,11,'PK',10,'1998-08-15','le'),(9,12,'PK',10,'2016-05-24','le'),(10,13,'PK',10,'2012-08-06','le'),(11,8,'PK',1,NULL,'t'),(12,9,'THR',10,'2018-08-12 14:30','mv'),(13,10,'THR',10,'2018-08-12 14:30','mv'),(14,7,'B2',19,'2017-01-10 16:30','d'),(15,9,'B2',19,'2017-01-10 16:30','d'),(16,4,'TR4',85,'2012-07-30','le'),(17,5,'TR4',85,'2012-07-30','le'),(18,2,'TR4',85,'2012-07-30','le'),(19,1,'TR4',85,'2012-07-30','le'),(20,9,'D3',8,'2023-03-21 16:36:49','sw'),(21,13,'D3',8,'2023-03-21 16:36:49','sw'),(22,7,'D3',8,'2023-03-21 16:36:49','sw');
/*!40000 ALTER TABLE `achievement_by_creatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievementcreaturejoin`
--

DROP TABLE IF EXISTS `achievementcreaturejoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievementcreaturejoin` (
  `achId` int(11) NOT NULL DEFAULT 0,
  `creatureId` int(11) DEFAULT NULL,
  `skillCode` varchar(3) DEFAULT NULL,
  `proficiency` int(11) DEFAULT NULL,
  `achDate` text DEFAULT NULL,
  `test_townId` varchar(3) DEFAULT NULL,
  `creatureName` varchar(20) DEFAULT NULL,
  `creatureType` varchar(20) DEFAULT NULL,
  `reside_townId` varchar(3) DEFAULT NULL,
  `idol_creatureId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievementcreaturejoin`
--

LOCK TABLES `achievementcreaturejoin` WRITE;
/*!40000 ALTER TABLE `achievementcreaturejoin` DISABLE KEYS */;
INSERT INTO `achievementcreaturejoin` VALUES (1,1,'A',3,'2023-03-21 16:36:49','a','Bannon','person','p',10),(2,1,'E',3,'2017-09-15 15:35','d','Bannon','person','p',10),(3,1,'A',3,'2018-07-14 14:00','a','Bannon','person','p',10),(4,1,'E',3,'2023-03-21 16:36:49','d','Bannon','person','p',10),(5,5,'Z',6,'2016-04-12 15:42:30','t','Mieska','person','d',10),(6,3,'Z',4,'2018-07-15','be','Neff','person','be',NULL),(7,3,'Z',4,'2018-07-15','be','Neff','person','be',NULL),(8,11,'PK',10,'1998-08-15','le','David Beckham','person','le',9),(9,12,'PK',10,'2016-05-24','le','Harry Kane','person','le',11),(10,13,'PK',10,'2012-08-06','le','Megan Rapinoe','person','sw',10),(11,8,'PK',1,NULL,'t','Godzilla','monster','t',6),(12,9,'THR',10,'2018-08-12 14:30','mv','Thor','superhero','as',NULL),(13,10,'THR',10,'2018-08-12 14:30','mv','Elastigirl','superhero','mv',13),(14,7,'B2',19,'2017-01-10 16:30','d','Kermit','frog','g',8),(15,9,'B2',19,'2017-01-10 16:30','d','Thor','superhero','as',NULL),(16,4,'TR4',85,'2012-07-30','le','Neff','person','b',3),(17,5,'TR4',85,'2012-07-30','le','Mieska','person','d',10),(18,2,'TR4',85,'2012-07-30','le','Myers','person','a',9),(19,1,'TR4',85,'2012-07-30','le','Bannon','person','p',10),(20,9,'D3',8,'2023-03-21 16:36:49','sw','Thor','superhero','as',NULL),(21,13,'D3',8,'2023-03-21 16:36:49','sw','Megan Rapinoe','person','sw',10),(22,7,'D3',8,'2023-03-21 16:36:49','sw','Kermit','frog','g',8);
/*!40000 ALTER TABLE `achievementcreaturejoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievementsuperherocreaturejoin`
--

DROP TABLE IF EXISTS `achievementsuperherocreaturejoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievementsuperherocreaturejoin` (
  `achId` int(11) NOT NULL DEFAULT 0,
  `creatureId` int(11) DEFAULT NULL,
  `skillCode` varchar(3) DEFAULT NULL,
  `proficiency` int(11) DEFAULT NULL,
  `achDate` text DEFAULT NULL,
  `test_townId` varchar(3) DEFAULT NULL,
  `creatureName` varchar(20) DEFAULT NULL,
  `creatureType` varchar(20) DEFAULT NULL,
  `reside_townId` varchar(3) DEFAULT NULL,
  `idol_creatureId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievementsuperherocreaturejoin`
--

LOCK TABLES `achievementsuperherocreaturejoin` WRITE;
/*!40000 ALTER TABLE `achievementsuperherocreaturejoin` DISABLE KEYS */;
INSERT INTO `achievementsuperherocreaturejoin` VALUES (12,9,'THR',10,'2018-08-12 14:30','mv','Thor','superhero','as',NULL),(13,10,'THR',10,'2018-08-12 14:30','mv','Elastigirl','superhero','mv',13),(15,9,'B2',19,'2017-01-10 16:30','d','Thor','superhero','as',NULL),(20,9,'D3',8,'2023-03-21 16:36:49','sw','Thor','superhero','as',NULL);
/*!40000 ALTER TABLE `achievementsuperherocreaturejoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievementtownjoin`
--

DROP TABLE IF EXISTS `achievementtownjoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievementtownjoin` (
  `achId` int(11) NOT NULL DEFAULT 0,
  `creatureId` int(11) DEFAULT NULL,
  `skillCode` varchar(3) DEFAULT NULL,
  `proficiency` int(11) DEFAULT NULL,
  `achDate` text DEFAULT NULL,
  `test_townId` varchar(3) DEFAULT NULL,
  `townName` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievementtownjoin`
--

LOCK TABLES `achievementtownjoin` WRITE;
/*!40000 ALTER TABLE `achievementtownjoin` DISABLE KEYS */;
INSERT INTO `achievementtownjoin` VALUES (1,1,'A',3,'2023-03-21 16:36:49','a','Anoka','MN','United States'),(3,1,'A',3,'2018-07-14 14:00','a','Anoka','MN','United States'),(6,3,'Z',4,'2018-07-15','be','Blue Earth','MN','United States'),(7,3,'Z',4,'2018-07-15','be','Blue Earth','MN','United States'),(2,1,'E',3,'2017-09-15 15:35','d','Duluth','MN','United States'),(4,1,'E',3,'2023-03-21 16:36:49','d','Duluth','MN','United States'),(14,7,'B2',19,'2017-01-10 16:30','d','Duluth','MN','United States'),(15,9,'B2',19,'2017-01-10 16:30','d','Duluth','MN','United States'),(8,11,'PK',10,'1998-08-15','le','London','England','United Kingdom'),(9,12,'PK',10,'2016-05-24','le','London','England','United Kingdom'),(10,13,'PK',10,'2012-08-06','le','London','England','United Kingdom'),(16,4,'TR4',85,'2012-07-30','le','London','England','United Kingdom'),(17,5,'TR4',85,'2012-07-30','le','London','England','United Kingdom'),(18,2,'TR4',85,'2012-07-30','le','London','England','United Kingdom'),(19,1,'TR4',85,'2012-07-30','le','London','England','United Kingdom'),(12,9,'THR',10,'2018-08-12 14:30','mv','Metroville',NULL,NULL),(13,10,'THR',10,'2018-08-12 14:30','mv','Metroville',NULL,NULL),(20,9,'D3',8,'2023-03-21 16:36:49','sw','Seattle','Washington','United States'),(21,13,'D3',8,'2023-03-21 16:36:49','sw','Seattle','Washington','United States'),(22,7,'D3',8,'2023-03-21 16:36:49','sw','Seattle','Washington','United States'),(5,5,'Z',6,'2016-04-12 15:42:30','t','Tokyo','Kanto','Japan'),(11,8,'PK',1,NULL,'t','Tokyo','Kanto','Japan');
/*!40000 ALTER TABLE `achievementtownjoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achieving_creatures_with_counts`
--

DROP TABLE IF EXISTS `achieving_creatures_with_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achieving_creatures_with_counts` (
  `creatureId` int(11) DEFAULT NULL,
  `skill_count` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achieving_creatures_with_counts`
--

LOCK TABLES `achieving_creatures_with_counts` WRITE;
/*!40000 ALTER TABLE `achieving_creatures_with_counts` DISABLE KEYS */;
INSERT INTO `achieving_creatures_with_counts` VALUES (1,3),(2,1),(3,1),(4,1),(5,2),(7,2),(8,1),(9,3),(10,1),(11,1),(12,1),(13,2);
/*!40000 ALTER TABLE `achieving_creatures_with_counts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisement` (
  `advertisementId` int(11) NOT NULL,
  `ad_type` varchar(30) DEFAULT NULL,
  `promoted_item` varchar(60) DEFAULT NULL,
  `company_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`advertisementId`),
  KEY `company_name` (`company_name`),
  CONSTRAINT `advertisement_ibfk_1` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
INSERT INTO `advertisement` VALUES (1,'sponsorship','football shoes','Nike'),(2,'ad','track suit','Adidas'),(3,'ad','subscription','The New York Times'),(4,'sponsorship','footall shoes','Adidas'),(5,'ad','swimsuits','Nike'),(6,'ad','football shoes','Nike');
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `albumId` int(11) NOT NULL,
  `album_name` varchar(60) NOT NULL,
  `album_art` varchar(60) DEFAULT NULL,
  `artist_accountId` int(11) DEFAULT NULL,
  `date_type` varchar(30) NOT NULL,
  `correspondent_date` date NOT NULL,
  PRIMARY KEY (`albumId`),
  KEY `artist_accountId` (`artist_accountId`),
  KEY `date_type` (`date_type`,`correspondent_date`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artist_accountId`) REFERENCES `artist` (`artist_accountId`),
  CONSTRAINT `album_ibfk_2` FOREIGN KEY (`date_type`, `correspondent_date`) REFERENCES `date_relation` (`date_type`, `correspondent_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_interaction`
--

DROP TABLE IF EXISTS `album_interaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_interaction` (
  `user_accountId` int(11) NOT NULL,
  `albumId` int(11) NOT NULL,
  `album_saved_status` tinyint(1) DEFAULT NULL,
  `date_type` varchar(30) NOT NULL,
  `correspondent_date` date NOT NULL,
  PRIMARY KEY (`user_accountId`,`albumId`),
  KEY `albumId` (`albumId`),
  KEY `date_type` (`date_type`,`correspondent_date`),
  CONSTRAINT `album_interaction_ibfk_1` FOREIGN KEY (`user_accountId`) REFERENCES `user` (`user_accountId`),
  CONSTRAINT `album_interaction_ibfk_2` FOREIGN KEY (`albumId`) REFERENCES `album` (`albumId`),
  CONSTRAINT `album_interaction_ibfk_3` FOREIGN KEY (`date_type`, `correspondent_date`) REFERENCES `date_relation` (`date_type`, `correspondent_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_interaction`
--

LOCK TABLES `album_interaction` WRITE;
/*!40000 ALTER TABLE `album_interaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `album_interaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `artist_accountId` int(11) NOT NULL,
  `verified_status` tinyint(1) DEFAULT NULL,
  `company_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`artist_accountId`),
  KEY `company_name` (`company_name`),
  CONSTRAINT `artist_ibfk_1` FOREIGN KEY (`artist_accountId`) REFERENCES `account` (`accountId`),
  CONSTRAINT `artist_ibfk_2` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (100,0,'Universal Music'),(101,1,'Universal Music'),(102,1,'Virgin Music'),(103,1,'Capitol Record'),(115,1,'Universal Music'),(116,1,'Universal Music'),(117,1,'Capitol Record'),(122,1,'Capitol Record'),(123,1,'Universal Music'),(124,1,'Universal Music'),(125,1,'Universal Music'),(128,1,'Universal Music'),(129,1,'Capitol Record'),(130,1,'Capitol Record'),(131,1,'Capitol Record'),(132,1,'Capitol Record'),(133,1,'Virgin Music'),(134,1,'Virgin Music'),(135,1,'Virgin Music'),(136,1,'Virgin Music'),(137,1,'Universal Music'),(138,1,'Universal Music'),(139,1,'Universal Music'),(140,1,'Universal Music'),(141,1,'Virgin Music'),(142,1,'Virgin Music'),(162,1,'Universal Music'),(163,1,'Capitol Record'),(164,1,'Virgin Music'),(165,1,'Universal Music'),(166,1,'Capitol Record'),(167,1,'Capitol Record');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_association`
--

DROP TABLE IF EXISTS `artist_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist_association` (
  `artist_role` varchar(30) NOT NULL,
  `artist_accountId` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  PRIMARY KEY (`artist_role`,`artist_accountId`,`songId`),
  KEY `artist_accountId` (`artist_accountId`),
  KEY `songId` (`songId`),
  CONSTRAINT `artist_association_ibfk_1` FOREIGN KEY (`artist_accountId`) REFERENCES `artist` (`artist_accountId`),
  CONSTRAINT `artist_association_ibfk_2` FOREIGN KEY (`songId`) REFERENCES `song` (`songId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_association`
--

LOCK TABLES `artist_association` WRITE;
/*!40000 ALTER TABLE `artist_association` DISABLE KEYS */;
INSERT INTO `artist_association` VALUES ('featured singer',167,66),('Lyricist',100,60),('Producer',102,66),('singer',115,60),('singer',115,66),('singer',115,67),('singer',115,70),('singer',116,70),('singer',117,63),('singer',117,66),('singer',122,58),('singer',122,67),('singer',122,68),('singer',123,68),('singer',124,67),('singer',125,8),('singer',128,65),('singer',128,69),('singer',129,58),('singer',129,59),('singer',131,60),('singer',132,56),('singer',133,56),('singer',134,60),('singer',135,55),('singer',136,64),('singer',137,65),('singer',138,67),('singer',139,68),('singer',140,69),('singer',141,70),('singer',141,72),('singer',142,71),('singer',162,35),('singer',163,64),('singer',164,62),('singer',165,30),('singer',165,62),('singer',166,66),('Singer/Songwriter',100,15),('Singer/Songwriter',101,15),('Sound mixer',102,15);
/*!40000 ALTER TABLE `artist_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspiredSkill`
--

DROP TABLE IF EXISTS `aspiredSkill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspiredSkill` (
  `skillcode` varchar(3) NOT NULL,
  PRIMARY KEY (`skillcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspiredSkill`
--

LOCK TABLES `aspiredSkill` WRITE;
/*!40000 ALTER TABLE `aspiredSkill` DISABLE KEYS */;
INSERT INTO `aspiredSkill` VALUES ('A'),('B2'),('C2'),('D3'),('E'),('O'),('PK'),('TR4'),('Z');
/*!40000 ALTER TABLE `aspiredSkill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audioLength`
--

DROP TABLE IF EXISTS `audioLength`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audioLength` (
  `duration_of_time` time NOT NULL,
  PRIMARY KEY (`duration_of_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audioLength`
--

LOCK TABLES `audioLength` WRITE;
/*!40000 ALTER TABLE `audioLength` DISABLE KEYS */;
INSERT INTO `audioLength` VALUES ('01:40:00'),('02:01:45'),('03:32:00'),('03:50:00'),('03:54:12'),('04:42:00'),('20:00:00'),('25:00:00'),('27:32:00'),('30:00:00'),('37:58:00'),('40:00:00'),('40:32:00'),('45:12:00');
/*!40000 ALTER TABLE `audioLength` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `averageticketstatus`
--

DROP TABLE IF EXISTS `averageticketstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `averageticketstatus` (
  `section_id` varchar(32) NOT NULL,
  `sold_unsold` decimal(7,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `averageticketstatus`
--

LOCK TABLES `averageticketstatus` WRITE;
/*!40000 ALTER TABLE `averageticketstatus` DISABLE KEYS */;
INSERT INTO `averageticketstatus` VALUES ('cs 120',0.5000),('cs 240',0.6667),('cs 302',0.4286);
/*!40000 ALTER TABLE `averageticketstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avg_prof_creature`
--

DROP TABLE IF EXISTS `avg_prof_creature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avg_prof_creature` (
  `creatureId` int(11) DEFAULT NULL,
  `average` decimal(14,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avg_prof_creature`
--

LOCK TABLES `avg_prof_creature` WRITE;
/*!40000 ALTER TABLE `avg_prof_creature` DISABLE KEYS */;
INSERT INTO `avg_prof_creature` VALUES (1,19.4000),(2,85.0000),(3,4.0000),(4,85.0000),(5,45.5000),(7,13.5000),(8,1.0000),(9,12.3333),(10,10.0000),(11,10.0000),(12,10.0000),(13,9.0000);
/*!40000 ALTER TABLE `avg_prof_creature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avg_prof_creature_greater_ten`
--

DROP TABLE IF EXISTS `avg_prof_creature_greater_ten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avg_prof_creature_greater_ten` (
  `creatureId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avg_prof_creature_greater_ten`
--

LOCK TABLES `avg_prof_creature_greater_ten` WRITE;
/*!40000 ALTER TABLE `avg_prof_creature_greater_ten` DISABLE KEYS */;
INSERT INTO `avg_prof_creature_greater_ten` VALUES (1),(2),(4),(5),(7),(9);
/*!40000 ALTER TABLE `avg_prof_creature_greater_ten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_agency`
--

DROP TABLE IF EXISTS `booking_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_agency` (
  `booking_agency_name` varchar(32) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `contact_person` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`booking_agency_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_agency`
--

LOCK TABLES `booking_agency` WRITE;
/*!40000 ALTER TABLE `booking_agency` DISABLE KEYS */;
INSERT INTO `booking_agency` VALUES ('Diamond Grove','612-624-0004','George Washington Carver'),('Ellicott Mills','612-624-0003','Benjamin Banneker'),('Harvard','612-624-0002','Patricia Selinger'),('IBM','612-624-0000','Edgar Codd'),('Lelia','612-624-0001','Madame C.J. Walker'),('Monrovia, Liberia','612-624-0007','Ellen Johnson Sirleaf'),('University of Denver','612-624-0005','Condoleezza Rice'),('Wellesley College','612-624-0006','Madeleine Albright');
/*!40000 ALTER TABLE `booking_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_sold_join`
--

DROP TABLE IF EXISTS `car_sold_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_sold_join` (
  `car_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `selling_price` decimal(13,4) NOT NULL,
  `date_sold` date NOT NULL,
  `buying_price` decimal(13,4) NOT NULL,
  `mileage` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `category_code` int(11) DEFAULT NULL,
  `manu_fullname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_sold_join`
--

LOCK TABLES `car_sold_join` WRITE;
/*!40000 ALTER TABLE `car_sold_join` DISABLE KEYS */;
INSERT INTO `car_sold_join` VALUES (11,1,20000.0000,'2021-05-04',20000.0000,10000,2020,1,'Tesla Motor'),(12,1,19000.0000,'2020-04-04',18000.0000,15000,2019,2,'Ford Motor'),(13,2,20000.0000,'2022-05-08',25000.0000,15000,2022,2,'General Motor'),(14,3,20000.0000,'2019-04-04',30000.0000,12000,2020,3,'Tesla Motor'),(15,3,20000.0000,'2018-12-08',9000.0000,9000,2020,3,'Toyota'),(16,4,51000.0000,'2022-11-04',50000.0000,100001,2023,1,'Tesla Motor');
/*!40000 ALTER TABLE `car_sold_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_name` varchar(100) NOT NULL,
  `company_hq_address` varchar(100) DEFAULT NULL,
  `company_phone_number` varchar(20) DEFAULT NULL,
  `company_email` varchar(60) NOT NULL,
  PRIMARY KEY (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('Adidas','19 St Bavaria Germany 13248','3200090','contact@adidas.com'),('Capitol Record','496 Misty Shores Suite 944 33687 New Kendra Illinois United States','8220182','contact@universalmusic.com'),('Nike','1699 St Seattle WA 51903','709494','nikecontact@nike.com'),('The New York Times','620 8th Ave New York NY 10018','893140','contact@nyt.com'),('Universal Music','5 St Los Angeles CA 13248','7992294','contact@universalmusic.com'),('Virgin Music','58038 Lacey View Jaquelinshire Mississippi Great Britain','209302','contact@adidas.com');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributor_association`
--

DROP TABLE IF EXISTS `contributor_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contributor_association` (
  `contributor_employee_id` int(11) NOT NULL,
  `contributor_role` varchar(30) NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `songId` int(11) NOT NULL,
  PRIMARY KEY (`contributor_employee_id`,`contributor_role`,`company_name`,`songId`),
  KEY `company_name` (`company_name`),
  KEY `songId` (`songId`),
  CONSTRAINT `contributor_association_ibfk_1` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`),
  CONSTRAINT `contributor_association_ibfk_2` FOREIGN KEY (`songId`) REFERENCES `song` (`songId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributor_association`
--

LOCK TABLES `contributor_association` WRITE;
/*!40000 ALTER TABLE `contributor_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `contributor_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_achCount`
--

DROP TABLE IF EXISTS `creature_achCount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_achCount` (
  `creatureId` int(11) NOT NULL,
  `creatureName` varchar(20) DEFAULT NULL,
  `total_achievement` bigint(21) NOT NULL,
  PRIMARY KEY (`creatureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_achCount`
--

LOCK TABLES `creature_achCount` WRITE;
/*!40000 ALTER TABLE `creature_achCount` DISABLE KEYS */;
INSERT INTO `creature_achCount` VALUES (1,'Bannon',5),(2,'Myers',1),(3,'Neff',2),(4,'Neff',1),(5,'Mieska',2),(6,'Carlis',0),(7,'Kermit',2),(8,'Godzilla',1),(9,'Thor',3),(10,'Elastigirl',1),(11,'David Beckham',1),(12,'Harry Kane',1),(13,'Megan Rapinoe',2);
/*!40000 ALTER TABLE `creature_achCount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_no_skill`
--

DROP TABLE IF EXISTS `creature_no_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_no_skill` (
  `creatureId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_no_skill`
--

LOCK TABLES `creature_no_skill` WRITE;
/*!40000 ALTER TABLE `creature_no_skill` DISABLE KEYS */;
INSERT INTO `creature_no_skill` VALUES (6);
/*!40000 ALTER TABLE `creature_no_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creatureavgproficiency`
--

DROP TABLE IF EXISTS `creatureavgproficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creatureavgproficiency` (
  `creatureId` int(11) DEFAULT NULL,
  `creatureName` varchar(20) DEFAULT NULL,
  `avg_proficiency` decimal(14,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creatureavgproficiency`
--

LOCK TABLES `creatureavgproficiency` WRITE;
/*!40000 ALTER TABLE `creatureavgproficiency` DISABLE KEYS */;
INSERT INTO `creatureavgproficiency` VALUES (1,'Bannon',19.4000),(2,'Myers',85.0000),(3,'Neff',4.0000),(4,'Neff',85.0000),(5,'Mieska',45.5000),(7,'Kermit',13.5000),(8,'Godzilla',1.0000),(9,'Thor',12.3333),(10,'Elastigirl',10.0000),(11,'David Beckham',10.0000),(12,'Harry Kane',10.0000),(13,'Megan Rapinoe',9.0000);
/*!40000 ALTER TABLE `creatureavgproficiency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_boughtcar_count`
--

DROP TABLE IF EXISTS `customer_boughtcar_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_boughtcar_count` (
  `cust_id` int(11) NOT NULL,
  `car_count` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_boughtcar_count`
--

LOCK TABLES `customer_boughtcar_count` WRITE;
/*!40000 ALTER TABLE `customer_boughtcar_count` DISABLE KEYS */;
INSERT INTO `customer_boughtcar_count` VALUES (1,2),(2,1),(3,2),(4,1);
/*!40000 ALTER TABLE `customer_boughtcar_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_morethan_onecar`
--

DROP TABLE IF EXISTS `customer_morethan_onecar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_morethan_onecar` (
  `cust_id` int(11) NOT NULL,
  `car_count` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_morethan_onecar`
--

LOCK TABLES `customer_morethan_onecar` WRITE;
/*!40000 ALTER TABLE `customer_morethan_onecar` DISABLE KEYS */;
INSERT INTO `customer_morethan_onecar` VALUES (1,2),(3,2);
/*!40000 ALTER TABLE `customer_morethan_onecar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date`
--

DROP TABLE IF EXISTS `date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `date` (
  `date_type` varchar(30) NOT NULL,
  `correspondent_date` date NOT NULL,
  PRIMARY KEY (`date_type`,`correspondent_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date`
--

LOCK TABLES `date` WRITE;
/*!40000 ALTER TABLE `date` DISABLE KEYS */;
/*!40000 ALTER TABLE `date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_relation`
--

DROP TABLE IF EXISTS `date_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `date_relation` (
  `date_type` varchar(30) NOT NULL,
  `correspondent_date` date NOT NULL,
  PRIMARY KEY (`date_type`,`correspondent_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date_relation`
--

LOCK TABLES `date_relation` WRITE;
/*!40000 ALTER TABLE `date_relation` DISABLE KEYS */;
INSERT INTO `date_relation` VALUES ('listen','2022-01-01'),('listen','2022-01-02'),('listen','2022-01-05'),('listen','2022-01-09'),('listen','2022-01-10'),('listen','2022-01-11'),('listen','2022-01-14'),('listen','2022-01-19'),('listen','2022-01-20'),('listen','2022-01-30'),('listen','2022-02-01'),('published','2000-04-08'),('published','2012-06-18'),('published','2022-06-20'),('published','2022-07-04'),('published','2023-01-31'),('published','2023-04-12'),('published','2023-04-13'),('published','2023-04-15'),('published','2023-04-17'),('published','2023-09-04'),('published','2044-05-23'),('published','2044-05-24'),('release','1974-02-22'),('release','1987-01-07'),('release','2014-06-14'),('release','2014-09-15'),('release','2018-07-25'),('release','2018-11-23'),('release','2018-11-30'),('release','2018-12-28'),('release','2019-02-01'),('release','2019-03-05'),('release','2019-03-08'),('release','2019-03-29'),('release','2019-04-19'),('release','2019-05-03'),('release','2019-05-08'),('release','2019-05-17'),('release','2019-05-23'),('release','2019-05-24'),('release','2019-06-14'),('release','2019-06-20'),('release','2019-06-21'),('release','2019-06-27'),('release','2019-06-28'),('release','2019-07-05'),('release','2019-07-11'),('release','2019-07-12'),('release','2019-07-19'),('release','2019-07-26'),('release','2019-08-09'),('release','2019-08-16'),('release','2019-08-23'),('release','2019-08-29'),('release','2019-09-05'),('release','2019-10-18'),('release','2019-10-25'),('release','2019-11-01'),('release','2019-11-22'),('release','2019-12-11'),('release','2019-12-13'),('release','2020-04-02');
/*!40000 ALTER TABLE `date_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `genre_type` varchar(30) NOT NULL,
  PRIMARY KEY (`genre_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES ('comedy'),('country'),('Dark Trap'),('dnb'),('education'),('Emo'),('folk'),('hardstyle'),('health'),('Hiphop'),('Kpop'),('politics'),('Pop'),('Pop Remix'),('psytrance'),('Rap'),('RnB'),('sport'),('techhouse'),('techno'),('trance'),('trap'),('Trap Metal'),('Underground Rap');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodach_creature_cannotswim`
--

DROP TABLE IF EXISTS `goodach_creature_cannotswim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goodach_creature_cannotswim` (
  `creatureId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodach_creature_cannotswim`
--

LOCK TABLES `goodach_creature_cannotswim` WRITE;
/*!40000 ALTER TABLE `goodach_creature_cannotswim` DISABLE KEYS */;
INSERT INTO `goodach_creature_cannotswim` VALUES (1),(5),(4),(2);
/*!40000 ALTER TABLE `goodach_creature_cannotswim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hundred_k_sold_car`
--

DROP TABLE IF EXISTS `hundred_k_sold_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hundred_k_sold_car` (
  `car_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `selling_price` decimal(13,4) NOT NULL,
  `date_sold` date NOT NULL,
  `buying_price` decimal(13,4) NOT NULL,
  `mileage` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `category_code` int(11) DEFAULT NULL,
  `manu_fullname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hundred_k_sold_car`
--

LOCK TABLES `hundred_k_sold_car` WRITE;
/*!40000 ALTER TABLE `hundred_k_sold_car` DISABLE KEYS */;
INSERT INTO `hundred_k_sold_car` VALUES (16,4,51000.0000,'2022-11-04',50000.0000,100001,2023,1,'Tesla Motor');
/*!40000 ALTER TABLE `hundred_k_sold_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `morethanone_achievement_by_creatures`
--

DROP TABLE IF EXISTS `morethanone_achievement_by_creatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `morethanone_achievement_by_creatures` (
  `creatureId` int(11) DEFAULT NULL,
  `skill_count` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `morethanone_achievement_by_creatures`
--

LOCK TABLES `morethanone_achievement_by_creatures` WRITE;
/*!40000 ALTER TABLE `morethanone_achievement_by_creatures` DISABLE KEYS */;
INSERT INTO `morethanone_achievement_by_creatures` VALUES (1,3),(5,2),(7,2),(9,3),(13,2);
/*!40000 ALTER TABLE `morethanone_achievement_by_creatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multiple_achievement_by_creatures`
--

DROP TABLE IF EXISTS `multiple_achievement_by_creatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multiple_achievement_by_creatures` (
  `achId` int(11) NOT NULL DEFAULT 0,
  `creatureId` int(11) DEFAULT NULL,
  `skillCode` varchar(3) DEFAULT NULL,
  `proficiency` int(11) DEFAULT NULL,
  `achDate` text DEFAULT NULL,
  `test_townId` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multiple_achievement_by_creatures`
--

LOCK TABLES `multiple_achievement_by_creatures` WRITE;
/*!40000 ALTER TABLE `multiple_achievement_by_creatures` DISABLE KEYS */;
INSERT INTO `multiple_achievement_by_creatures` VALUES (1,1,'A',3,'2023-03-21 16:36:49','a'),(2,1,'E',3,'2017-09-15 15:35','d'),(3,1,'A',3,'2018-07-14 14:00','a'),(4,1,'E',3,'2023-03-21 16:36:49','d'),(5,5,'Z',6,'2016-04-12 15:42:30','t'),(6,3,'Z',4,'2018-07-15','be'),(7,3,'Z',4,'2018-07-15','be'),(8,11,'PK',10,'1998-08-15','le'),(9,12,'PK',10,'2016-05-24','le'),(10,13,'PK',10,'2012-08-06','le'),(11,8,'PK',1,NULL,'t'),(12,9,'THR',10,'2018-08-12 14:30','mv'),(13,10,'THR',10,'2018-08-12 14:30','mv'),(14,7,'B2',19,'2017-01-10 16:30','d'),(15,9,'B2',19,'2017-01-10 16:30','d'),(16,4,'TR4',85,'2012-07-30','le'),(17,5,'TR4',85,'2012-07-30','le'),(18,2,'TR4',85,'2012-07-30','le'),(19,1,'TR4',85,'2012-07-30','le'),(20,9,'D3',8,'2023-03-21 16:36:49','sw'),(21,13,'D3',8,'2023-03-21 16:36:49','sw'),(22,7,'D3',8,'2023-03-21 16:36:49','sw');
/*!40000 ALTER TABLE `multiple_achievement_by_creatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outc_a`
--

DROP TABLE IF EXISTS `outc_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outc_a` (
  `creatureId` int(11) NOT NULL,
  `creatureName` varchar(20) DEFAULT NULL,
  `creatureType` varchar(20) DEFAULT NULL,
  `achId` int(11) DEFAULT 0,
  `proficiency` int(11) DEFAULT NULL,
  `skillCode` varchar(3) DEFAULT NULL,
  `achDate` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outc_a`
--

LOCK TABLES `outc_a` WRITE;
/*!40000 ALTER TABLE `outc_a` DISABLE KEYS */;
INSERT INTO `outc_a` VALUES (1,'Bannon','person',1,3,'A','2023-03-21 16:36:49'),(1,'Bannon','person',2,3,'E','2017-09-15 15:35'),(1,'Bannon','person',3,3,'A','2018-07-14 14:00'),(1,'Bannon','person',4,3,'E','2023-03-21 16:36:49'),(1,'Bannon','person',19,85,'TR4','2012-07-30'),(2,'Myers','person',18,85,'TR4','2012-07-30'),(3,'Neff','person',6,4,'Z','2018-07-15'),(3,'Neff','person',7,4,'Z','2018-07-15'),(4,'Neff','person',16,85,'TR4','2012-07-30'),(5,'Mieska','person',5,6,'Z','2016-04-12 15:42:30'),(5,'Mieska','person',17,85,'TR4','2012-07-30'),(6,'Carlis','person',NULL,NULL,NULL,NULL),(7,'Kermit','frog',14,19,'B2','2017-01-10 16:30'),(7,'Kermit','frog',22,8,'D3','2023-03-21 16:36:49'),(8,'Godzilla','monster',11,1,'PK',NULL),(9,'Thor','superhero',12,10,'THR','2018-08-12 14:30'),(9,'Thor','superhero',15,19,'B2','2017-01-10 16:30'),(9,'Thor','superhero',20,8,'D3','2023-03-21 16:36:49'),(10,'Elastigirl','superhero',13,10,'THR','2018-08-12 14:30'),(11,'David Beckham','person',8,10,'PK','1998-08-15'),(12,'Harry Kane','person',9,10,'PK','2016-05-24'),(13,'Megan Rapinoe','person',10,10,'PK','2012-08-06'),(13,'Megan Rapinoe','person',21,8,'D3','2023-03-21 16:36:49');
/*!40000 ALTER TABLE `outc_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outc_asp`
--

DROP TABLE IF EXISTS `outc_asp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outc_asp` (
  `creatureId` int(11) NOT NULL,
  `creatureName` varchar(20) DEFAULT NULL,
  `creatureType` varchar(20) DEFAULT NULL,
  `skillCode` varchar(3),
  `aspiredProficiency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outc_asp`
--

LOCK TABLES `outc_asp` WRITE;
/*!40000 ALTER TABLE `outc_asp` DISABLE KEYS */;
INSERT INTO `outc_asp` VALUES (1,'Bannon','person','A',3),(1,'Bannon','person','C2',9),(1,'Bannon','person','E',4),(1,'Bannon','person','TR4',85),(1,'Bannon','person','Z',3),(2,'Myers','person','A',3),(3,'Neff','person','A',8),(3,'Neff','person','Z',5),(4,'Neff','person','E',3),(5,'Mieska','person','TR4',85),(5,'Mieska','person','Z',10),(6,'Carlis','person','C2',9),(6,'Carlis','person','Z',3),(7,'Kermit','frog','B2',20),(7,'Kermit','frog','D3',8),(7,'Kermit','frog','E',3),(8,'Godzilla','monster','O',4),(9,'Thor','superhero','D3',8),(10,'Elastigirl','superhero',NULL,NULL),(11,'David Beckham','person','PK',10),(12,'Harry Kane','person','PK',10),(13,'Megan Rapinoe','person','D3',8),(13,'Megan Rapinoe','person','PK',10);
/*!40000 ALTER TABLE `outc_asp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performance` (
  `show_id` int(11) NOT NULL,
  `performance_date` date NOT NULL,
  `performance_time` time DEFAULT NULL,
  PRIMARY KEY (`show_id`,`performance_date`),
  CONSTRAINT `performance_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `show_relation` (`show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance`
--

LOCK TABLES `performance` WRITE;
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
INSERT INTO `performance` VALUES (1,'2016-01-21','12:10:00'),(1,'2016-02-14','07:15:00'),(1,'2019-11-01','08:10:00'),(2,'2016-03-05','00:10:00'),(2,'2019-11-01','08:10:00'),(2,'2019-11-02','08:10:00'),(3,'2016-12-16','07:10:00'),(3,'2019-11-01','08:10:00'),(3,'2019-11-02','08:10:00'),(4,'2008-11-04','22:10:00'),(5,'2008-11-05','10:10:00'),(6,'2008-11-04','08:10:00'),(6,'2016-01-21','08:10:00'),(6,'2019-11-05','08:10:00');
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performer`
--

DROP TABLE IF EXISTS `performer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performer` (
  `performer_id` int(11) NOT NULL,
  `performer_name` varchar(32) DEFAULT NULL,
  `booking_agency_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`performer_id`),
  KEY `booking_agency_name` (`booking_agency_name`),
  CONSTRAINT `performer_ibfk_1` FOREIGN KEY (`booking_agency_name`) REFERENCES `booking_agency` (`booking_agency_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performer`
--

LOCK TABLES `performer` WRITE;
/*!40000 ALTER TABLE `performer` DISABLE KEYS */;
INSERT INTO `performer` VALUES (1,'Miles Davis','Ellicott Mills'),(2,'Etta James','Ellicott Mills'),(3,'Madilu Bialu','IBM'),(4,'Franco Luambo Makiadi','Monrovia, Liberia'),(5,'Brenda Fassie','Monrovia, Liberia'),(6,'Miriam Makeba','Lelia'),(7,'Koffi Olomide','Wellesley College'),(8,'Beyonce Knowles',NULL);
/*!40000 ALTER TABLE `performer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performerbookingagencyjoin`
--

DROP TABLE IF EXISTS `performerbookingagencyjoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performerbookingagencyjoin` (
  `performer_id` int(11) NOT NULL,
  `performer_name` varchar(32) DEFAULT NULL,
  `booking_agency_name` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `contact_person` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performerbookingagencyjoin`
--

LOCK TABLES `performerbookingagencyjoin` WRITE;
/*!40000 ALTER TABLE `performerbookingagencyjoin` DISABLE KEYS */;
INSERT INTO `performerbookingagencyjoin` VALUES (1,'Miles Davis','Ellicott Mills','612-624-0003','Benjamin Banneker'),(2,'Etta James','Ellicott Mills','612-624-0003','Benjamin Banneker'),(3,'Madilu Bialu','IBM','612-624-0000','Edgar Codd'),(4,'Franco Luambo Makiadi','Monrovia, Liberia','612-624-0007','Ellen Johnson Sirleaf'),(5,'Brenda Fassie','Monrovia, Liberia','612-624-0007','Ellen Johnson Sirleaf'),(6,'Miriam Makeba','Lelia','612-624-0001','Madame C.J. Walker'),(7,'Koffi Olomide','Wellesley College','612-624-0006','Madeleine Albright');
/*!40000 ALTER TABLE `performerbookingagencyjoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `playlistId` int(11) NOT NULL,
  `playlist_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`playlistId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_association`
--

DROP TABLE IF EXISTS `playlist_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist_association` (
  `user_accountId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `user_role` varchar(30) NOT NULL,
  PRIMARY KEY (`user_accountId`,`playlistId`,`user_role`),
  KEY `playlistId` (`playlistId`),
  CONSTRAINT `playlist_association_ibfk_1` FOREIGN KEY (`user_accountId`) REFERENCES `user` (`user_accountId`),
  CONSTRAINT `playlist_association_ibfk_2` FOREIGN KEY (`playlistId`) REFERENCES `playlist` (`playlistId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_association`
--

LOCK TABLES `playlist_association` WRITE;
/*!40000 ALTER TABLE `playlist_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcast`
--

DROP TABLE IF EXISTS `podcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `podcast` (
  `podcastId` int(11) NOT NULL,
  `podcast_title` varchar(60) NOT NULL,
  `podcast_description` varchar(600) DEFAULT NULL,
  `podcastHost_accountId` int(11) DEFAULT NULL,
  `genre_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`podcastId`),
  KEY `podcastHost_accountId` (`podcastHost_accountId`),
  KEY `genre_type` (`genre_type`),
  CONSTRAINT `podcast_ibfk_1` FOREIGN KEY (`podcastHost_accountId`) REFERENCES `podcastHost` (`podcastHost_accountId`),
  CONSTRAINT `podcast_ibfk_2` FOREIGN KEY (`genre_type`) REFERENCES `genre` (`genre_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcast`
--

LOCK TABLES `podcast` WRITE;
/*!40000 ALTER TABLE `podcast` DISABLE KEYS */;
INSERT INTO `podcast` VALUES (1,'The Joe Rogan Experience','',143,'politics'),(2,'If Books Could Kill','',144,'education'),(3,'What About Holly?','',145,'education'),(4,'Back to the Beach with Kristin and Stephen','',146,'education'),(5,'The Psychology of your 20s','',147,'education'),(6,'Huberman Lab','',148,'education'),(7,'The Daily','',149,'politics'),(8,'Lex Fridman Podcast','',150,'education'),(9,'High Low with EmRata','',151,'education'),(10,'New Heights with Jason and Travis Kelce','',152,'education'),(11,'Crime Junkie','',153,'education'),(12,'2 Bears,1 Cave with Tom Segura & Bert Kreischer','',154,'education'),(13,'Case 63','',155,'politics'),(14,'MrBallen Podcast: Strange,Dark & Mysterious Stories','',156,'education'),(15,'Call Her Daddy','',157,'education'),(16,'This Past Weekend','',158,'politics'),(17,'Up First','',159,'education'),(18,'Distractible','',160,'education'),(19,'Morbid','',161,'education');
/*!40000 ALTER TABLE `podcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcastEpisode`
--

DROP TABLE IF EXISTS `podcastEpisode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `podcastEpisode` (
  `podcastId` int(11) NOT NULL,
  `episode_title` varchar(100) NOT NULL,
  `episode_description` varchar(600) DEFAULT NULL,
  `guest_speaker` varchar(60) DEFAULT NULL,
  `duration_of_time` time DEFAULT NULL,
  `date_type` varchar(30) NOT NULL,
  `correspondent_date` date NOT NULL,
  PRIMARY KEY (`podcastId`,`episode_title`),
  KEY `duration_of_time` (`duration_of_time`),
  KEY `date_type` (`date_type`,`correspondent_date`),
  CONSTRAINT `podcastEpisode_ibfk_1` FOREIGN KEY (`podcastId`) REFERENCES `podcast` (`podcastId`),
  CONSTRAINT `podcastEpisode_ibfk_2` FOREIGN KEY (`duration_of_time`) REFERENCES `audioLength` (`duration_of_time`),
  CONSTRAINT `podcastEpisode_ibfk_3` FOREIGN KEY (`date_type`, `correspondent_date`) REFERENCES `date_relation` (`date_type`, `correspondent_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcastEpisode`
--

LOCK TABLES `podcastEpisode` WRITE;
/*!40000 ALTER TABLE `podcastEpisode` DISABLE KEYS */;
INSERT INTO `podcastEpisode` VALUES (1,'Life Advice Pt.1',NULL,NULL,'40:00:00','published','2012-06-18'),(1,'Life Advice Pt.2',NULL,NULL,'45:12:00','published','2044-05-23'),(1,'Life Advice Pt.3',NULL,NULL,'37:58:00','published','2044-05-24'),(7,'China and Taiwan: A Torried Backstory',NULL,NULL,'20:00:00','published','2023-04-17'),(7,'Inside Russia\'s Crackdown on Dissent',NULL,NULL,'25:00:00','published','2023-04-15'),(7,'The Indictment of Donald Trump',NULL,NULL,'27:32:00','published','2023-04-12'),(7,'The Outsourcing of America\'s Border Problem',NULL,NULL,'27:32:00','published','2023-04-13'),(10,'Tallest Building in Manhattan',NULL,NULL,'01:40:00','published','2022-07-04'),(10,'Tallest Mountain in Asia',NULL,NULL,'02:01:45','published','2023-01-31'),(12,'2 Bears',NULL,NULL,'30:00:00','published','2023-09-04'),(12,'A Cave',NULL,NULL,'30:00:00','published','2023-09-04'),(19,'Reddit 50/50 Challenges',NULL,NULL,'03:54:12','published','2000-04-08');
/*!40000 ALTER TABLE `podcastEpisode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcastEpisode_ad`
--

DROP TABLE IF EXISTS `podcastEpisode_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `podcastEpisode_ad` (
  `podcastId` int(11) NOT NULL,
  `episode_title` varchar(100) NOT NULL,
  `advertisementId` int(11) NOT NULL,
  `episode_adRevenue` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`podcastId`,`episode_title`,`advertisementId`),
  KEY `advertisementId` (`advertisementId`),
  CONSTRAINT `podcastEpisode_ad_ibfk_1` FOREIGN KEY (`podcastId`, `episode_title`) REFERENCES `podcastEpisode` (`podcastId`, `episode_title`),
  CONSTRAINT `podcastEpisode_ad_ibfk_2` FOREIGN KEY (`advertisementId`) REFERENCES `advertisement` (`advertisementId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcastEpisode_ad`
--

LOCK TABLES `podcastEpisode_ad` WRITE;
/*!40000 ALTER TABLE `podcastEpisode_ad` DISABLE KEYS */;
INSERT INTO `podcastEpisode_ad` VALUES (7,'China and Taiwan: A Torried Backstory',2,100.00),(7,'China and Taiwan: A Torried Backstory',5,1200.00),(7,'The Indictment of Donald Trump',6,400.00),(7,'The Outsourcing of America\'s Border Problem',1,300.00),(12,'2 Bears',1,100.00),(12,'2 Bears',5,0.15),(12,'A Cave',1,100.00),(19,'Reddit 50/50 Challenges',3,0.15);
/*!40000 ALTER TABLE `podcastEpisode_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcastEpisode_interaction`
--

DROP TABLE IF EXISTS `podcastEpisode_interaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `podcastEpisode_interaction` (
  `user_accountId` int(11) NOT NULL,
  `podcastId` int(11) NOT NULL,
  `episode_title` varchar(60) NOT NULL,
  `episode_stream_status` tinyint(1) DEFAULT NULL,
  `episode_download_status` tinyint(1) DEFAULT NULL,
  `episode_saved_status` tinyint(1) DEFAULT NULL,
  `date_type` varchar(30) NOT NULL,
  `correspondent_date` date NOT NULL,
  PRIMARY KEY (`user_accountId`,`podcastId`,`episode_title`),
  KEY `podcastId` (`podcastId`,`episode_title`),
  KEY `date_type` (`date_type`,`correspondent_date`),
  CONSTRAINT `podcastEpisode_interaction_ibfk_1` FOREIGN KEY (`user_accountId`) REFERENCES `user` (`user_accountId`),
  CONSTRAINT `podcastEpisode_interaction_ibfk_2` FOREIGN KEY (`podcastId`, `episode_title`) REFERENCES `podcastEpisode` (`podcastId`, `episode_title`),
  CONSTRAINT `podcastEpisode_interaction_ibfk_3` FOREIGN KEY (`date_type`, `correspondent_date`) REFERENCES `date_relation` (`date_type`, `correspondent_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcastEpisode_interaction`
--

LOCK TABLES `podcastEpisode_interaction` WRITE;
/*!40000 ALTER TABLE `podcastEpisode_interaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `podcastEpisode_interaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcastEpisode_playlistInclusion`
--

DROP TABLE IF EXISTS `podcastEpisode_playlistInclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `podcastEpisode_playlistInclusion` (
  `podcastId` int(11) NOT NULL,
  `episode_title` varchar(60) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `episode_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`podcastId`,`episode_title`,`playlistId`),
  KEY `playlistId` (`playlistId`),
  CONSTRAINT `podcastEpisode_playlistInclusion_ibfk_1` FOREIGN KEY (`podcastId`, `episode_title`) REFERENCES `podcastEpisode` (`podcastId`, `episode_title`),
  CONSTRAINT `podcastEpisode_playlistInclusion_ibfk_2` FOREIGN KEY (`playlistId`) REFERENCES `playlist` (`playlistId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcastEpisode_playlistInclusion`
--

LOCK TABLES `podcastEpisode_playlistInclusion` WRITE;
/*!40000 ALTER TABLE `podcastEpisode_playlistInclusion` DISABLE KEYS */;
/*!40000 ALTER TABLE `podcastEpisode_playlistInclusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcastHost`
--

DROP TABLE IF EXISTS `podcastHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `podcastHost` (
  `podcastHost_accountId` int(11) NOT NULL,
  PRIMARY KEY (`podcastHost_accountId`),
  CONSTRAINT `podcastHost_ibfk_1` FOREIGN KEY (`podcastHost_accountId`) REFERENCES `account` (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcastHost`
--

LOCK TABLES `podcastHost` WRITE;
/*!40000 ALTER TABLE `podcastHost` DISABLE KEYS */;
INSERT INTO `podcastHost` VALUES (143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(167);
/*!40000 ALTER TABLE `podcastHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcast_interaction`
--

DROP TABLE IF EXISTS `podcast_interaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `podcast_interaction` (
  `user_accountId` int(11) NOT NULL,
  `podcastId` int(11) NOT NULL,
  `podcast_follower_status` tinyint(1) DEFAULT NULL,
  `user_podcast_rating` int(11) DEFAULT NULL,
  `podcast_saved_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_accountId`,`podcastId`),
  KEY `podcastId` (`podcastId`),
  CONSTRAINT `podcast_interaction_ibfk_1` FOREIGN KEY (`user_accountId`) REFERENCES `user` (`user_accountId`),
  CONSTRAINT `podcast_interaction_ibfk_2` FOREIGN KEY (`podcastId`) REFERENCES `podcast` (`podcastId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcast_interaction`
--

LOCK TABLES `podcast_interaction` WRITE;
/*!40000 ALTER TABLE `podcast_interaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `podcast_interaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher` (
  `company_name` varchar(60) NOT NULL,
  PRIMARY KEY (`company_name`),
  CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q1`
--

DROP TABLE IF EXISTS `q1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q1` (
  `songId` int(11) NOT NULL,
  `stream_count` bigint(21) NOT NULL,
  PRIMARY KEY (`songId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q1`
--

LOCK TABLES `q1` WRITE;
/*!40000 ALTER TABLE `q1` DISABLE KEYS */;
INSERT INTO `q1` VALUES (8,20),(15,8),(55,12),(59,16),(60,26),(65,5),(66,12),(67,2),(68,2),(69,21),(70,6),(71,4),(72,2);
/*!40000 ALTER TABLE `q1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q2`
--

DROP TABLE IF EXISTS `q2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q2` (
  `total_stream_count` bigint(21) NOT NULL,
  PRIMARY KEY (`total_stream_count`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q2`
--

LOCK TABLES `q2` WRITE;
/*!40000 ALTER TABLE `q2` DISABLE KEYS */;
INSERT INTO `q2` VALUES (8);
/*!40000 ALTER TABLE `q2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q3`
--

DROP TABLE IF EXISTS `q3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q3` (
  `total_ad_revenue` decimal(33,2) NOT NULL,
  PRIMARY KEY (`total_ad_revenue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q3`
--

LOCK TABLES `q3` WRITE;
/*!40000 ALTER TABLE `q3` DISABLE KEYS */;
INSERT INTO `q3` VALUES (2000.00);
/*!40000 ALTER TABLE `q3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q4`
--

DROP TABLE IF EXISTS `q4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4` (
  `section_id` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q4`
--

LOCK TABLES `q4` WRITE;
/*!40000 ALTER TABLE `q4` DISABLE KEYS */;
INSERT INTO `q4` VALUES ('cs 120'),('cs 240'),('cs 302');
/*!40000 ALTER TABLE `q4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q6`
--

DROP TABLE IF EXISTS `q6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q6` (
  `cust_id` int(11) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q6`
--

LOCK TABLES `q6` WRITE;
/*!40000 ALTER TABLE `q6` DISABLE KEYS */;
INSERT INTO `q6` VALUES (1),(3);
/*!40000 ALTER TABLE `q6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q7`
--

DROP TABLE IF EXISTS `q7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q7` (
  `cust_id` int(11) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q7`
--

LOCK TABLES `q7` WRITE;
/*!40000 ALTER TABLE `q7` DISABLE KEYS */;
INSERT INTO `q7` VALUES (4);
/*!40000 ALTER TABLE `q7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recordLabel`
--

DROP TABLE IF EXISTS `recordLabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recordLabel` (
  `company_name` varchar(60) NOT NULL,
  PRIMARY KEY (`company_name`),
  CONSTRAINT `recordLabel_ibfk_1` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordLabel`
--

LOCK TABLES `recordLabel` WRITE;
/*!40000 ALTER TABLE `recordLabel` DISABLE KEYS */;
/*!40000 ALTER TABLE `recordLabel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat` (
  `seat_id` varchar(32) NOT NULL,
  `section_id` varchar(32) NOT NULL,
  PRIMARY KEY (`seat_id`,`section_id`),
  KEY `section_id` (`section_id`),
  CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES ('cs 120: 1','cs 120'),('cs 120: 2','cs 120'),('cs 240: 1','cs 240'),('cs 240: 2','cs 240'),('cs 302: 1','cs 302'),('cs 302: 2','cs 302');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `section_id` varchar(32) NOT NULL,
  `price` float(7,3) DEFAULT NULL,
  `sect_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES ('cs 120',100.000,3),('cs 240',200.000,2),('cs 302',300.000,1),('cs 340',500.000,2);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_relation`
--

DROP TABLE IF EXISTS `show_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `show_relation` (
  `show_id` int(11) NOT NULL,
  `show_title` varchar(32) DEFAULT NULL,
  `opening_performer_id` int(11) DEFAULT NULL,
  `performer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`show_id`),
  KEY `opening_performer_id` (`opening_performer_id`),
  KEY `performer_id` (`performer_id`),
  CONSTRAINT `show_relation_ibfk_1` FOREIGN KEY (`opening_performer_id`) REFERENCES `performer` (`performer_id`),
  CONSTRAINT `show_relation_ibfk_2` FOREIGN KEY (`performer_id`) REFERENCES `performer` (`performer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_relation`
--

LOCK TABLES `show_relation` WRITE;
/*!40000 ALTER TABLE `show_relation` DISABLE KEYS */;
INSERT INTO `show_relation` VALUES (1,'Eclipsed',1,2),(2,'Hughie',3,3),(3,'Black Angels Over Tuskegee',4,4),(4,'Blackbird',5,5),(5,'Heisenberg',6,7),(6,'Hamilton',NULL,NULL);
/*!40000 ALTER TABLE `show_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_ticketaveragestatus`
--

DROP TABLE IF EXISTS `show_ticketaveragestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `show_ticketaveragestatus` (
  `show_id` int(11) NOT NULL,
  `ticket_status` decimal(7,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_ticketaveragestatus`
--

LOCK TABLES `show_ticketaveragestatus` WRITE;
/*!40000 ALTER TABLE `show_ticketaveragestatus` DISABLE KEYS */;
INSERT INTO `show_ticketaveragestatus` VALUES (1,0.6667),(2,0.6667),(3,0.3333),(4,0.0000),(6,0.5000);
/*!40000 ALTER TABLE `show_ticketaveragestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_londonseattle`
--

DROP TABLE IF EXISTS `skill_londonseattle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_londonseattle` (
  `creatureId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_londonseattle`
--

LOCK TABLES `skill_londonseattle` WRITE;
/*!40000 ALTER TABLE `skill_londonseattle` DISABLE KEYS */;
INSERT INTO `skill_londonseattle` VALUES (13);
/*!40000 ALTER TABLE `skill_londonseattle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `songId` int(11) NOT NULL,
  `song_title` varchar(100) DEFAULT NULL,
  `duration_of_time` time DEFAULT NULL,
  `date_type` varchar(30) NOT NULL,
  `correspondent_date` date NOT NULL,
  `genre_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`songId`),
  KEY `duration_of_time` (`duration_of_time`),
  KEY `genre_type` (`genre_type`),
  KEY `date_type` (`date_type`,`correspondent_date`),
  CONSTRAINT `song_ibfk_1` FOREIGN KEY (`duration_of_time`) REFERENCES `audioLength` (`duration_of_time`),
  CONSTRAINT `song_ibfk_2` FOREIGN KEY (`genre_type`) REFERENCES `genre` (`genre_type`),
  CONSTRAINT `song_ibfk_3` FOREIGN KEY (`date_type`, `correspondent_date`) REFERENCES `date_relation` (`date_type`, `correspondent_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (8,'Body On My','03:32:00','release','2019-02-01','Pop Remix'),(15,'Candle in the Wind','03:50:00','release','1974-02-22','Pop'),(30,'Torn - KREAM Remix','03:32:00','release','2019-04-19','Pop Remix'),(35,'Let It Be Me - Sondr Remix','03:32:00','release','2019-10-18','Pop Remix'),(55,'Love Me Less (feat. Quinn XCII) - Party Pupils Remix','03:32:00','release','2019-06-21','Pop Remix'),(56,'Mother - Fedde Le Grand Remix','03:32:00','release','2019-11-01','Pop Remix'),(58,'Heaven - David Guetta & MORTEN Remix','04:42:00','release','2019-06-21','Pop Remix'),(59,'Happier - Matt Medved Remix','03:32:00','release','2018-11-30','Pop Remix'),(60,'South of the Border (feat. Camila Cabello & Cardi B) - Andy Jarvis Remix','03:32:00','release','2019-07-19','Pop Remix'),(62,'Never Really Over - R3HAB Remix','03:32:00','release','2019-07-26','Pop Remix'),(63,'Summer Days (feat. Macklemore & Patrick Stump of Fall Out Boy) - TiÃ«sto Remix','04:42:00','release','2019-07-12','Pop Remix'),(64,'All Around The World (La La La) - Marnik Remix','03:32:00','release','2019-08-23','Pop Remix'),(65,'Say My Name (feat. Bebe Rexha & J Balvin) - Lucas & Steve Remix','03:32:00','release','2018-12-28','Pop Remix'),(66,'I Dont Care (with Justin Bieber) - Loud Luxury Remix','03:32:00','release','2019-06-14','Pop Remix'),(67,'Cross Me (feat. Chance the Rapper & PnB Rock) - M-22 Remix','04:42:00','release','2019-12-13','Pop Remix'),(68,'Tough Love - TiÃ«sto Remix / Radio Edit','04:42:00','release','2019-06-14','Pop Remix'),(69,'Someone You Loved - Future Humans Remix','03:32:00','release','2019-03-05','Pop Remix'),(70,'Beautiful People (feat. Khalid) - Jack Wins Remix','03:32:00','release','2019-07-05','Pop Remix'),(71,'Heaven Can Wait - The Aston Shuffle Remix','04:42:00','release','2019-05-24','Pop Remix'),(72,'When It Comes To You - Benny Benassi & BB Team Remix','04:42:00','release','2019-10-25','Pop Remix'),(85,'Paradise - Bazzi vs. Black Caviar Remix','03:32:00','release','2019-06-27','Pop Remix'),(87,'Hold Me While You Wait - Steve Void Remix','03:32:00','release','2019-07-11','Pop Remix'),(90,'Post Malone (feat. RANI) - GATTÃœSO Remix','04:42:00','release','2019-08-29','Pop Remix'),(96,'Ruin My Life - Steve James Remix','03:32:00','release','2019-08-09','Pop Remix'),(97,'SOS - Laidback Luke Tribute Remix / Radio Edit','04:42:00','release','2019-06-20','Pop Remix'),(99,'Freaking Me Out - Keanu Silva Remix','04:42:00','release','2019-11-01','Pop Remix'),(107,'When You Leave - Breathe Carolina Remix','03:32:00','release','2019-09-05','Pop Remix'),(109,'Slow Dance (feat. Ava Max) - Sam Feldt Remix','03:32:00','release','2019-10-25','Pop Remix'),(117,'Higher Love','04:42:00','release','2019-06-28','Pop Remix'),(156,'Signs - Eden Prince Remix','03:32:00','release','2018-11-30','Pop Remix'),(158,'One Thing Right - Firebeatz Remix','03:32:00','release','2018-11-23','Pop Remix'),(160,'Quite Miss Home - Steve Void Remix','03:32:00','release','2019-11-22','Pop Remix'),(163,'All the Time - Don Diablo Remix','03:32:00','release','2019-06-21','Pop Remix'),(164,'Good Things Fall Apart (with Jon Bellion) [TiÃ«stos Big Room Remix]','03:32:00','release','2019-07-12','Pop Remix'),(166,'Call You Mine - Keanu Silva Remix','03:32:00','release','2019-12-11','Pop Remix'),(167,'Hate Me - R3HAB Remix','04:42:00','release','2019-08-16','Pop Remix'),(168,'If I Cant Have You - Gryffin Remix','04:42:00','release','2019-05-17','Pop Remix'),(169,'Dont Leave Me Alone (feat. Anne-Marie) - EDXs Indian Summer Remix','03:32:00','release','2019-03-08','Pop Remix'),(170,'Memories - Dillon Francis Remix','03:32:00','release','2019-08-23','Pop Remix'),(192,'So Am I - Toby Green Remix','03:32:00','release','2019-05-23','Pop Remix'),(197,'Close To Me (with Diplo) (feat. Swae Lee) - CID Remix','04:42:00','release','2019-03-29','Pop Remix'),(198,'Unlove You','04:42:00','release','2019-10-18','Pop Remix'),(258,'All My Friends - Eden Prince Remix','03:32:00','release','2019-05-24','Pop Remix'),(263,'Side Effects - Fedde Le Grand Remix','03:32:00','release','2018-07-25','Pop Remix'),(269,'bad guy (with Justin Bieber)','04:42:00','release','2019-07-11','Pop Remix'),(362,'Dancing With A Stranger (With Normani) - Cheat Codes Remix','03:32:00','release','2019-05-08','Pop Remix'),(366,'White Mercedes - EDXs Miami Sunset Remix','04:42:00','release','2019-10-25','Pop Remix'),(1060,'Do You Mean (feat. Ty Dolla $ign & bÃ¼low) - Myon Remix','03:32:00','release','2019-05-03','Pop Remix');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_interaction`
--

DROP TABLE IF EXISTS `song_interaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_interaction` (
  `user_accountId` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `song_interaction_time` time NOT NULL,
  `like_status` tinyint(1) DEFAULT NULL,
  `song_download_status` tinyint(1) DEFAULT NULL,
  `song_stream_status` tinyint(1) DEFAULT NULL,
  `song_interactionRevenue` decimal(12,10) DEFAULT NULL,
  `song_saved_status` tinyint(1) DEFAULT NULL,
  `date_type` varchar(30) NOT NULL,
  `correspondent_date` date NOT NULL,
  PRIMARY KEY (`user_accountId`,`songId`,`song_interaction_time`),
  KEY `songId` (`songId`),
  KEY `date_type` (`date_type`,`correspondent_date`),
  CONSTRAINT `song_interaction_ibfk_1` FOREIGN KEY (`user_accountId`) REFERENCES `user` (`user_accountId`),
  CONSTRAINT `song_interaction_ibfk_2` FOREIGN KEY (`songId`) REFERENCES `song` (`songId`),
  CONSTRAINT `song_interaction_ibfk_3` FOREIGN KEY (`date_type`, `correspondent_date`) REFERENCES `date_relation` (`date_type`, `correspondent_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_interaction`
--

LOCK TABLES `song_interaction` WRITE;
/*!40000 ALTER TABLE `song_interaction` DISABLE KEYS */;
INSERT INTO `song_interaction` VALUES (100,65,'08:00:00',1,1,1,0.0000100000,1,'listen','2022-01-20'),(100,65,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-30'),(100,65,'09:30:00',1,1,1,0.0000100000,1,'listen','2022-01-30'),(100,66,'00:10:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(100,68,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-20'),(100,69,'07:07:00',1,1,1,0.0000100000,1,'listen','2022-01-20'),(100,70,'09:40:00',1,1,1,0.0000100000,1,'listen','2022-01-20'),(100,71,'08:00:00',1,1,1,0.0000100000,1,'listen','2022-01-10'),(100,71,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(100,72,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-11'),(101,15,'00:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(101,65,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-09'),(101,65,'09:30:00',1,1,1,0.0000100000,1,'listen','2022-01-10'),(101,66,'00:10:00',0,0,1,0.0000100000,1,'listen','2022-01-19'),(101,68,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-20'),(101,69,'07:07:00',1,1,1,0.0000100000,1,'listen','2022-01-20'),(101,70,'09:40:00',1,1,1,0.0000100000,1,'listen','2022-01-20'),(101,71,'08:00:00',1,1,1,0.0000100000,1,'listen','2022-01-10'),(101,71,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(101,72,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-11'),(102,8,'01:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(102,8,'10:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(102,8,'18:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(102,8,'20:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(102,8,'21:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(102,15,'01:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(102,55,'16:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(102,55,'19:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(102,55,'29:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(102,59,'11:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(102,59,'15:12:00',0,0,1,0.0000100000,1,'listen','2022-01-02'),(102,59,'18:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(102,59,'20:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(102,69,'01:12:00',0,0,1,0.0000100000,1,'listen','2022-01-01'),(103,8,'01:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(103,8,'10:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(103,8,'18:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(103,8,'20:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(103,8,'21:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(103,15,'02:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(103,55,'16:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(103,55,'19:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(103,55,'29:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(103,59,'15:12:00',0,0,1,0.0000100000,1,'listen','2022-01-02'),(103,59,'21:02:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(103,59,'21:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(103,59,'21:32:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(103,69,'01:12:00',0,0,1,0.0000100000,1,'listen','2022-01-01'),(105,8,'01:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(105,8,'10:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(105,8,'18:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(105,8,'20:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(105,8,'21:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(105,15,'04:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(105,55,'16:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(105,55,'19:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(105,55,'29:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(105,59,'15:12:00',0,0,1,0.0000100000,1,'listen','2022-01-02'),(105,59,'21:02:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(105,59,'21:32:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(105,59,'21:40:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(105,69,'01:12:00',0,0,1,0.0000100000,1,'listen','2022-01-01'),(106,15,'05:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(106,15,'08:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(106,60,'00:04:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(106,60,'08:12:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(106,60,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(106,66,'09:04:00',1,1,1,0.0000100000,1,'listen','2022-01-14'),(106,66,'18:24:00',1,1,1,0.0000100000,1,'listen','2022-01-14'),(106,69,'08:20:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(106,69,'11:44:00',1,0,1,0.0000100000,1,'listen','2022-01-01'),(107,60,'00:04:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(107,60,'08:12:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(107,60,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(107,66,'09:04:00',1,1,1,0.0000100000,1,'listen','2022-01-14'),(107,66,'18:24:00',1,1,1,0.0000100000,1,'listen','2022-01-14'),(107,69,'08:20:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(107,69,'11:44:00',1,0,1,0.0000100000,1,'listen','2022-01-01'),(108,60,'00:04:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(108,60,'08:12:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(108,60,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(108,66,'09:04:00',1,1,1,0.0000100000,1,'listen','2022-01-14'),(108,66,'18:24:00',1,1,1,0.0000100000,1,'listen','2022-01-14'),(108,69,'08:20:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(108,69,'11:44:00',1,0,1,0.0000100000,1,'listen','2022-01-01'),(109,8,'01:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(109,8,'10:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(109,8,'18:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(109,8,'20:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(109,8,'21:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(109,15,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(109,15,'10:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(109,55,'16:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(109,55,'19:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(109,55,'29:12:00',0,0,1,0.0000100000,1,'listen','2022-01-05'),(109,59,'15:12:00',0,0,1,0.0000100000,1,'listen','2022-01-02'),(109,59,'21:02:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(109,59,'21:12:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(109,59,'21:52:00',0,0,1,0.0000100000,1,'listen','2022-01-20'),(109,60,'00:04:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(109,60,'08:12:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(109,60,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(109,66,'09:04:00',1,1,1,0.0000100000,1,'listen','2022-01-14'),(109,66,'18:24:00',1,1,1,0.0000100000,1,'listen','2022-01-14'),(109,69,'01:12:00',0,0,1,0.0000100000,1,'listen','2022-01-01'),(109,69,'08:20:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(109,69,'11:44:00',1,0,1,0.0000100000,1,'listen','2022-01-01'),(110,60,'00:04:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(110,60,'08:12:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(110,60,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-02'),(110,66,'09:04:00',1,1,1,0.0000100000,1,'listen','2022-01-14'),(110,66,'18:24:00',1,1,1,0.0000100000,1,'listen','2022-01-14'),(110,69,'08:20:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(110,69,'11:44:00',1,0,1,0.0000100000,1,'listen','2022-01-01'),(111,60,'08:37:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(111,60,'11:00:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(111,60,'11:59:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(111,60,'12:00:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(111,67,'11:00:00',1,1,1,0.0000100000,1,'listen','2022-01-20'),(111,69,'07:56:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(111,69,'11:00:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(111,69,'11:44:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(111,69,'11:47:00',1,1,0,0.0000100000,1,'listen','2022-01-01'),(111,70,'03:34:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(111,70,'10:30:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(112,60,'04:44:00',1,1,1,0.0000100000,1,'listen','2022-02-01'),(112,60,'05:20:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(112,60,'05:44:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(112,60,'11:00:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(112,60,'16:24:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(112,60,'16:40:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(112,60,'18:24:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(112,60,'19:24:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(112,67,'10:00:00',1,1,1,0.0000100000,1,'listen','2022-01-20'),(112,69,'01:00:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(112,69,'10:10:00',1,1,1,0.0000100000,1,'listen','2022-01-01'),(112,70,'04:23:00',1,1,1,0.0000100000,1,'listen','2022-01-30'),(112,70,'09:00:00',1,1,1,0.0000100000,1,'listen','2022-01-30');
/*!40000 ALTER TABLE `song_interaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptionPlan`
--

DROP TABLE IF EXISTS `subscriptionPlan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptionPlan` (
  `plan_name` varchar(20) NOT NULL,
  `premium_status` tinyint(1) DEFAULT NULL,
  `plan_price` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`plan_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptionPlan`
--

LOCK TABLES `subscriptionPlan` WRITE;
/*!40000 ALTER TABLE `subscriptionPlan` DISABLE KEYS */;
INSERT INTO `subscriptionPlan` VALUES ('\'Duo\'',1,12.99),('\'Free\'',0,0.00),('\'Premium Family\'',1,15.99),('\'Premium Student\'',1,4.99),('\'Premium\'',1,9.99);
/*!40000 ALTER TABLE `subscriptionPlan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swimorsuperhero`
--

DROP TABLE IF EXISTS `swimorsuperhero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swimorsuperhero` (
  `creatureId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swimorsuperhero`
--

LOCK TABLES `swimorsuperhero` WRITE;
/*!40000 ALTER TABLE `swimorsuperhero` DISABLE KEYS */;
INSERT INTO `swimorsuperhero` VALUES (1),(9),(10);
/*!40000 ALTER TABLE `swimorsuperhero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `show_id` int(11) NOT NULL,
  `performance_date` date NOT NULL,
  `seat_id` varchar(32) NOT NULL,
  `section_id` varchar(32) NOT NULL,
  `available_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`show_id`,`performance_date`,`seat_id`,`section_id`),
  KEY `seat_id` (`seat_id`,`section_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`show_id`, `performance_date`) REFERENCES `performance` (`show_id`, `performance_date`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`seat_id`, `section_id`) REFERENCES `seat` (`seat_id`, `section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'2016-01-21','cs 302: 1','cs 302',1),(1,'2019-11-01','cs 120: 1','cs 120',1),(1,'2019-11-01','cs 120: 2','cs 120',0),(2,'2019-11-01','cs 240: 1','cs 240',1),(2,'2019-11-02','cs 240: 1','cs 240',1),(2,'2019-11-02','cs 240: 2','cs 240',0),(3,'2019-11-01','cs 302: 1','cs 302',0),(3,'2019-11-01','cs 302: 2','cs 302',1),(3,'2019-11-02','cs 302: 1','cs 302',0),(4,'2008-11-04','cs 302: 2','cs 302',0),(6,'2008-11-04','cs 302: 2','cs 302',0),(6,'2016-01-21','cs 302: 1','cs 302',1);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketsoldcount`
--

DROP TABLE IF EXISTS `ticketsoldcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketsoldcount` (
  `show_id` int(11) NOT NULL,
  `sold_ticket` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketsoldcount`
--

LOCK TABLES `ticketsoldcount` WRITE;
/*!40000 ALTER TABLE `ticketsoldcount` DISABLE KEYS */;
INSERT INTO `ticketsoldcount` VALUES (1,1),(2,1),(3,2),(4,1),(6,1);
/*!40000 ALTER TABLE `ticketsoldcount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track` (
  `albumId` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `track_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`albumId`,`songId`),
  KEY `songId` (`songId`),
  CONSTRAINT `track_ibfk_1` FOREIGN KEY (`albumId`) REFERENCES `album` (`albumId`),
  CONSTRAINT `track_ibfk_2` FOREIGN KEY (`songId`) REFERENCES `song` (`songId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_accountId` int(11) NOT NULL,
  `plan_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_accountId`),
  KEY `plan_name` (`plan_name`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_accountId`) REFERENCES `account` (`accountId`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`plan_name`) REFERENCES `subscriptionPlan` (`plan_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (109,'\'Duo\''),(110,'\'Duo\''),(114,'\'Free\''),(112,'\'Premium Family\''),(111,'\'Premium Student\''),(100,'\'Premium\''),(101,'\'Premium\''),(102,'\'Premium\''),(103,'\'Premium\''),(105,'\'Premium\''),(106,'\'Premium\''),(107,'\'Premium\''),(108,'\'Premium\''),(113,'\'Premium\'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 14:59:44
