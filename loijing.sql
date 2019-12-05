-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: loijing
-- ------------------------------------------------------
-- Server version	5.7.24

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
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
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
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
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
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add contact us',7,'add_contactus'),(20,'Can change contact us',7,'change_contactus'),(21,'Can delete contact us',7,'delete_contactus'),(22,'Can add apply loan',8,'add_applyloan'),(23,'Can change apply loan',8,'change_applyloan'),(24,'Can delete apply loan',8,'delete_applyloan'),(25,'Can add agriculturalloan',9,'add_agriculturalloan'),(26,'Can change agriculturalloan',9,'change_agriculturalloan'),(27,'Can delete agriculturalloan',9,'delete_agriculturalloan'),(28,'Can add business expansion loan',10,'add_businessexpansionloan'),(29,'Can change business expansion loan',10,'change_businessexpansionloan'),(30,'Can delete business expansion loan',10,'delete_businessexpansionloan'),(31,'Can add easy monthly installment emi',11,'add_easymonthlyinstallmentemi'),(32,'Can change easy monthly installment emi',11,'change_easymonthlyinstallmentemi'),(33,'Can delete easy monthly installment emi',11,'delete_easymonthlyinstallmentemi'),(34,'Can add entrepreneurship loan',12,'add_entrepreneurshiploan'),(35,'Can change entrepreneurship loan',12,'change_entrepreneurshiploan'),(36,'Can delete entrepreneurship loan',12,'delete_entrepreneurshiploan'),(37,'Can add fishery piggery poultry loan',13,'add_fisherypiggerypoultryloan'),(38,'Can change fishery piggery poultry loan',13,'change_fisherypiggerypoultryloan'),(39,'Can delete fishery piggery poultry loan',13,'delete_fisherypiggerypoultryloan'),(40,'Can add gold loan',14,'add_goldloan'),(41,'Can change gold loan',14,'change_goldloan'),(42,'Can delete gold loan',14,'delete_goldloan'),(43,'Can add loan against property',15,'add_loanagainstproperty'),(44,'Can change loan against property',15,'change_loanagainstproperty'),(45,'Can delete loan against property',15,'delete_loanagainstproperty'),(46,'Can add loan referenceto nationalized banks',16,'add_loanreferencetonationalizedbanks'),(47,'Can change loan referenceto nationalized banks',16,'change_loanreferencetonationalizedbanks'),(48,'Can delete loan referenceto nationalized banks',16,'delete_loanreferencetonationalizedbanks'),(49,'Can add machinery loan',17,'add_machineryloan'),(50,'Can change machinery loan',17,'change_machineryloan'),(51,'Can delete machinery loan',17,'delete_machineryloan'),(52,'Can add personal commercial vehicle loan',18,'add_personalcommercialvehicleloan'),(53,'Can change personal commercial vehicle loan',18,'change_personalcommercialvehicleloan'),(54,'Can delete personal commercial vehicle loan',18,'delete_personalcommercialvehicleloan'),(55,'Can add service pensionloan',19,'add_servicepensionloan'),(56,'Can change service pensionloan',19,'change_servicepensionloan'),(57,'Can delete service pensionloan',19,'delete_servicepensionloan'),(58,'Can add welcometoloijingfinance',20,'add_welcometoloijingfinance'),(59,'Can change welcometoloijingfinance',20,'change_welcometoloijingfinance'),(60,'Can delete welcometoloijingfinance',20,'delete_welcometoloijingfinance'),(61,'Can add vision',21,'add_vision'),(62,'Can change vision',21,'change_vision'),(63,'Can delete vision',21,'delete_vision'),(64,'Can add companyvision',22,'add_companyvision'),(65,'Can change companyvision',22,'change_companyvision'),(66,'Can delete companyvision',22,'delete_companyvision'),(67,'Can add company aim',23,'add_companyaim'),(68,'Can change company aim',23,'change_companyaim'),(69,'Can delete company aim',23,'delete_companyaim'),(70,'Can add ourwork',24,'add_ourwork'),(71,'Can change ourwork',24,'change_ourwork'),(72,'Can delete ourwork',24,'delete_ourwork'),(73,'Can add applicable',25,'add_applicable'),(74,'Can change applicable',25,'change_applicable'),(75,'Can delete applicable',25,'delete_applicable'),(76,'Can add why choose us',26,'add_whychooseus'),(77,'Can change why choose us',26,'change_whychooseus'),(78,'Can delete why choose us',26,'delete_whychooseus'),(79,'Can add company mis',27,'add_companymis'),(80,'Can change company mis',27,'change_companymis'),(81,'Can delete company mis',27,'delete_companymis'),(82,'Can add gallery image',28,'add_galleryimage'),(83,'Can change gallery image',28,'change_galleryimage'),(84,'Can delete gallery image',28,'delete_galleryimage'),(85,'Can add member one',29,'add_memberone'),(86,'Can change member one',29,'change_memberone'),(87,'Can delete member one',29,'delete_memberone'),(88,'Can add member two',30,'add_membertwo'),(89,'Can change member two',30,'change_membertwo'),(90,'Can delete member two',30,'delete_membertwo'),(91,'Can add director desk',31,'add_directordesk'),(92,'Can change director desk',31,'change_directordesk'),(93,'Can delete director desk',31,'delete_directordesk');
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
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$PhYcQqdCo20n$+TByD0KtSWo+QKZ58uAL/orRIZ69XLYNDqngIEdSrR8=','2018-12-07 09:37:53.561644',1,'avishek','','','',1,1,'2018-12-07 09:37:36.484675');
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
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
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
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-12-07 09:45:00.568269','3','ApplyLoan object',3,'',8,1),(2,'2018-12-07 09:45:00.708829','2','ApplyLoan object',3,'',8,1),(3,'2018-12-07 09:45:00.797185','1','ApplyLoan object',3,'',8,1),(4,'2018-12-07 09:59:49.171718','1','EntrepreneurshipLoan object',1,'[{\"added\": {}}]',12,1),(5,'2018-12-07 10:19:33.062647','1','PersonalCommercialVehicleLoan object',1,'[{\"added\": {}}]',18,1),(6,'2018-12-07 10:19:39.708200','1','Agriculturalloan object',1,'[{\"added\": {}}]',9,1),(7,'2018-12-07 10:19:50.523203','1','BusinessExpansionLoan object',1,'[{\"added\": {}}]',10,1),(8,'2018-12-07 10:19:57.515746','1','EasyMonthlyInstallmentEMI object',1,'[{\"added\": {}}]',11,1),(9,'2018-12-07 10:20:14.613093','1','FisheryPiggeryPoultryLoan object',1,'[{\"added\": {}}]',13,1),(10,'2018-12-07 10:20:33.171361','1','GoldLoan object',1,'[{\"added\": {}}]',14,1),(11,'2018-12-07 10:20:49.534414','1','FisheryPiggeryPoultryLoan object',2,'[{\"changed\": {\"fields\": [\"interest\"]}}]',13,1),(12,'2018-12-07 10:20:57.386968','1','LoanAgainstProperty object',1,'[{\"added\": {}}]',15,1),(13,'2018-12-07 10:21:04.698562','1','LoanReferencetoNationalizedBanks object',1,'[{\"added\": {}}]',16,1),(14,'2018-12-07 10:21:11.550973','1','MachineryLoan object',1,'[{\"added\": {}}]',17,1),(15,'2018-12-07 10:21:18.697659','1','ServicePensionloan object',1,'[{\"added\": {}}]',19,1),(16,'2018-12-07 10:31:30.957437','1','EntrepreneurshipLoan object',2,'[{\"changed\": {\"fields\": [\"interest\"]}}]',12,1),(17,'2018-12-07 10:31:43.487547','1','EntrepreneurshipLoan object',2,'[{\"changed\": {\"fields\": [\"interest\"]}}]',12,1),(18,'2018-12-07 10:44:05.013550','1','WELCOMETOLOIJINGFINANCE object',1,'[{\"added\": {}}]',20,1),(19,'2018-12-07 10:48:40.358944','1','vision object',1,'[{\"added\": {}}]',21,1),(20,'2018-12-07 11:21:05.031842','1','companyAim object',1,'[{\"added\": {}}]',23,1),(21,'2018-12-07 11:28:31.536568','1','Ourwork object',1,'[{\"added\": {}}]',24,1),(22,'2018-12-08 05:56:10.385051','1','Applicable object',1,'[{\"added\": {}}]',25,1),(23,'2018-12-08 06:19:15.387352','2','Applicable object',1,'[{\"added\": {}}]',25,1),(24,'2018-12-08 06:19:26.370201','3','Applicable object',1,'[{\"added\": {}}]',25,1),(25,'2018-12-08 06:19:35.209058','4','Applicable object',1,'[{\"added\": {}}]',25,1),(26,'2018-12-08 06:19:43.943306','5','Applicable object',1,'[{\"added\": {}}]',25,1),(27,'2018-12-08 06:19:51.859866','6','Applicable object',1,'[{\"added\": {}}]',25,1),(28,'2018-12-08 06:20:02.857346','7','Applicable object',1,'[{\"added\": {}}]',25,1),(29,'2018-12-08 12:06:20.109168','1','companyAim object',2,'[{\"changed\": {\"fields\": [\"Companyvisioncontent\"]}}]',23,1),(30,'2018-12-08 12:07:16.704336','1','Ourwork object',2,'[{\"changed\": {\"fields\": [\"work\"]}}]',24,1),(31,'2018-12-08 12:13:36.538920','1','whyChooseUs object',1,'[{\"added\": {}}]',26,1),(32,'2018-12-08 12:16:39.358411','1','WELCOMETOLOIJINGFINANCE object',2,'[{\"changed\": {\"fields\": [\"welcome\"]}}]',20,1),(33,'2018-12-08 12:54:16.844470','1','companyMis object',1,'[{\"added\": {}}]',27,1),(34,'2018-12-14 11:21:51.684901','1','companyAim object',2,'[{\"changed\": {\"fields\": [\"Companyvisioncontent\"]}}]',23,1),(35,'2018-12-14 11:22:13.880782','1','companyMis object',2,'[{\"changed\": {\"fields\": [\"mission\"]}}]',27,1),(36,'2018-12-14 11:26:07.768585','1','companyMis object',2,'[{\"changed\": {\"fields\": [\"mission\"]}}]',27,1),(37,'2018-12-14 11:26:19.360170','1','companyAim object',2,'[{\"changed\": {\"fields\": [\"Companyvisioncontent\"]}}]',23,1),(38,'2018-12-15 05:41:49.350445','1','galleryImage object',1,'[{\"added\": {}}]',28,1),(39,'2018-12-15 05:46:14.914057','2','galleryImage object',1,'[{\"added\": {}}]',28,1),(40,'2018-12-15 05:47:35.625069','3','galleryImage object',1,'[{\"added\": {}}]',28,1),(41,'2018-12-15 05:47:52.939888','4','galleryImage object',1,'[{\"added\": {}}]',28,1),(42,'2018-12-15 05:48:07.002029','4','galleryImage object',3,'',28,1),(43,'2018-12-15 05:48:19.192618','5','galleryImage object',1,'[{\"added\": {}}]',28,1),(44,'2018-12-15 05:51:46.773612','2','ContactUs object',3,'',7,1),(45,'2018-12-15 05:51:46.846443','1','ContactUs object',3,'',7,1),(46,'2018-12-15 05:53:29.782283','3','ContactUs object',3,'',7,1),(47,'2018-12-15 05:54:33.018833','6','ApplyLoan object',3,'',8,1),(48,'2018-12-15 05:54:33.337313','5','ApplyLoan object',3,'',8,1),(49,'2018-12-15 05:54:33.449159','4','ApplyLoan object',3,'',8,1),(50,'2018-12-15 07:23:01.270804','1','memberOne object',1,'[{\"added\": {}}]',29,1),(51,'2018-12-15 07:27:45.915364','1','memberTwo object',1,'[{\"added\": {}}]',30,1),(52,'2018-12-18 06:51:00.367093','1','memberOne object',2,'[{\"changed\": {\"fields\": [\"memberImage\", \"memberName\", \"memberPosition\"]}}]',29,1),(53,'2018-12-18 08:15:12.886781','1','memberOne object',3,'',29,1),(54,'2018-12-18 08:15:22.266625','1','memberTwo object',3,'',30,1),(55,'2018-12-18 08:16:13.665134','2','memberTwo object',1,'[{\"added\": {}}]',30,1),(56,'2018-12-18 08:19:11.209180','2','memberOne object',1,'[{\"added\": {}}]',29,1),(57,'2018-12-18 11:47:18.190334','2','memberTwo object',2,'[{\"changed\": {\"fields\": [\"memberName\"]}}]',30,1),(58,'2018-12-18 11:47:35.006474','2','memberOne object',2,'[{\"changed\": {\"fields\": [\"memberName\", \"memberDescription\"]}}]',29,1),(59,'2018-12-18 12:01:59.004398','1','directorDesk object',1,'[{\"added\": {}}]',31,1),(60,'2018-12-18 12:03:57.155305','1','directorDesk object',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',31,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'loijingApp','agriculturalloan'),(25,'loijingApp','applicable'),(8,'loijingApp','applyloan'),(10,'loijingApp','businessexpansionloan'),(23,'loijingApp','companyaim'),(27,'loijingApp','companymis'),(22,'loijingApp','companyvision'),(7,'loijingApp','contactus'),(31,'loijingApp','directordesk'),(11,'loijingApp','easymonthlyinstallmentemi'),(12,'loijingApp','entrepreneurshiploan'),(13,'loijingApp','fisherypiggerypoultryloan'),(28,'loijingApp','galleryimage'),(14,'loijingApp','goldloan'),(15,'loijingApp','loanagainstproperty'),(16,'loijingApp','loanreferencetonationalizedbanks'),(17,'loijingApp','machineryloan'),(29,'loijingApp','memberone'),(30,'loijingApp','membertwo'),(24,'loijingApp','ourwork'),(18,'loijingApp','personalcommercialvehicleloan'),(19,'loijingApp','servicepensionloan'),(21,'loijingApp','vision'),(20,'loijingApp','welcometoloijingfinance'),(26,'loijingApp','whychooseus'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-12-07 06:50:23.598466'),(2,'auth','0001_initial','2018-12-07 06:50:32.997481'),(3,'admin','0001_initial','2018-12-07 06:50:34.984135'),(4,'admin','0002_logentry_remove_auto_add','2018-12-07 06:50:35.107994'),(5,'contenttypes','0002_remove_content_type_name','2018-12-07 06:50:36.636188'),(6,'auth','0002_alter_permission_name_max_length','2018-12-07 06:50:36.791075'),(7,'auth','0003_alter_user_email_max_length','2018-12-07 06:50:36.936761'),(8,'auth','0004_alter_user_username_opts','2018-12-07 06:50:37.003205'),(9,'auth','0005_alter_user_last_login_null','2018-12-07 06:50:37.676877'),(10,'auth','0006_require_contenttypes_0002','2018-12-07 06:50:37.777432'),(11,'auth','0007_alter_validators_add_error_messages','2018-12-07 06:50:37.887279'),(12,'auth','0008_alter_user_username_max_length','2018-12-07 06:50:38.089862'),(13,'sessions','0001_initial','2018-12-07 06:50:38.691901'),(14,'loijingApp','0001_initial','2018-12-07 07:17:34.046804'),(15,'loijingApp','0002_applyloan','2018-12-07 08:43:01.584391'),(16,'loijingApp','0003_agriculturalloan_businessexpansionloan_easymonthlyinstallmentemi_entrepreneurshiploan_fisherypiggery','2018-12-07 09:57:24.714805'),(17,'loijingApp','0004_welcometoloijingfinance','2018-12-07 10:43:25.217066'),(18,'loijingApp','0005_vision','2018-12-07 10:47:35.535382'),(19,'loijingApp','0006_companyvision','2018-12-07 10:54:32.941582'),(20,'loijingApp','0007_auto_20181207_1059','2018-12-07 10:59:04.570523'),(21,'loijingApp','0008_companyaim','2018-12-07 11:19:32.503535'),(22,'loijingApp','0009_auto_20181207_1128','2018-12-07 11:28:09.802521'),(23,'loijingApp','0010_applicable','2018-12-08 05:54:09.024405'),(24,'loijingApp','0011_whychooseus','2018-12-08 12:12:49.093035'),(25,'loijingApp','0012_companymis','2018-12-08 12:53:33.024587'),(26,'loijingApp','0013_galleryimage','2018-12-15 05:41:05.370036'),(27,'loijingApp','0014_auto_20181215_0718','2018-12-15 07:18:44.257781'),(28,'loijingApp','0015_membertwo','2018-12-15 07:26:45.288959'),(29,'loijingApp','0016_directordesk','2018-12-18 12:01:04.757286');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('jtq140peaszn33m3iaqssekgcw7w3uyc','ZTg0ZjlhN2FjMzNkMzA2ZmQ2YWU4MjUxZGVjMzlmMGVkODY5MDI4ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OTFiMWM0MDFmMzhhMTM1OGQyMGE4NTI0Yzg5YWMzM2RiYzZiY2Q3In0=','2018-12-21 09:37:53.606429');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_agriculturalloan`
--

DROP TABLE IF EXISTS `loijingApp_agriculturalloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_agriculturalloan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_agriculturalloan`
--

LOCK TABLES `loijingApp_agriculturalloan` WRITE;
/*!40000 ALTER TABLE `loijingApp_agriculturalloan` DISABLE KEYS */;
INSERT INTO `loijingApp_agriculturalloan` VALUES (1,'3');
/*!40000 ALTER TABLE `loijingApp_agriculturalloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_applicable`
--

DROP TABLE IF EXISTS `loijingApp_applicable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_applicable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ApplicableFor` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_applicable`
--

LOCK TABLES `loijingApp_applicable` WRITE;
/*!40000 ALTER TABLE `loijingApp_applicable` DISABLE KEYS */;
INSERT INTO `loijingApp_applicable` VALUES (1,'Entrepreneurship loan'),(2,'Business expansion loan'),(3,'Service/Pension loan'),(4,'Machinery loan'),(5,'Loan against property'),(6,'Agricultural loan'),(7,'Fishery/Piggery/Poultry loan');
/*!40000 ALTER TABLE `loijingApp_applicable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_applyloan`
--

DROP TABLE IF EXISTS `loijingApp_applyloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_applyloan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `altphone` varchar(200) DEFAULT NULL,
  `preaddress` longtext,
  `peraddress` longtext,
  `landmark` longtext,
  `occupation` varchar(200) DEFAULT NULL,
  `income` varchar(200) DEFAULT NULL,
  `product` varchar(300) DEFAULT NULL,
  `message` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_applyloan`
--

LOCK TABLES `loijingApp_applyloan` WRITE;
/*!40000 ALTER TABLE `loijingApp_applyloan` DISABLE KEYS */;
/*!40000 ALTER TABLE `loijingApp_applyloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_businessexpansionloan`
--

DROP TABLE IF EXISTS `loijingApp_businessexpansionloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_businessexpansionloan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_businessexpansionloan`
--

LOCK TABLES `loijingApp_businessexpansionloan` WRITE;
/*!40000 ALTER TABLE `loijingApp_businessexpansionloan` DISABLE KEYS */;
INSERT INTO `loijingApp_businessexpansionloan` VALUES (1,'3');
/*!40000 ALTER TABLE `loijingApp_businessexpansionloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_companyaim`
--

DROP TABLE IF EXISTS `loijingApp_companyaim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_companyaim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Companyvisioncontent` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_companyaim`
--

LOCK TABLES `loijingApp_companyaim` WRITE;
/*!40000 ALTER TABLE `loijingApp_companyaim` DISABLE KEYS */;
INSERT INTO `loijingApp_companyaim` VALUES (1,'It’s our business to know your business. We make you smile, Your smile is our business.');
/*!40000 ALTER TABLE `loijingApp_companyaim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_companymis`
--

DROP TABLE IF EXISTS `loijingApp_companymis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_companymis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mission` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_companymis`
--

LOCK TABLES `loijingApp_companymis` WRITE;
/*!40000 ALTER TABLE `loijingApp_companymis` DISABLE KEYS */;
INSERT INTO `loijingApp_companymis` VALUES (1,'To alleviate poverty through lasting solutions that help people build assets, create jobs and raise their standard of living.');
/*!40000 ALTER TABLE `loijingApp_companymis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_companyvision`
--

DROP TABLE IF EXISTS `loijingApp_companyvision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_companyvision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Companyvisioncontent` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_companyvision`
--

LOCK TABLES `loijingApp_companyvision` WRITE;
/*!40000 ALTER TABLE `loijingApp_companyvision` DISABLE KEYS */;
/*!40000 ALTER TABLE `loijingApp_companyvision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_contactus`
--

DROP TABLE IF EXISTS `loijingApp_contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` longtext,
  `datetime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_contactus`
--

LOCK TABLES `loijingApp_contactus` WRITE;
/*!40000 ALTER TABLE `loijingApp_contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `loijingApp_contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_directordesk`
--

DROP TABLE IF EXISTS `loijingApp_directordesk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_directordesk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_directordesk`
--

LOCK TABLES `loijingApp_directordesk` WRITE;
/*!40000 ALTER TABLE `loijingApp_directordesk` DISABLE KEYS */;
INSERT INTO `loijingApp_directordesk` VALUES (1,'I take this opportunity to thank our valued customers, whose continued patronage and confidence in our products inspire us to extend the best of services and enables us to provide value for their money.');
/*!40000 ALTER TABLE `loijingApp_directordesk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_easymonthlyinstallmentemi`
--

DROP TABLE IF EXISTS `loijingApp_easymonthlyinstallmentemi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_easymonthlyinstallmentemi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_easymonthlyinstallmentemi`
--

LOCK TABLES `loijingApp_easymonthlyinstallmentemi` WRITE;
/*!40000 ALTER TABLE `loijingApp_easymonthlyinstallmentemi` DISABLE KEYS */;
INSERT INTO `loijingApp_easymonthlyinstallmentemi` VALUES (1,'3');
/*!40000 ALTER TABLE `loijingApp_easymonthlyinstallmentemi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_entrepreneurshiploan`
--

DROP TABLE IF EXISTS `loijingApp_entrepreneurshiploan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_entrepreneurshiploan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_entrepreneurshiploan`
--

LOCK TABLES `loijingApp_entrepreneurshiploan` WRITE;
/*!40000 ALTER TABLE `loijingApp_entrepreneurshiploan` DISABLE KEYS */;
INSERT INTO `loijingApp_entrepreneurshiploan` VALUES (1,'3');
/*!40000 ALTER TABLE `loijingApp_entrepreneurshiploan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_fisherypiggerypoultryloan`
--

DROP TABLE IF EXISTS `loijingApp_fisherypiggerypoultryloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_fisherypiggerypoultryloan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_fisherypiggerypoultryloan`
--

LOCK TABLES `loijingApp_fisherypiggerypoultryloan` WRITE;
/*!40000 ALTER TABLE `loijingApp_fisherypiggerypoultryloan` DISABLE KEYS */;
INSERT INTO `loijingApp_fisherypiggerypoultryloan` VALUES (1,'2');
/*!40000 ALTER TABLE `loijingApp_fisherypiggerypoultryloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_galleryimage`
--

DROP TABLE IF EXISTS `loijingApp_galleryimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_galleryimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `galleryImage` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_galleryimage`
--

LOCK TABLES `loijingApp_galleryimage` WRITE;
/*!40000 ALTER TABLE `loijingApp_galleryimage` DISABLE KEYS */;
INSERT INTO `loijingApp_galleryimage` VALUES (1,'galleryFiles/LOIJING_FINANCE_2_1.jpg'),(2,'galleryFiles/IMG-20181110-WA0006.jpg'),(3,'galleryFiles/IMG_20181006_194410.jpg'),(5,'galleryFiles/IMG-20181110-WA0003.jpg');
/*!40000 ALTER TABLE `loijingApp_galleryimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_goldloan`
--

DROP TABLE IF EXISTS `loijingApp_goldloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_goldloan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_goldloan`
--

LOCK TABLES `loijingApp_goldloan` WRITE;
/*!40000 ALTER TABLE `loijingApp_goldloan` DISABLE KEYS */;
INSERT INTO `loijingApp_goldloan` VALUES (1,'2');
/*!40000 ALTER TABLE `loijingApp_goldloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_loanagainstproperty`
--

DROP TABLE IF EXISTS `loijingApp_loanagainstproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_loanagainstproperty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_loanagainstproperty`
--

LOCK TABLES `loijingApp_loanagainstproperty` WRITE;
/*!40000 ALTER TABLE `loijingApp_loanagainstproperty` DISABLE KEYS */;
INSERT INTO `loijingApp_loanagainstproperty` VALUES (1,'3');
/*!40000 ALTER TABLE `loijingApp_loanagainstproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_loanreferencetonationalizedbanks`
--

DROP TABLE IF EXISTS `loijingApp_loanreferencetonationalizedbanks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_loanreferencetonationalizedbanks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_loanreferencetonationalizedbanks`
--

LOCK TABLES `loijingApp_loanreferencetonationalizedbanks` WRITE;
/*!40000 ALTER TABLE `loijingApp_loanreferencetonationalizedbanks` DISABLE KEYS */;
INSERT INTO `loijingApp_loanreferencetonationalizedbanks` VALUES (1,'3');
/*!40000 ALTER TABLE `loijingApp_loanreferencetonationalizedbanks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_machineryloan`
--

DROP TABLE IF EXISTS `loijingApp_machineryloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_machineryloan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_machineryloan`
--

LOCK TABLES `loijingApp_machineryloan` WRITE;
/*!40000 ALTER TABLE `loijingApp_machineryloan` DISABLE KEYS */;
INSERT INTO `loijingApp_machineryloan` VALUES (1,'3');
/*!40000 ALTER TABLE `loijingApp_machineryloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_memberone`
--

DROP TABLE IF EXISTS `loijingApp_memberone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_memberone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberImage` varchar(100) NOT NULL,
  `memberName` varchar(200) DEFAULT NULL,
  `memberPosition` varchar(200) DEFAULT NULL,
  `memberDescription` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_memberone`
--

LOCK TABLES `loijingApp_memberone` WRITE;
/*!40000 ALTER TABLE `loijingApp_memberone` DISABLE KEYS */;
INSERT INTO `loijingApp_memberone` VALUES (2,'MemberOne/member1_xsN25Dl.jpeg','Ph. Gulson','Managing Director','Hello');
/*!40000 ALTER TABLE `loijingApp_memberone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_membertwo`
--

DROP TABLE IF EXISTS `loijingApp_membertwo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_membertwo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberImage` varchar(100) NOT NULL,
  `memberName` varchar(200) DEFAULT NULL,
  `memberPosition` varchar(200) DEFAULT NULL,
  `memberDescription` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_membertwo`
--

LOCK TABLES `loijingApp_membertwo` WRITE;
/*!40000 ALTER TABLE `loijingApp_membertwo` DISABLE KEYS */;
INSERT INTO `loijingApp_membertwo` VALUES (2,'MemberOne/member1_cDxytgg.jpeg','Ph. Gulson','DIrector','Hello');
/*!40000 ALTER TABLE `loijingApp_membertwo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_ourwork`
--

DROP TABLE IF EXISTS `loijingApp_ourwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_ourwork` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_ourwork`
--

LOCK TABLES `loijingApp_ourwork` WRITE;
/*!40000 ALTER TABLE `loijingApp_ourwork` DISABLE KEYS */;
INSERT INTO `loijingApp_ourwork` VALUES (1,'We want to satisfy all of our customers ‘financial needs’. We have been helping people with different occupation in their business and we have been providing them with a way to grow their business fruitfully. To help our customers and communities realize their dreams by anticipating. Understanding and meeting financial needs. We have been helping many jobless people to start up a small business. We look forward to serving people who are willing to create a better future for their families and community.');
/*!40000 ALTER TABLE `loijingApp_ourwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_personalcommercialvehicleloan`
--

DROP TABLE IF EXISTS `loijingApp_personalcommercialvehicleloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_personalcommercialvehicleloan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_personalcommercialvehicleloan`
--

LOCK TABLES `loijingApp_personalcommercialvehicleloan` WRITE;
/*!40000 ALTER TABLE `loijingApp_personalcommercialvehicleloan` DISABLE KEYS */;
INSERT INTO `loijingApp_personalcommercialvehicleloan` VALUES (1,'3');
/*!40000 ALTER TABLE `loijingApp_personalcommercialvehicleloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_servicepensionloan`
--

DROP TABLE IF EXISTS `loijingApp_servicepensionloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_servicepensionloan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_servicepensionloan`
--

LOCK TABLES `loijingApp_servicepensionloan` WRITE;
/*!40000 ALTER TABLE `loijingApp_servicepensionloan` DISABLE KEYS */;
INSERT INTO `loijingApp_servicepensionloan` VALUES (1,'3');
/*!40000 ALTER TABLE `loijingApp_servicepensionloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_vision`
--

DROP TABLE IF EXISTS `loijingApp_vision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_vision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vision` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_vision`
--

LOCK TABLES `loijingApp_vision` WRITE;
/*!40000 ALTER TABLE `loijingApp_vision` DISABLE KEYS */;
INSERT INTO `loijingApp_vision` VALUES (1,'We make you smile, Your smile is our business');
/*!40000 ALTER TABLE `loijingApp_vision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_welcometoloijingfinance`
--

DROP TABLE IF EXISTS `loijingApp_welcometoloijingfinance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_welcometoloijingfinance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `welcome` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_welcometoloijingfinance`
--

LOCK TABLES `loijingApp_welcometoloijingfinance` WRITE;
/*!40000 ALTER TABLE `loijingApp_welcometoloijingfinance` DISABLE KEYS */;
INSERT INTO `loijingApp_welcometoloijingfinance` VALUES (1,'Loijing Finance, an exciting addition to the Indian Financial Service. Headquartered in Konung  Mamang, Imphal-East. Manipur. We have partnered with leading banks and financial institutions for availing debt funds and on lending to our client across our branch network. This connection provides us with the capability of offering products, services and expertise not generally available from a small community bank. We realize our success is a direct result of meeting our customers’ needs. We believe that every customer is a preferred customer. Adhering to this philosophy has allowed us to provide quality service to our customer base.');
/*!40000 ALTER TABLE `loijingApp_welcometoloijingfinance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loijingApp_whychooseus`
--

DROP TABLE IF EXISTS `loijingApp_whychooseus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loijingApp_whychooseus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `why` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loijingApp_whychooseus`
--

LOCK TABLES `loijingApp_whychooseus` WRITE;
/*!40000 ALTER TABLE `loijingApp_whychooseus` DISABLE KEYS */;
INSERT INTO `loijingApp_whychooseus` VALUES (1,'Loijing Finance is committed to helping its clients reach their goals to personalizing their event experiences, to providing an innovative environment, and to make a difference. Loijing Finance provides financial assistance to economically distressed peoples through affordable lending.');
/*!40000 ALTER TABLE `loijingApp_whychooseus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-18 17:38:45
