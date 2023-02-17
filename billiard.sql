/*
SQLyog Professional v12.09 (64 bit)
MySQL - 8.0.17 : Database - skincare
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`skincare` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `skincare`;

/*Table structure for table `banners` */

DROP TABLE IF EXISTS `banners`;

CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `picture_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `button_text` varchar(50) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `banners` */

insert  into `banners`(`id`,`title`,`subtitle`,`picture_name`,`button_text`,`is_active`) values (8,'webp lagi','cobalah','bg-1.jpg','okelah',1),(9,'webp dua','terbaru','bg-2.jpg','disini',1);

/*Table structure for table `brands` */

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `brands` */

insert  into `brands`(`id`,`picture_name`) values (10,'brand31.jpg'),(11,'brand12.jpg'),(12,'brand21.jpg'),(13,'brand41.jpg'),(15,'brand5.png'),(16,'brand61.jpg'),(17,'brand71.jpg'),(18,'brand81.jpg');

/*Table structure for table `chat_user` */

DROP TABLE IF EXISTS `chat_user`;

CREATE TABLE `chat_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_oauth_uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `profile_picture` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `chat_user` */

/*Table structure for table `ci_sessions` */

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `ci_sessions` */

insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('gae0jk9lrm10nt4s95oo858nlmm1kmn6','::1',1676599618,'__ci_last_regenerate|i:1676599618;redirection|s:56:\"aHR0cDovL2xvY2FsaG9zdC9za2luY2FyZS9jdXN0b21lci9vcmRlcnM=\";'),('c0gmp8gpqh8q7lpo89tuu57cgucv3ba6','::1',1676599926,'__ci_last_regenerate|i:1676599926;redirection|N;cart_contents|a:4:{s:10:\"cart_total\";d:255000;s:11:\"total_items\";d:3;s:32:\"c51ce410c124a10e0db5e4b97fc2af39\";a:6:{s:2:\"id\";s:2:\"13\";s:3:\"qty\";d:2;s:5:\"price\";d:5000;s:4:\"name\";s:12:\"SKIN Garnier\";s:5:\"rowid\";s:32:\"c51ce410c124a10e0db5e4b97fc2af39\";s:8:\"subtotal\";d:10000;}s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";a:6:{s:2:\"id\";s:2:\"19\";s:3:\"qty\";d:1;s:5:\"price\";d:245000;s:4:\"name\";s:17:\"SKIN Thayers Rose\";s:5:\"rowid\";s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";s:8:\"subtotal\";d:245000;}}order_quantity|a:1:{i:13;a:2:{s:3:\"qty\";d:2;s:5:\"price\";d:5000;}}total_price|d:13000;'),('p6sa25qi7atatv15p4a2j8luq39daj6j','::1',1676600258,'__ci_last_regenerate|i:1676600258;redirection|N;cart_contents|a:3:{s:10:\"cart_total\";d:10000;s:11:\"total_items\";d:2;s:32:\"c51ce410c124a10e0db5e4b97fc2af39\";a:6:{s:2:\"id\";s:2:\"13\";s:3:\"qty\";d:2;s:5:\"price\";d:5000;s:4:\"name\";s:12:\"SKIN Garnier\";s:5:\"rowid\";s:32:\"c51ce410c124a10e0db5e4b97fc2af39\";s:8:\"subtotal\";d:10000;}}order_quantity|a:1:{i:13;a:2:{s:3:\"qty\";d:2;s:5:\"price\";d:5000;}}total_price|d:13000;'),('ekurug3oifu89ogvpb4hb0mcpef6o83b','::1',1676600651,'__ci_last_regenerate|i:1676600651;redirection|s:56:\"aHR0cDovL2xvY2FsaG9zdC9za2luY2FyZS9jdXN0b21lci9vcmRlcnM=\";cart_contents|a:3:{s:10:\"cart_total\";d:5000;s:11:\"total_items\";d:2;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:6:{s:2:\"id\";s:1:\"2\";s:3:\"qty\";d:2;s:5:\"price\";d:2500;s:4:\"name\";s:18:\"SKIN Carbon Theory\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:5000;}}order_quantity|a:1:{i:2;a:2:{s:3:\"qty\";d:2;s:5:\"price\";d:2500;}}total_price|d:8000;'),('fvjpj6kscpj9cnqodekol424famas1nu','::1',1676600968,'__ci_last_regenerate|i:1676600968;redirection|s:56:\"aHR0cDovL2xvY2FsaG9zdC9za2luY2FyZS9jdXN0b21lci9vcmRlcnM=\";cart_contents|a:3:{s:10:\"cart_total\";d:5000;s:11:\"total_items\";d:2;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:6:{s:2:\"id\";s:1:\"2\";s:3:\"qty\";d:2;s:5:\"price\";d:2500;s:4:\"name\";s:18:\"SKIN Carbon Theory\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:5000;}}order_quantity|a:1:{i:2;a:2:{s:3:\"qty\";d:2;s:5:\"price\";d:2500;}}total_price|d:8000;'),('b00hkktk233ibp64dh5t1cuurc470s0i','::1',1676601269,'__ci_last_regenerate|i:1676601269;redirection|s:52:\"aHR0cDovL2xvY2FsaG9zdC9za2luY2FyZS9zaG9wL2NoZWNrb3V0\";cart_contents|a:3:{s:10:\"cart_total\";d:5000;s:11:\"total_items\";d:2;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:6:{s:2:\"id\";s:1:\"2\";s:3:\"qty\";d:2;s:5:\"price\";d:2500;s:4:\"name\";s:18:\"SKIN Carbon Theory\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:5000;}}order_quantity|a:1:{i:2;a:2:{s:3:\"qty\";d:2;s:5:\"price\";d:2500;}}total_price|d:8000;'),('pcf4mpesvnsgta000j4lq9gik9965fu1','::1',1676601318,'__ci_last_regenerate|i:1676601269;__ACTIVE_SESSION_DATA|s:256:\"4a0f9ea6b4be754a5fa4cd5f339d33d6aba261785bc707cef60e3e98bf63f46e3954d8df29d27eaf907b425c4c2a6bd7908d1314d5b71e19dea2ee141b5f820bvLQoJzHufba9wv8XrFwZu+5ws2I6GLqB0P9uteqO1rjqiD0q80F/r51DeMlrWTFnJp4JbCy1gXQP7rVDjmubKYcG+Lncp96dfzhAw2m1DiUG2JkJTNyIp/AeG4E+M99F\";');

/*Table structure for table `contacts` */

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subject` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `reply_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_contacts_contacts` (`parent_id`) USING BTREE,
  CONSTRAINT `FK_contacts_contacts` FOREIGN KEY (`parent_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `contacts` */

insert  into `contacts`(`id`,`parent_id`,`name`,`subject`,`email`,`message`,`contact_date`,`status`,`reply_at`) values (1,NULL,'Agung Tri Saputra','Pengiriman kok lama?','martinms.za@gmail.com','pengiriman pesanan saya kok lama ya','2020-03-29 07:40:13',2,NULL);

/*Table structure for table `coupons` */

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `credit` decimal(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `expired_date` date NOT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `coupons` */

insert  into `coupons`(`id`,`name`,`code`,`credit`,`start_date`,`expired_date`,`is_active`) values (4,'Berbagi Ramadhan','RAMADHAN2021','5000.00','2021-05-02','2021-05-09',1),(5,'WELCOME MAY','MAY21','4000.00','2021-05-01','2021-05-08',1),(6,'Promo Juni','JUNIBAHAGIA','1000.00','2021-06-28','2021-06-30',1),(7,'Judge Day','1200A','1500.00','2021-06-29','2021-07-02',1);

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `profile_picture` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_customers_users` (`user_id`) USING BTREE,
  CONSTRAINT `FK_customers_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `customers` */

insert  into `customers`(`id`,`user_id`,`name`,`phone_number`,`address`,`profile_picture`) values (6,7,'Agung Tri Saputra','081328907767','Kost Indah Jaya Belakang No. 19, Jl. Medan Baru VI, Kandang Limun, Bengkulu','agung.png'),(7,8,'Martin Mulyo Syahidin','08227163734','medan',NULL),(11,13,'abyan','085781571742','cikoko',NULL);

/*Table structure for table `order_items` */

DROP TABLE IF EXISTS `order_items`;

CREATE TABLE `order_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_qty` int(10) NOT NULL,
  `order_price` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE,
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `order_items` */

insert  into `order_items`(`id`,`order_id`,`product_id`,`order_qty`,`order_price`) values (1,33,13,2,'5000.00'),(2,36,2,2,'2500.00');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `order_number` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `order_status` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1',
  `order_date` datetime NOT NULL,
  `total_price` decimal(8,2) DEFAULT NULL,
  `total_items` int(10) DEFAULT NULL,
  `payment_method` int(11) DEFAULT '1',
  `delivery_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `delivered_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_orders_users` (`user_id`) USING BTREE,
  KEY `FK_orders_coupons` (`coupon_id`) USING BTREE,
  CONSTRAINT `FK_orders_coupons` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `orders` */

insert  into `orders`(`id`,`user_id`,`coupon_id`,`order_number`,`order_status`,`order_date`,`total_price`,`total_items`,`payment_method`,`delivery_data`,`delivered_date`,`finish_date`) values (33,7,NULL,'HEX1722317254','1','2023-02-17 02:18:04','13000.00',1,NULL,'{\"customer\":{\"name\":null,\"phone_number\":null,\"address\":null},\"note\":null}',NULL,NULL),(36,7,NULL,'DTY1722317124','1','2023-02-17 02:34:45','8000.00',1,2,'{\"customer\":{\"name\":\"zombie\",\"phone_number\":\"34985934\",\"address\":\"cakarang\"},\"note\":\"jdsknf\"}',NULL,NULL);

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_price` decimal(8,2) DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `picture_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `payment_status` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1',
  `confirmed_date` datetime DEFAULT NULL,
  `payment_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `payments` */

/*Table structure for table `product_category` */

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `product_category` */

insert  into `product_category`(`id`,`name`) values (1,'Skin Care'),(2,'Facial Care');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) DEFAULT NULL,
  `sku` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `picture_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `price` decimal(8,2) NOT NULL,
  `current_discount` decimal(8,2) DEFAULT '0.00',
  `stock` int(10) NOT NULL,
  `product_unit` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT '1',
  `add_date` datetime DEFAULT NULL,
  `promo` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_products_product_category` (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `products` */

insert  into `products`(`id`,`category_id`,`sku`,`name`,`description`,`picture_name`,`price`,`current_discount`,`stock`,`product_unit`,`is_available`,`add_date`,`promo`) values (1,1,'SB750372','SKIN Bliss Green Tea - Skin Care',NULL,'SKIN-Bliss-Green-Tea-Wonder-Clarifying-Overnight-Gel-Mask-Azelaic-Acid.jpg','3000.00','1000.00',50,'Kg',1,'2020-03-26 15:02:52',''),(2,1,'BS350420','SKIN Carbon Theory',NULL,'SKIN-Carbon-Theory-Breakout-Control-Facial-Cleansing-Bar.jpg','5000.00','2500.00',10,'Kg',1,'2020-03-26 15:03:40',''),(4,1,'TS120790','SKIN CeraVe',NULL,'SKIN-CeraVeResurfacingRetinolSerum.jpg','2000.00','1200.00',20,'Kg',1,'2020-03-26 19:36:30',NULL),(5,1,'WS120811','SKIN Dr. Jart',NULL,'SKIN-Dr_-Jart+-cicapair-tiger-grass-calming-gel-cream.jpg','8000.00','0.00',20,'Kg',1,'2020-03-26 19:36:51',NULL),(11,2,'URS13301','SKIN Elizabeth Arden',NULL,'SKIN-Elizabeth-Arden-Eight-Hour-Miracle-Hydrating-Mist.jpg','3000.00','0.00',10,'Kg',1,'2020-03-26 19:45:01',NULL),(12,2,'BPS15347','SKIN First Aid Beauty',NULL,'SKIN-First-Aid-Beauty-Ultra-Repair-Oat-_-Hemp-Seed-Dry-Oil-2.jpg','12000.00','0.00',15,'Kg',1,'2020-03-26 19:45:47',NULL),(13,2,'KPS223370','SKIN Garnier',NULL,'SKIN-Garnier-SkinActive-Water-Rose-24H-Moisture-Cream.jpg','5000.00','0.00',23,'Kg',1,'2020-03-26 19:46:10',NULL),(15,2,'JCP-KC120494','SKIN-L\'Oreal',NULL,'skin.jpg','11000.00','0.00',20,'Kg',1,'2021-06-23 17:48:14',NULL),(16,9,'JC&SPC&S150648','SKIN Neutrogena',NULL,'SKIN-Neutrogena-Soothing-Clear-Turmeric-Mist.jpg','15000.00','0.00',50,'Kg',1,'2021-06-23 18:07:28',NULL),(18,2,'CYC&S190347','Skin Olay Regenerist',NULL,'SKIN-Olay-Regenerist-Whip-SPF40-1.jpg','100000.00','0.00',90,'Kg',1,'2021-06-26 17:42:27',NULL),(19,9,'STRC&S225337','SKIN Thayers Rose',NULL,'SKIN-Thayers-Rose-Petal-Facial-Toner.jpg','250000.00','5000.00',25,'Kg',1,'2021-06-27 10:55:37',NULL),(20,2,'STC2100372','SKIN TULA',NULL,'SKIN-TULA-so_polished_scrub.jpg','20000.00','3500.00',100,'Kg',1,'2021-06-27 10:56:12',NULL);

/*Table structure for table `reviews` */

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `review_text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `review_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_reviews_users` (`user_id`) USING BTREE,
  KEY `FK_reviews_orders` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `reviews` */

insert  into `reviews`(`id`,`user_id`,`order_id`,`title`,`review_text`,`review_date`,`status`) values (2,7,6,'Sangat puas','Pengiriman cepat dan sayur segar','2020-03-30 08:31:31',1),(3,7,5,'Buah segar','Buah segar dan kualitasnya sangat bagus','2020-03-30 08:33:10',1);

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `settings` */

insert  into `settings`(`id`,`key`,`content`) values (1,'current_theme_name','vegefoods'),(2,'store_name','Billiard 88'),(3,'store_phone_number','085781571742'),(4,'store_email','info@billiard88.com'),(5,'store_tagline','Dapatkan banyak promo code di toko kami'),(6,'store_logo','Logo.png'),(7,'max_product_image_size','20000'),(8,'store_description','Beli Perawatan wajah ga perlu cemas disini'),(9,'store_address','Jl. Cikoko Barat IV No. 18A'),(10,'min_shop_to_free_shipping_cost','20000'),(11,'shipping_cost','3000'),(12,'payment_banks','{\"mandiri-bank\":{\"bank\":\"Mandiri Bank\",\"number\":\"8729737788\",\"name\":\"Muhamad Rizal\"},\"bca-bank\":{\"bank\":\"BCA Bank\",\"number\":\"12897898788\",\"name\":\"Afrizal Rahman\"},\"permata-bank\":{\"bank\":\"Permata Bank\",\"number\":\"216768678777\",\"name\":\"Admin Cikoko\"}}');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '1 = admin, 2 = customer',
  `register_date` datetime DEFAULT NULL,
  `oauth_provider` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_uid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`username`,`password`,`profile_picture`,`role`,`register_date`,`oauth_provider`,`oauth_uid`,`locale`,`picture_url`) values (1,'Admin Laundry Clinic','admin@local.test',NULL,'admin','$2y$10$Brm3RNWFKvZ1e0ej1vBz9.QbFMW21q0l/iDSt5aDOoGj9zlLFuxh6','agung1.png','admin',NULL,NULL,NULL,NULL,NULL),(7,'Customer Toko Sayur','customer@local.test',NULL,'customer','$2y$10$6C/A5Yy1gt4yhStWDWN1M.isBaznzDc.MZJdIj7UddW3.qIX5vDvK',NULL,'customer','2020-03-29 08:14:30',NULL,NULL,NULL,NULL),(8,'Customer','martinms.za@gmail.com',NULL,'cust','$2y$10$gj4QxFnTj0dlpwJvT4aJiOM5UW6uCt7MdafC6VrnqsKDi0/JKmsLS',NULL,'customer','2021-05-07 10:25:08',NULL,NULL,NULL,NULL),(13,NULL,'cawangbsi@gmail.com',NULL,'abyan','$2y$10$QF6H2hdHX719lJcvUp5DQO0HoCAMXEyNbdALyj2gwFDjQJ3ROeeTi',NULL,'customer','2022-02-14 09:18:10',NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
