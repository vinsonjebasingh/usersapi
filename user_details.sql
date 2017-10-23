-- MySQL dump 10.13  Distrib 5.6.33, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: user_details
-- ------------------------------------------------------
-- Server version	5.6.33-0ubuntu0.14.04.1

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `delivery_date` datetime DEFAULT '0000-00-00 00:00:00',
  `notes` varchar(350) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `delivery_fee` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `tax` varchar(200) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (13,1,1,'2017-10-13 08:23:21','Delivary will deliver tomorrow',450.00,50.00,502.50,'2.50','2017-10-12 08:23:21',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(35) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(35) NOT NULL,
  `last_name` varchar(35) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `id_proof_name` varchar(50) NOT NULL,
  `id_proof_no` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `device_type` varchar(35) NOT NULL,
  `login_date` datetime DEFAULT '0000-00-00 00:00:00',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(2,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(3,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(4,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(5,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(6,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(7,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(8,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(9,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(10,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(11,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(12,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(13,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(14,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(15,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(16,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(17,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(18,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1),(19,'vinson','vinson','vinson','jebasingh','vinsonjebasingh@gmail.com','9600130564','04448889966','PAN card','ASQ23SD','Chennai','Tamil Nadu','India','600032','192.168.4.63','laptop','2017-10-10 08:12:12',NULL,'2017-10-10 08:12:12',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-23 20:56:05
