-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: phouse
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'hello','10-20-30'),(2,'희수','이것은 희수번호입니다.'),(3,'김영','000-111-1111'),(9,'hihihii','623-1552-1152'),(11,'STRONGDRAGON','010-8753-7711'),(13,'이경민','제발-들어가줘-ㅠㅠㅠ'),(15,'sadf','asdf-asfd-asdf'),(16,'최선진','010-응?-왜?'),(17,'aaaa','123-1234-1234'),(18,'aaaa','123-1234-1234'),(19,'aaaa','123-1234-1234'),(20,'aaaa1','545-1234-1234'),(21,'최선진','010-응?-왜?'),(25,'Hehehehe','123-456-789'),(26,'Hehehehe','123-456-789'),(29,'asd','11-11-11'),(30,'gggg','123-123-123'),(31,'gggg','123-123-123'),(32,'gggg','111-111-11'),(33,'홍길동','111-1234-5678'),(34,'gggg','111-111-11'),(35,'gggg','111-111-111'),(36,'gggg','111-111-111'),(37,'123','123-123-123'),(38,'gogo','123-123-123'),(39,'이름 넣은거','123-456-789'),(40,'안녕','010-2111-1111'),(42,'끄부아앙','010-0101-0101'),(43,'끄부아앙','010-0101-0101'),(48,'123123','123-123-123'),(50,'끄부아앙','끄!-부! -앙!'),(51,'이원효','010-4326-1214'),(52,'gogo','123-123-123'),(53,'이원효','010-4326-1214'),(54,'asdas','111-1111-1111'),(55,'이원효','010-4326-1214'),(56,'asdas','111-1111-1111'),(57,'asdas','111-1111-1111'),(58,'123','123-123-123'),(59,'123123','123-123-123'),(60,'gogo','123-123-123'),(61,'이원효','123-1234-1234'),(62,'강한용','010-8753-7711'),(63,'123123','123-123-123'),(64,'123123','123-123-123'),(66,'잇힝','111-123-123'),(68,'mj','000-000-0000'),(69,'hi','he-ll -o'),(71,'김민주','010-7123-4358'),(72,'김민주','010-7123-4358'),(73,'김민주','010-7123-4358'),(74,'김민주','010-7123-4358'),(75,'asdas','111-1111-1111'),(76,'hi','hello-eoeo-wowo'),(77,'hi','he-ll-o'),(78,'hi','he-ll-o'),(79,'hi','he-ll-o'),(80,'hi','he-ll-o'),(82,'sdgsg','151-5125-12512');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof`
--

DROP TABLE IF EXISTS `prof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prof` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof`
--

LOCK TABLES `prof` WRITE;
/*!40000 ALTER TABLE `prof` DISABLE KEYS */;
INSERT INTO `prof` VALUES (1,'구승모'),(2,'박재성'),(3,'이익훈'),(4,'정호영');
/*!40000 ALTER TABLE `prof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu`
--

DROP TABLE IF EXISTS `stu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(16) DEFAULT NULL,
  `profid` int(11) DEFAULT NULL,
  `senior_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `profid` (`profid`),
  KEY `senior_id` (`senior_id`),
  CONSTRAINT `stu_ibfk_1` FOREIGN KEY (`profid`) REFERENCES `prof` (`pid`),
  CONSTRAINT `stu_ibfk_2` FOREIGN KEY (`senior_id`) REFERENCES `stu` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu`
--

LOCK TABLES `stu` WRITE;
/*!40000 ALTER TABLE `stu` DISABLE KEYS */;
INSERT INTO `stu` VALUES (1,'김주희',1,1),(2,'최재은',1,1),(3,'김영',2,1),(4,'이영남',NULL,2),(5,'이상진',3,3),(6,'전다영글',3,3),(7,'이원효',4,3),(8,'강한용',3,3);
/*!40000 ALTER TABLE `stu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subj`
--

DROP TABLE IF EXISTS `subj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subj` (
  `subid` int(11) NOT NULL AUTO_INCREMENT,
  `subname` varchar(16) DEFAULT NULL,
  `profid` int(11) DEFAULT NULL,
  PRIMARY KEY (`subid`),
  KEY `profid` (`profid`),
  CONSTRAINT `subj_ibfk_1` FOREIGN KEY (`profid`) REFERENCES `prof` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subj`
--

LOCK TABLES `subj` WRITE;
/*!40000 ALTER TABLE `subj` DISABLE KEYS */;
INSERT INTO `subj` VALUES (1,'자바',1),(2,'웹프',1),(3,'게프',2),(4,'디비',3),(5,'디비',4);
/*!40000 ALTER TABLE `subj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sukang`
--

DROP TABLE IF EXISTS `sukang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sukang` (
  `student_id` int(11) NOT NULL DEFAULT '0',
  `subject_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`student_id`,`subject_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `sukang_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `stu` (`sid`),
  CONSTRAINT `sukang_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subj` (`subid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sukang`
--

LOCK TABLES `sukang` WRITE;
/*!40000 ALTER TABLE `sukang` DISABLE KEYS */;
INSERT INTO `sukang` VALUES (1,1),(2,1),(3,1),(4,1),(1,2),(3,2),(5,2),(3,3),(6,3),(3,4),(7,4),(1,5),(2,5);
/*!40000 ALTER TABLE `sukang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test1`
--

DROP TABLE IF EXISTS `test1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `day` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24917 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test1`
--

LOCK TABLES `test1` WRITE;
/*!40000 ALTER TABLE `test1` DISABLE KEYS */;
INSERT INTO `test1` VALUES (23914,'dragon','1988-08-05'),(23915,'dragon','1988-08-05'),(23916,'zz','2013-04-06'),(23917,'0','2013-02-24'),(23918,'1','2013-02-24'),(23919,'2','2013-02-24'),(23920,'3','2013-02-24'),(23921,'4','2013-02-24'),(23922,'5','2013-02-24'),(23923,'6','2013-02-24'),(23924,'7','2013-02-24'),(23925,'8','2013-02-24'),(23926,'9','2013-02-24'),(23927,'10','2013-02-24'),(23928,'11','2013-02-24'),(23929,'12','2013-02-24'),(23930,'13','2013-02-24'),(23931,'14','2013-02-24'),(23932,'15','2013-02-24'),(23933,'16','2013-02-24'),(23934,'17','2013-02-24'),(23935,'18','2013-02-24'),(23936,'19','2013-02-24'),(23937,'20','2013-02-24'),(23938,'21','2013-02-24'),(23939,'22','2013-02-24'),(23940,'23','2013-02-24'),(23941,'24','2013-02-24'),(23942,'25','2013-02-24'),(23943,'26','2013-02-24'),(23944,'27','2013-02-24'),(23945,'28','2013-02-24'),(23946,'29','2013-02-24'),(23947,'30','2013-02-24'),(23948,'31','2013-02-24'),(23949,'32','2013-02-24'),(23950,'33','2013-02-24'),(23951,'34','2013-02-24'),(23952,'35','2013-02-24'),(23953,'36','2013-02-24'),(23954,'37','2013-02-24'),(23955,'38','2013-02-24'),(23956,'39','2013-02-24'),(23957,'40','2013-02-24'),(23958,'41','2013-02-24'),(23959,'42','2013-02-24'),(23960,'43','2013-02-24'),(23961,'44','2013-02-24'),(23962,'45','2013-02-24'),(23963,'46','2013-02-24'),(23964,'47','2013-02-24'),(23965,'48','2013-02-24'),(23966,'49','2013-02-24'),(23967,'50','2013-02-24'),(23968,'51','2013-02-24'),(23969,'52','2013-02-24'),(23970,'53','2013-02-24'),(23971,'54','2013-02-24'),(23972,'55','2013-02-24'),(23973,'56','2013-02-24'),(23974,'57','2013-02-24'),(23975,'58','2013-02-24'),(23976,'59','2013-02-24'),(23977,'60','2013-02-24'),(23978,'61','2013-02-24'),(23979,'62','2013-02-24'),(23980,'63','2013-02-24'),(23981,'64','2013-02-24'),(23982,'65','2013-02-24'),(23983,'66','2013-02-24'),(23984,'67','2013-02-24'),(23985,'68','2013-02-24'),(23986,'69','2013-02-24'),(23987,'70','2013-02-24'),(23988,'71','2013-02-24'),(23989,'72','2013-02-24'),(23990,'73','2013-02-24'),(23991,'74','2013-02-24'),(23992,'75','2013-02-24'),(23993,'76','2013-02-24'),(23994,'77','2013-02-24'),(23995,'78','2013-02-24'),(23996,'79','2013-02-24'),(23997,'80','2013-02-24'),(23998,'81','2013-02-24'),(23999,'82','2013-02-24'),(24000,'83','2013-02-24'),(24001,'84','2013-02-24'),(24002,'85','2013-02-24'),(24003,'86','2013-02-24'),(24004,'87','2013-02-24'),(24005,'88','2013-02-24'),(24006,'89','2013-02-24'),(24007,'90','2013-02-24'),(24008,'91','2013-02-24'),(24009,'92','2013-02-24'),(24010,'93','2013-02-24'),(24011,'94','2013-02-24'),(24012,'95','2013-02-24'),(24013,'96','2013-02-24'),(24014,'97','2013-02-24'),(24015,'98','2013-02-24'),(24016,'99','2013-02-24'),(24017,'100','2013-02-24'),(24018,'101','2013-02-24'),(24019,'102','2013-02-24'),(24020,'103','2013-02-24'),(24021,'104','2013-02-24'),(24022,'105','2013-02-24'),(24023,'106','2013-02-24'),(24024,'107','2013-02-24'),(24025,'108','2013-02-24'),(24026,'109','2013-02-24'),(24027,'110','2013-02-24'),(24028,'111','2013-02-24'),(24029,'112','2013-02-24'),(24030,'113','2013-02-24'),(24031,'114','2013-02-24'),(24032,'115','2013-02-24'),(24033,'116','2013-02-24'),(24034,'117','2013-02-24'),(24035,'118','2013-02-24'),(24036,'119','2013-02-24'),(24037,'120','2013-02-24'),(24038,'121','2013-02-24'),(24039,'122','2013-02-24'),(24040,'123','2013-02-24'),(24041,'124','2013-02-24'),(24042,'125','2013-02-24'),(24043,'126','2013-02-24'),(24044,'127','2013-02-24'),(24045,'128','2013-02-24'),(24046,'129','2013-02-24'),(24047,'130','2013-02-24'),(24048,'131','2013-02-24'),(24049,'132','2013-02-24'),(24050,'133','2013-02-24'),(24051,'134','2013-02-24'),(24052,'135','2013-02-24'),(24053,'136','2013-02-24'),(24054,'137','2013-02-24'),(24055,'138','2013-02-24'),(24056,'139','2013-02-24'),(24057,'140','2013-02-24'),(24058,'141','2013-02-24'),(24059,'142','2013-02-24'),(24060,'143','2013-02-24'),(24061,'144','2013-02-24'),(24062,'145','2013-02-24'),(24063,'146','2013-02-24'),(24064,'147','2013-02-24'),(24065,'148','2013-02-24'),(24066,'149','2013-02-24'),(24067,'150','2013-02-24'),(24068,'151','2013-02-24'),(24069,'152','2013-02-24'),(24070,'153','2013-02-24'),(24071,'154','2013-02-24'),(24072,'155','2013-02-24'),(24073,'156','2013-02-24'),(24074,'157','2013-02-24'),(24075,'158','2013-02-24'),(24076,'159','2013-02-24'),(24077,'160','2013-02-24'),(24078,'161','2013-02-24'),(24079,'162','2013-02-24'),(24080,'163','2013-02-24'),(24081,'164','2013-02-24'),(24082,'165','2013-02-24'),(24083,'166','2013-02-24'),(24084,'167','2013-02-24'),(24085,'168','2013-02-24'),(24086,'169','2013-02-24'),(24087,'170','2013-02-24'),(24088,'171','2013-02-24'),(24089,'172','2013-02-24'),(24090,'173','2013-02-24'),(24091,'174','2013-02-24'),(24092,'175','2013-02-24'),(24093,'176','2013-02-24'),(24094,'177','2013-02-24'),(24095,'178','2013-02-24'),(24096,'179','2013-02-24'),(24097,'180','2013-02-24'),(24098,'181','2013-02-24'),(24099,'182','2013-02-24'),(24100,'183','2013-02-24'),(24101,'184','2013-02-24'),(24102,'185','2013-02-24'),(24103,'186','2013-02-24'),(24104,'187','2013-02-24'),(24105,'188','2013-02-24'),(24106,'189','2013-02-24'),(24107,'190','2013-02-24'),(24108,'191','2013-02-24'),(24109,'192','2013-02-24'),(24110,'193','2013-02-24'),(24111,'194','2013-02-24'),(24112,'195','2013-02-24'),(24113,'196','2013-02-24'),(24114,'197','2013-02-24'),(24115,'198','2013-02-24'),(24116,'199','2013-02-24'),(24117,'200','2013-02-24'),(24118,'201','2013-02-24'),(24119,'202','2013-02-24'),(24120,'203','2013-02-24'),(24121,'204','2013-02-24'),(24122,'205','2013-02-24'),(24123,'206','2013-02-24'),(24124,'207','2013-02-24'),(24125,'208','2013-02-24'),(24126,'209','2013-02-24'),(24127,'210','2013-02-24'),(24128,'211','2013-02-24'),(24129,'212','2013-02-24'),(24130,'213','2013-02-24'),(24131,'214','2013-02-24'),(24132,'215','2013-02-24'),(24133,'216','2013-02-24'),(24134,'217','2013-02-24'),(24135,'218','2013-02-24'),(24136,'219','2013-02-24'),(24137,'220','2013-02-24'),(24138,'221','2013-02-24'),(24139,'222','2013-02-24'),(24140,'223','2013-02-24'),(24141,'224','2013-02-24'),(24142,'225','2013-02-24'),(24143,'226','2013-02-24'),(24144,'227','2013-02-24'),(24145,'228','2013-02-24'),(24146,'229','2013-02-24'),(24147,'230','2013-02-24'),(24148,'231','2013-02-24'),(24149,'232','2013-02-24'),(24150,'233','2013-02-24'),(24151,'234','2013-02-24'),(24152,'235','2013-02-24'),(24153,'236','2013-02-24'),(24154,'237','2013-02-24'),(24155,'238','2013-02-24'),(24156,'239','2013-02-24'),(24157,'240','2013-02-24'),(24158,'241','2013-02-24'),(24159,'242','2013-02-24'),(24160,'243','2013-02-24'),(24161,'244','2013-02-24'),(24162,'245','2013-02-24'),(24163,'246','2013-02-24'),(24164,'247','2013-02-24'),(24165,'248','2013-02-24'),(24166,'249','2013-02-24'),(24167,'250','2013-02-24'),(24168,'251','2013-02-24'),(24169,'252','2013-02-24'),(24170,'253','2013-02-24'),(24171,'254','2013-02-24'),(24172,'255','2013-02-24'),(24173,'256','2013-02-24'),(24174,'257','2013-02-24'),(24175,'258','2013-02-24'),(24176,'259','2013-02-24'),(24177,'260','2013-02-24'),(24178,'261','2013-02-24'),(24179,'262','2013-02-24'),(24180,'263','2013-02-24'),(24181,'264','2013-02-24'),(24182,'265','2013-02-24'),(24183,'266','2013-02-24'),(24184,'267','2013-02-24'),(24185,'268','2013-02-24'),(24186,'269','2013-02-24'),(24187,'270','2013-02-24'),(24188,'271','2013-02-24'),(24189,'272','2013-02-24'),(24190,'273','2013-02-24'),(24191,'274','2013-02-24'),(24192,'275','2013-02-24'),(24193,'276','2013-02-24'),(24194,'277','2013-02-24'),(24195,'278','2013-02-24'),(24196,'279','2013-02-24'),(24197,'280','2013-02-24'),(24198,'281','2013-02-24'),(24199,'282','2013-02-24'),(24200,'283','2013-02-24'),(24201,'284','2013-02-24'),(24202,'285','2013-02-24'),(24203,'286','2013-02-24'),(24204,'287','2013-02-24'),(24205,'288','2013-02-24'),(24206,'289','2013-02-24'),(24207,'290','2013-02-24'),(24208,'291','2013-02-24'),(24209,'292','2013-02-24'),(24210,'293','2013-02-24'),(24211,'294','2013-02-24'),(24212,'295','2013-02-24'),(24213,'296','2013-02-24'),(24214,'297','2013-02-24'),(24215,'298','2013-02-24'),(24216,'299','2013-02-24'),(24217,'300','2013-02-24'),(24218,'301','2013-02-24'),(24219,'302','2013-02-24'),(24220,'303','2013-02-24'),(24221,'304','2013-02-24'),(24222,'305','2013-02-24'),(24223,'306','2013-02-24'),(24224,'307','2013-02-24'),(24225,'308','2013-02-24'),(24226,'309','2013-02-24'),(24227,'310','2013-02-24'),(24228,'311','2013-02-24'),(24229,'312','2013-02-24'),(24230,'313','2013-02-24'),(24231,'314','2013-02-24'),(24232,'315','2013-02-24'),(24233,'316','2013-02-24'),(24234,'317','2013-02-24'),(24235,'318','2013-02-24'),(24236,'319','2013-02-24'),(24237,'320','2013-02-24'),(24238,'321','2013-02-24'),(24239,'322','2013-02-24'),(24240,'323','2013-02-24'),(24241,'324','2013-02-24'),(24242,'325','2013-02-24'),(24243,'326','2013-02-24'),(24244,'327','2013-02-24'),(24245,'328','2013-02-24'),(24246,'329','2013-02-24'),(24247,'330','2013-02-24'),(24248,'331','2013-02-24'),(24249,'332','2013-02-24'),(24250,'333','2013-02-24'),(24251,'334','2013-02-24'),(24252,'335','2013-02-24'),(24253,'336','2013-02-24'),(24254,'337','2013-02-24'),(24255,'338','2013-02-24'),(24256,'339','2013-02-24'),(24257,'340','2013-02-24'),(24258,'341','2013-02-24'),(24259,'342','2013-02-24'),(24260,'343','2013-02-24'),(24261,'344','2013-02-24'),(24262,'345','2013-02-24'),(24263,'346','2013-02-24'),(24264,'347','2013-02-24'),(24265,'348','2013-02-24'),(24266,'349','2013-02-24'),(24267,'350','2013-02-24'),(24268,'351','2013-02-24'),(24269,'352','2013-02-24'),(24270,'353','2013-02-24'),(24271,'354','2013-02-24'),(24272,'355','2013-02-24'),(24273,'356','2013-02-24'),(24274,'357','2013-02-24'),(24275,'358','2013-02-24'),(24276,'359','2013-02-24'),(24277,'360','2013-02-24'),(24278,'361','2013-02-24'),(24279,'362','2013-02-24'),(24280,'363','2013-02-24'),(24281,'364','2013-02-24'),(24282,'365','2013-02-24'),(24283,'366','2013-02-24'),(24284,'367','2013-02-24'),(24285,'368','2013-02-24'),(24286,'369','2013-02-24'),(24287,'370','2013-02-24'),(24288,'371','2013-02-24'),(24289,'372','2013-02-24'),(24290,'373','2013-02-24'),(24291,'374','2013-02-24'),(24292,'375','2013-02-24'),(24293,'376','2013-02-24'),(24294,'377','2013-02-24'),(24295,'378','2013-02-24'),(24296,'379','2013-02-24'),(24297,'380','2013-02-24'),(24298,'381','2013-02-24'),(24299,'382','2013-02-24'),(24300,'383','2013-02-24'),(24301,'384','2013-02-24'),(24302,'385','2013-02-24'),(24303,'386','2013-02-24'),(24304,'387','2013-02-24'),(24305,'388','2013-02-24'),(24306,'389','2013-02-24'),(24307,'390','2013-02-24'),(24308,'391','2013-02-24'),(24309,'392','2013-02-24'),(24310,'393','2013-02-24'),(24311,'394','2013-02-24'),(24312,'395','2013-02-24'),(24313,'396','2013-02-24'),(24314,'397','2013-02-24'),(24315,'398','2013-02-24'),(24316,'399','2013-02-24'),(24317,'400','2013-02-24'),(24318,'401','2013-02-24'),(24319,'402','2013-02-24'),(24320,'403','2013-02-24'),(24321,'404','2013-02-24'),(24322,'405','2013-02-24'),(24323,'406','2013-02-24'),(24324,'407','2013-02-24'),(24325,'408','2013-02-24'),(24326,'409','2013-02-24'),(24327,'410','2013-02-24'),(24328,'411','2013-02-24'),(24329,'412','2013-02-24'),(24330,'413','2013-02-24'),(24331,'414','2013-02-24'),(24332,'415','2013-02-24'),(24333,'416','2013-02-24'),(24334,'417','2013-02-24'),(24335,'418','2013-02-24'),(24336,'419','2013-02-24'),(24337,'420','2013-02-24'),(24338,'421','2013-02-24'),(24339,'422','2013-02-24'),(24340,'423','2013-02-24'),(24341,'424','2013-02-24'),(24342,'425','2013-02-24'),(24343,'426','2013-02-24'),(24344,'427','2013-02-24'),(24345,'428','2013-02-24'),(24346,'429','2013-02-24'),(24347,'430','2013-02-24'),(24348,'431','2013-02-24'),(24349,'432','2013-02-24'),(24350,'433','2013-02-24'),(24351,'434','2013-02-24'),(24352,'435','2013-02-24'),(24353,'436','2013-02-24'),(24354,'437','2013-02-24'),(24355,'438','2013-02-24'),(24356,'439','2013-02-24'),(24357,'440','2013-02-24'),(24358,'441','2013-02-24'),(24359,'442','2013-02-24'),(24360,'443','2013-02-24'),(24361,'444','2013-02-24'),(24362,'445','2013-02-24'),(24363,'446','2013-02-24'),(24364,'447','2013-02-24'),(24365,'448','2013-02-24'),(24366,'449','2013-02-24'),(24367,'450','2013-02-24'),(24368,'451','2013-02-24'),(24369,'452','2013-02-24'),(24370,'453','2013-02-24'),(24371,'454','2013-02-24'),(24372,'455','2013-02-24'),(24373,'456','2013-02-24'),(24374,'457','2013-02-24'),(24375,'458','2013-02-24'),(24376,'459','2013-02-24'),(24377,'460','2013-02-24'),(24378,'461','2013-02-24'),(24379,'462','2013-02-24'),(24380,'463','2013-02-24'),(24381,'464','2013-02-24'),(24382,'465','2013-02-24'),(24383,'466','2013-02-24'),(24384,'467','2013-02-24'),(24385,'468','2013-02-24'),(24386,'469','2013-02-24'),(24387,'470','2013-02-24'),(24388,'471','2013-02-24'),(24389,'472','2013-02-24'),(24390,'473','2013-02-24'),(24391,'474','2013-02-24'),(24392,'475','2013-02-24'),(24393,'476','2013-02-24'),(24394,'477','2013-02-24'),(24395,'478','2013-02-24'),(24396,'479','2013-02-24'),(24397,'480','2013-02-24'),(24398,'481','2013-02-24'),(24399,'482','2013-02-24'),(24400,'483','2013-02-24'),(24401,'484','2013-02-24'),(24402,'485','2013-02-24'),(24403,'486','2013-02-24'),(24404,'487','2013-02-24'),(24405,'488','2013-02-24'),(24406,'489','2013-02-24'),(24407,'490','2013-02-24'),(24408,'491','2013-02-24'),(24409,'492','2013-02-24'),(24410,'493','2013-02-24'),(24411,'494','2013-02-24'),(24412,'495','2013-02-24'),(24413,'496','2013-02-24'),(24414,'497','2013-02-24'),(24415,'498','2013-02-24'),(24416,'499','2013-02-24'),(24417,'500','2013-02-24'),(24418,'501','2013-02-24'),(24419,'502','2013-02-24'),(24420,'503','2013-02-24'),(24421,'504','2013-02-24'),(24422,'505','2013-02-24'),(24423,'506','2013-02-24'),(24424,'507','2013-02-24'),(24425,'508','2013-02-24'),(24426,'509','2013-02-24'),(24427,'510','2013-02-24'),(24428,'511','2013-02-24'),(24429,'512','2013-02-24'),(24430,'513','2013-02-24'),(24431,'514','2013-02-24'),(24432,'515','2013-02-24'),(24433,'516','2013-02-24'),(24434,'517','2013-02-24'),(24435,'518','2013-02-24'),(24436,'519','2013-02-24'),(24437,'520','2013-02-24'),(24438,'521','2013-02-24'),(24439,'522','2013-02-24'),(24440,'523','2013-02-24'),(24441,'524','2013-02-24'),(24442,'525','2013-02-24'),(24443,'526','2013-02-24'),(24444,'527','2013-02-24'),(24445,'528','2013-02-24'),(24446,'529','2013-02-24'),(24447,'530','2013-02-24'),(24448,'531','2013-02-24'),(24449,'532','2013-02-24'),(24450,'533','2013-02-24'),(24451,'534','2013-02-24'),(24452,'535','2013-02-24'),(24453,'536','2013-02-24'),(24454,'537','2013-02-24'),(24455,'538','2013-02-24'),(24456,'539','2013-02-24'),(24457,'540','2013-02-24'),(24458,'541','2013-02-24'),(24459,'542','2013-02-24'),(24460,'543','2013-02-24'),(24461,'544','2013-02-24'),(24462,'545','2013-02-24'),(24463,'546','2013-02-24'),(24464,'547','2013-02-24'),(24465,'548','2013-02-24'),(24466,'549','2013-02-24'),(24467,'550','2013-02-24'),(24468,'551','2013-02-24'),(24469,'552','2013-02-24'),(24470,'553','2013-02-24'),(24471,'554','2013-02-24'),(24472,'555','2013-02-24'),(24473,'556','2013-02-24'),(24474,'557','2013-02-24'),(24475,'558','2013-02-24'),(24476,'559','2013-02-24'),(24477,'560','2013-02-24'),(24478,'561','2013-02-24'),(24479,'562','2013-02-24'),(24480,'563','2013-02-24'),(24481,'564','2013-02-24'),(24482,'565','2013-02-24'),(24483,'566','2013-02-24'),(24484,'567','2013-02-24'),(24485,'568','2013-02-24'),(24486,'569','2013-02-24'),(24487,'570','2013-02-24'),(24488,'571','2013-02-24'),(24489,'572','2013-02-24'),(24490,'573','2013-02-24'),(24491,'574','2013-02-24'),(24492,'575','2013-02-24'),(24493,'576','2013-02-24'),(24494,'577','2013-02-24'),(24495,'578','2013-02-24'),(24496,'579','2013-02-24'),(24497,'580','2013-02-24'),(24498,'581','2013-02-24'),(24499,'582','2013-02-24'),(24500,'583','2013-02-24'),(24501,'584','2013-02-24'),(24502,'585','2013-02-24'),(24503,'586','2013-02-24'),(24504,'587','2013-02-24'),(24505,'588','2013-02-24'),(24506,'589','2013-02-24'),(24507,'590','2013-02-24'),(24508,'591','2013-02-24'),(24509,'592','2013-02-24'),(24510,'593','2013-02-24'),(24511,'594','2013-02-24'),(24512,'595','2013-02-24'),(24513,'596','2013-02-24'),(24514,'597','2013-02-24'),(24515,'598','2013-02-24'),(24516,'599','2013-02-24'),(24517,'600','2013-02-24'),(24518,'601','2013-02-24'),(24519,'602','2013-02-24'),(24520,'603','2013-02-24'),(24521,'604','2013-02-24'),(24522,'605','2013-02-24'),(24523,'606','2013-02-24'),(24524,'607','2013-02-24'),(24525,'608','2013-02-24'),(24526,'609','2013-02-24'),(24527,'610','2013-02-24'),(24528,'611','2013-02-24'),(24529,'612','2013-02-24'),(24530,'613','2013-02-24'),(24531,'614','2013-02-24'),(24532,'615','2013-02-24'),(24533,'616','2013-02-24'),(24534,'617','2013-02-24'),(24535,'618','2013-02-24'),(24536,'619','2013-02-24'),(24537,'620','2013-02-24'),(24538,'621','2013-02-24'),(24539,'622','2013-02-24'),(24540,'623','2013-02-24'),(24541,'624','2013-02-24'),(24542,'625','2013-02-24'),(24543,'626','2013-02-24'),(24544,'627','2013-02-24'),(24545,'628','2013-02-24'),(24546,'629','2013-02-24'),(24547,'630','2013-02-24'),(24548,'631','2013-02-24'),(24549,'632','2013-02-24'),(24550,'633','2013-02-24'),(24551,'634','2013-02-24'),(24552,'635','2013-02-24'),(24553,'636','2013-02-24'),(24554,'637','2013-02-24'),(24555,'638','2013-02-24'),(24556,'639','2013-02-24'),(24557,'640','2013-02-24'),(24558,'641','2013-02-24'),(24559,'642','2013-02-24'),(24560,'643','2013-02-24'),(24561,'644','2013-02-24'),(24562,'645','2013-02-24'),(24563,'646','2013-02-24'),(24564,'647','2013-02-24'),(24565,'648','2013-02-24'),(24566,'649','2013-02-24'),(24567,'650','2013-02-24'),(24568,'651','2013-02-24'),(24569,'652','2013-02-24'),(24570,'653','2013-02-24'),(24571,'654','2013-02-24'),(24572,'655','2013-02-24'),(24573,'656','2013-02-24'),(24574,'657','2013-02-24'),(24575,'658','2013-02-24'),(24576,'659','2013-02-24'),(24577,'660','2013-02-24'),(24578,'661','2013-02-24'),(24579,'662','2013-02-24'),(24580,'663','2013-02-24'),(24581,'664','2013-02-24'),(24582,'665','2013-02-24'),(24583,'666','2013-02-24'),(24584,'667','2013-02-24'),(24585,'668','2013-02-24'),(24586,'669','2013-02-24'),(24587,'670','2013-02-24'),(24588,'671','2013-02-24'),(24589,'672','2013-02-24'),(24590,'673','2013-02-24'),(24591,'674','2013-02-24'),(24592,'675','2013-02-24'),(24593,'676','2013-02-24'),(24594,'677','2013-02-24'),(24595,'678','2013-02-24'),(24596,'679','2013-02-24'),(24597,'680','2013-02-24'),(24598,'681','2013-02-24'),(24599,'682','2013-02-24'),(24600,'683','2013-02-24'),(24601,'684','2013-02-24'),(24602,'685','2013-02-24'),(24603,'686','2013-02-24'),(24604,'687','2013-02-24'),(24605,'688','2013-02-24'),(24606,'689','2013-02-24'),(24607,'690','2013-02-24'),(24608,'691','2013-02-24'),(24609,'692','2013-02-24'),(24610,'693','2013-02-24'),(24611,'694','2013-02-24'),(24612,'695','2013-02-24'),(24613,'696','2013-02-24'),(24614,'697','2013-02-24'),(24615,'698','2013-02-24'),(24616,'699','2013-02-24'),(24617,'700','2013-02-24'),(24618,'701','2013-02-24'),(24619,'702','2013-02-24'),(24620,'703','2013-02-24'),(24621,'704','2013-02-24'),(24622,'705','2013-02-24'),(24623,'706','2013-02-24'),(24624,'707','2013-02-24'),(24625,'708','2013-02-24'),(24626,'709','2013-02-24'),(24627,'710','2013-02-24'),(24628,'711','2013-02-24'),(24629,'712','2013-02-24'),(24630,'713','2013-02-24'),(24631,'714','2013-02-24'),(24632,'715','2013-02-24'),(24633,'716','2013-02-24'),(24634,'717','2013-02-24'),(24635,'718','2013-02-24'),(24636,'719','2013-02-24'),(24637,'720','2013-02-24'),(24638,'721','2013-02-24'),(24639,'722','2013-02-24'),(24640,'723','2013-02-24'),(24641,'724','2013-02-24'),(24642,'725','2013-02-24'),(24643,'726','2013-02-24'),(24644,'727','2013-02-24'),(24645,'728','2013-02-24'),(24646,'729','2013-02-24'),(24647,'730','2013-02-24'),(24648,'731','2013-02-24'),(24649,'732','2013-02-24'),(24650,'733','2013-02-24'),(24651,'734','2013-02-24'),(24652,'735','2013-02-24'),(24653,'736','2013-02-24'),(24654,'737','2013-02-24'),(24655,'738','2013-02-24'),(24656,'739','2013-02-24'),(24657,'740','2013-02-24'),(24658,'741','2013-02-24'),(24659,'742','2013-02-24'),(24660,'743','2013-02-24'),(24661,'744','2013-02-24'),(24662,'745','2013-02-24'),(24663,'746','2013-02-24'),(24664,'747','2013-02-24'),(24665,'748','2013-02-24'),(24666,'749','2013-02-24'),(24667,'750','2013-02-24'),(24668,'751','2013-02-24'),(24669,'752','2013-02-24'),(24670,'753','2013-02-24'),(24671,'754','2013-02-24'),(24672,'755','2013-02-24'),(24673,'756','2013-02-24'),(24674,'757','2013-02-24'),(24675,'758','2013-02-24'),(24676,'759','2013-02-24'),(24677,'760','2013-02-24'),(24678,'761','2013-02-24'),(24679,'762','2013-02-24'),(24680,'763','2013-02-24'),(24681,'764','2013-02-24'),(24682,'765','2013-02-24'),(24683,'766','2013-02-24'),(24684,'767','2013-02-24'),(24685,'768','2013-02-24'),(24686,'769','2013-02-24'),(24687,'770','2013-02-24'),(24688,'771','2013-02-24'),(24689,'772','2013-02-24'),(24690,'773','2013-02-24'),(24691,'774','2013-02-24'),(24692,'775','2013-02-24'),(24693,'776','2013-02-24'),(24694,'777','2013-02-24'),(24695,'778','2013-02-24'),(24696,'779','2013-02-24'),(24697,'780','2013-02-24'),(24698,'781','2013-02-24'),(24699,'782','2013-02-24'),(24700,'783','2013-02-24'),(24701,'784','2013-02-24'),(24702,'785','2013-02-24'),(24703,'786','2013-02-24'),(24704,'787','2013-02-24'),(24705,'788','2013-02-24'),(24706,'789','2013-02-24'),(24707,'790','2013-02-24'),(24708,'791','2013-02-24'),(24709,'792','2013-02-24'),(24710,'793','2013-02-24'),(24711,'794','2013-02-24'),(24712,'795','2013-02-24'),(24713,'796','2013-02-24'),(24714,'797','2013-02-24'),(24715,'798','2013-02-24'),(24716,'799','2013-02-24'),(24717,'800','2013-02-24'),(24718,'801','2013-02-24'),(24719,'802','2013-02-24'),(24720,'803','2013-02-24'),(24721,'804','2013-02-24'),(24722,'805','2013-02-24'),(24723,'806','2013-02-24'),(24724,'807','2013-02-24'),(24725,'808','2013-02-24'),(24726,'809','2013-02-24'),(24727,'810','2013-02-24'),(24728,'811','2013-02-24'),(24729,'812','2013-02-24'),(24730,'813','2013-02-24'),(24731,'814','2013-02-24'),(24732,'815','2013-02-24'),(24733,'816','2013-02-24'),(24734,'817','2013-02-24'),(24735,'818','2013-02-24'),(24736,'819','2013-02-24'),(24737,'820','2013-02-24'),(24738,'821','2013-02-24'),(24739,'822','2013-02-24'),(24740,'823','2013-02-24'),(24741,'824','2013-02-24'),(24742,'825','2013-02-24'),(24743,'826','2013-02-24'),(24744,'827','2013-02-24'),(24745,'828','2013-02-24'),(24746,'829','2013-02-24'),(24747,'830','2013-02-24'),(24748,'831','2013-02-24'),(24749,'832','2013-02-24'),(24750,'833','2013-02-24'),(24751,'834','2013-02-24'),(24752,'835','2013-02-24'),(24753,'836','2013-02-24'),(24754,'837','2013-02-24'),(24755,'838','2013-02-24'),(24756,'839','2013-02-24'),(24757,'840','2013-02-24'),(24758,'841','2013-02-24'),(24759,'842','2013-02-24'),(24760,'843','2013-02-24'),(24761,'844','2013-02-24'),(24762,'845','2013-02-24'),(24763,'846','2013-02-24'),(24764,'847','2013-02-24'),(24765,'848','2013-02-24'),(24766,'849','2013-02-24'),(24767,'850','2013-02-24'),(24768,'851','2013-02-24'),(24769,'852','2013-02-24'),(24770,'853','2013-02-24'),(24771,'854','2013-02-24'),(24772,'855','2013-02-24'),(24773,'856','2013-02-24'),(24774,'857','2013-02-24'),(24775,'858','2013-02-24'),(24776,'859','2013-02-24'),(24777,'860','2013-02-24'),(24778,'861','2013-02-24'),(24779,'862','2013-02-24'),(24780,'863','2013-02-24'),(24781,'864','2013-02-24'),(24782,'865','2013-02-24'),(24783,'866','2013-02-24'),(24784,'867','2013-02-24'),(24785,'868','2013-02-24'),(24786,'869','2013-02-24'),(24787,'870','2013-02-24'),(24788,'871','2013-02-24'),(24789,'872','2013-02-24'),(24790,'873','2013-02-24'),(24791,'874','2013-02-24'),(24792,'875','2013-02-24'),(24793,'876','2013-02-24'),(24794,'877','2013-02-24'),(24795,'878','2013-02-24'),(24796,'879','2013-02-24'),(24797,'880','2013-02-24'),(24798,'881','2013-02-24'),(24799,'882','2013-02-24'),(24800,'883','2013-02-24'),(24801,'884','2013-02-24'),(24802,'885','2013-02-24'),(24803,'886','2013-02-24'),(24804,'887','2013-02-24'),(24805,'888','2013-02-24'),(24806,'889','2013-02-24'),(24807,'890','2013-02-24'),(24808,'891','2013-02-24'),(24809,'892','2013-02-24'),(24810,'893','2013-02-24'),(24811,'894','2013-02-24'),(24812,'895','2013-02-24'),(24813,'896','2013-02-24'),(24814,'897','2013-02-24'),(24815,'898','2013-02-24'),(24816,'899','2013-02-24'),(24817,'900','2013-02-24'),(24818,'901','2013-02-24'),(24819,'902','2013-02-24'),(24820,'903','2013-02-24'),(24821,'904','2013-02-24'),(24822,'905','2013-02-24'),(24823,'906','2013-02-24'),(24824,'907','2013-02-24'),(24825,'908','2013-02-24'),(24826,'909','2013-02-24'),(24827,'910','2013-02-24'),(24828,'911','2013-02-24'),(24829,'912','2013-02-24'),(24830,'913','2013-02-24'),(24831,'914','2013-02-24'),(24832,'915','2013-02-24'),(24833,'916','2013-02-24'),(24834,'917','2013-02-24'),(24835,'918','2013-02-24'),(24836,'919','2013-02-24'),(24837,'920','2013-02-24'),(24838,'921','2013-02-24'),(24839,'922','2013-02-24'),(24840,'923','2013-02-24'),(24841,'924','2013-02-24'),(24842,'925','2013-02-24'),(24843,'926','2013-02-24'),(24844,'927','2013-02-24'),(24845,'928','2013-02-24'),(24846,'929','2013-02-24'),(24847,'930','2013-02-24'),(24848,'931','2013-02-24'),(24849,'932','2013-02-24'),(24850,'933','2013-02-24'),(24851,'934','2013-02-24'),(24852,'935','2013-02-24'),(24853,'936','2013-02-24'),(24854,'937','2013-02-24'),(24855,'938','2013-02-24'),(24856,'939','2013-02-24'),(24857,'940','2013-02-24'),(24858,'941','2013-02-24'),(24859,'942','2013-02-24'),(24860,'943','2013-02-24'),(24861,'944','2013-02-24'),(24862,'945','2013-02-24'),(24863,'946','2013-02-24'),(24864,'947','2013-02-24'),(24865,'948','2013-02-24'),(24866,'949','2013-02-24'),(24867,'950','2013-02-24'),(24868,'951','2013-02-24'),(24869,'952','2013-02-24'),(24870,'953','2013-02-24'),(24871,'954','2013-02-24'),(24872,'955','2013-02-24'),(24873,'956','2013-02-24'),(24874,'957','2013-02-24'),(24875,'958','2013-02-24'),(24876,'959','2013-02-24'),(24877,'960','2013-02-24'),(24878,'961','2013-02-24'),(24879,'962','2013-02-24'),(24880,'963','2013-02-24'),(24881,'964','2013-02-24'),(24882,'965','2013-02-24'),(24883,'966','2013-02-24'),(24884,'967','2013-02-24'),(24885,'968','2013-02-24'),(24886,'969','2013-02-24'),(24887,'970','2013-02-24'),(24888,'971','2013-02-24'),(24889,'972','2013-02-24'),(24890,'973','2013-02-24'),(24891,'974','2013-02-24'),(24892,'975','2013-02-24'),(24893,'976','2013-02-24'),(24894,'977','2013-02-24'),(24895,'978','2013-02-24'),(24896,'979','2013-02-24'),(24897,'980','2013-02-24'),(24898,'981','2013-02-24'),(24899,'982','2013-02-24'),(24900,'983','2013-02-24'),(24901,'984','2013-02-24'),(24902,'985','2013-02-24'),(24903,'986','2013-02-24'),(24904,'987','2013-02-24'),(24905,'988','2013-02-24'),(24906,'989','2013-02-24'),(24907,'990','2013-02-24'),(24908,'991','2013-02-24'),(24909,'992','2013-02-24'),(24910,'993','2013-02-24'),(24911,'994','2013-02-24'),(24912,'995','2013-02-24'),(24913,'996','2013-02-24'),(24914,'997','2013-02-24'),(24915,'998','2013-02-24'),(24916,'999','2013-02-24');
/*!40000 ALTER TABLE `test1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-25 13:39:26