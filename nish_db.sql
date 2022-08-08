-- MariaDB dump 10.19  Distrib 10.6.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: nish_db
-- ------------------------------------------------------
-- Server version	10.6.8-MariaDB

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
-- Table structure for table `accessories`
--

DROP TABLE IF EXISTS `accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `requestable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `model_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accessories_company_id_index` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories`
--

LOCK TABLES `accessories` WRITE;
/*!40000 ALTER TABLE `accessories` DISABLE KEYS */;
/*!40000 ALTER TABLE `accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accessories_users`
--

DROP TABLE IF EXISTS `accessories_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories_users`
--

LOCK TABLES `accessories_users` WRITE;
/*!40000 ALTER TABLE `accessories_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `accessories_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action_logs`
--

DROP TABLE IF EXISTS `action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` int(11) DEFAULT NULL,
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `expected_checkin` date DEFAULT NULL,
  `accepted_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `accept_signature` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `stored_eula` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `action_logs_thread_id_index` (`thread_id`),
  KEY `action_logs_created_at_index` (`created_at`),
  KEY `action_logs_item_type_item_id_action_type_index` (`item_type`,`item_id`,`action_type`),
  KEY `action_logs_target_type_target_id_action_type_index` (`target_type`,`target_id`,`action_type`),
  KEY `action_logs_target_type_target_id_index` (`target_type`,`target_id`),
  KEY `action_logs_company_id_index` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_logs`
--

LOCK TABLES `action_logs` WRITE;
/*!40000 ALTER TABLE `action_logs` DISABLE KEYS */;
INSERT INTO `action_logs` VALUES (1,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',1,NULL,NULL,'2022-08-05 03:34:32','2022-08-05 03:34:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',2,NULL,NULL,'2022-08-05 03:37:15','2022-08-05 03:37:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',3,NULL,NULL,'2022-08-05 18:33:54','2022-08-05 18:33:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',4,NULL,NULL,'2022-08-05 18:43:10','2022-08-05 18:43:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',5,NULL,NULL,'2022-08-05 18:43:40','2022-08-05 18:43:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',6,NULL,NULL,'2022-08-05 18:44:56','2022-08-05 18:44:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',7,NULL,NULL,'2022-08-05 18:46:04','2022-08-05 18:46:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',8,NULL,NULL,'2022-08-05 18:50:30','2022-08-05 18:50:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',9,NULL,NULL,'2022-08-05 18:51:16','2022-08-05 18:51:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',10,NULL,NULL,'2022-08-05 18:53:01','2022-08-05 18:53:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',11,NULL,NULL,'2022-08-05 18:54:26','2022-08-05 18:54:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',12,NULL,NULL,'2022-08-05 18:56:10','2022-08-05 18:56:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',13,NULL,NULL,'2022-08-05 19:02:06','2022-08-05 19:02:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',14,NULL,NULL,'2022-08-05 19:03:39','2022-08-05 19:03:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',15,NULL,NULL,'2022-08-05 19:07:39','2022-08-05 19:07:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',16,NULL,NULL,'2022-08-05 19:09:31','2022-08-05 19:09:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,3,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',16,NULL,NULL,'2022-08-05 19:09:54','2022-08-05 19:09:54',NULL,NULL,NULL,NULL,'{\"name\":{\"old\":\"Microphone Stands (Qty 4)\",\"new\":\"Atlas Microphone Stands (Qty 4)\"}}',NULL,NULL),(18,3,'delete',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',9,NULL,NULL,'2022-08-05 19:10:46','2022-08-05 19:10:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',17,NULL,NULL,'2022-08-05 19:14:49','2022-08-05 19:14:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',18,NULL,NULL,'2022-08-05 19:15:46','2022-08-05 19:15:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',19,NULL,NULL,'2022-08-05 19:17:38','2022-08-05 19:17:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',20,NULL,NULL,'2022-08-05 19:18:28','2022-08-05 19:18:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',21,NULL,NULL,'2022-08-05 19:20:39','2022-08-05 19:20:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',22,NULL,NULL,'2022-08-05 19:21:20','2022-08-05 19:21:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',23,NULL,NULL,'2022-08-05 19:21:43','2022-08-05 19:21:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',24,NULL,NULL,'2022-08-05 19:22:29','2022-08-05 19:22:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',25,NULL,NULL,'2022-08-05 19:24:45','2022-08-05 19:24:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',26,NULL,NULL,'2022-08-05 19:26:23','2022-08-05 19:26:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',27,NULL,NULL,'2022-08-05 19:30:42','2022-08-05 19:30:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',28,NULL,NULL,'2022-08-05 19:32:37','2022-08-05 19:32:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',29,NULL,NULL,'2022-08-05 19:34:41','2022-08-05 19:34:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',30,NULL,NULL,'2022-08-05 19:36:38','2022-08-05 19:36:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',31,NULL,NULL,'2022-08-05 19:37:53','2022-08-05 19:37:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,3,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',30,NULL,NULL,'2022-08-05 19:39:01','2022-08-05 19:39:01',NULL,NULL,NULL,NULL,'{\"notes\":{\"old\":\"Receiver, EV Transmitter, VHF Transmitter, Power Cable\",\"new\":\"UHF-4 Wireless Receiver, EV Transmitter, VHF Transmitter, Power Cable\"}}',NULL,NULL),(35,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',32,NULL,NULL,'2022-08-05 19:40:37','2022-08-05 19:40:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',33,NULL,NULL,'2022-08-05 19:42:03','2022-08-05 19:42:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',34,NULL,NULL,'2022-08-05 19:44:04','2022-08-05 19:44:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',35,NULL,NULL,'2022-08-05 19:47:50','2022-08-05 19:47:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',36,NULL,NULL,'2022-08-05 19:48:55','2022-08-05 19:48:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',37,NULL,NULL,'2022-08-05 19:50:18','2022-08-05 19:50:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',38,NULL,NULL,'2022-08-05 19:52:43','2022-08-05 19:52:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,3,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',39,NULL,NULL,'2022-08-05 19:55:14','2022-08-05 19:55:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,3,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',29,NULL,NULL,'2022-08-05 19:58:20','2022-08-05 19:58:20',NULL,NULL,NULL,NULL,'{\"notes\":{\"old\":\"EV Transmitter, Power Cable\",\"new\":\"UHF Receiver, EV Transmitter, Power Cable\"}}',NULL,NULL),(44,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',8,NULL,NULL,'2022-08-05 20:05:56','2022-08-05 20:05:56',NULL,NULL,NULL,NULL,'{\"name\":{\"old\":\"1\\/4 Inch to Mini XLR (Qty 5)\",\"new\":\"1\\/4 Inch to Mini XLR (Qty 6)\"},\"rtd_location_id\":{\"old\":null,\"new\":\"17\"},\"location_id\":{\"old\":null,\"new\":\"17\"}}',NULL,NULL),(45,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',36,NULL,NULL,'2022-08-05 20:06:18','2022-08-05 20:06:18',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"10\"},\"location_id\":{\"old\":null,\"new\":\"10\"}}',NULL,NULL),(46,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',3,NULL,NULL,'2022-08-05 20:06:36','2022-08-05 20:06:36',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"10\"},\"location_id\":{\"old\":null,\"new\":\"10\"}}',NULL,NULL),(47,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',37,NULL,NULL,'2022-08-05 20:07:08','2022-08-05 20:07:08',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"22\"},\"location_id\":{\"old\":null,\"new\":\"22\"}}',NULL,NULL),(48,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',38,NULL,NULL,'2022-08-05 20:07:42','2022-08-05 20:07:42',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"14\"},\"location_id\":{\"old\":null,\"new\":\"14\"}}',NULL,NULL),(49,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',37,NULL,NULL,'2022-08-05 20:08:02','2022-08-05 20:08:02',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":22,\"new\":\"14\"},\"location_id\":{\"old\":22,\"new\":\"14\"}}',NULL,NULL),(50,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',21,NULL,NULL,'2022-08-05 20:08:27','2022-08-05 20:08:27',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"10\"},\"location_id\":{\"old\":null,\"new\":\"10\"}}',NULL,NULL),(51,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',30,NULL,NULL,'2022-08-05 20:09:08','2022-08-05 20:09:08',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"21\"},\"location_id\":{\"old\":null,\"new\":\"21\"}}',NULL,NULL),(52,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',30,NULL,NULL,'2022-08-05 20:11:03','2022-08-05 20:11:03',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":21,\"new\":\"22\"},\"location_id\":{\"old\":21,\"new\":\"22\"}}',NULL,NULL),(53,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',29,NULL,NULL,'2022-08-05 20:11:20','2022-08-05 20:11:20',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"22\"},\"location_id\":{\"old\":null,\"new\":\"22\"}}',NULL,NULL),(54,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',27,NULL,NULL,'2022-08-05 20:11:41','2022-08-05 20:11:41',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"23\"},\"location_id\":{\"old\":null,\"new\":\"23\"}}',NULL,NULL),(55,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',35,NULL,NULL,'2022-08-05 20:12:10','2022-08-05 20:12:10',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"23\"},\"location_id\":{\"old\":null,\"new\":\"23\"}}',NULL,NULL),(56,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',28,NULL,NULL,'2022-08-05 20:12:45','2022-08-05 20:12:45',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"24\"},\"location_id\":{\"old\":null,\"new\":\"24\"}}',NULL,NULL),(57,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',26,NULL,NULL,'2022-08-05 20:13:05','2022-08-05 20:13:05',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"19\"},\"location_id\":{\"old\":null,\"new\":\"19\"}}',NULL,NULL),(58,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',25,NULL,NULL,'2022-08-05 20:13:40','2022-08-05 20:13:40',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"19\"},\"location_id\":{\"old\":null,\"new\":\"19\"}}',NULL,NULL),(59,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',34,NULL,NULL,'2022-08-05 20:14:05','2022-08-05 20:14:05',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"20\"},\"location_id\":{\"old\":null,\"new\":\"20\"}}',NULL,NULL),(60,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',33,NULL,NULL,'2022-08-05 20:14:22','2022-08-05 20:14:22',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"20\"},\"location_id\":{\"old\":null,\"new\":\"20\"}}',NULL,NULL),(61,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',32,NULL,NULL,'2022-08-05 20:14:43','2022-08-05 20:14:43',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"21\"},\"location_id\":{\"old\":null,\"new\":\"21\"}}',NULL,NULL),(62,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',31,NULL,NULL,'2022-08-05 20:15:01','2022-08-05 20:15:01',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"21\"},\"location_id\":{\"old\":null,\"new\":\"21\"}}',NULL,NULL),(63,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',18,NULL,NULL,'2022-08-05 20:15:28','2022-08-05 20:15:28',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"11\"},\"location_id\":{\"old\":null,\"new\":\"11\"}}',NULL,NULL),(64,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',17,NULL,NULL,'2022-08-05 20:15:46','2022-08-05 20:15:46',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"11\"},\"location_id\":{\"old\":null,\"new\":\"11\"}}',NULL,NULL),(65,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',15,NULL,NULL,'2022-08-05 20:16:12','2022-08-05 20:16:12',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"18\"},\"location_id\":{\"old\":null,\"new\":\"18\"}}',NULL,NULL),(66,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',20,NULL,NULL,'2022-08-05 20:16:41','2022-08-05 20:16:41',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"7\"},\"location_id\":{\"old\":null,\"new\":\"7\"}}',NULL,NULL),(67,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',39,NULL,NULL,'2022-08-05 20:17:05','2022-08-05 20:17:05',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"32\"},\"location_id\":{\"old\":null,\"new\":\"32\"}}',NULL,NULL),(68,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',12,NULL,NULL,'2022-08-05 20:17:30','2022-08-05 20:17:30',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"1\"},\"location_id\":{\"old\":null,\"new\":\"1\"}}',NULL,NULL),(69,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',10,NULL,NULL,'2022-08-05 20:17:45','2022-08-05 20:17:45',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"1\"},\"location_id\":{\"old\":null,\"new\":\"1\"}}',NULL,NULL),(70,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',11,NULL,NULL,'2022-08-05 20:18:05','2022-08-05 20:18:05',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"1\"},\"location_id\":{\"old\":null,\"new\":\"1\"}}',NULL,NULL),(71,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',13,NULL,NULL,'2022-08-05 20:18:32','2022-08-05 20:18:32',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"9\"},\"location_id\":{\"old\":null,\"new\":\"9\"}}',NULL,NULL),(72,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',19,NULL,NULL,'2022-08-05 20:18:51','2022-08-05 20:18:51',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"5\"},\"location_id\":{\"old\":null,\"new\":\"5\"}}',NULL,NULL),(73,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',14,NULL,NULL,'2022-08-05 20:19:22','2022-08-05 20:19:22',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"9\"},\"location_id\":{\"old\":null,\"new\":\"9\"}}',NULL,NULL),(74,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',40,NULL,NULL,'2022-08-05 20:20:20','2022-08-05 20:20:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',8,NULL,NULL,'2022-08-05 20:20:34','2022-08-05 20:20:34',NULL,NULL,NULL,NULL,'{\"name\":{\"old\":\"1\\/4 Inch to Mini XLR (Qty 6)\",\"new\":\"1\\/4 Inch to Mini XLR Cable (Qty 6)\"}}',NULL,NULL),(76,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',41,NULL,NULL,'2022-08-05 20:21:17','2022-08-05 20:21:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',42,NULL,NULL,'2022-08-05 20:22:00','2022-08-05 20:22:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',43,NULL,NULL,'2022-08-05 20:23:48','2022-08-05 20:23:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',16,NULL,NULL,'2022-08-06 02:07:07','2022-08-06 02:07:07',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"33\"},\"location_id\":{\"old\":null,\"new\":\"33\"}}',NULL,NULL),(80,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',22,NULL,NULL,'2022-08-06 02:16:09','2022-08-06 02:16:09',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"33\"},\"location_id\":{\"old\":null,\"new\":\"33\"}}',NULL,NULL),(81,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',6,NULL,NULL,'2022-08-06 02:16:37','2022-08-06 02:16:37',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"33\"},\"location_id\":{\"old\":null,\"new\":\"33\"}}',NULL,NULL),(82,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',7,NULL,NULL,'2022-08-06 02:17:05','2022-08-06 02:17:05',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"33\"},\"location_id\":{\"old\":null,\"new\":\"33\"}}',NULL,NULL),(83,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',4,NULL,NULL,'2022-08-06 02:17:36','2022-08-06 02:17:36',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"33\"},\"location_id\":{\"old\":null,\"new\":\"33\"}}',NULL,NULL),(84,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',5,NULL,NULL,'2022-08-06 02:17:50','2022-08-06 02:17:50',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"33\"},\"location_id\":{\"old\":null,\"new\":\"33\"}}',NULL,NULL),(85,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',24,NULL,NULL,'2022-08-06 02:18:05','2022-08-06 02:18:05',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"33\"},\"location_id\":{\"old\":null,\"new\":\"33\"}}',NULL,NULL),(86,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',23,NULL,NULL,'2022-08-06 02:18:32','2022-08-06 02:18:32',NULL,NULL,NULL,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"33\"},\"location_id\":{\"old\":null,\"new\":\"33\"}}',NULL,NULL),(87,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',43,NULL,NULL,'2022-08-06 03:31:59','2022-08-06 03:31:59',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(88,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',8,NULL,NULL,'2022-08-06 03:32:35','2022-08-06 03:32:35',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(89,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',36,NULL,NULL,'2022-08-06 03:33:03','2022-08-06 03:33:03',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(90,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',3,NULL,NULL,'2022-08-06 03:33:32','2022-08-06 03:33:32',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(91,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',16,NULL,NULL,'2022-08-06 03:34:04','2022-08-06 03:34:05',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(92,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',42,NULL,NULL,'2022-08-06 03:34:42','2022-08-06 03:34:42',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(93,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',41,NULL,NULL,'2022-08-06 03:35:19','2022-08-06 03:35:19',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(94,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',23,NULL,NULL,'2022-08-06 03:35:51','2022-08-06 03:35:51',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(95,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',37,NULL,NULL,'2022-08-06 03:36:20','2022-08-06 03:36:20',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(96,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',24,NULL,NULL,'2022-08-06 03:36:48','2022-08-06 03:36:48',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(97,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',38,NULL,NULL,'2022-08-06 03:39:45','2022-08-06 03:39:45',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(98,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',4,NULL,NULL,'2022-08-06 03:40:52','2022-08-06 03:40:52',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(99,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',5,NULL,NULL,'2022-08-06 03:41:20','2022-08-06 03:41:21',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(100,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',21,NULL,NULL,'2022-08-06 03:41:53','2022-08-06 03:41:53',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(101,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',6,NULL,NULL,'2022-08-06 03:42:46','2022-08-06 03:42:46',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(102,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',7,NULL,NULL,'2022-08-06 03:43:19','2022-08-06 03:43:19',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(103,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',30,NULL,NULL,'2022-08-06 03:44:15','2022-08-06 03:44:15',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(104,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',29,NULL,NULL,'2022-08-06 03:44:50','2022-08-06 03:44:50',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(105,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',27,NULL,NULL,'2022-08-06 03:45:26','2022-08-06 03:45:26',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(106,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',35,NULL,NULL,'2022-08-06 03:45:58','2022-08-06 03:45:58',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(107,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',28,NULL,NULL,'2022-08-06 03:46:39','2022-08-06 03:46:39',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(108,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',26,NULL,NULL,'2022-08-06 03:47:13','2022-08-06 03:47:14',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(109,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',25,NULL,NULL,'2022-08-06 03:47:45','2022-08-06 03:47:45',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(110,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',34,NULL,NULL,'2022-08-06 03:48:13','2022-08-06 03:48:13',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(111,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',33,NULL,NULL,'2022-08-06 03:49:11','2022-08-06 03:49:11',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(112,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',32,NULL,NULL,'2022-08-06 03:49:53','2022-08-06 03:49:53',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(113,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',31,NULL,NULL,'2022-08-06 03:50:22','2022-08-06 03:50:23',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(114,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',40,NULL,NULL,'2022-08-06 03:50:50','2022-08-06 03:50:50',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(115,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',18,NULL,NULL,'2022-08-06 03:51:20','2022-08-06 03:51:20',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(116,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',17,NULL,NULL,'2022-08-06 03:51:50','2022-08-06 03:51:50',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(117,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',15,NULL,NULL,'2022-08-06 03:52:21','2022-08-06 03:52:21',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(118,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',20,NULL,NULL,'2022-08-06 03:52:48','2022-08-06 03:52:48',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(119,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',39,NULL,NULL,'2022-08-06 03:53:21','2022-08-06 03:53:22',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(120,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',12,NULL,NULL,'2022-08-06 03:54:00','2022-08-06 03:54:00',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(121,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',10,NULL,NULL,'2022-08-06 03:54:36','2022-08-06 03:54:36',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(122,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',11,NULL,NULL,'2022-08-06 03:55:13','2022-08-06 03:55:13',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(123,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',22,NULL,NULL,'2022-08-06 03:55:50','2022-08-06 03:55:50',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(124,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',13,NULL,NULL,'2022-08-06 03:56:22','2022-08-06 03:56:22',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(125,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',19,NULL,NULL,'2022-08-06 03:56:50','2022-08-06 03:56:51',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(126,2,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',14,NULL,NULL,'2022-08-06 03:57:22','2022-08-06 03:57:22',NULL,NULL,NULL,NULL,'{\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL,NULL),(127,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',44,NULL,NULL,'2022-08-07 17:44:38','2022-08-07 17:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(128,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',44,NULL,NULL,'2022-08-07 18:18:53','2022-08-07 18:18:53',NULL,NULL,NULL,NULL,'{\"name\":{\"old\":\"vddsv\",\"new\":\"Test - Brass\"},\"status_id\":{\"old\":1,\"new\":\"3\"},\"company_id\":{\"old\":null,\"new\":\"1\"}}',NULL,NULL);
/*!40000 ALTER TABLE `action_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_logs`
--

DROP TABLE IF EXISTS `asset_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` int(11) NOT NULL,
  `checkedout_to` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `accepted_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `expected_checkin` date DEFAULT NULL,
  `component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_logs`
--

LOCK TABLES `asset_logs` WRITE;
/*!40000 ALTER TABLE `asset_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_maintenances`
--

DROP TABLE IF EXISTS `asset_maintenances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_maintenances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL,
  `supplier_id` int(10) unsigned NOT NULL,
  `asset_maintenance_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_warranty` tinyint(1) NOT NULL,
  `start_date` date NOT NULL,
  `completion_date` date DEFAULT NULL,
  `asset_maintenance_time` int(11) DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(20,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_maintenances`
--

LOCK TABLES `asset_maintenances` WRITE;
/*!40000 ALTER TABLE `asset_maintenances` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_maintenances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_uploads`
--

DROP TABLE IF EXISTS `asset_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` int(11) NOT NULL,
  `filenotes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_uploads`
--

LOCK TABLES `asset_uploads` WRITE;
/*!40000 ALTER TABLE `asset_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `serial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `physical` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `warranty_months` int(11) DEFAULT NULL,
  `depreciate` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `requestable` tinyint(4) NOT NULL DEFAULT 0,
  `rtd_location_id` int(11) DEFAULT NULL,
  `_snipeit_mac_address_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_checkout` datetime DEFAULT NULL,
  `expected_checkin` date DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `assigned_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_audit_date` datetime DEFAULT NULL,
  `next_audit_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `checkin_counter` int(11) NOT NULL DEFAULT 0,
  `checkout_counter` int(11) NOT NULL DEFAULT 0,
  `requests_counter` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `assets_rtd_location_id_index` (`rtd_location_id`),
  KEY `assets_assigned_type_assigned_to_index` (`assigned_type`,`assigned_to`),
  KEY `assets_created_at_index` (`created_at`),
  KEY `assets_deleted_at_status_id_index` (`deleted_at`,`status_id`),
  KEY `assets_deleted_at_model_id_index` (`deleted_at`,`model_id`),
  KEY `assets_deleted_at_assigned_type_assigned_to_index` (`deleted_at`,`assigned_type`,`assigned_to`),
  KEY `assets_deleted_at_supplier_id_index` (`deleted_at`,`supplier_id`),
  KEY `assets_deleted_at_location_id_index` (`deleted_at`,`location_id`),
  KEY `assets_deleted_at_rtd_location_id_index` (`deleted_at`,`rtd_location_id`),
  KEY `assets_deleted_at_asset_tag_index` (`deleted_at`,`asset_tag`),
  KEY `assets_deleted_at_name_index` (`deleted_at`,`name`),
  KEY `assets_serial_index` (`serial`),
  KEY `assets_company_id_index` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'Test - Electronic','00001',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 03:34:32','2022-08-05 03:34:32',1,NULL,3,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0),(2,'Test - Sound','00002',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 03:37:15','2022-08-05 03:37:15',1,NULL,3,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0),(3,'AT2035','00003',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 18:33:54','2022-08-06 03:33:32',1,NULL,3,0,NULL,0,NULL,0,10,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,10,0,0,0),(4,'EV Speaker','00004',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 18:43:10','2022-08-06 03:40:52',1,NULL,3,0,NULL,0,NULL,0,33,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,33,0,0,0),(5,'EV Speaker ','00005',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 18:43:40','2022-08-06 03:41:21',1,NULL,3,0,NULL,0,NULL,0,33,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,33,0,0,0),(6,'JBL Speaker','00006',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 18:44:56','2022-08-06 03:42:46',1,NULL,3,0,NULL,0,NULL,0,33,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,33,0,0,0),(7,'JBL Speaker','00007',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 18:46:04','2022-08-06 03:43:19',1,NULL,3,0,NULL,0,NULL,0,33,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,33,0,0,0),(8,'1/4 Inch to Mini XLR Cable (Qty 6)','00008',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 18:50:30','2022-08-06 03:32:36',1,NULL,3,0,NULL,0,NULL,0,17,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,17,0,0,0),(9,'Switching Adapter','00009',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 18:51:16','2022-08-05 19:10:46',1,'2022-08-05 19:10:46',3,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0),(10,'Surge Protector 4 Ports (Qty 2)','00010',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 18:53:01','2022-08-06 03:54:36',1,NULL,3,0,NULL,0,NULL,0,1,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,1,0,0,0),(11,'Surge Protector 6 Ports (Qty 4)','00011',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 18:54:26','2022-08-06 03:55:13',1,NULL,3,0,NULL,0,NULL,0,1,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,1,0,0,0),(12,'Surge Protector 12 Ports ','00012',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 18:56:10','2022-08-06 03:54:00',1,NULL,3,0,NULL,0,NULL,0,1,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,1,0,0,0),(13,'Ultra Graph FBQ-Pro FBQ1502','00013',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:02:06','2022-08-06 03:56:22',1,NULL,3,0,NULL,0,NULL,0,9,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,9,0,0,0),(14,'XLS 1502 DriveCore','00014',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:03:39','2022-08-06 03:57:22',1,NULL,3,0,NULL,0,NULL,0,9,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,9,0,0,0),(15,'Portable Two-Way Radio (Qty 4)','00015',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:07:39','2022-08-06 03:52:21',1,NULL,3,0,NULL,0,NULL,0,18,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,18,0,0,0),(16,'Atlas Microphone Stands (Qty 4)','00016',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:09:31','2022-08-06 03:34:05',1,NULL,3,0,NULL,0,NULL,0,33,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,33,0,0,0),(17,'Oxygen 25 USB Midi Keyboard Controller Older Version','00017',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:14:49','2022-08-06 03:51:50',1,NULL,3,0,NULL,0,NULL,0,11,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,11,0,0,0),(18,'Oxygen 25 Midi Keyboard Controller Newer Version','00018',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:15:46','2022-08-06 03:51:20',1,NULL,3,0,NULL,0,NULL,0,11,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,11,0,0,0),(19,'Work Light (Qty 9)','00019',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:17:38','2022-08-06 03:56:51',1,NULL,3,0,NULL,0,NULL,0,5,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,5,0,0,0),(20,'Stage Light (Qty 6)','00020',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:18:28','2022-08-06 03:52:48',1,NULL,3,0,NULL,0,NULL,0,7,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,7,0,0,0),(21,'Headset Mic','00021',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:20:39','2022-08-06 03:41:53',1,NULL,3,0,NULL,0,NULL,0,10,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,10,0,0,0),(22,'Tripod Mic Stand (Qty 2)','00022',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:21:20','2022-08-06 03:55:51',1,NULL,3,0,NULL,0,NULL,0,33,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,33,0,0,0),(23,'Bendy Mic Stand','00023',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:21:43','2022-08-06 03:35:51',1,NULL,3,0,NULL,0,NULL,0,33,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,33,0,0,0),(24,'Circle Base Weighted Mic Stand (Qty 3)','00024',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:22:29','2022-08-06 03:36:48',1,NULL,3,0,NULL,0,NULL,0,33,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,33,0,0,0),(25,'Microphone Kit 4','00025',2,NULL,NULL,NULL,NULL,NULL,'EV Transmitter, WX1200 Receiver, Gap Transmitter, Power Cable',NULL,3,'2022-08-05 19:24:45','2022-08-06 03:47:45',1,NULL,3,0,NULL,0,NULL,0,19,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,19,0,0,0),(26,'Microphone Kit 3','00026',2,NULL,NULL,NULL,NULL,NULL,'WX1200 Receiver, Gap Transmitter, Power Cable',NULL,3,'2022-08-05 19:26:23','2022-08-06 03:47:14',1,NULL,3,0,NULL,0,NULL,0,19,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,19,0,0,0),(27,'Microphone Kit 12 ','00027',2,NULL,NULL,NULL,NULL,NULL,'EV Transmitter, Power Cable',NULL,3,'2022-08-05 19:30:42','2022-08-06 03:45:26',1,NULL,3,0,NULL,0,NULL,0,23,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,23,0,0,0),(28,'Microphone Kit 269020761','00028',2,NULL,NULL,NULL,NULL,NULL,'Sticky Receiver, Transmitter, Power Cable',NULL,3,'2022-08-05 19:32:37','2022-08-06 03:46:39',1,NULL,3,0,NULL,0,NULL,0,24,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,24,0,0,0),(29,'Microphone Kit 11','00029',2,NULL,NULL,NULL,NULL,NULL,'UHF Receiver, EV Transmitter, Power Cable',NULL,3,'2022-08-05 19:34:41','2022-08-06 03:44:50',1,NULL,3,0,NULL,0,NULL,0,22,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,22,0,0,0),(30,'Microphone Kit 10','00030',2,NULL,NULL,NULL,NULL,NULL,'UHF-4 Wireless Receiver, EV Transmitter, VHF Transmitter, Power Cable',NULL,3,'2022-08-05 19:36:38','2022-08-06 03:44:15',1,NULL,3,0,NULL,0,NULL,0,22,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,22,0,0,0),(31,'Microphone Kit 8','00031',2,NULL,NULL,NULL,NULL,NULL,'WX1200 Receiver, EV Transmitter, Power Cable',NULL,3,'2022-08-05 19:37:53','2022-08-06 03:50:23',1,NULL,3,0,NULL,0,NULL,0,21,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,21,0,0,0),(32,'Microphone Kit 7','00032',2,NULL,NULL,NULL,NULL,NULL,'VHF Wireless Receiver, EV Transmitter, Power Cable',NULL,3,'2022-08-05 19:40:37','2022-08-06 03:49:54',1,NULL,3,0,NULL,0,NULL,0,21,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,21,0,0,0),(33,'Microphone Kit 6','00033',2,NULL,NULL,NULL,NULL,NULL,'ATW-R700 UHF Receiver, EV Transmitter, Power Cable (Qty 2)',NULL,3,'2022-08-05 19:42:03','2022-08-06 03:49:17',1,NULL,3,0,NULL,0,NULL,0,20,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,20,0,0,0),(34,'Microphone Kit 5 ','00034',2,NULL,NULL,NULL,NULL,NULL,'VHF Wireless Receiver, Audio Technica Transmitter, EV Transmitter, Power Cable (Qty 2)',NULL,3,'2022-08-05 19:44:03','2022-08-06 03:48:13',1,NULL,3,0,NULL,0,NULL,0,20,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,20,0,0,0),(35,'Microphone Kit 14','00035',2,NULL,NULL,NULL,NULL,NULL,'Sticky Receiver, Power Cable',NULL,3,'2022-08-05 19:47:50','2022-08-06 03:45:58',1,NULL,3,0,NULL,0,NULL,0,23,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,23,0,0,0),(36,'AKG P120 Microphone','00036',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:48:55','2022-08-06 03:33:03',1,NULL,3,0,NULL,0,NULL,0,10,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,10,0,0,0),(37,'Big Box Light ','00037',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:50:18','2022-08-06 03:36:20',1,NULL,3,0,NULL,0,NULL,0,14,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,14,0,0,0),(38,'Disco Light','00038',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:52:43','2022-08-06 03:39:45',1,NULL,3,0,NULL,0,NULL,0,14,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,14,0,0,0),(39,'Step Ladder (Qty 2)','00039',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2022-08-05 19:55:14','2022-08-06 03:53:22',1,NULL,3,0,NULL,0,NULL,0,32,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,32,0,0,0),(40,'Mono 1/4 Inch Cable (Qty 7)','00040',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-08-05 20:20:20','2022-08-06 03:50:51',1,NULL,3,0,NULL,0,NULL,0,17,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,17,0,0,0),(41,'Azden 31 LT Transmitter','00041',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-08-05 20:21:17','2022-08-06 03:35:19',1,NULL,3,0,NULL,0,NULL,0,18,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,18,0,0,0),(42,'ATW-R2100A Receiver','00042',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-08-05 20:22:00','2022-08-06 03:34:42',1,NULL,3,0,NULL,0,NULL,0,18,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,18,0,0,0),(43,'1/4 Inch to 3.5 mm Mono Cable','00043',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-08-05 20:23:48','2022-08-06 03:31:59',1,NULL,3,0,NULL,0,NULL,0,17,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,17,0,0,0),(44,'Test - Brass','00044',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-08-07 17:44:38','2022-08-07 18:18:53',1,NULL,3,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `eula_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_default_eula` tinyint(1) NOT NULL DEFAULT 0,
  `require_acceptance` tinyint(1) NOT NULL DEFAULT 0,
  `category_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'asset',
  `checkin_email` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Misc Software','2022-08-05 03:05:10','2022-08-05 03:05:10',NULL,NULL,NULL,0,0,'license',0,NULL),(2,'Electronic','2022-08-05 03:33:18','2022-08-05 03:33:18',NULL,NULL,NULL,0,0,'asset',0,NULL),(3,'Sound','2022-08-05 03:33:36','2022-08-05 03:33:36',NULL,NULL,NULL,0,0,'asset',0,NULL),(4,'Brass','2022-08-06 01:55:31','2022-08-06 01:55:31',NULL,NULL,NULL,0,0,'asset',0,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_acceptances`
--

DROP TABLE IF EXISTS `checkout_acceptances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout_acceptances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkoutable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkoutable_id` bigint(20) unsigned NOT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `signature_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `declined_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `stored_eula` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stored_eula_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checkout_acceptances_checkoutable_type_checkoutable_id_index` (`checkoutable_type`,`checkoutable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_acceptances`
--

LOCK TABLES `checkout_acceptances` WRITE;
/*!40000 ALTER TABLE `checkout_acceptances` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_acceptances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_requests`
--

DROP TABLE IF EXISTS `checkout_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `requestable_id` int(11) NOT NULL,
  `requestable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `fulfilled_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checkout_requests_user_id_requestable_id_requestable_type` (`user_id`,`requestable_id`,`requestable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_requests`
--

LOCK TABLES `checkout_requests` WRITE;
/*!40000 ALTER TABLE `checkout_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `companies_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Band','2022-08-06 03:30:17','2022-08-06 03:30:17',NULL),(2,'Chorus ','2022-08-06 03:30:38','2022-08-06 03:30:38',NULL);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components`
--

DROP TABLE IF EXISTS `components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `serial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `components_company_id_index` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components`
--

LOCK TABLES `components` WRITE;
/*!40000 ALTER TABLE `components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_assets`
--

DROP TABLE IF EXISTS `components_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `assigned_qty` int(11) DEFAULT 1,
  `component_id` int(11) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_assets`
--

LOCK TABLES `components_assets` WRITE;
/*!40000 ALTER TABLE `components_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumables`
--

DROP TABLE IF EXISTS `consumables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `requestable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `model_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `item_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `consumables_company_id_index` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumables`
--

LOCK TABLES `consumables` WRITE;
/*!40000 ALTER TABLE `consumables` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumables_users`
--

DROP TABLE IF EXISTS `consumables_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumables_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumables_users`
--

LOCK TABLES `consumables_users` WRITE;
/*!40000 ALTER TABLE `consumables_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumables_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_custom_fieldset`
--

DROP TABLE IF EXISTS `custom_field_custom_fieldset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_custom_fieldset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `custom_fieldset_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_custom_fieldset`
--

LOCK TABLES `custom_field_custom_fieldset` WRITE;
/*!40000 ALTER TABLE `custom_field_custom_fieldset` DISABLE KEYS */;
INSERT INTO `custom_field_custom_fieldset` VALUES (1,1,1,1,0);
/*!40000 ALTER TABLE `custom_field_custom_fieldset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `field_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_encrypted` tinyint(1) NOT NULL DEFAULT 0,
  `db_column` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `help_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_email` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
INSERT INTO `custom_fields` VALUES (1,'MAC Address','regex:/^[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}$/','text',NULL,'2022-08-05 03:04:15',NULL,NULL,0,'_snipeit_mac_address_1',NULL,0,0);
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fieldsets`
--

DROP TABLE IF EXISTS `custom_fieldsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fieldsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fieldsets`
--

LOCK TABLES `custom_fieldsets` WRITE;
/*!40000 ALTER TABLE `custom_fieldsets` DISABLE KEYS */;
INSERT INTO `custom_fieldsets` VALUES (1,'Asset with MAC Address',NULL,NULL,NULL);
/*!40000 ALTER TABLE `custom_fieldsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departments_company_id_index` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depreciations`
--

DROP TABLE IF EXISTS `depreciations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `depreciations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `months` int(11) NOT NULL,
  `depreciation_min` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depreciations`
--

LOCK TABLES `depreciations` WRITE;
/*!40000 ALTER TABLE `depreciations` DISABLE KEYS */;
/*!40000 ALTER TABLE `depreciations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) NOT NULL,
  `import_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `header_row` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_row` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imports`
--

LOCK TABLES `imports` WRITE;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits`
--

DROP TABLE IF EXISTS `kits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits`
--

LOCK TABLES `kits` WRITE;
/*!40000 ALTER TABLE `kits` DISABLE KEYS */;
/*!40000 ALTER TABLE `kits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits_accessories`
--

DROP TABLE IF EXISTS `kits_accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kits_accessories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits_accessories`
--

LOCK TABLES `kits_accessories` WRITE;
/*!40000 ALTER TABLE `kits_accessories` DISABLE KEYS */;
/*!40000 ALTER TABLE `kits_accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits_consumables`
--

DROP TABLE IF EXISTS `kits_consumables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kits_consumables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits_consumables`
--

LOCK TABLES `kits_consumables` WRITE;
/*!40000 ALTER TABLE `kits_consumables` DISABLE KEYS */;
/*!40000 ALTER TABLE `kits_consumables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits_licenses`
--

DROP TABLE IF EXISTS `kits_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kits_licenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits_licenses`
--

LOCK TABLES `kits_licenses` WRITE;
/*!40000 ALTER TABLE `kits_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `kits_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits_models`
--

DROP TABLE IF EXISTS `kits_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kits_models` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits_models`
--

LOCK TABLES `kits_models` WRITE;
/*!40000 ALTER TABLE `kits_models` DISABLE KEYS */;
/*!40000 ALTER TABLE `kits_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_seats`
--

DROP TABLE IF EXISTS `license_seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license_seats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `license_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `license_seats_license_id_index` (`license_id`),
  KEY `license_seats_assigned_to_license_id_index` (`assigned_to`,`license_id`),
  KEY `license_seats_asset_id_license_id_index` (`asset_id`,`license_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_seats`
--

LOCK TABLES `license_seats` WRITE;
/*!40000 ALTER TABLE `license_seats` DISABLE KEYS */;
/*!40000 ALTER TABLE `license_seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seats` int(11) NOT NULL DEFAULT 1,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `depreciation_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `license_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depreciate` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `purchase_order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `maintained` tinyint(1) DEFAULT NULL,
  `reassignable` tinyint(1) NOT NULL DEFAULT 1,
  `company_id` int(10) unsigned DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `licenses_company_id_index` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenses`
--

LOCK TABLES `licenses` WRITE;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_ou` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Electronics Storage A1',NULL,NULL,NULL,'2022-08-05 20:00:36','2022-08-06 02:09:18',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Electronics Storage A2',NULL,NULL,NULL,'2022-08-05 20:00:42','2022-08-06 02:10:28',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Electronics Storage A3',NULL,NULL,NULL,'2022-08-05 20:00:49','2022-08-06 02:10:35',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Electronics Storage A4',NULL,NULL,NULL,'2022-08-05 20:00:57','2022-08-06 02:10:41',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Electronics Storage A5',NULL,NULL,NULL,'2022-08-05 20:01:04','2022-08-06 02:10:49',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Electronics Storage A6',NULL,NULL,NULL,'2022-08-05 20:01:14','2022-08-06 02:10:58',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Electronics Storage A7',NULL,NULL,NULL,'2022-08-05 20:01:23','2022-08-06 02:11:07',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Electronics Storage A8',NULL,NULL,NULL,'2022-08-05 20:01:35','2022-08-06 02:11:16',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Electronics Storage B1',NULL,NULL,NULL,'2022-08-05 20:01:54','2022-08-06 02:11:24',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Electronics Storage B2',NULL,NULL,NULL,'2022-08-05 20:02:01','2022-08-06 02:11:32',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Electronics Storage B3',NULL,NULL,NULL,'2022-08-05 20:02:09','2022-08-06 02:11:41',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Electronics Storage B4',NULL,NULL,NULL,'2022-08-05 20:02:16','2022-08-06 02:11:51',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Electronics Storage B5',NULL,NULL,NULL,'2022-08-05 20:02:23','2022-08-06 02:12:02',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Electronics Storage B6',NULL,NULL,NULL,'2022-08-05 20:02:28','2022-08-06 02:12:15',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Electronics Storage B7',NULL,NULL,NULL,'2022-08-05 20:02:34','2022-08-06 02:12:30',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Electronics Storage B8',NULL,NULL,NULL,'2022-08-05 20:02:40','2022-08-06 02:12:40',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Electronics Storage C1',NULL,NULL,NULL,'2022-08-05 20:02:45','2022-08-06 02:12:47',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Electronics Storage C2',NULL,NULL,NULL,'2022-08-05 20:02:51','2022-08-06 02:12:56',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Electronics Storage C3',NULL,NULL,NULL,'2022-08-05 20:02:56','2022-08-06 02:13:03',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Electronics Storage C4',NULL,NULL,NULL,'2022-08-05 20:03:06','2022-08-06 02:13:09',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Electronics Storage C5',NULL,NULL,NULL,'2022-08-05 20:03:14','2022-08-06 02:13:16',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Electronics Storage C6',NULL,NULL,NULL,'2022-08-05 20:03:21','2022-08-06 02:13:43',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Electronics Storage C7',NULL,NULL,NULL,'2022-08-05 20:03:34','2022-08-06 02:13:58',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Electronics Storage C8',NULL,NULL,NULL,'2022-08-05 20:03:45','2022-08-06 02:14:05',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Electronics Storage D1',NULL,NULL,NULL,'2022-08-05 20:04:08','2022-08-06 02:14:11',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Electronics Storage D2',NULL,NULL,NULL,'2022-08-05 20:04:17','2022-08-06 02:14:19',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Electronics Storage D3',NULL,NULL,NULL,'2022-08-05 20:04:23','2022-08-06 02:14:25',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Electronics Storage D4',NULL,NULL,NULL,'2022-08-05 20:04:29','2022-08-06 02:14:34',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Electronics Storage D5',NULL,NULL,NULL,'2022-08-05 20:04:36','2022-08-06 02:14:40',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Electronics Storage D6',NULL,NULL,NULL,'2022-08-05 20:04:43','2022-08-06 02:14:48',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'Electronics Storage D7',NULL,NULL,NULL,'2022-08-05 20:04:48','2022-08-06 02:14:55',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'Electronics Storage D8',NULL,NULL,NULL,'2022-08-05 20:04:54','2022-08-06 02:15:01',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Electronics Storage',NULL,NULL,NULL,'2022-08-06 02:07:04','2022-08-06 02:15:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `successful` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
INSERT INTO `login_attempts` VALUES (1,'NISH','172.71.22.90','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:20:04',NULL),(2,'Jordan','172.71.22.90','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:21:38',NULL),(3,'NISH','172.71.22.90','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:21:51',NULL),(4,'NISHBAND','172.71.26.146','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:25:29',NULL),(5,'NISH','172.71.26.146','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:25:45',NULL),(6,'NISHBAND','172.71.26.146','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:26:17',NULL),(7,'NISH','172.71.26.146','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:26:46',NULL),(8,'NISHBAND','172.71.26.146','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:27:32',NULL),(9,'NISH','172.71.30.60','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:28:47',NULL),(10,'NISHBAND','172.71.30.60','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:29:36',NULL),(11,'NISH','172.71.82.48','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:31:39',NULL),(12,'NISHBAND','172.71.82.28','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:33:53',NULL),(13,'NISH','172.71.82.28','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:34:53',NULL),(14,'NISHBAND','172.71.82.28','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:36:00',NULL),(15,'NISH','108.162.237.52','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:39:05',NULL),(16,'NISH','172.71.82.46','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:43:19',NULL),(17,'NISH','172.71.82.46','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:44:48',NULL),(18,'NISHBAND','172.71.82.46','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-05 03:45:59',NULL),(19,'NISHBAND','172.69.70.152','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36',1,'2022-08-05 16:50:48',NULL),(20,'NISHBAND','172.69.70.152','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36',1,'2022-08-05 16:51:00',NULL),(21,'NISH','172.69.68.214','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36',1,'2022-08-05 20:00:00',NULL),(22,'NISHBAND','172.69.69.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',1,'2022-08-05 22:05:08',NULL),(23,'NISH','172.69.71.188','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',0,'2022-08-06 01:46:44',NULL),(24,'NISH','108.162.221.22','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-06 01:48:27',NULL),(25,'NISHBAND','172.69.68.19','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-06 01:52:25',NULL),(26,'NISH','172.69.68.19','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-06 01:52:41',NULL),(27,'NISHBAND','172.69.68.19','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-06 01:53:47',NULL),(28,'NISH','172.69.70.232','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-06 02:03:23',NULL),(29,'Jordan','172.69.70.24','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',1,'2022-08-06 02:04:42',NULL),(30,'NISH','68.226.248.194','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',0,'2022-08-06 03:03:48',NULL),(31,'Anthony','68.226.248.194','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-06 03:03:57',NULL),(32,'Anthony','2600:8807:2a1f:ff00:6c0a:9040:5608:547d','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-06 03:05:04',NULL),(33,'Anthony','2600:8807:2a1f:ff00:6c0a:9040:5608:547d','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-06 03:06:51',NULL),(34,'Jordan','185.247.70.61','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',1,'2022-08-06 03:24:15',NULL),(35,'NISHBAND','2600:8807:2a1f:ff00:9400:f873:2f4e:69c4','Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/103.0.5060.63 Mobile/15E148 Safari/604.1',1,'2022-08-06 12:04:03',NULL),(36,'Anthony','68.226.248.194','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-06 16:56:10',NULL),(37,'Anthony','68.226.248.194','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-06 17:48:59',NULL),(38,'Anthony','2600:8807:2a1f:ff00:6c0a:9040:5608:547d','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-07 16:42:52',NULL),(39,'Anthony','2600:8807:2a1f:ff00:6c0a:9040:5608:547d','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-07 16:49:58',NULL),(40,'Anthony','172.17.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-07 17:16:50',NULL),(41,'Anthony','172.71.30.114','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-07 17:42:41',NULL),(42,'Anthony','172.71.30.110','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-07 18:16:26',NULL),(43,'Anthony','108.162.237.90','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-07 18:31:24',NULL),(44,'Anthony','2600:8807:2a1f:ff00:6c0a:9040:5608:547d','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0',1,'2022-08-07 18:42:23',NULL);
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'Electronic','2022-08-05 03:33:09','2022-08-05 03:33:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Sound','2022-08-05 03:33:32','2022-08-05 03:33:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Yamaha','2022-08-06 01:55:26','2022-08-06 01:55:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2012_12_06_225921_migration_cartalyst_sentry_install_users',1),(2,'2012_12_06_225929_migration_cartalyst_sentry_install_groups',1),(3,'2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot',1),(4,'2012_12_06_225988_migration_cartalyst_sentry_install_throttle',1),(5,'2013_03_23_193214_update_users_table',1),(6,'2013_11_13_075318_create_models_table',1),(7,'2013_11_13_075335_create_categories_table',1),(8,'2013_11_13_075347_create_manufacturers_table',1),(9,'2013_11_15_015858_add_user_id_to_categories',1),(10,'2013_11_15_112701_add_user_id_to_manufacturers',1),(11,'2013_11_15_190327_create_assets_table',1),(12,'2013_11_15_190357_create_temp_licenses_table',1),(13,'2013_11_15_201848_add_license_name_to_licenses',1),(14,'2013_11_16_040323_create_depreciations_table',1),(15,'2013_11_16_042851_add_depreciation_id_to_models',1),(16,'2013_11_16_084923_add_user_id_to_models',1),(17,'2013_11_16_103258_create_locations_table',1),(18,'2013_11_16_103336_add_location_id_to_assets',1),(19,'2013_11_16_103407_add_checkedout_to_to_assets',1),(20,'2013_11_16_103425_create_history_table',1),(21,'2013_11_17_054359_drop_licenses_table',1),(22,'2013_11_17_054526_add_physical_to_assets',1),(23,'2013_11_17_055126_create_settings_table',1),(24,'2013_11_17_062634_add_license_to_assets',1),(25,'2013_11_18_134332_add_contacts_to_users',1),(26,'2013_11_18_142847_add_info_to_locations',1),(27,'2013_11_18_152942_remove_location_id_from_asset',1),(28,'2013_11_18_164423_set_nullvalues_for_user',1),(29,'2013_11_19_013337_create_asset_logs_table',1),(30,'2013_11_19_061409_edit_added_on_asset_logs_table',1),(31,'2013_11_19_062250_edit_location_id_asset_logs_table',1),(32,'2013_11_20_055822_add_soft_delete_on_assets',1),(33,'2013_11_20_121404_add_soft_delete_on_locations',1),(34,'2013_11_20_123137_add_soft_delete_on_manufacturers',1),(35,'2013_11_20_123725_add_soft_delete_on_categories',1),(36,'2013_11_20_130248_create_status_labels',1),(37,'2013_11_20_130830_add_status_id_on_assets_table',1),(38,'2013_11_20_131544_add_status_type_on_status_labels',1),(39,'2013_11_20_134103_add_archived_to_assets',1),(40,'2013_11_21_002321_add_uploads_table',1),(41,'2013_11_21_024531_remove_deployable_boolean_from_status_labels',1),(42,'2013_11_22_075308_add_option_label_to_settings_table',1),(43,'2013_11_22_213400_edits_to_settings_table',1),(44,'2013_11_25_013244_recreate_licenses_table',1),(45,'2013_11_25_031458_create_license_seats_table',1),(46,'2013_11_25_032022_add_type_to_actionlog_table',1),(47,'2013_11_25_033008_delete_bad_licenses_table',1),(48,'2013_11_25_033131_create_new_licenses_table',1),(49,'2013_11_25_033534_add_licensed_to_licenses_table',1),(50,'2013_11_25_101308_add_warrantee_to_assets_table',1),(51,'2013_11_25_104343_alter_warranty_column_on_assets',1),(52,'2013_11_25_150450_drop_parent_from_categories',1),(53,'2013_11_25_151920_add_depreciate_to_assets',1),(54,'2013_11_25_152903_add_depreciate_to_licenses_table',1),(55,'2013_11_26_211820_drop_license_from_assets_table',1),(56,'2013_11_27_062510_add_note_to_asset_logs_table',1),(57,'2013_12_01_113426_add_filename_to_asset_log',1),(58,'2013_12_06_094618_add_nullable_to_licenses_table',1),(59,'2013_12_10_084038_add_eol_on_models_table',1),(60,'2013_12_12_055218_add_manager_to_users_table',1),(61,'2014_01_28_031200_add_qr_code_to_settings_table',1),(62,'2014_02_13_183016_add_qr_text_to_settings_table',1),(63,'2014_05_24_093839_alter_default_license_depreciation_id',1),(64,'2014_05_27_231658_alter_default_values_licenses',1),(65,'2014_06_19_191508_add_asset_name_to_settings',1),(66,'2014_06_20_004847_make_asset_log_checkedout_to_nullable',1),(67,'2014_06_20_005050_make_asset_log_purchasedate_to_nullable',1),(68,'2014_06_24_003011_add_suppliers',1),(69,'2014_06_24_010742_add_supplier_id_to_asset',1),(70,'2014_06_24_012839_add_zip_to_supplier',1),(71,'2014_06_24_033908_add_url_to_supplier',1),(72,'2014_07_08_054116_add_employee_id_to_users',1),(73,'2014_07_09_134316_add_requestable_to_assets',1),(74,'2014_07_17_085822_add_asset_to_software',1),(75,'2014_07_17_161625_make_asset_id_in_logs_nullable',1),(76,'2014_08_12_053504_alpha_0_4_2_release',1),(77,'2014_08_17_083523_make_location_id_nullable',1),(78,'2014_10_16_200626_add_rtd_location_to_assets',1),(79,'2014_10_24_000417_alter_supplier_state_to_32',1),(80,'2014_10_24_015641_add_display_checkout_date',1),(81,'2014_10_28_222654_add_avatar_field_to_users_table',1),(82,'2014_10_29_045924_add_image_field_to_models_table',1),(83,'2014_11_01_214955_add_eol_display_to_settings',1),(84,'2014_11_04_231416_update_group_field_for_reporting',1),(85,'2014_11_05_212408_add_fields_to_licenses',1),(86,'2014_11_07_021042_add_image_to_supplier',1),(87,'2014_11_20_203007_add_username_to_user',1),(88,'2014_11_20_223947_add_auto_to_settings',1),(89,'2014_11_20_224421_add_prefix_to_settings',1),(90,'2014_11_21_104401_change_licence_type',1),(91,'2014_12_09_082500_add_fields_maintained_term_to_licenses',1),(92,'2015_02_04_155757_increase_user_field_lengths',1),(93,'2015_02_07_013537_add_soft_deleted_to_log',1),(94,'2015_02_10_040958_fix_bad_assigned_to_ids',1),(95,'2015_02_10_053310_migrate_data_to_new_statuses',1),(96,'2015_02_11_044104_migrate_make_license_assigned_null',1),(97,'2015_02_11_104406_migrate_create_requests_table',1),(98,'2015_02_12_001312_add_mac_address_to_asset',1),(99,'2015_02_12_024100_change_license_notes_type',1),(100,'2015_02_17_231020_add_localonly_to_settings',1),(101,'2015_02_19_222322_add_logo_and_colors_to_settings',1),(102,'2015_02_24_072043_add_alerts_to_settings',1),(103,'2015_02_25_022931_add_eula_fields',1),(104,'2015_02_25_204513_add_accessories_table',1),(105,'2015_02_26_091228_add_accessories_user_table',1),(106,'2015_02_26_115128_add_deleted_at_models',1),(107,'2015_02_26_233005_add_category_type',1),(108,'2015_03_01_231912_update_accepted_at_to_acceptance_id',1),(109,'2015_03_05_011929_add_qr_type_to_settings',1),(110,'2015_03_18_055327_add_note_to_user',1),(111,'2015_04_29_234704_add_slack_to_settings',1),(112,'2015_05_04_085151_add_parent_id_to_locations_table',1),(113,'2015_05_22_124421_add_reassignable_to_licenses',1),(114,'2015_06_10_003314_fix_default_for_user_notes',1),(115,'2015_06_10_003554_create_consumables',1),(116,'2015_06_15_183253_move_email_to_username',1),(117,'2015_06_23_070346_make_email_nullable',1),(118,'2015_06_26_213716_create_asset_maintenances_table',1),(119,'2015_07_04_212443_create_custom_fields_table',1),(120,'2015_07_09_014359_add_currency_to_settings_and_locations',1),(121,'2015_07_21_122022_add_expected_checkin_date_to_asset_logs',1),(122,'2015_07_24_093845_add_checkin_email_to_category_table',1),(123,'2015_07_25_055415_remove_email_unique_constraint',1),(124,'2015_07_29_230054_add_thread_id_to_asset_logs_table',1),(125,'2015_07_31_015430_add_accepted_to_assets',1),(126,'2015_09_09_195301_add_custom_css_to_settings',1),(127,'2015_09_21_235926_create_custom_field_custom_fieldset',1),(128,'2015_09_22_000104_create_custom_fieldsets',1),(129,'2015_09_22_003321_add_fieldset_id_to_assets',1),(130,'2015_09_22_003413_migrate_mac_address',1),(131,'2015_09_28_003314_fix_default_purchase_order',1),(132,'2015_10_01_024551_add_accessory_consumable_price_info',1),(133,'2015_10_12_192706_add_brand_to_settings',1),(134,'2015_10_22_003314_fix_defaults_accessories',1),(135,'2015_10_23_182625_add_checkout_time_and_expected_checkout_date_to_assets',1),(136,'2015_11_05_061015_create_companies_table',1),(137,'2015_11_05_061115_add_company_id_to_consumables_table',1),(138,'2015_11_05_183749_image',1),(139,'2015_11_06_092038_add_company_id_to_accessories_table',1),(140,'2015_11_06_100045_add_company_id_to_users_table',1),(141,'2015_11_06_134742_add_company_id_to_licenses_table',1),(142,'2015_11_08_035832_add_company_id_to_assets_table',1),(143,'2015_11_08_222305_add_ldap_fields_to_settings',1),(144,'2015_11_15_151803_add_full_multiple_companies_support_to_settings_table',1),(145,'2015_11_26_195528_import_ldap_settings',1),(146,'2015_11_30_191504_remove_fk_company_id',1),(147,'2015_12_21_193006_add_ldap_server_cert_ignore_to_settings_table',1),(148,'2015_12_30_233509_add_timestamp_and_userId_to_custom_fields',1),(149,'2015_12_30_233658_add_timestamp_and_userId_to_custom_fieldsets',1),(150,'2016_01_28_041048_add_notes_to_models',1),(151,'2016_02_19_070119_add_remember_token_to_users_table',1),(152,'2016_02_19_073625_create_password_resets_table',1),(153,'2016_03_02_193043_add_ldap_flag_to_users',1),(154,'2016_03_02_220517_update_ldap_filter_to_longer_field',1),(155,'2016_03_08_225351_create_components_table',1),(156,'2016_03_09_024038_add_min_stock_to_tables',1),(157,'2016_03_10_133849_add_locale_to_users',1),(158,'2016_03_10_135519_add_locale_to_settings',1),(159,'2016_03_11_185621_add_label_settings_to_settings',1),(160,'2016_03_22_125911_fix_custom_fields_regexes',1),(161,'2016_04_28_141554_add_show_to_users',1),(162,'2016_05_16_164733_add_model_mfg_to_consumable',1),(163,'2016_05_19_180351_add_alt_barcode_settings',1),(164,'2016_05_19_191146_add_alter_interval',1),(165,'2016_05_19_192226_add_inventory_threshold',1),(166,'2016_05_20_024859_remove_option_keys_from_settings_table',1),(167,'2016_05_20_143758_remove_option_value_from_settings_table',1),(168,'2016_06_01_000001_create_oauth_auth_codes_table',1),(169,'2016_06_01_000002_create_oauth_access_tokens_table',1),(170,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(171,'2016_06_01_000004_create_oauth_clients_table',1),(172,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(173,'2016_06_01_140218_add_email_domain_and_format_to_settings',1),(174,'2016_06_22_160725_add_user_id_to_maintenances',1),(175,'2016_07_13_150015_add_is_ad_to_settings',1),(176,'2016_07_14_153609_add_ad_domain_to_settings',1),(177,'2016_07_22_003348_fix_custom_fields_regex_stuff',1),(178,'2016_07_22_054850_one_more_mac_addr_fix',1),(179,'2016_07_22_143045_add_port_to_ldap_settings',1),(180,'2016_07_22_153432_add_tls_to_ldap_settings',1),(181,'2016_07_27_211034_add_zerofill_to_settings',1),(182,'2016_08_02_124944_add_color_to_statuslabel',1),(183,'2016_08_04_134500_add_disallow_ldap_pw_sync_to_settings',1),(184,'2016_08_09_002225_add_manufacturer_to_licenses',1),(185,'2016_08_12_121613_add_manufacturer_to_accessories_table',1),(186,'2016_08_23_143353_add_new_fields_to_custom_fields',1),(187,'2016_08_23_145619_add_show_in_nav_to_status_labels',1),(188,'2016_08_30_084634_make_purchase_cost_nullable',1),(189,'2016_09_01_141051_add_requestable_to_asset_model',1),(190,'2016_09_02_001448_create_checkout_requests_table',1),(191,'2016_09_04_180400_create_actionlog_table',1),(192,'2016_09_04_182149_migrate_asset_log_to_action_log',1),(193,'2016_09_19_235935_fix_fieldtype_for_target_type',1),(194,'2016_09_23_140722_fix_modelno_in_consumables_to_string',1),(195,'2016_09_28_231359_add_company_to_logs',1),(196,'2016_10_14_130709_fix_order_number_to_varchar',1),(197,'2016_10_16_015024_rename_modelno_to_model_number',1),(198,'2016_10_16_015211_rename_consumable_modelno_to_model_number',1),(199,'2016_10_16_143235_rename_model_note_to_notes',1),(200,'2016_10_16_165052_rename_component_total_qty_to_qty',1),(201,'2016_10_19_145520_fix_order_number_in_components_to_string',1),(202,'2016_10_27_151715_add_serial_to_components',1),(203,'2016_10_27_213251_increase_serial_field_capacity',1),(204,'2016_10_29_002724_enable_2fa_fields',1),(205,'2016_10_29_082408_add_signature_to_acceptance',1),(206,'2016_11_01_030818_fix_forgotten_filename_in_action_logs',1),(207,'2016_11_13_020954_rename_component_serial_number_to_serial',1),(208,'2016_11_16_172119_increase_purchase_cost_size',1),(209,'2016_11_17_161317_longer_state_field_in_location',1),(210,'2016_11_17_193706_add_model_number_to_accessories',1),(211,'2016_11_24_160405_add_missing_target_type_to_logs_table',1),(212,'2016_12_07_173720_increase_size_of_state_in_suppliers',1),(213,'2016_12_19_004212_adjust_locale_length_to_10',1),(214,'2016_12_19_133936_extend_phone_lengths_in_supplier_and_elsewhere',1),(215,'2016_12_27_212631_make_asset_assigned_to_polymorphic',1),(216,'2017_01_09_040429_create_locations_ldap_query_field',1),(217,'2017_01_14_002418_create_imports_table',1),(218,'2017_01_25_063357_fix_utf8_custom_field_column_names',1),(219,'2017_03_03_154632_add_time_date_display_to_settings',1),(220,'2017_03_10_210807_add_fields_to_manufacturer',1),(221,'2017_05_08_195520_increase_size_of_field_values_in_custom_fields',1),(222,'2017_05_22_204422_create_departments',1),(223,'2017_05_22_233509_add_manager_to_locations_table',1),(224,'2017_06_14_122059_add_next_autoincrement_to_settings',1),(225,'2017_06_18_151753_add_header_and_first_row_to_importer_table',1),(226,'2017_07_07_191533_add_login_text',1),(227,'2017_07_25_130710_add_thumbsize_to_settings',1),(228,'2017_08_03_160105_set_asset_archived_to_zero_default',1),(229,'2017_08_22_180636_add_secure_password_options',1),(230,'2017_08_25_074822_add_auditing_tables',1),(231,'2017_08_25_101435_add_auditing_to_settings',1),(232,'2017_09_18_225619_fix_assigned_type_not_being_nulled',1),(233,'2017_10_03_015503_drop_foreign_keys',1),(234,'2017_10_10_123504_allow_nullable_depreciation_id_in_models',1),(235,'2017_10_17_133709_add_display_url_to_settings',1),(236,'2017_10_19_120002_add_custom_forgot_password_url',1),(237,'2017_10_19_130406_add_image_and_supplier_to_accessories',1),(238,'2017_10_20_234129_add_location_indices_to_assets',1),(239,'2017_10_25_202930_add_images_uploads_to_locations_manufacturers_etc',1),(240,'2017_10_27_180947_denorm_asset_locations',1),(241,'2017_10_27_192423_migrate_denormed_asset_locations',1),(242,'2017_10_30_182938_add_address_to_user',1),(243,'2017_11_08_025918_add_alert_menu_setting',1),(244,'2017_11_08_123942_labels_display_company_name',1),(245,'2017_12_12_010457_normalize_asset_last_audit_date',1),(246,'2017_12_12_033618_add_actionlog_meta',1),(247,'2017_12_26_170856_re_normalize_last_audit',1),(248,'2018_01_17_184354_add_archived_in_list_setting',1),(249,'2018_01_19_203121_add_dashboard_message_to_settings',1),(250,'2018_01_24_062633_add_footer_settings_to_settings',1),(251,'2018_01_24_093426_add_modellist_preferenc',1),(252,'2018_02_22_160436_add_remote_user_settings',1),(253,'2018_03_03_011032_add_theme_to_settings',1),(254,'2018_03_06_054937_add_default_flag_on_statuslabels',1),(255,'2018_03_23_212048_add_display_in_email_to_custom_fields',1),(256,'2018_03_24_030738_add_show_images_in_email_setting',1),(257,'2018_03_24_050108_add_cc_alerts',1),(258,'2018_03_29_053618_add_canceled_at_and_fulfilled_at_in_requests',1),(259,'2018_03_29_070121_add_drop_unique_requests',1),(260,'2018_03_29_070511_add_new_index_requestable',1),(261,'2018_04_02_150700_labels_display_model_name',1),(262,'2018_04_16_133902_create_custom_field_default_values_table',1),(263,'2018_05_04_073223_add_category_to_licenses',1),(264,'2018_05_04_075235_add_update_license_category',1),(265,'2018_05_08_031515_add_gdpr_privacy_footer',1),(266,'2018_05_14_215229_add_indexes',1),(267,'2018_05_14_223646_add_indexes_to_assets',1),(268,'2018_05_14_233638_denorm_counters_on_assets',1),(269,'2018_05_16_153409_add_first_counter_totals_to_assets',1),(270,'2018_06_21_134622_add_version_footer',1),(271,'2018_07_05_215440_add_unique_serial_option_to_settings',1),(272,'2018_07_17_005911_create_login_attempts_table',1),(273,'2018_07_24_154348_add_logo_to_print_assets',1),(274,'2018_07_28_023826_create_checkout_acceptances_table',1),(275,'2018_08_20_204842_add_depreciation_option_to_settings',1),(276,'2018_09_10_082212_create_checkout_acceptances_for_unaccepted_assets',1),(277,'2018_10_18_191228_add_kits_licenses_table',1),(278,'2018_10_19_153910_add_kits_table',1),(279,'2018_10_19_154013_add_kits_models_table',1),(280,'2018_12_05_211936_add_favicon_to_settings',1),(281,'2018_12_05_212119_add_email_logo_to_settings',1),(282,'2019_02_07_185953_add_kits_consumables_table',1),(283,'2019_02_07_190030_add_kits_accessories_table',1),(284,'2019_02_12_182750_add_actiondate_to_actionlog',1),(285,'2019_02_14_154310_change_auto_increment_prefix_to_nullable',1),(286,'2019_02_16_143518_auto_increment_back_to_string',1),(287,'2019_02_17_205048_add_label_logo_to_settings',1),(288,'2019_02_20_234421_make_serial_nullable',1),(289,'2019_02_21_224703_make_fields_nullable_for_integrity',1),(290,'2019_04_06_060145_add_user_skin_setting',1),(291,'2019_04_06_205355_add_setting_allow_user_skin',1),(292,'2019_06_12_184327_rename_groups_table',1),(293,'2019_07_23_140906_add_show_assigned_assets_to_settings',1),(294,'2019_08_20_084049_add_custom_remote_user_header',1),(295,'2019_12_04_223111_passport_upgrade',1),(296,'2020_02_04_172100_add_ad_append_domain_settings',1),(297,'2020_04_29_222305_add_saml_fields_to_settings',1),(298,'2020_08_11_200712_add_saml_key_rollover',1),(299,'2020_10_22_233743_move_accessory_checkout_note_to_join_table',1),(300,'2020_10_23_161736_fix_zero_values_for_locations',1),(301,'2020_11_18_214827_widen_license_serial_field',1),(302,'2020_12_14_233815_add_digit_separator_to_settings',1),(303,'2020_12_18_090026_swap_target_type_index_order',1),(304,'2020_12_21_153235_update_min_password',1),(305,'2020_12_21_210105_fix_bad_ldap_server_url_for_v5',1),(306,'2021_02_05_172502_add_provider_to_oauth_table',1),(307,'2021_03_18_184102_adds_several_ldap_fields',1),(308,'2021_04_07_001811_add_ldap_dept',1),(309,'2021_04_14_180125_add_ids_to_tables',1),(310,'2021_06_07_155421_add_serial_number_indexes',1),(311,'2021_06_07_155436_add_company_id_indexes',1),(312,'2021_07_28_031345_add_client_side_l_d_a_p_cert_to_settings',1),(313,'2021_07_28_040554_add_client_side_l_d_a_p_key_to_settings',1),(314,'2021_08_11_005206_add_depreciation_minimum_value',1),(315,'2021_08_24_124354_make_ldap_client_certs_nullable',1),(316,'2021_09_20_183216_change_default_label_to_nullable',1),(317,'2021_12_27_151849_change_supplier_address_length',1),(318,'2022_01_10_182548_add_license_id_index_to_license_seats',1),(319,'2022_02_03_214958_blank_out_ldap_active_flag',1),(320,'2022_02_16_152431_add_unique_constraint_to_custom_field',1),(321,'2022_03_03_225655_add_notes_to_accessories',1),(322,'2022_03_03_225754_add_notes_to_components',1),(323,'2022_03_03_225824_add_notes_to_consumables',1),(324,'2022_03_04_080836_add_remote_to_user',1),(325,'2022_03_09_001334_add_eula_to_checkout_acceptance',1),(326,'2022_03_10_175740_add_eula_to_action_logs',1),(327,'2022_03_21_162724_adds_ldap_manager',1),(328,'2022_04_05_135340_add_primary_key_to_custom_fields_pivot',1),(329,'2022_05_16_235350_remove_stored_eula_field',1),(330,'2022_06_23_164407_add_user_id_to_users',1),(331,'2022_06_28_234539_add_username_index_to_users',1),(332,'2022_07_07_010406_add_indexes_to_license_seats',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `models` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `depreciation_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `eol` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deprecated_mac_address` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fieldset_id` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requestable` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,'Electronic',NULL,1,2,'2022-08-05 03:33:20','2022-08-05 03:33:20',NULL,1,0,NULL,0,NULL,NULL,NULL,0),(2,'Sound',NULL,2,3,'2022-08-05 03:33:38','2022-08-05 03:33:38',NULL,1,0,NULL,0,NULL,NULL,NULL,0),(3,'Brass',NULL,3,4,'2022-08-06 01:55:40','2022-08-06 01:55:40',NULL,3,0,NULL,0,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models_custom_fields`
--

DROP TABLE IF EXISTS `models_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `models_custom_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_model_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `default_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models_custom_fields`
--

LOCK TABLES `models_custom_fields` WRITE;
/*!40000 ALTER TABLE `models_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `models_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Snipe-IT Personal Access Client','XBrwekbImnpBh3bdbA5tYICRtWLJts9W8chN4ug9',NULL,'http://localhost',1,0,0,'2022-08-05 03:18:47','2022-08-05 03:18:47'),(2,NULL,'Snipe-IT Password Grant Client','RcgtDqfq7rdPnYHfh0C0DlwgujBI9NIfuu0ONhVN','users','http://localhost',0,1,0,'2022-08-05 03:18:47','2022-08-05 03:18:47'),(3,NULL,'Snipe-IT Personal Access Client','xl6wcdRDsQmz2GKj69CWHdSFYPJ6454gjImOZN1a',NULL,'http://localhost',1,0,0,'2022-08-06 03:04:01','2022-08-06 03:04:01'),(4,NULL,'Snipe-IT Password Grant Client','6mdvrqWDP45tEg8ouS2FonRD1sFU7ypzZYX77CyW','users','http://localhost',0,1,0,'2022-08-06 03:04:01','2022-08-06 03:04:01'),(5,NULL,'Snipe-IT Personal Access Client','PObgUtggpyHCSAg8uSfEs7jkjR7XZeb1fV2YjTbR',NULL,'http://localhost',1,0,0,'2022-08-06 16:56:16','2022-08-06 16:56:16'),(6,NULL,'Snipe-IT Password Grant Client','r5bVR4VACh3lwyhL83XtzL0rrYV75nhGZrFPrlrJ','users','http://localhost',0,1,0,'2022-08-06 16:56:16','2022-08-06 16:56:16'),(7,NULL,'Snipe-IT Personal Access Client','9nStzgmrV9su7mvkP9M4LlPhDhG8Cus4tFpqsq3U',NULL,'http://localhost',1,0,0,'2022-08-07 16:42:58','2022-08-07 16:42:58'),(8,NULL,'Snipe-IT Password Grant Client','edYqlBE83bVS0Xy6Q7bxUCIEbvdcmwMv0qN29Itl','users','http://localhost',0,1,0,'2022-08-07 16:42:58','2022-08-07 16:42:58'),(9,NULL,'Snipe-IT Personal Access Client','Z3kMRbBbNlnR63JRhIM0w8oGaTDHb4hvoLOjB1sK',NULL,'http://localhost',1,0,0,'2022-08-07 16:50:05','2022-08-07 16:50:05'),(10,NULL,'Snipe-IT Password Grant Client','OHQPEC1erSCAx6VoDC5CNxFbyN9aYP8sBADiSb8v','users','http://localhost',0,1,0,'2022-08-07 16:50:05','2022-08-07 16:50:05'),(11,NULL,'Snipe-IT Personal Access Client','hwy6aPnJLf7Ih7iNA3pDgbi8vk8Mn2RAdbvOGxoP',NULL,'http://localhost',1,0,0,'2022-08-07 17:16:54','2022-08-07 17:16:54'),(12,NULL,'Snipe-IT Password Grant Client','g8LvWgciudT1L8t602S2zltSvF6Gcogfc7jpGq26','users','http://localhost',0,1,0,'2022-08-07 17:16:55','2022-08-07 17:16:55'),(13,NULL,'Snipe-IT Personal Access Client','FkfupGKtlW6MMCo9p7wXq4u4hZY4A9tmw6C9bLr9',NULL,'http://localhost',1,0,0,'2022-08-07 18:42:29','2022-08-07 18:42:29'),(14,NULL,'Snipe-IT Password Grant Client','cmQPn5QVdz7Ox9p3tMFNVFZaA4xAtEJz0wsThi6Z','users','http://localhost',0,1,0,'2022-08-07 18:42:29','2022-08-07 18:42:29');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2022-08-05 03:18:47','2022-08-05 03:18:47'),(2,3,'2022-08-06 03:04:01','2022-08-06 03:04:01'),(3,5,'2022-08-06 16:56:16','2022-08-06 16:56:16'),(4,7,'2022-08-07 16:42:58','2022-08-07 16:42:58'),(5,9,'2022-08-07 16:50:05','2022-08-07 16:50:05'),(6,11,'2022-08-07 17:16:55','2022-08-07 17:16:55'),(7,13,'2022-08-07 18:42:29','2022-08-07 18:42:29');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
INSERT INTO `permission_groups` VALUES (1,'Admin','{\"superuser\":\"1\",\"admin\":\"1\",\"import\":\"1\",\"reports.view\":\"1\",\"assets.view\":\"1\",\"assets.create\":\"1\",\"assets.edit\":\"1\",\"assets.delete\":\"1\",\"assets.checkin\":\"1\",\"assets.checkout\":\"1\",\"assets.audit\":\"1\",\"assets.view.requestable\":\"1\",\"accessories.view\":\"1\",\"accessories.create\":\"1\",\"accessories.edit\":\"1\",\"accessories.delete\":\"1\",\"accessories.checkout\":\"1\",\"accessories.checkin\":\"1\",\"consumables.view\":\"1\",\"consumables.create\":\"1\",\"consumables.edit\":\"1\",\"consumables.delete\":\"1\",\"consumables.checkout\":\"1\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}','2022-08-05 03:23:12','2022-08-05 03:23:12');
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requested_assets`
--

DROP TABLE IF EXISTS `requested_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requested_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `denied_at` datetime DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requested_assets`
--

LOCK TABLES `requested_assets` WRITE;
/*!40000 ALTER TABLE `requested_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `requested_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `request_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `per_page` int(11) NOT NULL DEFAULT 20,
  `site_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Snipe IT Asset Management',
  `qr_code` int(11) DEFAULT NULL,
  `qr_text` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_asset_name` int(11) DEFAULT NULL,
  `display_checkout_date` int(11) DEFAULT NULL,
  `display_eol` int(11) DEFAULT NULL,
  `auto_increment_assets` int(11) NOT NULL DEFAULT 0,
  `auto_increment_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `load_remote` tinyint(1) NOT NULL DEFAULT 1,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alert_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alerts_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `default_eula_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'QRCODE',
  `slack_endpoint` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slack_channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slack_botname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` tinyint(4) NOT NULL DEFAULT 1,
  `ldap_enabled` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_server` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_uname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_pword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_basedn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_filter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_username_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'samaccountname',
  `ldap_lname_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'sn',
  `ldap_fname_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'givenname',
  `ldap_auth_filter_query` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'uid=',
  `ldap_version` int(11) DEFAULT 3,
  `ldap_active_flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_dept` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_emp_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_phone_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_jobtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_manager` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_multiple_companies_support` tinyint(1) NOT NULL DEFAULT 0,
  `ldap_server_cert_ignore` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `labels_per_page` tinyint(4) NOT NULL DEFAULT 30,
  `labels_width` decimal(6,5) NOT NULL DEFAULT 2.62500,
  `labels_height` decimal(6,5) NOT NULL DEFAULT 1.00000,
  `labels_pmargin_left` decimal(6,5) NOT NULL DEFAULT 0.21975,
  `labels_pmargin_right` decimal(6,5) NOT NULL DEFAULT 0.21975,
  `labels_pmargin_top` decimal(6,5) NOT NULL DEFAULT 0.50000,
  `labels_pmargin_bottom` decimal(6,5) NOT NULL DEFAULT 0.50000,
  `labels_display_bgutter` decimal(6,5) NOT NULL DEFAULT 0.07000,
  `labels_display_sgutter` decimal(6,5) NOT NULL DEFAULT 0.05000,
  `labels_fontsize` tinyint(4) NOT NULL DEFAULT 9,
  `labels_pagewidth` decimal(7,5) NOT NULL DEFAULT 8.50000,
  `labels_pageheight` decimal(7,5) NOT NULL DEFAULT 11.00000,
  `labels_display_name` tinyint(4) NOT NULL DEFAULT 0,
  `labels_display_serial` tinyint(4) NOT NULL DEFAULT 1,
  `labels_display_tag` tinyint(4) NOT NULL DEFAULT 1,
  `alt_barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'C128',
  `alt_barcode_enabled` tinyint(1) DEFAULT 1,
  `alert_interval` int(11) DEFAULT 30,
  `alert_threshold` int(11) DEFAULT 5,
  `email_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'filastname',
  `username_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'filastname',
  `is_ad` tinyint(1) NOT NULL DEFAULT 0,
  `ad_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_port` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '389',
  `ldap_tls` tinyint(1) NOT NULL DEFAULT 0,
  `zerofill_count` int(11) NOT NULL DEFAULT 5,
  `ldap_pw_sync` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_enabled` tinyint(4) DEFAULT NULL,
  `require_accept_signature` tinyint(1) NOT NULL DEFAULT 0,
  `date_display_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y-m-d',
  `time_display_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h:i A',
  `next_auto_tag_base` bigint(20) NOT NULL DEFAULT 1,
  `login_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_max_h` int(11) DEFAULT 50,
  `pwd_secure_uncommon` tinyint(1) NOT NULL DEFAULT 0,
  `pwd_secure_complexity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pwd_secure_min` int(11) NOT NULL DEFAULT 8,
  `audit_interval` int(11) DEFAULT NULL,
  `audit_warning_days` int(11) DEFAULT NULL,
  `show_url_in_emails` tinyint(1) NOT NULL DEFAULT 0,
  `custom_forgot_pass_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_alerts_in_menu` tinyint(1) NOT NULL DEFAULT 1,
  `labels_display_company_name` tinyint(1) NOT NULL DEFAULT 0,
  `show_archived_in_list` tinyint(1) NOT NULL DEFAULT 0,
  `dashboard_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_footer` char(5) COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `footer_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modellist_displays` char(191) COLLATE utf8mb4_unicode_ci DEFAULT 'image,category,manufacturer,model_number',
  `login_remote_user_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `login_common_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `login_remote_user_custom_logout_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skin` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_images_in_email` tinyint(1) NOT NULL DEFAULT 1,
  `admin_cc_email` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labels_display_model` tinyint(1) NOT NULL DEFAULT 0,
  `privacy_policy_link` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_footer` char(5) COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `unique_serial` tinyint(1) NOT NULL DEFAULT 0,
  `logo_print_assets` tinyint(1) NOT NULL DEFAULT 0,
  `depreciation_method` char(10) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `favicon` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_logo` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_logo` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_user_skin` tinyint(1) NOT NULL DEFAULT 0,
  `show_assigned_assets` tinyint(1) NOT NULL DEFAULT 0,
  `login_remote_user_header_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ad_append_domain` tinyint(1) NOT NULL DEFAULT 0,
  `saml_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `saml_idp_metadata` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saml_attr_mapping_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saml_forcelogin` tinyint(1) NOT NULL DEFAULT 0,
  `saml_slo` tinyint(1) NOT NULL DEFAULT 0,
  `saml_sp_x509cert` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saml_sp_privatekey` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saml_custom_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saml_sp_x509certNew` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digit_separator` char(191) COLLATE utf8mb4_unicode_ci DEFAULT '1,234.56',
  `ldap_client_tls_cert` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_client_tls_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'2022-08-05 03:20:04','2022-08-07 17:44:38',1,20,'NISH Band Inventory',NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,'#36393f','anthonysegura0731@gmail.com',1,NULL,'QRCODE',NULL,NULL,NULL,'USD',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'samaccountname','sn','givenname','uid=',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'en',30,2.62500,1.00000,0.21975,0.21975,0.50000,0.50000,0.07000,0.05000,9,8.50000,11.00000,0,1,1,'C128',1,30,5,'nishband.org','filastname','filastname',0,NULL,'389',0,5,1,NULL,0,'Y-m-d','h:i A',45,NULL,50,0,NULL,10,NULL,NULL,0,NULL,1,0,0,NULL,'off',NULL,'image,category,manufacturer,model_number',0,0,'','blue',1,NULL,0,NULL,'off',0,0,'default','favicon-uploaded.png',NULL,'setting-label_logo-HJSUqORQGe.png',0,0,'',0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,'1,234.56',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_labels`
--

DROP TABLE IF EXISTS `status_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_labels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deployable` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_nav` tinyint(1) DEFAULT 0,
  `default_label` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_labels`
--

LOCK TABLES `status_labels` WRITE;
/*!40000 ALTER TABLE `status_labels` DISABLE KEYS */;
INSERT INTO `status_labels` VALUES (1,'Pending',1,NULL,NULL,NULL,0,1,0,'These assets are not yet ready to be deployed, usually because of configuration or waiting on parts.',NULL,0,0),(2,'Ready to Deploy',1,NULL,'2022-08-05 03:35:33','2022-08-05 03:35:33',1,0,0,'These assets are ready to deploy.',NULL,0,0),(3,'Deployable',1,NULL,'2022-08-06 01:58:04',NULL,1,0,0,'These assets are no longer in circulation or viable.',NULL,0,0),(4,'Deployable',3,'2022-08-06 01:57:38','2022-08-06 01:57:58','2022-08-06 01:57:58',1,0,0,NULL,NULL,0,0),(5,'Archived',3,'2022-08-06 01:58:14','2022-08-06 01:58:14',NULL,0,0,1,NULL,NULL,0,0),(6,'Undeployable',3,'2022-08-06 01:58:29','2022-08-06 01:58:29',NULL,1,0,0,NULL,NULL,0,0);
/*!40000 ALTER TABLE `status_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gravatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `employee_num` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_import` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `show_in_list` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_secret` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_enrolled` tinyint(1) NOT NULL DEFAULT 0,
  `two_factor_optin` tinyint(1) NOT NULL DEFAULT 0,
  `department_id` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`),
  KEY `users_company_id_index` (`company_id`),
  KEY `users_username_deleted_at_index` (`username`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'anthonysegura0731@gmail.com','$2y$10$LFvNwkBMFNBD51VF2s3lHuXkFWNucivQRYBO.14a8wXB0jJfoHoZq','{\"superuser\":\"1\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',1,NULL,NULL,NULL,'2022-08-07 18:42:23',NULL,NULL,'Anthony','Segura','2022-08-05 03:20:04','2022-08-07 18:42:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Anthony',NULL,NULL,'k4prLxrI1WwOUyGnCI2WNAfCReoUEweAGV09vWYXRc4vGmpNdaGGOdZslEkZ',0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),(2,'','$2y$10$cHg5.9YpNM4Y8Kbtwfw1u.8MWT8hgqgO2IUshaKPsQcrrTFtqRqEe','{\"superuser\":\"1\",\"admin\":\"1\",\"import\":\"1\",\"reports.view\":\"1\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',1,NULL,NULL,NULL,'2022-08-06 03:24:15',NULL,NULL,'Jordan','Beuhler','2022-08-05 03:21:07','2022-08-06 03:24:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'avatar-9ixiCZxI8YdUZBDFqL.jpg','Jordan',NULL,NULL,'Bcjr5igvlaHITK5cGo8vMpATWhRQ1mxFZp3sNO2Uu678PHEh9nDPgDZdCxFN',0,NULL,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),(3,'','$2y$10$8jtx8yO6d3XU3.8MAx4cuuYMPV0/.BxfH7uPqOCuTKIZpKaurRYUq','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"1\",\"reports.view\":\"1\",\"assets.view\":\"1\",\"assets.create\":\"1\",\"assets.edit\":\"1\",\"assets.delete\":\"1\",\"assets.checkin\":\"1\",\"assets.checkout\":\"1\",\"assets.audit\":\"1\",\"assets.view.requestable\":\"1\",\"accessories.view\":\"1\",\"accessories.create\":\"1\",\"accessories.edit\":\"1\",\"accessories.delete\":\"1\",\"accessories.checkout\":\"1\",\"accessories.checkin\":\"1\",\"consumables.view\":\"1\",\"consumables.create\":\"1\",\"consumables.edit\":\"1\",\"consumables.delete\":\"1\",\"consumables.checkout\":\"1\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"1\",\"components.create\":\"1\",\"components.edit\":\"1\",\"components.delete\":\"1\",\"components.checkout\":\"1\",\"components.checkin\":\"1\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"users.view\":\"1\",\"users.create\":\"1\",\"users.edit\":\"1\",\"users.delete\":\"1\",\"models.view\":\"1\",\"models.create\":\"1\",\"models.edit\":\"1\",\"models.delete\":\"1\",\"categories.view\":\"1\",\"categories.create\":\"1\",\"categories.edit\":\"1\",\"categories.delete\":\"1\",\"departments.view\":\"1\",\"departments.create\":\"1\",\"departments.edit\":\"1\",\"departments.delete\":\"1\",\"statuslabels.view\":\"1\",\"statuslabels.create\":\"1\",\"statuslabels.edit\":\"1\",\"statuslabels.delete\":\"1\",\"customfields.view\":\"1\",\"customfields.create\":\"1\",\"customfields.edit\":\"1\",\"customfields.delete\":\"1\",\"suppliers.view\":\"1\",\"suppliers.create\":\"1\",\"suppliers.edit\":\"1\",\"suppliers.delete\":\"1\",\"manufacturers.view\":\"1\",\"manufacturers.create\":\"1\",\"manufacturers.edit\":\"1\",\"manufacturers.delete\":\"1\",\"depreciations.view\":\"1\",\"depreciations.create\":\"1\",\"depreciations.edit\":\"1\",\"depreciations.delete\":\"1\",\"locations.view\":\"1\",\"locations.create\":\"1\",\"locations.edit\":\"1\",\"locations.delete\":\"1\",\"companies.view\":\"1\",\"companies.create\":\"1\",\"companies.edit\":\"1\",\"companies.delete\":\"1\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',1,NULL,NULL,NULL,'2022-08-06 12:04:03',NULL,NULL,'NISH',NULL,'2022-08-05 03:25:05','2022-08-06 12:04:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'avatar-8aryjZiJu3XWdwe646.png','NISHBAND',NULL,NULL,'s5CHaDSAg7bzDGH5BMrRhJMoPjNYgtLanrQSNEZz0bdgpHAS7aneiNTx7S1y',0,NULL,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),(4,'','$2y$10$LXI..cEtpPT/UdNzPwXPYebNb7xmRHAL57/Flt4.RLfPW720rP/BK','{\"superuser\":\"0\",\"admin\":\"1\",\"import\":\"1\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',1,1,NULL,NULL,NULL,NULL,NULL,'Kelly','Landry','2022-08-06 19:17:39','2022-08-06 19:17:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'KLandry',NULL,NULL,NULL,0,NULL,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-08 12:43:23
