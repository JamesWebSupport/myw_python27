-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: mywservice
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'administrator'),(2,'agent'),(3,'client');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,9),(6,1,10),(7,1,11),(8,1,12),(9,1,17),(10,1,18),(11,1,19),(12,1,20),(13,1,21),(14,1,22),(15,1,23),(16,1,24),(17,1,25),(18,1,26),(19,1,27),(20,1,28),(21,1,29),(22,1,30),(23,1,31),(24,1,32),(25,1,33),(26,1,34),(27,1,35),(28,1,36),(29,2,32),(30,2,1),(31,2,2),(32,2,3),(33,2,4),(34,2,33),(35,2,34),(36,2,35),(37,2,36),(38,2,21),(39,2,22),(40,2,23),(41,2,24),(42,2,29),(43,2,30),(44,2,31),(45,3,32),(46,3,1),(47,3,2),(48,3,3),(49,3,4),(50,3,30),(51,3,41),(52,3,42),(53,3,43),(54,3,44);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add post',1,'add_post'),(2,'Can change post',1,'change_post'),(3,'Can delete post',1,'delete_post'),(4,'Can view post',1,'view_post'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session'),(29,'Can add profile',8,'add_profile'),(30,'Can change profile',8,'change_profile'),(31,'Can delete profile',8,'delete_profile'),(32,'Can view profile',8,'view_profile'),(33,'Can add photo',9,'add_photo'),(34,'Can change photo',9,'change_photo'),(35,'Can delete photo',9,'delete_photo'),(36,'Can view photo',9,'view_photo'),(37,'Can add subject',10,'add_subject'),(38,'Can change subject',10,'change_subject'),(39,'Can delete subject',10,'delete_subject'),(40,'Can view subject',10,'view_subject'),(41,'Can add comment',11,'add_comment'),(42,'Can change comment',11,'change_comment'),(43,'Can delete comment',11,'delete_comment'),(44,'Can view comment',11,'view_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$QHABPggVRpnl$QiY/a13dYy27IqC/6j9UdDQrcL0gPCgyJCmYscXDNtk=','2019-07-22 13:20:50.049370',1,'james','','','fengyan614@gmail.com',1,1,'2019-04-23 12:05:59.000000'),(2,'Ying0229',NULL,0,'testOne','','','fe_yan@yahoo.com',0,1,'2019-04-23 12:46:59.000000'),(3,'Ying0229',NULL,0,'testTwo','','','fe_yan@yahoo.com',0,1,'2019-04-23 12:49:12.000000'),(4,'pbkdf2_sha256$150000$fj6x3nWrGreb$Nw1T24y9jkTPGnKg+Se8c2IQZzN/F6a5sX4veYFutBo=','2019-06-12 13:12:13.224209',0,'testthree','','','fe_yan@yahoo.com',0,1,'2019-04-29 00:16:05.000000'),(5,'pbkdf2_sha256$150000$PPEUlStYeUhd$tngR7iB5XGNxmZNxX0gFTg2ggOOn0UuTVLXWA6XCqIs=','2019-06-04 11:38:51.000000',0,'testtfour','','','fe_yan@yahoo.com',0,1,'2019-04-29 00:17:10.000000'),(6,'pbkdf2_sha256$150000$OnqrEfwf4wo0$3f63BTYDOKobf4OTMWwh/o9JqF9RvAAYIs3upM9KcPw=',NULL,0,'testsix','','','fe_yan@yahoo.com',0,1,'2019-06-10 20:31:49.161255'),(7,'pbkdf2_sha256$150000$un6U9QRXtgsl$bFx5lUR/C6dbP1YNphNTcyAB0KDgrMi3CIO4gtGD318=',NULL,0,'testseven','','','fe_yan@yahoo.com',0,1,'2019-06-11 01:33:00.794402'),(8,'pbkdf2_sha256$150000$i8Drfi3UvUiD$Bce/r99VNR71iqJx+L4v3+TO+hSKli1EtaN/F2ryA5M=',NULL,0,'testeight','','','fe_yan@yahoo.com',0,1,'2019-06-11 01:40:58.845075'),(9,'pbkdf2_sha256$150000$CfXDzgnb5W0L$Ho+VOlPj9n4wvGMJPT2FiPO16OMje08ZxiY0krbQljM=',NULL,0,'testten','','','fe_yan@yahoo.com',0,1,'2019-06-11 02:33:34.023327'),(10,'pbkdf2_sha256$150000$ssd6gDmiXKfM$G7uAGlq5mZt+TO0mb8BnCt2LYi3pOJLc1s8HMAhyTb4=',NULL,0,'testten1','','','fe_yan@yahoo.com',0,1,'2019-06-11 02:55:44.649446'),(11,'pbkdf2_sha256$150000$EvWl00HZdir0$z99DiYTiIftBBBVFNo5scrQFO/V5TsqoxI8hj/fleZQ=','2019-06-12 19:21:37.986512',0,'test12','','','fe_yan@yahoo.com',0,1,'2019-06-11 12:22:11.005123'),(12,'pbkdf2_sha256$150000$bjH3XBHEMlON$ucPFuIDvpBz2pMgihlLUyethVotfDx60F/yebIJ69qg=',NULL,0,'test13','','','fe_yan@yahoo.com',0,1,'2019-06-11 12:40:27.155010'),(13,'pbkdf2_sha256$150000$83xWb1QHANPz$ILRfZJUBOMkdHwrPfaYTFC+7ptEDZ7fugNZM2AkKtgA=',NULL,0,'test15','','','fe_yan@yahoo.com',0,1,'2019-06-12 01:36:32.200985'),(14,'pbkdf2_sha256$150000$ZQzTtqTELXdy$B/4DBcOaulUwsx6BylC2Xkz08niqXwopBtTLHL8PCsE=',NULL,0,'test16','','','fe_yan@yahoo.com',0,1,'2019-06-12 01:39:44.618659');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1),(2,2,3),(3,5,3);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_created_by_id_bb8e38a4` (`author_id`),
  KEY `blog_comment_post_id_580e96ef` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
INSERT INTO `blog_comment` VALUES (6,'great','2019-06-12 13:18:11.131155','2019-06-12 19:28:53.160075',11,15),(7,'nice','2019-06-12 13:18:11.131155','2019-06-12 19:29:02.460192',11,15),(4,'11','2019-06-06 19:55:56.637698','2019-06-06 19:56:06.351181',1,11),(5,'12','2019-06-06 20:43:20.395105','2019-06-06 20:44:16.527233',1,9),(8,'haha','2019-06-12 13:18:11.131155','2019-06-12 19:29:18.596855',11,13),(9,'ca','2019-06-12 20:04:44.858789','2019-06-13 00:47:57.356136',11,4),(10,'fe','2019-06-12 20:04:44.858789','2019-06-13 00:48:02.734653',11,4),(11,'32','2019-06-12 20:04:44.858789','2019-06-13 00:48:09.389459',11,4),(12,'erwer','2019-06-12 20:04:44.858789','2019-06-13 00:48:15.087295',11,4),(13,'weewwe','2019-06-13 02:17:06.587520','2019-06-13 02:33:33.009298',11,3),(14,'weewwe','2019-06-13 02:17:06.587520','2019-06-13 02:33:34.628056',11,3),(15,'weewwe','2019-06-13 02:17:06.587520','2019-06-13 02:33:34.873245',11,3),(16,'weewwe','2019-06-13 02:17:06.587520','2019-06-13 02:33:44.572112',11,3),(17,'weewwe','2019-06-13 02:17:06.587520','2019-06-13 02:33:44.849248',11,3),(18,'weewwe','2019-06-13 02:17:06.587520','2019-06-13 02:33:45.075117',11,3),(19,'weewwe','2019-06-13 02:17:06.587520','2019-06-13 02:33:49.611998',11,3),(20,'weewwe','2019-06-13 02:17:06.587520','2019-06-13 02:33:58.983465',11,3),(21,'weewwe','2019-06-13 02:17:06.587520','2019-06-13 02:37:33.906076',11,3),(22,'that is greate','2019-06-19 13:12:14.796403','2019-06-19 13:13:29.501435',1,4),(23,'6th comments now','2019-06-19 13:12:14.796403','2019-06-19 13:13:53.270825',1,4),(24,'it is nice topic','2019-06-20 23:09:01.713201','2019-06-20 23:09:51.343342',1,16),(25,'how about first n records','2019-06-20 23:19:04.174621','2019-06-20 23:20:53.109352',1,17),(26,'django query get last n records comments','2019-06-20 23:59:01.297138','2019-06-21 00:02:01.074097',1,17),(27,'p3 comments','2019-06-20 23:59:01.297138','2019-06-21 00:03:02.298008',1,3),(28,'This is very nice website.','2019-06-20 23:59:01.297138','2019-06-21 00:04:15.848924',1,16),(29,'where i am','2019-06-20 23:59:01.297138','2019-06-21 00:18:45.416345',1,16),(30,'hha','2019-06-21 00:23:53.243179','2019-06-21 00:27:24.611451',1,3),(31,'new comments','2019-06-21 12:33:57.139803','2019-06-22 01:31:08.416297',1,17);
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_author_id_dd7a8485` (`author_id`),
  KEY `blog_post_subject_id_b05d3458` (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (14,'阿斯大法','Another side effect of using commit=False is seen when your model has a many-to-many relation with another model. If your model has a many-to-many relation and you specify commit=False when you save a form, Django cannot immediately save the form data for the many-to-many relation. This is because it isn’t possible to save many-to-many data for an instance until the instance exists in the database.\r\n\r\nTo work around this problem, every time you save',4,'2019-06-12 13:18:11.130156','2019-06-12 19:18:55.525595',1),(15,'Considerations regarding','Error messages defined on model fields are only used when the ValidationError is raised during the model validation step and no corresponding error messages are defined at the form level.\r\n\r\nYou can override the error messages from NON_FIELD_ERRORS raised by model validation by adding the NON_FIELD_ERRORS key to the error_messages dictionary of the ModelForm’s inner Meta class:',11,'2019-06-12 13:18:11.130156','2019-06-12 19:22:08.724851',2),(3,'p3 title','p3 contenThis index provides an alternate organization of the reference documentation for class-based views. For each view, the effective attributes and methods from the class tree are represented under that view. For the reference documentation organized by the class which defines the behaviort',5,'2019-05-10 00:57:01.000000','2019-05-10 13:06:52.824045',3),(4,'How to sharepoint','We still haven’t really explored Django’s ORM, but the code {{ post.created_by.posts.count }} is executing a select count in the database. Even though the result is correct, it is a bad approach\r\n\r\n Right now it’s causing several unnecessary queries in the database. But hey, don’t worry about that right now. Let’s focus on how we interact with the application. Later on, we are going to improve this code, and how to diagnose heavy queries.\r\n\r\nI have updated it!',1,'2019-05-10 00:57:01.000000','2019-06-19 11:31:13.096501',2),(5,'the title one','Let’s implement now the reply post view so that we can add more data and progress with the implementation and tests.',4,'2019-05-10 00:57:01.000000','2019-05-10 13:06:16.065057',2),(13,'恒生','If an optional field doesn’t appear in the form’s data, the resulting model instance uses the model field default, if there is one, for that field. This behavior doesn’t apply to fields that use CheckboxInput, CheckboxSelectMultiple, or SelectMultiple (or any custom widget whose value_omitted_from_data() method always returns False) since an unchecked checkbox and unselected <select',4,'2019-06-12 13:18:11.130156','2019-06-12 19:18:27.687235',1),(6,'2019 June','It is a raining day',1,'2019-06-05 21:29:38.215040','2019-06-05 21:30:30.638199',2),(7,'D day','75 years ago, D Day!',1,'2019-06-05 21:29:38.215040','2019-06-05 23:20:50.559782',3),(11,'my birthday','june 14\r\n\r\n\r\ni change the line\r\n\r\nthe second par',1,'2019-06-05 23:34:54.349060','2019-06-19 11:39:05.685037',1),(9,'Python if and else','make sure indent format',1,'2019-06-05 23:27:22.885221','2019-06-05 23:28:21.836003',2),(16,'Python For Loops','A for loop is used for iterating over a sequence (that is either a list, a tuple, a dictionary, a set, or a string).\r\n\r\nThis is less like the for keyword in other programming languages, and works more like an iterator method as found in other object-orientated programming languages.\r\n\r\nWith the for loop we can execute a set of statements, once for each item in a list, tuple, set etc.',1,'2019-06-20 21:29:47.533279','2019-06-20 23:04:29.140485',1),(17,'django query get last n records','last_ten = Messages.objects.filter(since=since).order_by(\'-id\')[:10]\r\n\r\nupdated',1,'2019-06-20 23:19:04.174621','2019-06-22 01:30:53.849907',1),(18,'kaiyan','no',1,'2019-06-21 12:33:57.139803','2019-06-22 01:30:09.902407',1);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_subject`
--

DROP TABLE IF EXISTS `blog_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_subject`
--

LOCK TABLES `blog_subject` WRITE;
/*!40000 ALTER TABLE `blog_subject` DISABLE KEYS */;
INSERT INTO `blog_subject` VALUES (1,'Django','A Python Framework'),(2,'SharePoint','Content Management Tools'),(3,'Travel','Look Around the World');
/*!40000 ALTER TABLE `blog_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-05-02 01:36:59.959144','1','testOne Profile',1,'[{\"added\": {}}]',8,1),(2,'2019-05-02 01:37:12.840375','2','testtfour Profile',1,'[{\"added\": {}}]',8,1),(3,'2019-05-02 01:37:22.268903','3','testthree Profile',1,'[{\"added\": {}}]',8,1),(4,'2019-05-02 01:37:33.457727','4','james Profile',1,'[{\"added\": {}}]',8,1),(5,'2019-05-02 01:37:45.439875','5','testTwo Profile',1,'[{\"added\": {}}]',8,1),(6,'2019-05-07 01:05:24.261510','1','001',1,'[{\"added\": {}}]',9,1),(7,'2019-05-07 01:06:19.046738','1','002',2,'[{\"changed\": {\"fields\": [\"title\", \"alt\", \"image\"]}}]',9,1),(8,'2019-05-07 01:06:58.851104','2','001',1,'[{\"added\": {}}]',9,1),(9,'2019-05-07 01:07:32.142011','3','003',1,'[{\"added\": {}}]',9,1),(10,'2019-05-07 01:07:57.524956','4','004',1,'[{\"added\": {}}]',9,1),(11,'2019-05-07 02:31:32.913871','5','001',1,'[{\"added\": {}}]',9,1),(12,'2019-05-07 02:32:30.778203','6','002',1,'[{\"added\": {}}]',9,1),(13,'2019-05-07 02:32:46.843276','7','003',1,'[{\"added\": {}}]',9,1),(14,'2019-05-07 02:33:00.218113','8','004',1,'[{\"added\": {}}]',9,1),(15,'2019-05-07 02:33:24.652563','9','005',1,'[{\"added\": {}}]',9,1),(16,'2019-05-07 02:34:15.554503','5','001',3,'',9,1),(17,'2019-05-07 02:34:20.284532','9','005',3,'',9,1),(18,'2019-05-07 02:34:52.179508','8','004',3,'',9,1),(19,'2019-05-07 02:34:57.098254','7','003',3,'',9,1),(20,'2019-05-07 02:35:02.714333','6','002',3,'',9,1),(21,'2019-05-07 02:41:45.774689','10','001',1,'[{\"added\": {}}]',9,1),(22,'2019-05-07 02:42:01.942366','11','002',1,'[{\"added\": {}}]',9,1),(23,'2019-05-07 02:46:33.713046','12','001',1,'[{\"added\": {}}]',9,1),(24,'2019-05-07 02:46:48.078688','13','002',1,'[{\"added\": {}}]',9,1),(25,'2019-05-07 02:56:40.564699','13','002',3,'',9,1),(26,'2019-05-07 02:56:43.999716','12','001',3,'',9,1),(27,'2019-05-07 03:02:23.912038','14','1',3,'',9,1),(28,'2019-05-07 03:02:28.559900','15','1',3,'',9,1),(29,'2019-05-07 03:03:45.626147','16','001',3,'',9,1),(30,'2019-05-07 03:03:59.625254','17','001',1,'[{\"added\": {}}]',9,1),(31,'2019-05-07 03:04:15.622950','18','002',1,'[{\"added\": {}}]',9,1),(32,'2019-05-07 03:13:04.481938','18','002',3,'',9,1),(33,'2019-05-07 03:13:11.337913','17','001',3,'',9,1),(34,'2019-05-07 03:13:34.912751','19','001',1,'[{\"added\": {}}]',9,1),(35,'2019-05-07 03:13:54.111891','20','002',1,'[{\"added\": {}}]',9,1),(36,'2019-05-08 00:08:34.370803','1','administrator',1,'[{\"added\": {}}]',4,1),(37,'2019-05-08 00:10:17.226351','2','agent',1,'[{\"added\": {}}]',4,1),(38,'2019-05-08 00:11:31.440385','3','client',1,'[{\"added\": {}}]',4,1),(39,'2019-05-08 10:49:19.145183','19','001',3,'',9,1),(40,'2019-05-08 10:49:26.051217','20','002',3,'',9,1),(41,'2019-05-08 10:55:46.288787','21','001',1,'[{\"added\": {}}]',9,1),(42,'2019-05-08 10:56:19.824469','22','001',1,'[{\"added\": {}}]',9,1),(43,'2019-05-08 10:56:48.235137','23','002',1,'[{\"added\": {}}]',9,1),(44,'2019-05-08 10:57:00.318745','21','001',3,'',9,1),(45,'2019-05-08 10:57:49.485806','24','003',1,'[{\"added\": {}}]',9,1),(46,'2019-05-08 10:58:12.940613','25','004',1,'[{\"added\": {}}]',9,1),(47,'2019-05-08 10:58:49.569595','26','005',1,'[{\"added\": {}}]',9,1),(48,'2019-05-10 00:59:12.237919','1','Django',1,'[{\"added\": {}}]',10,1),(49,'2019-05-10 00:59:42.137737','2','SharePoint',1,'[{\"added\": {}}]',10,1),(50,'2019-05-10 01:01:07.352404','3','Travel',1,'[{\"added\": {}}]',10,1),(51,'2019-05-10 01:01:32.856622','5','the title one',2,'[{\"changed\": {\"fields\": [\"subject\"]}}]',1,1),(52,'2019-05-10 01:01:42.614708','4','How to sharepoint',2,'[{\"changed\": {\"fields\": [\"subject\"]}}]',1,1),(53,'2019-05-10 01:02:26.855601','3','p3 title',2,'[{\"changed\": {\"fields\": [\"subject\"]}}]',1,1),(54,'2019-05-10 01:02:39.458327','2','p2 title',2,'[{\"changed\": {\"fields\": [\"subject\"]}}]',1,1),(55,'2019-05-10 10:46:50.889751','1','p2 title_comment',1,'[{\"added\": {}}]',11,1),(56,'2019-05-10 10:47:05.775001','2','p2 title_comment',1,'[{\"added\": {}}]',11,1),(57,'2019-05-10 10:47:54.530204','3','p2 title_comment',1,'[{\"added\": {}}]',11,1),(58,'2019-05-10 13:06:16.068056','5','the title one',2,'[{\"changed\": {\"fields\": [\"subject\"]}}]',1,1),(59,'2019-05-10 13:06:37.037118','4','How to sharepoint',2,'[{\"changed\": {\"fields\": [\"subject\"]}}]',1,1),(60,'2019-05-10 13:06:52.826061','3','p3 title',2,'[{\"changed\": {\"fields\": [\"subject\"]}}]',1,1),(61,'2019-05-10 13:07:03.599946','2','p2 title',2,'[{\"changed\": {\"fields\": [\"subject\"]}}]',1,1),(62,'2019-06-04 11:06:25.200509','27','c1',1,'[{\"added\": {}}]',9,1),(63,'2019-06-04 11:06:52.446307','28','c2',1,'[{\"added\": {}}]',9,1),(64,'2019-06-04 11:06:56.800706','28','c2',2,'[]',9,1),(65,'2019-06-04 11:07:15.480267','29','c3',1,'[{\"added\": {}}]',9,1),(66,'2019-06-04 11:26:51.640766','1','james',2,'[]',5,1),(67,'2019-06-04 11:28:11.369061','4','james Profile',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(68,'2019-06-04 11:30:24.054554','1','administrator',2,'[]',4,1),(69,'2019-06-04 11:30:54.159192','1','james',2,'[{\"changed\": {\"fields\": [\"groups\", \"user_permissions\"]}}]',5,1),(70,'2019-06-04 11:31:25.109992','5','testTwo Profile',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(71,'2019-06-04 11:32:27.077182','1','administrator',2,'[]',4,1),(72,'2019-06-04 11:33:19.817749','2','testOne',2,'[]',5,1),(73,'2019-06-04 11:33:48.684221','5','testtfour',2,'[]',5,1),(74,'2019-06-05 12:28:38.954043','3','client',2,'[{\"changed\": {\"fields\": [\"permissions\"]}}]',4,1),(75,'2019-06-05 12:29:22.689391','2','testOne',2,'[{\"changed\": {\"fields\": [\"groups\"]}}]',5,1),(76,'2019-06-05 12:30:13.367108','5','testtfour',2,'[{\"changed\": {\"fields\": [\"groups\"]}}]',5,1),(77,'2019-06-05 12:30:25.791873','4','testthree',2,'[]',5,1),(78,'2019-06-05 12:30:33.200040','3','testTwo',2,'[]',5,1),(79,'2019-06-11 12:39:21.423119','6','testseven Profile',1,'[{\"added\": {}}]',8,1),(80,'2019-06-12 19:20:21.602772','8','test12 Profile',1,'[{\"added\": {}}]',8,1),(81,'2019-06-12 19:20:34.447363','9','test13 Profile',1,'[{\"added\": {}}]',8,1),(82,'2019-06-12 19:20:50.010783','10','testeight Profile',1,'[{\"added\": {}}]',8,1),(83,'2019-07-18 12:20:14.080210','1','james',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',5,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'blog','post'),(2,'admin','logentry'),(3,'auth','permission'),(4,'auth','group'),(5,'auth','user'),(6,'contenttypes','contenttype'),(7,'sessions','session'),(8,'user','profile'),(9,'photo','photo'),(10,'blog','subject'),(11,'blog','comment');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-04-23 12:03:55.609150'),(2,'auth','0001_initial','2019-04-23 12:03:56.368233'),(3,'admin','0001_initial','2019-04-23 12:03:58.839767'),(4,'admin','0002_logentry_remove_auto_add','2019-04-23 12:03:59.529614'),(5,'admin','0003_logentry_add_action_flag_choices','2019-04-23 12:03:59.545238'),(6,'contenttypes','0002_remove_content_type_name','2019-04-23 12:03:59.729809'),(7,'auth','0002_alter_permission_name_max_length','2019-04-23 12:03:59.809471'),(8,'auth','0003_alter_user_email_max_length','2019-04-23 12:03:59.931510'),(9,'auth','0004_alter_user_username_opts','2019-04-23 12:03:59.947132'),(10,'auth','0005_alter_user_last_login_null','2019-04-23 12:04:00.076875'),(11,'auth','0006_require_contenttypes_0002','2019-04-23 12:04:00.080874'),(12,'auth','0007_alter_validators_add_error_messages','2019-04-23 12:04:00.095862'),(13,'auth','0008_alter_user_username_max_length','2019-04-23 12:04:00.309128'),(14,'auth','0009_alter_user_last_name_max_length','2019-04-23 12:04:00.625439'),(15,'auth','0010_alter_group_name_max_length','2019-04-23 12:04:00.714725'),(16,'auth','0011_update_proxy_permissions','2019-04-23 12:04:00.745973'),(17,'blog','0001_initial','2019-04-23 12:04:00.877181'),(18,'blog','0002_auto_20190423_0759','2019-04-23 12:04:01.009432'),(19,'blog','0003_auto_20190423_0800','2019-04-23 12:04:01.300509'),(20,'blog','0004_auto_20190423_0803','2019-04-23 12:04:01.313499'),(21,'sessions','0001_initial','2019-04-23 12:04:01.530344'),(22,'blog','0005_auto_20190426_0628','2019-04-26 10:28:28.729670'),(23,'user','0001_initial','2019-04-26 10:28:29.604605'),(24,'blog','0006_auto_20190501_1642','2019-05-01 20:42:37.257867'),(25,'blog','0007_auto_20190501_1952','2019-05-01 23:53:03.277031'),(26,'blog','0008_auto_20190501_2135','2019-05-02 01:35:22.035375'),(27,'blog','0009_auto_20190503_0842','2019-05-03 12:43:06.038174'),(28,'photo','0001_initial','2019-05-03 12:43:06.522576'),(29,'blog','0010_auto_20190506_2220','2019-05-07 02:20:48.774750'),(30,'photo','0002_auto_20190506_2220','2019-05-07 02:20:48.966378'),(31,'blog','0011_auto_20190508_0655','2019-05-08 10:55:12.005247'),(32,'photo','0003_auto_20190508_0655','2019-05-08 10:55:12.005247'),(33,'blog','0012_auto_20190509_1809','2019-05-09 22:09:18.542237'),(34,'photo','0004_auto_20190509_1809','2019-05-09 22:09:19.499693'),(35,'blog','0013_auto_20190509_2057','2019-05-10 00:57:29.271245'),(36,'photo','0005_auto_20190509_2057','2019-05-10 00:57:30.599286'),(37,'blog','0014_auto_20190510_0902','2019-05-10 13:02:56.332740'),(38,'photo','0006_auto_20190510_0902','2019-05-10 13:02:56.692090'),(39,'blog','0015_auto_20190510_1524','2019-05-10 19:25:25.656614'),(40,'photo','0007_auto_20190510_1524','2019-05-10 19:25:25.668607');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('s6rq1uoigqkafw9df4peetktm2w796bq','NzM2ZTdhNTE3ZGJmMDI1MjE3OTA5OGIxYTYzZDc1Y2FjY2E3ZjJhYzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNTZkZTFhOTFhMzA2MzRmMzkzODBkYWRhM2YyZjU1ZDRmYTRlOTFiIn0=','2019-05-16 10:47:22.141142'),('08e76wo8n5w3e7avxfxu6uivxm4vktbz','NDY2M2Y0NGM1MzM0YjQyZjIzZWJmMGNmZDJkOWZkYjU3NGFjMmRkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTA1OWE5OWQ5ZGY2MmQzNDc5YzU1OTIwMDZkNmNlOTJlYjg3ZTE2In0=','2019-05-21 01:04:27.539501'),('8zx1f26n4pxy0h1z7yshe0rxoufwnz4l','NDY2M2Y0NGM1MzM0YjQyZjIzZWJmMGNmZDJkOWZkYjU3NGFjMmRkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTA1OWE5OWQ5ZGY2MmQzNDc5YzU1OTIwMDZkNmNlOTJlYjg3ZTE2In0=','2019-05-24 23:14:05.756564'),('o1t986b5rqx0prb5qm2wdl4d0928log8','ODMwZjAyM2RhNGEyNzc2ZmUxMzNjMDhjMmM4ZjBmMDU0YjM0ZGEyZDp7fQ==','2019-06-26 19:19:33.202107'),('qpl29k1hajl0sistu58qcos5swphqqjx','NDY2M2Y0NGM1MzM0YjQyZjIzZWJmMGNmZDJkOWZkYjU3NGFjMmRkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTA1OWE5OWQ5ZGY2MmQzNDc5YzU1OTIwMDZkNmNlOTJlYjg3ZTE2In0=','2019-07-02 12:13:38.974832'),('30co2pt8l72z1ka7df3zn45i1fyduiq7','NDY2M2Y0NGM1MzM0YjQyZjIzZWJmMGNmZDJkOWZkYjU3NGFjMmRkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTA1OWE5OWQ5ZGY2MmQzNDc5YzU1OTIwMDZkNmNlOTJlYjg3ZTE2In0=','2019-06-25 02:32:09.551050'),('lz5ab0q2qfd9plk5uno5ykef3h51wcur','YzcyZTZlYzA2MjQ4Mjc5MGEzN2I0Y2YxN2VmMzRkMDc2NzM1NmIwNjp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWE5MTczZmE5OWJkZTY0YjZiM2U5ZTAxOGY4ZDE4MjRhNjI3MjNkMyJ9','2019-06-26 19:21:37.995506'),('cr6l0gm1x481738m38nwlsia2urj9qo9','NDY2M2Y0NGM1MzM0YjQyZjIzZWJmMGNmZDJkOWZkYjU3NGFjMmRkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTA1OWE5OWQ5ZGY2MmQzNDc5YzU1OTIwMDZkNmNlOTJlYjg3ZTE2In0=','2019-07-03 11:21:44.937976'),('h40sr1vpz2nl2l7f4hbg477eskkoweq2','NDY2M2Y0NGM1MzM0YjQyZjIzZWJmMGNmZDJkOWZkYjU3NGFjMmRkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTA1OWE5OWQ5ZGY2MmQzNDc5YzU1OTIwMDZkNmNlOTJlYjg3ZTE2In0=','2019-07-08 11:32:46.391937'),('1mmg1p2lal6si0sr2wfjxmk91zn1rlxg','NDY2M2Y0NGM1MzM0YjQyZjIzZWJmMGNmZDJkOWZkYjU3NGFjMmRkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTA1OWE5OWQ5ZGY2MmQzNDc5YzU1OTIwMDZkNmNlOTJlYjg3ZTE2In0=','2019-07-31 19:39:23.108931'),('s443qg4pbanvm9kcdo60roynuwuv9q63','NDY2M2Y0NGM1MzM0YjQyZjIzZWJmMGNmZDJkOWZkYjU3NGFjMmRkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTA1OWE5OWQ5ZGY2MmQzNDc5YzU1OTIwMDZkNmNlOTJlYjg3ZTE2In0=','2019-08-01 01:26:05.197440'),('lktu8w4skpwfv0g2cs4vtrydrp6wu4s7','NDY2M2Y0NGM1MzM0YjQyZjIzZWJmMGNmZDJkOWZkYjU3NGFjMmRkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTA1OWE5OWQ5ZGY2MmQzNDc5YzU1OTIwMDZkNmNlOTJlYjg3ZTE2In0=','2019-08-05 13:20:50.724616');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_photo`
--

DROP TABLE IF EXISTS `photo_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_sm` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_photo`
--

LOCK TABLES `photo_photo` WRITE;
/*!40000 ALTER TABLE `photo_photo` DISABLE KEYS */;
INSERT INTO `photo_photo` VALUES (25,'004','004','demo_pics/17kitchen.JPG','demo_pics/17kitchen_GDe5dZX.JPG','2019-05-10 00:57:01.179436'),(23,'002','002','demo_pics/05livingroom.JPG','demo_pics/05livingroom_NzVOHWK.JPG','2019-05-10 00:57:01.179436'),(24,'003','003','demo_pics/11diningroom.JPG','demo_pics/11diningroom_8tUeo0Z.JPG','2019-05-10 00:57:01.179436'),(22,'001','001','demo_pics/01frontage.JPG','demo_pics/01frontage_SxcSZ1c.JPG','2019-05-10 00:57:01.179436'),(26,'005','005','demo_pics/37deck.JPG','demo_pics/37deck_VfZu4ce.JPG','2019-05-10 00:57:01.179436'),(27,'c1','c1','demo_pics/01frontage_zL0MODi.JPG','demo_pics_sm/01frontage.JPG','2019-06-04 11:04:28.000000'),(28,'c2','c2','demo_pics/02hall.JPG','demo_pics_sm/02hall.JPG','2019-06-04 11:04:28.000000'),(29,'c3','c3','demo_pics/07diningroom.JPG','demo_pics_sm/07diningroom.JPG','2019-06-04 11:04:28.000000');
/*!40000 ALTER TABLE `photo_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'profile_pics/montrealDSC_3621223.JPG',2),(2,'profile_pics/FKL_9312_977_P1M9Y5E.JPG',5),(3,'profile_pics/FKL_9295_969.JPG',4),(4,'profile_pics/FKL_9314_978.JPG',1),(5,'profile_pics/FKL_9293_968.JPG',3),(6,'profile_pics/default.JPG',7),(7,'default.jpg',14),(8,'profile_pics/FKL_9423_1008.JPG',11),(9,'profile_pics/FKL_9432_1013.JPG',12),(10,'profile_pics/FKL_9428_1010.JPG',8);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-25 17:40:26
