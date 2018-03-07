-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: toutiao
-- ------------------------------------------------------
-- Server version	5.5.57-log

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `entity_type` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entity_index` (`entity_id`,`entity_type`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Comment 0',1,1,1,'2018-03-05 15:11:54',0),(2,'Comment 1',1,1,1,'2018-03-05 15:11:54',0),(3,'Comment 2',1,1,1,'2018-03-05 15:11:54',0),(4,'Comment 0',2,2,1,'2018-03-05 15:11:54',0),(5,'Comment 1',2,2,1,'2018-03-05 15:11:54',0),(6,'Comment 2',2,2,1,'2018-03-05 15:11:54',0),(7,'Comment 0',3,3,1,'2018-03-05 15:11:54',0),(8,'Comment 1',3,3,1,'2018-03-05 15:11:54',0),(9,'Comment 2',3,3,1,'2018-03-05 15:11:54',0),(10,'Comment 0',4,4,1,'2018-03-05 15:11:54',0),(11,'Comment 1',4,4,1,'2018-03-05 15:11:54',0),(12,'Comment 2',4,4,1,'2018-03-05 15:11:54',0),(13,'Comment 0',5,5,1,'2018-03-05 15:11:54',0),(14,'Comment 1',5,5,1,'2018-03-05 15:11:54',0),(15,'Comment 2',5,5,1,'2018-03-05 15:11:54',0),(16,'Comment 0',6,6,1,'2018-03-05 15:11:54',0),(17,'Comment 1',6,6,1,'2018-03-05 15:11:54',0),(18,'Comment 2',6,6,1,'2018-03-05 15:11:54',0),(19,'Comment 0',7,7,1,'2018-03-05 15:11:54',0),(20,'Comment 1',7,7,1,'2018-03-05 15:11:54',0),(21,'Comment 2',7,7,1,'2018-03-05 15:11:54',0),(22,'Comment 0',8,8,1,'2018-03-05 15:11:54',0),(23,'Comment 1',8,8,1,'2018-03-05 15:11:54',0),(24,'Comment 2',8,8,1,'2018-03-05 15:11:54',0),(25,'Comment 0',9,9,1,'2018-03-05 15:11:55',0),(26,'Comment 1',9,9,1,'2018-03-05 15:11:55',0),(27,'Comment 2',9,9,1,'2018-03-05 15:11:55',0),(28,'Comment 0',10,10,1,'2018-03-05 15:11:55',0),(29,'Comment 1',10,10,1,'2018-03-05 15:11:55',0),(30,'Comment 2',10,10,1,'2018-03-05 15:11:55',0),(31,'Comment 0',11,11,1,'2018-03-05 15:11:55',0),(32,'Comment 1',11,11,1,'2018-03-05 15:11:55',0),(33,'Comment 2',11,11,1,'2018-03-05 15:11:55',0);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_ticket`
--

DROP TABLE IF EXISTS `login_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ticket` varchar(45) NOT NULL,
  `expired` datetime NOT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_UNIQUE` (`ticket`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_ticket`
--

LOCK TABLES `login_ticket` WRITE;
/*!40000 ALTER TABLE `login_ticket` DISABLE KEYS */;
INSERT INTO `login_ticket` VALUES (1,1,'TICKET1','2018-03-05 15:11:54',2),(2,2,'TICKET2','2018-03-05 20:11:54',2),(3,3,'TICKET3','2018-03-06 01:11:54',2),(4,4,'TICKET4','2018-03-06 06:11:54',2),(5,5,'TICKET5','2018-03-06 11:11:54',2),(6,6,'TICKET6','2018-03-06 16:11:54',2),(7,7,'TICKET7','2018-03-06 21:11:54',2),(8,8,'TICKET8','2018-03-07 02:11:54',2),(9,9,'TICKET9','2018-03-07 07:11:55',2),(10,10,'TICKET10','2018-03-07 12:11:55',2),(11,11,'TICKET11','2018-03-07 17:11:55',2),(12,12,'62dd7fb74fc34fc4b442d4405eed97bf','2018-03-06 15:12:45',1),(13,12,'e85052d22e9c468a9a88b062852d0d67','2018-03-06 15:13:03',0),(14,12,'bdc3972824c74f929c59deefb26ad95c','2018-03-06 15:30:39',1),(15,12,'a370c016bdbc418d9ad29f6cb1d6c049','2018-03-06 15:48:47',1),(16,12,'37412f256aa14a508f056e27e810480f','2018-03-06 15:54:21',1),(17,12,'923173d2afb2483896d8c3e8302cd097','2018-03-06 15:55:21',1),(18,12,'5890ebeb70774994b9b60b156d23a3ed','2018-03-06 16:02:31',1),(19,12,'5b76ff252d2b4e34bdfa44296fa57580','2018-03-06 16:18:41',1),(20,12,'09036162fd3840c090c2b08aece42ced','2018-03-06 16:29:28',1),(21,12,'322d47af99f04f498b4b164a22c1e8b2','2018-03-06 16:33:28',1),(22,13,'6d15b3132daf45be9bc44c001f417553','2018-03-06 16:38:06',0);
/*!40000 ALTER TABLE `login_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `content` text,
  `created_date` datetime DEFAULT NULL,
  `has_read` int(11) DEFAULT NULL,
  `conversation_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conversation_index` (`conversation_id`),
  KEY `created_date` (`created_date`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,3,12,'你上次的登陆IP异常','2018-03-05 15:13:03',0,'3_12'),(2,3,12,'你上次的登陆IP异常','2018-03-05 15:30:39',0,'3_12'),(3,3,12,'你上次的登陆IP异常','2018-03-05 15:48:47',0,'3_12'),(4,3,12,'你上次的登陆IP异常','2018-03-05 15:54:21',0,'3_12'),(5,3,12,'你上次的登陆IP异常','2018-03-05 15:55:21',0,'3_12'),(6,3,11,'用户x 赞了你的资讯,http://127.0.0.1:8080/news/11','2018-03-05 15:55:48',0,'3_11'),(7,3,8,'用户x 赞了你的资讯,http://127.0.0.1:8080/news/8','2018-03-05 15:55:53',0,'3_8'),(8,3,5,'用户x 赞了你的资讯,http://127.0.0.1:8080/news/5','2018-03-05 15:55:59',0,'3_5'),(9,3,12,'你上次的登陆IP异常','2018-03-05 16:02:31',0,'3_12'),(10,3,12,'你上次的登陆IP异常','2018-03-05 16:18:41',0,'3_12'),(11,3,12,'你上次的登陆IP异常','2018-03-05 16:29:28',0,'3_12'),(12,3,12,'你上次的登陆IP异常','2018-03-05 16:33:28',0,'3_12'),(13,3,4,'用户x 赞了你的资讯,http://127.0.0.1:8080/news/4','2018-03-05 16:37:42',0,'3_4'),(14,3,4,'用户bao 赞了你的资讯,http://127.0.0.1:8080/news/4','2018-03-05 16:38:09',0,'3_4');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `link` varchar(256) NOT NULL DEFAULT '',
  `image` varchar(256) NOT NULL DEFAULT '',
  `like_count` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'TITLE{0}','http://www.nowcoder.com/0.html','http://images.nowcoder.com/head/437m.png',1,0,'2018-03-05 15:11:54',1),(2,'TITLE{1}','http://www.nowcoder.com/1.html','http://images.nowcoder.com/head/292m.png',0,1,'2018-03-05 20:11:54',2),(3,'TITLE{2}','http://www.nowcoder.com/2.html','http://images.nowcoder.com/head/840m.png',3,2,'2018-03-06 01:11:54',3),(4,'TITLE{3}','http://www.nowcoder.com/3.html','http://images.nowcoder.com/head/155m.png',2,3,'2018-03-06 06:11:54',4),(5,'TITLE{4}','http://www.nowcoder.com/4.html','http://images.nowcoder.com/head/0m.png',0,4,'2018-03-06 11:11:54',5),(6,'TITLE{5}','http://www.nowcoder.com/5.html','http://images.nowcoder.com/head/404m.png',0,5,'2018-03-06 16:11:54',6),(7,'TITLE{6}','http://www.nowcoder.com/6.html','http://images.nowcoder.com/head/586m.png',0,6,'2018-03-06 21:11:54',7),(8,'TITLE{7}','http://www.nowcoder.com/7.html','http://images.nowcoder.com/head/646m.png',0,7,'2018-03-07 02:11:54',8),(9,'TITLE{8}','http://www.nowcoder.com/8.html','http://images.nowcoder.com/head/234m.png',0,8,'2018-03-07 07:11:55',9),(10,'TITLE{9}','http://www.nowcoder.com/9.html','http://images.nowcoder.com/head/364m.png',0,9,'2018-03-07 12:11:55',10),(11,'TITLE{10}','http://www.nowcoder.com/10.html','http://images.nowcoder.com/head/46m.png',0,10,'2018-03-07 17:11:55',11);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `salt` varchar(32) NOT NULL DEFAULT '',
  `head_url` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'USER1','newpassword','','http://images.nowcoder.com/head/498t.png'),(3,'USER2','newpassword','','http://images.nowcoder.com/head/779t.png'),(4,'USER3','newpassword','','http://images.nowcoder.com/head/798t.png'),(5,'USER4','newpassword','','http://images.nowcoder.com/head/708t.png'),(6,'USER5','newpassword','','http://images.nowcoder.com/head/844t.png'),(7,'USER6','newpassword','','http://images.nowcoder.com/head/569t.png'),(8,'USER7','newpassword','','http://images.nowcoder.com/head/220t.png'),(9,'USER8','newpassword','','http://images.nowcoder.com/head/590t.png'),(10,'USER9','newpassword','','http://images.nowcoder.com/head/249t.png'),(11,'USER10','newpassword','','http://images.nowcoder.com/head/178t.png'),(12,'x','2B055DD942781A10354D837876528D8C','361e3','http://images.nowcoder.com/head/409t.png'),(13,'bao','D25A297603AA0F5C89F291AB8456BA17','cd265','http://images.nowcoder.com/head/872t.png');
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

-- Dump completed on 2018-03-08  0:11:29
