CREATE DATABASE  IF NOT EXISTS `dd1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dd1`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dd1
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add user login',8,'add_userlogin'),(30,'Can change user login',8,'change_userlogin'),(31,'Can delete user login',8,'delete_userlogin'),(32,'Can view user login',8,'view_userlogin'),(33,'Can add demo date',9,'add_demodate'),(34,'Can change demo date',9,'change_demodate'),(35,'Can delete demo date',9,'delete_demodate'),(36,'Can view demo date',9,'view_demodate'),(37,'Can add buses',10,'add_buses'),(38,'Can change buses',10,'change_buses'),(39,'Can delete buses',10,'delete_buses'),(40,'Can view buses',10,'view_buses'),(41,'Can add flights',11,'add_flights'),(42,'Can change flights',11,'change_flights'),(43,'Can delete flights',11,'delete_flights'),(44,'Can view flights',11,'view_flights'),(45,'Can add tours',12,'add_tours'),(46,'Can change tours',12,'change_tours'),(47,'Can delete tours',12,'delete_tours'),(48,'Can view tours',12,'view_tours'),(49,'Can add visiting data',13,'add_visitingdata'),(50,'Can change visiting data',13,'change_visitingdata'),(51,'Can delete visiting data',13,'delete_visitingdata'),(52,'Can view visiting data',13,'view_visitingdata'),(53,'Can add travels data',14,'add_travelsdata'),(54,'Can change travels data',14,'change_travelsdata'),(55,'Can delete travels data',14,'delete_travelsdata'),(56,'Can view travels data',14,'view_travelsdata'),(57,'Can add seasons data',15,'add_seasonsdata'),(58,'Can change seasons data',15,'change_seasonsdata'),(59,'Can delete seasons data',15,'delete_seasonsdata'),(60,'Can view seasons data',15,'view_seasonsdata'),(61,'Can add tourist places',16,'add_touristplaces'),(62,'Can change tourist places',16,'change_touristplaces'),(63,'Can delete tourist places',16,'delete_touristplaces'),(64,'Can view tourist places',16,'view_touristplaces'),(65,'Can add distances',17,'add_distances'),(66,'Can change distances',17,'change_distances'),(67,'Can delete distances',17,'delete_distances'),(68,'Can view distances',17,'view_distances');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$yaVOPf0d8EXE4WyWDtoZ2E$fcZRAbUoaZVBIIMC/WjjH1QpMqWpPKSXPgqCZIz5sz4=','2023-12-23 23:06:17',1,'piyush','','','email@gmail.com',1,1,'2023-12-23 23:06:03');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buses_table`
--

DROP TABLE IF EXISTS `buses_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buses_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `travels` varchar(50) NOT NULL,
  `departure_timeHours` varchar(2) NOT NULL,
  `departure_timeMinutes` varchar(2) NOT NULL,
  `departure_palce` varchar(50) NOT NULL,
  `arrival_timeHours` varchar(2) NOT NULL,
  `arrival_timeMinutes` varchar(2) NOT NULL,
  `arrival_place` varchar(50) NOT NULL,
  `duration` varchar(25) NOT NULL,
  `fare` varchar(20) NOT NULL,
  `seats_available` int NOT NULL,
  `ac_sleeper` varchar(20) NOT NULL,
  `bus_num` varchar(15) NOT NULL,
  `date` varchar(10) NOT NULL,
  `day` varchar(10) NOT NULL,
  `one` varchar(10) NOT NULL,
  `eight` varchar(10) NOT NULL,
  `elven` varchar(10) NOT NULL,
  `five` varchar(10) NOT NULL,
  `fivethn` varchar(10) NOT NULL,
  `four` varchar(10) NOT NULL,
  `fouthn` varchar(10) NOT NULL,
  `nine` varchar(10) NOT NULL,
  `seven` varchar(10) NOT NULL,
  `six` varchar(10) NOT NULL,
  `sixthn` varchar(10) NOT NULL,
  `ten` varchar(10) NOT NULL,
  `thirtn` varchar(10) NOT NULL,
  `three` varchar(10) NOT NULL,
  `twelve` varchar(10) NOT NULL,
  `two` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buses_table`
--

LOCK TABLES `buses_table` WRITE;
/*!40000 ALTER TABLE `buses_table` DISABLE KEYS */;
INSERT INTO `buses_table` VALUES (1,'XYZ Buses','03','30','Bengaluru','09','30','Chennai','06:00','1000',15,'AC/ sleeper','KA04BN5444','24/12/2023','Sunday','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#1FACD4','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#DDF4EC','#DDF4EC','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#DDF4EC'),(2,'XYZ Buses','02','30','Bengaluru','08','30','Chennai','06:00','1000',15,'AC/ sleeper','KA04BN5445','18/12/2024','Wednesday','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#1FACD4','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#DDF4EC','#DDF4EC','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#DDF4EC'),(3,'XYZ Buses','05','45','Bikaner','11','45','Jaipur','06:00','1000',15,'AC/ sleeper','RJ04BN5444','18/12/2024','Wednesday','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#1FACD4','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#DDF4EC','#DDF4EC','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#DDF4EC'),(4,'XYZ Buses','06','45','Bikaner','11','45','Jaipur','06:00','1000',15,'AC/ sleeper','RJ04BN5444','18/12/2024','Wednesday','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#1FACD4','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#DDF4EC','#DDF4EC','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#DDF4EC'),(5,'XYZ Buses','22','10','Bikaner','04','10','Delhi','06:00','1000',20,'AC/ sleeper','RJ04BN5444','18/12/2024','Wednesday','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#1FACD4','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#DDF4EC','#DDF4EC','#DDF4EC','#1FACD4','#DDF4EC','#DDF4EC','#DDF4EC');
/*!40000 ALTER TABLE `buses_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demodata_table`
--

DROP TABLE IF EXISTS `demodata_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demodata_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `demodate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demodata_table`
--

LOCK TABLES `demodata_table` WRITE;
/*!40000 ALTER TABLE `demodata_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `demodata_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distances`
--

DROP TABLE IF EXISTS `distances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fromplace` varchar(100) NOT NULL,
  `toplace` varchar(100) NOT NULL,
  `distance` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `distances_chk_1` CHECK ((`distance` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distances`
--

LOCK TABLES `distances` WRITE;
/*!40000 ALTER TABLE `distances` DISABLE KEYS */;
/*!40000 ALTER TABLE `distances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-23 23:08:59','1','Flights object (1)',1,'[{\"added\": {}}]',11,1),(2,'2023-12-23 23:10:29','1','Tours object (1)',1,'[{\"added\": {}}]',12,1),(3,'2023-12-23 23:11:53','1','TouristPlaces object (1)',1,'[{\"added\": {}}]',16,1),(4,'2023-12-23 23:14:38','1','Buses object (1)',1,'[{\"added\": {}}]',10,1),(5,'2023-12-23 23:31:08','2','Flights object (2)',1,'[{\"added\": {}}]',11,1),(6,'2023-12-24 10:38:47','3','Flights object (3)',1,'[{\"added\": {}}]',11,1),(7,'2023-12-24 10:39:02','2','Flights object (2)',2,'[{\"changed\": {\"fields\": [\"Duration\"]}}]',11,1),(8,'2023-12-24 10:41:23','4','Flights object (4)',1,'[{\"added\": {}}]',11,1),(9,'2023-12-24 10:41:23','5','Flights object (5)',1,'[{\"added\": {}}]',11,1),(10,'2023-12-24 10:42:26','6','Flights object (6)',1,'[{\"added\": {}}]',11,1),(11,'2023-12-24 10:43:27','7','Flights object (7)',1,'[{\"added\": {}}]',11,1),(12,'2023-12-24 10:45:11','2','Buses object (2)',1,'[{\"added\": {}}]',10,1),(13,'2023-12-24 10:45:40','1','Buses object (1)',2,'[{\"changed\": {\"fields\": [\"Duration\"]}}]',10,1),(14,'2023-12-24 10:46:07','2','Flights object (2)',2,'[{\"changed\": {\"fields\": [\"Arrival timeHours\", \"Duration\"]}}]',11,1),(15,'2023-12-24 10:47:45','3','Buses object (3)',1,'[{\"added\": {}}]',10,1),(16,'2023-12-24 10:47:45','4','Buses object (4)',1,'[{\"added\": {}}]',10,1),(17,'2023-12-24 10:48:44','5','Buses object (5)',1,'[{\"added\": {}}]',10,1),(18,'2023-12-24 10:49:52','2','TouristPlaces object (2)',1,'[{\"added\": {}}]',16,1),(19,'2023-12-24 10:50:46','3','TouristPlaces object (3)',1,'[{\"added\": {}}]',16,1),(20,'2023-12-24 10:51:56','2','Tours object (2)',1,'[{\"added\": {}}]',12,1),(21,'2023-12-24 10:52:37','3','Tours object (3)',1,'[{\"added\": {}}]',12,1),(22,'2023-12-24 10:54:00','4','Tours object (4)',1,'[{\"added\": {}}]',12,1),(23,'2023-12-24 10:56:22','4','Buses object (4)',2,'[{\"changed\": {\"fields\": [\"Departure timeHours\"]}}]',10,1),(24,'2023-12-24 10:59:33','8','Flights object (8)',1,'[{\"added\": {}}]',11,1),(25,'2023-12-24 11:02:35','1','TouristPlaces object (1)',2,'[{\"changed\": {\"fields\": [\"Time\"]}}]',16,1),(26,'2023-12-24 11:02:38','1','TouristPlaces object (1)',2,'[]',16,1),(27,'2023-12-24 11:02:47','2','TouristPlaces object (2)',2,'[{\"changed\": {\"fields\": [\"Cost\", \"Time\"]}}]',16,1),(28,'2023-12-24 11:02:53','3','TouristPlaces object (3)',2,'[]',16,1),(29,'2023-12-24 11:03:25','4','TouristPlaces object (4)',1,'[{\"added\": {}}]',16,1),(30,'2023-12-24 11:03:34','4','TouristPlaces object (4)',2,'[]',16,1),(31,'2023-12-24 11:04:00','1','SeasonsData object (1)',1,'[{\"added\": {}}]',15,1),(32,'2023-12-24 11:04:49','2','SeasonsData object (2)',1,'[{\"added\": {}}]',15,1),(33,'2023-12-24 11:04:57','3','SeasonsData object (3)',1,'[{\"added\": {}}]',15,1),(34,'2023-12-24 11:05:10','4','SeasonsData object (4)',1,'[{\"added\": {}}]',15,1),(35,'2023-12-24 11:05:32','5','SeasonsData object (5)',1,'[{\"added\": {}}]',15,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'sample','buses'),(9,'sample','demodate'),(17,'sample','distances'),(11,'sample','flights'),(15,'sample','seasonsdata'),(16,'sample','touristplaces'),(12,'sample','tours'),(14,'sample','travelsdata'),(7,'sample','user'),(8,'sample','userlogin'),(13,'sample','visitingdata'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-23 22:26:06'),(2,'auth','0001_initial','2023-12-23 22:26:07'),(3,'admin','0001_initial','2023-12-23 22:26:08'),(4,'admin','0002_logentry_remove_auto_add','2023-12-23 22:26:08'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-23 22:26:08'),(6,'contenttypes','0002_remove_content_type_name','2023-12-23 22:26:08'),(7,'auth','0002_alter_permission_name_max_length','2023-12-23 22:26:08'),(8,'auth','0003_alter_user_email_max_length','2023-12-23 22:26:08'),(9,'auth','0004_alter_user_username_opts','2023-12-23 22:26:08'),(10,'auth','0005_alter_user_last_login_null','2023-12-23 22:26:08'),(11,'auth','0006_require_contenttypes_0002','2023-12-23 22:26:08'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-23 22:26:08'),(13,'auth','0008_alter_user_username_max_length','2023-12-23 22:26:08'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-23 22:26:08'),(15,'auth','0010_alter_group_name_max_length','2023-12-23 22:26:08'),(16,'auth','0011_update_proxy_permissions','2023-12-23 22:26:08'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-23 22:26:09'),(18,'sample','0001_initial','2023-12-23 22:26:09'),(19,'sample','0002_choice_question','2023-12-23 22:26:09'),(20,'sample','0003_auto_20210512_1751','2023-12-23 22:26:09'),(21,'sample','0004_demodate','2023-12-23 22:26:09'),(22,'sample','0005_alter_demodate_demodate','2023-12-23 22:26:09'),(23,'sample','0006_buses_flights','2023-12-23 22:26:09'),(24,'sample','0007_buses_bus_num','2023-12-23 22:26:09'),(25,'sample','0008_auto_20210515_1940','2023-12-23 22:26:10'),(26,'sample','0009_auto_20210516_1954','2023-12-23 22:26:10'),(27,'sample','0010_auto_20210516_1957','2023-12-23 22:26:10'),(28,'sample','0011_buses_one','2023-12-23 22:26:10'),(29,'sample','0012_auto_20210517_1715','2023-12-23 22:26:11'),(30,'sample','0013_tours','2023-12-23 22:26:11'),(31,'sample','0014_visitingdata','2023-12-23 22:26:11'),(32,'sample','0015_travelsdata','2023-12-23 22:26:11'),(33,'sample','0016_auto_20210518_1948','2023-12-23 22:26:11'),(34,'sample','0017_auto_20210518_1951','2023-12-23 22:26:12'),(35,'sample','0018_alter_buses_ac_sleeper','2023-12-23 22:26:12'),(36,'sample','0019_seasonsdata','2023-12-23 22:26:12'),(37,'sample','0020_touristplaces','2023-12-23 22:26:12'),(38,'sample','0021_touristplaces_state','2023-12-23 22:26:12'),(39,'sample','0022_distances','2023-12-23 22:26:12'),(40,'sessions','0001_initial','2023-12-23 22:26:12');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('oa7nxyw17zlxy33hm4qs5ismhyk94c6j','.eJxVjbsOgjAUhl_FdCZNW2gLjqzGXSWEnN4ExWJacDG-uyVh0H84w3_5zht1sMx9t0QbusGgPaIo-_UU6Lv1a2Bu4K8T1pOfw6DwWsFbGvFxMnast-4foIfYr2vJjGNWFq7QuWAKaK411aUS1FXOQqUEAHGWcy1ZyR2XVFaK5NwYYYGXCToHeNkxsU7ny65O8JjM5wge7ZsGHdKfxxBQxjNKkjKWDiZt-_kCjRBI5Q:1rHHA9:b4GY0DTowxYEgU97q1GhHq4tUQ1D4cRWiJ7ov0YWLyg','2024-01-07 11:06:33');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights_table`
--

DROP TABLE IF EXISTS `flights_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flight` varchar(50) NOT NULL,
  `departure_timeHours` varchar(2) NOT NULL,
  `departure_timeMinutes` varchar(2) NOT NULL,
  `departure_palce` varchar(50) NOT NULL,
  `arrival_timeHours` varchar(2) NOT NULL,
  `arrival_timeMinutes` varchar(2) NOT NULL,
  `arrival_place` varchar(50) NOT NULL,
  `duration` varchar(25) NOT NULL,
  `fare` varchar(20) NOT NULL,
  `seats_available` int NOT NULL,
  `date` varchar(10) NOT NULL,
  `day` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights_table`
--

LOCK TABLES `flights_table` WRITE;
/*!40000 ALTER TABLE `flights_table` DISABLE KEYS */;
INSERT INTO `flights_table` VALUES (1,'F1','02','30','Bengaluru','05','00','Delhi','02:30','4000',50,'01/01/2024','Monday'),(2,'F2','22','30','Bikaner','23','30','Jaipur','01:00','2000',20,'14/01/2024','Sunday'),(3,'F3','11','10','Kolkata','13','10','Patna','02:00','3000',20,'01/12/2024','Sunday'),(4,'F4','05','45','Delhi','07','15','Mumbai','01:30','4500',12,'18/12/2024','Wednesday'),(5,'F4','05','45','Delhi','07','15','Mumbai','01:30','4500',12,'18/12/2024','Wednesday'),(6,'F6','06','00','Bengaluru','08','30','Delhi','02:30','4500',10,'18/12/2024','Wednesday'),(7,'F7','02','30','Bikaner','03','30','Delhi','01:00','1000',15,'18/12/2024','Wednesday'),(8,'F8','11','10','Bengaluru','13','40','Delhi','02:30','4000',5,'18/12/2024','Wednesday');
/*!40000 ALTER TABLE `flights_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasonaldata`
--

DROP TABLE IF EXISTS `seasonaldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seasonaldata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `season` varchar(100) NOT NULL,
  `population` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `seasonaldata_chk_1` CHECK ((`population` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasonaldata`
--

LOCK TABLES `seasonaldata` WRITE;
/*!40000 ALTER TABLE `seasonaldata` DISABLE KEYS */;
INSERT INTO `seasonaldata` VALUES (1,'Spring',10),(2,'Winter',8),(3,'Summer',5),(4,'Rainy',6),(5,'Autumn',5);
/*!40000 ALTER TABLE `seasonaldata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `touristplaces`
--

DROP TABLE IF EXISTS `touristplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `touristplaces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `place` varchar(100) NOT NULL,
  `cost` int unsigned NOT NULL,
  `time` int unsigned NOT NULL,
  `state` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `touristplaces_chk_1` CHECK ((`cost` >= 0)),
  CONSTRAINT `touristplaces_chk_2` CHECK ((`time` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `touristplaces`
--

LOCK TABLES `touristplaces` WRITE;
/*!40000 ALTER TABLE `touristplaces` DISABLE KEYS */;
INSERT INTO `touristplaces` VALUES (1,'Banaras',4000,2,'Uttar Pradesh'),(2,'Ayodhya',2000,2,'Uttar Pradesh'),(3,'Kashmir',10000,5,'None'),(4,'Bengaluru',5000,3,'Karnataka');
/*!40000 ALTER TABLE `touristplaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `touristsdata_table`
--

DROP TABLE IF EXISTS `touristsdata_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `touristsdata_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `place` varchar(100) NOT NULL,
  `population` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `touristsdata_table_chk_1` CHECK ((`population` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `touristsdata_table`
--

LOCK TABLES `touristsdata_table` WRITE;
/*!40000 ALTER TABLE `touristsdata_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `touristsdata_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `touristplces_covered` varchar(500) NOT NULL,
  `hotel` varchar(150) NOT NULL,
  `cost` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (1,'Bengaluru','Nandi Hills, Cubbon Park, Wonderla, Lalbagh','Ashraya Hotel','10000'),(2,'Uttar Pradesh','Ayodhya, Banaras, Vrindavan, Lucknow','Ashraya Hotel','10000'),(3,'Rajasthan','Jaipur, Bikaner, Jodhpur, Udaipur','Ashraya Hotel','10000'),(4,'Karnataka','Bengaluru, Mysuru, Coorg, Chikkamagaluru','Ashraya Hotel','20000');
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelsdata_table`
--

DROP TABLE IF EXISTS `travelsdata_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travelsdata_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `travels` varchar(100) NOT NULL,
  `population` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `travelsdata_table_chk_1` CHECK ((`population` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelsdata_table`
--

LOCK TABLES `travelsdata_table` WRITE;
/*!40000 ALTER TABLE `travelsdata_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `travelsdata_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdata_table`
--

DROP TABLE IF EXISTS `userdata_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdata_table` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int NOT NULL,
  `location` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdata_table`
--

LOCK TABLES `userdata_table` WRITE;
/*!40000 ALTER TABLE `userdata_table` DISABLE KEYS */;
INSERT INTO `userdata_table` VALUES (1,'abc','xyz','email@gamil.com','Male',22,'Bengaluru','@Piyush340');
/*!40000 ALTER TABLE `userdata_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogin_table`
--

DROP TABLE IF EXISTS `userlogin_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlogin_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogin_table`
--

LOCK TABLES `userlogin_table` WRITE;
/*!40000 ALTER TABLE `userlogin_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlogin_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-24 11:11:28
