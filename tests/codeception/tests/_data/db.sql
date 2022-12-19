-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for osx10.17 (arm64)
--
-- Host: mysqltests    Database: wptest
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB

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
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES
(5,'action_scheduler/migration_hook','pending','2022-09-21 14:39:03','2022-09-21 14:39:03','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771143;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771143;}',1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(6,'wc-admin_import_customers','pending','2022-09-21 14:38:24','2022-09-21 14:38:24','[2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771104;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771104;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(7,'woocommerce_run_product_attribute_lookup_update_callback','pending','2022-09-21 14:38:22','2022-09-21 14:38:22','[10,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771102;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(8,'woocommerce_run_product_attribute_lookup_update_callback','pending','2022-09-21 14:38:22','2022-09-21 14:38:22','[11,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771102;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(9,'woocommerce_run_product_attribute_lookup_update_callback','pending','2022-09-21 14:38:23','2022-09-21 14:38:23','[12,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771103;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771103;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(10,'woocommerce_run_product_attribute_lookup_update_callback','pending','2022-09-21 14:38:24','2022-09-21 14:38:24','[13,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771104;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771104;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(11,'woocommerce_run_product_attribute_lookup_update_callback','pending','2022-09-21 14:38:24','2022-09-21 14:38:24','[14,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771104;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771104;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(12,'woocommerce_run_product_attribute_lookup_update_callback','pending','2022-09-21 14:38:25','2022-09-21 14:38:25','[15,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771105;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771105;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(13,'woocommerce_run_product_attribute_lookup_update_callback','pending','2022-09-21 14:38:26','2022-09-21 14:38:26','[16,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771106;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771106;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(14,'woocommerce_run_product_attribute_lookup_update_callback','pending','2022-09-21 14:38:26','2022-09-21 14:38:26','[17,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771106;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771106;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(15,'woocommerce_run_product_attribute_lookup_update_callback','pending','2022-09-21 14:38:27','2022-09-21 14:38:27','[18,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771107;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771107;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(16,'woocommerce_run_product_attribute_lookup_update_callback','pending','2022-09-21 14:38:28','2022-09-21 14:38:28','[19,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771108;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771108;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(17,'woocommerce_run_product_attribute_lookup_regeneration_callback','pending','2022-09-21 14:38:48','2022-09-21 14:38:48','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663771128;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663771128;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES
(1,'action-scheduler-migration'),
(2,'wc-admin-data'),
(3,'woocommerce-db-updates');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES
(1,5,'action created','2022-09-21 14:38:03','2022-09-21 14:38:03'),
(2,6,'action created','2022-09-21 14:38:19','2022-09-21 14:38:19'),
(3,7,'action created','2022-09-21 14:38:21','2022-09-21 14:38:21'),
(4,8,'action created','2022-09-21 14:38:21','2022-09-21 14:38:21'),
(5,9,'action created','2022-09-21 14:38:22','2022-09-21 14:38:22'),
(6,10,'action created','2022-09-21 14:38:23','2022-09-21 14:38:23'),
(7,11,'action created','2022-09-21 14:38:23','2022-09-21 14:38:23'),
(8,12,'action created','2022-09-21 14:38:24','2022-09-21 14:38:24'),
(9,13,'action created','2022-09-21 14:38:25','2022-09-21 14:38:25'),
(10,14,'action created','2022-09-21 14:38:25','2022-09-21 14:38:25'),
(11,15,'action created','2022-09-21 14:38:26','2022-09-21 14:38:26'),
(12,16,'action created','2022-09-21 14:38:27','2022-09-21 14:38:27'),
(13,17,'action created','2022-09-21 14:38:47','2022-09-21 14:38:47');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES
(1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-09-21 14:37:56','2022-09-21 14:37:56','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES
(1,'siteurl','http://wptests.lh','yes'),
(2,'home','http://wptests.lh','yes'),
(3,'blogname','Woo-tests','yes'),
(4,'blogdescription','Just another WordPress site','yes'),
(5,'users_can_register','0','yes'),
(6,'admin_email','grola@seostudio.pl','yes'),
(7,'start_of_week','1','yes'),
(8,'use_balanceTags','0','yes'),
(9,'use_smilies','1','yes'),
(10,'require_name_email','1','yes'),
(11,'comments_notify','1','yes'),
(12,'posts_per_rss','10','yes'),
(13,'rss_use_excerpt','0','yes'),
(14,'mailserver_url','mail.example.com','yes'),
(15,'mailserver_login','login@example.com','yes'),
(16,'mailserver_pass','password','yes'),
(17,'mailserver_port','110','yes'),
(18,'default_category','1','yes'),
(19,'default_comment_status','open','yes'),
(20,'default_ping_status','open','yes'),
(21,'default_pingback_flag','1','yes'),
(22,'posts_per_page','10','yes'),
(23,'date_format','F j, Y','yes'),
(24,'time_format','g:i a','yes'),
(25,'links_updated_date_format','F j, Y g:i a','yes'),
(26,'comment_moderation','0','yes'),
(27,'moderation_notify','1','yes'),
(28,'permalink_structure','/%postname%/','yes'),
(29,'rewrite_rules','a:160:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),
(30,'hack_file','0','yes'),
(31,'blog_charset','UTF-8','yes'),
(32,'moderation_keys','','no'),
(33,'active_plugins','a:2:{i:0;s:35:\"csv-exporter/csv-exporter.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}','yes'),
(34,'category_base','','yes'),
(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
(36,'comment_max_links','2','yes'),
(37,'gmt_offset','0','yes'),
(38,'default_email_category','1','yes'),
(39,'recently_edited','','no'),
(40,'template','storefront','yes'),
(41,'stylesheet','storefront-wpdesk-tests','yes'),
(42,'comment_registration','0','yes'),
(43,'html_type','text/html','yes'),
(44,'use_trackback','0','yes'),
(45,'default_role','subscriber','yes'),
(46,'db_version','53496','yes'),
(47,'uploads_use_yearmonth_folders','1','yes'),
(48,'upload_path','','yes'),
(49,'blog_public','1','yes'),
(50,'default_link_category','2','yes'),
(51,'show_on_front','posts','yes'),
(52,'tag_base','','yes'),
(53,'show_avatars','1','yes'),
(54,'avatar_rating','G','yes'),
(55,'upload_url_path','','yes'),
(56,'thumbnail_size_w','150','yes'),
(57,'thumbnail_size_h','150','yes'),
(58,'thumbnail_crop','1','yes'),
(59,'medium_size_w','300','yes'),
(60,'medium_size_h','300','yes'),
(61,'avatar_default','mystery','yes'),
(62,'large_size_w','1024','yes'),
(63,'large_size_h','1024','yes'),
(64,'image_default_link_type','none','yes'),
(65,'image_default_size','','yes'),
(66,'image_default_align','','yes'),
(67,'close_comments_for_old_posts','0','yes'),
(68,'close_comments_days_old','14','yes'),
(69,'thread_comments','1','yes'),
(70,'thread_comments_depth','5','yes'),
(71,'page_comments','0','yes'),
(72,'comments_per_page','50','yes'),
(73,'default_comments_page','newest','yes'),
(74,'comment_order','asc','yes'),
(75,'sticky_posts','a:0:{}','yes'),
(76,'widget_categories','a:0:{}','yes'),
(77,'widget_text','a:0:{}','yes'),
(78,'widget_rss','a:0:{}','yes'),
(79,'uninstall_plugins','a:0:{}','no'),
(80,'timezone_string','','yes'),
(81,'page_for_posts','0','yes'),
(82,'page_on_front','0','yes'),
(83,'default_post_format','0','yes'),
(84,'link_manager_enabled','0','yes'),
(85,'finished_splitting_shared_terms','1','yes'),
(86,'site_icon','0','yes'),
(87,'medium_large_size_w','768','yes'),
(88,'medium_large_size_h','0','yes'),
(89,'wp_page_for_privacy_policy','3','yes'),
(90,'show_comments_cookies_opt_in','1','yes'),
(91,'admin_email_lifespan','1679323075','yes'),
(92,'disallowed_keys','','no'),
(93,'comment_previously_approved','1','yes'),
(94,'auto_plugin_theme_update_emails','a:0:{}','no'),
(95,'auto_update_core_dev','enabled','yes'),
(96,'auto_update_core_minor','enabled','yes'),
(97,'auto_update_core_major','enabled','yes'),
(98,'wp_force_deactivated_plugins','a:0:{}','yes'),
(99,'initial_db_version','53496','yes'),
(100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes'),
(101,'fresh_site','0','yes'),
(102,'user_count','2','no'),
(103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes'),
(104,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}','yes'),
(105,'cron','a:13:{i:1663771077;a:6:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1663771078;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1663771082;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663771092;a:1:{s:30:\"generate_category_lookup_table\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1663771127;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1663771136;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663771186;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}i:1663774726;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1663781926;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663792726;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1663804800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663857477;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),
(106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(115,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(116,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(117,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(118,'_transient_doing_cron','1663771077.8053019046783447265625','yes'),
(119,'_site_transient_timeout_theme_roots','1663772877','no'),
(120,'_site_transient_theme_roots','a:5:{s:23:\"storefront-wpdesk-tests\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no'),
(121,'theme_mods_twentytwentytwo','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1663771077;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes'),
(122,'current_theme','storefront-wpdesk-tests','yes'),
(123,'theme_switched','','yes'),
(124,'theme_mods_storefront-wpdesk-tests','a:1:{s:18:\"nav_menu_locations\";a:0:{}}','yes'),
(125,'action_scheduler_hybrid_store_demarkation','4','yes'),
(126,'schema-ActionScheduler_StoreSchema','6.0.1663771078','yes'),
(127,'schema-ActionScheduler_LoggerSchema','3.0.1663771078','yes'),
(128,'_transient_timeout_as-post-store-dependencies-met','1663857478','no'),
(129,'_transient_as-post-store-dependencies-met','yes','no'),
(132,'woocommerce_schema_version','430','yes'),
(133,'woocommerce_store_address','al. Jana Pawła 12','yes'),
(134,'woocommerce_store_address_2','','yes'),
(135,'woocommerce_store_city','Warszawa','yes'),
(136,'woocommerce_default_country','PL','yes'),
(137,'woocommerce_store_postcode','','yes'),
(138,'woocommerce_allowed_countries','all','yes'),
(139,'woocommerce_all_except_countries','','yes'),
(140,'woocommerce_specific_allowed_countries','','yes'),
(141,'woocommerce_ship_to_countries','','yes'),
(142,'woocommerce_specific_ship_to_countries','','yes'),
(143,'woocommerce_default_customer_address','base','yes'),
(144,'woocommerce_calc_taxes','yes','yes'),
(145,'woocommerce_enable_coupons','yes','yes'),
(146,'woocommerce_calc_discounts_sequentially','no','no'),
(147,'woocommerce_currency','PLN','yes'),
(148,'woocommerce_currency_pos','right_space','yes'),
(149,'woocommerce_price_thousand_sep',',','yes'),
(150,'woocommerce_price_decimal_sep','.','yes'),
(151,'woocommerce_price_num_decimals','2','yes'),
(152,'woocommerce_shop_page_id','5','yes'),
(153,'woocommerce_cart_redirect_after_add','no','yes'),
(154,'woocommerce_enable_ajax_add_to_cart','yes','yes'),
(155,'woocommerce_placeholder_image','4','yes'),
(156,'woocommerce_weight_unit','kg','yes'),
(157,'woocommerce_dimension_unit','cm','yes'),
(158,'woocommerce_enable_reviews','yes','yes'),
(159,'woocommerce_review_rating_verification_label','yes','no'),
(160,'woocommerce_review_rating_verification_required','no','no'),
(161,'woocommerce_enable_review_rating','yes','yes'),
(162,'woocommerce_review_rating_required','yes','no'),
(163,'woocommerce_manage_stock','yes','yes'),
(164,'woocommerce_hold_stock_minutes','60','no'),
(165,'woocommerce_notify_low_stock','yes','no'),
(166,'woocommerce_notify_no_stock','yes','no'),
(167,'woocommerce_stock_email_recipient','grola@seostudio.pl','no'),
(168,'woocommerce_notify_low_stock_amount','2','no'),
(169,'woocommerce_notify_no_stock_amount','0','yes'),
(170,'woocommerce_hide_out_of_stock_items','no','yes'),
(171,'woocommerce_stock_format','','yes'),
(172,'woocommerce_file_download_method','force','no'),
(173,'woocommerce_downloads_redirect_fallback_allowed','no','no'),
(174,'woocommerce_downloads_require_login','no','no'),
(175,'woocommerce_downloads_grant_access_after_payment','yes','no'),
(176,'woocommerce_downloads_add_hash_to_filename','yes','yes'),
(178,'woocommerce_attribute_lookup_direct_updates','no','yes'),
(179,'woocommerce_prices_include_tax','no','yes'),
(180,'woocommerce_tax_based_on','shipping','yes'),
(181,'woocommerce_shipping_tax_class','inherit','yes'),
(182,'woocommerce_tax_round_at_subtotal','no','yes'),
(183,'woocommerce_tax_classes','','yes'),
(184,'woocommerce_tax_display_shop','excl','yes'),
(185,'woocommerce_tax_display_cart','excl','yes'),
(186,'woocommerce_price_display_suffix','','yes'),
(187,'woocommerce_tax_total_display','itemized','no'),
(188,'woocommerce_enable_shipping_calc','yes','no'),
(189,'woocommerce_shipping_cost_requires_address','no','yes'),
(190,'woocommerce_ship_to_destination','billing','no'),
(191,'woocommerce_shipping_debug_mode','no','yes'),
(192,'woocommerce_enable_guest_checkout','yes','no'),
(193,'woocommerce_enable_checkout_login_reminder','no','no'),
(194,'woocommerce_enable_signup_and_login_from_checkout','no','no'),
(195,'woocommerce_enable_myaccount_registration','no','no'),
(196,'woocommerce_registration_generate_username','yes','no'),
(197,'woocommerce_registration_generate_password','yes','no'),
(198,'woocommerce_erasure_request_removes_order_data','no','no'),
(199,'woocommerce_erasure_request_removes_download_data','no','no'),
(200,'woocommerce_allow_bulk_remove_personal_data','no','no'),
(201,'woocommerce_registration_privacy_policy_text','Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].','yes'),
(202,'woocommerce_checkout_privacy_policy_text','Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].','yes'),
(203,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),
(204,'woocommerce_trash_pending_orders','','no'),
(205,'woocommerce_trash_failed_orders','','no'),
(206,'woocommerce_trash_cancelled_orders','','no'),
(207,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),
(208,'woocommerce_email_from_name','Woo-tests','no'),
(209,'woocommerce_email_from_address','grola@seostudio.pl','no'),
(210,'woocommerce_email_header_image','','no'),
(211,'woocommerce_email_footer_text','{site_title} &mdash; Built with {WooCommerce}','no'),
(212,'woocommerce_email_base_color','#7f54b3','no'),
(213,'woocommerce_email_background_color','#f7f7f7','no'),
(214,'woocommerce_email_body_background_color','#ffffff','no'),
(215,'woocommerce_email_text_color','#3c3c3c','no'),
(216,'woocommerce_merchant_email_notifications','no','no'),
(217,'woocommerce_cart_page_id','6','no'),
(218,'woocommerce_checkout_page_id','7','no'),
(219,'woocommerce_myaccount_page_id','8','no'),
(220,'woocommerce_terms_page_id','','no'),
(221,'woocommerce_force_ssl_checkout','no','yes'),
(222,'woocommerce_unforce_ssl_checkout','no','yes'),
(223,'woocommerce_checkout_pay_endpoint','order-pay','yes'),
(224,'woocommerce_checkout_order_received_endpoint','order-received','yes'),
(225,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes'),
(226,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes'),
(227,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes'),
(228,'woocommerce_myaccount_orders_endpoint','orders','yes'),
(229,'woocommerce_myaccount_view_order_endpoint','view-order','yes'),
(230,'woocommerce_myaccount_downloads_endpoint','downloads','yes'),
(231,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes'),
(232,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes'),
(233,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes'),
(234,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes'),
(235,'woocommerce_logout_endpoint','customer-logout','yes'),
(236,'woocommerce_api_enabled','no','yes'),
(237,'woocommerce_allow_tracking','no','no'),
(238,'woocommerce_show_marketplace_suggestions','no','no'),
(239,'woocommerce_single_image_width','600','yes'),
(240,'woocommerce_thumbnail_image_width','300','yes'),
(241,'woocommerce_checkout_highlight_required_fields','yes','yes'),
(242,'woocommerce_demo_store','no','no'),
(243,'wc_downloads_approved_directories_mode','enabled','yes'),
(244,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes'),
(245,'current_theme_supports_woocommerce','yes','yes'),
(246,'woocommerce_queue_flush_rewrite_rules','no','yes'),
(250,'product_cat_children','a:0:{}','yes'),
(251,'default_product_cat','15','yes'),
(252,'woocommerce_refund_returns_page_created','9','no'),
(253,'woocommerce_refund_returns_page_id','9','yes'),
(256,'woocommerce_paypal_settings','a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:18:\"grola@seostudio.pl\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:18:\"grola@seostudio.pl\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}','yes'),
(257,'woocommerce_version','6.9.3','yes'),
(258,'woocommerce_db_version','6.9.3','yes'),
(259,'woocommerce_admin_install_timestamp','1663771083','yes'),
(260,'woocommerce_inbox_variant_assignment','5','yes'),
(261,'_transient_timeout__woocommerce_upload_directory_status','1663857483','no'),
(262,'_transient__woocommerce_upload_directory_status','protected','no'),
(263,'_transient_woocommerce_activated_plugin','woocommerce/woocommerce.php','yes'),
(264,'_transient_jetpack_autoloader_plugin_paths','a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}','yes'),
(265,'woocommerce_admin_notices','a:2:{i:0;s:20:\"no_secure_connection\";i:1;s:14:\"template_files\";}','yes'),
(266,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"LYS23owciQH9dNT5icTMHLXpujMHyT7x\";}','yes'),
(267,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes'),
(268,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(269,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(270,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(271,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(272,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(273,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(274,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(275,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(276,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(277,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(278,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(279,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(280,'storefront_nux_dismissed','1','yes'),
(281,'woocommerce_store_postalcode','22-100','yes'),
(282,'woocommerce_product_type','physical','yes'),
(283,'woocommerce_stripe_settings','a:3:{s:7:\"enabled\";s:2:\"no\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}','yes'),
(284,'woocommerce_ppec_paypal_settings','a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}','yes'),
(285,'woocommerce_cheque_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
(286,'woocommerce_bacs_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
(287,'woocommerce_cod_settings','a:1:{s:7:\"enabled\";s:3:\"yes\";}','yes'),
(288,'woocommerce_onboarding_profile','a:1:{s:7:\"skipped\";b:1;}','yes'),
(289,'wc-admin-onboarding-profiler-reminder','a:1:{s:7:\"skipped\";b:1;}','yes'),
(290,'_transient_timeout_wc_onboarding_product_data','1663857495','no'),
(291,'_transient_wc_onboarding_product_data','a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:19:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 21 Sep 2022 14:38:15 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:5:\"13274\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:33:\"X-WP-Total, X-WP-TotalPages, Link\";s:28:\"access-control-allow-headers\";s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";s:13:\"x-wccom-cache\";s:3:\"HIT\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:4:\"x-rq\";s:13:\"ams6 0 4 9980\";s:16:\"content-encoding\";s:4:\"gzip\";s:3:\"age\";s:2:\"33\";s:7:\"x-cache\";s:3:\"hit\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";s:25:\"strict-transport-security\";s:16:\"max-age=31536000\";}}s:4:\"body\";s:71030:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927,\"rating\":4.3,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/woo-Google_Analytics-fvsrvf.png\"},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627,\"rating\":4.6,\"reviews_count\":19,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/12\\/stripe-app-icon-7m1xi7.png\"},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Mailchimp\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/mailchimp\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/09\\/Mailchimp.png\"},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/11\\/Jetpack-1-m5mwyg.png\",\"excerpt\":\"Security, performance, and marketing tools made for WooCommerce stores by the WordPress experts. Get started with basic security and speed tools for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Jetpack\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/jetpack\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/02\\/jetpack-logo--80sgtq.png\"},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin to reach your customers across Facebook, Instagram, Messenger and WhatsApp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297,\"rating\":2,\"reviews_count\":60,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/04\\/fb-woodotcom.png\"},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment solution fully integrated to Woo. Accept credit\\/debit cards &amp; local payment options with no setup or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104,\"rating\":4.3,\"reviews_count\":13,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/02\\/woo-WooCommerce_Payments-mtulxp.png\"},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503,\"rating\":3.2,\"reviews_count\":81,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/07\\/woo-Square-u8km15.png\"},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816,\"rating\":2.9,\"reviews_count\":20,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/08\\/woo-Amazon_Pay-8lvfuy.png\"},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/06\\/WooCommerce-icon-160x160-1.webp\"},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147,\"rating\":3.3,\"reviews_count\":50,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Google Listings &amp; Ads\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/06\\/Marketplace_card_Google.png\",\"excerpt\":\"Reach millions of engaged shoppers across Google with free product listings and ads. Built in partnership with Google.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-listings-and-ads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"118f4d86-f126-4c3a-8525-644e3170d161\",\"slug\":\"google-listings-and-ads\",\"id\":7623964,\"rating\":2.6,\"reviews_count\":18,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/06\\/woo-GoogleListingsAds-jworee.png\"},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618,\"rating\":3.2,\"reviews_count\":25,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/woo-Shipstation-xqap96.png\"},{\"title\":\"PayPal Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/PPCP-Tile-PayPal-Logo-and-Cart-Art-2x-2-uozwz8.jpg\",\"excerpt\":\"PayPal\'s latest, all-in-one checkout solution. Securely accept PayPal Digital Payments, credit\\/debit cards and local payment methods.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paypal-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"934115ab-e3f3-4435-9580-345b1ce21899\",\"slug\":\"woocommerce-paypal-payments\",\"id\":6410731,\"rating\":3.1,\"reviews_count\":63,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/woo-PayPal-nlioum.png\"},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/09\\/woo-Payfast-murskg.png\"},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-USPS-yhn1rb.png\"},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665,\"rating\":3.3,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-UPS-1.png\"},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693,\"rating\":3.3,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Ai Powered Marketing\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Harness your potential and get in front of ideal customers on Google, Facebook, and the Open Web. Reach beyond your competition, and unleash the power of your brand with Kliken.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145,\"rating\":4.3,\"reviews_count\":110,\"vendor_name\":\"Kliken\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/kliken\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/02\\/Kliken-Woo-Logo-1.png\"},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890,\"rating\":2.5,\"reviews_count\":28,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-AustraliaPost.png\"},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-CanadaPost-fjlcfq.png\"},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/woo-RoyalMail-sd9zwy.png\"},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-FedEx-auxjb7.png\"},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686,\"rating\":3.1,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Power your membership association, online magazine, elearning sites, and more with access control to content\\/products and member discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589,\"rating\":4.4,\"reviews_count\":84,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610,\"rating\":3.9,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/woo-AutomateWoo-m4jpva.png\"},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/logo-pb-lzevsq.png\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716,\"rating\":4.9,\"reviews_count\":117,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/woocommerce-xero-integration-sdth2k.jpg\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/woo-Xero-4ovyoc.png\"},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982,\"rating\":2.9,\"reviews_count\":17,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Braintree-wrweyl.png\"},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259,\"rating\":2.8,\"reviews_count\":12,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Omnichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v3.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890,\"rating\":3.1,\"reviews_count\":37,\"vendor_name\":\"Codisto\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/codisto\\/\",\"icon\":null},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087,\"rating\":1.7,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481,\"rating\":4.6,\"reviews_count\":45,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/woo-AmazonS3Storage-jhzxk2.png\"},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Live Chat\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/live-chat\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/11\\/LiveChat.png\"},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Storefront Homepage Contact Section\",\"image\":\"\",\"excerpt\":\"Add a Contact section to the Storefront homepage.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-homepage-contact-section\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"cb12b87f8bbb0139dafbf92ca1f871ef\",\"slug\":\"storefront-homepage-contact-section\",\"id\":1468793,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Storefront-ipreuh.png\"},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/WooCommerce-icon-160x160-1.webp\"},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging & dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Storefront Footer Bar\",\"image\":\"\",\"excerpt\":\"Adds a full-width widget region above the Storefront footer widget area, which can be customized with colors and a background image.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-footer-bar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"6cfd3d4f923cafa16e4801ae801751f4\",\"slug\":\"storefront-footer-bar\",\"id\":1434472,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Storefront-ipreuh.png\"},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on-time tax filing. No more tracking sales tax rates and rules.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Automate sales tax compliance for your multi-channel e-commerce business. Accurate sales tax calculations, data aggregation, quality reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"TaxJar\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/taxjar\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/TaxJar.png\"},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/zapier-logo-1.png\",\"excerpt\":\"Integrate your WooCommerce store with 5000+ cloud apps and services today. Trusted by 11,000+ users.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589,\"rating\":4.4,\"reviews_count\":41,\"vendor_name\":\"OM4\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/om4\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/zapier-icon-80px@2x.png\"},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652,\"rating\":4.6,\"reviews_count\":30,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729,\"rating\":4.5,\"reviews_count\":136,\"vendor_name\":\"StoreApps\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/storeapps\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/wc-icon-smart-coupons-160-p8fwgu.png\"},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738,\"rating\":5,\"reviews_count\":57,\"vendor_name\":\"Backcourt Development\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/backcourt-development\\/\",\"icon\":null},{\"title\":\"Storefront Reviews\",\"image\":\"\",\"excerpt\":\"Reviews can often be the deciding factor when making a purchase online. Highlight your best reviews on your homepage, or across your site with Storefront Reviews.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-reviews\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/reviews\\/\",\"price\":\"&#36;19.00\",\"hash\":\"0c8a1d86b8eff9f1edffa923aeb3fc1f\",\"slug\":\"storefront-reviews\",\"id\":1044976,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Storefront-ipreuh.png\"},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed rich product data to Google Merchant Center for setting up free product listings, product ads, and local inventory campaigns. Full control over your field mappings, and feed content so you can maximize campaign performance and ad spend.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619,\"rating\":4.3,\"reviews_count\":46,\"vendor_name\":\"Ademti Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/ademti-software\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/11\\/product-icon-omiutq.png\"},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643,\"rating\":3.2,\"reviews_count\":29,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":null},{\"title\":\"WooCommerce Print Invoices and Packing Lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666,\"rating\":4.4,\"reviews_count\":29,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Sensei LMS Course Progress\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-course-progress.png\",\"excerpt\":\"Enable your students to easily see their progress and pick up where they left off in a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-course-progress\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ec0f55d8fa7c517dc1844f5c873a77da\",\"slug\":\"sensei-course-progress\",\"id\":435833,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Sensei LMS Certificates\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-certificates.png\",\"excerpt\":\"Award your students with a certificate of completion and a sense of accomplishment after finishing a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-certificates\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"625ee5fe1bf36b4c741ab07507ba2ffd\",\"slug\":\"sensei-certificates\",\"id\":247548,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/06\\/logo-cp-ey7bzs.png\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836,\"rating\":4.9,\"reviews_count\":100,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Eway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/51456-Eway-logo-tagline-RGB-H-yellow-_-grey.png\",\"excerpt\":\"Take credit card payments securely via Eway (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/woo-eway-0klzux.png\"},{\"title\":\"Sensei Pro (WC Paid Courses)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/01\\/Sensei-Pro.png\",\"excerpt\":\"Sell your online courses using Sensei LMS with WooCommerce \\u2014 complete learning management with quizzes, certificates, content drip, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;149.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/01\\/SenseiProWooIcon-aut8wu.png\"},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"The most customizable and robust integration to keep your data in sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"MyWorks Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/myworks-software\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/04\\/qb_thumb.png\"},{\"title\":\"Sensei LMS Media Attachments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-media-attachments.png\",\"excerpt\":\"Provide your students with easy access to additional learning materials, from audio files to slideshows and PDFs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-media-attachments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"788647a9a1d8ef5c95371f0e69223a0f\",\"slug\":\"sensei-media-attachments\",\"id\":290551,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/03\\/logo-csp-aqfm98.png\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253,\"rating\":4.7,\"reviews_count\":43,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398,\"rating\":4.4,\"reviews_count\":12,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Klarna Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Payments_Pink.png\",\"excerpt\":\"With Klarna Payments\\u00a0you can choose the payment that you want, Pay Now, Pay Later or Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnapayments\\/\",\"price\":\"&#36;0.00\",\"hash\":\"a19c689325bc8ea63c620765dd54b33a\",\"slug\":\"klarna-payments-for-woocommerce\",\"id\":2754217,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Klarna.png\"},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174,\"rating\":4.4,\"reviews_count\":152,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Upgrade from Sequential Order Numbers with advanced features and with optional prefixes\\/suffixes.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497,\"rating\":3.7,\"reviews_count\":25,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Viva Wallet Standard Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/Viva-Wallet-logo.png?w=374\",\"excerpt\":\"Integrate the Viva Wallet payment gateway with your WooCommerce store to process and sync your payments and help you sell more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/viva-wallet-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"7240a329-047f-4d8b-b7ec-ee3defd798bd\",\"slug\":\"viva-wallet-for-woocommerce\",\"id\":6137160,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Viva Wallet\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/viva-wallet\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Viva-Wallet.png\"},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"TikTok for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2022\\/04\\/TTFB_logo__4C_horizontal_black.png?w=620\",\"excerpt\":\"Create advertising campaigns and reach one billion global users with TikTok for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tiktok-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"a6f95b36-133e-443e-8e31-6e7a67eb597c\",\"slug\":\"tiktok-for-woocommerce\",\"id\":18734000336353,\"rating\":3.5,\"reviews_count\":13,\"vendor_name\":\"TikTok for Business\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/tiktok-for-business\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2022\\/04\\/tt2.jpg\"},{\"title\":\"HubSpot for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/hubspotlogo-web-color-pxebeq.png\",\"excerpt\":\"Connect your WooCommerce store to HubSpot. Sync, automate &amp; analyze data with HubSpot WooCommerce Integration\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/hubspot-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e50acec8-3a6c-454c-8562-2da4898fa6c1\",\"slug\":\"hubspot-for-woocommerce\",\"id\":5785079,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"MakeWebBetter\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/makewebbetter\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/woo-HubSpot.png\"},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/FirstData.png\",\"excerpt\":\"Accept payment with First Data using the Payeezy Gateway, Payeezy, or legacy Global Gateway payment gateways.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Atreus\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/atreus\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/wc-first-data-product-icon.png\"},{\"title\":\"Opayo Payment Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_ByE_CMYK.png\",\"excerpt\":\"Take payments on your WooCommerce store with the UK\\u2019s most trusted payment solution.\\u00a0A selection of 3 gateway integrations to suit your business needs including Direct, Form and\\u00a0Pi.\\u00a0Always in front, with your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Andrew Benbow\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/andrew-benbow\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_ByE_CMYK_160x160.png\"}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:71030:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927,\"rating\":4.3,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/woo-Google_Analytics-fvsrvf.png\"},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627,\"rating\":4.6,\"reviews_count\":19,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/12\\/stripe-app-icon-7m1xi7.png\"},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Mailchimp\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/mailchimp\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/09\\/Mailchimp.png\"},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/11\\/Jetpack-1-m5mwyg.png\",\"excerpt\":\"Security, performance, and marketing tools made for WooCommerce stores by the WordPress experts. Get started with basic security and speed tools for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Jetpack\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/jetpack\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/02\\/jetpack-logo--80sgtq.png\"},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin to reach your customers across Facebook, Instagram, Messenger and WhatsApp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297,\"rating\":2,\"reviews_count\":60,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/04\\/fb-woodotcom.png\"},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment solution fully integrated to Woo. Accept credit\\/debit cards &amp; local payment options with no setup or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104,\"rating\":4.3,\"reviews_count\":13,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/02\\/woo-WooCommerce_Payments-mtulxp.png\"},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503,\"rating\":3.2,\"reviews_count\":81,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/07\\/woo-Square-u8km15.png\"},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816,\"rating\":2.9,\"reviews_count\":20,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/08\\/woo-Amazon_Pay-8lvfuy.png\"},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/06\\/WooCommerce-icon-160x160-1.webp\"},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147,\"rating\":3.3,\"reviews_count\":50,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Google Listings &amp; Ads\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/06\\/Marketplace_card_Google.png\",\"excerpt\":\"Reach millions of engaged shoppers across Google with free product listings and ads. Built in partnership with Google.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-listings-and-ads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"118f4d86-f126-4c3a-8525-644e3170d161\",\"slug\":\"google-listings-and-ads\",\"id\":7623964,\"rating\":2.6,\"reviews_count\":18,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/06\\/woo-GoogleListingsAds-jworee.png\"},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618,\"rating\":3.2,\"reviews_count\":25,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/woo-Shipstation-xqap96.png\"},{\"title\":\"PayPal Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/PPCP-Tile-PayPal-Logo-and-Cart-Art-2x-2-uozwz8.jpg\",\"excerpt\":\"PayPal\'s latest, all-in-one checkout solution. Securely accept PayPal Digital Payments, credit\\/debit cards and local payment methods.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paypal-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"934115ab-e3f3-4435-9580-345b1ce21899\",\"slug\":\"woocommerce-paypal-payments\",\"id\":6410731,\"rating\":3.1,\"reviews_count\":63,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/woo-PayPal-nlioum.png\"},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/09\\/woo-Payfast-murskg.png\"},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-USPS-yhn1rb.png\"},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665,\"rating\":3.3,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-UPS-1.png\"},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693,\"rating\":3.3,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Ai Powered Marketing\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Harness your potential and get in front of ideal customers on Google, Facebook, and the Open Web. Reach beyond your competition, and unleash the power of your brand with Kliken.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145,\"rating\":4.3,\"reviews_count\":110,\"vendor_name\":\"Kliken\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/kliken\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/02\\/Kliken-Woo-Logo-1.png\"},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890,\"rating\":2.5,\"reviews_count\":28,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-AustraliaPost.png\"},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-CanadaPost-fjlcfq.png\"},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/woo-RoyalMail-sd9zwy.png\"},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-FedEx-auxjb7.png\"},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686,\"rating\":3.1,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Power your membership association, online magazine, elearning sites, and more with access control to content\\/products and member discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589,\"rating\":4.4,\"reviews_count\":84,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610,\"rating\":3.9,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/woo-AutomateWoo-m4jpva.png\"},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/logo-pb-lzevsq.png\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716,\"rating\":4.9,\"reviews_count\":117,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/woocommerce-xero-integration-sdth2k.jpg\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/woo-Xero-4ovyoc.png\"},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982,\"rating\":2.9,\"reviews_count\":17,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Braintree-wrweyl.png\"},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259,\"rating\":2.8,\"reviews_count\":12,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Omnichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v3.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890,\"rating\":3.1,\"reviews_count\":37,\"vendor_name\":\"Codisto\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/codisto\\/\",\"icon\":null},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087,\"rating\":1.7,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481,\"rating\":4.6,\"reviews_count\":45,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/woo-AmazonS3Storage-jhzxk2.png\"},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Live Chat\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/live-chat\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/11\\/LiveChat.png\"},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Storefront Homepage Contact Section\",\"image\":\"\",\"excerpt\":\"Add a Contact section to the Storefront homepage.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-homepage-contact-section\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"cb12b87f8bbb0139dafbf92ca1f871ef\",\"slug\":\"storefront-homepage-contact-section\",\"id\":1468793,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Storefront-ipreuh.png\"},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/WooCommerce-icon-160x160-1.webp\"},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging & dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Storefront Footer Bar\",\"image\":\"\",\"excerpt\":\"Adds a full-width widget region above the Storefront footer widget area, which can be customized with colors and a background image.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-footer-bar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"6cfd3d4f923cafa16e4801ae801751f4\",\"slug\":\"storefront-footer-bar\",\"id\":1434472,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Storefront-ipreuh.png\"},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on-time tax filing. No more tracking sales tax rates and rules.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Automate sales tax compliance for your multi-channel e-commerce business. Accurate sales tax calculations, data aggregation, quality reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"TaxJar\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/taxjar\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/TaxJar.png\"},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/zapier-logo-1.png\",\"excerpt\":\"Integrate your WooCommerce store with 5000+ cloud apps and services today. Trusted by 11,000+ users.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589,\"rating\":4.4,\"reviews_count\":41,\"vendor_name\":\"OM4\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/om4\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/zapier-icon-80px@2x.png\"},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652,\"rating\":4.6,\"reviews_count\":30,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729,\"rating\":4.5,\"reviews_count\":136,\"vendor_name\":\"StoreApps\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/storeapps\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/wc-icon-smart-coupons-160-p8fwgu.png\"},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738,\"rating\":5,\"reviews_count\":57,\"vendor_name\":\"Backcourt Development\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/backcourt-development\\/\",\"icon\":null},{\"title\":\"Storefront Reviews\",\"image\":\"\",\"excerpt\":\"Reviews can often be the deciding factor when making a purchase online. Highlight your best reviews on your homepage, or across your site with Storefront Reviews.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-reviews\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/reviews\\/\",\"price\":\"&#36;19.00\",\"hash\":\"0c8a1d86b8eff9f1edffa923aeb3fc1f\",\"slug\":\"storefront-reviews\",\"id\":1044976,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Storefront-ipreuh.png\"},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed rich product data to Google Merchant Center for setting up free product listings, product ads, and local inventory campaigns. Full control over your field mappings, and feed content so you can maximize campaign performance and ad spend.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619,\"rating\":4.3,\"reviews_count\":46,\"vendor_name\":\"Ademti Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/ademti-software\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/11\\/product-icon-omiutq.png\"},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643,\"rating\":3.2,\"reviews_count\":29,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":null},{\"title\":\"WooCommerce Print Invoices and Packing Lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666,\"rating\":4.4,\"reviews_count\":29,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Sensei LMS Course Progress\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-course-progress.png\",\"excerpt\":\"Enable your students to easily see their progress and pick up where they left off in a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-course-progress\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ec0f55d8fa7c517dc1844f5c873a77da\",\"slug\":\"sensei-course-progress\",\"id\":435833,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Sensei LMS Certificates\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-certificates.png\",\"excerpt\":\"Award your students with a certificate of completion and a sense of accomplishment after finishing a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-certificates\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"625ee5fe1bf36b4c741ab07507ba2ffd\",\"slug\":\"sensei-certificates\",\"id\":247548,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/06\\/logo-cp-ey7bzs.png\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836,\"rating\":4.9,\"reviews_count\":100,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Eway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/51456-Eway-logo-tagline-RGB-H-yellow-_-grey.png\",\"excerpt\":\"Take credit card payments securely via Eway (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/woo-eway-0klzux.png\"},{\"title\":\"Sensei Pro (WC Paid Courses)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/01\\/Sensei-Pro.png\",\"excerpt\":\"Sell your online courses using Sensei LMS with WooCommerce \\u2014 complete learning management with quizzes, certificates, content drip, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;149.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/01\\/SenseiProWooIcon-aut8wu.png\"},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"The most customizable and robust integration to keep your data in sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"MyWorks Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/myworks-software\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/04\\/qb_thumb.png\"},{\"title\":\"Sensei LMS Media Attachments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-media-attachments.png\",\"excerpt\":\"Provide your students with easy access to additional learning materials, from audio files to slideshows and PDFs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-media-attachments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"788647a9a1d8ef5c95371f0e69223a0f\",\"slug\":\"sensei-media-attachments\",\"id\":290551,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/03\\/logo-csp-aqfm98.png\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253,\"rating\":4.7,\"reviews_count\":43,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398,\"rating\":4.4,\"reviews_count\":12,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Klarna Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Payments_Pink.png\",\"excerpt\":\"With Klarna Payments\\u00a0you can choose the payment that you want, Pay Now, Pay Later or Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnapayments\\/\",\"price\":\"&#36;0.00\",\"hash\":\"a19c689325bc8ea63c620765dd54b33a\",\"slug\":\"klarna-payments-for-woocommerce\",\"id\":2754217,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Klarna.png\"},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174,\"rating\":4.4,\"reviews_count\":152,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Upgrade from Sequential Order Numbers with advanced features and with optional prefixes\\/suffixes.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497,\"rating\":3.7,\"reviews_count\":25,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Viva Wallet Standard Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/Viva-Wallet-logo.png?w=374\",\"excerpt\":\"Integrate the Viva Wallet payment gateway with your WooCommerce store to process and sync your payments and help you sell more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/viva-wallet-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"7240a329-047f-4d8b-b7ec-ee3defd798bd\",\"slug\":\"viva-wallet-for-woocommerce\",\"id\":6137160,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Viva Wallet\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/viva-wallet\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Viva-Wallet.png\"},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"TikTok for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2022\\/04\\/TTFB_logo__4C_horizontal_black.png?w=620\",\"excerpt\":\"Create advertising campaigns and reach one billion global users with TikTok for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tiktok-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"a6f95b36-133e-443e-8e31-6e7a67eb597c\",\"slug\":\"tiktok-for-woocommerce\",\"id\":18734000336353,\"rating\":3.5,\"reviews_count\":13,\"vendor_name\":\"TikTok for Business\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/tiktok-for-business\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2022\\/04\\/tt2.jpg\"},{\"title\":\"HubSpot for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/hubspotlogo-web-color-pxebeq.png\",\"excerpt\":\"Connect your WooCommerce store to HubSpot. Sync, automate &amp; analyze data with HubSpot WooCommerce Integration\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/hubspot-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e50acec8-3a6c-454c-8562-2da4898fa6c1\",\"slug\":\"hubspot-for-woocommerce\",\"id\":5785079,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"MakeWebBetter\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/makewebbetter\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/woo-HubSpot.png\"},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/FirstData.png\",\"excerpt\":\"Accept payment with First Data using the Payeezy Gateway, Payeezy, or legacy Global Gateway payment gateways.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Atreus\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/atreus\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/wc-first-data-product-icon.png\"},{\"title\":\"Opayo Payment Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_ByE_CMYK.png\",\"excerpt\":\"Take payments on your WooCommerce store with the UK\\u2019s most trusted payment solution.\\u00a0A selection of 3 gateway integrations to suit your business needs including Direct, Form and\\u00a0Pi.\\u00a0Always in front, with your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Andrew Benbow\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/andrew-benbow\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_ByE_CMYK_160x160.png\"}]}\";s:3:\"raw\";s:71710:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Wed, 21 Sep 2022 14:38:15 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 13274\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages, Link\r\nAccess-Control-Allow-Headers: Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\r\nX-WCCOM-Cache: HIT\r\nCache-Control: max-age=60\r\nAllow: GET\r\nX-rq: ams6 0 4 9980\r\nContent-Encoding: gzip\r\nAge: 33\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\nStrict-Transport-Security: max-age=31536000\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927,\"rating\":4.3,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/woo-Google_Analytics-fvsrvf.png\"},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627,\"rating\":4.6,\"reviews_count\":19,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/12\\/stripe-app-icon-7m1xi7.png\"},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Mailchimp\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/mailchimp\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/09\\/Mailchimp.png\"},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/11\\/Jetpack-1-m5mwyg.png\",\"excerpt\":\"Security, performance, and marketing tools made for WooCommerce stores by the WordPress experts. Get started with basic security and speed tools for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Jetpack\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/jetpack\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/02\\/jetpack-logo--80sgtq.png\"},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin to reach your customers across Facebook, Instagram, Messenger and WhatsApp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297,\"rating\":2,\"reviews_count\":60,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/04\\/fb-woodotcom.png\"},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment solution fully integrated to Woo. Accept credit\\/debit cards &amp; local payment options with no setup or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104,\"rating\":4.3,\"reviews_count\":13,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/02\\/woo-WooCommerce_Payments-mtulxp.png\"},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503,\"rating\":3.2,\"reviews_count\":81,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/07\\/woo-Square-u8km15.png\"},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816,\"rating\":2.9,\"reviews_count\":20,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/08\\/woo-Amazon_Pay-8lvfuy.png\"},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/06\\/WooCommerce-icon-160x160-1.webp\"},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147,\"rating\":3.3,\"reviews_count\":50,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Google Listings &amp; Ads\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/06\\/Marketplace_card_Google.png\",\"excerpt\":\"Reach millions of engaged shoppers across Google with free product listings and ads. Built in partnership with Google.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-listings-and-ads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"118f4d86-f126-4c3a-8525-644e3170d161\",\"slug\":\"google-listings-and-ads\",\"id\":7623964,\"rating\":2.6,\"reviews_count\":18,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/06\\/woo-GoogleListingsAds-jworee.png\"},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618,\"rating\":3.2,\"reviews_count\":25,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/woo-Shipstation-xqap96.png\"},{\"title\":\"PayPal Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/PPCP-Tile-PayPal-Logo-and-Cart-Art-2x-2-uozwz8.jpg\",\"excerpt\":\"PayPal\'s latest, all-in-one checkout solution. Securely accept PayPal Digital Payments, credit\\/debit cards and local payment methods.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paypal-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"934115ab-e3f3-4435-9580-345b1ce21899\",\"slug\":\"woocommerce-paypal-payments\",\"id\":6410731,\"rating\":3.1,\"reviews_count\":63,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/woo-PayPal-nlioum.png\"},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/09\\/woo-Payfast-murskg.png\"},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-USPS-yhn1rb.png\"},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665,\"rating\":3.3,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-UPS-1.png\"},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693,\"rating\":3.3,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Ai Powered Marketing\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Harness your potential and get in front of ideal customers on Google, Facebook, and the Open Web. Reach beyond your competition, and unleash the power of your brand with Kliken.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145,\"rating\":4.3,\"reviews_count\":110,\"vendor_name\":\"Kliken\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/kliken\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/02\\/Kliken-Woo-Logo-1.png\"},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890,\"rating\":2.5,\"reviews_count\":28,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-AustraliaPost.png\"},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-CanadaPost-fjlcfq.png\"},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/woo-RoyalMail-sd9zwy.png\"},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/01\\/woo-FedEx-auxjb7.png\"},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686,\"rating\":3.1,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Power your membership association, online magazine, elearning sites, and more with access control to content\\/products and member discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589,\"rating\":4.4,\"reviews_count\":84,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610,\"rating\":3.9,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/woo-AutomateWoo-m4jpva.png\"},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/logo-pb-lzevsq.png\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716,\"rating\":4.9,\"reviews_count\":117,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/woocommerce-xero-integration-sdth2k.jpg\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/woo-Xero-4ovyoc.png\"},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982,\"rating\":2.9,\"reviews_count\":17,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Braintree-wrweyl.png\"},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259,\"rating\":2.8,\"reviews_count\":12,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Omnichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v3.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890,\"rating\":3.1,\"reviews_count\":37,\"vendor_name\":\"Codisto\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/codisto\\/\",\"icon\":null},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087,\"rating\":1.7,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481,\"rating\":4.6,\"reviews_count\":45,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/woo-AmazonS3Storage-jhzxk2.png\"},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Live Chat\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/live-chat\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/11\\/LiveChat.png\"},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Storefront Homepage Contact Section\",\"image\":\"\",\"excerpt\":\"Add a Contact section to the Storefront homepage.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-homepage-contact-section\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"cb12b87f8bbb0139dafbf92ca1f871ef\",\"slug\":\"storefront-homepage-contact-section\",\"id\":1468793,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Storefront-ipreuh.png\"},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/WooCommerce-icon-160x160-1.webp\"},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging & dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Storefront Footer Bar\",\"image\":\"\",\"excerpt\":\"Adds a full-width widget region above the Storefront footer widget area, which can be customized with colors and a background image.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-footer-bar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"6cfd3d4f923cafa16e4801ae801751f4\",\"slug\":\"storefront-footer-bar\",\"id\":1434472,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Storefront-ipreuh.png\"},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Themesquad\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/themesquad\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on-time tax filing. No more tracking sales tax rates and rules.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Automate sales tax compliance for your multi-channel e-commerce business. Accurate sales tax calculations, data aggregation, quality reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"TaxJar\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/taxjar\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/TaxJar.png\"},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/zapier-logo-1.png\",\"excerpt\":\"Integrate your WooCommerce store with 5000+ cloud apps and services today. Trusted by 11,000+ users.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589,\"rating\":4.4,\"reviews_count\":41,\"vendor_name\":\"OM4\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/om4\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/zapier-icon-80px@2x.png\"},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652,\"rating\":4.6,\"reviews_count\":30,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729,\"rating\":4.5,\"reviews_count\":136,\"vendor_name\":\"StoreApps\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/storeapps\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/08\\/wc-icon-smart-coupons-160-p8fwgu.png\"},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738,\"rating\":5,\"reviews_count\":57,\"vendor_name\":\"Backcourt Development\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/backcourt-development\\/\",\"icon\":null},{\"title\":\"Storefront Reviews\",\"image\":\"\",\"excerpt\":\"Reviews can often be the deciding factor when making a purchase online. Highlight your best reviews on your homepage, or across your site with Storefront Reviews.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-reviews\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/reviews\\/\",\"price\":\"&#36;19.00\",\"hash\":\"0c8a1d86b8eff9f1edffa923aeb3fc1f\",\"slug\":\"storefront-reviews\",\"id\":1044976,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/woo-Storefront-ipreuh.png\"},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed rich product data to Google Merchant Center for setting up free product listings, product ads, and local inventory campaigns. Full control over your field mappings, and feed content so you can maximize campaign performance and ad spend.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619,\"rating\":4.3,\"reviews_count\":46,\"vendor_name\":\"Ademti Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/ademti-software\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/11\\/product-icon-omiutq.png\"},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643,\"rating\":3.2,\"reviews_count\":29,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":null},{\"title\":\"WooCommerce Print Invoices and Packing Lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666,\"rating\":4.4,\"reviews_count\":29,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Sensei LMS Course Progress\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-course-progress.png\",\"excerpt\":\"Enable your students to easily see their progress and pick up where they left off in a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-course-progress\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ec0f55d8fa7c517dc1844f5c873a77da\",\"slug\":\"sensei-course-progress\",\"id\":435833,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Sensei LMS Certificates\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-certificates.png\",\"excerpt\":\"Award your students with a certificate of completion and a sense of accomplishment after finishing a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-certificates\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"625ee5fe1bf36b4c741ab07507ba2ffd\",\"slug\":\"sensei-certificates\",\"id\":247548,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/06\\/logo-cp-ey7bzs.png\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836,\"rating\":4.9,\"reviews_count\":100,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Eway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/51456-Eway-logo-tagline-RGB-H-yellow-_-grey.png\",\"excerpt\":\"Take credit card payments securely via Eway (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/woo-eway-0klzux.png\"},{\"title\":\"Sensei Pro (WC Paid Courses)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/01\\/Sensei-Pro.png\",\"excerpt\":\"Sell your online courses using Sensei LMS with WooCommerce \\u2014 complete learning management with quizzes, certificates, content drip, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;149.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/01\\/SenseiProWooIcon-aut8wu.png\"},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"The most customizable and robust integration to keep your data in sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"MyWorks Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/myworks-software\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/04\\/qb_thumb.png\"},{\"title\":\"Sensei LMS Media Attachments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-media-attachments.png\",\"excerpt\":\"Provide your students with easy access to additional learning materials, from audio files to slideshows and PDFs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-media-attachments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"788647a9a1d8ef5c95371f0e69223a0f\",\"slug\":\"sensei-media-attachments\",\"id\":290551,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/03\\/logo-csp-aqfm98.png\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253,\"rating\":4.7,\"reviews_count\":43,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/WooCommerce-icon-160x160-1-3o68ab.jpg\"},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398,\"rating\":4.4,\"reviews_count\":12,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Klarna Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Payments_Pink.png\",\"excerpt\":\"With Klarna Payments\\u00a0you can choose the payment that you want, Pay Now, Pay Later or Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnapayments\\/\",\"price\":\"&#36;0.00\",\"hash\":\"a19c689325bc8ea63c620765dd54b33a\",\"slug\":\"klarna-payments-for-woocommerce\",\"id\":2754217,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Klarna.png\"},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174,\"rating\":4.4,\"reviews_count\":152,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Upgrade from Sequential Order Numbers with advanced features and with optional prefixes\\/suffixes.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497,\"rating\":3.7,\"reviews_count\":25,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Viva Wallet Standard Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/Viva-Wallet-logo.png?w=374\",\"excerpt\":\"Integrate the Viva Wallet payment gateway with your WooCommerce store to process and sync your payments and help you sell more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/viva-wallet-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"7240a329-047f-4d8b-b7ec-ee3defd798bd\",\"slug\":\"viva-wallet-for-woocommerce\",\"id\":6137160,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Viva Wallet\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/viva-wallet\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Viva-Wallet.png\"},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"TikTok for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2022\\/04\\/TTFB_logo__4C_horizontal_black.png?w=620\",\"excerpt\":\"Create advertising campaigns and reach one billion global users with TikTok for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tiktok-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"a6f95b36-133e-443e-8e31-6e7a67eb597c\",\"slug\":\"tiktok-for-woocommerce\",\"id\":18734000336353,\"rating\":3.5,\"reviews_count\":13,\"vendor_name\":\"TikTok for Business\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/tiktok-for-business\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2022\\/04\\/tt2.jpg\"},{\"title\":\"HubSpot for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/hubspotlogo-web-color-pxebeq.png\",\"excerpt\":\"Connect your WooCommerce store to HubSpot. Sync, automate &amp; analyze data with HubSpot WooCommerce Integration\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/hubspot-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e50acec8-3a6c-454c-8562-2da4898fa6c1\",\"slug\":\"hubspot-for-woocommerce\",\"id\":5785079,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"MakeWebBetter\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/makewebbetter\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/woo-HubSpot.png\"},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/FirstData.png\",\"excerpt\":\"Accept payment with First Data using the Payeezy Gateway, Payeezy, or legacy Global Gateway payment gateways.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Atreus\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/atreus\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/wc-first-data-product-icon.png\"},{\"title\":\"Opayo Payment Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_ByE_CMYK.png\",\"excerpt\":\"Take payments on your WooCommerce store with the UK\\u2019s most trusted payment solution.\\u00a0A selection of 3 gateway integrations to suit your business needs including Direct, Form and\\u00a0Pi.\\u00a0Always in front, with your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Andrew Benbow\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/andrew-benbow\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_ByE_CMYK_160x160.png\"}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:19:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Wed, 21 Sep 2022 14:38:15 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:5:\"13274\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:33:\"X-WP-Total, X-WP-TotalPages, Link\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";}s:13:\"x-wccom-cache\";a:1:{i:0;s:3:\"HIT\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:4:\"x-rq\";a:1:{i:0;s:13:\"ams6 0 4 9980\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:3:\"age\";a:1:{i:0;s:2:\"33\";}s:7:\"x-cache\";a:1:{i:0;s:3:\"hit\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}s:25:\"strict-transport-security\";a:1:{i:0;s:16:\"max-age=31536000\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:59:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}','no'),
(292,'_transient_timeout_woocommerce_admin_remote_free_extensions_specs','1664375895','no'),
(293,'_transient_woocommerce_admin_remote_free_extensions_specs','a:1:{s:5:\"en_US\";a:4:{s:10:\"obw/basics\";O:8:\"stdClass\":3:{s:3:\"key\";s:10:\"obw/basics\";s:5:\"title\";s:14:\"Get the basics\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":4:{s:11:\"description\";s:163:\"Accept credit cards and other popular payment methods with <a href=\"https://woocommerce.com/products/woocommerce-payments\" target=\"_blank\">WooCommerce Payments</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:20:\"woocommerce-payments\";}i:1;O:8:\"stdClass\":4:{s:11:\"description\";s:119:\"Print shipping labels with <a href=\"https://woocommerce.com/products/shipping\" target=\"_blank\">WooCommerce Shipping</a>\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:13:\"product_types\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:5:\"count\";}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";i:1;s:7:\"default\";a:0:{}s:9:\"operation\";s:2:\"!=\";}}i:1;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:15:\"product_types.0\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";s:9:\"downloads\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:2:\"!=\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:29:\"woocommerce-services:shipping\";}i:2;O:8:\"stdClass\":4:{s:11:\"description\";s:111:\"Get automated sales tax with <a href=\"https://woocommerce.com/products/tax\" target=\"_blank\">WooCommerce Tax</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:24:\"woocommerce-services:tax\";}i:3;O:8:\"stdClass\":4:{s:11:\"description\";s:110:\"Enhance speed and security with <a href=\"https://woocommerce.com/products/jetpack\" target=\"_blank\">Jetpack</a>\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:7:\"jetpack\";}}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:7:\"jetpack\";}}}s:8:\"obw/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:8:\"obw/grow\";s:5:\"title\";s:15:\"Grow your store\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:115:\"Level up your email marketing with <a href=\"https://woocommerce.com/products/mailpoet\" target=\"_blank\">MailPoet</a>\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:8:\"mailpoet\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:8:\"mailpoet\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:127:\"Drive sales with <a href=\"https://woocommerce.com/products/google-listings-and-ads\" target=\"_blank\">Google Listings and Ads</a>\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google-listings-and-ads\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:23:\"google-listings-and-ads\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"Facebook for WooCommerce\";s:11:\"description\";s:141:\"List products and create ads on Facebook and Instagram with <a href=\"https://woocommerce.com/products/facebook/\">Facebook for WooCommerce</a>\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:24:\"facebook-for-woocommerce\";}}}s:15:\"task-list/reach\";O:8:\"stdClass\":3:{s:3:\"key\";s:15:\"task-list/reach\";s:5:\"title\";s:22:\"Reach out to customers\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:111:\"Create and send purchase follow-up emails, newsletters, and promotional campaigns straight from your dashboard.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailpoet.png\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:12:\"mailpoet:alt\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:9:\"Mailchimp\";s:11:\"description\";s:78:\"Send targeted campaigns, recover abandoned carts and much more with Mailchimp.\";s:9:\"image_url\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailchimp-for-woocommerce.png\";s:10:\"manage_url\";s:36:\"admin.php?page=mailchimp-woocommerce\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:25:\"mailchimp-for-woocommerce\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:29:\"Creative Mail for WooCommerce\";s:11:\"description\";s:99:\"Create on-brand store campaigns, fast email promotions and customer retargeting with Creative Mail.\";s:9:\"image_url\";s:121:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/creative-mail-by-constant-contact.png\";s:10:\"manage_url\";s:27:\"admin.php?page=creativemail\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:33:\"creative-mail-by-constant-contact\";}}}s:14:\"task-list/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:14:\"task-list/grow\";s:5:\"title\";s:15:\"Grow your store\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:134:\"Reach more shoppers and drive sales for your store. Integrate with Google to list your products for free and launch paid ad campaigns.\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:27:\"google-listings-and-ads:alt\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:22:\"TikTok for WooCommerce\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/tiktok.svg\";s:11:\"description\";s:118:\"Grow your online sales by promoting your products on TikTok to over one billion monthly active users around the world.\";s:10:\"manage_url\";s:21:\"admin.php?page=tiktok\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MY\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PH\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ID\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"VN\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TH\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"KR\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IL\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UA\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TR\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SA\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:19:\"tiktok-for-business\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"Facebook for WooCommerce\";s:11:\"description\";s:55:\"List products and create ads on Facebook and Instagram.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:28:\"facebook-for-woocommerce:alt\";}i:3;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"Pinterest for WooCommerce\";s:11:\"description\";s:159:\"Get your products in front of Pinterest users searching for ideas and things to buy. Get started with Pinterest and make your entire product catalog browsable.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/pinterest.png\";s:10:\"manage_url\";s:51:\"admin.php?page=wc-admin&path=%2Fpinterest%2Flanding\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:25:\"pinterest-for-woocommerce\";}}}}}','no'),
(294,'_transient_shipping-transient-version','1663771098','yes'),
(295,'_transient_timeout_wc_shipping_method_count_legacy','1666363095','no'),
(296,'_transient_wc_shipping_method_count_legacy','a:2:{s:7:\"version\";s:10:\"1663771095\";s:5:\"value\";i:0;}','no'),
(297,'woocommerce_default_homepage_layout','two_columns','yes'),
(298,'woocommerce_task_list_hidden_lists','a:1:{i:0;s:5:\"setup\";}','yes'),
(299,'woocommerce_flat_rate_1_settings','a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:1:\"1\";}','yes'),
(300,'wpdesk_rest_api_disable_permissions','1','yes'),
(301,'_transient_product_query-transient-version','1663771107','yes'),
(306,'_transient_product-transient-version','1663771107','yes'),
(307,'_transient_timeout_wc_related_10','1663857501','no'),
(308,'_transient_wc_related_10','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=10\";a:0:{}}','no'),
(313,'_transient_timeout_wc_related_11','1663857501','no'),
(314,'_transient_wc_related_11','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=11\";a:1:{i:0;s:2:\"10\";}}','no'),
(319,'_transient_timeout_wc_related_12','1663857502','no'),
(320,'_transient_wc_related_12','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=12\";a:2:{i:0;s:2:\"10\";i:1;s:2:\"11\";}}','no'),
(325,'_transient_timeout_wc_related_13','1663857503','no'),
(326,'_transient_wc_related_13','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=13\";a:3:{i:0;s:2:\"10\";i:1;s:2:\"11\";i:2;s:2:\"12\";}}','no'),
(331,'_transient_timeout_wc_related_14','1663857503','no'),
(332,'_transient_wc_related_14','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=14\";a:4:{i:0;s:2:\"10\";i:1;s:2:\"11\";i:2;s:2:\"12\";i:3;s:2:\"13\";}}','no'),
(337,'_transient_timeout_wc_related_15','1663857504','no'),
(338,'_transient_wc_related_15','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=15\";a:5:{i:0;s:2:\"10\";i:1;s:2:\"11\";i:2;s:2:\"12\";i:3;s:2:\"13\";i:4;s:2:\"14\";}}','no'),
(343,'_transient_timeout_wc_related_16','1663857505','no'),
(344,'_transient_wc_related_16','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=16\";a:6:{i:0;s:2:\"10\";i:1;s:2:\"11\";i:2;s:2:\"12\";i:3;s:2:\"13\";i:4;s:2:\"14\";i:5;s:2:\"15\";}}','no'),
(349,'_transient_timeout_wc_related_17','1663857505','no'),
(350,'_transient_wc_related_17','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=17\";a:7:{i:0;s:2:\"10\";i:1;s:2:\"11\";i:2;s:2:\"12\";i:3;s:2:\"13\";i:4;s:2:\"14\";i:5;s:2:\"15\";i:6;s:2:\"16\";}}','no'),
(355,'_transient_timeout_wc_related_18','1663857506','no'),
(356,'_transient_wc_related_18','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=18\";a:8:{i:0;s:2:\"10\";i:1;s:2:\"11\";i:2;s:2:\"12\";i:3;s:2:\"13\";i:4;s:2:\"14\";i:5;s:2:\"15\";i:6;s:2:\"16\";i:7;s:2:\"17\";}}','no'),
(359,'_transient_timeout_wc_term_counts','1666363107','no'),
(360,'_transient_wc_term_counts','a:0:{}','no'),
(361,'_transient_timeout_wc_related_19','1663857507','no'),
(362,'_transient_wc_related_19','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=19\";a:9:{i:0;s:2:\"10\";i:1;s:2:\"11\";i:2;s:2:\"12\";i:3;s:2:\"13\";i:4;s:2:\"14\";i:5;s:2:\"15\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"18\";}}','no'),
(363,'recently_activated','a:2:{s:27:\"woocommerce/woocommerce.php\";i:1663771110;i:0;b:0;}','yes'),
(364,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1663771112;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"6.9.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.6.9.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:3:\"5.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"6.9.3\";s:35:\"csv-exporter/csv-exporter.php\";s:3:\"1.0\";}}','no'),
(367,'_transient_wc_attribute_taxonomies','a:0:{}','yes'),
(368,'woocommerce_attribute_lookup_regeneration_in_progress','yes','yes'),
(369,'woocommerce_attribute_lookup_last_product_id_to_process','19','yes'),
(370,'woocommerce_attribute_lookup_processed_count','0','yes'),
(373,'plugin_activation_csv-exporter/csv-exporter.php','2022-09-21 14:38:47','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES
(1,2,'_wp_page_template','default'),
(2,3,'_wp_page_template','default'),
(3,4,'_wp_attached_file','woocommerce-placeholder.png'),
(4,4,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:102644;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10546;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84297;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3767;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49572;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5,10,'_sku','product-100'),
(6,10,'_regular_price','100'),
(7,10,'total_sales','0'),
(8,10,'_tax_status','taxable'),
(9,10,'_tax_class',''),
(10,10,'_manage_stock','no'),
(11,10,'_backorders','no'),
(12,10,'_sold_individually','no'),
(13,10,'_weight','100'),
(14,10,'_length','100'),
(15,10,'_width','100'),
(16,10,'_height','100'),
(17,10,'_virtual','no'),
(18,10,'_downloadable','no'),
(19,10,'_download_limit','-1'),
(20,10,'_download_expiry','-1'),
(21,10,'_stock',NULL),
(22,10,'_stock_status','instock'),
(23,10,'_wc_average_rating','0'),
(24,10,'_wc_review_count','0'),
(25,10,'_product_version','6.9.3'),
(26,10,'_price','100'),
(27,11,'_sku','product-10'),
(28,11,'_regular_price','10'),
(29,11,'total_sales','0'),
(30,11,'_tax_status','taxable'),
(31,11,'_tax_class',''),
(32,11,'_manage_stock','no'),
(33,11,'_backorders','no'),
(34,11,'_sold_individually','no'),
(35,11,'_weight','10'),
(36,11,'_length','10'),
(37,11,'_width','10'),
(38,11,'_height','10'),
(39,11,'_virtual','no'),
(40,11,'_downloadable','no'),
(41,11,'_download_limit','-1'),
(42,11,'_download_expiry','-1'),
(43,11,'_stock',NULL),
(44,11,'_stock_status','instock'),
(45,11,'_wc_average_rating','0'),
(46,11,'_wc_review_count','0'),
(47,11,'_product_version','6.9.3'),
(48,11,'_price','10'),
(49,12,'_sku','product-9'),
(50,12,'_regular_price','9'),
(51,12,'total_sales','0'),
(52,12,'_tax_status','taxable'),
(53,12,'_tax_class',''),
(54,12,'_manage_stock','no'),
(55,12,'_backorders','no'),
(56,12,'_sold_individually','no'),
(57,12,'_weight','9'),
(58,12,'_length','9'),
(59,12,'_width','9'),
(60,12,'_height','9'),
(61,12,'_virtual','no'),
(62,12,'_downloadable','no'),
(63,12,'_download_limit','-1'),
(64,12,'_download_expiry','-1'),
(65,12,'_stock',NULL),
(66,12,'_stock_status','instock'),
(67,12,'_wc_average_rating','0'),
(68,12,'_wc_review_count','0'),
(69,12,'_product_version','6.9.3'),
(70,12,'_price','9'),
(71,13,'_sku','product-1'),
(72,13,'_regular_price','1'),
(73,13,'total_sales','0'),
(74,13,'_tax_status','taxable'),
(75,13,'_tax_class',''),
(76,13,'_manage_stock','no'),
(77,13,'_backorders','no'),
(78,13,'_sold_individually','no'),
(79,13,'_weight','1'),
(80,13,'_length','1'),
(81,13,'_width','1'),
(82,13,'_height','1'),
(83,13,'_virtual','no'),
(84,13,'_downloadable','no'),
(85,13,'_download_limit','-1'),
(86,13,'_download_expiry','-1'),
(87,13,'_stock',NULL),
(88,13,'_stock_status','instock'),
(89,13,'_wc_average_rating','0'),
(90,13,'_wc_review_count','0'),
(91,13,'_product_version','6.9.3'),
(92,13,'_price','1'),
(93,14,'_sku','product-09'),
(94,14,'_regular_price','0.9'),
(95,14,'total_sales','0'),
(96,14,'_tax_status','taxable'),
(97,14,'_tax_class',''),
(98,14,'_manage_stock','no'),
(99,14,'_backorders','no'),
(100,14,'_sold_individually','no'),
(101,14,'_weight','0.9'),
(102,14,'_length','0.9'),
(103,14,'_width','0.9'),
(104,14,'_height','0.9'),
(105,14,'_virtual','no'),
(106,14,'_downloadable','no'),
(107,14,'_download_limit','-1'),
(108,14,'_download_expiry','-1'),
(109,14,'_stock',NULL),
(110,14,'_stock_status','instock'),
(111,14,'_wc_average_rating','0'),
(112,14,'_wc_review_count','0'),
(113,14,'_product_version','6.9.3'),
(114,14,'_price','0.9'),
(115,15,'_sku','product-009'),
(116,15,'_regular_price','0.09'),
(117,15,'total_sales','0'),
(118,15,'_tax_status','taxable'),
(119,15,'_tax_class',''),
(120,15,'_manage_stock','no'),
(121,15,'_backorders','no'),
(122,15,'_sold_individually','no'),
(123,15,'_weight','0.09'),
(124,15,'_length','0.09'),
(125,15,'_width','0.09'),
(126,15,'_height','0.09'),
(127,15,'_virtual','no'),
(128,15,'_downloadable','no'),
(129,15,'_download_limit','-1'),
(130,15,'_download_expiry','-1'),
(131,15,'_stock',NULL),
(132,15,'_stock_status','instock'),
(133,15,'_wc_average_rating','0'),
(134,15,'_wc_review_count','0'),
(135,15,'_product_version','6.9.3'),
(136,15,'_price','0.09'),
(137,16,'_sku','product-01'),
(138,16,'_regular_price','0.1'),
(139,16,'total_sales','0'),
(140,16,'_tax_status','taxable'),
(141,16,'_tax_class',''),
(142,16,'_manage_stock','no'),
(143,16,'_backorders','no'),
(144,16,'_sold_individually','no'),
(145,16,'_weight','0.1'),
(146,16,'_length','0.1'),
(147,16,'_width','0.1'),
(148,16,'_height','0.1'),
(149,16,'_virtual','no'),
(150,16,'_downloadable','no'),
(151,16,'_download_limit','-1'),
(152,16,'_download_expiry','-1'),
(153,16,'_stock',NULL),
(154,16,'_stock_status','instock'),
(155,16,'_wc_average_rating','0'),
(156,16,'_wc_review_count','0'),
(157,16,'_product_version','6.9.3'),
(158,16,'_price','0.1'),
(159,17,'_sku','product-001'),
(160,17,'_regular_price','0.01'),
(161,17,'total_sales','0'),
(162,17,'_tax_status','taxable'),
(163,17,'_tax_class',''),
(164,17,'_manage_stock','no'),
(165,17,'_backorders','no'),
(166,17,'_sold_individually','no'),
(167,17,'_weight','0.01'),
(168,17,'_length','0.01'),
(169,17,'_width','0.01'),
(170,17,'_height','0.01'),
(171,17,'_virtual','no'),
(172,17,'_downloadable','no'),
(173,17,'_download_limit','-1'),
(174,17,'_download_expiry','-1'),
(175,17,'_stock',NULL),
(176,17,'_stock_status','instock'),
(177,17,'_wc_average_rating','0'),
(178,17,'_wc_review_count','0'),
(179,17,'_product_version','6.9.3'),
(180,17,'_price','0.01'),
(181,18,'_sku','product-0001'),
(182,18,'_regular_price','0.001'),
(183,18,'total_sales','0'),
(184,18,'_tax_status','taxable'),
(185,18,'_tax_class',''),
(186,18,'_manage_stock','no'),
(187,18,'_backorders','no'),
(188,18,'_sold_individually','no'),
(189,18,'_weight','0.001'),
(190,18,'_length','0.001'),
(191,18,'_width','0.001'),
(192,18,'_height','0.001'),
(193,18,'_virtual','no'),
(194,18,'_downloadable','no'),
(195,18,'_download_limit','-1'),
(196,18,'_download_expiry','-1'),
(197,18,'_stock',NULL),
(198,18,'_stock_status','instock'),
(199,18,'_wc_average_rating','0'),
(200,18,'_wc_review_count','0'),
(201,18,'_product_version','6.9.3'),
(202,18,'_price','0.001'),
(203,19,'_sku','product-00001'),
(204,19,'_regular_price','0.0001'),
(205,19,'total_sales','0'),
(206,19,'_tax_status','taxable'),
(207,19,'_tax_class',''),
(208,19,'_manage_stock','no'),
(209,19,'_backorders','no'),
(210,19,'_sold_individually','no'),
(211,19,'_weight','0.0001'),
(212,19,'_length','0.0001'),
(213,19,'_width','0.0001'),
(214,19,'_height','0.0001'),
(215,19,'_virtual','no'),
(216,19,'_downloadable','no'),
(217,19,'_download_limit','-1'),
(218,19,'_download_expiry','-1'),
(219,19,'_stock',NULL),
(220,19,'_stock_status','instock'),
(221,19,'_wc_average_rating','0'),
(222,19,'_wc_review_count','0'),
(223,19,'_product_version','6.9.3'),
(224,19,'_price','0.0001');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES
(1,1,'2022-09-21 14:37:56','2022-09-21 14:37:56','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-09-21 14:37:56','2022-09-21 14:37:56','',0,'http://wptests.lh/?p=1',0,'post','',1),
(2,1,'2022-09-21 14:37:56','2022-09-21 14:37:56','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wptests.lh/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2022-09-21 14:37:56','2022-09-21 14:37:56','',0,'http://wptests.lh/?page_id=2',0,'page','',0),
(3,1,'2022-09-21 14:37:56','2022-09-21 14:37:56','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://wptests.lh.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2022-09-21 14:37:56','2022-09-21 14:37:56','',0,'http://wptests.lh/?page_id=3',0,'page','',0),
(4,0,'2022-09-21 14:38:02','2022-09-21 14:38:02','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2022-09-21 14:38:02','2022-09-21 14:38:02','',0,'http://wptests.lh/wp-content/uploads/2022/09/woocommerce-placeholder.png',0,'attachment','image/png',0),
(5,1,'2022-09-21 14:38:03','2022-09-21 14:38:03','','Shop','','publish','closed','closed','','shop','','','2022-09-21 14:38:03','2022-09-21 14:38:03','',0,'http://wptests.lh/?page_id=5',0,'page','',0),
(6,1,'2022-09-21 14:38:03','2022-09-21 14:38:03','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Cart','','publish','closed','closed','','cart','','','2022-09-21 14:38:03','2022-09-21 14:38:03','',0,'http://wptests.lh/?page_id=6',0,'page','',0),
(7,1,'2022-09-21 14:38:03','2022-09-21 14:38:03','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Checkout','','publish','closed','closed','','checkout','','','2022-09-21 14:38:03','2022-09-21 14:38:03','',0,'http://wptests.lh/?page_id=7',0,'page','',0),
(8,1,'2022-09-21 14:38:03','2022-09-21 14:38:03','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','My account','','publish','closed','closed','','my-account','','','2022-09-21 14:38:03','2022-09-21 14:38:03','',0,'http://wptests.lh/?page_id=8',0,'page','',0),
(9,1,'2022-09-21 14:38:03','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->','Refund and Returns Policy','','draft','closed','closed','','refund_returns','','','2022-09-21 14:38:03','0000-00-00 00:00:00','',0,'http://wptests.lh/?page_id=9',0,'page','',0),
(10,1,'2022-09-21 14:38:21','2022-09-21 14:38:21','','Product 100','','publish','open','closed','','product-100','','','2022-09-21 14:38:21','2022-09-21 14:38:21','',0,'http://wptests.lh/?product=product-100',0,'product','',0),
(11,1,'2022-09-21 14:38:21','2022-09-21 14:38:21','','Product 10','','publish','open','closed','','product-10','','','2022-09-21 14:38:21','2022-09-21 14:38:21','',0,'http://wptests.lh/?product=product-10',0,'product','',0),
(12,1,'2022-09-21 14:38:22','2022-09-21 14:38:22','','Product 9','','publish','open','closed','','product-9','','','2022-09-21 14:38:22','2022-09-21 14:38:22','',0,'http://wptests.lh/?product=product-9',0,'product','',0),
(13,1,'2022-09-21 14:38:23','2022-09-21 14:38:23','','Product 1','','publish','open','closed','','product-1','','','2022-09-21 14:38:23','2022-09-21 14:38:23','',0,'http://wptests.lh/?product=product-1',0,'product','',0),
(14,1,'2022-09-21 14:38:23','2022-09-21 14:38:23','','Product 09','','publish','open','closed','','product-09','','','2022-09-21 14:38:23','2022-09-21 14:38:23','',0,'http://wptests.lh/?product=product-09',0,'product','',0),
(15,1,'2022-09-21 14:38:24','2022-09-21 14:38:24','','Product 009','','publish','open','closed','','product-009','','','2022-09-21 14:38:24','2022-09-21 14:38:24','',0,'http://wptests.lh/?product=product-009',0,'product','',0),
(16,1,'2022-09-21 14:38:25','2022-09-21 14:38:25','','Product 01','','publish','open','closed','','product-01','','','2022-09-21 14:38:25','2022-09-21 14:38:25','',0,'http://wptests.lh/?product=product-01',0,'product','',0),
(17,1,'2022-09-21 14:38:25','2022-09-21 14:38:25','','Product 001','','publish','open','closed','','product-001','','','2022-09-21 14:38:25','2022-09-21 14:38:25','',0,'http://wptests.lh/?product=product-001',0,'product','',0),
(18,1,'2022-09-21 14:38:26','2022-09-21 14:38:26','','Product 0001','','publish','open','closed','','product-0001','','','2022-09-21 14:38:26','2022-09-21 14:38:26','',0,'http://wptests.lh/?product=product-0001',0,'product','',0),
(19,1,'2022-09-21 14:38:27','2022-09-21 14:38:27','','Product 00001','','publish','open','closed','','product-00001','','','2022-09-21 14:38:27','2022-09-21 14:38:27','',0,'http://wptests.lh/?product=product-00001',0,'product','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES
(1,1,0),
(10,2,0),
(10,15,0),
(11,2,0),
(11,15,0),
(12,2,0),
(12,15,0),
(13,2,0),
(13,15,0),
(14,2,0),
(14,15,0),
(15,2,0),
(15,15,0),
(16,2,0),
(16,15,0),
(17,2,0),
(17,15,0),
(18,2,0),
(18,15,0),
(19,2,0),
(19,15,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES
(1,1,'category','',0,1),
(2,2,'product_type','',0,10),
(3,3,'product_type','',0,0),
(4,4,'product_type','',0,0),
(5,5,'product_type','',0,0),
(6,6,'product_visibility','',0,0),
(7,7,'product_visibility','',0,0),
(8,8,'product_visibility','',0,0),
(9,9,'product_visibility','',0,0),
(10,10,'product_visibility','',0,0),
(11,11,'product_visibility','',0,0),
(12,12,'product_visibility','',0,0),
(13,13,'product_visibility','',0,0),
(14,14,'product_visibility','',0,0),
(15,15,'product_cat','',0,10);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES
(1,15,'product_count_product_cat','10');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES
(1,'Uncategorized','uncategorized',0),
(2,'simple','simple',0),
(3,'grouped','grouped',0),
(4,'variable','variable',0),
(5,'external','external',0),
(6,'exclude-from-search','exclude-from-search',0),
(7,'exclude-from-catalog','exclude-from-catalog',0),
(8,'featured','featured',0),
(9,'outofstock','outofstock',0),
(10,'rated-1','rated-1',0),
(11,'rated-2','rated-2',0),
(12,'rated-3','rated-3',0),
(13,'rated-4','rated-4',0),
(14,'rated-5','rated-5',0),
(15,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES
(1,1,'nickname','admin'),
(2,1,'first_name',''),
(3,1,'last_name',''),
(4,1,'description',''),
(5,1,'rich_editing','true'),
(6,1,'syntax_highlighting','true'),
(7,1,'comment_shortcuts','false'),
(8,1,'admin_color','fresh'),
(9,1,'use_ssl','0'),
(10,1,'show_admin_bar_front','true'),
(11,1,'locale',''),
(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
(13,1,'wp_user_level','10'),
(14,1,'dismissed_wp_pointers',''),
(15,1,'show_welcome_panel','1'),
(16,2,'nickname','customer'),
(17,2,'first_name',''),
(18,2,'last_name',''),
(19,2,'description',''),
(20,2,'rich_editing','true'),
(21,2,'syntax_highlighting','true'),
(22,2,'comment_shortcuts','false'),
(23,2,'admin_color','fresh'),
(24,2,'use_ssl','0'),
(25,2,'show_admin_bar_front','true'),
(26,2,'locale',''),
(27,2,'wp_capabilities','a:1:{s:8:\"customer\";b:1;}'),
(28,2,'wp_user_level','0'),
(29,2,'dismissed_wp_pointers',''),
(30,2,'last_update','1663771099'),
(31,2,'billing_first_name','First'),
(32,2,'billing_last_name','Last'),
(33,2,'billing_company','WPDesk'),
(34,2,'billing_address_1','Street 1'),
(35,2,'billing_city','City'),
(36,2,'billing_postcode','53-030'),
(37,2,'billing_country','PL'),
(38,2,'billing_phone','012345678'),
(39,2,'_order_count','0'),
(40,2,'_money_spent','0');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES
(1,'admin','$P$BX9ab/USwmFvw3tCW2U4BYXIahj4HQ.','admin','grola@seostudio.pl','http://wptests.lh','2022-09-21 14:37:56','',0,'admin'),
(2,'customer','$P$BL1xoeLlnXvOSbUFL7z9lm7/ZVe8Lc1','customer','customer@woo.local','','2022-09-21 14:38:19','1663771099:$P$BTAHjfnWNIXpJL7dJl8XZjLAPbg4VQ1',0,'customer');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_notes`
--

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_category_lookup`
--

DROP TABLE IF EXISTS `wp_wc_category_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_category_lookup`
--

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_coupon_lookup`
--

LOCK TABLES `wp_wc_order_coupon_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_stats`
--

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

LOCK TABLES `wp_wc_order_tax_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_attributes_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_attributes_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_attributes_lookup`
--

LOCK TABLES `wp_wc_product_attributes_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_download_directories`
--

DROP TABLE IF EXISTS `wp_wc_product_download_directories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`url_id`),
  KEY `url` (`url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_download_directories`
--

LOCK TABLES `wp_wc_product_download_directories` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_download_directories` DISABLE KEYS */;
INSERT INTO `wp_wc_product_download_directories` VALUES
(1,'file:///Users/sebastian.pisula/Projekty/flexibleshipping.com/wptests/wp-content/uploads/woocommerce_uploads/',1),
(2,'http://wptests.lh/wp-content/uploads/woocommerce_uploads/',1);
/*!40000 ALTER TABLE `wp_wc_product_download_directories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_product_meta_lookup` VALUES
(10,'product-100',0,0,100.0000,100.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
(11,'product-10',0,0,10.0000,10.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
(12,'product-9',0,0,9.0000,9.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
(13,'product-1',0,0,1.0000,1.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
(14,'product-09',0,0,0.9000,0.9000,0,NULL,'instock',0,0.00,0,'taxable',''),
(15,'product-009',0,0,0.0900,0.0900,0,NULL,'instock',0,0.00,0,'taxable',''),
(16,'product-01',0,0,0.1000,0.1000,0,NULL,'instock',0,0.00,0,'taxable',''),
(17,'product-001',0,0,0.0100,0.0100,0,NULL,'instock',0,0.00,0,'taxable',''),
(18,'product-0001',0,0,0.0010,0.0010,0,NULL,'instock',0,0.00,0,'taxable',''),
(19,'product-00001',0,0,0.0001,0.0001,0,NULL,'instock',0,0.00,0,'taxable','');
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_rate_limits`
--

DROP TABLE IF EXISTS `wp_wc_rate_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_limit_expiry` bigint(20) unsigned NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`rate_limit_id`),
  UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_rate_limits`
--

LOCK TABLES `wp_wc_rate_limits` WRITE;
/*!40000 ALTER TABLE `wp_wc_rate_limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_rate_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_reserved_stock`
--

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_reserved_stock`
--

LOCK TABLES `wp_wc_reserved_stock` WRITE;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` VALUES
(1,'Reduced rate','reduced-rate'),
(2,'Zero rate','zero-rate');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES
(1,'1','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:735:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"PL\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"PL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:18:\"grola@seostudio.pl\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}',1663943897);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_methods` VALUES
(0,1,'flat_rate',1,1);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_tax_rates` VALUES
(1,'PL','','23.0000','VAT',1,0,1,0,'');
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-21 16:38:47
