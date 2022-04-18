-- MySQL dump 10.11
--
-- Host: localhost    Database: mes_trace
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt-log

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
-- Current Database: `mes_trace`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mes_trace` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mes_trace`;

--
-- Table structure for table `ar_customer`
--

DROP TABLE IF EXISTS `ar_customer`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ar_customer` (
  `ar_customer_id` int(11) NOT NULL auto_increment,
  `customer_number` varchar(25) NOT NULL,
  `customer_name` varchar(60) NOT NULL,
  `customer_relationship` int(11) default NULL,
  `alt_name` varchar(50) character set utf8 collate utf8_unicode_ci default NULL,
  `supplier_id` int(11) default NULL,
  `customer_type` int(11) default '389',
  `customer_category` int(11) default NULL,
  `currency` int(11) default NULL,
  `payment_term_id` int(11) default NULL,
  `tax_country` int(11) default NULL,
  `tax_reg_no` varchar(40) default NULL,
  `tax_payer_id` varchar(40) default NULL,
  `ship_to_id` int(11) default NULL,
  `bill_to_id` int(11) default NULL,
  `customer_contact_id` int(11) default NULL,
  `customer_credit_class` int(11) default NULL,
  `profile_name` varchar(25) default NULL,
  `status` tinyint(1) default '1',
  `rev_enabled_cb` tinyint(1) default NULL,
  `rev_number` int(11) default NULL,
  `org_id` int(11) default NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`ar_customer_id`),
  UNIQUE KEY `customer_number` (`customer_number`),
  UNIQUE KEY `customer_name` (`customer_name`),
  KEY `status` (`status`),
  KEY `org_id` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ar_customer`
--

LOCK TABLES `ar_customer` WRITE;
/*!40000 ALTER TABLE `ar_customer` DISABLE KEYS */;
INSERT INTO `ar_customer` VALUES (1,'100001','3ucs',1206,NULL,NULL,389,1176,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,390,NULL,1,NULL,NULL,0,0,'2021-12-19 09:15:35',0,'2021-12-27 15:01:26');
/*!40000 ALTER TABLE `ar_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bc_label_rule`
--

DROP TABLE IF EXISTS `bc_label_rule`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bc_label_rule` (
  `bc_label_rule_id` int(12) unsigned NOT NULL auto_increment,
  `bc_label_rule_code` varchar(5) NOT NULL,
  `bc_label_rule_name` varchar(25) default NULL,
  `code_len` int(11) default NULL,
  `description` varchar(200) default NULL,
  `status` tinyint(1) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`bc_label_rule_id`),
  UNIQUE KEY `name` (`bc_label_rule_code`),
  KEY `bc_label_rule_name` (`bc_label_rule_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bc_label_rule`
--

LOCK TABLES `bc_label_rule` WRITE;
/*!40000 ALTER TABLE `bc_label_rule` DISABLE KEYS */;
INSERT INTO `bc_label_rule` VALUES (1,'afadf','fasfsaf',16,'',1,0,'2021-11-14 09:14:43',1,'2021-12-12 16:33:53'),(2,'10000','批次',8,'',1,1,'2021-12-19 11:04:18',1,'2021-12-23 11:18:06');
/*!40000 ALTER TABLE `bc_label_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bc_label_rule_detail`
--

DROP TABLE IF EXISTS `bc_label_rule_detail`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bc_label_rule_detail` (
  `bc_label_rule_detail_id` int(12) unsigned NOT NULL auto_increment,
  `bc_label_rule_id` int(12) unsigned NOT NULL,
  `bc_label_rule_detail_name` varchar(25) default NULL,
  `rule_type` varchar(10) default NULL,
  `start_pos` tinyint(4) default NULL,
  `data_len` tinyint(4) default NULL,
  `description` varchar(200) default NULL,
  `status` tinyint(1) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`bc_label_rule_detail_id`),
  KEY `bc_label_rule_name` (`bc_label_rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bc_label_rule_detail`
--

LOCK TABLES `bc_label_rule_detail` WRITE;
/*!40000 ALTER TABLE `bc_label_rule_detail` DISABLE KEYS */;
INSERT INTO `bc_label_rule_detail` VALUES (1,1,'ytulk','1',1,8,'',1,0,'2021-11-14 09:17:46',0,'2021-11-16 14:37:05'),(2,1,'jjjkk','2',9,8,'',1,0,'2021-11-14 09:18:05',1,'2021-12-12 16:09:11'),(3,2,'7','1',0,0,'',1,1,'2021-12-19 11:04:37',1,'2021-12-23 11:17:50'),(4,2,'8','2',1,8,'',1,1,'2021-12-19 11:04:55',1,'2021-12-23 11:18:00');
/*!40000 ALTER TABLE `bc_label_rule_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bom_department`
--

DROP TABLE IF EXISTS `bom_department`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bom_department` (
  `bom_department_id` int(10) unsigned NOT NULL auto_increment,
  `department` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `org_id` int(11) NOT NULL,
  `status` tinyint(1) default NULL,
  `location_id` int(11) default NULL,
  `department_type` int(11) default '361',
  `default_basis` varchar(50) default NULL,
  `absorption_ac_id` int(11) default NULL,
  `resource_assignment_id` int(11) default NULL,
  `ef_id` int(11) default NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`bom_department_id`),
  UNIQUE KEY `overhead` (`department`,`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bom_department`
--

LOCK TABLES `bom_department` WRITE;
/*!40000 ALTER TABLE `bom_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `bom_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `bom_department_user_v`
--

DROP TABLE IF EXISTS `bom_department_user_v`;
/*!50001 DROP VIEW IF EXISTS `bom_department_user_v`*/;
/*!50001 CREATE TABLE `bom_department_user_v` (
  `department` varchar(50),
  `standard_operation` varchar(50),
  `username` varchar(20),
  `active` int(1),
  `description` varchar(255),
  `org_id` int(11),
  `user_id` int(12) unsigned,
  `bd_status` tinyint(1),
  `bo_status` tinyint(1),
  `bu_active` tinyint(1),
  `bom_department_id` int(10) unsigned,
  `bom_standard_operation_id` int(12),
  `user_bom_department_id` int(12) unsigned
) */;

--
-- Table structure for table `bom_header`
--

DROP TABLE IF EXISTS `bom_header`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bom_header` (
  `bom_header_id` int(12) NOT NULL auto_increment,
  `item_id_m` int(12) NOT NULL,
  `alternate_bom` varchar(50) default NULL,
  `org_id` int(12) NOT NULL,
  `bom_revision` varchar(12) default NULL,
  `effective_date` date default NULL,
  `common_bom_item_id_m` int(12) default NULL,
  `common_bom_org_id` int(12) default NULL,
  `ef_id` int(12) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY  (`bom_header_id`),
  UNIQUE KEY `item_id` (`item_id_m`,`org_id`),
  UNIQUE KEY `item_id_2` (`item_id_m`,`alternate_bom`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bom_header`
--

LOCK TABLES `bom_header` WRITE;
/*!40000 ALTER TABLE `bom_header` DISABLE KEYS */;
INSERT INTO `bom_header` VALUES (1,1,NULL,0,'1',NULL,NULL,NULL,NULL,1,'2021-11-24 16:06:04',1,'2021-11-24 16:06:04'),(2,4,NULL,0,'1',NULL,NULL,NULL,NULL,1,'2021-11-28 15:31:27',1,'2021-11-28 15:31:27'),(3,7,NULL,0,'1',NULL,NULL,NULL,NULL,1,'2021-12-29 14:12:41',1,'2021-12-29 14:12:41');
/*!40000 ALTER TABLE `bom_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bom_line`
--

DROP TABLE IF EXISTS `bom_line`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bom_line` (
  `bom_line_id` int(11) NOT NULL auto_increment,
  `bom_header_id` int(10) unsigned NOT NULL,
  `bom_sequence` int(10) unsigned NOT NULL,
  `routing_sequence` int(11) default NULL,
  `routing_seq_num` int(11) default '0',
  `component_item_id_m` int(11) NOT NULL,
  `component_revision` varchar(10) default NULL,
  `usage_basis` int(50) default NULL,
  `usage_quantity` decimal(15,5) NOT NULL,
  `auto_request_material_cb` tinyint(1) default NULL,
  `effective_start_date` date default NULL,
  `effective_end_date` date default NULL,
  `eco_number` varchar(50) default NULL,
  `eco_implemented_cb` tinyint(1) default NULL,
  `planning_percentage` decimal(6,2) default NULL,
  `yield` decimal(6,6) default NULL,
  `include_in_cost_rollup_cb` tinyint(1) default NULL,
  `wip_supply_type` int(20) default NULL,
  `supply_sub_inventory` int(11) default NULL,
  `supply_locator` int(11) default '0',
  `ef_id` int(11) default NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY  (`bom_line_id`),
  UNIQUE KEY `bom_header_id` (`bom_header_id`,`bom_sequence`),
  UNIQUE KEY `bom_header_id_2` (`bom_header_id`,`routing_sequence`,`component_item_id_m`,`routing_seq_num`),
  KEY `bom_header_idx` (`bom_header_id`),
  KEY `component_item_id_m` (`component_item_id_m`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bom_line`
--

LOCK TABLES `bom_line` WRITE;
/*!40000 ALTER TABLE `bom_line` DISABLE KEYS */;
INSERT INTO `bom_line` VALUES (1,1,10,10,0,3,NULL,351,'10.00000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,'2021-11-24 16:06:20',1,'2021-11-24 16:06:20'),(2,1,20,10,0,5,NULL,351,'8.00000',NULL,NULL,NULL,NULL,NULL,NULL,'0.000000',NULL,NULL,NULL,0,NULL,1,'2021-11-24 16:06:35',1,'2022-04-18 15:05:25'),(3,1,30,10,0,2,NULL,351,'6.00000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,2,'2021-11-25 10:55:58',2,'2021-11-25 10:55:58'),(4,2,10,10,0,2,NULL,351,'3.00000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,'2021-11-28 15:31:46',1,'2021-11-28 15:31:46'),(5,2,20,20,0,3,NULL,351,'5.00000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,'2021-11-28 15:32:26',1,'2021-11-28 15:32:26');
/*!40000 ALTER TABLE `bom_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bom_routing_detail`
--

DROP TABLE IF EXISTS `bom_routing_detail`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bom_routing_detail` (
  `bom_routing_detail_id` int(12) NOT NULL auto_increment,
  `bom_routing_line_id` int(12) default NULL,
  `bom_routing_header_id` int(12) default NULL,
  `bom_standard_operation_id` int(12) default NULL,
  `resource_sequence` int(12) default NULL,
  `charge_basis` int(11) default NULL,
  `resource_id` int(12) default NULL,
  `resource_usage` decimal(20,5) default NULL,
  `resource_schedule` int(11) default NULL,
  `assigned_units` int(12) default NULL,
  `twenty_four_hr_cb` tinyint(1) default NULL,
  `charge_type` int(11) default NULL,
  `standard_rate_cb` tinyint(1) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY  (`bom_routing_detail_id`),
  UNIQUE KEY `bom_routing_line_id` (`bom_routing_line_id`,`bom_standard_operation_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bom_routing_detail`
--

LOCK TABLES `bom_routing_detail` WRITE;
/*!40000 ALTER TABLE `bom_routing_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `bom_routing_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bom_routing_header`
--

DROP TABLE IF EXISTS `bom_routing_header`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bom_routing_header` (
  `bom_routing_header_id` int(12) NOT NULL auto_increment,
  `item_id_m` int(12) NOT NULL,
  `alternate_routing` varchar(50) default NULL,
  `org_id` int(12) NOT NULL,
  `routing_revision` varchar(10) default NULL,
  `effective_date` date default NULL,
  `common_routing_item_id_m` int(12) default NULL,
  `description` int(12) default NULL,
  `completion_subinventory` int(12) default NULL,
  `completion_locator` int(12) default NULL,
  `ef_id` int(12) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY  (`bom_routing_header_id`),
  UNIQUE KEY `item_id` (`item_id_m`,`org_id`),
  UNIQUE KEY `item_id_2` (`item_id_m`,`alternate_routing`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bom_routing_header`
--

LOCK TABLES `bom_routing_header` WRITE;
/*!40000 ALTER TABLE `bom_routing_header` DISABLE KEYS */;
INSERT INTO `bom_routing_header` VALUES (1,1,NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-24 16:05:42',1,'2021-11-24 16:05:42'),(2,4,NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-28 15:30:55',1,'2021-11-28 15:30:55'),(3,7,NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-01-21 14:11:37',1,'2022-01-21 14:11:37');
/*!40000 ALTER TABLE `bom_routing_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bom_routing_line`
--

DROP TABLE IF EXISTS `bom_routing_line`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bom_routing_line` (
  `bom_routing_line_id` int(12) NOT NULL auto_increment,
  `bom_routing_header_id` int(12) NOT NULL,
  `routing_sequence` int(12) NOT NULL,
  `routing_seq_num` int(11) default '0',
  `standard_operation_id` int(12) default NULL,
  `department_id` int(12) NOT NULL,
  `description` varchar(255) default NULL,
  `lead_time_percentage` int(12) default NULL,
  `count_point_cb` tinyint(1) default NULL,
  `auto_charge_cb` tinyint(1) default NULL,
  `effective_start_date` date default NULL,
  `effective_end_date` date default NULL,
  `eco_number` varchar(50) default NULL,
  `eco_implemented_cb` tinyint(1) default NULL,
  `backflush_cb` tinyint(1) default NULL,
  `yield` decimal(6,6) default NULL,
  `include_in_rollup_cb` tinyint(1) default NULL,
  `minimum_transfer_quantity` int(12) default NULL,
  `referenced_cb` tinyint(1) default NULL,
  `cumm_yield` tinyint(1) default NULL,
  `ef_id` int(12) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY  (`bom_routing_line_id`),
  UNIQUE KEY `bom_header_id` (`bom_routing_header_id`,`routing_sequence`,`routing_seq_num`),
  UNIQUE KEY `bom_header_id_2` (`bom_routing_header_id`,`department_id`,`standard_operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bom_routing_line`
--

LOCK TABLES `bom_routing_line` WRITE;
/*!40000 ALTER TABLE `bom_routing_line` DISABLE KEYS */;
INSERT INTO `bom_routing_line` VALUES (1,1,10,0,1,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-24 16:05:47',1,'2021-11-24 16:05:47'),(2,1,20,0,2,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-24 16:05:57',1,'2021-11-24 16:05:57'),(3,2,10,0,1,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-28 15:31:01',1,'2021-11-28 15:31:01'),(4,2,20,0,2,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-28 15:31:11',1,'2021-11-28 15:31:11'),(5,2,30,0,3,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-28 15:31:19',1,'2021-11-28 15:31:19');
/*!40000 ALTER TABLE `bom_routing_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bom_standard_operation`
--

DROP TABLE IF EXISTS `bom_standard_operation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bom_standard_operation` (
  `bom_standard_operation_id` int(12) NOT NULL auto_increment,
  `standard_operation` varchar(50) NOT NULL,
  `org_id` int(12) NOT NULL,
  `department_id` int(12) NOT NULL,
  `description` varchar(255) NOT NULL,
  `count_point_cb` tinyint(1) default NULL,
  `auto_charge_cb` tinyint(1) default NULL,
  `backflush_cb` tinyint(1) default NULL,
  `status` tinyint(1) default NULL,
  `ef_id` int(12) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`bom_standard_operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bom_standard_operation`
--

LOCK TABLES `bom_standard_operation` WRITE;
/*!40000 ALTER TABLE `bom_standard_operation` DISABLE KEYS */;
INSERT INTO `bom_standard_operation` VALUES (1,'喷漆',0,0,'',NULL,NULL,NULL,1,NULL,1,'2021-11-24 10:51:33',1,'2022-04-18 15:03:55'),(2,'镭雕',0,0,'',NULL,NULL,NULL,1,NULL,1,'2021-11-24 11:36:00',1,'2022-04-18 15:04:07'),(3,'tyjkhk',0,0,'',NULL,NULL,NULL,1,NULL,1,'2021-11-24 11:37:59',1,'2021-11-24 11:37:59'),(4,'hjgjgj',0,0,'',NULL,NULL,NULL,1,NULL,2,'2021-11-24 11:46:25',2,'2021-11-24 11:46:25');
/*!40000 ALTER TABLE `bom_standard_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `category` (
  `category_id` int(12) NOT NULL auto_increment,
  `major_category_id` int(12) default NULL,
  `parent_id` int(12) default NULL,
  `category` varchar(50) NOT NULL default 'none',
  `category_type` int(11) default NULL,
  `content_relation` varchar(25) default NULL,
  `priority` int(5) default NULL,
  `description` varchar(512) default NULL,
  `image_file_id` int(12) default NULL,
  `long_description` text,
  `content_block_id` int(12) default NULL,
  `filter_catalog_id` int(12) default NULL,
  `primary_cb` float default '0',
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`category_id`),
  UNIQUE KEY `parent_id` (`parent_id`,`category`),
  KEY `category_type` (`category_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,NULL,0,'喷漆品',99,NULL,NULL,'',NULL,NULL,NULL,NULL,0,0,'2021-12-19 11:31:39',0,'2021-12-19 11:31:39');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_department`
--

DROP TABLE IF EXISTS `hr_department`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hr_department` (
  `dept_id` int(11) NOT NULL auto_increment,
  `dept_parent` int(11) default NULL,
  `org_id` int(11) default NULL,
  `department` varchar(20) default NULL,
  `description` varchar(255) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` timestamp NULL default NULL,
  PRIMARY KEY  (`dept_id`),
  KEY `dept_parent` (`dept_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `hr_department`
--

LOCK TABLES `hr_department` WRITE;
/*!40000 ALTER TABLE `hr_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_employee`
--

DROP TABLE IF EXISTS `hr_employee`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hr_employee` (
  `hr_employee_id` int(12) unsigned NOT NULL auto_increment,
  `employee_number` varchar(25) default NULL,
  `identification_id` varchar(50) default NULL,
  `start_date` date default NULL,
  `identification_type` int(11) NOT NULL,
  `citizen_number` varchar(255) default NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(30) default NULL,
  `email` varchar(100) default NULL,
  `language` varchar(20) default NULL,
  `title` varchar(25) default NULL,
  `gender` enum('MALE','FEMALE','UNKNOWN','') default NULL,
  `person_type` int(11) NOT NULL,
  `date_of_birth` date default NULL,
  `city_of_birth` varchar(50) default NULL,
  `country_of_birth` varchar(10) default NULL,
  `nationality` varchar(50) default NULL,
  `disability_code` varchar(25) default NULL,
  `marital_status` int(11) default NULL,
  `degree` varchar(25) default NULL,
  `highest_education` varchar(100) default NULL,
  `education_details` text,
  `no_of_children` int(5) default NULL,
  `home_address_id` int(12) default NULL,
  `home_address` varchar(255) default NULL,
  `permanent_address` varchar(255) default NULL,
  `permanent_address_id` int(12) default NULL,
  `mobile_number` varchar(25) default NULL,
  `home_phone_number` varchar(25) default NULL,
  `other_email` varchar(50) default NULL,
  `date_first_hired` date default NULL,
  `org_id` int(12) default NULL,
  `department_id` int(11) default NULL,
  `job_id` int(12) default NULL,
  `position_id` int(12) default NULL,
  `payroll_id` int(12) default NULL,
  `grade_id` int(12) default NULL,
  `location_id` int(12) default NULL,
  `job_type` varchar(25) default NULL,
  `supervisor_employee_id` int(12) default NULL,
  `probation_period_uom` int(11) default NULL,
  `probation_period` int(5) default NULL,
  `notice_period_uom` int(11) default NULL,
  `notice_period` int(5) default NULL,
  `revision_enabled` char(1) default 'N',
  `status` tinyint(1) default '1',
  `revision_number` int(11) default NULL,
  `work_policy_id` int(5) default NULL,
  `expense_ac_id` int(12) default NULL,
  `salary_ac_id` int(12) NOT NULL,
  `performance_id` int(12) default NULL,
  `vehicle_number` varchar(255) default NULL,
  `asset_numbers` varchar(255) default NULL,
  `contract_id` int(12) default NULL,
  `bank_account_id` int(12) default NULL,
  `tax_reg_number` varchar(25) default NULL,
  `social_ac_no` varchar(50) default NULL,
  `social_ac_no2` varchar(50) default NULL,
  `passport_number` varchar(255) default NULL,
  `ledger_id` int(12) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`hr_employee_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `identification_id` (`identification_id`),
  UNIQUE KEY `employee_number` (`employee_number`),
  KEY `first_name` (`first_name`,`last_name`),
  KEY `phone` (`phone`),
  KEY `org_id` (`org_id`,`department_id`),
  KEY `position_id` (`position_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `hr_employee`
--

LOCK TABLES `hr_employee` WRITE;
/*!40000 ALTER TABLE `hr_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `hr_employee_v`
--

DROP TABLE IF EXISTS `hr_employee_v`;
/*!50001 DROP VIEW IF EXISTS `hr_employee_v`*/;
/*!50001 CREATE TABLE `hr_employee_v` (
  `name` varchar(101),
  `employee_number` varchar(25),
  `first_name` varchar(50),
  `last_name` varchar(50),
  `username` varchar(20),
  `department` varchar(20),
  `supervisor` varchar(101),
  `identification_id` varchar(50),
  `emp_start_date` date,
  `citizen_number` varchar(255),
  `phone` varchar(30),
  `emp_email` varchar(100),
  `email` varchar(50),
  `status` tinyint(1),
  `gender` enum('MALE','FEMALE','UNKNOWN',''),
  `person_type` int(11),
  `hr_employee_id` int(12) unsigned,
  `org_id` int(12),
  `job_id` int(12),
  `user_id` int(12) unsigned,
  `department_id` int(11),
  `position_id` int(12),
  `expense_ac_id` int(12),
  `supervisor_employee_id` int(12)
) */;

--
-- Table structure for table `inv_lot_number`
--

DROP TABLE IF EXISTS `inv_lot_number`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `inv_lot_number` (
  `inv_lot_number_id` int(12) NOT NULL auto_increment,
  `lot_number` varchar(50) NOT NULL,
  `quantity` decimal(20,5) default NULL,
  `item_id_m` int(12) NOT NULL,
  `generation` varchar(25) NOT NULL,
  `org_id` int(12) NOT NULL,
  `lock_cb` tinyint(1) default NULL,
  `first_inv_transaction_id` int(12) default NULL,
  `reference_key_name` varchar(50) default NULL,
  `reference_key_value` varchar(25) default NULL,
  `origination_type` varchar(25) NOT NULL,
  `origination_date` date NOT NULL,
  `status` tinyint(1) default '1',
  `activation_date` date default NULL,
  `expiration_date` date default NULL,
  `supplier_site_id` int(12) default NULL,
  `po_header_id` int(12) default NULL,
  `supplier_sn` varchar(50) default NULL,
  `supplier_ln` varchar(50) default NULL,
  `expiration_action` varchar(50) default NULL,
  `item_revision` varchar(10) default NULL,
  `parent_lot_number_id` int(12) default NULL,
  `original_wip_wo_header_id` int(12) default NULL,
  `last_inv_transaction_id` int(12) default NULL,
  `country_of_origin` varchar(25) default NULL,
  `description` varchar(255) default NULL,
  `ar_customer_site_id` int(12) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY  (`inv_lot_number_id`),
  UNIQUE KEY `serial_number` (`lot_number`,`item_id_m`,`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `inv_lot_number`
--

LOCK TABLES `inv_lot_number` WRITE;
/*!40000 ALTER TABLE `inv_lot_number` DISABLE KEYS */;
INSERT INTO `inv_lot_number` VALUES (1,'12345678',NULL,1,'',0,0,0,NULL,NULL,'','0000-00-00',1,'2021-12-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-20 15:13:18',1,'2021-12-20 15:13:18'),(2,'21111608',NULL,3,'',0,0,0,NULL,NULL,'','0000-00-00',1,'2021-12-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-20 15:32:40',1,'2021-12-20 15:32:40'),(3,'21111608',NULL,0,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-20 16:11:57',1,'2021-12-20 16:11:57'),(4,'21111608',NULL,5,'',0,0,0,NULL,NULL,'','0000-00-00',1,'2021-12-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-20 16:12:38',1,'2021-12-20 16:12:38'),(5,'',NULL,0,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-21 13:57:19',1,'2021-12-21 13:57:19'),(6,'',NULL,1,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-21 13:58:46',1,'2021-12-21 13:58:46'),(7,'68768686',NULL,0,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-21 13:59:05',1,'2021-12-21 13:59:05'),(8,'687686869',NULL,0,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-21 13:59:12',1,'2021-12-21 13:59:12'),(9,'687686869',NULL,1,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-21 14:00:00',1,'2021-12-21 14:00:00'),(10,'68768686',NULL,1,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-21 14:00:21',1,'2021-12-21 14:00:21'),(11,'1234567890',NULL,1,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-21 14:01:23',1,'2021-12-21 14:01:23'),(12,'34567891',NULL,1,'',0,0,0,NULL,NULL,'','0000-00-00',1,'2021-12-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-21 14:04:45',1,'2021-12-21 14:04:45'),(13,'01234567',NULL,0,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-23 11:36:00',1,'2021-12-23 11:36:00'),(14,'01234568',NULL,6,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-23 11:38:07',1,'2021-12-23 11:38:07'),(15,'23456899',NULL,0,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-23 11:38:08',1,'2021-12-23 11:38:08'),(16,'21111629',NULL,1,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-12-29 16:57:42',1,'2021-12-29 16:57:42'),(17,'21111626',NULL,1,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-01-05 14:02:13',1,'2022-01-05 14:02:13'),(18,'2111162',NULL,1,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-01-13 10:40:05',1,'2022-01-13 10:40:05'),(19,'21111111',NULL,2,'',0,NULL,NULL,NULL,NULL,'','0000-00-00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-04-15 13:44:44',1,'2022-04-15 13:44:44'),(20,'67890123',NULL,5,'',0,0,0,NULL,NULL,'','0000-00-00',1,'2022-04-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-04-18 11:04:14',1,'2022-04-18 11:04:14'),(21,'23456780',NULL,1,'',0,0,0,NULL,NULL,'','0000-00-00',1,'2022-04-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-04-18 11:07:45',1,'2022-04-18 11:07:45');
/*!40000 ALTER TABLE `inv_lot_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_lot_onhand`
--

DROP TABLE IF EXISTS `inv_lot_onhand`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `inv_lot_onhand` (
  `inv_lot_onhand_id` int(11) NOT NULL auto_increment,
  `onhand_id` int(11) NOT NULL,
  `inv_lot_number_id` int(11) NOT NULL,
  `lot_quantity` decimal(20,5) NOT NULL default '0.00000',
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`inv_lot_onhand_id`),
  UNIQUE KEY `onhand_id` (`onhand_id`,`inv_lot_number_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `inv_lot_onhand`
--

LOCK TABLES `inv_lot_onhand` WRITE;
/*!40000 ALTER TABLE `inv_lot_onhand` DISABLE KEYS */;
INSERT INTO `inv_lot_onhand` VALUES (1,1,1,'0.00000',1,'2021-12-20 15:14:02',1,'2021-12-20 15:14:27'),(2,2,2,'0.00000',1,'2021-12-20 15:35:24',1,'2021-12-20 16:09:32'),(3,3,4,'50.00000',1,'2021-12-20 16:12:46',1,'2022-01-21 13:54:15'),(4,1,12,'7890.00000',1,'2021-12-21 14:05:20',1,'2021-12-21 14:05:20'),(5,3,20,'100.00000',1,'2022-04-18 11:05:08',1,'2022-04-18 11:05:08'),(6,1,21,'40.00000',1,'2022-04-18 11:08:50',1,'2022-04-18 11:12:12');
/*!40000 ALTER TABLE `inv_lot_onhand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_lot_transaction`
--

DROP TABLE IF EXISTS `inv_lot_transaction`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `inv_lot_transaction` (
  `inv_lot_transaction_id` int(12) NOT NULL auto_increment,
  `inv_transaction_id` int(12) NOT NULL,
  `inv_lot_number_id` int(12) NOT NULL,
  `lot_quantity` decimal(20,5) NOT NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`inv_lot_transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `inv_lot_transaction`
--

LOCK TABLES `inv_lot_transaction` WRITE;
/*!40000 ALTER TABLE `inv_lot_transaction` DISABLE KEYS */;
INSERT INTO `inv_lot_transaction` VALUES (1,1,1,'100.00000',1,'2021-12-20 15:14:02',1,'2021-12-20 15:14:02'),(2,2,1,'100.00000',1,'2021-12-20 15:14:27',1,'2021-12-20 15:14:27'),(3,3,2,'100.00000',1,'2021-12-20 15:35:24',1,'2021-12-20 15:35:24'),(4,4,2,'100.00000',1,'2021-12-20 15:35:43',1,'2021-12-20 15:35:43'),(5,5,2,'100.00000',1,'2021-12-20 16:09:15',1,'2021-12-20 16:09:15'),(6,6,2,'100.00000',1,'2021-12-20 16:09:32',1,'2021-12-20 16:09:32'),(7,7,4,'100.00000',1,'2021-12-20 16:12:46',1,'2021-12-20 16:12:46'),(8,8,4,'100.00000',1,'2021-12-20 16:13:03',1,'2021-12-20 16:13:03'),(9,9,12,'7890.00000',1,'2021-12-21 14:05:20',1,'2021-12-21 14:05:20'),(10,10,4,'50.00000',1,'2022-01-21 13:54:15',1,'2022-01-21 13:54:15'),(11,11,20,'100.00000',1,'2022-04-18 11:05:08',1,'2022-04-18 11:05:08'),(12,12,21,'100.00000',1,'2022-04-18 11:08:50',1,'2022-04-18 11:08:50'),(13,13,21,'60.00000',1,'2022-04-18 11:12:12',1,'2022-04-18 11:12:12');
/*!40000 ALTER TABLE `inv_lot_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_transaction`
--

DROP TABLE IF EXISTS `inv_transaction`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `inv_transaction` (
  `inv_transaction_id` bigint(20) NOT NULL auto_increment,
  `transaction_type_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL default '0',
  `status` tinyint(1) default '1',
  `ir_line_id` int(11) default '0' COMMENT 'issue or receipt line id',
  `item_number` varchar(255) default NULL,
  `revision_name` varchar(10) default NULL,
  `item_id_m` int(11) NOT NULL default '0',
  `uom_id` int(11) default '0',
  `lot_number_id` int(11) default '0',
  `logical_transaction_cb` tinyint(1) default NULL,
  `document_type` varchar(25) default NULL,
  `document_number` varchar(25) default NULL,
  `document_id` int(11) default '0',
  `wip_wo_bom_id` int(11) default '0',
  `am_wo_bom_id` int(11) default '0',
  `po_header_id` int(11) default '0',
  `po_line_id` int(11) default '0',
  `po_detail_id` int(11) default '0',
  `sd_so_line_id` int(11) default '0',
  `reason` varchar(25) default NULL,
  `reference_type` varchar(50) default NULL,
  `reference_key_name` varchar(50) default NULL,
  `reference_key_value` bigint(20) default '0',
  `description` varchar(255) default NULL,
  `from_org_id` int(11) default '0',
  `from_subinventory_id` int(11) default '0',
  `from_locator_id` int(11) default '0',
  `quantity` double default '0',
  `from_account_id` int(11) default '0',
  `to_org_id` int(11) default '0',
  `to_subinventory_id` int(11) default '0',
  `to_locator_id` int(11) default '0',
  `to_account_id` int(11) default '0',
  `unit_cost` double default '0',
  `costed_amount` double default '0',
  `gl_journal_header_id` int(11) default '0',
  `bom_config_header_id` int(11) default '0',
  `pm_batch_line_id` int(11) default '0',
  `pm_batch_header_id` int(11) default '0',
  `pm_batch_ingredient_id` int(11) default '0',
  `pm_batch_byproduct_id` int(11) default '0',
  `transaction_rev_enabled_cb` tinyint(1) default NULL,
  `rev_start_number` varchar(25) default NULL,
  `po_requisition_detail_id` int(11) default '0',
  `created_by` int(11) NOT NULL default '0',
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL default '0',
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`inv_transaction_id`),
  KEY `transaction_type_id` (`transaction_type_id`),
  KEY `item_id_m` (`org_id`,`item_id_m`),
  KEY `creation_date` (`creation_date`),
  KEY `reference_key` (`reference_key_name`,`reference_key_value`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `inv_transaction`
--

LOCK TABLES `inv_transaction` WRITE;
/*!40000 ALTER TABLE `inv_transaction` DISABLE KEYS */;
INSERT INTO `inv_transaction` VALUES (1,11,0,1,0,'jhhg',NULL,1,38,1,NULL,'wo','WO21121900001',0,0,0,0,0,0,0,NULL,'table','wip_wo_header',1,'',0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2021-12-20 15:14:02',1,'2021-12-20 15:14:02'),(2,15,0,1,0,'jhhg',NULL,1,38,1,NULL,'so','so00001',0,0,0,0,0,0,0,NULL,'','',0,'',0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2021-12-20 15:14:27',1,'2021-12-20 15:14:27'),(3,5,0,1,0,'tytr',NULL,3,38,2,NULL,'po','po0001',0,0,0,0,0,0,0,NULL,'','',0,'',0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2021-12-20 15:35:24',1,'2021-12-20 15:35:24'),(4,6,0,1,0,'tytr',NULL,3,38,2,NULL,'wip','WO21121900001',0,0,0,0,0,0,0,NULL,'table','wip_wo_bom',1,'',0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2021-12-20 15:35:43',1,'2021-12-20 15:35:43'),(5,5,0,1,0,'tytr',NULL,3,38,2,NULL,'po','po0001',0,0,0,0,0,0,0,NULL,'','',0,'',0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2021-12-20 16:09:15',1,'2021-12-20 16:09:15'),(6,6,0,1,0,'tytr',NULL,3,38,2,NULL,'wip','WO21121900001',0,0,0,0,0,0,0,NULL,'table','wip_wo_bom',1,'',0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2021-12-20 16:09:32',1,'2021-12-20 16:09:32'),(7,5,0,1,0,'rtu',NULL,5,38,4,NULL,'po','po0001',0,0,0,0,0,0,0,NULL,'','',0,'',0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2021-12-20 16:12:46',1,'2021-12-20 16:12:46'),(8,6,0,1,0,'rtu',NULL,5,38,4,NULL,'wip','WO21121900001',0,0,0,0,0,0,0,NULL,'table','wip_wo_bom',2,'',0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2021-12-20 16:13:03',1,'2021-12-20 16:13:03'),(9,11,0,1,0,'jhhg',NULL,1,38,12,NULL,'wo','WO21121900001',0,0,0,0,0,0,0,NULL,'table','wip_wo_header',1,'',0,0,0,7890,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2021-12-21 14:05:20',1,'2021-12-21 14:05:20'),(10,5,0,1,0,'rtu',NULL,5,38,4,NULL,'po','po0001',0,0,0,0,0,0,0,NULL,'','',0,'',0,0,0,50,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2022-01-21 13:54:15',1,'2022-01-21 13:54:15'),(11,5,0,1,0,'rtu',NULL,5,38,20,NULL,'po','po0002',0,0,0,0,0,0,0,NULL,'','',0,'',0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2022-04-18 11:05:08',1,'2022-04-18 11:05:08'),(12,11,0,1,0,'jhhg',NULL,1,38,21,NULL,'wo','WO21121900001',0,0,0,0,0,0,0,NULL,'table','wip_wo_header',1,'',0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2022-04-18 11:08:50',1,'2022-04-18 11:08:50'),(13,15,0,1,0,'jhhg',NULL,1,38,21,NULL,'so','so00002',0,0,0,0,0,0,0,NULL,'','',0,'',0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,0,1,'2022-04-18 11:12:12',1,'2022-04-18 11:12:12');
/*!40000 ALTER TABLE `inv_transaction` ENABLE KEYS */;
UNLOCK TABLES;

/*!50003 SET @SAVE_SQL_MODE=@@SQL_MODE*/;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`i3u`@`localhost` */ /*!50003 TRIGGER `invTransInsert` BEFORE INSERT ON `inv_transaction` FOR EACH ROW BEGIN
SET @act=0;
SELECT transaction_action INTO @act FROM transaction_type WHERE transaction_type_id=NEW.transaction_type_id;
IF @act=4 THEN
SET @act=IF(NEW.transaction_type_id=16,1,27);
END IF;
set @uom_item=null;
select uom_id into @uom_item from item where (item_id_m,org_id)=(new.item_id_m,new.org_id);
select if(@uom_item=new.uom_id,1,ifnull(GetUomRelation(new.uom_id,@uom_item),1)) into @uom_conv;
SET @loops=IF(NEW.transaction_type_id IN (3,18,19),2,1);
WHILE @loops>0 DO
SET @loops=@loops-1;
SET @org_id=new.org_id;
IF @loops AND NEW.transaction_type_id IN (3,18,19) THEN
SET @act=1;
SET @subinventory_id=new.from_subinventory_id;
SET @locator_id=new.from_locator_id;
ELSE
IF NEW.transaction_type_id IN (3,18,19) THEN
SET @act=27;
END IF;
SET @subinventory_id=new.to_subinventory_id;
SET @locator_id=new.to_locator_id;
IF @act=1 THEN
SET @subinventory_id=new.from_subinventory_id;
SET @locator_id=new.from_locator_id;
END IF;
END IF;
IF @locator_id IS NULL THEN
SET @locator_id=0;
END IF;
BEGIN
SET @onhandid=NULL;
SELECT onhand_id INTO @onhandid FROM onhand WHERE item_id_m=NEW.item_id_m AND org_id=@org_id AND subinventory_id=@subinventory_id AND IF(@locator_id=0,1,locator_id=@locator_id) LIMIT 0,1;
IF @act=1 THEN
BEGIN
IF @onhandid IS NOT NULL THEN
UPDATE onhand SET onhand=onhand-NEW.quantity*@uom_conv,last_update_by=new.last_update_by,last_update_date=NOW() WHERE onhand_id=@onhandid;
ELSE
INSERT INTO onhand (item_id_m,uom_id,revision_name,org_id,subinventory_id,locator_id,onhand,created_by,creation_date,last_update_by,last_update_date) VALUE(new.item_id_m,@uom_item,new.revision_name,@org_id,@subinventory_id,@locator_id,-new.quantity*@uom_conv,new.last_update_by,NOW(),new.last_update_by,NOW());
SELECT LAST_INSERT_ID() INTO @onhandid;
END IF;
END;
ELSE IF @act=27 THEN
BEGIN
IF @onhandid IS NULL THEN
INSERT INTO onhand (item_id_m,uom_id,revision_name,org_id,subinventory_id,locator_id,onhand,created_by,creation_date,last_update_by,last_update_date) VALUE(new.item_id_m,@uom_item,new.revision_name,@org_id,@subinventory_id,@locator_id,new.quantity*@uom_conv,new.last_update_by,NOW(),new.last_update_by,NOW());
SELECT LAST_INSERT_ID() INTO @onhandid;
ELSE
UPDATE onhand SET onhand=onhand+NEW.quantity*@uom_conv,last_update_by=new.last_update_by,last_update_date=NOW() WHERE onhand_id=@onhandid;
END IF;
END;
END IF;
END IF;
IF new.lot_number_id!=0 THEN
CALL inv_lot_onhand_updater(@act,new.lot_number_id,NEW.inv_transaction_id,new.quantity*@uom_conv,@onhandid,new.last_update_by);
ELSE IF new.reference_key_name='sd_delivery_line' THEN
CALL inv_dlv_issue_onhand(@act,NEW.inv_transaction_id,@onhandid,new.last_update_by,new.reference_key_value);
END IF;
END IF;
END;
END WHILE;
    END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`i3u`@`localhost` */ /*!50003 TRIGGER `inv_transactionInsert` AFTER INSERT ON `inv_transaction` FOR EACH ROW BEGIN
IF new.reference_key_name='po_line' THEN
BEGIN
SET @orp=0;
SET @qtyr=NULL;
SET @qtya=NULL;
SET @qtyp=NULL;
SELECT IFNULL(over_receipt_percentage,0) INTO @orp FROM item WHERE (item_id_m,org_id)=(new.item_id_m,new.to_org_id);
SELECT received_quantity,accepted_quantity,line_quantity INTO @qtyr,@qtya,@qtyp FROM po_line WHERE po_line_id=new.reference_key_value;
IF new.transaction_type_id=21 THEN
UPDATE po_line SET accepted_quantity=accepted_quantity-new.quantity,last_update_date=NOW() WHERE po_line_id=new.reference_key_value;
ELSEIF new.transaction_type_id=5 THEN
IF (@qtyr+new.quantity-@qtyp)/@qtyp>@orp THEN
INSERT INTO xbs.xbs_log (log_level,task,program,msg,user_id,org_id,dt)VALUES('info','po_inv','Accept',CONCAT('Item ',new.item_id_m,PO_INV_OVER_ACCEPT,'>',@orp),new.created_by,new.org_id,NOW());
END IF;
UPDATE po_line SET received_quantity=received_quantity+new.quantity,accepted_quantity=accepted_quantity+new.quantity,last_update_date=NOW() WHERE po_line_id=new.reference_key_value;
ELSEIF new.transaction_type_id=4 THEN
IF (@qtyr+new.quantity)/@qtyp>@orp THEN
INSERT INTO xbs.xbs_log (log_level,task,program,msg,user_id,org_id,dt)VALUES('info','po_inv','Receipt',CONCAT('Item ',new.item_id_m,PO_INV_OVER_RECEIPT,'>',@orp),new.created_by,new.org_id,NOW());
END IF;
UPDATE po_line SET received_quantity=received_quantity+new.quantity,last_update_date=NOW() WHERE po_line_id=new.reference_key_value;
END IF;
END;
ELSEIF new.reference_key_name='inv_receipt_line' THEN
IF new.transaction_type_id=5 THEN
UPDATE po_line SET accepted_quantity=accepted_quantity+new.quantity,last_update_date=NOW() WHERE po_line_id=(SELECT reference_key_value FROM inv_receipt_line WHERE inv_receipt_line_id=new.reference_key_value AND reference_key_name='po_line');
END IF;
ELSEIF new.reference_key_name='wip_wo_bom' THEN
IF new.transaction_type_id IN ('6','9') THEN
UPDATE wip_wo_bom SET issued_quantity=issued_quantity+new.quantity WHERE wip_wo_bom_id=new.reference_key_value;
ELSEIF new.transaction_type_id IN ('7','8') THEN
UPDATE wip_wo_bom SET issued_quantity=issued_quantity-new.quantity WHERE wip_wo_bom_id=new.reference_key_value;
END IF;
ELSEIF new.reference_key_name='wip_wo_header' THEN
IF new.transaction_type_id IN ('10','11') THEN
UPDATE wip_wo_header SET completed_quantity=completed_quantity+new.quantity WHERE wip_wo_header_id=new.reference_key_value;
UPDATE wip_wo_header SET wo_status=373 WHERE wip_wo_header_id=new.reference_key_value AND wo_status=370 AND completed_quantity>=quantity;
END IF;
ELSEIF new.reference_key_name='wip_move_transaction' THEN
IF new.transaction_type_id IN ('10','11') THEN
SET @woid_wmt=NULL;
SELECT wip_wo_header_id INTO @woid_wmt FROM wip_move_transaction WHERE wip_move_transaction_id=new.reference_key_value;
UPDATE wip_wo_header SET completed_quantity=completed_quantity+new.quantity WHERE wip_wo_header_id=@woid_wmt;
UPDATE wip_wo_header SET wo_status=373 WHERE wip_wo_header_id=@woid_wmt AND wo_status=370 AND completed_quantity>=quantity;
END IF;
ELSEIF new.reference_key_name='sd_delivery_line' THEN
IF new.transaction_type_id=14 THEN
UPDATE sd_delivery_line SET delivery_status=536 WHERE sd_delivery_line_id=new.reference_key_value AND delivery_status=604 AND shipped_quantity=(SELECT SUM(transaction_quantity) FROM inv_issue_line WHERE reference_key_name='sd_delivery_line' AND reference_key_value=new.reference_key_value AND STATUS=1521);
END IF;
END IF;
    END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@SAVE_SQL_MODE*/;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `item` (
  `item_id` int(11) NOT NULL auto_increment,
  `item_id_m` int(11) default NULL,
  `org_id` int(11) NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `item_name` varchar(50) default NULL,
  `item_specification` varchar(50) default NULL,
  `item_description` varchar(255) default NULL,
  `bc_label` varchar(50) default NULL,
  `pallet_specification` int(11) default NULL,
  `image_file` varchar(100) default NULL,
  `product_line` varchar(20) default NULL,
  `product_line_percentage` tinyint(4) default '0',
  `locator_control` int(11) default NULL,
  `allow_negative_balance_cb` tinyint(1) default '1',
  `long_description` text,
  `uom_id` int(11) NOT NULL,
  `origination_type` varchar(25) default NULL,
  `origination_date` date default NULL,
  `item_type` int(20) default NULL,
  `item_status` int(11) NOT NULL default '277',
  `item_category` int(11) default NULL,
  `inventory_item_cb` tinyint(1) default '1',
  `stockable_cb` tinyint(1) default '1',
  `transactable_cb` tinyint(1) default '1',
  `reservable_cb` tinyint(1) default '0',
  `cycle_count_enabled_cb` tinyint(1) default '1',
  `kit_cb` tinyint(1) default '0',
  `bom_enabled_cb` tinyint(1) default '0',
  `bom_type` int(11) default '0',
  `costing_enabled_cb` tinyint(1) default '1',
  `inventory_asset_cb` tinyint(1) default '0',
  `default_cost_group` varchar(15) default NULL,
  `material_ac_id` int(11) default '0',
  `material_oh_ac_id` int(11) default '0',
  `overhead_ac_id` int(11) default '0',
  `resource_ac_id` int(11) default '0',
  `osp_ac_id` int(11) default '0',
  `expense_ac_id` int(11) default '0',
  `lot_uniqueness` varchar(25) default NULL,
  `lot_generation` varchar(25) default NULL,
  `lot_prefix` varchar(25) default NULL,
  `lot_starting_number` int(11) default '1',
  `serial_uniqueness` varchar(25) default NULL,
  `serial_generation` varchar(25) default NULL,
  `serial_prefix` varchar(25) default NULL,
  `serial_starting_number` int(11) default '1',
  `purchased_cb` tinyint(1) default '1',
  `use_asl_cb` tinyint(1) default '1',
  `invoice_matching` int(11) default '302',
  `default_buyer` int(11) default NULL,
  `list_price` decimal(15,5) default '0.00000',
  `contract_item_type` varchar(25) default NULL,
  `duration_uom_id` int(11) default '0',
  `receipt_sub_inventory` int(11) default '1',
  `over_receipt_percentage` tinyint(4) default '0',
  `over_receipt_action` varchar(20) default NULL,
  `receipt_days_early` int(10) default '0',
  `receipt_days_late` int(10) default '0',
  `receipt_day_action` varchar(20) default NULL,
  `receipt_routing` int(11) default '299',
  `weight_uom_id` int(11) default NULL,
  `weight` int(11) default '0',
  `volume_uom_id` int(11) default NULL,
  `volume` int(11) default '0',
  `dimension_uom_id` int(11) default NULL,
  `length` int(11) default '0',
  `width` int(11) default '0',
  `height` int(11) default '0',
  `equipment_cb` tinyint(1) default '0',
  `electronic_format_cb` tinyint(1) default '0',
  `planning_method` int(11) default NULL,
  `planner` int(11) default NULL,
  `make_buy` enum('Make','Buy') default 'Buy',
  `wip_supply_subinventory` int(11) default '1',
  `wip_supply_locator` int(11) default NULL,
  `fix_order_quantity` int(11) default '0',
  `saftey_stock_days` int(11) default '0',
  `saftey_stock_percentage` tinyint(4) default '0',
  `saftey_stock_quantity` int(11) default '0',
  `fix_days_supply` int(11) default '0',
  `fix_lot_multiplier` int(11) default '0',
  `minimum_order_quantity` int(11) default '0',
  `maximum_order_quantity` int(11) default '0',
  `minmax_min_quantity` decimal(20,5) default '0.00000',
  `minmax_max_quantity` decimal(20,5) default '0.00000',
  `minmax_multibin_number` int(5) default '0',
  `minmax_multibin_size` decimal(20,5) default '0.00000',
  `forecast_method` int(11) default NULL,
  `forecast_control` varchar(20) default NULL,
  `demand_timefence` int(11) default '0',
  `planning_timefence` int(11) default '0',
  `release_timefence` int(11) default '0',
  `pre_processing_lt` int(11) default '0',
  `post_processing_lt` int(11) default '0',
  `processing_lt` int(11) default '0',
  `cumulative_mfg_lt` int(11) default '0',
  `cumulative_total_lt` int(11) default '0',
  `lt_lot_size` int(11) default '0',
  `build_in_wip_cb` tinyint(1) default '1',
  `wip_supply_type` int(11) default '337',
  `customer_ordered_cb` tinyint(1) default '1',
  `internal_ordered_cb` tinyint(1) default '1',
  `shippable_cb` tinyint(1) default '1',
  `returnable_cb` tinyint(1) default '1',
  `invoiceable_cb` tinyint(1) default '1',
  `billing_type` int(11) default NULL,
  `service_request_cb` tinyint(1) default '0',
  `atp` int(11) default '0',
  `picking_rule` varchar(20) default NULL,
  `sourcing_rule_id` int(11) default NULL,
  `sales_ac_id` int(11) default '0',
  `cogs_ac_id` int(11) default '0',
  `deffered_cogs_ac_id` int(11) default '0',
  `ip_tax_class` int(11) default '0',
  `op_tax_class` int(11) default '0',
  `ap_payment_term` int(11) default '0',
  `ar_payment_term` int(11) default '0',
  `duration` decimal(15,5) default '0.00000',
  `rev_enabled_cb` tinyint(1) default '0',
  `rounding_option` int(11) default '595',
  `onhand_with_rev_cb` tinyint(1) default '0',
  `item_rev_number` int(11) default NULL,
  `am_asset_type` varchar(25) default NULL,
  `am_activity_cause` int(11) default NULL,
  `am_activity_type` int(11) default NULL,
  `am_activity_source` int(11) default NULL,
  `discount_class` int(11) default '0',
  `demand_class` varchar(25) default NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`item_id`),
  UNIQUE KEY `item_number_2` (`item_number`,`org_id`),
  UNIQUE KEY `item_id_m` (`item_id_m`,`org_id`),
  KEY `item_type` (`item_type`),
  KEY `item_category` (`item_category`),
  KEY `item_number` (`item_number`),
  KEY `inventory_item_cb` (`inventory_item_cb`),
  KEY `item_status` (`item_status`),
  KEY `item_name` (`item_name`),
  KEY `item_specification` (`item_specification`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,1,0,'DHX-17A3-KB-2-2-BK001-K1-0','黑色喷漆件','jhhh',NULL,'34141414',1,NULL,NULL,0,NULL,1,'DHX-17A3-KB-2323',38,NULL,NULL,NULL,277,1,1,1,1,0,1,0,0,0,1,0,NULL,0,0,0,0,0,0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,302,1,'0.00000',NULL,0,1,0,NULL,0,0,NULL,299,NULL,0,NULL,0,NULL,0,0,0,0,0,NULL,NULL,'Make',1,NULL,0,0,0,0,0,0,0,0,'0.00000','0.00000',0,'0.00000',NULL,NULL,0,0,0,0,0,0,0,0,0,1,337,1,1,1,1,1,NULL,0,0,NULL,NULL,0,0,0,0,0,0,0,'0.00000',0,595,0,NULL,NULL,NULL,NULL,NULL,0,NULL,2,'2021-11-24 10:36:21',1,'2022-04-18 15:07:10'),(2,2,0,'CHX-AKZ-A-0021W-001-A1','主剂','6788',NULL,'78865544',1,NULL,NULL,0,NULL,1,'',38,NULL,NULL,NULL,277,0,1,1,1,0,1,0,0,0,1,0,NULL,0,0,0,0,0,0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,302,0,'0.00000',NULL,0,1,0,NULL,0,0,NULL,299,NULL,0,NULL,0,NULL,0,0,0,0,0,NULL,NULL,'Buy',1,NULL,0,0,0,0,0,0,0,0,'0.00000','0.00000',0,'0.00000',NULL,NULL,0,0,0,0,0,0,0,0,0,1,337,1,1,1,1,1,NULL,0,0,NULL,NULL,0,0,0,0,0,0,0,'0.00000',0,595,0,NULL,NULL,NULL,NULL,NULL,0,NULL,2,'2021-11-24 10:37:35',1,'2022-04-18 14:57:58'),(3,3,0,'CHX-AKZ-C-10368-001-A1','固化剂','5665',NULL,'32212332',1,NULL,NULL,0,NULL,1,'',38,NULL,NULL,NULL,277,0,1,1,1,0,1,0,0,0,1,0,NULL,0,0,0,0,0,0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,302,0,'0.00000',NULL,0,1,0,NULL,0,0,NULL,299,NULL,0,NULL,0,NULL,0,0,0,0,0,NULL,NULL,'Buy',1,NULL,0,0,0,0,0,0,0,0,'0.00000','0.00000',0,'0.00000',NULL,NULL,0,0,0,0,0,0,0,0,0,1,337,1,1,1,1,1,NULL,0,0,NULL,NULL,0,0,0,0,0,0,0,'0.00000',0,595,0,NULL,NULL,NULL,NULL,NULL,0,NULL,2,'2021-11-24 10:46:55',1,'2022-04-18 14:58:45'),(4,4,0,'CHX-17A3-KB-2-2-BK001-K1-1','567ytu','hjgjg',NULL,'87654321',1,NULL,NULL,0,NULL,1,'',38,NULL,NULL,NULL,277,1,1,1,1,0,1,0,0,0,1,0,NULL,0,0,0,0,0,0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,302,0,'0.00000',NULL,0,1,0,NULL,0,0,NULL,299,NULL,0,NULL,0,NULL,0,0,0,0,0,NULL,NULL,'Make',1,NULL,0,0,0,0,0,0,0,0,'0.00000','0.00000',0,'0.00000',NULL,NULL,0,0,0,0,0,0,0,0,0,1,337,1,1,1,1,1,NULL,0,0,NULL,NULL,0,0,0,0,0,0,0,'0.00000',0,595,0,NULL,NULL,NULL,NULL,NULL,0,NULL,2,'2021-11-24 10:48:24',1,'2022-04-18 15:00:25'),(5,5,0,'GXG-AKZ-B-0188G-001-A1','稀释剂','ytt',NULL,'45342312',1,NULL,NULL,0,NULL,1,'',38,NULL,NULL,NULL,277,0,1,1,1,0,1,0,0,0,1,0,NULL,0,0,0,0,0,0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,302,0,'0.00000',NULL,0,1,0,NULL,0,0,NULL,299,NULL,0,NULL,0,NULL,0,0,0,0,0,NULL,NULL,'Buy',1,NULL,0,0,0,0,0,0,0,0,'0.00000','0.00000',0,'0.00000',NULL,NULL,0,0,0,0,0,0,0,0,0,1,337,1,1,1,1,1,NULL,0,0,NULL,NULL,0,0,0,0,0,0,0,'0.00000',0,595,0,NULL,NULL,NULL,NULL,NULL,0,NULL,2,'2021-11-24 11:45:21',1,'2022-04-18 14:59:15'),(6,6,0,'CHX-AKZ-A-0021W-001-C1','着色剂','fafas',NULL,'66688666',1,NULL,NULL,0,NULL,1,'',38,NULL,NULL,NULL,277,0,1,1,1,0,1,0,0,0,1,0,NULL,0,0,0,0,0,0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,302,0,'0.00000',NULL,0,1,0,NULL,0,0,NULL,299,NULL,0,NULL,0,NULL,0,0,0,0,0,NULL,NULL,'Buy',1,NULL,0,0,0,0,0,0,0,0,'0.00000','0.00000',0,'0.00000',NULL,NULL,0,0,0,0,0,0,0,0,0,1,337,1,1,1,1,1,NULL,0,0,NULL,NULL,0,0,0,0,0,0,0,'0.00000',0,595,0,NULL,NULL,NULL,NULL,NULL,0,NULL,1,'2021-11-28 15:30:14',1,'2022-04-18 15:02:42'),(7,7,0,'CHX-17A3-KB-2-2-BK001-K1-2','erqerqrqr','45',NULL,'98987635',1,NULL,NULL,0,NULL,1,'',38,NULL,NULL,NULL,277,1,1,1,1,0,1,0,0,0,1,0,NULL,0,0,0,0,0,0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,302,0,'0.00000',NULL,0,1,0,NULL,0,0,NULL,299,NULL,0,NULL,0,NULL,0,0,0,0,0,NULL,NULL,'Make',1,NULL,0,0,0,0,0,0,0,0,'0.00000','0.00000',0,'0.00000',NULL,NULL,0,0,0,0,0,0,0,0,0,1,337,1,1,1,1,1,NULL,0,0,NULL,NULL,0,0,0,0,0,0,0,'0.00000',0,595,0,NULL,NULL,NULL,NULL,NULL,0,NULL,1,'2021-12-29 14:09:12',1,'2022-04-18 15:02:58'),(8,8,0,'CHX-17A3-KB-2-2-BK001-K1-3','edfdafafa','safafa',NULL,'342423424',1,NULL,NULL,0,NULL,1,'435353452',38,NULL,NULL,NULL,277,1,1,1,1,0,1,0,0,0,1,0,NULL,0,0,0,0,0,0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,302,1,'0.00000',NULL,0,1,0,NULL,0,0,NULL,299,NULL,0,NULL,0,NULL,0,0,0,0,0,NULL,NULL,'Make',1,NULL,0,0,0,0,0,0,0,0,'0.00000','0.00000',0,'0.00000',NULL,NULL,0,0,0,0,0,0,0,0,0,1,337,1,1,1,1,1,NULL,0,0,NULL,NULL,0,0,0,0,0,0,0,'0.00000',0,595,0,NULL,NULL,NULL,NULL,NULL,0,NULL,1,'2022-01-22 16:24:46',1,'2022-04-18 15:01:00');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locator`
--

DROP TABLE IF EXISTS `locator`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `locator` (
  `locator_id` int(12) NOT NULL auto_increment,
  `subinventory_id` int(12) NOT NULL,
  `org_id` int(12) NOT NULL,
  `locator_structure` varchar(255) default NULL,
  `locator` varchar(255) NOT NULL,
  `alias` varchar(25) default NULL,
  `dimension_uom_id` int(12) default NULL,
  `length` decimal(15,5) default NULL,
  `height` decimal(15,5) default NULL,
  `width` decimal(15,5) default NULL,
  `x_coordinate` decimal(10,5) default NULL,
  `y_coordinate` decimal(10,5) default NULL,
  `z_coordinate` decimal(10,5) default NULL,
  `max_units` decimal(15,5) default NULL,
  `max_volume_uom_id` int(12) default NULL,
  `max_volume` decimal(15,5) default NULL,
  `max_weight_uom_id` int(12) default NULL,
  `max_weight` decimal(15,5) default NULL,
  `ef_id` int(12) default NULL,
  `status` varchar(25) default NULL,
  `rev_enabled_cb` tinyint(1) default NULL,
  `rev_number` varchar(255) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`locator_id`),
  KEY `subinventory_id` (`subinventory_id`),
  KEY `org_id` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `locator`
--

LOCK TABLES `locator` WRITE;
/*!40000 ALTER TABLE `locator` DISABLE KEYS */;
/*!40000 ALTER TABLE `locator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onhand`
--

DROP TABLE IF EXISTS `onhand`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `onhand` (
  `onhand_id` int(11) NOT NULL auto_increment,
  `item_id_m` int(11) NOT NULL,
  `revision_name` varchar(10) default NULL,
  `org_id` int(11) NOT NULL,
  `subinventory_id` int(11) NOT NULL,
  `locator_id` int(11) default '0',
  `lot_id` int(11) default '0',
  `serial_id` int(11) default '0',
  `onhand` float NOT NULL default '0',
  `reservable_onhand` float NOT NULL default '0',
  `transactable_onhand` float NOT NULL default '0',
  `lot_status` int(11) default '0',
  `serial_status` int(11) default '0',
  `uom_id` int(11) NOT NULL,
  `secondary_uom_id` int(11) default '0',
  `onhand_status` int(11) default '0',
  `ef_id` int(11) default '0',
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`onhand_id`),
  UNIQUE KEY `item_id_m` (`item_id_m`,`revision_name`,`org_id`,`subinventory_id`,`locator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `onhand`
--

LOCK TABLES `onhand` WRITE;
/*!40000 ALTER TABLE `onhand` DISABLE KEYS */;
INSERT INTO `onhand` VALUES (1,1,NULL,0,0,0,0,0,7930,0,0,0,0,38,0,0,0,1,'2021-12-20 15:14:02',1,'2022-04-18 11:12:12'),(2,3,NULL,0,0,0,0,0,0,0,0,0,0,38,0,0,0,1,'2021-12-20 15:35:24',1,'2021-12-20 16:09:32'),(3,5,NULL,0,0,0,0,0,150,0,0,0,0,38,0,0,0,1,'2021-12-20 16:12:46',1,'2022-04-18 11:05:08');
/*!40000 ALTER TABLE `onhand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_detail`
--

DROP TABLE IF EXISTS `option_detail`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `option_detail` (
  `option_detail_id` int(12) unsigned NOT NULL auto_increment,
  `option_header_id` int(12) unsigned NOT NULL,
  `option_line_id` int(12) unsigned NOT NULL,
  `option_detail_value` varchar(255) NOT NULL,
  `description` varchar(255) default NULL,
  `efid` int(12) default NULL,
  `status` enum('active','inactive') default NULL,
  `rev_enabled` enum('enabled','disabled') default NULL,
  `rev_number` int(10) default NULL,
  `effective_start_date` date default NULL,
  `effective_end_date` date default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`option_detail_id`),
  UNIQUE KEY `option_line_id` (`option_line_id`,`option_detail_value`),
  KEY `option_header_id` (`option_header_id`,`option_line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `option_detail`
--

LOCK TABLES `option_detail` WRITE;
/*!40000 ALTER TABLE `option_detail` DISABLE KEYS */;
INSERT INTO `option_detail` VALUES (35,223,1084,'Buyer Trainee','Buyer Trainee',NULL,NULL,NULL,1,NULL,NULL,34,'2015-02-21 18:48:15',34,'2015-02-21 18:48:15'),(36,223,1084,'Senior Buyer','Senior Buyer',NULL,NULL,NULL,1,NULL,NULL,34,'2015-02-21 18:48:15',34,'2015-02-21 18:48:15');
/*!40000 ALTER TABLE `option_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_header`
--

DROP TABLE IF EXISTS `option_header`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `option_header` (
  `option_header_id` int(12) unsigned NOT NULL auto_increment,
  `access_level` varchar(20) NOT NULL default 'both',
  `option_type` varchar(50) NOT NULL,
  `description` varchar(200) default NULL,
  `module_code` varchar(10) NOT NULL,
  `option_assignments` varchar(100) default NULL,
  `efid` int(12) default NULL,
  `status` tinyint(1) default NULL,
  `rev_enabled` enum('enabled','disabled') default NULL,
  `rev_number` int(10) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`option_header_id`),
  UNIQUE KEY `option_type` (`option_type`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `option_header`
--

LOCK TABLES `option_header` WRITE;
/*!40000 ALTER TABLE `option_header` DISABLE KEYS */;
INSERT INTO `option_header` VALUES (77,'SYSTEM','ORG_TYPE','Org Type','sys',NULL,NULL,NULL,NULL,1,0,'2014-08-22 07:20:27',0,'2022-08-14 07:20:27'),(79,'SYSTEM','ADDRESS_TYPE','Address type','gl',NULL,1,0,'',1,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(80,'SYSTEM','COA_STRUCTURE','Chart of account structure','gl','GL_COA',NULL,NULL,NULL,NULL,0,'2014-02-06 07:26:31',34,'2015-07-25 17:07:22'),(81,'SYSTEM','EXT_CONTENT_ISSUE_STATUS','Issue status used in issue content type','sys',NULL,1,1,'enabled',1,0,'2014-02-18 09:05:40',18,'0000-00-00 00:00:00'),(82,'BOTH','COA01','Chart of account 01','gl','GL_COA',1,0,'',1,0,'2014-02-04 14:17:09',0,'2014-02-04 14:17:09'),(83,'SYSTEM','COA_ACCOUNT_TYPE','Chart of account type - Asset A, Liability L, Owners Equity E, Expense E, Income I','gl',NULL,NULL,NULL,NULL,1,0,'0000-00-00 00:00:00',34,'2015-01-26 02:34:51'),(84,'SYSTEM','ITEM_TYPE','Item type used for Item master','inv',NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00',34,'2015-02-09 11:54:16'),(85,'SYSTEM','UOM_CLASS','Unit of Measure Class','inv',NULL,0,0,'',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(86,'SYSTEM','TRANSACTION_TYPE_CLASS','Transaction Type Class','inv',NULL,NULL,NULL,NULL,NULL,0,'0000-00-00 00:00:00',34,'2016-05-17 04:17:57'),(87,'SYSTEM','INV_TRANSACTION_ACTION','Inventory Transaction Actions','inv',NULL,0,0,'',0,0,'2013-11-11 07:40:45',0,'2013-11-11 07:40:45'),(88,'SYSTEM','SUBINVENTORY_TYPE','Subinventory Type','inv','',0,0,'',1,0,'2014-05-28 16:52:56',0,'2028-05-14 16:52:56'),(89,'SYSTEM','LOCATOR_CONTROL','Locator Control','inv',NULL,0,1,'enabled',0,0,'2013-09-17 15:40:14',0,'2013-09-17 15:40:14'),(90,'BOTH','LOCATOR_CONTROLS','Locator Controls','inv',NULL,0,0,'',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(91,'SYSTEM','LOCATOR_STRUCTURE','Locator Structures','inv',NULL,0,0,'',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(92,'BOTH','VIEW_DISPLAY_TYPE','View dsiplay type','ext',NULL,0,0,'',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(98,'BOTH','EXTN_CONTENT_ISSUE_CATEGORY','Issue Category','ext',NULL,1,1,'disabled',0,0,'2014-01-29 09:24:02',0,'2014-01-29 09:24:02'),(117,'BOTH','EXTN_CONTENT_ISSUE_COMPONENT','Issue Component','ap',NULL,1,1,'enabled',1,0,'2014-02-08 07:05:18',0,'2014-02-08 07:05:18'),(118,'SYSTEM','EXTN_CONTENT_ISSUE_PRIORITY','Issue List Priority','ext',NULL,4,1,'enabled',1,0,'2014-01-29 09:30:47',0,'2014-01-29 09:30:47'),(119,'BOTH','USER_ROLES','User roles','sys',NULL,NULL,NULL,NULL,1,0,'2014-09-05 03:32:31',1,'2016-11-18 18:07:18'),(120,'BOTH','INVENTORY_ORG_TYPE','Inventory Organization Type','inv',NULL,0,1,'enabled',1,0,'2013-09-28 14:40:38',0,'2013-09-28 14:40:38'),(121,'BOTH','COSTING_METHODS','Costing Methods','cst',NULL,0,1,'',0,0,'2013-09-28 14:45:26',14,'2018-01-21 22:06:46'),(122,'SYSTEM','MANUFACTURING_ITEM_TYPE','Manufacuting Item Type','inv',NULL,NULL,NULL,NULL,NULL,0,'2013-10-05 10:34:51',34,'2015-05-18 09:35:27'),(123,'BOTH','ITEM_STATUS','Item Status','inv',NULL,NULL,NULL,NULL,NULL,0,'2013-10-05 11:18:49',1,'2016-08-16 20:43:17'),(124,'BOTH','SUPPLIER_TYPE','Supplier Type','ap',NULL,NULL,NULL,NULL,2,0,'2013-10-12 16:32:50',34,'2015-05-08 03:42:56'),(125,'BOTH','COUNTRY','All countries','sys','',0,1,'enabled',0,0,'2014-06-03 13:00:25',0,'2003-06-14 13:00:25'),(126,'SYSTEM','PO_RECEIPT_ROUTING','Purchasing Receipt Routing','pur',NULL,NULL,1,'enabled',NULL,0,'2014-02-22 07:33:34',22,'0000-00-00 00:00:00'),(127,'SYSTEM','AP_INVOICE_MATCH_LEVEL','AP Invoice Match Level','ap',NULL,0,1,'enabled',0,0,'2013-10-14 09:11:29',0,'2013-10-14 09:11:29'),(128,'BOTH','EXCEPTION_ACTION','Exception Action','sys',NULL,0,1,'enabled',0,0,'2013-10-14 09:13:08',0,'2013-10-14 09:13:08'),(129,'SYSTEM','SUPPLIER_SITE_TYPE','Supplier Site Type','ap',NULL,0,1,'enabled',0,0,'2013-10-16 08:51:25',0,'2013-10-16 08:51:25'),(130,'SYSTEM','AP_PAY_ON','Auto Create AP Invoice','ap',NULL,0,1,'enabled',0,0,'2013-10-17 07:16:15',0,'2013-10-17 07:16:15'),(131,'SYSTEM','PO_TYPE','Purchase Order Types','pur',NULL,NULL,1,'enabled',2,0,'2014-08-25 03:22:08',0,'2025-08-14 03:22:08'),(132,'SYSTEM','APPROVAL_STATUS','Approval Status','sys',NULL,NULL,1,'enabled',NULL,0,'2014-02-22 07:36:20',14,'2018-03-11 15:51:49'),(133,'SYSTEM','PO_LINE_TYPE','PO Line Types','pur',NULL,NULL,NULL,NULL,NULL,0,'2014-03-14 06:57:15',34,'2015-08-30 08:55:56'),(134,'SYSTEM','CURRENCY','Currency Codes','gl','',0,1,'enabled',0,0,'2014-08-02 13:40:29',0,'2002-08-14 13:40:29'),(135,'SYSTEM','WIP_SUPPLY_TYPE','WIP Supply Types','wip',NULL,NULL,1,'enabled',NULL,0,'2014-01-03 13:53:18',0,'2014-01-03 13:53:18'),(136,'SYSTEM','RESOURCE_TYPE','BOM Resource Types','bom',NULL,NULL,NULL,NULL,NULL,0,'2013-12-16 01:48:31',34,'2015-05-01 04:06:24'),(137,'SYSTEM','CHARGE_TYPE','Charge Type','bom',NULL,NULL,1,'enabled',NULL,0,'2014-01-03 14:06:19',0,'2014-01-03 14:06:19'),(138,'SYSTEM','BOM_CHARGE_BASIS','Material, Resource & OH Charge basis','bom',NULL,NULL,1,'enabled',NULL,0,'2014-01-03 13:57:47',0,'2014-01-03 13:57:47'),(139,'SYSTEM','BOM_OVERHEAD_TYPE','Overhead Type - Material or Resource','bom','',0,1,'enabled',0,0,'2014-04-30 13:30:47',0,'2030-04-14 13:30:47'),(140,'SYSTEM','BOM_DEPARTMENT_TYPE','Bom Department Id','bom',NULL,NULL,1,'enabled',NULL,0,'2013-12-19 07:28:45',0,'2013-12-19 07:28:45'),(141,'SYSTEM','BOM_SCHEDULE_OPTION','Bom Schedule Options','bom',NULL,NULL,1,'enabled',NULL,0,'2014-01-03 14:02:30',0,'2014-01-03 14:02:30'),(142,'SYSTEM','WIP_WO_TYPE','WIP WO/JOB Type','wip',NULL,NULL,1,'enabled',NULL,0,'2014-01-03 13:55:08',0,'2014-01-03 13:55:08'),(143,'SYSTEM','WIP_WO_STATUS','Work Order Status','wip',NULL,NULL,NULL,NULL,NULL,0,'2014-01-03 14:11:45',1,'2016-08-06 10:19:50'),(144,'SYSTEM','WIP_TRANSACTIONS','All WIP Transactions','wip',NULL,NULL,1,'enabled',NULL,0,'2014-01-11 07:52:16',0,'2014-01-11 07:52:16'),(145,'SYSTEM','WIP_MOVE_STEP','WIP Move Steps','wip',NULL,NULL,1,'enabled',NULL,0,'2014-01-07 09:18:30',0,'2014-01-07 09:18:30'),(146,'SYSTEM','CUSTOMER_SITE_TYPE','Customer Site Type','ar',NULL,NULL,1,'enabled',NULL,0,'2014-01-18 06:49:28',0,'2014-01-18 06:49:28'),(147,'SYSTEM','AR_CUSTOMER_TYPE','AR Customer Type','ar',NULL,NULL,1,NULL,NULL,0,'2014-01-18 07:00:52',0,'2014-01-18 07:00:52'),(148,'SYSTEM','AR_CUSTOMER_CREDIT_CLASS','Customer Credit Class','ar',NULL,NULL,1,NULL,NULL,0,'2014-01-18 07:19:56',0,'2014-01-18 07:19:56'),(149,'SYSTEM','EXT_SUMMARY_DISPLAY_TYPE','Extesnion content summary display type','ext',NULL,NULL,1,'enabled',NULL,0,'2014-01-26 06:10:44',0,'2014-01-26 06:10:44'),(150,'SYSTEM','EXT_CONTENT_FIELD_TYPE','Extension field type','ext',NULL,NULL,1,'enabled',NULL,0,'2014-01-27 15:02:12',0,'2014-01-27 15:02:12'),(151,'SYSTEM','OPTION_ASSIGNMENT','Option Assgnments','sys',NULL,NULL,NULL,NULL,NULL,0,'2014-02-02 12:10:10',34,'2015-08-24 12:13:36'),(152,'SYSTEM','SYS_VALIDATION_TYPE','Validation Type Used on Group Value','sys',NULL,NULL,1,NULL,NULL,0,'2014-02-04 02:10:55',0,'2014-02-04 02:10:55'),(153,'BOTH','GL_PERIOD_TYPE','GL Period Types','gl',NULL,NULL,1,'enabled',1,0,'2014-02-07 09:08:17',0,'2014-02-07 09:08:17'),(154,'BOTH','GL_CALENDAR_NAME','GL Calendar Name','gl',NULL,NULL,1,NULL,NULL,0,'2014-02-06 12:37:13',0,'2014-02-06 12:37:13'),(155,'SYSTEM','GL_BALANCE_TYPE','GL Balance Type','gl',NULL,NULL,1,'enabled',NULL,0,'2014-02-27 07:07:15',27,'0000-00-00 00:00:00'),(156,'SYSTEM','GL_JOURNAL_STATUS','GL Journal Status','gl',NULL,NULL,1,'enabled',NULL,0,'2014-03-02 12:12:27',2,'0000-00-00 00:00:00'),(157,'SYSTEM','GL_JOURNAL_CATEGORY','GL Journal Categories','gl',NULL,NULL,NULL,NULL,NULL,0,'2014-07-08 09:15:55',34,'2016-06-25 17:25:56'),(158,'SYSTEM','GL_PERIOD_STATUS','GL Period Status','gl',NULL,NULL,1,'enabled',NULL,0,'2014-02-28 01:56:39',28,'0000-00-00 00:00:00'),(159,'SYSTEM','APPROVAL_STATUSxx','Approval Status','sys',NULL,NULL,1,'enabled',NULL,0,'2014-03-24 07:38:01',14,'2018-03-11 15:51:29'),(160,'SYSTEM','AP_TRANSACTION_TYPE','AP Transaction Type','ap',NULL,NULL,1,'enabled',2,0,'2014-03-13 10:50:05',0,'2013-03-14 10:50:05'),(161,'SYSTEM','GL_JOURNAL_LINE_TYPE','GL Journal Line Type','gl',NULL,NULL,1,'enabled',NULL,0,'2014-09-08 17:16:05',0,'2008-09-14 17:16:05'),(162,'SYSTEM','AP_PAYMENT_TYPE','AP PaymentType','ap',NULL,NULL,1,'enabled',2,0,'2014-03-17 03:57:13',0,'2017-03-14 03:57:13'),(163,'SYSTEM','AR_TRANSACTION_ACTION','AR Transaction Action','ar',NULL,NULL,1,'enabled',2,0,'2014-03-22 10:25:59',0,'2022-03-14 10:25:59'),(164,'SYSTEM','AR_TRANSACTION_CLASS','AR Transaction Classes','ar','',0,1,'enabled',2,0,'2014-07-08 09:09:59',0,'2008-07-14 09:09:59'),(165,'SYSTEM','AR_RECEIPT_TYPE','AR Receipt Type','ar',NULL,NULL,1,'enabled',1,0,'2014-03-25 04:35:31',0,'2025-03-14 04:35:31'),(166,'SYSTEM','SO_TYPE','Sales Order Types','sd',NULL,NULL,1,'enabled',2,0,'2014-03-25 08:40:22',0,'2025-03-14 08:40:22'),(167,'SYSTEM','SO_STATUS','SO Status','sd','',0,1,'enabled',0,0,'2014-06-02 02:49:38',0,'2002-06-14 02:49:38'),(168,'SYSTEM','CST_COST_ELEMENT_TYPE','CST Cost Elements','cst','',0,1,'enabled',1,0,'2014-05-05 02:53:47',14,'2018-01-28 15:18:31'),(169,'SYSTEM','CST_COST_ACTION','Costing Cost Actions','cst',NULL,NULL,1,'enabled',2,0,'2014-04-14 04:07:56',14,'2018-01-28 15:18:43'),(170,'SYSTEM','MP_PLANNING_METHOD','Material Planning Method','inv','',0,1,'enabled',2,0,'2014-05-08 01:03:10',0,'2008-05-14 01:03:10'),(171,'SYSTEM','PO_REQUISITION_TYPE','PO Requisition Types','pur','',0,1,'enabled',2,0,'2014-05-01 07:43:39',0,'2001-05-14 07:43:39'),(172,'SYSTEM','PO_SOURCING_TYPE','PO Sourcing Types','pur','',0,1,'enabled',0,0,'2014-05-02 14:06:53',0,'2002-05-14 14:06:53'),(173,'SYSTEM','FP_BUCKET','Planning Bucket','fp','',0,1,'enabled',2,0,'2014-05-03 13:05:52',0,'2003-05-14 13:05:52'),(174,'SYSTEM','FP_SOURCE_LIST_TYPE','Planning Source List Type','fp','',0,1,'enabled',1,0,'2014-05-05 02:53:19',0,'2005-05-14 02:53:19'),(175,'SYSTEM','FP_SOURCE_LIST_LINE_TYPE','Planning Source List Line Type','fp','',0,1,'enabled',1,0,'2014-05-05 03:01:46',0,'2005-05-14 03:01:46'),(176,'SYSTEM','FP_DEMAND_TYPE','Planning Demand Type','inv','',0,1,'',0,0,'2014-05-06 04:54:02',0,'2006-05-14 04:54:02'),(177,'USER','INV_ITEM_PRODUCT_LINE','Item Product Line','inv','',0,1,'enabled',0,0,'2014-05-08 01:56:24',0,'2008-05-14 01:56:24'),(178,'SYSTEM','SYS_ROUNDING_OPTION','System Rounding Option','sys',NULL,NULL,1,'enabled',NULL,0,'2014-09-01 10:43:44',0,'2001-09-14 10:43:44'),(179,'SYSTEM','FP_MRP_EXCEPTION_TYPE','MRP Exceptions','fp','',0,0,'',0,0,'2014-05-21 09:32:10',0,'2021-05-14 09:32:10'),(180,'SYSTEM','MDM_TAX_TYPE','Tax Types','sys','',0,1,'enabled',2,0,'2014-06-03 02:56:45',0,'2003-06-14 02:56:45'),(181,'BOTH','INV_ITEM_TAX_CLASS','Product Tax Classification','inv','',0,0,'',0,0,'2014-06-04 08:13:47',0,'2004-06-14 08:13:47'),(182,'SYSTEM','SYS_MODULE','Module Name','sys',NULL,NULL,NULL,NULL,NULL,0,'2014-08-07 09:55:00',1,'2016-11-02 14:19:22'),(183,'SYSTEM','SD_SO_STATUS','Sales Order Header Status','sd','',0,1,'enabled',0,0,'2014-06-29 11:56:44',14,'2018-01-13 13:52:40'),(184,'SYSTEM','EXT_PATH_TYPE','Extension Path Types','sys',NULL,NULL,NULL,NULL,NULL,0,'2014-07-19 05:45:25',34,'2015-05-25 04:13:48'),(185,'BOTH','MDM_BANK_ACCOUNT_TYPE','Bank Account Types','gl','',0,1,'enabled',0,0,'2014-07-15 12:15:20',0,'2015-07-14 12:15:20'),(186,'BOTH','INV_ABC_CODE','Inventory ABC Codes','inv','',0,1,'enabled',0,0,'2014-07-18 14:47:03',0,'2018-07-14 14:47:03'),(187,'BOTH','INV_ABC_CRITERIA','ABC Valuation Criterias','inv','',0,1,'enabled',0,0,'2014-07-22 07:36:49',0,'2022-07-14 07:36:49'),(188,'BOTH','GL_CURRENCY_CONVERSION_TYPE','GL Currency Conversion Type','gl','',0,1,'enabled',0,0,'2014-08-02 12:29:31',0,'2002-08-14 12:29:31'),(189,'BOTH','HR_MARITAL_STATUS','HR Marital Status','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-07 10:45:33',0,'2007-08-14 10:45:33'),(190,'BOTH','HR_JOB_POSITION_TYPE','Job Position Type','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-08 12:37:36',0,'2008-08-14 12:37:36'),(191,'BOTH','HR_JOB_FUNCTIONAL_AREA','Job Functional Area','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-08 12:44:32',0,'2008-08-14 12:44:32'),(192,'BOTH','HR_COMPENSATION_ELEMENT_TYPE','HR Compensation Type','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-11 12:39:21',0,'2011-08-14 12:39:21'),(193,'BOTH','HR_COMPENSATION_ELEMENT_CLASS','HR Compensation Element Class','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-11 16:35:48',0,'2011-08-14 16:35:48'),(194,'BOTH','HR_COMPENSATION_ELEMENT_CATEGORY','HR Compensation Category','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-11 16:25:41',0,'2011-08-14 16:25:41'),(195,'BOTH','HR_EDUCATION_MODE','Education Mode','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-13 04:54:20',0,'2013-08-14 04:54:20'),(196,'BOTH','HR_GENDER','Gender','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-13 05:45:34',0,'2013-08-14 05:45:34'),(197,'BOTH','HR_PERSON_TYPE','Person Type','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-13 06:01:41',0,'2013-08-14 06:01:41'),(198,'BOTH','HR_IDENTIFICATION_TYPE','Employee Identification Type','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-13 06:05:49',0,'2013-08-14 06:05:49'),(199,'BOTH','HR_PAYMENT_METHOD_TYPE','Payment  Method Type','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-15 11:13:49',0,'2015-08-14 11:13:49'),(200,'BOTH','SYS_PERIOD_TYPE','System Period Types','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-15 11:55:47',0,'2015-08-14 11:55:47'),(201,'BOTH','HR_LEAVE_CATEGORY','HR Leave Category','sys',NULL,NULL,1,NULL,NULL,0,'2014-08-16 16:57:52',0,'2016-08-14 16:57:52'),(202,'SYSTEM','SYS_DOCUMENT_TYPE','Documents Types','sys',NULL,NULL,NULL,NULL,NULL,0,'2014-08-26 11:04:16',34,'2015-08-26 11:20:56'),(203,'SYSTEM','SYS_NOTIFICATION_NAME','System Notification Name','sys',NULL,NULL,1,'enabled',NULL,0,'2014-08-21 12:05:27',0,'2021-08-14 12:05:27'),(204,'SYSTEM','SYS_HOLD_TYPE','System Hold Type','sys',NULL,NULL,1,'enabled',NULL,0,'2014-09-01 11:19:32',0,'2001-09-14 11:19:32'),(205,'SYSTEM','INV_SEARIAL_STATUS','Serial Number Status','inv',NULL,NULL,NULL,NULL,NULL,0,'2014-09-17 04:56:43',34,'2015-09-09 15:21:27'),(206,'BOTH','SYS_EXTRA_FIELD_TYPE','Extra Field Type','sys',NULL,NULL,1,'enabled',NULL,0,'2014-10-08 05:22:53',0,'2008-10-14 05:22:53'),(207,'BOTH','USER_FAVOURITE_GROUP','User Favourite Group','sys',NULL,1,1,'enabled',1,34,'2014-10-22 07:40:39',34,'2014-10-22 07:41:34'),(208,'BOTH','EXT_VIEW_DISPLAY_TYPE','View Display Type','sys',NULL,NULL,1,'enabled',NULL,1,'2014-10-24 13:26:34',1,'2014-10-24 16:11:04'),(209,'BOTH','USER_REPORT_GROUP','User Report Group','sys',NULL,NULL,1,'enabled',NULL,34,'2014-11-02 05:00:05',34,'2014-11-02 05:01:23'),(210,'USER','SF_ITEM_INVETORY_CATEGORY','Secondary Field : Item Purchasing Category','inv',NULL,NULL,NULL,NULL,NULL,34,'2014-11-07 05:48:31',34,'2014-11-07 05:52:35'),(211,'BOTH','BC_LABEL_TYPE','Barcode Label Type','sys',NULL,NULL,NULL,'enabled',NULL,34,'2014-12-01 06:54:09',34,'2015-02-05 02:37:21'),(212,'BOTH','SYS_PRINTER_TYPE','Barcode Label Type','sys',NULL,NULL,1,'enabled',NULL,34,'2014-12-01 09:38:55',34,'2014-12-01 09:41:01'),(213,'BOTH','SD_SALES_CHANNEL','Sales Channel','sd',NULL,NULL,1,'enabled',NULL,34,'2014-12-07 04:42:35',34,'2014-12-07 04:45:07'),(214,'BOTH','HR_TEAM_REGION','Team Region','hr',NULL,NULL,1,NULL,NULL,1,'2014-12-08 06:03:49',1,'2014-12-08 11:24:09'),(215,'BOTH','HR_ROLE','HR Role','hr',NULL,NULL,1,NULL,NULL,1,'2014-12-08 11:51:47',1,'2014-12-08 11:53:52'),(216,'BOTH','SD_LEAD_TYPE','Sales Lead Type','sd',NULL,NULL,1,'enabled',NULL,34,'2014-12-09 05:01:59',34,'2014-12-09 05:04:29'),(217,'BOTH','EXT_WEB_CONTACT_CATEGORY','Web Contact Category','ext',NULL,NULL,NULL,'enabled',NULL,34,'2015-01-04 04:55:28',34,'2015-02-05 03:03:48'),(218,'SYSTEM','FA_ASSET_CLASS_TYPE','Asset Class Type','fa',NULL,NULL,NULL,NULL,NULL,34,'2015-01-12 13:59:33',34,'2015-01-12 14:01:02'),(219,'SYSTEM','FA_ASSET_CATEGORY_TYPE','Asset Category Type','fa',NULL,NULL,NULL,NULL,NULL,34,'2015-01-12 16:40:46',34,'2015-01-12 16:42:29'),(220,'SYSTEM','INV_LOC_DEFAULT_TYPE','Item Transaction Location Default Type ','inv',NULL,NULL,NULL,NULL,NULL,34,'2015-02-02 08:48:04',34,'2015-02-02 08:49:37'),(221,'BOTH','EXTN_CATEGORY_TYPE','Category Types  - Extension','ext',NULL,NULL,NULL,NULL,NULL,34,'2015-02-06 05:50:06',34,'2015-03-28 09:19:03'),(222,'SYSTEM','INV_ITEM_BOM_TYPE','Inventory Item BOM Type','inv',NULL,NULL,NULL,NULL,NULL,34,'2015-02-07 14:17:00',34,'2015-03-08 10:26:56'),(223,'BOTH','USER_GROUPS','User Groups','sys',NULL,NULL,NULL,NULL,1,34,'2015-02-21 18:45:59',1,'2017-03-26 10:50:42'),(224,'BOTH','SYS_LANGUAGE','Language','sys',NULL,NULL,NULL,NULL,NULL,34,'2015-02-24 09:15:50',1,'2016-10-30 01:22:23'),(225,'BOTH','AM_ACTIVITY_TYPE','Activity Type','am',NULL,NULL,NULL,NULL,NULL,34,'2015-03-16 10:26:43',34,'2015-03-16 10:31:10'),(226,'BOTH','AM_ACTIVITY_CAUSE','Activity Cause','am',NULL,NULL,NULL,NULL,NULL,34,'2015-03-16 10:32:08',34,'2015-03-16 10:34:32'),(227,'BOTH','AM_ACTIVITY_SOURCE','Activity Source','am',NULL,NULL,NULL,NULL,NULL,34,'2015-03-16 10:35:24',34,'2015-03-16 10:36:52'),(228,'SYSTEM','AM_WO_TYPE','Maintenance WO/JOB Type','am',NULL,NULL,NULL,NULL,NULL,34,'2015-03-21 09:17:15',34,'2015-03-21 09:28:42'),(229,'BOTH','INV_ITEM_RELATION','Item Relations','inv',NULL,NULL,NULL,NULL,NULL,34,'2015-03-29 19:49:00',34,'2015-03-29 20:38:48'),(230,'BOTH','ADDRESS_USAGE_TYPE','Address Usage Type','org',NULL,NULL,NULL,NULL,1,34,'2015-04-06 09:32:11',34,'2015-04-06 09:33:30'),(231,'BOTH','HD_SR_IMPACT','Service Request Impact','hd',NULL,NULL,NULL,NULL,1,34,'2015-04-16 13:58:51',34,'2015-04-16 14:00:50'),(232,'BOTH','HD_SR_STATUS','Service Request Status','hd',NULL,NULL,NULL,NULL,1,34,'2015-04-16 14:11:26',34,'2015-04-16 14:13:23'),(233,'BOTH','HD_SR_TYPE','Service Request Type','hd',NULL,NULL,NULL,NULL,1,34,'2015-04-16 14:14:46',34,'2015-04-16 14:16:03'),(234,'BOTH','HD_SR_CATEGORY','Service Request Category','hd',NULL,NULL,NULL,NULL,1,34,'2015-04-16 14:23:51',34,'2015-04-16 14:26:51'),(235,'BOTH','HD_SR_ESCALATION','Service Request Escalation','hd',NULL,NULL,NULL,NULL,1,34,'2015-04-16 16:07:21',34,'2015-04-16 16:09:01'),(236,'BOTH','HD_SR_CLOSE_CODE','Service Request Close Type','hd',NULL,NULL,NULL,NULL,1,34,'2015-04-18 15:20:05',34,'2015-04-18 15:22:14'),(237,'BOTH','HD_CR_TYPE','Change Request Type','hd',NULL,NULL,NULL,NULL,1,34,'2015-04-19 04:53:53',34,'2015-04-19 04:55:20'),(238,'BOTH','SUPPLIER_CATEGORY','Supplier Category','ap',NULL,NULL,NULL,NULL,2,34,'2015-05-08 03:36:06',34,'2015-05-08 03:37:29'),(239,'BOTH','AR_CUSTOMER_CATEGORY','AR Customer Category','ar',NULL,NULL,NULL,NULL,NULL,34,'2015-05-11 04:33:46',34,'2015-05-11 04:35:25'),(240,'BOTH','ADM_PRIMARY_TASK_STATUS','Primary Task Type','adm',NULL,NULL,NULL,NULL,1,34,'2015-05-25 20:19:57',34,'2015-05-25 20:22:59'),(241,'BOTH','HD_PRI_SERVICE_TYPE','Primary Service Type','hd',NULL,NULL,NULL,NULL,1,34,'2015-05-31 04:57:21',34,'2015-05-31 05:10:46'),(242,'BOTH','SYS_BILLING_TYPE','Billing Type','sys',NULL,NULL,NULL,NULL,1,34,'2015-05-31 19:42:17',34,'2015-05-31 19:43:31'),(243,'BOTH','HR_TEAM_TYPE','HR Team Type','hr',NULL,NULL,NULL,NULL,NULL,34,'2015-06-02 14:19:19',34,'2015-06-02 14:20:47'),(244,'SYSTEM','AR_CUSTOMER_RELATIONSHIP','AR Customer Relationship','ar',NULL,NULL,NULL,NULL,NULL,34,'2015-06-09 16:29:51',34,'2015-06-09 16:34:30'),(245,'SYSTEM','PRJ_CUSTOMER_RELATIONSHIP','Project Customer Relationship','prj',NULL,NULL,NULL,NULL,NULL,34,'2015-06-14 08:11:43',34,'2015-06-14 08:12:34'),(246,'SYSTEM','PRJ_EXPENDITURE_CATEGORY','Project Expenditure Categories','prj',NULL,NULL,NULL,NULL,NULL,34,'2015-06-14 09:17:02',34,'2015-06-14 09:19:57'),(247,'BOTH','PRJ_REVENUE_CATEGORY','Project Revenue Categories','prj',NULL,NULL,NULL,NULL,NULL,34,'2015-06-14 09:23:42',34,'2015-06-14 09:25:14'),(248,'SYSTEM','PRJ_RESOURCE_CLASS','Project Resource Class','prj',NULL,NULL,NULL,NULL,NULL,34,'2015-06-14 15:21:20',34,'2015-06-14 15:22:17'),(249,'BOTH','PRJ_TIME_PHASE_TYPE','Project Time Phase Type','prj',NULL,NULL,NULL,NULL,NULL,34,'2015-06-18 06:41:22',14,'2018-04-03 20:53:32'),(250,'BOTH','CE_SERVICE TYPE','Service Type - Common Entity','adm',NULL,NULL,NULL,NULL,NULL,34,'2015-06-21 06:35:53',34,'2015-06-21 06:37:59'),(251,'SYSTEM','PRJ_BUDGET_ENTRY_LEVEL','Project Budget Entry Level','prj',NULL,NULL,NULL,NULL,NULL,34,'2015-06-22 07:20:27',14,'2018-04-03 20:47:26'),(252,'BOTH','PRJ_BUDGET_TYPE','Project Budget Type','prj',NULL,NULL,NULL,NULL,NULL,34,'2015-07-03 15:29:08',34,'2015-10-13 03:51:34'),(253,'BOTH','PRJ_PROJECT_PHASE','Project Phases','prj',NULL,NULL,NULL,NULL,NULL,34,'2015-07-08 03:35:43',34,'2015-07-08 05:05:38'),(254,'SYSTEM','PRJ_EVENT_CLASS','Project Event Type Class','prj',NULL,NULL,NULL,NULL,NULL,34,'2015-07-10 06:04:23',34,'2015-07-10 06:04:23'),(255,'SYSTEM','AR_TRNX_APPROVAL_STATUS','AR Transacion Approval Status','sys',NULL,NULL,NULL,NULL,NULL,34,'2015-07-17 15:06:54',34,'2015-07-17 15:06:54'),(256,'SYSTEM','AP_PAY_GROUP','AP Payment Group','ap',NULL,NULL,NULL,NULL,2,34,'2015-07-21 08:05:37',34,'2015-07-21 08:16:52'),(257,'SYSTEM','PRJ_DOCUMENT_TYPE','Project Document Type','prj',NULL,NULL,NULL,NULL,NULL,34,'2015-08-21 11:42:41',34,'2015-10-12 05:26:50'),(258,'SYSTEM','HR_EXPENSE_CATEGORY','HR Expense Category','hr',NULL,NULL,NULL,NULL,NULL,34,'2015-08-24 03:42:27',34,'2015-08-24 03:42:27'),(259,'SYSTEM','HR_LOCATION','HR Location Structure','hr','HR_LOCATION',NULL,NULL,NULL,NULL,34,'2015-08-24 12:12:21',34,'2015-08-24 12:19:31'),(260,'BOTH','HD_SUBSCR_DOC_TYPE','Subscription Doument Type','hd',NULL,NULL,NULL,NULL,1,34,'2015-09-14 07:19:54',34,'2015-09-14 07:19:54'),(261,'BOTH','HD_SUBSCR_LINE_TYPE','Subscription Line Type','hd',NULL,NULL,NULL,NULL,1,34,'2015-09-14 13:53:29',34,'2015-09-15 03:46:28'),(262,'BOTH','PRJ_ACCOUNTING_GRP','Project Accounting Group','prj',NULL,NULL,NULL,NULL,NULL,34,'2015-09-24 09:11:16',34,'2015-09-24 12:49:29'),(263,'BOTH','GL_JOURNAL_SOURCE','GL Journal Source','gl',NULL,NULL,NULL,NULL,NULL,34,'2015-10-01 12:48:26',34,'2015-10-01 12:50:00'),(264,'BOTH','QA_ELEMENT_TYPE','Quality Element Type','qa',NULL,NULL,NULL,NULL,NULL,34,'2015-11-02 03:30:23',34,'2015-11-02 03:30:23'),(265,'BOTH','QA_COLLECTION_PLAN_TYPE','Quality Collection Plan Types','qa',NULL,NULL,NULL,NULL,NULL,34,'2015-11-06 03:27:01',34,'2015-11-06 03:27:01'),(266,'BOTH','QA_COLLECTION_TRIGGER','Quality Collection Plan Triggers','qa',NULL,NULL,NULL,NULL,NULL,34,'2015-11-06 09:17:43',34,'2015-11-12 05:40:27'),(267,'BOTH','QA_QUALITY_ACTION','System Actions on Quality Results','qa',NULL,NULL,NULL,NULL,NULL,34,'2015-11-07 11:28:19',34,'2015-11-07 11:28:19'),(268,'BOTH','PM_FORMULA_TYPE','Formula Type','pm',NULL,NULL,NULL,NULL,NULL,34,'2016-03-08 06:25:37',34,'2016-03-08 08:12:56'),(269,'BOTH','PM_OPERATION_ACTIVITY',NULL,'pm',NULL,NULL,NULL,NULL,NULL,34,'2016-03-14 10:21:42',34,'2016-03-14 10:21:42'),(270,'BOTH','LMS_FEE_ELEMENT_TYPE','LMS Fee Element Type','sys',NULL,NULL,NULL,NULL,NULL,1,'2016-11-10 12:56:32',1,'2016-11-10 12:59:29'),(271,'BOTH','LMS_FEE_ELEMENT_CLASS','LMS Fee Element Class','sys',NULL,NULL,NULL,NULL,NULL,1,'2016-11-10 13:02:24',1,'2016-11-10 13:02:24'),(272,'BOTH','LMS_DEPARTMENT_TYPE','LMS Department Type','lms',NULL,NULL,NULL,NULL,NULL,1,'2016-11-11 13:14:43',1,'2017-02-07 17:36:53'),(273,'BOTH','SYS_DEMAND_CLASS','Demand Class','sys',NULL,NULL,NULL,NULL,NULL,1,'2017-03-01 09:12:04',1,'2017-03-01 09:12:04'),(274,'BOTH','SYS_DISCOUNT_CLASS','Discount Class','sys',NULL,NULL,NULL,NULL,NULL,1,'2017-03-01 09:13:54',1,'2017-03-01 09:14:44'),(275,'BOTH','EXTN_FOLDER_TYPE','Folder Types  - Extension','ext',NULL,NULL,NULL,NULL,NULL,1,'2017-04-19 18:52:05',1,'2017-04-19 18:52:05'),(276,'both','HR_CALCULATION_RULE','HR compensation calculation rule','hr',NULL,NULL,NULL,NULL,NULL,0,'2017-05-19 16:30:24',0,'2017-05-19 16:36:56'),(277,'both','HR_DEDUCTION_RULE','hr compensation deduction rule','hr',NULL,NULL,NULL,NULL,NULL,0,'2017-05-19 21:24:01',0,'2017-05-19 21:24:01'),(278,'both','HR_DEDUCTION_START_RULE','hr compensation deduction start rule','hr',NULL,NULL,NULL,NULL,NULL,0,'2017-05-19 21:27:58',0,'2017-05-19 21:27:58'),(279,'both','QA_SPECIFICATION_TYPE','qa specification type','qa',NULL,NULL,NULL,NULL,NULL,0,'2017-05-21 09:24:39',0,'2017-05-21 09:24:39'),(280,'both','QA_SPEC_VALUE','Quality spec_value','qa',NULL,NULL,NULL,NULL,NULL,0,'2017-05-21 10:44:40',0,'2017-05-21 10:44:40'),(281,'both','QA_COMPARISON','Quality comparison','qa',NULL,NULL,NULL,NULL,NULL,0,'2017-05-21 10:50:48',0,'2017-05-21 10:50:48'),(282,'both','CONTROL_TYPE','Control Type','sys',NULL,NULL,NULL,NULL,NULL,0,'2017-05-21 10:58:29',0,'2017-05-21 10:58:29'),(283,'both','PM_SCALE_TYPE','pm scale type','pm',NULL,NULL,NULL,NULL,NULL,0,'2017-05-22 15:24:38',0,'2017-05-22 15:24:38'),(284,'both','PM_YIELD_TYPE','pm yield type','pm',NULL,NULL,NULL,NULL,NULL,0,'2017-05-22 15:26:04',0,'2017-05-22 15:26:04'),(285,'both','PM_CONSUMPTION_TYPE','pm consumption type','pm',NULL,NULL,NULL,NULL,NULL,0,'2017-05-22 15:35:34',0,'2017-05-22 15:35:34'),(286,'both','PM_BYPRODUCT_TYPE','pm byproduct type','pm',NULL,NULL,NULL,NULL,NULL,0,'2017-05-22 15:45:28',0,'2017-05-22 15:45:28'),(287,'both','PM_RECIPE_TYPE','pm recipe type','pm',NULL,NULL,NULL,NULL,NULL,0,'2017-05-22 16:08:27',0,'2017-05-22 16:08:27'),(288,'both','APPROVAL_HIERARCHY','Approval Hierarcht','sys',NULL,NULL,NULL,NULL,NULL,0,'2017-05-23 15:57:52',0,'2017-05-23 15:58:43'),(289,'both','PO_QUOTE_TYPE','PO Quote type','pur',NULL,NULL,NULL,NULL,NULL,0,'2017-05-23 16:39:04',0,'2017-05-23 16:39:04'),(290,'both','PO_QUOTE_STATUS','PO Quote Status','pur',NULL,NULL,NULL,NULL,NULL,0,'2017-05-23 16:40:16',0,'2017-05-23 16:40:16'),(291,'both','HR_APPROVAL_STATUS','HR APPROVAL_STATUS ','sys',NULL,NULL,NULL,NULL,NULL,0,'2017-06-01 10:40:56',14,'2019-03-02 16:53:08'),(292,'both','PO_STATUS','PO Status','pur',NULL,NULL,NULL,NULL,NULL,0,'2017-06-06 08:38:29',0,'2017-06-06 08:38:29'),(293,'both','SO_SOURCE_TYPE','Sales Order Source Types','sd',NULL,NULL,NULL,NULL,NULL,0,'2017-06-06 17:43:33',0,'2017-06-06 17:43:33'),(294,'both','SD_SUPPLY_SOURCE','sd supply source','sd',NULL,NULL,NULL,NULL,NULL,0,'2017-06-07 08:05:24',0,'2017-06-07 08:05:24'),(295,'both','SD_DESTINATION_TYPE','sd destination_type','sd',NULL,NULL,NULL,NULL,NULL,0,'2017-06-07 08:07:18',0,'2017-06-07 08:07:18'),(296,'both','QA_CE_DISPLAY_TYPE','QA CE display type','qa',NULL,NULL,NULL,NULL,NULL,0,'2017-06-09 07:50:19',0,'2017-06-09 07:50:19'),(297,'both','INV_ISSUE_RECEIPT_STATUS','Inv Issue or receipt status','inv',NULL,NULL,NULL,NULL,NULL,0,'2017-06-12 16:01:26',0,'2017-06-12 16:01:26'),(298,'both','PAYMENT_STATUS','Payment status','sys',NULL,NULL,NULL,NULL,NULL,1,'2017-06-17 08:11:13',1,'2017-06-17 08:11:13'),(299,'both','TRANSACTION_STATUS','Transaction status','sys',NULL,NULL,NULL,NULL,NULL,1,'2017-06-17 08:11:37',1,'2017-06-17 08:11:37'),(300,'both','SD_LINE_STATUS','SO LINE Status','sd',NULL,NULL,NULL,NULL,NULL,1,'2017-07-05 11:13:24',1,'2017-07-05 11:13:41'),(301,'both','PO_LINE_STATUS','PO Line Status','pur',NULL,NULL,NULL,NULL,NULL,1,'2017-07-12 10:08:51',1,'2017-07-12 10:09:09'),(302,'both','AP_PAYMENT_STATUS','AP Payment Status','ap',NULL,NULL,NULL,NULL,NULL,1,'2017-07-20 10:14:43',1,'2017-07-20 10:14:43'),(303,'both','AR_LINE_TYPE','AR Receipt line types','ar',NULL,NULL,NULL,NULL,NULL,1,'2017-07-21 13:08:27',1,'2017-07-21 13:08:52'),(304,'both','QA_RESULTS_TYPE','QA_RESULTS_TYPE','qa',NULL,NULL,NULL,NULL,NULL,1,'2017-09-06 10:17:32',1,'2017-09-06 10:17:32'),(305,'both','SD_LEAD_STATUS','SD LEAD STATUS','sd',NULL,NULL,NULL,NULL,NULL,11,'2017-10-18 14:48:53',11,'2017-10-18 14:48:53'),(306,'both','GL_ACCOUNT_GROUP','ACCOUNT GROUP','gl',NULL,NULL,NULL,NULL,NULL,11,'2017-10-19 09:53:59',11,'2017-10-19 09:53:59'),(307,'both','GL_ACCOUNT_TYPE','ACCOUNT TYPE','gl',NULL,NULL,NULL,NULL,NULL,11,'2017-10-19 09:55:29',11,'2017-10-19 09:55:29'),(308,'both','MDM_TAX_CALC_METHOD','TAX Calculation method','sys',NULL,NULL,NULL,NULL,NULL,11,'2017-12-07 16:22:38',11,'2017-12-07 16:35:08'),(309,'both','CCO_STATUS','Change Control Order Status','cc',NULL,NULL,NULL,NULL,NULL,14,'2018-01-28 10:44:06',14,'2018-01-28 10:44:06'),(310,'both','COA_AC_USAGE_TYPE','COA_AC_USAGE_TYPE','gl',NULL,NULL,NULL,NULL,NULL,14,'2018-02-12 11:14:51',14,'2018-02-12 14:05:35'),(311,'both','BILL_CYCLE_TYPE','bill cycle type','prj',NULL,NULL,NULL,NULL,NULL,14,'2018-04-03 21:18:38',14,'2018-04-03 21:18:38'),(312,'both','INV_COUNT_APPROVAL','INV Count Approval Option','inv',NULL,NULL,NULL,NULL,NULL,14,'2019-07-08 15:40:26',14,'2019-07-08 15:41:49'),(313,'both','INV_COUNT_STATUS','INV Count Status','inv',NULL,NULL,NULL,NULL,NULL,14,'2019-07-08 16:02:19',14,'2019-07-08 16:02:19');
/*!40000 ALTER TABLE `option_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_line`
--

DROP TABLE IF EXISTS `option_line`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `option_line` (
  `option_line_id` int(12) unsigned NOT NULL auto_increment,
  `option_header_id` int(12) unsigned NOT NULL,
  `option_line_code` varchar(50) character set utf8 NOT NULL,
  `option_line_value` varchar(50) character set utf8 NOT NULL,
  `description` varchar(255) character set utf8 NOT NULL,
  `value_group_id` int(12) default NULL,
  `priority` int(4) default NULL,
  `status` tinyint(1) default NULL,
  `mapper1` varchar(25) character set utf8 default NULL,
  `mapper2` varchar(25) character set utf8 default NULL,
  `rev_enabled` enum('enabled','disabled') character set utf8 NOT NULL,
  `rev_number` int(12) default NULL,
  `effective_start_date` varchar(50) character set utf8 default NULL,
  `effective_end_date` varchar(50) character set utf8 default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`option_line_id`),
  UNIQUE KEY `option_header_id_2` (`option_header_id`,`option_line_code`),
  KEY `option_header_id` (`option_header_id`),
  CONSTRAINT `option_line_ibfk_1` FOREIGN KEY (`option_header_id`) REFERENCES `option_header` (`option_header_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1636 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `option_line`
--

LOCK TABLES `option_line` WRITE;
/*!40000 ALTER TABLE `option_line` DISABLE KEYS */;
INSERT INTO `option_line` VALUES (71,77,'ENTERPRISE','企业组织','Enterprise Org',NULL,0,0,NULL,NULL,'enabled',1,'2000-01-01','',0,'2014-03-26 07:45:39',1,'2017-07-03 11:42:37'),(72,77,'LEGAL_ORG','法人组织','Legal Org',NULL,0,0,NULL,NULL,'enabled',1,'2000-01-01','',0,'2014-03-26 07:45:40',1,'2017-07-03 11:42:47'),(73,77,'BUSINESS_ORG','运营中心','Business Org',NULL,0,0,NULL,NULL,'enabled',1,'2000-01-01','',0,'2014-03-26 07:45:38',1,'2017-07-03 11:41:50'),(74,77,'INVENTORY_ORG','库存组织','Inventory Org',NULL,0,0,NULL,NULL,'enabled',1,'2000-01-01','',0,'2014-03-26 07:45:39',1,'2017-07-03 11:42:42'),(75,79,'INTERNATIONAL','INTERNATIONAL','Standard International Format',NULL,1,1,NULL,NULL,'',0,'2000-01-01','2000-01-01',0,'0000-00-00 00:00:00',0,'2017-05-20 14:53:58'),(76,79,'US_STYLE','US_STYLE','US Format',NULL,1,1,NULL,NULL,'',0,'2000-01-01','2000-01-01',0,'0000-00-00 00:00:00',0,'2017-05-20 14:54:01'),(77,80,'SEGMENT1','法人组织','Legal Organization',1,1,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-02-06 07:26:29',1,'2017-07-03 09:55:55'),(78,80,'SEGMENT2','运营中心','Business Organization',2,1,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-02-06 07:26:28',1,'2017-07-03 09:56:05'),(79,80,'SEGMENT3','成本中心','Cost center',3,1,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-02-06 07:26:29',1,'2017-07-03 09:56:16'),(80,80,'SEGMENT4','自然账户 ','Natural account',4,1,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-02-06 07:26:28',1,'2017-07-03 09:58:43'),(81,80,'SEGMENT5','产品','Product',5,1,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-02-06 07:26:28',1,'2017-07-03 09:58:50'),(82,80,'SEGMENT6','项目','Project',11,1,0,NULL,NULL,'',NULL,'2001-01-01',NULL,0,'2014-02-06 07:26:29',1,'2017-07-03 09:58:56'),(83,80,'SEGMENT7','公司间段','Inter-Company Segment',1,1,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-02-06 07:26:29',1,'2017-07-03 10:03:09'),(84,80,'SEGMENT8','特点用途','Feature Use',12,1,0,NULL,NULL,'',NULL,'2001-01-01','1970-01-01',0,'2014-02-06 07:26:29',1,'2017-07-03 10:03:39'),(85,81,'OPEN','New & Open','New & Open',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-18 09:05:40',18,'0000-00-00 00:00:00'),(86,81,'ASSIGNED','Assigned','Assigned',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-18 09:05:41',18,'0000-00-00 00:00:00'),(87,82,'LEGAL_UNIT','法人组织','Represents Legal Unit',1,1,0,NULL,NULL,'enabled',0,'2000-01-01','',0,'2014-02-04 14:17:11',1,'2017-07-03 10:04:42'),(88,82,'BUSINESS_UNIT','运营中心','Represents Business Unit',2,1,0,NULL,NULL,'enabled',0,'2000-01-01','',0,'2014-02-04 14:17:10',1,'2017-07-03 10:04:09'),(89,82,'COST_CENTER','成本中心','Represents Cost Center',3,1,0,NULL,NULL,'enabled',0,'2000-01-01','',0,'2014-02-04 14:17:10',1,'2017-07-03 10:04:18'),(90,82,'PRODUCT_CODE','产品代码','Represents Product code',5,1,0,NULL,NULL,'enabled',0,'2000-01-01','',0,'2014-02-04 14:17:10',1,'2017-07-03 10:04:56'),(91,82,'INTERCOMPANY','公司间段','Intercompany',1,1,0,NULL,NULL,'enabled',0,'2000-01-01','',0,'2014-02-04 14:17:10',1,'2017-07-03 10:04:31'),(92,82,'ACCOUNT','自然账户','Represents NA',4,1,0,NULL,NULL,'enabled',0,'2000-01-01','',0,'2014-02-04 14:17:15',1,'2017-07-03 10:04:00'),(93,83,'A','资产','Asset',NULL,0,0,NULL,NULL,'',0,'1950-01-01','',0,'0000-00-00 00:00:00',1,'2017-07-03 10:05:12'),(94,83,'L','负债','Liability',NULL,0,0,NULL,NULL,'',0,'1950-01-01','',0,'0000-00-00 00:00:00',1,'2017-07-03 10:07:23'),(95,83,'E','所有者权益','Owners Equity',NULL,0,0,NULL,NULL,'',0,'1950-01-01','',0,'0000-00-00 00:00:00',11,'2017-10-22 16:18:22'),(96,83,'X','费用','Expense',NULL,0,0,NULL,NULL,'',0,'1950-01-01','',0,'0000-00-00 00:00:00',1,'2017-07-03 10:08:19'),(97,83,'R','营收','Revenue',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'0000-00-00 00:00:00',1,'2017-07-03 10:08:11'),(98,83,'BC','预算贷出','Budgetary Credit',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'0000-00-00 00:00:00',1,'2017-07-03 10:06:01'),(99,84,'PRODUCT','标准产品','Standard Product',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'0000-00-00 00:00:00',14,'2018-02-08 09:24:53'),(100,84,'EXPENSE','费用','Expense Items',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'0000-00-00 00:00:00',14,'2018-02-08 09:24:59'),(101,84,'EXPENSE_QTY','费用数量','Expense Qty Tracked',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'0000-00-00 00:00:00',14,'2018-02-08 09:25:05'),(102,84,'NON_PRODUCT','非产品','Non product Items',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'0000-00-00 00:00:00',14,'2018-02-08 09:25:11'),(103,84,'MRO','运维','MRO Items',NULL,0,1,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',14,'2018-02-08 09:25:18'),(104,84,'FINISHED_GOOD','完工良品','Finished Good Items',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'0000-00-00 00:00:00',14,'2018-02-08 09:25:24'),(105,84,'SUB_ASSEMBLY','子部件','Sub Assemblies',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'0000-00-00 00:00:00',14,'2018-02-08 09:25:30'),(106,84,'RAW','原材料','Raw Components',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'0000-00-00 00:00:00',14,'2018-02-08 09:25:35'),(107,84,'EQUIPMENT','设备','Equipments',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'0000-00-00 00:00:00',14,'2018-02-08 09:25:40'),(108,84,'SOFTWARE','软件','Softwares',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'0000-00-00 00:00:00',14,'2018-02-08 09:25:47'),(109,85,'Area','面积','Area',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:03:43'),(110,85,'Document','单据','Document',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:03:49'),(111,85,'Length','长度','Length',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:03:57'),(112,85,'Volume','体积','Volume',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:05:11'),(113,85,'Weight','重量','Weight',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:05:18'),(114,85,'Quantity','数量','Quantity',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:04:56'),(115,85,'Period','期间','Period',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:04:50'),(116,85,'Money','金额','Money',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:04:36'),(117,85,'Time','时间','Time',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:05:03'),(118,86,'INVENTORY','库存','Inventory Transactions',NULL,1,0,NULL,NULL,'',1,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:06:06'),(119,86,'WIP','工单','Work In Process',NULL,1,0,NULL,NULL,'',1,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:07:03'),(120,86,'OM','订单管理','Order Management',NULL,1,0,NULL,NULL,'',1,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:06:23'),(121,86,'PO','采购','Purchasing',NULL,1,0,NULL,NULL,'',1,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:06:45'),(122,86,'MISC','杂项','Misc',NULL,1,0,NULL,NULL,'',1,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:06:13'),(123,87,'1','1','Issue from stores',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(124,87,'10','10','Logical Intercompany Receipt',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(125,87,'11','11','Logical Delivery Adjustment',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(126,87,'12','12','Intransit receipt',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(127,87,'13','13','Logical Intercompany Receipt Return',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(128,87,'14','14','Logical Intercompany Sales Return',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(129,87,'15','15','Logical  Intransit Receipt',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(130,87,'17','17','Logical Expense Requisition Receipt',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(131,87,'2','2','Subinventory transfer',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(132,87,'21','21','Intransit shipment',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(133,87,'22','22','Logical  Intransit Shipment',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(134,87,'24','24','Cost update',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(135,87,'25','25','Retroactive Price Update',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(136,87,'26','26','Logical Receipt',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(137,87,'27','27','Receipt into stores',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(138,87,'28','28','Staging transfer',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(139,87,'29','29','Delivery adjustments',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(140,87,'3','3','Direct organization transfer',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(141,87,'30','30','WIP scrap transaction',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(142,87,'31','31','Assembly completion',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(143,87,'32','32','Assembly return',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(144,87,'33','33','Negative component issue',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(145,87,'34','34','Negative component return',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(146,87,'35','35','Container transaction',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(147,87,'36','36','COGS Recognition',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(148,87,'4','4','Cycle count adjustment',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(149,87,'40','40','Lot Split',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(150,87,'41','41','Lot Merge',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(151,87,'42','42','Lot Translate',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(152,87,'43','43','Lot Update Quantity',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(153,87,'5','5','Planning Transfer',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(154,87,'50','50','Container Pack',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(155,87,'51','51','Container Unpack',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(156,87,'52','52','Container Split',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(157,87,'55','55','Cost Group Transfer',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(158,87,'56','56','Residual Quantity Issue',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(159,87,'57','57','Residual Quantity Receipt',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(160,87,'6','6','Ownership Transfer',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(161,87,'7','7','Logical Issue',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(162,87,'8','8','Physical inventory adjustment',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(163,87,'9','9','Logical Intercompany Sales',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(164,87,'99','99','Misc',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(165,88,'STORAGE','储备','Storage',0,0,1,NULL,NULL,'enabled',0,'','',0,'2014-05-28 16:52:56',14,'2018-02-20 09:17:41'),(166,88,'RECEIVING','接收','Receiving',0,0,1,NULL,NULL,'enabled',0,'','',0,'2014-05-28 16:52:56',14,'2018-02-20 09:17:47'),(167,79,'INDIAN','INDIAN','Standard Indian Format',NULL,1,1,NULL,NULL,'',0,'2000-01-01','2000-01-01',0,'0000-00-00 00:00:00',0,'2017-05-20 15:22:55'),(168,90,'NO_LOCATOR1','无库位','Not locator Controlled',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:09:40'),(169,89,'NO_LOCATOR','无库位','Not locator Controlled',NULL,1,1,NULL,NULL,'',0,'09/01/2013','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:09:06'),(170,89,'NEXT_LEVEL','下一级','Determined at next level : Business Unit, Inventory, Zone, Subinventory',NULL,1,1,NULL,NULL,'',0,'09/01/2013','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:08:52'),(171,89,'PRE_SPECIFIED','预设','Pre Specified Locators',NULL,1,1,NULL,NULL,'',0,'09/01/2013','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:09:21'),(172,89,'DYNAMIC_ENTRY','动态','Dynamic entry',NULL,1,1,NULL,NULL,'',0,'09/01/2013','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:08:29'),(173,91,'Subinventory','仓库','Subinventory',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:11:48'),(174,91,'Row','行','Row number',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:12:54'),(175,91,'Rack','列','Rack or Column',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:13:01'),(176,91,'Shelf','架','Shelf',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:13:16'),(177,91,'Bin','箱','Bin',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',1,'2017-07-03 11:13:27'),(178,92,'table','table','tabular display',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(179,92,'paragraph','paragraph','paragraph display',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(180,92,'list','list','list display',NULL,0,0,NULL,NULL,'',0,'','',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00'),(249,117,'CONTENT','Content','Content',NULL,1,1,NULL,NULL,'enabled',1,'2013-09-30','',0,'2014-02-08 07:05:18',0,'2014-02-08 07:05:18'),(250,117,'CONTENT_TYPE','Content Type','Content Type',NULL,1,1,NULL,NULL,'enabled',1,'2013-09-17','',0,'2014-02-08 07:05:19',0,'2014-02-08 07:05:19'),(251,117,'CATEGORY','Category','Category',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2013-09-18',NULL,0,'2014-02-08 07:05:18',0,'2014-02-08 07:05:18'),(252,117,'FILE','File','File',NULL,1,1,NULL,NULL,'enabled',1,'2013-09-12',NULL,0,'2014-02-08 07:05:19',0,'2014-02-08 07:05:19'),(253,117,'USER','User','User',NULL,1,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-08 07:05:19',0,'2014-02-08 07:05:19'),(258,98,'BUG_REPORT','Bug','Bug',NULL,1,1,NULL,NULL,'enabled',0,'09/04/2013','',0,'2014-01-29 09:24:01',0,'2014-01-29 09:24:01'),(261,119,'BASIC','基本','Registed User with Basic Privillages',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-09 08:14:30',1,'2017-07-03 11:43:41'),(262,119,'ADMIN','管理员','Administrator with all acess',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-09 08:14:31',1,'2017-07-03 11:43:18'),(263,119,'PLANNER','计划员','Planner',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-09 08:14:30',1,'2017-07-03 11:44:46'),(264,119,'BUYER','购买人','Buyer',0,1,1,NULL,NULL,'enabled',1,'','',0,'2014-06-09 08:14:28',1,'2017-07-03 11:44:05'),(265,120,'SALES','销售','Only Sales Site',NULL,1,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-09-28 14:40:39',1,'2017-07-03 11:14:21'),(266,120,'MFG','生产','Manufacturing',NULL,1,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-09-28 14:40:40',1,'2017-07-03 11:14:05'),(267,120,'MASTER','主','Master Organization',NULL,1,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-09-28 14:40:40',1,'2017-07-03 11:13:56'),(268,120,'DIST','分销','Distribution',NULL,1,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-09-28 14:40:40',1,'2017-07-03 11:13:48'),(269,120,'REPAIR','维修','Only Repair Site',NULL,1,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-09-28 14:40:45',1,'2017-07-03 11:14:14'),(270,121,'LIFO','后进先出','Last In First Out',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2013-09-28 14:45:26',1,'2017-07-03 11:15:12'),(271,121,'Average','平均','Average Costing',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2013-09-28 14:45:26',1,'2017-07-03 11:14:42'),(272,121,'Standard','标准','Standard Costing',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2013-09-28 14:45:26',1,'2017-07-03 11:15:19'),(273,121,'FIFO','先进先出','First In First Out',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2013-09-28 14:45:27',1,'2017-07-03 11:15:03'),(275,122,'BUY','外购','Buy Item',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-10-05 10:34:52',1,'2017-07-03 11:15:34'),(276,122,'MAKE','自制','Make Item',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-10-05 10:28:53',1,'2017-07-03 11:15:40'),(277,123,'ACTIVE','有效','Active',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-10-05 11:18:49',1,'2017-07-03 11:15:54'),(278,123,'INACTIVE','无效','Inactive',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-10-05 11:18:49',1,'2017-07-03 11:16:07'),(279,123,'ENGG','工程','Engineering',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-10-05 11:18:50',1,'2017-07-03 11:16:01'),(280,124,'EXTN','外部','External Suppliers',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-10-12 16:28:27',1,'2017-07-03 08:55:45'),(281,124,'INTN','内部','Internal Suppliers',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-10-12 16:29:23',1,'2017-07-03 08:56:04'),(282,124,'EMPLOYEE','雇员','Employees',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-10-12 16:32:53',1,'2017-07-03 08:55:31'),(283,124,'EXTN_INTL','国外','Externational International',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-10-12 16:32:54',1,'2017-07-03 08:55:56'),(291,311,'BILL_CYCLE_DAYS','Bill Cycle Days ','Bill Cycle Days ',NULL,0,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-01-18 07:25:43',14,'2018-04-03 21:20:05'),(292,311,'DATE_OF_MONTH','Date of Month ','Date of Month ',NULL,0,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-01-18 07:25:43',14,'2018-04-03 21:20:36'),(293,311,'LAST_DAY_OF_MONTH','Last Day of Month','Last Day of Month',NULL,0,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-01-18 07:25:44',14,'2018-04-03 21:25:31'),(294,311,'FIRST_DAY_OF_MONTH','First Day of Month','First Day of Month',NULL,0,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-01-18 07:25:44',14,'2018-04-03 21:22:04'),(295,311,'LAST_WEEKDAY_OF_MONTH','Last Weekday of Month','Last Weekday of Month',NULL,0,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-01-18 07:25:44',14,'2018-04-03 21:25:39'),(296,311,'First Weekday of Month','First Weekday of Month','First Weekday of Month',NULL,0,1,NULL,NULL,'enabled',0,'2001-01-01','',0,'2014-01-18 07:25:46',14,'2018-04-03 21:23:14'),(297,311,'Project Completion Date','Project Completion Date','Project Completion Date',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2001-01-01',NULL,0,'2014-01-18 07:25:45',14,'2018-04-03 21:23:50'),(298,126,'RECEVING','2接收交付','Two step receving - Receipt & Delivery',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:33:35',11,'2017-12-31 21:13:22'),(299,126,'DELIVERY','1交付','One step receving',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:33:35',11,'2017-12-31 21:13:31'),(300,126,'INSPECTION','3接收质检交付','Three step receving - Receipt, Inspection & Delivery',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:33:35',11,'2017-12-31 21:13:56'),(301,127,'4_Way','4路','Four Way Matching',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-10-14 09:11:30',1,'2017-07-03 08:56:59'),(302,127,'3_WAY','3路','Three Way Matching',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-10-14 09:11:30',1,'2017-07-03 08:56:49'),(303,127,'2_WAY','2路','Two Way Matching',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-10-14 09:11:30',1,'2017-07-03 08:56:41'),(304,128,'None','','No Action',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-10-14 09:13:08',0,'2013-10-14 09:13:08'),(305,128,'Reject','','Reject Actvity',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-10-14 09:13:08',0,'2013-10-14 09:13:08'),(306,128,'Warning','','Show Warning Message ',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-10-14 09:13:09',0,'2013-10-14 09:13:09'),(307,81,'WORKING','Working','Working',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-18 09:05:41',18,'0000-00-00 00:00:00'),(308,129,'Purchase','采购','Purchasing Site',NULL,0,1,NULL,NULL,'enabled',0,'','',0,'2013-10-16 08:46:18',1,'2017-07-03 08:57:36'),(309,129,'Pay','支付','Invoice & Payment Site',NULL,0,1,NULL,NULL,'enabled',0,'','',0,'2013-10-16 08:46:18',1,'2017-07-03 08:57:29'),(310,129,'Multipurpose','多功能','Act as both Purchasing & Pay site',NULL,0,1,NULL,NULL,'enabled',0,'','',0,'2013-10-16 08:51:25',1,'2017-07-03 08:57:21'),(311,117,'BLOCK','Block','Block',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-08 07:05:24',0,'2014-02-08 07:05:24'),(312,118,'FIRST','Severity I','Severity I',NULL,0,0,NULL,NULL,'enabled',1,'2013-12-29','',0,'2014-01-29 09:30:48',0,'2014-01-29 09:30:48'),(313,81,'FIXED','Fixed','Fixed',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-18 09:05:41',18,'0000-00-00 00:00:00'),(314,130,'Receipt','接收','Receipt',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-10-17 07:16:17',1,'2017-07-03 08:57:50'),(315,130,'Use','使用','Use',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-10-17 07:16:17',1,'2017-07-03 08:58:14'),(316,130,'Receipt_Use','接收使用','Receipt & Use',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2013-10-17 07:16:18',1,'2017-07-03 08:58:05'),(317,131,'BLANKET','一揽子采购协议','Blanket Purchase Agreement',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-27 06:53:27',1,'2017-07-03 11:24:16'),(318,131,'CONTRACT','协议','Contract Purchase Order',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-27 06:53:27',1,'2017-07-03 11:24:27'),(319,131,'STANDARD','标准','Standard  Purchase Order',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-27 06:53:27',1,'2017-07-03 11:24:31'),(320,132,'ENTERED','确认','Entered',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:36:21',1,'2017-07-03 11:25:02'),(321,132,'INCOMPLETE','编辑','Incomplete',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:36:21',1,'2017-07-03 11:25:09'),(322,132,'CANCELLED','取消','Cancelled',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:36:21',1,'2017-07-03 11:24:50'),(323,132,'CLOSED','关闭','Closed',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:36:21',1,'2017-07-03 11:24:55'),(324,132,'REVIEW','复核','ReView',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:36:22',14,'2018-07-30 14:31:15'),(325,132,'REJECTED','拒绝','Rejected',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:36:26',1,'2017-07-03 11:25:55'),(326,132,'APPROVED','审批','Approved',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:36:27',1,'2017-07-03 11:24:44'),(327,132,'INPROCESS','处理中','Inprocess',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:36:27',1,'2017-07-03 11:25:18'),(328,133,'SERVICES','服务','Services',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-14 06:57:16',14,'2018-02-20 09:16:58'),(329,133,'GOODS','物品','Goods',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-14 06:57:16',14,'2018-02-20 09:17:03'),(330,134,'SGD','Sing Dollar','Singapore Dollars',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-02-10 01:41:55',10,'0000-00-00 00:00:00'),(331,134,'GBP','Britain Pound','Bretain Pound',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-02-10 01:41:55',10,'0000-00-00 00:00:00'),(332,134,'INR','Indian Rupees','Indian Ruppes',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-02-10 01:41:55',10,'0000-00-00 00:00:00'),(333,134,'USD','US Dollar','US Dollars',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-02-10 01:41:54',10,'0000-00-00 00:00:00'),(334,134,'EUR','Euro','Euro',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 10:54:00',0,'2002-08-14 10:54:00'),(335,311,'Weekday Each','Weekday Each','Weekday Each',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2001-01-01',NULL,0,'2014-01-18 07:25:45',14,'2018-04-03 21:24:18'),(336,132,'ONHOLD','挂起','On Hold',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-22 07:36:27',1,'2017-07-03 11:25:27'),(337,135,'PUSH','人工推式','Push - Manually transacted items',NULL,0,1,NULL,NULL,'enabled',0,'2013-12-11','2014-01-03',0,'2014-01-03 13:53:19',1,'2017-07-03 12:16:33'),(338,135,'ASSEMBLY_PULL','装配拉式','Back flashed at WIP completion',NULL,0,1,NULL,NULL,'enabled',0,'2014-01-03','2014-01-03',0,'2014-01-03 13:53:20',11,'2018-01-05 10:24:08'),(339,135,'OPERATION_PULL','操作拉式','Back flashed at each operation',NULL,0,1,NULL,NULL,'enabled',0,'2014-01-03','2014-01-03',0,'2014-01-03 13:53:20',11,'2018-01-05 10:24:13'),(340,135,'BULK','批量','Not transacted items - expensed',NULL,0,1,NULL,NULL,'enabled',0,'2014-01-03','2014-01-03',0,'2014-01-03 13:53:21',1,'2017-07-03 12:15:57'),(341,136,'MACHINE','机器','Machine',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-12-13 15:40:56',1,'2017-07-03 09:34:53'),(342,136,'PERSON','人','Person',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-12-16 01:46:03',1,'2017-07-03 09:35:07'),(343,137,'MANUAL','人工计费','Manually Charged',NULL,0,1,NULL,NULL,'enabled',0,'2001-01-01',' ',0,'2014-01-03 14:06:20',11,'2017-12-26 19:41:46'),(344,137,'PO_RECEIPT','OSP接收时计费','Charged on OSP PO receipt',NULL,0,0,NULL,NULL,'enabled',0,'2001-01-01',' ',0,'2014-01-03 14:06:20',14,'2018-02-08 20:08:51'),(345,137,'WIP_MOVE','工单移动时自动计费','Auto Charged on WIP Move',NULL,0,1,NULL,NULL,'enabled',0,'2001-01-01',' ',0,'2014-01-03 14:06:21',11,'2017-12-26 19:40:54'),(346,137,'PO_MOVE','OSP接收后移动时计费','Charged on WIP move after OSP PO receipt',NULL,0,1,NULL,NULL,'enabled',0,'2001-01-01',' ',0,'2014-01-03 14:06:20',11,'2017-12-26 19:43:17'),(347,136,'AMOUNT','总额','Amount',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-12-16 01:48:33',1,'2017-07-03 09:34:40'),(348,136,'MISC','杂项','Miscellaneous',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-12-16 01:48:37',1,'2017-07-03 09:35:00'),(349,136,'CURRENCY','货币','Currency',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2013-12-16 01:48:39',1,'2017-07-03 09:34:46'),(350,138,'LOT','批','Per each lot',NULL,0,1,NULL,NULL,'enabled',0,'2001-01-01','2014-01-03',0,'2014-01-03 13:57:48',1,'2017-07-03 09:44:38'),(351,138,'ITEM','项','Per each item',NULL,0,1,NULL,NULL,'enabled',0,'2001-01-01',' ',0,'2014-01-03 13:57:48',1,'2017-07-03 09:44:29'),(352,138,'RESOURCE_UNIT','资源单位','Per resource unit',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2001-01-01',' ',0,'2014-01-03 13:57:48',1,'2017-07-03 09:45:01'),(353,138,'TOTAL_VALUE','总值','Per total value',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2001-01-01',' ',0,'2014-01-03 13:57:49',1,'2017-07-03 09:45:19'),(354,138,'RESOURCE_VALUE','资源值','Per resource value',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2001-01-01',' ',0,'2014-01-03 13:57:48',1,'2017-07-03 09:45:11'),(355,139,'OH','资源费用','Resource Over Head',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-04-30 13:30:47',1,'2017-07-03 09:45:53'),(356,139,'MOH','物料费用','Material Over Head',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-04-30 13:30:48',1,'2017-07-03 09:45:41'),(357,140,'Cleaning','清洁','Cleaning Dept',NULL,0,1,NULL,NULL,'enabled',0,'','',0,'2013-12-19 07:26:49',1,'2017-07-09 09:25:18'),(358,140,'Testing','测试','Testing & Final Testing',NULL,0,1,NULL,NULL,'enabled',0,' ',' ',0,'2013-12-19 07:26:50',1,'2017-07-09 09:25:54'),(359,140,'Burn in','Burn in','Burn in station',NULL,0,1,NULL,NULL,'enabled',0,' ',' ',0,'2013-12-19 07:26:51',0,'2017-05-17 16:39:11'),(360,140,'Packaging','包装','Packaging',NULL,0,1,NULL,NULL,'enabled',0,' ',' ',0,'2013-12-19 07:26:52',1,'2017-07-09 09:24:45'),(361,140,'Assembly','装配','Assembly Area',NULL,0,1,NULL,NULL,'enabled',0,' ',' ',0,'2013-12-19 07:26:52',1,'2017-07-03 09:46:27'),(362,141,'YES','是','Yes, Scheduled',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2014-01-03','2014-01-03',0,'2014-01-03 14:02:31',1,'2017-07-03 09:47:47'),(363,141,'PRIOR','前一步','Start with the prior operation',NULL,NULL,1,NULL,NULL,'enabled',NULL,' ',' ',0,'2014-01-03 14:02:31',1,'2017-07-03 09:47:42'),(364,141,'NEXT','下一步','Start with the next operation',NULL,NULL,1,NULL,NULL,'enabled',NULL,' ',' ',0,'2014-01-03 14:02:31',1,'2017-07-03 09:47:22'),(365,141,'NO','无','Not Scheduled',NULL,NULL,1,NULL,NULL,'enabled',NULL,' ',' ',0,'2014-01-03 14:02:31',1,'2017-07-03 09:47:29'),(366,118,'SECOND','Severity II','Severity II',NULL,0,0,NULL,NULL,'enabled',1,'2013-12-29','2014-01-29',0,'2014-01-29 09:30:48',0,'2014-01-29 09:30:48'),(367,142,'NON_STANDARD','非标','Non-Standard',NULL,0,1,NULL,NULL,'enabled',0,'2013-12-30',' ',0,'2014-01-03 13:55:10',1,'2017-07-03 12:16:44'),(368,142,'STANDARD','标准','Standard Work Order',NULL,NULL,1,NULL,NULL,'enabled',NULL,' ',' ',0,'2014-01-03 13:55:10',1,'2017-07-03 12:17:58'),(369,143,'UN_RELEASED','未发布','Un Released Work Order',NULL,0,1,NULL,NULL,'enabled',0,'2014-01-02','2014-01-03',0,'2014-01-03 14:11:49',1,'2017-07-03 12:18:43'),(370,143,'RELEASED','发布','Released Work Order',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2014-01-03','2014-01-03',0,'2014-01-03 14:11:49',1,'2017-07-03 12:18:36'),(371,143,'ON_HOLD','挂起','OnHold Work Order',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2014-01-03','2014-01-03',0,'2014-01-03 14:11:48',1,'2017-07-03 12:18:28'),(372,143,'WAIT_FOR_CLOSE','待关闭','WiatingForClosing Work Order',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2014-01-03','2014-01-03',0,'2014-01-03 14:11:48',1,'2017-07-03 12:18:53'),(373,143,'COMPLETED','完成','Completed Work Order',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2014-01-03','2014-01-03',0,'2014-01-03 14:11:49',1,'2017-07-03 12:18:20'),(374,143,'CLOSED','关闭','Closed Work Order',NULL,NULL,1,NULL,NULL,'enabled',NULL,'2014-01-03','2014-01-03',0,'2014-01-03 14:11:47',1,'2017-07-03 12:18:15'),(375,144,'WIP_RETURN','组装返回','WIP Assembly Return Transaction',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-11 07:52:16',1,'2017-07-03 12:20:14'),(376,144,'WIP_COMPLETION','装配完成','WIP Aseembly Completion Transaction',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-11 07:52:16',1,'2017-07-03 12:19:08'),(377,144,'WIP_MOVE','工序移动','WIP Move Transaction',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-11 07:52:16',1,'2017-07-03 12:19:27'),(378,145,'running','加工','Actual Operation',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-07 09:18:28',1,'2017-07-03 12:20:55'),(379,145,'rejected','拒接','Rejected Quantity',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-07 09:18:28',1,'2017-07-03 12:20:44'),(380,145,'tomove','移动','Running completed & ready to move',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-07 09:18:29',1,'2017-07-03 12:21:08'),(381,145,'scrapped','报废','Scrapped Quantity',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-07 09:18:29',1,'2017-07-03 12:21:02'),(382,145,'queue','排队','Queue step is the sum of setup & queue tim',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-07 09:18:30',1,'2017-07-03 12:20:26'),(383,144,'WIP_RESOURCE_TRANSACTION','资源交易','Work Order Resource Transaction',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-11 07:52:16',1,'2017-07-03 12:19:43'),(384,146,'ALL','全部','Can be used for all purpose',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-18 06:49:28',1,'2017-07-03 09:17:13'),(385,146,'BILL_TO','账单','Customer bill to site',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-18 06:49:28',1,'2017-07-03 09:17:33'),(386,146,'SHIP_TO','货运','Customer ship to site',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-18 06:49:28',1,'2017-07-03 09:17:46'),(387,147,'EXTERNAL_FORGEIN','国外','External Forgein Customer',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-18 07:00:51',1,'2017-07-03 09:18:06'),(388,147,'INTERNAL','内部','Internal Customer',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-18 07:00:52',1,'2017-07-03 09:18:13'),(389,147,'EXTERNAL','外部','External Customer',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-18 07:00:52',1,'2017-07-03 09:18:01'),(390,148,'1','A++','Second Class Credit Rating',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-18 07:19:55',0,'2014-01-18 07:19:55'),(391,148,'2','A+','Best Credit Class',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-18 07:19:55',0,'2014-01-18 07:19:55'),(392,148,'3','A-','Third',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-18 07:19:56',0,'2014-01-18 07:19:56'),(393,148,'4','A--','Fourth',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-18 07:19:55',0,'2014-01-18 07:19:55'),(394,119,'ENGINEER','工程师','Engineer',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-09 08:14:28',1,'2017-07-03 11:44:19'),(395,149,'FORUM','Forum','Forum type list in a table',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-26 06:10:44',0,'2014-01-26 06:10:44'),(396,149,'NORMAL','Normal','Normal list with subject & summary',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-26 06:10:43',0,'2014-01-26 06:10:43'),(397,150,'int','Integer','Intgere Values',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-27 15:02:11',0,'2014-01-27 15:02:11'),(398,150,'enum','Enum List','Enum List',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-27 15:02:11',0,'2014-01-27 15:02:11'),(399,150,'tinyint','Boolean','Check Box for Boolean ',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-27 15:02:12',0,'2014-01-27 15:02:12'),(400,150,'varchar','Small Text','Varchar for small text',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-01-27 15:02:12',0,'2014-01-27 15:02:12'),(401,150,'text','Large Text','Text area for Large Text',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-27 15:02:13',0,'2014-01-27 15:02:13'),(402,150,'date','Date','Date Field',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-27 15:02:17',0,'2014-01-27 15:02:17'),(403,150,'float','Flolat','Float Number',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-27 15:02:17',0,'2014-01-27 15:02:17'),(404,150,'option','Option List','Option List',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-27 15:02:18',0,'2014-01-27 15:02:18'),(405,81,'CLOSED','Closed','Closed',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-18 09:05:41',18,'0000-00-00 00:00:00'),(406,98,'SUPPORT','Support','Support Request',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-29 09:23:59',0,'2014-01-29 09:23:59'),(407,98,'ENHANCE','Enhancement','Enhacemenet Request',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-29 09:24:00',0,'2014-01-29 09:24:00'),(408,118,'FOURTH','Severity IV','Severity IV',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-29 09:30:47',0,'2014-01-29 09:30:47'),(409,118,'THIRD','Severity III','Severity III',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-01-29 09:30:48',0,'2014-01-29 09:30:48'),(410,119,'ANONYMOUS','匿名','Anonymous',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-09 08:14:28',1,'2017-07-03 11:43:34'),(411,151,'GL_COA','Chart of Account','Chart of Account',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-02 12:10:10',0,'2014-02-02 12:10:10'),(412,151,'INV_ITEM_CATALOG','Item Catalog','Item Catalog',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-02-02 12:10:11',0,'2014-02-02 12:10:11'),(413,151,'INV_ITEM_CATEGORY','Item Categories','Item Categories',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-02-02 12:10:11',0,'2014-02-02 12:10:11'),(414,152,'NONE','None','No Validation',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-04 02:10:55',0,'2014-02-04 02:10:55'),(415,152,'DEPENDENT','Dependent','Dependent values',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-02-04 02:10:55',0,'2014-02-04 02:10:55'),(416,152,'INDEPENDENT','Independent','Independent Value',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-02-04 02:10:56',0,'2014-02-04 02:10:56'),(417,152,'TABLE','Table','Validated with a table data',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-02-04 02:10:56',0,'2014-02-04 02:10:56'),(418,153,'YEAR','年','1 Year',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-07 09:08:18',1,'2017-07-03 10:09:21'),(419,153,'WEEK','周','53 Weeks per year',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-07 09:08:17',1,'2017-07-03 10:09:12'),(420,153,'QUARTER','季','4 Quarters per year',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-07 09:08:18',1,'2017-07-03 10:09:00'),(421,153,'MONTH','月','12 Months Per year',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-07 09:08:17',1,'2017-07-03 10:08:55'),(424,154,'CORP_CALENDAR','企业财务日历','Main Corporate Calendar',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-06 12:37:14',1,'2017-07-03 10:09:49'),(425,117,'PHP','Php','Php',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-02-08 07:05:24',0,'2014-02-08 07:05:24'),(426,155,'B','预算','Budgeted Balance',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-27 07:07:15',1,'2017-07-03 10:12:11'),(427,155,'E','财产负担','Encumbrance Balance',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-27 07:07:15',1,'2017-07-03 10:13:44'),(428,155,'A','实际','Actual Balance',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-27 07:07:23',1,'2017-07-03 10:12:43'),(429,156,'ENTERED','确认','Entered',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-02 12:03:19',1,'2017-07-03 10:17:56'),(430,156,'ERROR','错','Error',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-02 12:03:19',1,'2017-07-03 10:18:06'),(431,156,'APPROVED','审批','Approved',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-02 12:12:28',1,'2017-07-03 10:17:50'),(432,156,'INPROCESS','处理中','In Approval Procecc',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-02 12:03:18',1,'2017-07-03 10:18:17'),(433,156,'REVERSED','保留','Reversed',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-02 12:03:19',1,'2017-07-03 10:19:25'),(434,156,'POSTED','已过账','Posted',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-02 12:03:19',14,'2018-02-26 20:45:58'),(435,157,'AP_TRANSACTIONS','应付交易','AP Transactions',NULL,NULL,0,NULL,NULL,'enabled',NULL,'2000-01-01',NULL,0,'2014-03-15 04:37:13',1,'2017-07-03 10:21:26'),(436,157,'AP_BORROWED_AND_LENT','应付租借','AP Borrowed and Lent',NULL,NULL,0,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',1,'2017-07-03 10:20:38'),(437,157,'AP_CLAIMS','应付申请','AP Claims',NULL,NULL,0,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',1,'2017-07-03 10:20:50'),(438,157,'AP_PAYMENTS','应付支付','AP Payments',NULL,NULL,0,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',1,'2017-07-03 10:21:17'),(439,157,'AR_BANK_CHARGES','应收银行费用','AR Bank Charges',NULL,NULL,0,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',1,'2017-07-03 10:22:14'),(440,157,'AR_BANK_RECEIPTS','应收银行收入','AR Bank Receipts',NULL,NULL,0,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',1,'2017-07-03 10:31:11'),(441,157,'AR_BANK_STATEMENTS','应收银行报表','AR Bank Statements',NULL,NULL,0,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',1,'2017-07-03 10:24:06'),(442,157,'AR_BANK_TRANSFERS','应收银行转账','AR Bank Transfers',NULL,NULL,0,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',1,'2017-07-03 10:24:41'),(443,157,'AR_CHARGE_BACK','应收拒付','AR Chargebacks',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:15:56',1,'2017-07-03 10:25:02'),(444,157,'AR_CREDIT_MEMO','应收贷项通知','AR Credit Memos',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:15:56',1,'2017-07-03 10:25:48'),(445,157,'AR_DEBIT_MEMO','应收借项通知','AR Debit Memos',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:15:56',1,'2017-07-03 10:26:09'),(446,157,'AR_DEPOSIT','应收定金','AR Deposits',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:15:56',1,'2017-07-03 10:27:01'),(447,157,'AR_GUARENTEE','应收折扣','AR Discounts',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:15:56',1,'2017-07-03 10:27:12'),(448,157,'AR_INVOICE','应收销售发票','AR Sales Invoice',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:15:57',1,'2017-07-03 10:27:27'),(449,157,'AR_MISC_RECEIPTS','应收杂项收入','AR Misc Receipts',NULL,NULL,0,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',1,'2017-07-03 10:29:17'),(450,157,'AR_RECEIPTS','应收收入','AR Receipts',NULL,NULL,0,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',1,'2017-07-03 10:29:27'),(451,157,'AR_PREPAYMENT','应收预付款','AR Pre Payment',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:15:57',1,'2017-07-03 10:28:59'),(452,157,'FA_ADDITION','固资附加','FA Addition',NULL,NULL,0,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',1,'2017-07-03 10:30:50'),(453,157,'FA_AMORTIZATION','FA Amortization','FA Amortization',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',0,'2014-02-27 10:05:00'),(454,157,'FA_ASSET_DISPOSITION','FA Asset Disposition','FA Asset Disposition',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',0,'2014-02-27 10:05:00'),(455,157,'FA_CIP_ADDITION','FA CIP Addition','FA CIP Addition',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',0,'2014-02-27 10:05:00'),(456,157,'FA_CIP_ADJUSTMENT','FA CIP Adjustment','FA CIP Adjustment',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:00',0,'2014-02-27 10:05:00'),(457,157,'FA_CIP_RECLASSIFICATION','FA CIP Reclassification','FA CIP Reclassification',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(458,157,'FA_CIP_RETIREMENT','FA CIP Retirement','FA CIP Retirement',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(459,157,'FA_CIP_REVALUATION','FA CIP Revaluation','FA CIP Revaluation',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(460,157,'FA_CIP_TRANSFER','FA CIP Transfer','FA CIP Transfer',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(461,157,'FA_DEPRECIATION','FA Depreciation','FA Depreciation',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(462,157,'FA_DEPRECIATION_ADJUSTMENT','FA Depreciation Adjustment','FA Depreciation Adjustment',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(463,157,'FA_RECLASS','FA Reclass','FA Reclass',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(464,157,'GL_ADJUSTMENT','GL Adjustment','GL Adjustment',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(465,157,'GL_ALLOCATION','GL Allocation','GL Allocation',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(466,157,'GL_BALANCE_SHEET_CLOSE','GL Balance Sheet Close','GL Balance Sheet Close',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(467,157,'GL_BUDGET','GL Budget','GL Budget',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(468,157,'GL_CANCELLATION','GL Cancellation','GL Cancellation',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(469,157,'GL_INTERCOMPANY_TRANSFER','GL Intercompany Transfer','GL Intercompany Transfer',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(470,157,'GL_MISCELLANEOUS','GL Miscellaneous','GL Miscellaneous',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(471,157,'GL_WRITE_OFF','GL Write-off','GL Write-off',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(472,157,'HR_APPLICATION_FEE','HR Application Fee','HR Application Fee',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(473,157,'HR_PAYROLL','HR Payroll','HR Payroll',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(474,157,'INV_INVENTORY','INV Inventory','INV Inventory',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(475,157,'INV_MISCELLANEOUS_TRANSACTION','INV Miscellaneous Transaction','INV Miscellaneous Transaction',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(476,157,'INV_RECEIVING','INV Receiving','INV Receiving',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(477,157,'PA_BURDEN_COST','PA Burden Cost','PA Burden Cost',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(478,157,'PA_LABOR_COST','PA Labor Cost','PA Labor Cost',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(479,157,'PO_ACCRUAL','PO Accrual','PO Accrual',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(480,157,'PO_REQUISITIONS','PO Requisitions','PO Requisitions',NULL,NULL,NULL,NULL,NULL,'',NULL,'2000-01-01',NULL,0,'2014-02-27 10:05:01',0,'2014-02-27 10:05:01'),(481,158,'PERM_CLOSED','永久关闭','Permanently Closed Period',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-28 01:56:35',1,'2017-07-03 10:32:45'),(482,158,'CLOSED','关闭','Closed Period',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-28 01:56:36',1,'2017-07-03 10:31:35'),(483,158,'OPEN','开放','Open Period',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-28 01:56:36',1,'2017-07-03 10:32:10'),(484,158,'AVAILABLE','有效','Period Defined in Calendar',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-28 01:56:36',1,'2017-07-03 10:31:27'),(485,158,'FUTURE','未来开放','Future Entry Enabled Period',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-02-28 01:56:36',14,'2018-02-12 10:00:35'),(486,156,'UNPOSTED','未过账','Unposted',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-02 12:03:19',14,'2018-02-26 20:46:10'),(487,157,'GL_REVERSAL','GL Reversal','GL Reversal',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-03-03 03:04:14',0,'2014-03-03 03:04:14'),(488,159,'CANCELLED','取消','Cancelled',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-24 07:38:04',1,'2017-07-03 11:45:48'),(489,159,'INCOMPLETE','编辑','Incomplete',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-24 07:38:01',1,'2017-07-03 11:46:01'),(490,159,'APPROVED','审批','Approved',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-24 07:38:04',1,'2017-07-03 11:45:42'),(491,159,'REAPPROVAL','重新审批','Require ReApproval',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-24 07:38:02',1,'2017-07-03 11:46:29'),(492,159,'ENTERED','确认','Entered',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-24 07:38:03',1,'2017-07-03 11:45:54'),(493,159,'INPROCESS','处理中','Inprocess',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-24 07:38:02',1,'2017-07-03 11:46:08'),(494,159,'ONHOLD','挂起','On Hold',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-24 07:38:03',1,'2017-07-03 11:46:16'),(495,160,'EXPENSE_REPORT','报销单','Expense Report',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-13 10:50:06',1,'2017-07-03 09:03:59'),(496,160,'INVOICE','发票','Standard Invoice',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-13 10:50:06',1,'2017-07-03 09:05:20'),(497,160,'CREDIT_MEMO','贷项通知单','Credit Memo',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-13 10:50:08',1,'2017-07-03 09:01:01'),(498,160,'DEBIT_MEMO','借项通知单','Debit Memo',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-13 10:50:05',1,'2017-07-03 09:02:14'),(499,160,'PREPAYMENT','预付费','Pre Payment',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-13 10:50:07',1,'2017-07-03 09:06:05'),(501,133,'FREIGHT','运输','Freight',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-14 06:57:16',14,'2018-02-20 09:17:09'),(502,160,'PO_DEFAULT','采购缺省','PO Default',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-03-13 10:50:07',1,'2017-07-03 09:06:20'),(503,133,'MISC','杂项','Miscellaneous',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-03-14 06:57:15',14,'2018-02-20 09:16:50'),(504,161,'ITEM','项','Item',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-14 06:58:47',1,'2017-07-03 10:34:15'),(505,161,'TAX','税','Tax',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-14 06:58:47',1,'2017-07-03 10:34:29'),(506,161,'MISC','杂项','Miscellaneous',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-14 06:58:48',1,'2017-07-03 10:34:21'),(507,161,'FREIGHT','货运','Freight',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-14 06:58:48',1,'2017-07-03 10:34:06'),(508,162,'REFUND','返款','Refund to Supploier',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-17 03:57:13',1,'2017-07-03 09:09:34'),(509,162,'MANUAL','人工','Manually Entered',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-17 03:57:13',1,'2017-07-03 09:07:17'),(510,162,'MULTI_SELECT','多项','Created Using Multi Select',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-17 03:57:13',1,'2017-07-03 09:08:22'),(511,164,'DEPOSIT','定金','Deposit Transaction',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:10:00',1,'2017-07-03 09:28:23'),(512,164,'INVOICE','发票','Standard Invoice',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:10:00',1,'2017-07-03 09:28:59'),(513,164,'CREDIT_MEMO','贷项通知单','Credit Memo',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:10:00',1,'2017-07-03 09:26:54'),(514,164,'DEBIT_MEMO','借项通知单','Debit Memo',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:09:59',1,'2017-07-03 09:27:09'),(515,164,'PREPAYMENT','预支付','Pre Payment Transaction',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:10:01',1,'2017-07-03 09:29:07'),(516,164,'GUARENTEE','保证金','Guarentee',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:10:00',1,'2017-07-03 09:28:51'),(517,164,'CHARGE_BACK','拒付','Charge Back',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-08 09:09:59',1,'2017-07-03 09:25:53'),(518,163,'CREATE_ACCOUNT','记账','Create Accounting',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-22 10:25:59',1,'2017-07-03 09:20:18'),(519,163,'VIEW_JOURNAL','查看日记账','View Journal',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-22 10:25:59',1,'2017-07-03 09:21:41'),(520,163,'CREDIT','贷出交易','Credit Transaction',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-22 10:25:59',1,'2017-07-03 09:20:42'),(521,163,'CANCEL','取消','Cancel Transaction',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-22 10:25:59',1,'2017-07-03 09:18:40'),(522,163,'RECEIPT','接受','Create Receipt',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-22 10:26:00',1,'2017-07-03 09:21:07'),(523,165,'MISC','杂项','Miscellaneous',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-24 11:15:37',1,'2017-07-03 09:29:22'),(524,165,'STANDARD','标准','Standard',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-24 11:15:38',1,'2017-07-03 09:29:37'),(529,165,'MULTI_SELECT','多项','Multi Select',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-03-25 04:35:31',1,'2017-07-03 09:29:31'),(530,166,'EXTERNAL','外部','Standard  Purchase Order',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-25 08:40:23',1,'2017-07-03 11:30:21'),(531,166,'BLANKET','一揽子协议','Blanket Purchase Agreement',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-25 08:40:23',1,'2017-07-03 11:30:06'),(532,166,'INTERNAL','内部','Contract Purchase Order',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-03-25 08:40:24',1,'2017-07-03 11:30:27'),(533,167,'ENTERED','确认','2. Entered',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-02 02:49:38',1,'2017-07-03 11:31:13'),(534,167,'SHIPPED','发货','6. Shipped',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-02 02:49:36',1,'2017-07-03 11:32:03'),(535,167,'BOOKED','登记','3. Booked',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-02 02:49:36',1,'2017-07-03 11:30:59'),(536,167,'PICKED','分捡','5. Picked',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-02 02:49:36',1,'2017-07-03 11:31:56'),(537,167,'INCOMPLETE','编辑','1. Incomplete',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-02 02:49:38',1,'2017-07-03 11:31:20'),(538,167,'CLOSED','关闭','8. Closed',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-02 02:49:36',1,'2017-07-03 11:31:05'),(539,167,'PENDING_INVOICE','待开发票','7. Pending Invoice',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-02 02:49:37',1,'2017-07-03 11:32:54'),(540,167,'INPROCESS','处理中','20. Inprocess',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-02 02:49:37',1,'2017-07-03 11:31:28'),(541,167,'ONHOLD','挂起','19. On Hold',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-02 02:49:37',1,'2017-07-03 11:31:38'),(547,168,'RES','资源','Resource Element',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-05-05 02:53:47',1,'2017-07-03 09:48:40'),(548,168,'MAT','物料','Material Element',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-05-05 02:53:47',1,'2017-07-03 09:48:00'),(549,168,'MOH','物料费用','Material Over Head Element',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-05-05 02:53:47',1,'2017-07-03 09:48:08'),(550,168,'OH','资源费用','Over Head Element',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-05-05 02:53:47',1,'2017-07-03 09:48:21'),(551,168,'OSP','外包','Outside Processing Element',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-05-05 02:53:47',1,'2017-07-03 09:49:56'),(552,169,'CREATE_ACCOUNT','记账','Create Accounting',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-04-14 04:07:56',1,'2017-07-03 09:54:02'),(553,169,'COST_ROLLUP','成本卷积','Cancel Transaction',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-04-14 04:07:56',1,'2017-07-03 09:52:51'),(554,169,'COST_UPDATE','成本更新','Standard Cost Update',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-04-14 04:07:56',1,'2017-07-03 09:53:53'),(555,169,'VIEW_JOURNAL','查看账目','View Journal',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-04-14 04:07:56',1,'2017-07-03 09:54:21'),(556,170,'MINMAX','Min Max','Min Max Planning',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-05-08 01:03:10',0,'2008-05-14 01:03:10'),(557,170,'MPS','MPS','MPS Planning',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-05-08 01:03:10',0,'2008-05-14 01:03:10'),(558,170,'KANBAN','Kanban','Kanban Planning',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-05-08 01:03:10',0,'2008-05-14 01:03:10'),(559,170,'MRP','MRP','MRP Planning',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-05-08 01:03:10',0,'2008-05-14 01:03:10'),(560,157,'CST_ADJUSTMENT','成本调整','CST Cost Adjustment',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-04-26 05:09:42',1,'2017-07-03 10:29:39'),(561,157,'WIP_RESOURCE','WIP Resource','WIP Resource Transaction',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-04-28 11:43:44',0,'2014-04-28 11:43:44'),(562,171,'INTERNAL','内部','Internal Requisition',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-01 07:43:40',1,'2017-07-03 11:27:21'),(563,171,'EXTERNAL','外部','External Requisition',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-01 07:43:40',1,'2017-07-03 11:27:15'),(564,172,'INTERNAL_BUY','内部购买','Buy from Internal Organization',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-02 14:06:54',1,'2017-07-03 11:27:46'),(565,172,'INTERNAL_MAKE','自制','Make In Internal Organization',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-02 14:06:54',1,'2017-07-03 11:27:56'),(566,172,'EXTERNAL','外部','External Purchase',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-02 14:06:54',1,'2017-07-03 11:27:33'),(567,173,'DAILY','Daily','Daily Bucket',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-03 13:05:53',0,'2014-05-03 13:05:53'),(568,173,'WEEKLY','Weekly','Weekly Bucket',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-03 13:05:53',0,'2014-05-03 13:05:53'),(569,173,'PERIOD','Period','Periodic Bucket',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-03 13:05:53',0,'2014-05-03 13:05:53'),(570,174,'SUPPLY_PLAN','Supply Plan','Supply Planning',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-05 02:53:20',0,'2014-05-05 02:53:20'),(571,174,'MRP','MRP','MRP Planning',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-05 02:53:20',0,'2014-05-05 02:53:20'),(572,174,'DEMAND_PLAN','Demand Plan','Demand Planning',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-05 02:53:20',0,'2014-05-05 02:53:20'),(573,174,'FORECAST','Forecast','Forecast Source List',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-05 02:53:20',0,'2014-05-05 02:53:20'),(574,174,'SOP','Sales & Operation','Sales & Operation Planning',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-05 02:53:20',0,'2014-05-05 02:53:20'),(575,175,'SUPPLY_ENTRY','SP Entries','Supply Plan Entries',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-05 03:01:46',0,'2014-05-05 03:01:46'),(576,175,'SOP_ENTRY','SOP Entries','Sales & Operation Plan Entries',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-05 03:01:46',0,'2014-05-05 03:01:46'),(577,175,'FORECAST_ENTRY','Forecast Entries','Forecast Entries',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-05 03:01:46',11,'2018-05-25 16:24:49'),(578,175,'DEMAND_ENTRY','DP Entries','Demand Plann Entries',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-05 03:01:46',0,'2014-05-05 03:01:46'),(579,176,'SALES_ORDER','Sales Order','Sales Order',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-06 04:54:02',0,'2014-05-06 04:54:02'),(580,176,'DEPENDENT','Dependent','Dependent Demand',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-06 04:54:03',0,'2014-05-06 04:54:03'),(581,176,'FORECAST','Forecast','Forecast',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-06 04:54:03',0,'2014-05-06 04:54:03'),(582,170,'MULTI_MINMAX','Multi Bin Min Max','Multi Bin Min Max',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-08 01:03:10',0,'2014-05-08 01:03:10'),(583,177,'PC_A_100','PC A 100','PC A 100',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-08 01:56:24',0,'2014-05-08 01:56:24'),(584,177,'NO_LINE','Not Assigned','Not Assigned',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-08 01:56:24',0,'2014-05-08 01:56:24'),(585,177,'PC_A_150','PC A 150','PC A 150',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-08 01:56:24',0,'2014-05-08 01:56:24'),(586,177,'MOBILE_X_07','Mobile X 7 Series','Mobile X 7 Series',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-08 01:56:24',0,'2014-05-08 01:56:24'),(587,177,'MOBILE_L_15','Mobile L 15','Kanban Planning',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-08 01:56:24',0,'2014-05-08 01:56:24'),(588,177,'TV_FLAT_X_100','TV Flat X 100','TV Flat X 100',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-08 01:56:25',0,'2014-05-08 01:56:25'),(589,177,'MW_LETO_01','MW LETO 01','MW LETO 01',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-08 01:56:25',0,'2014-05-08 01:56:25'),(590,177,'TV_FLAT_X_101A','TV Flat X 100A','TV Flat X 100A',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-08 01:56:25',0,'2014-05-08 01:56:25'),(591,177,'MW_LETO_02','MW LETO 02','MW LETO 02',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-08 01:56:25',0,'2014-05-08 01:56:25'),(592,178,'NO_ROUND','No Rounding','No Rounding',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-09-01 10:43:44',0,'2001-09-14 10:43:44'),(593,178,'ROUND_UP','Round Up','Round Up',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-09-01 10:43:44',0,'2001-09-14 10:43:44'),(594,178,'ROUND_DOWN','Round Down','Round Down',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-09-01 10:43:44',0,'2001-09-14 10:43:44'),(595,178,'ROUND','Round','Round to Nearest',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-09-01 10:43:43',0,'2001-09-14 10:43:43'),(596,179,'PAST_DUE','Past Due','Past Due',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-21 09:32:09',0,'2014-05-21 09:32:09'),(597,179,'RESCHDULE_OUT','Reschdule OUT','Reschdule OUT',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-21 09:32:10',0,'2014-05-21 09:32:10'),(598,179,'EXCESS','Excess','Excess',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-05-21 09:32:11',0,'2014-05-21 09:32:11'),(599,179,'RESCHDULE_IN','Reschdule IN','Reschdule IN',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-21 09:32:11',0,'2014-05-21 09:32:11'),(600,179,'COMPRESSED_LT','Compressed LT','Compressed LT',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-21 09:32:12',0,'2014-05-21 09:32:12'),(601,88,'RAW','原材料','Raw',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-28 16:52:55',14,'2018-02-20 09:17:52'),(602,88,'WIP','工单','WIP',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-28 16:52:56',14,'2018-02-20 09:17:57'),(603,88,'FGI','完工产品','FGI',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-05-28 16:52:56',14,'2018-02-20 09:18:02'),(604,167,'AWAITING_PICKING','待分捡','4. Awaiting Picking',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-02 02:49:37',1,'2017-07-03 11:30:51'),(605,180,'SALES_TAX','营业税','Sales Tax',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-06-03 02:56:45',11,'2017-12-07 16:39:04'),(606,180,'VAT','VAT','Value Added Tax',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-06-03 02:56:46',0,'2014-06-03 02:56:46'),(607,180,'GST','增值税','Goods and Services Tax',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 02:56:46',11,'2017-12-07 16:37:26'),(608,180,'EXCISE','消费税','Excise',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-06-03 02:56:47',11,'2017-12-07 16:37:49'),(609,180,'TARIFF','进出口关税','Tariff - Export & Import',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 02:56:48',11,'2017-12-07 16:38:34'),(610,311,'Week ','Week ','Week ',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 13:00:15',14,'2018-04-03 21:24:49'),(611,311,'User-Defined','User-Defined','User-Defined',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 13:00:18',14,'2018-04-03 21:25:10'),(612,125,'IT','Italy','Italy',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 13:00:21',0,'2014-06-03 13:00:21'),(613,125,'CN','China','China',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 13:00:23',0,'2014-06-03 13:00:23'),(614,125,'FR','France','France',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 13:00:28',0,'2014-06-03 13:00:28'),(615,125,'BR','Brazil','Brazil',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 13:00:31',0,'2014-06-03 13:00:31'),(616,125,'ES','Spain','Spain',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 13:00:33',0,'2014-06-03 13:00:33'),(617,125,'JP','Japan','Japan',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 13:00:36',0,'2014-06-03 13:00:36'),(618,125,'MX','Mexico','Mexico',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 13:00:39',0,'2014-06-03 13:00:39'),(619,125,'KR','South Korea','South Korea',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-03 13:00:42',0,'2014-06-03 13:00:42'),(620,181,'MILITARY_EQUIPMENT','Military Equipment','Military Equipment',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-04 08:13:49',0,'2004-06-14 08:13:49'),(621,181,'STANDARD','Standard','Standard',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-04 08:13:48',0,'2004-06-14 08:13:48'),(622,181,'EXEMPT','Exempt','Exempt',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-04 08:13:49',0,'2004-06-14 08:13:49'),(623,181,'IND_RURAL_EDUCATION','Rural Education IND','Rural Education IND',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-04 08:13:49',0,'2004-06-14 08:13:49'),(624,181,'EMISSION_INSPECTION','Emission Inspection','Emmision Inspection',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-04 08:13:50',0,'2004-06-14 08:13:50'),(625,182,'ap','Accounts Payable','101. Accounts Payable',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-27 11:25:48',34,'2016-02-11 08:43:55'),(626,182,'gl','General Ledger','100. General Ledger',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-27 11:25:48',34,'2016-02-11 08:43:55'),(627,182,'ar','Accounts Receviable','102. Accounts Receviable',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-27 11:25:48',34,'2016-02-11 08:43:55'),(628,182,'fa','Fixed Asset','103. Fixed Asset',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-27 11:25:47',34,'2016-02-11 08:43:56'),(629,182,'cm','Cash Managment','104. Cash Management',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-27 11:25:48',34,'2016-02-11 08:43:56'),(630,182,'inv','Inventory','200. Inventory',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-27 11:25:49',34,'2016-02-11 08:43:56'),(631,182,'pur','Purchasing','201. Purchasing',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-27 11:25:49',34,'2016-02-11 08:43:57'),(632,182,'sd','Sales & Distribution','202. Sales & Distribution',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-27 11:25:49',34,'2016-02-11 08:43:57'),(633,182,'bom','Bills of Material','203. Bills of Material',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-27 11:25:50',34,'2016-02-11 08:43:57'),(634,182,'wip','Work In Process','204. Work In Process',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-27 11:25:50',34,'2016-02-11 08:43:58'),(635,182,'fp','Forecast & Planning','205. Forecast & Planning',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-27 11:25:50',0,'2027-06-14 11:25:50'),(636,182,'sys','System','1. System',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-27 11:25:50',0,'2027-06-14 11:25:50'),(637,182,'org','Organization','2. Organization',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-27 11:25:50',0,'2027-06-14 11:25:50'),(638,182,'ext','Extension','900. Extension',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-06-27 11:25:51',0,'2027-06-14 11:25:51'),(640,183,'CANCELLED','取消','Cancelled',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-06-29 11:49:56',1,'2017-07-03 11:47:05'),(641,183,'INCOMPLETE','编辑','Incomplete',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-06-29 11:49:56',1,'2017-07-03 11:47:19'),(642,183,'REAPPROVAL','重新审批','Require ReApproval',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-06-29 11:49:57',1,'2017-07-03 11:47:44'),(643,183,'APPROVED','审批','Approved',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-06-29 11:49:57',1,'2017-07-03 11:46:52'),(644,183,'INPROCESS','处理中','Inprocess',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-06-29 11:49:57',1,'2017-07-03 11:47:27'),(645,183,'ENTERED','确认','Entered',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-06-29 11:49:58',1,'2017-07-03 11:47:13'),(646,183,'ONHOLD','挂起','On Hold',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-06-29 11:49:58',1,'2017-07-03 11:47:33'),(647,183,'BOOKED','登记','Booked',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-06-29 11:49:58',1,'2017-07-03 11:47:00'),(648,184,'FORM','Form','Form',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-07-12 09:15:04',0,'2014-07-12 09:15:04'),(649,184,'SEARCH','Search','Search',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-19 05:34:20',0,'2019-07-14 05:34:20'),(650,184,'SETUP','Setup','Setup',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-07-12 09:15:06',0,'2014-07-12 09:15:06'),(651,184,'PROGRAM','Program','Program',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-07-12 09:15:06',0,'2014-07-12 09:15:06'),(652,184,'CONTENT','Content','Content',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-07-12 09:15:07',0,'2014-07-12 09:15:07'),(653,185,'SAVINGS','活期存款','Savings',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-07-15 12:15:21',1,'2017-07-03 10:40:56'),(654,185,'CURRENT','现金/支票存款','Current',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-07-15 12:15:21',1,'2017-07-03 10:41:14'),(655,185,'DESPOSIT','定期存款','Deposit',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-07-15 12:15:22',1,'2017-07-03 10:40:44'),(656,186,'A','Class A','Class A',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-07-18 14:47:04',0,'2014-07-18 14:47:04'),(657,186,'B','Class B','Class B',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-07-18 14:47:04',0,'2014-07-18 14:47:04'),(658,186,'C','Class C','Class C',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-07-18 14:47:07',0,'2014-07-18 14:47:07'),(659,184,'DOCUMENT','Document','Document',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-07-19 05:45:25',0,'2014-07-19 05:45:25'),(660,184,'TRANSACTION','Transaction','Transaction',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-07-19 05:45:26',0,'2014-07-19 05:45:26'),(661,187,'MRP_DEMAND_VALUE','MRP Demand Value','MRP Demand Value',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-22 07:28:09',0,'2022-07-14 07:28:09'),(662,187,'ONHAND_VALUE','Onhand Value','Onhand Value',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-07-19 09:23:25',0,'2014-07-19 09:23:25'),(663,187,'MRP_DEMAND_QTY','MRP Demand Quantity','MRP Demand Quantity',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-07-19 09:23:29',0,'2014-07-19 09:23:29'),(664,187,'ONHAND_QTY','Onhand Quantity','Onhand Quantity',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-07-19 09:23:30',0,'2014-07-19 09:23:30'),(665,187,'MBMM_MAX_QTY','Multi-Bin Min Max, Max Qty','Multi Bin Min Max , Maximum Quantity',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-22 07:36:49',0,'2022-07-14 07:36:49'),(666,187,'MBMM_MAX_VALUE','Multi-Bin Min Max, Max Value','Multi Bin Min Max , Maximum Value',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-07-22 07:36:49',0,'2022-07-14 07:36:49'),(667,187,'STD_COST','Standard Cost','Standard Cost',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-07-19 09:23:35',0,'2014-07-19 09:23:35'),(684,134,'AED','UAE Dirham','United Arab Emirates',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:20:33',0,'2014-08-02 11:20:33'),(685,134,'AFN','Afghani','Afghanistan',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:20:33',0,'2014-08-02 11:20:33'),(686,134,'ALL','Lek','Albania',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:20:33',0,'2014-08-02 11:20:33'),(687,134,'AMD','Armenian Dram','Armenia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:20:33',0,'2014-08-02 11:20:33'),(688,134,'ANG','Antillian Guilder','Netherlands Antilles',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:31:44',0,'2002-08-14 13:31:44'),(689,134,'AOA','Kwanza','Angola',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:29',0,'2002-08-14 13:40:29'),(690,134,'ARS','Argentine Peso','Argentina',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:20:33',0,'2014-08-02 11:20:33'),(691,134,'AUD','Australian Dollar','Australia, Australian Antarctic Territory, Christmas Island, Cocos (Keeling) Islands, Heard and McDonald Islands, Kiribati, Nauru, Norfolk Island, Tuvalu',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:20:33',0,'2014-08-02 11:20:33'),(692,134,'AWG','Aruban Guilder','Aruba',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(693,134,'AZN','AZN','Azerbaijan',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:29',0,'2002-08-14 13:40:29'),(694,134,'BAM','Convertible Marks','Bosnia and Herzegovina',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(695,134,'BBD','Barbados Dollar','Barbados',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(696,134,'BDT','Bangladeshi Taka','Bangladesh',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(697,134,'BGN','Bulgarian Lev','Bulgaria',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(698,134,'BHD','Bahraini Dinar','Bahrain',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(699,134,'BIF','Burundian Franc','Burundi',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(700,134,'BMD','Bermudian Dollar ','Bermuda',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(701,134,'BND','Brunei Dollar','Brunei',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(702,134,'BOB','Boliviano','Bolivia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(703,134,'BOV','Bolivian Mvdol','Bolivia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(704,134,'BRL','Brazilian Real','Brazil',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(705,134,'BSD','Bahamian Dollar','Bahamas',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(706,134,'BTN','Ngultrum','Bhutan',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(707,134,'BWP','Pula','Botswana',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(708,134,'BYR','Belarussian Ruble','Belarus',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(709,134,'BZD','Belize Dollar','Belize',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(710,134,'CAD','Canadian Dollar','Canada',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(711,134,'CDF','Franc Congolais','Democratic Republic of Congo',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(712,134,'CHE','WIR Euro','Switzerland',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(713,134,'CHF','Swiss Franc','Switzerland, Liechtenstein',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(714,134,'CHW','WIR Franc ','Switzerland',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(715,134,'CLF','CLF - Chile','Chile',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:30',0,'2002-08-14 13:40:30'),(716,134,'CLP','Chilean Peso','Chile',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(717,134,'CNY','Yuan Renminbi','Mainland China',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(718,134,'COP','Colombian Peso','Colombia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(719,134,'COU','UVR - Colombia','Colombia',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:29',0,'2002-08-14 13:40:29'),(720,134,'CRC','CRC - Costa Rica','Costa Rica',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:30',0,'2002-08-14 13:40:30'),(721,134,'CUP','Cuban Peso','Cuba',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(722,134,'CVE','CVE - Cape Verde','Cape Verde',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:30',0,'2002-08-14 13:40:30'),(723,134,'CYP','Cyprus Pound','Cyprus',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(724,134,'CZK','Czech Koruna','Czech Republic',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(725,134,'DJF','Djibouti Franc','Djibouti',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(726,134,'DKK','Danish Krone','Denmark, Faroe Islands, Greenland',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(727,134,'DOP','Dominican Peso','Dominican Republic',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(728,134,'DZD','Algerian Dinar','Algeria',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(729,134,'EEK','Kroon','Estonia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(730,134,'EGP','Egyptian Pound','Egypt',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(731,134,'ERN','Nakfa','Eritrea',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(732,134,'ETB','Ethiopian Birr','Ethiopia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(733,134,'FJD','Fiji Dollar','Fiji',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(734,134,'FKP','Falkland Pound','Falkland Islands',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:30',0,'2002-08-14 13:40:30'),(735,134,'GEL','Lari','Georgia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(736,134,'GHS','Cedi','Ghana',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(737,134,'GIP','Gibraltar pound','Gibraltar',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(738,134,'GMD','Dalasi','Gambia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(739,134,'GNF','Guinea Franc','Guinea',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(740,134,'GTQ','Quetzal','Guatemala',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(741,134,'GYD','Guyana Dollar','Guyana',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(742,134,'HKD','Hong Kong Dollar','Hong Kong Special Administrative Region',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(743,134,'HNL','Lempira','Honduras',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(744,134,'HRK','Croatian Kuna','Croatia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(745,134,'HTG','Haiti Gourde','Haiti',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(746,134,'HUF','Forint','Hungary',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(747,134,'IDR','Rupiah','Indonesia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(748,134,'ILS','New Israeli Shekel','Israel',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(749,134,'IQD','Iraqi Dinar','Iraq',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(750,134,'IRR','Iranian Rial','Iran',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(751,134,'ISK','Iceland Krona','Iceland',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(752,134,'JMD','Jamaican Dollar','Jamaica',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(753,134,'JOD','Jordanian Dinar','Jordan',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(754,134,'JPY','Japanese yen','Japan',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(755,134,'KES','Kenyan Shilling','Kenya',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(756,134,'KGS','Som','Kyrgyzstan',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(757,134,'KHR','Riel','Cambodia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(758,134,'KMF','Comoro Franc','Comoros',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(759,134,'KPW','North Korean Won','North Korea',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(760,134,'KRW','South Korean Won','South Korea',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:30',0,'2002-08-14 13:40:30'),(761,134,'KWD','Kuwaiti Dinar','Kuwait',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(762,134,'KYD','Cayman Dollar','Cayman Islands',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:31',0,'2002-08-14 13:40:31'),(763,134,'KZT','Tenge','Kazakhstan',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(764,134,'LAK','Kip','Laos',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(765,134,'LBP','Lebanese Pound','Lebanon',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(766,134,'LKR','Sri Lanka Rupee','Sri Lanka',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(767,134,'LRD','Liberian Dollar','Liberia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(768,134,'LSL','Loti','Lesotho',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(769,134,'LTL','Lithuanian Litas','Lithuania',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(770,134,'LVL','Latvian Lats','Latvia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(771,134,'LYD','Libyan Dinar','Libya',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(772,134,'MAD','Moroccan Dirham','Morocco, Western Sahara',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(773,134,'MDL','Moldovan Leu','Moldova',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(774,134,'MGA','Malagasy Ariary','Madagascar',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(775,134,'MKD','Denar','Former Yugoslav Republic of Macedonia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(776,134,'MMK','Kyat','Myanmar',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(777,134,'MNT','Tugrik','Mongolia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(778,134,'MOP','Pataca','Macau Special Administrative Region',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(779,134,'MRO','Ouguiya','Mauritania',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(780,134,'MTL','Maltese Lira','Malta',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(781,134,'MUR','Mauritius Rupee','Mauritius',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(782,134,'MVR','Rufiyaa','Maldives',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(783,134,'MWK','Kwacha','Malawi',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(784,134,'MXN','Mexican Peso','Mexico',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(785,134,'MXV','UDI - Mexico','Mexico',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:31',0,'2002-08-14 13:40:31'),(786,134,'MYR','Malaysian Ringgit','Malaysia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(787,134,'MZN','Metical','Mozambique',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(788,134,'NAD','Namibian Dollar','Namibia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(789,134,'NGN','Naira','Nigeria',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(790,134,'NIO','Cordoba Oro','Nicaragua',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(791,134,'NOK','Norwegian Krone','Norway',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(792,134,'NPR','Nepalese Rupee','Nepal',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(793,134,'NZD','NZD','Cook Islands, New Zealand, Niue, Pitcairn, Tokelau',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:31',0,'2002-08-14 13:40:31'),(794,134,'OMR','Rial Omani','Oman',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(795,134,'PAB','Balboa','Panama',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(796,134,'PEN','Nuevo Sol','Peru',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(797,134,'PGK','Kina','Papua New Guinea',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(798,134,'PHP','Philippine Peso','Philippines',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(799,134,'PKR','Pakistan Rupee','Pakistan',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(800,134,'PLN','Zloty','Poland',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(801,134,'PYG','Guarani','Paraguay',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(802,134,'QAR','Qatari Rial','Qatar',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(803,134,'RON','New Leu','Romania',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:31',0,'2002-08-14 13:40:31'),(804,134,'RSD','Serbian Dinar','Serbia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(805,134,'RUB','Russian Ruble','Russia, Abkhazia, South Ossetia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(806,134,'RWF','Rwanda Franc','Rwanda',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(807,134,'SAR','Saudi Riyal','Saudi Arabia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(808,134,'SBD','Solomon Dollar','Solomon Islands',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:32',0,'2002-08-14 13:40:32'),(809,134,'SCR','Seychelles Rupee','Seychelles',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(810,134,'SDG','Sudanese Pound','Sudan',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(811,134,'SEK','Swedish Krona','Sweden',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(812,134,'SHP','SHP','Saint Helena',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:32',0,'2002-08-14 13:40:32'),(813,134,'SKK','Slovak Koruna','Slovakia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(814,134,'SLL','Leone','Sierra Leone',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(815,134,'SOS','Somali Shilling','Somalia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(816,134,'SRD','Surinam Dollar','Suriname',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(817,134,'STD','Dobra','S?o Tom? and Pr?ncipe',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(818,134,'SYP','Syrian Pound','Syria',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(819,134,'SZL','Lilangeni','Swaziland',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(820,134,'THB','Baht','Thailand',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(821,134,'TJS','Somoni','Tajikistan',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(822,134,'TMM','Manat','Turkmenistan',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(823,134,'TND','Tunisian Dinar','Tunisia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(824,134,'TOP','Pa\'anga','Tonga',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(825,134,'TRY','New Turkish Lira','Turkey',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(826,134,'TTD','T & T Dollar','Trinidad and Tobago',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:32',0,'2002-08-14 13:40:32'),(827,134,'TWD','New Taiwan Dollar','Taiwan and other islands that are under the effective control of the Republic of China (ROC)',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(828,134,'TZS','Tanzanian Shilling','Tanzania',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(829,134,'UAH','Hryvnia','Ukraine',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(830,134,'UGX','Uganda Shilling','Uganda',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(831,134,'UYU','Peso Uruguayo','Uruguay',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(832,134,'UZS','Uzbekistan Som','Uzbekistan',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(833,134,'VEB','Venezuelan bolvar','Venezuela',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:31:44',0,'2002-08-14 13:31:44'),(834,134,'VND','Vietnamese ng','Vietnam',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:31:45',0,'2002-08-14 13:31:45'),(835,134,'VUV','Vatu','Vanuatu',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(836,134,'WST','Samoan Tala','Samoa',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(837,134,'XAF','CFA Franc BEAC','Cameroon, Central African Republic, Congo, Chad, Equatorial Guinea, Gabon',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(838,134,'XAG','Silver','one Troy ounce',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(839,134,'XAU','Gold ','one Troy ounce',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(840,134,'XBA','XBA','(EURCO) (Bonds market unit)',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:32',0,'2002-08-14 13:40:32'),(841,134,'XBB','XBB','(E.M.U.-6) (Bonds market unit)',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:32',0,'2002-08-14 13:40:32'),(842,134,'XBC','EU Account 9',' (E.U.A.-9) (Bonds market unit)',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:33',0,'2002-08-14 13:40:33'),(843,134,'XBD','EU Account 17 ','(E.U.A.-17) (Bonds market unit)',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:33',0,'2002-08-14 13:40:33'),(844,134,'XCD','XCD','Anguilla, Antigua and Barbuda, Dominica, Grenada, Montserrat, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:33',0,'2002-08-14 13:40:33'),(845,134,'XDR','XDR','International Monetary Fund',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:33',0,'2002-08-14 13:40:33'),(846,134,'XFO','Gold franc ','Bank for International Settlements',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(847,134,'XFU','UIC franc ','International Union of Railways',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(848,134,'XOF','XOF','Benin, Burkina Faso, C?te d\'Ivoire, Guinea-Bissau, Mali, Niger, Senegal, Togo',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:34',0,'2002-08-14 13:40:34'),(849,134,'XPT','Platinum',' (one Troy ounce)',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(850,134,'XTS','Code ','reserved for testing purposes',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(851,134,'YER','Yemeni Rial','Yemen',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(852,134,'ZAR','South African Rand','South Africa',0,0,0,NULL,NULL,'enabled',0,'','',0,'2014-08-02 13:40:34',0,'2002-08-14 13:40:34'),(853,134,'ZMK','Kwacha','Zambia',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(854,134,'ZWD','Zimbabwe Dollar','Zimbabwe',NULL,NULL,NULL,NULL,NULL,'enabled',1,'1/1/2000',NULL,0,'2014-08-02 11:28:42',0,'2014-08-02 11:28:42'),(855,188,'CORP','企业','Corporate',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-02 12:29:30',1,'2017-07-03 10:42:43'),(856,188,'USER','用户','User Rate',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-02 12:29:30',1,'2017-07-03 10:43:17'),(857,188,'AVERAGE','平均','Average',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-02 12:29:31',1,'2017-07-03 10:42:12'),(858,188,'REPORTING','报表','Reporting',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-02 12:29:31',1,'2017-07-03 10:42:51'),(859,182,'hr','Human Resource','300. HR',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-07 09:55:00',0,'2014-08-07 09:55:00'),(860,189,'MARRIED','已婚','Married',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-07 10:45:34',1,'2017-07-03 11:48:05'),(861,189,'SINGLE','单身','Single',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-07 10:45:34',1,'2017-07-03 11:48:18'),(862,189,'SEPARATED','离异','Separated',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-07 10:45:34',1,'2017-07-03 11:48:12'),(863,190,'PART_TIME_REGULAR','兼职','Part Time Regular',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-08 12:37:36',1,'2017-07-03 11:52:22'),(864,190,'FULL_TIME_REGULAR','全日制','Full Time Regular',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-08 12:37:36',1,'2017-07-03 11:48:54'),(865,190,'FULL_TIME_INTERN','全日制实习','Full Time Intern',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-08 12:37:36',1,'2017-07-03 11:48:44'),(866,190,'FULL_TIME_TEMP','全日制临时','Full Time Temporary',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-08 12:37:36',1,'2017-07-03 11:49:16'),(867,190,'PART_TIME_TEMP','兼职临时','Part Time Temporary',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-08 12:37:37',1,'2017-07-03 11:52:34'),(868,190,'PART_TIME_INTERN','兼职实习','Part Time Intern',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-08 12:37:37',1,'2017-07-03 11:52:06'),(869,191,'IT','信息','Information Technology',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-08 12:44:32',1,'2017-07-03 11:53:23'),(870,191,'HR','人事','Human Resource',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-08 12:44:32',1,'2017-07-03 11:53:01'),(871,191,'OPR','操作','Operation',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-08 12:44:32',1,'2017-07-03 11:53:32'),(872,191,'PMO','程序管理','Program Management',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-08 12:44:33',1,'2017-07-03 11:54:16'),(873,191,'PUR','采购','Purchasing',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-08 12:44:33',1,'2017-07-03 11:54:28'),(874,191,'PLAN','计划','Planning',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-08 12:44:33',1,'2017-07-03 11:53:56'),(875,191,'ENGG','工程','Engineering',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-08 12:44:33',1,'2017-07-03 11:52:54'),(876,191,'RND','研发','Research & Development',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-08 12:44:33',1,'2017-07-03 11:54:39'),(877,191,'INV','库存','Inventory',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-08 12:44:34',1,'2017-07-03 11:53:16'),(878,192,'EARNINGS','Earnings','Earnings',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-11 12:39:21',0,'2011-08-14 12:39:21'),(879,192,'DEDUCTIONS','Deductions','Deductions',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-11 12:39:21',0,'2011-08-14 12:39:21'),(880,193,'VOL_DEDUCTION','Voluntary Deductions','Voluntary Deductions',0,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-11 12:50:31',0,'2014-08-11 12:50:31'),(881,193,'INVOL_DEDUCTION','Involuntary Deductions','Involuntary Deductions',0,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-11 12:50:31',0,'2014-08-11 12:50:31'),(882,193,'PRE_TAX_DEDUCTION','Pre Tax Deductions','Pre Tax Deductions',0,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-11 12:50:31',0,'2014-08-11 12:50:31'),(883,193,'NON_TAX_EARNING','Non Taxable Earnings','Non Taxable Earnings',1,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-11 16:35:48',0,'2011-08-14 16:35:48'),(884,193,'EARNINGS','Earnings','Earnings',1,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-11 12:50:32',0,'2014-08-11 12:50:32'),(885,194,'E_REGULAR','Regual Earnings','Regual Earnings',1,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-11 13:10:18',0,'2014-08-11 13:10:18'),(886,194,'E_PENSION','Pension Earnings','Penson Earnings',1,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-11 13:10:18',0,'2014-08-11 13:10:18'),(887,194,'D_TAX','Tax Deduction','Tax Deduction',0,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-11 13:10:19',0,'2014-08-11 13:10:19'),(888,194,'E_ALLOWANCE','Allowance','Allowance',1,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-11 16:14:57',0,'2011-08-14 16:14:57'),(889,194,'E_OVERTIME','Overtime Earnings','Overtime Earnings',1,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-11 13:10:19',0,'2014-08-11 13:10:19'),(890,194,'D_LOAN','Loan Deduction','Loan Deduction',0,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-11 13:10:19',0,'2014-08-11 13:10:19'),(891,194,'E_BASIC','Basic Salary','Basic Salary',1,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-11 16:25:40',0,'2014-08-11 16:25:40'),(892,195,'OTHER','其它','Voluntary Deductions',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 04:54:20',1,'2017-07-03 11:55:52'),(893,195,'PART_TIME_DISTANCE','在职函授','Part Time - Distance',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 04:54:21',1,'2017-07-03 11:56:33'),(894,195,'PART_TIME_REGULAR','在职','Part Time - Regular',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 04:54:21',1,'2017-07-03 11:56:55'),(895,195,'FULL_TIME_DISTANCE','全日制函授','Full Time - Distance',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 04:54:21',1,'2017-07-03 11:55:36'),(896,195,'FULL_TIME_REGULAR','全日制','Full Time - Regular',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 04:54:21',1,'2017-07-03 11:55:46'),(897,196,'MALE','男','Male',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 05:45:34',1,'2017-07-03 11:57:42'),(898,196,'UNKNOWN','未知','Unknown',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 05:45:34',1,'2017-07-03 11:57:49'),(899,196,'FEMALE','女','Female',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 05:45:34',1,'2017-07-03 11:57:36'),(900,197,'EMPLOYEE_EX','前雇员','Ex-Employee',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 06:01:41',1,'2017-07-03 12:00:09'),(901,197,'APPLICANT','申请人','Applicant',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 06:01:41',1,'2017-07-03 11:58:26'),(902,197,'APPLICANT_EX','前申请人','Ex-Applicant',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 06:01:41',1,'2017-07-03 11:59:46'),(903,197,'EMPLOYEE','雇员','Employee',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 06:01:42',1,'2017-07-03 11:59:54'),(904,197,'OTHERS','其它','Others',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 06:01:42',1,'2017-07-03 12:00:37'),(905,197,'INTERN','实习','Intern',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 06:01:42',1,'2017-07-03 12:00:28'),(906,197,'EMPLOYEE_EX_APPLICANT','雇员(前申请)','Employee-Ex-Applicant',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 06:01:42',1,'2017-07-03 12:01:18'),(907,197,'EMPLOYEE_EX_INTERN','雇员(前实习)','Employee-Ex-Intern',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-13 06:01:43',1,'2017-07-03 12:01:45'),(908,198,'ADHAR','Adhar','Adhar',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-13 06:05:49',1,'2017-07-03 12:02:28'),(909,198,'FIN_NUMBER','签证号','FIN Number',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 06:05:49',1,'2017-07-03 12:04:35'),(910,198,'PASSPORT','护照','Passport',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 06:05:50',1,'2017-07-03 12:02:57'),(911,198,'SSN','社保证','Social Security',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-13 06:05:50',1,'2017-07-03 12:03:44'),(912,198,'EMPLOYEE_NUMBER','工作证','Employee Number',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-13 06:05:50',1,'2017-07-03 12:02:44'),(913,199,'WIRE','电汇','Wire',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-15 11:13:12',1,'2017-07-03 12:06:15'),(914,199,'DIRECT','直接存款','Direct Deposit',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-15 11:13:12',1,'2017-07-03 12:05:30'),(915,199,'CHEQUE','支票','Cheque',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-15 11:13:13',1,'2017-07-03 12:04:54'),(916,199,'EFT','电子支付','EFT',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-15 11:13:13',1,'2017-07-03 12:05:51'),(917,199,'CASH','现金','Cash',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-15 11:13:13',1,'2017-07-03 12:04:48'),(923,200,'WEEK','周','Week',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-15 11:55:47',1,'2017-07-03 12:06:59'),(924,200,'SEMI_MONTH','半月','Semi-Month',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-15 11:55:47',1,'2017-07-03 12:06:45'),(925,200,'MONTH','月','Month',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-15 11:55:47',1,'2017-07-03 12:06:33'),(926,200,'ALERTNATE_MONTH','隔月','Alternate Month',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-15 11:55:48',1,'2017-07-03 12:07:23'),(927,200,'QUARTER','季','Quarter',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-15 11:55:48',1,'2017-07-03 12:06:38'),(928,200,'SEMI_YEAR','半年','Semi Year',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-15 11:55:48',1,'2017-07-03 12:06:53'),(929,200,'YEAR','年','Year',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-15 11:55:48',1,'2017-07-03 12:07:05'),(930,201,'UNPAID','无薪假','Unpaid Leave',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-16 16:57:51',1,'2017-07-03 12:09:46'),(931,201,'MATERNITY','产假','Maternity Leave',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-16 16:57:51',1,'2017-07-03 12:08:33'),(932,201,'PATERNITY','陪产假','Paternity Leave',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-16 16:57:52',1,'2017-07-03 12:09:16'),(933,201,'PAID','带薪假','Paid Leave',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-16 16:57:52',1,'2017-07-03 12:09:01'),(934,201,'PERSONAL','事假','Personal Leave',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-16 16:57:52',1,'2017-07-03 12:09:30'),(935,201,'LEGAL','法定休假','Legal Leave',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-16 16:57:53',1,'2017-07-03 12:08:15'),(936,201,'OTHERS','其它','Others',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-16 16:57:53',1,'2017-07-03 12:08:53'),(937,202,'PUR_BLANKET_RELEASE','Blanket Release','Blanket Release',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-19 05:30:05',0,'2014-08-19 05:30:05'),(938,202,'PUR_STANDRAD_PO','采购单','Standard PO',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-26 11:04:16',1,'2017-07-03 12:12:38'),(939,202,'PUR_REQUISITION_INTERNAL','内部申购','Internal Requisition',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-19 05:30:05',1,'2017-07-03 12:13:07'),(940,202,'PUR_BLANKET_AGGREMENT','一揽子协议','Blanket Agreement',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-26 11:04:17',1,'2017-07-03 12:11:08'),(941,202,'PUR_REQUISITION_EXTERN','外部申购','External Requisition',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-19 05:30:06',1,'2017-07-03 12:13:22'),(942,202,'AP_INVOICE','应付票据','AP Invoice',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-19 05:30:06',1,'2017-07-03 12:10:21'),(943,202,'AP_PAYMENT','应付支付','AP Payment',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-19 05:30:06',1,'2017-07-03 12:10:31'),(944,202,'GL_JOURNAL','日记账','Journals',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-19 05:30:07',1,'2017-07-03 12:10:57'),(945,202,'GL_BUDGET','预算','GL Budget',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-19 05:30:07',1,'2017-07-03 12:10:49'),(946,202,'WIP_WO','工单','Work Order',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-19 05:30:07',1,'2017-07-03 12:12:28'),(947,203,'REQ_APPROVAL','Req Approval','Req Approval',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-21 12:05:26',0,'2014-08-21 12:05:26'),(948,203,'JOURNAL_APPROVAL','Journal Approval','Journal Approval',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-21 12:05:26',0,'2014-08-21 12:05:26'),(949,203,'PO_APPROVAL','PO Approval','PO Approval',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-21 12:05:26',0,'2014-08-21 12:05:26'),(950,203,'LEAVE_APPLICATION','Leave Application','Leave Application',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-08-21 12:05:27',0,'2014-08-21 12:05:27'),(951,77,'OTHER_ENTITY','其它实体','Other Entity',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-22 07:20:27',1,'2017-07-03 11:42:31'),(952,131,'BLANKET_RELEASE','Blanket Release','Blanket Release',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-25 03:22:08',1,'2017-07-03 11:24:22'),(953,202,'PUR_CONTRACT_PO','协议采购','Contract PO',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-08-26 11:04:16',1,'2017-07-03 12:13:34'),(954,204,'PO_LINE_HOLD','PO Line Hold','PO Line Hold',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-09-01 11:19:32',0,'2014-09-01 11:19:32'),(955,204,'SO_HEADER_HOLD','SO Header Hold','SO Header Hold',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-09-01 11:19:32',0,'2014-09-01 11:19:32'),(956,204,'PO_HEADER_HOLD','PO Header Hold','PO Header Hold',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-09-01 11:19:33',0,'2014-09-01 11:19:33'),(957,204,'SO_LINE_HOLD','SO Line Hold','SO Line Hold',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-09-01 11:19:33',0,'2014-09-01 11:19:33'),(958,119,'CUSTOMER','客户','Customer',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-09-05 03:32:31',1,'2017-07-03 11:44:11'),(959,119,'SUPPLIER','供应商','Supplier',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-09-05 03:32:31',1,'2017-07-03 11:45:22'),(960,161,'ACCRUAL','获利','Accrual',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2014-09-08 17:16:04',1,'2017-07-03 10:33:34'),(961,205,'DEFINED','Defined','Only defined but never used',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-09-14 08:00:30',0,'2014-09-14 08:00:30'),(962,205,'INTRANSIT','Intransit','Intransit',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-09-14 08:00:31',0,'2014-09-14 08:00:31'),(963,205,'OUT_STORE','Out Of Store','Out of Store',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-09-14 08:00:31',0,'2014-09-14 08:00:31'),(964,205,'IN_STORE','In Store','In Store',NULL,NULL,NULL,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2014-09-17 04:56:44',0,'2017-09-14 04:56:44'),(965,205,'IN_WIP','In WIP','In WIP',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-09-17 04:56:44',0,'2014-09-17 04:56:44'),(966,205,'IN_RECEIVING','In Receiving','In Receiving',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-09-17 04:56:44',0,'2014-09-17 04:56:44'),(967,206,'INT','Integer','Integer',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-07 12:54:36',0,'2014-10-07 12:54:36'),(968,206,'DECIMAL','Float','Float',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-07 12:54:36',0,'2014-10-07 12:54:36'),(969,206,'TEXT','Long Text','Long Text',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-07 12:54:37',0,'2014-10-07 12:54:37'),(970,206,'BOOLEAN','Boolean','Boolean',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-08 05:22:54',0,'2008-10-14 05:22:54'),(971,206,'VARCHAR','Characters','Characters',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-07 12:54:37',0,'2014-10-07 12:54:37'),(972,206,'DATE','Date','Date',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-07 12:54:37',0,'2014-10-07 12:54:37'),(973,206,'FILE','File','File',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-07 12:54:38',0,'2014-10-07 12:54:38'),(974,206,'IMAGE','Image','Image',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-07 12:54:38',0,'2014-10-07 12:54:38'),(975,206,'OPTION_LIST','Option List','Option List',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-07 12:54:38',0,'2014-10-07 12:54:38'),(976,206,'LIST','List','List',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-07 12:54:38',0,'2014-10-07 12:54:38'),(977,206,'MULTI_SELECT','Multi Select','Multi Select',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-07 12:54:39',0,'2014-10-07 12:54:39'),(978,206,'DATETIME','Date & Time','Date & Time',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'2014-10-08 05:22:53',0,'2014-10-08 05:22:53'),(979,207,'EXTERNAL','External','External',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-10-22 07:41:33',34,'2014-10-22 07:41:33'),(980,207,'INTERNAL','Internal','Internal',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-10-22 07:41:34',34,'2014-10-22 07:41:34'),(981,208,'LIST','List','List',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-10-24 13:29:30',1,'2014-10-24 16:11:06'),(982,208,'GRID','Grid','Grid',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-10-24 13:29:30',1,'2014-10-24 16:11:05'),(983,208,'TABLE','Table','Table',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-10-24 13:29:31',1,'2014-10-24 16:11:06'),(984,208,'PARAGRAPH','Paragraph','Paragraph',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-10-24 13:29:31',1,'2014-10-24 16:11:05'),(985,184,'REPORT','Report','Report',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-10-25 10:43:25',34,'2014-10-25 10:43:25'),(986,209,'ACCESS','Access','Access',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-02 05:01:23',34,'2014-11-02 05:01:23'),(987,209,'SALES','Sales','Sales',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-02 05:01:23',34,'2014-11-02 05:01:23'),(988,209,'PUR','Purchasing','Purchasing',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-02 05:01:23',34,'2014-11-02 05:01:23'),(989,209,'FIN','Finance','Finance',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-02 05:01:24',34,'2014-11-02 05:01:24'),(990,209,'INV','Inventory','Inventory',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-02 05:01:24',34,'2014-11-02 05:01:24'),(991,209,'HR','HR','HR',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-02 05:01:24',34,'2014-11-02 05:01:24'),(992,210,'CHEMICAL','Chemical','Chemical',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-07 05:52:35',34,'2014-11-07 05:52:35'),(993,210,'MEDICAL','Medical','Medical',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-07 05:52:36',34,'2014-11-07 05:52:36'),(994,210,'IT','IT','IT',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-07 05:52:36',34,'2014-11-07 05:52:36'),(995,210,'LAB','Lab','Lab',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-07 05:52:36',34,'2014-11-07 05:52:36'),(996,210,'DRUG','Drug','Drug',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-07 05:52:37',34,'2014-11-07 05:52:37'),(997,210,'OFFICE','Office','Office',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-07 05:52:37',34,'2014-11-07 05:52:37'),(998,210,'TRAVEL','Travel','Travel',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-07 05:52:37',34,'2014-11-07 05:52:37'),(999,210,'METFAB','MetaFab','MetaFab',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-07 05:52:38',34,'2014-11-07 05:52:38'),(1000,210,'DIODE','Diodes','Diodes',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-07 05:52:38',34,'2014-11-07 05:52:38'),(1001,210,'CLUSTER','Cluster','Cluster',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-11-07 05:52:38',34,'2014-11-07 05:52:38'),(1002,182,'cc','Change Control','800. Change Control',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-11-07 07:50:59',1,'2014-11-07 07:50:59'),(1003,84,'EXPENSE_RAW','原材料费用','Exepnse Raw',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,1,'2014-11-15 14:04:36',14,'2018-02-08 09:25:53'),(1004,211,'PRODUCTION','Production','Production',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-01 06:55:11',34,'2014-12-01 06:55:11'),(1005,211,'SHIPPING','Shipping','Shipping',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-01 06:55:12',34,'2014-12-01 06:55:12'),(1006,211,'RECEVING','Receving','Receving',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-01 06:55:12',34,'2014-12-01 06:55:12'),(1007,211,'LOCATION','Location','Location',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-01 06:55:13',34,'2014-12-01 06:55:13'),(1008,211,'INVENTORY','Inventory','Inventory',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-01 06:55:13',34,'2014-12-01 06:55:13'),(1009,211,'MATERIAL','Material','Material',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-01 06:55:13',34,'2014-12-01 06:55:13'),(1010,212,'HP_LJ','HP LaserJet','HP LaserJet',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-01 09:41:02',34,'2014-12-01 09:41:02'),(1011,212,'ZEBRA_XML','Zebra XML','Zebra XML',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-01 09:41:02',34,'2014-12-01 09:41:02'),(1012,212,'EPSON_IJ','EPSON InkJet','EPSON InkJet',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-01 09:41:02',34,'2014-12-01 09:41:02'),(1013,213,'ALMUNI_VISIT','Almuni Visit','Almuni Visit',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-07 04:45:07',34,'2014-12-07 04:45:07'),(1014,213,'MAIL','Mail','Mail',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-07 04:45:08',34,'2014-12-07 04:45:08'),(1015,213,'CAMPUS_VISIT','Campus Visit','Campus Visit',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-07 04:45:08',34,'2014-12-07 04:45:08'),(1016,213,'INDIRECT','In Direct','In Direct',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-07 04:45:08',34,'2014-12-07 04:45:08'),(1017,213,'DIRECT','Direct','Direct',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-07 04:45:09',34,'2014-12-07 04:45:09'),(1018,213,'WEB','Web','Web',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-07 04:45:09',34,'2014-12-07 04:45:09'),(1019,213,'GOOGLE','Google','Google',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-07 04:45:09',34,'2014-12-07 04:45:09'),(1020,213,'MOBILE','Mobile','Mobile',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-07 04:45:09',34,'2014-12-07 04:45:09'),(1021,214,'ASIA','Asia','Asia',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 06:05:26',1,'2014-12-08 06:05:26'),(1022,214,'NORTH_AMERICA','North America','North America',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 06:05:26',1,'2014-12-08 06:05:26'),(1023,214,'OTHERS','Others','Others',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 06:05:27',1,'2014-12-08 06:05:27'),(1024,214,'GERMANY','Germany','Germany',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 06:05:27',1,'2014-12-08 06:05:27'),(1025,214,'EUROPE','Eurpoe','Europe',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 06:05:28',1,'2014-12-08 06:05:28'),(1026,214,'RUSSIA','Russia','Russia',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 06:05:28',1,'2014-12-08 06:05:28'),(1027,214,'CHINA','China','China',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 06:05:29',1,'2014-12-08 06:05:29'),(1028,214,'INDIA','India','India',6,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 06:05:29',1,'2014-12-08 11:24:09'),(1029,215,'PROD_AGENT','Production Associate','Production Associate',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 11:53:52',34,'2014-12-27 12:29:42'),(1030,215,'SALES_LEAD','Sales Lead','Sales Lead',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 11:53:53',34,'2014-12-27 12:29:43'),(1031,215,'SALES_DIR','Sales Director','Sales Director',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 11:53:53',34,'2014-12-27 12:29:42'),(1032,215,'SALES_AGENT','Sales Associate','Sales Agent',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 11:53:53',34,'2014-12-27 12:29:41'),(1033,215,'SALES_MNGR','Sales Manager','Sales Manager',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 11:53:53',34,'2014-12-27 12:29:43'),(1034,215,'PROD_MNGR','Production Manager','Production Manager',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 11:53:54',34,'2014-12-27 12:29:43'),(1035,215,'PROD_DIR','Production Director','Production Director',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 11:53:54',34,'2014-12-27 12:29:44'),(1036,215,'PROD_LEAD','Production Lead','Production Lead001',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2014-12-08 11:53:54',34,'2014-12-27 12:29:44'),(1037,216,'HIGH_VOLUME','大单量','High Volume',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-09 05:04:29',1,'2017-07-03 11:37:06'),(1038,216,'NEW_CUSTOMER','新客户','New Customer',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-09 05:04:29',1,'2017-07-03 11:37:14'),(1039,216,'STRATEGIC','战略销售','Strategic Sales',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-09 05:04:30',1,'2017-07-03 11:38:33'),(1040,216,'NEW_LOCATION','新址','New Geographic Location',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-09 05:04:30',1,'2017-07-03 11:37:26'),(1041,216,'NEW_PRODUCT','新品','New Product',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-09 05:04:30',1,'2017-07-03 11:37:33'),(1042,216,'CRITICAL_CUSTOMER','关键客户','Critical Customer',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-09 05:04:31',1,'2017-07-03 11:35:56'),(1043,216,'GOVERMENT','政府','Goverment',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-09 05:04:31',1,'2017-07-03 11:36:02'),(1044,216,'SOCIAL','社会部门','Social Sector',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2014-12-09 05:04:31',1,'2017-07-03 11:38:21'),(1045,217,'RFI','RFI','Request for Information',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-04 04:57:44',34,'2015-01-04 04:57:44'),(1046,217,'GENERAL','General','General',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-04 04:57:44',34,'2015-01-04 04:57:44'),(1047,217,'SALES','Sales','Sales Team',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-04 04:57:45',34,'2015-01-04 04:57:45'),(1049,218,'BUDGET','Budget','Budget',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-12 14:01:02',34,'2015-01-12 14:01:02'),(1050,218,'TAX','Tax','Tax',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-12 14:01:03',34,'2015-01-12 14:01:03'),(1051,218,'CORP','CORP','Corporate',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-12 14:01:03',34,'2015-01-12 14:01:03'),(1052,219,'OWN','Owned','Owned',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-12 16:42:29',34,'2015-01-12 16:42:29'),(1053,219,'LEASE','Leased','Leased',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-12 16:42:29',34,'2015-01-12 16:42:29'),(1054,219,'RENT','Rent','Rent',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-12 16:42:30',34,'2015-01-12 16:42:30'),(1055,182,'da','Document & Analysis','903. Document & Analysis',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-19 16:10:32',34,'2015-05-05 15:32:07'),(1056,182,'pos','Point Of Sale','206. Point Of Sale',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-19 16:11:59',34,'2015-01-19 16:13:30'),(1057,184,'UPLOAD','Mass Upload','Mass Upload',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-22 02:44:43',34,'2015-01-22 02:44:43'),(1058,83,'BD','预算借入','Budgetary Debit',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-01-26 02:34:51',1,'2017-07-03 10:06:15'),(1059,86,'POS','销售网点','Point Of Sale',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-02 02:31:18',1,'2017-07-03 11:06:55'),(1060,220,'POS_RETURN','POS Return','POS Return',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-02 08:49:36',34,'2015-02-02 08:49:36'),(1061,220,'SHIPPING','Shipping','Shipping',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-02 08:49:37',34,'2015-02-02 08:49:37'),(1062,220,'RECEVING','Receiving','Receiving',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-02 08:49:39',34,'2015-02-02 08:49:39'),(1063,220,'POS_TRANSACTION','POS Transaction','POS Transaction',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-02 08:49:39',34,'2015-02-02 08:49:39'),(1064,220,'MO_RECEVING','Move Order Receipt','Move Order Receipt',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-02 08:49:39',34,'2015-02-02 08:49:39'),(1065,157,'POS_TRANSACTION','POS Transaction','POS Transaction',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-04 06:43:40',34,'2015-02-04 06:43:40'),(1066,211,'POS','POS Transaction','POS Transaction',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-05 02:37:21',34,'2015-02-05 02:37:21'),(1067,217,'SUPPORT','Support','Support',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-05 03:03:49',34,'2015-02-05 03:03:49'),(1068,221,'FORUM','Forum','Forum',NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-06 05:51:23',34,'2015-02-06 05:51:23'),(1069,221,'DOCUMENTATION','Documentation','Documentation',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-06 05:51:23',34,'2015-02-06 05:51:23'),(1070,221,'SUPPORT_REQUEST','Support Request','Support Request',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-06 05:51:24',34,'2015-02-06 05:51:24'),(1071,221,'CONTENT','Content','Content',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-06 05:51:24',34,'2015-02-06 05:51:24'),(1072,221,'SERVICE_REQUEST','Service Request','Service Request',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-06 05:51:24',34,'2015-02-06 05:51:24'),(1073,222,'PLANNING','Planning','Planning',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-07 14:59:42',34,'2015-03-08 10:26:56'),(1074,222,'MODEL','Model','Model',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-07 14:59:43',34,'2015-02-07 15:03:01'),(1075,222,'OPTION_CLASS','Option Class','Option Class',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-07 14:59:43',34,'2015-02-07 15:03:02'),(1076,222,'PRODUCT_FAMILY','Product Family','Product Family',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-07 14:59:44',34,'2015-02-07 15:03:02'),(1077,222,'STANDARD','Standard','Standard',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-07 14:59:44',34,'2015-02-07 15:03:02'),(1078,84,'TEMPLATE','模板','Template',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-09 08:01:59',1,'2017-07-03 11:00:07'),(1079,182,'am','Asset Maintenance','210.Asset Maintenance',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-16 05:23:28',34,'2015-02-16 05:24:12'),(1080,182,'adm','Admin','911.Admin',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-17 13:17:52',34,'2015-02-17 13:17:52'),(1081,223,'ALL_ORG_BOTH','All Org Both','All Org Both Access',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-21 18:48:14',34,'2015-02-21 18:48:14'),(1082,223,'ALL_ORG_READ','All Org Read','All Org Read Acess',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-21 18:48:15',34,'2015-02-21 18:48:15'),(1083,223,'ASIA_BOTH','Asia Both','Asia Both',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-21 18:48:15',34,'2015-02-21 18:48:15'),(1084,223,'US_BOTH','US Both','US Both',NULL,1,NULL,NULL,NULL,'',1,NULL,NULL,34,'2015-02-21 18:48:15',34,'2015-02-21 18:48:15'),(1085,223,'US_READ','US Read','US Read',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-21 18:48:16',34,'2015-02-21 18:48:16'),(1086,223,'ASIA_READ','Asia Read','Asia Read',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-21 18:48:16',34,'2015-02-21 18:48:16'),(1087,223,'ROW_BOTH','ROW Both','ROW Both',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-21 18:48:16',34,'2015-02-21 18:48:16'),(1088,223,'ROW_READ','ROW Read','ROW Read',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-21 18:48:17',34,'2015-02-21 18:48:17'),(1089,224,'de_DE','Gerrman','Deutsch - Gerrman',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-24 09:18:27',34,'2015-03-08 14:03:35'),(1090,224,'en_US','English','English',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-24 09:18:28',34,'2015-02-24 09:25:01'),(1091,224,'fr_FR','French','fran?ais - French',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-24 09:18:28',34,'2015-03-08 14:03:35'),(1092,224,'hi_IN','Hindi - India','????? - Hindi',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-02-24 09:18:29',34,'2015-03-08 17:23:26'),(1093,224,'zh_CN','Chinese - Simplified','',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-08 17:20:54',34,'2015-03-08 17:23:25'),(1094,224,'ar_SA','Arabic - Saudi Arabia','??????? - Arabic',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-08 17:59:29',34,'2015-03-08 17:59:29'),(1095,225,'CALIBRATION','Calibration','Calibration',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:31:11',34,'2015-03-16 10:31:11'),(1096,225,'MAINTENANCE','Maitenance','Maitenance',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:31:12',34,'2015-03-16 10:31:12'),(1097,225,'LUBRICATION','Lubrication','Lubrication',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:31:13',34,'2015-03-16 10:31:13'),(1098,225,'REMOVAL','Removal','Removal',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:31:13',34,'2015-03-16 10:31:13'),(1099,225,'PREVENTION','Prevention','Prevention',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:31:14',34,'2015-03-16 10:31:14'),(1100,225,'INSPECTION','Inspection','Inspection',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:31:14',34,'2015-03-16 10:31:14'),(1101,226,'REPAIR','Repair','Repair',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:34:28',34,'2015-03-16 10:34:28'),(1102,226,'DAMAGE','Damage','Damage',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:34:30',34,'2015-03-16 10:34:30'),(1103,226,'EXPANSION','Expansion','Expansion',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:34:30',34,'2015-03-16 10:34:30'),(1104,226,'REWORK','Rework','Rework',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:34:31',34,'2015-03-16 10:34:31'),(1105,226,'HEALTH_SAFTEY','Health & Safety','Health & Safety',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:34:32',34,'2015-03-16 10:34:32'),(1106,227,'ROUTINE','Routine','Routine',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:36:52',34,'2015-03-16 10:36:52'),(1107,227,'ACCIDENT','Accident','Accident',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:36:53',34,'2015-03-16 10:36:53'),(1108,227,'INCIDENT','Incident','Incident',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:36:54',34,'2015-03-16 10:36:54'),(1109,227,'WARRANTY','Warranty','Warranty',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-16 10:36:55',34,'2015-03-16 10:36:55'),(1110,228,'ROUTINE','Routine','Routine',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-21 09:27:35',34,'2015-03-21 09:27:35'),(1111,228,'PREVENTIVE','Preventive','Preventive',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-21 09:27:38',34,'2015-03-21 09:27:38'),(1112,228,'REACTIVE','Reactive','Reactive',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-21 09:27:40',34,'2015-03-21 09:27:40'),(1113,228,'FACILITIES','Facilities','Facilities',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-21 09:27:41',34,'2015-03-21 09:27:41'),(1118,228,'PLANNED','Planned','Planned',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-21 09:28:43',34,'2015-03-21 09:28:43'),(1119,228,'EMERGENCY','Emeregency','Emeregency',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-21 09:28:43',34,'2015-03-21 09:28:43'),(1120,86,'AM','固资维护','Asset Maintenance',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-21 17:46:41',1,'2017-07-03 11:05:55'),(1121,182,'ec','eCommerce','210.eCommerce',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-27 03:32:17',34,'2015-03-27 03:32:17'),(1122,221,'ITEM','Item','Item',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-28 04:19:00',34,'2015-03-28 04:19:00'),(1123,221,'PRODUCT','Product','Product',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-28 09:19:03',34,'2015-03-28 09:19:03'),(1124,229,'SUBSTITUTE','替代','Substitute',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-29 19:55:35',14,'2018-01-28 15:00:19'),(1125,229,'CROSS_SELL','Cross Sell','Cross Sell',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-29 19:55:35',14,'2018-01-28 15:02:54'),(1126,229,'UP_SELL','Up Sell','Up Sell',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-29 19:55:36',34,'2015-03-29 19:55:36'),(1127,229,'COMPLIMENTARY','赠品','Complimentary',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-29 19:55:36',14,'2018-01-28 15:04:18'),(1128,229,'NEW_VERSION','New Version','New Version',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-29 19:55:37',34,'2015-03-29 19:55:37'),(1129,229,'SERVICE','Service','Service',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-29 19:55:37',34,'2015-03-29 19:55:37'),(1130,229,'FREE_GIFT','Free Gift','Free Gift',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-29 19:55:38',34,'2015-03-29 19:55:38'),(1131,229,'PREREQUISITE','Prerequisite','Prerequisite',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-29 19:55:38',34,'2015-03-29 19:55:38'),(1132,229,'EQUIVALENT','Equivalent','Equivalent',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-03-29 20:38:49',34,'2015-03-29 20:38:49'),(1133,230,'HOME','家庭','Home',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-06 09:33:29',1,'2017-07-03 11:19:01'),(1134,230,'OTHERS','其它','Others',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-06 09:33:34',1,'2017-07-03 11:19:20'),(1135,230,'DELIVERY','运输','Delivery',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-06 09:33:35',1,'2017-07-03 11:18:53'),(1136,230,'BILLING','账单','Billing',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-06 09:33:36',1,'2017-07-03 11:18:32'),(1137,230,'OFFICE','办公','Office',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-06 09:33:36',1,'2017-07-03 11:19:13'),(1138,182,'hd','Help Desk','911. Help Desk',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-15 17:29:10',34,'2015-04-15 17:29:10'),(1139,231,'MEDIUM','Medium - Department','Medium - Department',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:00:49',34,'2015-04-16 14:00:49'),(1140,231,'HIGH','High -  Organization/Entity','High - Organization/Entity',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:00:50',34,'2015-04-16 14:00:50'),(1141,231,'CRITICAL','Enterprise Wide','Enterprise Wide',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:00:51',34,'2015-04-16 14:00:51'),(1142,231,'LOW','Low Single User','Low Single User',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:00:52',34,'2015-04-16 14:00:52'),(1143,232,'RESOLVED','Resolved','Resolved',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:13:24',34,'2015-04-16 14:13:24'),(1144,232,'ACTIVE','Active','Active',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:13:25',34,'2015-04-16 14:13:25'),(1145,232,'WAITING_INFO','Waiting User Info','Waiting User Info',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:13:25',34,'2015-04-16 14:13:25'),(1146,232,'NEW','New','New',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:13:26',34,'2015-04-16 14:13:26'),(1147,232,'CANCELLED','Cancelled','Cancelled',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:13:27',34,'2015-04-16 14:13:27'),(1148,232,'CLOSED','Closed','Closed',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:13:29',34,'2015-04-16 14:13:29'),(1149,233,'ADVICE','Advice','Advice',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:16:03',34,'2015-04-16 14:16:03'),(1150,233,'REQUEST','Request','Request',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:16:04',34,'2015-04-16 14:16:04'),(1151,233,'FAILURE','Failure','Failure',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:16:05',34,'2015-04-16 14:16:05'),(1152,234,'FTP_ACCESS','FTP Access','FTP Access',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:26:50',34,'2015-04-16 14:26:50'),(1153,234,'EMAIL_CLIENT','Email Client','Email Client',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:26:52',34,'2015-04-16 14:26:52'),(1154,234,'EMAIL_CLIENT_WEB','Email Web Access','Email Web Access',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:26:53',34,'2015-04-16 14:26:53'),(1155,234,'NEW_LAPTOP','New Laptop','New Laptop',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:26:53',34,'2015-04-16 14:26:53'),(1156,234,'NEW_DESKTOP','New Desktop','New Desktop',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:26:54',34,'2015-04-16 14:26:54'),(1157,234,'NEW_SOFTWARE','New Software','New Software',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 14:26:54',34,'2015-04-16 14:26:54'),(1158,235,'NORMAL','Normal','Normal',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 16:09:02',34,'2015-04-16 16:09:02'),(1159,235,'HIERARCHICAL','Hierarchical','Hierarchical',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 16:09:03',34,'2015-04-16 16:09:03'),(1160,235,'FUNCTIONAL','Functional','Functional',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-16 16:09:04',34,'2015-04-16 16:09:04'),(1161,236,'CR_CREATED','Change Request Created','Change Request Created',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-18 15:22:15',34,'2015-04-18 15:22:15'),(1162,236,'ISSUE_FIXED','Issue Fixed','Issue Fixed',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-18 15:22:15',34,'2015-04-18 15:22:15'),(1163,236,'USER_TRAINING','User Training','User Training',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-18 15:22:16',34,'2015-04-18 15:22:16'),(1164,237,'ENHANCEMENT','Enhancement','Enhancement',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-19 04:55:17',34,'2015-04-19 04:55:17'),(1165,237,'BUG_FIX','Bug Fix','Bug Fix',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-19 04:55:18',34,'2015-04-19 04:55:18'),(1166,237,'DATA_FIX','Data Fix','Data Fix',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-19 04:55:19',34,'2015-04-19 04:55:19'),(1167,237,'CUSTOM_COMP','Custom Component','Custom Component',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-04-19 04:55:20',34,'2015-04-19 04:55:20'),(1168,182,'cst','Costing','212.Costing',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-05 14:44:44',34,'2015-05-05 14:44:44'),(1169,119,'SALES','销售','Sales',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-06 04:38:53',1,'2017-07-03 11:45:08'),(1170,119,'LOCAL_ADMIN','本地管理','Local Admin',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-06 04:38:54',1,'2017-07-03 11:44:29'),(1171,119,'MANAGEMENT','经理','Management',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-06 04:38:55',1,'2017-07-03 11:44:37'),(1172,238,'MANUFAC','厂商','Manufacturer',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-08 03:37:28',1,'2017-07-03 09:10:12'),(1173,238,'PACKAG','包装商','Packager',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-08 03:37:30',1,'2017-07-03 09:12:19'),(1174,238,'PROCESS','处理商','Processor',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-08 03:37:30',1,'2017-07-03 09:14:17'),(1175,238,'DIST','分销商','Distributor',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-08 03:37:31',1,'2017-07-03 09:10:01'),(1176,239,'DISTRIBUTOR','分销商','Distributor',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-11 04:35:24',1,'2017-07-03 09:31:00'),(1177,239,'END_CUST','终端客户','End Customer',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-11 04:35:25',1,'2017-07-03 09:31:15'),(1178,239,'BLANKET','一揽子协议','Blanket Agreement',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-11 04:35:26',1,'2017-07-03 09:30:50'),(1179,239,'VMI','供应商管理库存','VMI',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-11 04:35:27',1,'2017-07-03 09:31:46'),(1180,239,'TRADE_CUST','贸易客户','Trade Customer',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-11 04:35:27',1,'2017-07-03 09:31:26'),(1181,184,'CONTAINER','Container','Container',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-25 04:13:49',34,'2015-05-25 04:13:49'),(1182,240,'CLOSED','Closed','Closed',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-25 20:20:31',34,'2015-05-25 20:23:00'),(1183,240,'CANCELLED','Cancelled','Cancelled',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-25 20:20:31',34,'2015-05-25 20:23:03'),(1184,240,'COMPLETED','Completed','Completed',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-25 20:20:32',34,'2015-05-25 20:23:01'),(1185,240,'APPROVED','Approved','Approved',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-25 20:20:33',34,'2015-05-25 20:23:02'),(1186,240,'ON_HOLD','On Hold','On Hold',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-25 20:23:01',34,'2015-05-25 20:23:01'),(1187,240,'REJECTED','Rejected','Rejected',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-25 20:23:04',34,'2015-05-25 20:23:04'),(1188,240,'ACCEPTED','Accepted','Accepted',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-25 20:23:04',34,'2015-05-25 20:23:04'),(1189,241,'EXCHANGE','Exchange','Exchange',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-31 05:10:47',34,'2015-05-31 05:10:47'),(1190,241,'LOANER','Loaner','Loaner',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-31 05:10:47',34,'2015-05-31 05:10:47'),(1191,241,'LOANER_REPAIR_RETURN','Loaner, Repair and Return','Loaner, Repair and Return',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-31 05:10:48',34,'2015-05-31 05:10:48'),(1192,241,'ADVANCE_EXCHANGE','Advance Exchange','Advance Exchange',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-31 05:10:48',34,'2015-05-31 05:10:48'),(1193,241,'REPAIR_RETURN','Repair and Return','Repair and Return',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-31 05:10:49',34,'2015-05-31 05:10:49'),(1194,241,'REPLACEMENT','Replacement','Replacement',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-31 05:10:49',34,'2015-05-31 05:10:49'),(1195,241,'STANDARD','Standard','Standard',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-31 05:10:50',34,'2015-05-31 05:10:50'),(1196,242,'MATERIAL','Material','Material',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-31 19:43:32',34,'2015-05-31 19:43:32'),(1197,242,'LABOR','Labor','Labor',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-31 19:43:32',34,'2015-05-31 19:43:32'),(1198,242,'EXPENSE','Expense','Expense',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-05-31 19:43:32',34,'2015-05-31 19:43:32'),(1199,243,'CONTRACT','Contract','Contract',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-02 14:20:48',34,'2015-06-02 14:20:48'),(1200,243,'PROJECT','Project','Project',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-02 14:20:49',34,'2015-06-02 14:20:49'),(1201,243,'OTHER','Others','Others',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-02 14:20:49',34,'2015-06-02 14:20:49'),(1202,243,'SERVICE','Service','Service',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-02 14:20:50',34,'2015-06-02 14:20:50'),(1203,243,'SALES','Sales','Sales',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-02 14:20:50',34,'2015-06-02 14:20:50'),(1204,243,'RUSSIA','Russia','Russia',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-02 14:20:51',34,'2015-06-02 14:20:51'),(1205,182,'prj','Projects','400. Projects',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-08 04:44:40',34,'2015-06-08 04:44:40'),(1206,244,'PRIMARY','主要','Primary',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-09 16:34:29',1,'2017-07-03 09:32:21'),(1207,244,'SECONDARY','次要','Secondary',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-09 16:34:30',1,'2017-07-03 09:32:27'),(1208,245,'PRIMARY','Primary','Primary',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 08:12:34',34,'2015-06-14 08:12:34'),(1209,245,'SECONDARY','Secondary','Secondary',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 08:12:35',34,'2015-06-14 08:12:35'),(1210,245,'NON_PAYING','Non Paying','Non Paying',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 08:12:35',34,'2015-06-14 08:12:35'),(1211,246,'LABOR','Labor','Labor',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:19:57',34,'2015-06-14 09:19:57'),(1212,246,'EQUIPMENT','Equipment','Equipment',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:19:58',34,'2015-06-14 09:19:58'),(1213,246,'CHARGEBACKS','Chargebacks','Chargebacks',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:19:58',34,'2015-06-14 09:19:58'),(1214,246,'ACQUISITION_COSTS','Acquisition Costs','Acquisition Costs',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:19:58',34,'2015-06-14 09:19:58'),(1215,246,'MATERIALS','Materials','Materials',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:19:59',34,'2015-06-14 09:19:59'),(1216,246,'CONTRACTOR','Contractor','Contractor',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:19:59',34,'2015-06-14 09:19:59'),(1217,247,'DIRECT','Direct','Direct',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:25:13',34,'2015-06-14 09:25:13'),(1218,247,'LABOR','Labor','Labor',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:25:14',34,'2015-06-14 09:25:14'),(1219,247,'CHARGEBACKS','Chargebacks','Chargebacks',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:25:15',34,'2015-06-14 09:25:15'),(1220,247,'EQUIPMENT','Equipment','Equipment',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:25:15',34,'2015-06-14 09:25:15'),(1221,247,'INDIRECT','Indirect','Indirect',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:25:15',34,'2015-06-14 09:25:15'),(1222,247,'SALES_REVENUE','Sales Revenue','Sales Revenue',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 09:25:16',34,'2015-06-14 09:25:16'),(1223,248,'ITEM','Material Items','Material Items',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 15:22:16',34,'2015-06-14 15:22:16'),(1224,248,'LABOR','Labor','Labor',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 15:22:16',34,'2015-06-14 15:22:16'),(1225,248,'FINANCE','Financial Elements','Financial Elements',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 15:22:17',34,'2015-06-14 15:22:17'),(1226,248,'EQUIPMENT','Equipment','Equipment',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-14 15:22:17',34,'2015-06-14 15:22:17'),(1227,250,'BENEFITS','Benefits','Benefits',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-21 06:38:00',34,'2015-06-21 06:38:00'),(1228,250,'CONTRACT_ADMINISTRATION','Contract Administration','Contract Administration',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-21 06:38:00',34,'2015-06-21 06:38:00'),(1229,250,'BUDGET_CONTROL','Budget Control','Budget Control',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-21 06:38:01',34,'2015-06-21 06:38:01'),(1230,250,'BUSINESS_DEVELOPMENT','Business Development','Business Development',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-21 06:38:01',34,'2015-06-21 06:38:01'),(1231,250,'BUILD','Build','Build',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-21 06:38:02',34,'2015-06-21 06:38:02'),(1232,250,'CONTRACT CHANGE MANAGEMENT','Contract Change Management','Contract Change Management',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-21 06:38:02',34,'2015-06-21 06:38:02'),(1233,249,'DATE_RANGE','Date Range','Date Range',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-22 07:24:45',14,'2018-04-03 20:54:40'),(1234,249,'GL_PERIOD','GL Period','GL Period',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-22 07:24:46',14,'2018-04-03 20:55:24'),(1235,249,'PA_PERIOD','PA Period','PA Period',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-22 07:24:46',14,'2018-04-03 20:56:10'),(1236,249,'None','None','None',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-22 07:24:47',14,'2018-04-03 20:56:50'),(1237,251,'PROJECT','project','project',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-22 07:24:47',14,'2018-04-03 20:57:31'),(1238,251,'TOP_TASKS','Top Tasks','Top Tasks',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-22 07:24:48',14,'2018-04-03 20:57:57'),(1239,251,'LOWEST_TASKS','lowest tasks','lowest tasks',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-22 07:24:48',14,'2018-04-03 20:58:29'),(1240,251,'TOP_AND_LOWEST_TASKS','top and lowest tasks','top and lowest tasks',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,34,'2015-06-22 07:24:49',14,'2018-04-03 20:59:42'),(1241,252,'APPR_COST','Approved Cost','Approved Cost',NULL,NULL,NULL,'C',NULL,'',NULL,NULL,NULL,34,'2015-07-03 15:29:09',34,'2015-10-13 03:51:36'),(1242,252,'APPR_REV','Approved Revenue','Approved Revenue',NULL,NULL,NULL,'R',NULL,'',NULL,NULL,NULL,34,'2015-07-03 15:29:09',34,'2015-10-13 03:51:35'),(1243,252,'COST_EST','Cost Estimate','Cost Estimate',NULL,NULL,NULL,'C',NULL,'',NULL,NULL,NULL,34,'2015-07-03 15:29:09',34,'2015-10-13 03:51:36'),(1244,252,'REV_EST','Revenue Estimate','Revenue Estimate',NULL,NULL,NULL,'R',NULL,'',NULL,NULL,NULL,34,'2015-07-03 15:29:09',34,'2015-10-13 03:51:36'),(1245,252,'COST_FORECAST','Cost Forecast','Cost Forecast',NULL,NULL,NULL,'C',NULL,'',NULL,NULL,NULL,34,'2015-07-03 15:29:10',34,'2015-10-13 03:51:36'),(1246,252,'REV_FORECAST','Revenue Forecast','Revenue Forecast',NULL,NULL,NULL,'R',NULL,'',NULL,NULL,NULL,34,'2015-07-03 15:29:10',34,'2015-10-13 03:51:37'),(1247,253,'IN','Initiation','Initiation',NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-08 03:35:44',34,'2015-07-08 05:05:38'),(1248,253,'PL','Planning','Planning',NULL,2,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-08 03:35:44',34,'2015-07-08 05:05:38'),(1249,253,'EX','Execution','Execution',NULL,3,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-08 03:35:44',34,'2015-07-08 05:05:38'),(1250,253,'MC','Monitoring & Control','Monitoring & Control',NULL,4,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-08 03:35:44',34,'2015-07-08 05:05:38'),(1251,253,'CL','Closure','Closure',NULL,5,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-08 03:35:44',34,'2015-07-08 05:05:39'),(1252,253,'DE','Definition','Definition',NULL,6,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-08 03:35:44',34,'2015-07-08 05:05:39'),(1253,254,'Deferred Revenue','Deferred Revenue ','A Deferred Revenue classification generates an invoice for the amount of the event, and has no immediate effect on revenue. ',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-10 06:07:14',14,'2018-05-07 16:17:08'),(1254,254,'WRITE_ON','Write On','Write On - Increase Revenue',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-10 06:07:14',34,'2015-07-10 06:07:14'),(1255,254,'AUTOMATIC','Automatic','Revenue & Invoive amounts can be entred  automatically',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-10 06:07:14',14,'2018-05-07 16:15:54'),(1256,254,'WRITE_OFF','Write Off','Write Off - Reduce Revenue',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-10 06:07:14',34,'2015-07-10 06:07:14'),(1257,254,'MANUAL','Manual','Revenue & Invoive amounts can be entred  manually',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-10 06:07:14',34,'2015-07-10 06:07:14'),(1258,254,'Invoice Reduction','Invoice Reduction','An Invoice Reduction classification reduces the amount of an invoice without affecting revenue. For example, you can use an invoice reduction event to give a discount to a customer on a particular invoice',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-10 06:07:14',14,'2018-05-07 16:17:36'),(1259,255,'APPROVED','审批','Approved',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-17 15:06:55',1,'2017-07-03 12:14:21'),(1260,255,'INPROCESS','处理中','Inprocess',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-17 15:06:55',1,'2017-07-03 12:14:40'),(1261,255,'ENTERED','确认','Entered',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-17 15:06:56',1,'2017-07-03 12:14:30'),(1262,255,'REAPPROVAL','重新审批','Require ReApproval',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-17 15:06:56',1,'2017-07-03 12:15:04'),(1263,255,'ONHOLD','挂起','On Hold',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-17 15:06:56',1,'2017-07-03 12:14:46'),(1264,256,'EMPLOYEE','雇员','Employee',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-21 08:05:38',1,'2017-07-03 09:14:42'),(1265,256,'INTERNAL','内部','Internal Supplier',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-21 08:05:38',1,'2017-07-03 09:15:13'),(1266,256,'VMI','供应商管理库存','VMI',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-21 08:05:38',1,'2017-07-03 09:16:30'),(1267,256,'FOREIGN','国外','Foreign',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-21 08:06:51',1,'2017-07-03 09:15:05'),(1268,256,'EXTN_SUPPLIER','外部供应商','External Supplier',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-07-21 08:16:51',1,'2017-07-03 09:14:57'),(1269,257,'TIMESHEET_REVENUE','Labor Revenue','Labor Revenue',NULL,NULL,NULL,'TIMESHEET',NULL,'',NULL,NULL,NULL,34,'2015-08-21 11:45:24',34,'2015-09-27 09:33:05'),(1270,257,'INV_CLEAR','Inventory Expenditure Clearing','Inventory Expenditure Clearing',NULL,NULL,NULL,'INV',NULL,'',NULL,NULL,NULL,34,'2015-08-21 11:45:25',34,'2015-09-27 09:34:44'),(1271,257,'INV_EXPEN','Inventory Expenditure','Inventory Expenditure',NULL,NULL,NULL,'INV',NULL,'',NULL,NULL,NULL,34,'2015-08-21 11:45:25',34,'2015-09-27 09:15:25'),(1272,257,'INV_REVENUE','Inventory Revenue','Inventory Revenue',NULL,NULL,NULL,'INV',NULL,'',NULL,NULL,NULL,34,'2015-08-21 11:45:26',34,'2015-09-27 09:15:24'),(1273,257,'TIMESHEET_CLEAR','Labor Expenditure Clearing','Labor Expenditure Clearing',NULL,NULL,NULL,'TIMESHEET',NULL,'',NULL,NULL,NULL,34,'2015-08-21 11:45:26',34,'2015-09-27 09:34:44'),(1274,257,'TIMESHEET_EXPEN','Labor Expenditure ','Labor Expenditure ',NULL,NULL,NULL,'TIMESHEET',NULL,'',NULL,NULL,NULL,34,'2015-08-21 11:45:26',34,'2015-09-27 09:33:05'),(1275,258,'ACCOMMODATION','住宿','Accommodation',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-08-24 03:45:21',1,'2017-07-03 10:51:21'),(1276,258,'MEALS','餐饮','Meals',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-08-24 03:45:22',1,'2017-07-03 10:52:30'),(1277,258,'MILEAGE','行驶里程','Mileage',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-08-24 03:45:22',1,'2017-07-03 10:55:41'),(1278,258,'AIR_FARE','空运','Air Fare',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-08-24 03:45:23',1,'2017-07-03 10:52:12'),(1279,258,'CAR_RENTAL','租车','Car Rental',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-08-24 03:45:23',1,'2017-07-03 10:52:22'),(1280,258,'PER_DIEM','差旅','Per Diem',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-08-24 03:45:23',1,'2017-07-03 10:53:20'),(1281,258,'TRANSPORT','运输','Transport',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-08-24 03:45:24',1,'2017-07-03 10:54:29'),(1282,258,'MISCELLANEOUS','杂项','Miscellaneous',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-08-24 03:45:24',1,'2017-07-03 10:53:28'),(1283,259,'COUNTRY','Country','Country',14,1,NULL,NULL,NULL,'',NULL,'2001-01-01',NULL,34,'2015-08-24 12:12:51',34,'2015-08-24 12:17:28'),(1284,259,'CITY','City','City',13,1,NULL,NULL,NULL,'',NULL,'2001-01-01',NULL,34,'2015-08-24 12:12:52',34,'2015-08-24 12:17:27'),(1285,259,'STATE','State','State',15,1,NULL,NULL,NULL,'',NULL,'2001-01-01',NULL,34,'2015-08-24 12:12:52',34,'2015-08-24 12:19:31'),(1286,151,'HR_LOCATION','HR Location','HR Locations',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-08-24 12:13:37',34,'2015-08-24 12:13:37'),(1287,202,'EXPENSE_CLAIM','费用申请','Expense Claims',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-08-26 11:20:56',1,'2017-07-03 12:10:40'),(1288,133,'EXPENSE','费用','Expense',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,34,'2015-08-30 08:55:29',14,'2018-02-20 09:16:40'),(1289,260,'ELITE','Elite Femme','Elite Femme',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-14 07:21:28',34,'2015-09-14 07:21:28'),(1290,260,'BASIC','Basic','Basic',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-14 07:21:28',34,'2015-09-14 07:21:28'),(1291,260,'ORDINARY','Ordinary','Ordinary',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-14 07:21:28',34,'2015-09-14 07:21:28'),(1292,261,'COMPULSORY','Compulsory','Compulsory',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-14 13:53:30',34,'2015-09-14 13:54:59'),(1293,261,'SUPP_CHILD','Supplementary Child','Supplementary Child',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-14 13:53:30',34,'2015-09-14 13:57:32'),(1294,261,'SUPP_DRIVER','Supplementary Driver','Supplementary Driver',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-14 13:53:31',34,'2015-09-14 13:57:33'),(1296,261,'SUPP_CAR','Supplementary Car','Supplementary Car',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-14 14:00:18',34,'2015-09-15 03:46:29'),(1297,261,'SUPP_SPOUSE','Supplementary Spouse','Supplementary Spouse',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-15 03:46:28',34,'2015-09-15 03:46:28'),(1298,262,'IND_BNGLR_SVC','IN Bnglr Service','IN Bnglr Service',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-24 09:11:17',34,'2015-09-24 12:49:30'),(1299,262,'IND_BNGLR_RD','IN Bnglr R&D','IN Bnglr R&D',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-24 09:11:17',34,'2015-09-24 12:49:30'),(1300,262,'US_CA_SVC','US CA Service','US CA Service',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-24 12:46:54',34,'2015-09-24 12:49:31'),(1301,262,'US_CA_RD','US CA R&D','US CA R&D',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-24 12:46:54',34,'2015-09-24 12:49:31'),(1302,257,'UNBILL_RECE','Unbilled Receivable Account','Unbilled Receivable Account',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-24 14:30:58',34,'2015-09-24 14:30:58'),(1303,257,'MISC_EXPEN','Miscellaneous Expenditure','Miscellaneous Expenditure',NULL,NULL,NULL,'MISC',NULL,'',NULL,NULL,NULL,34,'2015-09-27 08:31:47',34,'2015-09-27 09:15:26'),(1304,257,'USAGE_EXPEN','Usage Expenditure','Usage Expenditure',NULL,NULL,NULL,'USAGE',NULL,'',NULL,NULL,NULL,34,'2015-09-27 08:31:47',34,'2015-09-27 09:15:26'),(1305,257,'MISC_CLEAR','Miscellaneous Clear','Miscellaneous Clear',NULL,NULL,NULL,'MISC',NULL,'',NULL,NULL,NULL,34,'2015-09-27 08:31:47',34,'2015-09-27 09:15:26'),(1306,257,'USAGE_CLEAR','Usage Clear','Usage Clear',NULL,NULL,NULL,'USAGE',NULL,'',NULL,NULL,NULL,34,'2015-09-27 08:31:48',34,'2015-09-27 09:15:41'),(1307,257,'DEFAULT_EXPEN','Default Expenditure','Default Expenditure',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-27 08:31:48',34,'2015-09-27 08:31:48'),(1308,257,'DEFAULT_EXPEN_CLEAR','Default Expenditure Clear','Default Expenditure Clear',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-09-27 08:31:48',34,'2015-09-27 08:31:48'),(1309,263,'gl','总账','General Ledger',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:26',1,'2017-07-03 10:48:07'),(1310,263,'ap','应付账户','Accounts Payable',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:26',1,'2017-07-03 10:44:32'),(1311,263,'fa','固定资产','Fixed Asset',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:27',1,'2017-07-03 10:47:13'),(1312,263,'cm','现金管理','Cash Management',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:27',1,'2017-07-03 10:45:19'),(1313,263,'ar','应收账户','Accounts Receviable',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:27',1,'2017-07-03 10:44:46'),(1314,263,'inv','库存','Inventory',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:27',1,'2017-07-03 10:49:22'),(1315,263,'pur','Purchasing','201. Purchasing',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:27',34,'2015-10-01 12:48:27'),(1316,263,'sd','Sales & Distribution','202. Sales & Distribution',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:27',34,'2015-10-01 12:48:27'),(1317,263,'bom','物料清单','203. Bills of Material',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:28',1,'2017-07-03 10:44:55'),(1318,263,'wip','Work In Process','204. Work In Process',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:28',34,'2015-10-01 12:48:28'),(1319,263,'fp','预测与计划','205. Forecast & Planning',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:28',1,'2017-07-03 10:47:59'),(1320,263,'sys','System','1. System',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:28',34,'2015-10-01 12:48:28'),(1321,263,'org','组织','2. Organization',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:28',1,'2017-07-03 10:49:43'),(1322,263,'ext','外部','900. Extension',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:29',1,'2017-07-03 10:47:02'),(1323,263,'hr','人力资源','300. HR',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:29',1,'2017-07-03 10:48:54'),(1324,263,'cc','修改控制','800. Change Control',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:29',1,'2017-07-03 10:45:09'),(1325,263,'da','单据与分析','903. Document & Analysis',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:29',1,'2017-07-03 10:45:42'),(1326,263,'pos','销售站','206. Point Of Sale',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:29',1,'2017-07-03 10:49:51'),(1327,263,'am','资产保养','210.Asset Maintenance',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:30',1,'2017-07-03 10:44:09'),(1328,263,'adm','管理','911.Admin',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:30',1,'2017-07-03 10:43:33'),(1329,263,'ec','电子商务','210.eCommerce',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:30',1,'2017-07-03 10:45:52'),(1330,263,'hd','服务','911. Help Desk',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:30',1,'2017-07-03 10:48:41'),(1331,263,'cst','成本','212.Costing',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:30',1,'2017-07-03 10:45:26'),(1332,263,'prj','Projects','400. Projects',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:48:30',34,'2015-10-01 12:48:30'),(1333,263,'man','人工','Manual',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-01 12:50:01',1,'2017-07-03 10:49:35'),(1334,257,'UNEARNED_REVENUE','Unearned Revenue','Unearned Revenue',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-12 05:26:50',34,'2015-10-12 05:26:50'),(1335,257,'REVENUE','Revenue','Revenue',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-10-12 05:26:51',34,'2015-10-12 05:26:51'),(1336,182,'qa','Quality','213.Quality',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-02 03:27:42',34,'2015-11-02 03:29:06'),(1339,264,'CAUSE','原因','Cause',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-02 03:31:59',1,'2017-07-22 09:19:32'),(1340,264,'ACTION','动作','Action',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-02 03:31:59',1,'2017-07-22 09:19:12'),(1341,264,'COMMENT','备注','Comment',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-02 03:31:59',1,'2017-07-22 09:19:40'),(1342,264,'ATTRIBUTE','属性','Quality attribute',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-02 03:32:00',1,'2017-07-22 09:19:21'),(1343,264,'VARIABLE','变量','Variable',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-02 03:32:00',1,'2017-07-22 09:20:11'),(1344,264,'REFERENCE','参考信息','Reference Information',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-02 03:32:00',1,'2017-07-22 09:19:59'),(1345,265,'EQUIP_MONITOR','设备监控','Equipment Monitoring',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:39',1,'2017-07-22 09:10:18'),(1346,265,'WIP_INSP','过程检验（在制品）','WIP Inspection',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:39',1,'2017-07-22 09:14:08'),(1347,265,'SAFTEY_PLAN','安全计划','Safety Plan',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:39',1,'2017-07-22 09:12:57'),(1348,265,'RECEIVING_INSP','接收检验','Receiving Inspection',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:39',1,'2017-07-22 09:12:45'),(1349,265,'WIP_WOLC','完工检验','Work Order Completion',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:40',1,'2017-07-22 09:14:35'),(1350,265,'EQUIP_ANALYSIS','设备分析','Equipment Analysis',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:40',1,'2017-07-22 09:09:49'),(1351,265,'FIELD_RETURN','现场退货','Field Returns',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:40',1,'2017-07-22 09:10:57'),(1352,265,'FAIL_ANALYSIS','故障分析','Failure Analysis',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:40',1,'2017-07-22 09:10:38'),(1353,265,'EQUIP_MAINTENANCE','维修检查','Maintenance Inspection',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:40',1,'2017-07-22 09:10:04'),(1354,265,'INSP_CHECKLIST','检查清单','Inspection Checklist',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:40',1,'2017-07-22 09:11:18'),(1355,265,'NON_CONFIRM','不合格计划','Nonconformance Plan',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:41',1,'2017-07-22 09:11:43'),(1356,265,'OTHERS','其它','Others',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 03:30:41',1,'2017-07-22 09:12:25'),(1357,266,'org.org_code','组织代码','Org Code',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 09:21:13',1,'2017-07-22 09:21:59'),(1358,266,'org.org_id','组织ID','Org Id',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 09:21:14',1,'2017-07-22 09:22:10'),(1359,266,'po_header.po_number','采购单号','PO Number',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 09:21:14',1,'2017-07-22 09:22:21'),(1360,266,'item.item_id_m','主项目ID','Master Item Id',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 09:21:14',1,'2017-07-22 09:21:36'),(1361,266,'supplier.supplier_id','供应商ID','Supplier Id',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 09:21:14',1,'2017-07-22 09:22:49'),(1362,266,'item.item_number','项目名称','Item Number',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 09:21:14',1,'2017-07-22 09:21:48'),(1363,266,'subinventory.subinventory_id','仓库ID','Subinventory Id',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-06 09:21:14',1,'2017-07-22 09:22:38'),(1364,267,'REJECT','拒绝装运','Reject Shipment',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:45',1,'2017-07-22 09:24:47'),(1365,267,'ACCEPT','接受装运','Accept Shipment',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:45',1,'2017-07-22 09:24:35'),(1366,267,'PO_HOLD','挂起采购','Place PO On Hold',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:45',1,'2017-07-22 09:27:57'),(1367,267,'REJECT_NIPUT','拒绝输入','Reject Input',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:45',1,'2017-07-22 09:26:24'),(1368,267,'WO_HOLD','挂起工单','Place WO On Hold',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:45',1,'2017-07-22 09:27:36'),(1369,267,'SUPPLIER_HOLD','挂起供应商','Place Supplier On Hold',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:46',1,'2017-07-22 09:27:46'),(1370,267,'CREATE_WO','创建工单','Create WO',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:46',1,'2017-07-22 09:25:04'),(1371,267,'DISPLAY_MESSAGE','显示消息','Display a message',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:46',1,'2017-07-22 09:25:15'),(1372,267,'SEND_NOTIFICATION','发送通知','Send Notification',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:46',1,'2017-07-22 09:26:41'),(1373,267,'LOT_STATUS','分配批次状态','Assign Lot Status',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:47',1,'2017-07-22 09:25:35'),(1374,267,'SN_STATUS','分配序列状态','Assign Serial Status',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:47',1,'2017-07-22 09:27:03'),(1375,267,'RUN_PROGRAM','运行程序','Run Program',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-07 11:43:47',1,'2017-07-22 09:26:32'),(1376,224,'it_IT','Italian','Italian-italiano',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-11 03:47:03',34,'2015-11-11 03:47:03'),(1377,266,'category.category','目录','Category',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-12 05:23:06',1,'2017-07-22 09:21:15'),(1378,266,'supplier.supplier_name','供应商名','Supplier Name',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2015-11-12 05:40:26',1,'2017-07-22 09:23:00'),(1379,182,'pm','Process Manufacturing','Process Manufacturing',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-02-11 08:43:54',34,'2016-02-11 08:43:54'),(1380,268,'BLEND','Blending Formula','Blending Formula',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-08 06:28:43',34,'2016-03-08 08:12:55'),(1381,268,'PROCESS','Production Formula','Production Formula',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-08 06:28:43',34,'2016-03-08 08:12:57'),(1382,268,'COST','Costing Formula','Costing Formula',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-08 06:28:43',34,'2016-03-08 08:12:56'),(1383,268,'MIX','Mixing Formula','Mixing Formula',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-08 06:28:43',34,'2016-03-08 08:12:56'),(1384,268,'PKG','Packaging Formula','Packaging Formula',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-08 06:28:44',34,'2016-03-08 08:12:56'),(1385,268,'CAPSULE','Capsulation Formula','Capsulation Formula',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-08 06:28:44',34,'2016-03-08 08:12:57'),(1386,269,'BRKDOWN','Break Down','Break Down',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-14 10:24:39',34,'2016-03-14 10:24:39'),(1387,269,'RUNTIME','Run Time','Run Time',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-14 10:24:39',34,'2016-03-14 10:24:39'),(1388,269,'PREPROCESS','Pre Process','Pre Process',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-14 10:24:39',34,'2016-03-14 10:24:39'),(1389,269,'PKG','Packaging','Packaging',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-14 10:24:39',34,'2016-03-14 10:24:39'),(1390,269,'WASH','Washing','Washing',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-14 10:24:40',34,'2016-03-14 10:24:40'),(1391,269,'BLEND','Blend','Blend',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-14 10:24:40',34,'2016-03-14 10:24:40'),(1392,269,'HEAT','Heat','Heat',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-14 10:24:40',34,'2016-03-14 10:24:40'),(1393,269,'DRY','Dry','Dry',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-14 10:24:41',34,'2016-03-14 10:24:41'),(1394,269,'COOL','Cooling','Cooling',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-14 10:24:41',34,'2016-03-14 10:24:41'),(1395,269,'FILTER','Filtering','Filtering',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,34,'2016-03-14 10:24:41',34,'2016-03-14 10:24:41'),(1396,142,'PROCESS','批次加工','Process Batch',NULL,NULL,0,NULL,NULL,'',NULL,'2016-04-02','2016-04-02',34,'2016-04-02 15:03:56',1,'2017-07-03 12:17:50'),(1397,86,'PM','过程制造','Process Manufacturing',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2016-05-17 04:17:57',1,'2017-07-03 11:06:38'),(1398,157,'AR_ADJUSTMENT','应收调整','AR Adjustments',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,34,'2016-06-25 17:25:56',1,'2017-07-03 10:21:53'),(1399,143,'CANCELLED','取消','Cancelled',NULL,NULL,0,NULL,NULL,'',NULL,'2014-01-03','2014-01-03',1,'2016-08-06 10:19:50',1,'2017-07-03 12:18:08'),(1400,224,'es_MX','Spanish Mexican','espa?ol mexicano',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-10-30 01:22:23',1,'2016-10-30 01:22:23'),(1401,182,'lms','Learning Management System','Learning Management System',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-02 14:19:22',1,'2016-11-02 14:19:22'),(1402,270,'TUITION','Tuition','Tuition',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-10 12:56:33',1,'2016-11-10 12:59:29'),(1403,270,'CHARGES','Charges','Charges',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-10 12:56:33',1,'2016-11-10 12:59:29'),(1404,270,'LIBRARY_FEES','Library Fees','Library Fees',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-10 12:59:29',1,'2016-11-10 12:59:29'),(1405,271,'NON_TAXABLE','Non Taxable','Non Taxable',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-10 13:03:18',1,'2016-11-10 13:03:18'),(1406,271,'TAXABLE','Taxable','Taxable',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-10 13:03:18',1,'2016-11-10 13:03:18'),(1407,272,'MATH','Mathematics','Mathematics',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-11 13:17:12',1,'2016-11-11 13:17:12'),(1408,272,'SCO','Scocilogy','Scocilogy',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-11 13:17:12',1,'2016-11-11 13:17:12'),(1409,272,'SCI','Science','Science',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-11 13:17:12',1,'2016-11-11 13:17:12'),(1410,272,'MAN','Management','Management',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-11 13:17:12',1,'2016-11-11 13:17:12'),(1411,272,'PHY','Physics','Physics',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-11 13:17:12',1,'2016-11-11 13:17:12'),(1412,272,'ECO','Economics','Economics',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-11 13:17:12',1,'2016-11-11 13:17:12'),(1413,272,'BUSI','Business','Business',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-11 13:17:12',1,'2016-11-11 13:17:12'),(1414,272,'GEO','Geography','Geography',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-11 13:17:12',1,'2016-11-11 13:17:12'),(1415,272,'HIST','History','History',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-11 13:17:12',1,'2016-11-11 13:17:12'),(1416,119,'STUDENT','学生','Student',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-18 18:07:18',1,'2017-07-03 11:45:14'),(1417,119,'PROF','教授','Professor',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,1,'2016-11-18 18:07:18',1,'2017-07-03 11:45:02'),(1418,272,'ADMIN','Admin','Administrator',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-02-07 17:36:53',1,'2017-02-07 17:36:53'),(1419,273,'REG_A1','Region A1','Region A1',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-03-01 09:13:22',1,'2017-03-01 09:13:22'),(1420,273,'CUST_TECHM','Cust Tech Ma','Cust Tech Ma',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-03-01 09:13:22',1,'2017-03-01 09:13:22'),(1421,273,'REG_A2','Region A2','Region A2',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-03-01 09:13:22',1,'2017-03-01 09:13:22'),(1422,273,'REG_A3','Region A3','Region A3',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-03-01 09:13:22',1,'2017-03-01 09:13:22'),(1423,274,'REG_A1','Region A1','Region A1',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-03-01 09:13:54',1,'2017-03-01 09:13:54'),(1424,274,'CUST_TECHM','Cust Tech Ma','Cust Tech Ma',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-03-01 09:13:54',1,'2017-03-01 09:13:54'),(1425,274,'REG_A3','Region A3','Region A3',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-03-01 09:13:54',1,'2017-03-01 09:13:54'),(1426,274,'REG_A2','Region A2','Region A2',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-03-01 09:13:54',1,'2017-03-01 09:13:54'),(1427,274,'PROMO_A3','Promo A3','Promo A3',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-03-01 09:14:44',1,'2017-03-01 09:14:44'),(1428,274,'PROMO_A1','Promo A2','Promo A2',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-03-01 09:14:44',1,'2017-03-01 09:14:44'),(1429,223,'UK_BOTH','UK Both','UK Both',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-03-26 10:50:42',1,'2017-03-26 10:50:42'),(1430,275,'CONTENT','Content','Content',NULL,2,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-04-19 18:52:25',1,'2017-04-19 18:52:25'),(1431,275,'FILE','File','File',NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL,1,'2017-04-19 18:52:25',1,'2017-04-19 18:52:25'),(1432,201,'Medical','病假','Medical Leave',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 11:26:23',1,'2017-07-03 12:08:46'),(1433,276,'FLAT','Flat Amount','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 16:31:56',0,'2017-05-19 16:31:56'),(1434,276,'P_BASIC','% Of Basic','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 16:34:19',0,'2017-05-19 16:34:19'),(1435,276,'P_REGULAR','% Of Regular','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 16:34:43',0,'2017-05-19 16:34:43'),(1436,276,'P_BASIC_REGULAR','% Of Basic & Regular','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 16:34:58',0,'2017-05-19 16:34:58'),(1437,276,'HOUR_RATE','Hour Rate','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 16:35:15',0,'2017-05-19 16:35:15'),(1438,277,'FLAT','Flat Amount','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 21:24:45',0,'2017-05-19 21:24:45'),(1439,277,'P_BASIC','% Of Basic','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 21:25:09',0,'2017-05-19 21:25:09'),(1440,277,'P_TOTAL','% Of Total','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 21:25:23',0,'2017-05-19 21:25:23'),(1441,277,'P_TOTAL_TAX','% Of Total Taxable','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 21:26:18',0,'2017-05-19 21:26:45'),(1443,277,'REFERRAL_TABLE','Referral Table','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 21:28:46',0,'2017-05-19 21:30:14'),(1444,278,'ON_ENTRY','On Entry','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 21:30:44',0,'2017-05-19 21:30:44'),(1445,278,'AFTER_EARNING','After Earning','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-19 21:31:22',0,'2017-05-19 21:31:22'),(1446,279,'ITEM_SPEC','项目规程','Item Specifications',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 09:26:59',1,'2017-07-22 09:17:54'),(1447,279,'SUPP_SPEC','供应商规程','Supplier Specifications',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 09:27:16',1,'2017-07-22 09:18:15'),(1448,279,'CUST_SPEC','客户规程','Customer Specifications',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 09:27:31',1,'2017-07-22 09:17:14'),(1449,279,'NO_SPEC','无规程','No Specifications',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 09:27:48',1,'2017-07-22 09:18:43'),(1450,280,'UR_L','用户下限值','User Range Low',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:45:50',1,'2017-07-22 09:34:11'),(1451,280,'UR_H','用户上限值','User Range High',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:46:00',1,'2017-07-22 09:33:32'),(1452,280,'SR_L','规定下限值','Specification Range Low',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:46:16',1,'2017-07-22 09:32:36'),(1453,280,'SR_H','规定上限值','Specification Range High',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:46:29',1,'2017-07-22 09:32:09'),(1454,280,'RR_L','理想下限值','Resonable Range Low',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:46:42',1,'2017-07-22 09:31:27'),(1455,280,'RR_H','理想上限值','Resonable Range High',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:47:00',1,'2017-07-22 09:30:59'),(1456,281,'VALUE','值','Value',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:52:02',1,'2017-07-22 09:34:59'),(1457,281,'SPEC_LIMIT','规程限制','Specification Limit',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:53:00',1,'2017-07-22 09:34:47'),(1458,282,'EQUAL','=','',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:59:15',0,'2017-05-21 10:59:15'),(1459,282,'NE','!=','',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:59:30',0,'2017-05-21 10:59:30'),(1460,282,'GT','>','',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:59:44',0,'2017-05-21 10:59:44'),(1461,282,'GTE','>=','',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 10:59:55',0,'2017-05-21 10:59:55'),(1462,282,'LT','<','',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 11:00:07',0,'2017-05-21 11:00:07'),(1463,282,'LTE','<=','',NULL,NULL,1,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-21 11:00:17',0,'2017-05-21 11:00:17'),(1464,283,'FIX','Fixed','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:29:34',0,'2017-05-22 15:29:34'),(1465,283,'PROP','Proportional','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:29:48',0,'2017-05-22 15:29:48'),(1466,284,'AUTO','Automatic','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:30:08',0,'2017-05-22 15:30:08'),(1467,284,'MANUAL','Manual','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:30:22',0,'2017-05-22 15:30:22'),(1468,284,'INC','Incremental','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:30:36',0,'2017-05-22 15:30:36'),(1469,284,'AUTOBS','Auto By Step','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:30:51',0,'2017-05-22 15:30:51'),(1470,285,'AUTO','Automatic','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:41:36',0,'2017-05-22 15:41:36'),(1471,285,'MANUAL','Manual','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:42:07',0,'2017-05-22 15:42:07'),(1472,285,'INC','Incremental','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:42:19',0,'2017-05-22 15:42:19'),(1473,285,'AUTOBS','Auto By Step','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:42:32',0,'2017-05-22 15:42:32'),(1474,286,'REWORK','Rework','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:46:07',0,'2017-05-22 15:46:07'),(1475,286,'SAMPLE','Sample','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:46:16',0,'2017-05-22 15:46:16'),(1476,286,'WASTE','Waste','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:46:28',0,'2017-05-22 15:46:28'),(1477,286,'YIELD','Yield','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 15:46:39',0,'2017-05-22 15:46:39'),(1478,287,'GENERAL','General','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 16:10:13',0,'2017-05-22 16:10:13'),(1479,287,'SITE','Site','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 16:10:27',0,'2017-05-22 16:10:27'),(1480,287,'MASTER','Master','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-22 16:10:40',0,'2017-05-22 16:10:40'),(1481,288,'SUPERVISOR','Next Supervisor','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-23 16:00:09',0,'2017-05-23 16:00:09'),(1482,288,'POSITION','Position Based','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-23 16:00:28',0,'2017-05-23 16:00:28'),(1483,288,'AMOUNT_LIMIT','BY Amount Limit','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-23 16:01:20',0,'2017-05-23 16:01:20'),(1484,289,'BID','投标','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-23 16:39:42',1,'2017-07-03 11:28:09'),(1485,289,'STANDARD','标准','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-23 16:39:57',1,'2017-07-03 11:28:16'),(1486,290,'INCOMLETE','编辑','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-23 16:40:52',1,'2017-07-03 11:28:42'),(1487,290,'PUBLISHED','发布','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-23 16:41:02',1,'2017-07-03 11:28:51'),(1488,290,'CLOSED','关闭','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-23 16:41:09',1,'2017-07-03 11:28:36'),(1489,290,'ACCEPTED','接受','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-23 16:44:52',1,'2017-07-03 11:28:30'),(1490,123,'Unrestricted_use','非限制','非限制Unrestricted use',NULL,NULL,0,NULL,NULL,'',NULL,NULL,NULL,0,'2017-05-26 17:21:58',1,'2017-07-03 11:16:26'),(1491,291,'APPLIED','Applied','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-01 10:41:22',0,'2017-06-01 10:43:53'),(1492,291,'PENDING_APPROVAL','Pending Approval','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-01 10:41:41',0,'2017-06-01 10:41:41'),(1493,291,'PENDING_CLEARANCE','Pending Clearance','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-01 10:41:55',0,'2017-06-01 10:41:55'),(1494,291,'ACCEPTED','Accepted','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-01 10:42:07',0,'2017-06-01 10:42:07'),(1495,291,'REJECTED','Rejected','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-01 10:42:17',0,'2017-06-01 10:42:17'),(1496,291,'COMPLETED','Completed','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-01 10:42:28',0,'2017-06-01 10:42:28'),(1497,292,'PO_TOOPEN','待开放','PO to open for recv,invoice etc',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-06 08:54:12',1,'2017-07-07 14:20:33'),(1498,292,'PO_OPENING','开放','PO open for recv,invoice etc',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-06 08:54:32',1,'2017-07-05 18:34:00'),(1499,292,'PO_CANCEL','取消','PO Cancel',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-06 08:55:19',1,'2017-07-03 11:29:03'),(1500,292,'PO_CLOSED','关闭','PO closed',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-06 08:55:43',1,'2017-07-03 11:29:11'),(1501,293,'MANUAL','人工','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-06 17:45:55',1,'2017-07-03 11:34:03'),(1502,293,'ECOMMERCE','电子商务','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-06 17:46:08',1,'2017-07-03 11:33:39'),(1503,293,'SERVICE','服务','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-06 17:46:19',1,'2017-07-03 11:34:16'),(1504,293,'INV','库存','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-06 17:46:32',1,'2017-07-03 11:33:46'),(1505,293,'IR','内部申请','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-06 17:46:56',1,'2017-07-03 11:33:56'),(1506,293,'QUOTE','报价','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-06 17:47:08',1,'2017-07-03 11:34:10'),(1507,293,'COPY','拷贝','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-06 17:47:18',1,'2017-07-03 11:33:30'),(1508,294,'WIP','生产','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-07 08:07:47',14,'2018-05-13 13:42:55'),(1509,294,'INV','库存','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-07 08:07:59',14,'2018-05-13 13:43:03'),(1510,294,'PUR','供应商','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-07 08:08:10',1,'2017-07-03 11:34:38'),(1511,295,'EXTERNAL','客户','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-07 08:08:33',1,'2017-07-03 11:35:07'),(1512,295,'INTERNAL','内部','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-07 08:08:46',1,'2017-07-03 11:35:12'),(1513,296,'TEXT','Text','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-09 07:50:55',0,'2017-06-09 07:50:55'),(1514,296,'SELECT','Select','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-09 07:51:09',0,'2017-06-09 07:51:09'),(1515,296,'MULTI_SELECT','Multi Select','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-09 07:51:22',0,'2017-06-09 07:51:22'),(1516,296,'TEXT_AREA','Text Area','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-09 07:51:41',0,'2017-06-09 07:51:41'),(1517,296,'CHECK_BOX','Check Box','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-09 07:51:55',0,'2017-06-09 07:51:55'),(1518,296,'IMAGE','Image','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-09 07:52:08',0,'2017-06-09 07:52:08'),(1519,297,'INCOMPLETE','编辑','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-12 16:02:47',1,'2017-07-03 11:18:10'),(1520,297,'ENTERED','确认','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-12 16:03:19',1,'2017-07-03 11:18:03'),(1521,297,'COMPLETED','完成','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-12 16:03:44',1,'2017-07-03 11:17:52'),(1522,297,'CANCELED','取消','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,0,'2017-06-12 16:04:01',1,'2017-07-03 11:17:46'),(1523,298,'UNPAID','未付','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-06-17 08:13:14',1,'2017-07-20 10:14:01'),(1524,298,'FALLY_PAID','全付','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-06-17 08:13:37',1,'2017-07-20 10:13:39'),(1525,298,'PARTIALLY_PAID','部分支付','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-06-17 08:14:58',1,'2017-07-20 10:13:52'),(1526,299,'INCOMPLETE','编辑','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-06-17 08:15:31',11,'2017-12-22 10:32:02'),(1527,299,'COMPLETE','完成','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-06-17 08:15:42',11,'2017-12-22 10:32:21'),(1528,299,'CLOSED','关闭','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-06-17 08:15:57',11,'2017-12-22 10:32:30'),(1529,300,'ENTERED','确认','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-05 11:14:17',1,'2017-07-05 11:21:19'),(1530,300,'AWAITING_PICKING','待分拣','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-05 11:14:31',1,'2017-07-05 11:20:59'),(1531,300,'PICKED','已分捡','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-05 11:14:47',1,'2017-07-05 11:22:02'),(1532,300,'PARTIAL_PICKED','部分分捡','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-05 11:15:06',1,'2017-07-05 11:21:34'),(1533,300,'SHIPPED','已发货','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-05 11:15:25',1,'2017-07-05 11:22:10'),(1534,300,'PARTIAL_SHIPPED','部分发货','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-05 11:15:42',1,'2017-07-05 11:21:47'),(1535,300,'AWAITING_INVOICING','待开票','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-05 11:16:00',1,'2017-07-05 11:20:50'),(1536,300,'AWAITING_CLOSING','待关闭','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-05 11:16:20',1,'2017-07-05 11:20:35'),(1537,300,'CLOSED','关闭','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-05 11:16:35',1,'2017-07-05 11:21:08'),(1538,302,'INCOMPLETE','编辑','Incomplete',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-20 10:15:20',1,'2017-07-20 10:15:20'),(1539,302,'COMPLETE','完成','Complete',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-20 10:15:44',1,'2017-07-20 10:15:44'),(1540,302,'CLOSED','关闭','Closed',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-20 10:16:02',1,'2017-07-20 10:16:02'),(1541,302,'CANCELLED','已取消','Cancelled',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-20 10:16:22',1,'2017-07-20 10:16:22'),(1542,303,'INVOICE','发票','Invoice',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-21 13:09:57',1,'2017-07-21 13:09:57'),(1543,303,'WF','核销','Write-off',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-21 13:11:07',1,'2017-07-21 13:11:07'),(1544,303,'REFUND','退款','Refund',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-07-21 13:11:59',1,'2017-07-21 13:11:59'),(1545,304,'Qualified','合格','Qualified',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-09-06 10:18:10',1,'2017-09-06 10:18:10'),(1546,304,'Scraped','废品','Scraped',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-09-06 10:18:29',1,'2017-09-06 10:18:29'),(1547,304,'Defective','次品','Defective',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-09-06 10:18:47',1,'2017-09-06 10:18:47'),(1548,304,'Rework','返工','Rework',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-09-06 10:19:18',1,'2017-09-06 10:19:18'),(1549,304,'Repaired','返工合格','Repaired',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-09-06 10:20:01',1,'2017-09-06 10:20:01'),(1550,304,'ReDefective','亚合格','ReDefective',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,1,'2017-09-06 10:20:47',1,'2017-09-06 10:20:47'),(1551,167,'CANCELED','取消','9.Canceled',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-09-27 15:19:03',11,'2017-09-27 15:19:44'),(1552,305,'ENTERED','Entered','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-10-18 14:49:29',11,'2017-10-18 14:49:29'),(1553,305,'APPROVED','Approved','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-10-18 14:49:39',11,'2017-10-18 14:49:39'),(1554,305,'CANCELLED','Cancelled','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-10-18 14:49:51',11,'2017-10-18 14:49:51'),(1555,305,'CLOSED','Closed','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-10-18 14:50:12',11,'2017-10-18 14:50:12'),(1556,305,'CONVERTED_QUOTE','Converted to Quote','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-10-18 14:50:33',11,'2017-10-18 14:50:33'),(1557,305,'CONVERTED_OPPORTUNITY','Converted to Opportunity','',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-10-18 14:50:56',11,'2017-10-18 14:50:56'),(1558,83,'C','成本','Cost',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-10-22 16:24:45',11,'2017-10-22 16:24:45'),(1559,83,'PL','损益','Profit and Losses',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-10-22 16:26:47',11,'2017-10-22 16:26:47'),(1560,308,'PERCENTAGE','Percentage','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-12-07 16:24:01',11,'2017-12-07 16:24:01'),(1561,308,'FIX_AMOUNT','Fix Amount','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-12-07 16:24:18',11,'2017-12-07 16:24:18'),(1562,308,'FORMULA','Formula','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-12-07 16:24:32',11,'2017-12-07 16:24:32'),(1563,299,'CANCEL','取消','Cancel',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-12-08 16:15:14',11,'2017-12-22 10:32:38'),(1564,299,'CONFIRM','确认','confirm',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2017-12-22 10:31:56',11,'2017-12-22 10:31:56'),(1565,309,'INCOMPLETE','编辑','Incomplete',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-01-28 10:44:46',14,'2018-01-28 10:44:46'),(1566,309,'INPROCESS','处理中','In Process',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-01-28 10:45:11',14,'2018-01-28 10:45:11'),(1567,309,'APPROVED','同意','APPROVED',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-01-28 10:45:31',14,'2018-01-28 10:45:31'),(1568,309,'READY_FOR_RELEASE','待发布','Ready for Release',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-01-28 10:45:54',14,'2018-01-28 10:45:54'),(1569,309,'RELEASED','发布','Release',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-01-28 10:46:11',14,'2018-01-28 10:46:11'),(1570,309,'IMPLEMENTED','已实施','IMPLEMENTED',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-01-28 10:46:34',14,'2018-01-28 10:46:34'),(1571,84,'OSP','OSP','OSP Items',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-08 09:24:37',14,'2018-02-08 09:24:37'),(1572,310,'inv_material','inv_material','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:20:50',14,'2018-02-12 11:20:50'),(1573,310,'inv_material_oh','inv_material_oh','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:21:00',14,'2018-02-12 11:21:00'),(1574,310,'inv_overhead','inv_overhead','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:21:15',14,'2018-02-12 11:21:15'),(1575,310,'inv_resource','inv_resource','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:21:25',14,'2018-02-12 11:21:25'),(1576,310,'inv_osp','inv_osp','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:25:21',14,'2018-02-12 11:25:21'),(1577,310,'inv_sales','inv_sales','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:24:12',14,'2018-02-12 11:24:12'),(1578,310,'inv_cogs','inv_cogs','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:24:23',14,'2018-02-12 11:24:23'),(1579,310,'inv_deferred_cogs','inv_deferred_cogs','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:24:38',14,'2018-02-12 11:24:38'),(1580,310,'inv_expense','inv_expense','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:19:55',14,'2018-02-12 11:19:55'),(1581,310,'inv_ap_accrual','inv_ap_accrual','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:23:17',14,'2018-02-12 11:23:17'),(1582,310,'inv_ap_exp_accrual','inv_ap_exp_accrual','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:23:30',14,'2018-02-12 11:23:30'),(1583,310,'inv_ppv','inv_ppv','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:23:42',14,'2018-02-12 11:23:42'),(1584,310,'inv_ipv','inv_ipv','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:23:59',14,'2018-02-12 11:23:59'),(1585,310,'inv_accrual','inv_accrual','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:24:12',14,'2018-02-12 11:24:12'),(1586,310,'inv_inter_org_ppv','inv_inter_org_ppv','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:21:39',14,'2018-02-12 11:21:39'),(1587,310,'inv_inter_org_receivable','inv_inter_org_receivable','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:21:54',14,'2018-02-12 11:21:54'),(1588,310,'inv_inter_org_payable','inv_inter_org_payable','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:22:50',14,'2018-02-12 11:22:50'),(1589,310,'inv_inter_org_intransit','inv_inter_org_intransit','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:23:02',14,'2018-02-12 11:23:02'),(1590,310,'inv_costupdate','inv_costupdate','cost adjustment',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:25:00',14,'2018-02-12 11:25:00'),(1591,310,'wip_material','wip_material','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:20:50',14,'2018-02-12 11:20:50'),(1592,310,'wip_material_oh','wip_material_oh','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:21:00',14,'2018-02-12 11:21:00'),(1593,310,'wip_overhead','wip_overhead','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:21:15',14,'2018-02-12 11:21:15'),(1594,310,'wip_resource','wip_resource','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:21:25',14,'2018-02-12 11:21:25'),(1595,310,'wip_osp','wip_osp','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:25:21',14,'2018-02-12 11:25:21'),(1596,310,'wip_var_material','wip_var_material','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:28:35',14,'2018-02-12 11:28:35'),(1597,310,'wip_var_material_oh','wip_var_material_oh','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:28:35',14,'2018-02-12 11:28:35'),(1598,310,'wip_var_overhead','wip_var_overhead','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:28:47',14,'2018-02-12 11:28:47'),(1599,310,'wip_var_resource','wip_var_resource','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:29:00',14,'2018-02-12 11:29:00'),(1600,310,'wip_var_osp','wip_var_osp','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:29:12',14,'2018-02-12 11:29:12'),(1601,310,'sbi_material','sbi_material','subinventory material',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:20:50',14,'2018-02-12 11:20:50'),(1602,310,'sbi_material_oh','sbi_material_oh','subinventory material oh',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:21:00',14,'2018-02-12 11:21:00'),(1603,310,'sbi_overhead','sbi_overhead','subinventory oh',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:21:15',14,'2018-02-12 11:21:15'),(1604,310,'sbi_resource','sbi_resource','subinventory resource',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:21:25',14,'2018-02-12 11:21:25'),(1605,310,'sbi_osp','sbi_osp','subinventory osp',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:25:21',14,'2018-02-12 11:25:21'),(1606,310,'sbi_expense','sbi_expense','subinventory expense',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:19:55',14,'2018-02-12 11:19:55'),(1607,310,'inv_res_absorption','res_absorption','resource absorption',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 20:14:00',14,'2018-02-12 20:14:00'),(1608,310,'inv_res_variance','res_variance','resource variance',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 20:14:00',14,'2018-02-12 20:14:00'),(1609,310,'inv_ovh_absorption','ovh_absorption','overhead absorption',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 20:14:00',14,'2018-02-12 20:14:00'),(1610,310,'inv_osp_absorption','osp_absorption','osp absorption',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 20:14:00',14,'2018-02-25 16:29:34'),(1611,310,'buo_cash','buo_cash','business org cash',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:17:20',14,'2018-02-12 11:17:20'),(1612,310,'buo_receivable','buo_receivable','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:17:33',14,'2018-02-17 10:40:02'),(1613,310,'buo_payable','buo_payable','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-12 11:28:04',14,'2018-02-17 10:40:12'),(1614,310,'buo_accrual','buo_accrual','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-15 14:09:52',14,'2018-02-15 14:09:52'),(1615,310,'buo_freight','buo_freight','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-15 14:10:13',14,'2018-02-15 14:10:13'),(1616,310,'buo_ar_tax','buo_ar_tax','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-15 14:11:46',14,'2018-02-15 14:11:46'),(1617,310,'buo_ap_tax','buo_ap_tax','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-15 14:11:54',14,'2018-02-15 14:11:54'),(1618,88,'OSP','OSP仓','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-20 09:10:19',14,'2018-02-20 09:10:19'),(1619,133,'OSP','OSP','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-20 09:16:32',14,'2018-02-20 09:16:32'),(1620,310,'buo_osp_items','osp_items','osp items(material and product for po or issue)',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-02-25 09:31:05',14,'2018-02-25 09:33:17'),(1621,310,'buo_revenue','revenue','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,11,'2018-02-25 11:50:57',11,'2018-02-25 11:50:57'),(1622,254,'Scheduled Payment','Scheduled Payment','A Scheduled Payment classification generates an invoice for the amount of the event. Oracle Projects marks expenditure items on the project being invoiced on a first-in first-out (FIFO) basis up to the amount of the event. When you use this classification',NULL,NULL,0,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2018-05-07 16:18:29',14,'2018-05-07 16:18:29'),(1623,312,'NEVER','从不','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2019-07-15 11:14:52',14,'2019-07-15 11:14:52'),(1624,312,'ALWAYS','总是','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2019-07-15 11:14:52',14,'2019-07-15 11:14:52'),(1625,312,'OUT_OF_TOLERANCE_ALL','全部超限','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2019-07-15 11:14:52',14,'2019-07-15 11:14:52'),(1626,312,'OUT_OF_TOLERANCE_ANY','任一超限','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2019-07-15 11:14:52',14,'2019-07-15 11:14:52'),(1630,313,'IMCOMPLETE','编辑','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2019-07-15 11:14:52',14,'2019-07-15 11:14:52'),(1631,313,'SCHEDULE','已计划','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2019-07-15 11:14:52',14,'2019-07-15 11:14:52'),(1632,313,'COUNTED','已盘点','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2019-07-15 11:14:52',14,'2019-07-15 11:14:52'),(1633,313,'APPROVED','已批准','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2019-07-15 11:14:52',14,'2019-07-15 11:14:52'),(1634,313,'POSTED','已更新','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2019-07-15 11:14:52',14,'2019-07-15 11:14:52'),(1635,313,'CANCEL','已取消','',NULL,NULL,1,NULL,NULL,'enabled',NULL,NULL,NULL,14,'2019-07-15 11:14:52',14,'2019-07-15 11:14:52');
/*!40000 ALTER TABLE `option_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pallet`
--

DROP TABLE IF EXISTS `pallet`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pallet` (
  `pallet_id` bigint(12) NOT NULL auto_increment,
  `org_id` int(12) NOT NULL,
  `bc_label` varchar(50) NOT NULL,
  `specification` int(11) NOT NULL,
  `status` tinyint(1) default '1',
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`pallet_id`),
  KEY `org_id` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pallet`
--

LOCK TABLES `pallet` WRITE;
/*!40000 ALTER TABLE `pallet` DISABLE KEYS */;
INSERT INTO `pallet` VALUES (1,0,'54233625',1,1,1,'2021-12-20 15:13:41',1,'2021-12-20 15:13:41'),(2,0,'322123322111160',0,1,1,'2021-12-20 15:31:44',1,'2021-12-20 15:31:44'),(3,0,'3221233221111609',0,1,1,'2021-12-20 15:31:46',1,'2021-12-20 15:31:46'),(4,0,'54233521',1,1,1,'2021-12-20 15:35:20',1,'2021-12-20 15:35:20'),(5,0,'54233522',1,1,1,'2021-12-20 16:09:12',1,'2021-12-20 16:09:12'),(6,0,'54233523',1,1,1,'2021-12-20 16:12:44',1,'2021-12-20 16:12:44'),(7,0,'78',1,1,1,'2021-12-21 09:37:23',1,'2021-12-21 09:37:23'),(8,0,'787',1,1,1,'2021-12-21 09:37:24',1,'2021-12-21 09:37:24'),(9,0,'7877',1,1,1,'2021-12-21 09:37:24',1,'2021-12-21 09:37:24'),(10,0,'78778',1,1,1,'2021-12-21 09:37:24',1,'2021-12-21 09:37:24'),(11,0,'787787',1,1,1,'2021-12-21 09:37:24',1,'2021-12-21 09:37:24'),(12,0,'7877878',1,1,1,'2021-12-21 09:37:24',1,'2021-12-21 09:37:24'),(13,0,'78778780',1,1,1,'2021-12-21 09:38:45',1,'2021-12-21 09:38:45'),(14,0,'54233531',1,1,1,'2021-12-21 09:53:04',1,'2021-12-21 09:53:04'),(15,0,'5423353',1,1,1,'2021-12-21 09:55:48',1,'2021-12-21 09:55:48'),(16,0,'54233539',1,1,1,'2021-12-21 09:55:49',1,'2021-12-21 09:55:49'),(17,0,'54233561',1,1,1,'2021-12-21 10:00:44',1,'2021-12-21 10:00:44'),(18,0,'54233931',0,1,1,'2021-12-21 10:04:57',1,'2021-12-21 10:04:57'),(19,0,'32212332',1,1,1,'2021-12-21 10:23:46',1,'2021-12-21 10:23:46'),(20,0,'7',1,1,1,'2021-12-21 14:01:38',1,'2021-12-21 14:01:38'),(21,0,'789',1,1,1,'2021-12-21 14:01:41',1,'2021-12-21 14:01:41'),(22,0,'7898',1,1,1,'2021-12-21 14:01:41',1,'2021-12-21 14:01:41'),(23,0,'78987',1,1,1,'2021-12-21 14:01:41',1,'2021-12-21 14:01:41'),(24,0,'789876',1,1,1,'2021-12-21 14:01:42',1,'2021-12-21 14:01:42'),(25,0,'7898767',1,1,1,'2021-12-21 14:01:42',1,'2021-12-21 14:01:42'),(26,0,'78987676',1,1,1,'2021-12-21 14:01:42',1,'2021-12-21 14:01:42'),(27,0,'3456789012',1,1,1,'2021-12-21 14:04:54',1,'2021-12-21 14:04:54'),(28,0,'66666601234568',0,1,1,'2021-12-23 11:37:58',1,'2021-12-23 11:37:58'),(29,0,'5',0,1,1,'2021-12-23 11:38:35',1,'2021-12-23 11:38:35'),(30,0,'$this.po_inv_print.',0,1,1,'2021-12-29 16:19:30',1,'2021-12-29 16:19:30'),(31,0,'34456789012',0,1,1,'2022-01-05 12:01:04',1,'2022-01-05 12:01:04'),(32,0,'123456',0,1,1,'2022-01-05 15:27:37',1,'2022-01-05 15:27:37'),(33,0,'34567890123',0,1,1,'2022-01-05 16:04:23',1,'2022-01-05 16:04:23'),(34,0,'3456780',0,1,1,'2022-01-06 10:32:11',1,'2022-01-06 10:32:11'),(35,0,'34567890',0,1,1,'2022-01-06 10:33:53',1,'2022-01-06 10:33:53'),(36,0,'34567899',0,1,1,'2022-01-07 20:08:37',1,'2022-01-07 20:08:37'),(37,0,'345678090',0,1,1,'2022-01-08 11:47:01',1,'2022-01-08 11:47:01'),(38,0,'54233525',0,1,1,'2022-01-21 11:08:38',1,'2022-01-21 11:08:38'),(39,0,'54233526',0,1,1,'2022-01-21 11:08:44',1,'2022-01-21 11:08:44'),(40,0,'542335261',0,1,1,'2022-01-21 11:09:13',1,'2022-01-21 11:09:13'),(41,0,'54233532',0,1,1,'2022-01-21 14:00:42',1,'2022-01-21 14:00:42'),(42,0,'5423',1,1,1,'2022-04-18 11:04:22',1,'2022-04-18 11:04:22'),(43,0,'54233566',1,1,1,'2022-04-18 11:04:28',1,'2022-04-18 11:04:28'),(44,0,'54236789',1,1,1,'2022-04-18 11:07:57',1,'2022-04-18 11:07:57');
/*!40000 ALTER TABLE `pallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pallet_onhand`
--

DROP TABLE IF EXISTS `pallet_onhand`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pallet_onhand` (
  `pallet_onhand_id` int(11) NOT NULL auto_increment,
  `onhand_id` int(11) NOT NULL,
  `inv_lot_number_id` int(11) NOT NULL,
  `pallet_id` int(11) NOT NULL,
  `pallet_quantity` decimal(20,5) NOT NULL default '0.00000',
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`pallet_onhand_id`),
  UNIQUE KEY `onhand_id` (`onhand_id`,`inv_lot_number_id`,`pallet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pallet_onhand`
--

LOCK TABLES `pallet_onhand` WRITE;
/*!40000 ALTER TABLE `pallet_onhand` DISABLE KEYS */;
INSERT INTO `pallet_onhand` VALUES (1,0,1,1,'0.00000',1,'2021-12-20 15:14:02',1,'2021-12-20 15:14:27'),(2,0,2,4,'0.00000',1,'2021-12-20 15:35:24',1,'2021-12-20 15:35:43'),(3,0,2,5,'0.00000',1,'2021-12-20 16:09:15',1,'2021-12-20 16:09:32'),(4,0,4,6,'0.00000',1,'2021-12-20 16:12:46',1,'2021-12-20 16:13:03'),(5,0,12,27,'7890.00000',1,'2021-12-21 14:05:20',1,'2021-12-21 14:05:20'),(6,0,4,14,'50.00000',1,'2022-01-21 13:54:15',1,'2022-01-21 13:54:15'),(7,0,20,43,'100.00000',1,'2022-04-18 11:05:08',1,'2022-04-18 11:05:08'),(8,0,21,44,'40.00000',1,'2022-04-18 11:08:50',1,'2022-04-18 11:12:12');
/*!40000 ALTER TABLE `pallet_onhand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pallet_specification`
--

DROP TABLE IF EXISTS `pallet_specification`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pallet_specification` (
  `specification_id` int(12) NOT NULL auto_increment,
  `org_id` int(12) NOT NULL,
  `structure` varchar(255) default NULL,
  `specification_name` varchar(50) NOT NULL,
  `bc_label` varchar(50) NOT NULL,
  `specification` varchar(25) default NULL,
  `dimension_uom_id` int(12) default NULL,
  `length` decimal(15,5) default NULL,
  `height` decimal(15,5) default NULL,
  `width` decimal(15,5) default NULL,
  `max_units` decimal(15,5) default NULL,
  `max_volume_uom_id` int(12) default NULL,
  `max_volume` decimal(15,5) default NULL,
  `max_weight_uom_id` int(12) default NULL,
  `max_weight` decimal(15,5) default NULL,
  `ef_id` int(12) default NULL,
  `status` varchar(25) default NULL,
  `rev_enabled_cb` tinyint(1) default NULL,
  `rev_number` varchar(255) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`specification_id`),
  KEY `org_id` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pallet_specification`
--

LOCK TABLES `pallet_specification` WRITE;
/*!40000 ALTER TABLE `pallet_specification` DISABLE KEYS */;
INSERT INTO `pallet_specification` VALUES (1,0,'','50','','50-xx',NULL,NULL,NULL,NULL,'50.00000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2021-11-16 09:50:08',0,'2021-11-16 09:50:08');
/*!40000 ALTER TABLE `pallet_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pallet_transaction`
--

DROP TABLE IF EXISTS `pallet_transaction`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pallet_transaction` (
  `pallet_transaction_id` bigint(12) NOT NULL auto_increment,
  `inv_transaction_id` bigint(12) NOT NULL,
  `inv_lot_transaction_id` bigint(12) NOT NULL,
  `inv_lot_number_id` bigint(20) default NULL,
  `pallet_id` bigint(12) NOT NULL,
  `pallet_quantity` decimal(20,5) NOT NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`pallet_transaction_id`),
  KEY `pallet_id` (`pallet_id`),
  KEY `inv_lot_number_id` (`inv_lot_transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pallet_transaction`
--

LOCK TABLES `pallet_transaction` WRITE;
/*!40000 ALTER TABLE `pallet_transaction` DISABLE KEYS */;
INSERT INTO `pallet_transaction` VALUES (1,1,1,1,1,'100.00000',1,'2021-12-20 15:14:02',1,'2021-12-20 15:14:02'),(2,2,2,1,1,'100.00000',1,'2021-12-20 15:14:27',1,'2021-12-20 15:14:27'),(3,3,3,2,4,'100.00000',1,'2021-12-20 15:35:24',1,'2021-12-20 15:35:24'),(4,4,4,2,4,'100.00000',1,'2021-12-20 15:35:43',1,'2021-12-20 15:35:43'),(5,5,5,2,5,'100.00000',1,'2021-12-20 16:09:15',1,'2021-12-20 16:09:15'),(6,6,6,2,5,'100.00000',1,'2021-12-20 16:09:32',1,'2021-12-20 16:09:32'),(7,7,7,4,6,'100.00000',1,'2021-12-20 16:12:46',1,'2021-12-20 16:12:46'),(8,8,8,4,6,'100.00000',1,'2021-12-20 16:13:03',1,'2021-12-20 16:13:03'),(9,9,9,12,27,'7890.00000',1,'2021-12-21 14:05:20',1,'2021-12-21 14:05:20'),(10,10,10,4,14,'50.00000',1,'2022-01-21 13:54:15',1,'2022-01-21 13:54:15'),(11,11,11,20,43,'100.00000',1,'2022-04-18 11:05:08',1,'2022-04-18 11:05:08'),(12,12,12,21,44,'100.00000',1,'2022-04-18 11:08:50',1,'2022-04-18 11:08:50'),(13,13,13,21,44,'60.00000',1,'2022-04-18 11:12:12',1,'2022-04-18 11:12:12');
/*!40000 ALTER TABLE `pallet_transaction` ENABLE KEYS */;
UNLOCK TABLES;

/*!50003 SET @SAVE_SQL_MODE=@@SQL_MODE*/;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`i3u`@`localhost` */ /*!50003 TRIGGER `palletTransInsert` BEFORE INSERT ON `pallet_transaction` FOR EACH ROW BEGIN
SET @act=0;
SELECT transaction_action INTO @act FROM transaction_type t join inv_transaction i on t.transaction_type_id=i.transaction_type_id WHERE inv_transaction_id=NEW.inv_transaction_id;
IF new.pallet_id!=0 THEN
BEGIN
SET @pohid=NULL;
SELECT pallet_onhand_id INTO @pohid FROM pallet_onhand WHERE pallet_id=new.pallet_id and inv_lot_number_id=new.inv_lot_number_id;
IF @act=1 THEN
BEGIN
IF @pohid IS NOT NULL THEN
UPDATE pallet_onhand SET pallet_quantity=pallet_quantity-new.pallet_quantity,last_update_by=new.created_by,last_update_date=NOW() WHERE pallet_onhand_id=@pohid;
END IF;
END;
ELSE IF @act=27 THEN
BEGIN
IF @pohid IS NULL THEN
INSERT INTO pallet_onhand (inv_lot_number_id,pallet_quantity,pallet_id,created_by,creation_date,last_update_by,last_update_date) 
VALUE(new.inv_lot_number_id,new.pallet_quantity,new.pallet_id,new.created_by,NOW(),new.last_update_by,NOW());
SELECT LAST_INSERT_ID() INTO @pohid;
ELSE
UPDATE pallet_onhand SET pallet_quantity=pallet_quantity+new.pallet_quantity,last_update_by=new.created_by,last_update_date=NOW() WHERE pallet_onhand_id=@pohid;
END IF;
END;
END IF;
END IF;
END;
END IF;
    END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@SAVE_SQL_MODE*/;

--
-- Table structure for table `scrap`
--

DROP TABLE IF EXISTS `scrap`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `scrap` (
  `scrap_id` int(11) NOT NULL auto_increment,
  `scrap_number` varchar(50) default NULL,
  `wip_wo_header_id` int(11) default NULL,
  `wip_wo_bom_id` int(11) default NULL,
  `pallet_id` int(11) default NULL,
  `qty` double(18,2) default NULL,
  `created_by` int(11) default NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) default NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`scrap_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `scrap`
--

LOCK TABLES `scrap` WRITE;
/*!40000 ALTER TABLE `scrap` DISABLE KEYS */;
INSERT INTO `scrap` VALUES (1,'B202112210001',1,1,19,5.00,1,'2021-12-21 11:30:01',1,'2021-12-21 11:30:01'),(2,'B202112210002',1,1,19,5.00,1,'2021-12-21 14:10:24',1,'2021-12-21 14:10:24');
/*!40000 ALTER TABLE `scrap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subinventory`
--

DROP TABLE IF EXISTS `subinventory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `subinventory` (
  `subinventory_id` int(11) NOT NULL auto_increment,
  `org_id` int(11) NOT NULL,
  `type` int(11) NOT NULL default '603',
  `subinventory` varchar(25) default NULL,
  `description` varchar(50) default NULL,
  `locator_control` int(11) default '0',
  `allow_negative_balance_cb` tinyint(1) default '1',
  `default_cost_group` varchar(25) default NULL,
  `shipment_pick_priority` int(11) default '0',
  `material_ac_id` int(11) NOT NULL default '0',
  `material_oh_ac_id` int(11) default '0',
  `overhead_ac_id` int(11) default '0',
  `resource_ac_id` int(11) default '0',
  `osp_ac_id` int(11) default '0',
  `expense_ac_id` int(11) default '0',
  `ef_id` int(11) default NULL,
  `status` tinyint(1) default '1',
  `rev_enabled_cb` tinyint(1) default '0',
  `rev_number` varchar(255) default '0',
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`subinventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `subinventory`
--

LOCK TABLES `subinventory` WRITE;
/*!40000 ALTER TABLE `subinventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `subinventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_type`
--

DROP TABLE IF EXISTS `transaction_type`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `transaction_type` (
  `transaction_type_id` int(12) NOT NULL auto_increment,
  `transaction_type_number` int(12) NOT NULL,
  `transaction_type` varchar(40) NOT NULL,
  `type_class` varchar(50) NOT NULL,
  `transaction_action` varchar(50) NOT NULL,
  `description` varchar(50) default NULL,
  `allow_negative_balance_cb` tinyint(1) default NULL,
  `account_id` int(12) default NULL,
  `ef_id` int(12) default NULL,
  `status` tinyint(1) NOT NULL default '1',
  `rev_enabled_cb` tinyint(1) default NULL,
  `rev_number` varchar(255) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`transaction_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `transaction_type`
--

LOCK TABLES `transaction_type` WRITE;
/*!40000 ALTER TABLE `transaction_type` DISABLE KEYS */;
INSERT INTO `transaction_type` VALUES (1,1,'杂项领料','INVENTORY','1','Miscellaneous Issue',0,20,0,1,0,'',1,'2014-01-09 06:59:30',0,'2017-07-03 15:21:45'),(2,2,'杂项接收','INVENTORY','27','Miscellaneous Receipt',0,21,0,1,0,'',1,'2014-01-09 06:59:30',0,'2017-07-03 15:21:55'),(3,3,'移库','INVENTORY','2','Subinventory Transfer',0,0,0,0,0,'',1,'2014-01-09 06:59:30',0,'2017-07-03 15:22:08'),(4,4,'采购接收','PO','26','PO Receipt',0,NULL,NULL,1,0,'',1,'2014-06-20 15:59:48',0,'2017-07-03 15:23:14'),(5,5,'采购交付','PO','27','PO Delivery',0,NULL,NULL,1,0,NULL,1,'2014-01-09 06:59:31',0,'2017-07-03 15:23:25'),(6,6,'工单领料','WIP','1','WIP Material Issue',0,NULL,NULL,1,0,NULL,1,'2014-01-16 07:20:34',0,'2017-07-03 15:23:36'),(7,7,'工单退料','WIP','27','Material Return from WIP',0,20,NULL,0,0,NULL,1,'2014-01-16 07:20:34',0,'2017-07-03 15:23:50'),(8,8,'工单领料（负）','WIP','27','WIP Negative Issue',0,NULL,NULL,0,0,NULL,1,'2014-01-16 07:20:34',0,'2017-07-03 15:24:17'),(9,9,'工单退料（负）','WIP','1','WIP Negative Return',0,NULL,NULL,0,0,NULL,1,'2014-01-16 07:20:34',0,'2017-07-03 15:24:36'),(10,10,'无工单完工','WIP','27','WIP WorkOrderless Completion',0,0,0,0,0,'',1,'2014-01-16 07:20:34',0,'2017-07-03 15:24:51'),(11,11,'工单完工','WIP','27','WIP Assembly Completion',1,NULL,NULL,1,0,'',1,'2014-04-26 16:48:11',0,'2017-07-03 15:25:06'),(12,12,'无工单返场','WIP','1','WIP WorkOrderless Return',0,0,0,0,0,'',1,'2014-01-16 07:20:34',0,'2017-07-03 15:26:04'),(13,13,'工单返场','WIP','1','WIP Assembly Return',NULL,NULL,NULL,1,NULL,NULL,1,'2014-01-16 07:20:34',0,'2017-07-03 15:26:27'),(14,14,'订单分捡','OM','2','Sales Order Picking',NULL,NULL,NULL,1,NULL,NULL,1,'2014-05-23 05:27:58',0,'2017-07-03 15:26:51'),(15,15,'订单发货','OM','1','Sales Order Shipping',NULL,NULL,NULL,1,NULL,NULL,1,'2014-05-23 05:28:43',0,'2017-07-03 15:27:02'),(16,16,'数量调整领料','INVENTORY','4','Count Adjustment Issue - Cycle Count & Physical In',0,NULL,NULL,1,0,'',1,'2014-07-29 10:29:30',0,'2017-07-03 15:31:10'),(17,17,'数量调整接收','INVENTORY','4','Count Adjustment Receipt - Cycle Count & Physical ',NULL,NULL,NULL,1,NULL,NULL,1,'2014-07-29 10:30:07',0,'2017-07-03 15:31:33'),(18,18,'跨组织直接移库','INVENTORY','3','Inter Org Transfer - Direct',1,NULL,NULL,0,0,'',1,'2014-08-01 13:35:15',0,'2017-07-03 15:38:35'),(19,19,'跨组织移库-在途','INVENTORY','3','Inter Org Transfer - Intransit',1,NULL,NULL,0,0,'',1,'2014-07-31 04:40:12',0,'2017-07-03 15:39:11'),(20,20,'组织间移库接收','INVENTORY','27','Inter-Org Trasfer Receipt',NULL,NULL,NULL,0,NULL,NULL,1,'2014-10-07 08:45:15',0,'2017-07-03 15:33:18'),(21,21,'采购退货','PO','1','PO Return',1,NULL,NULL,1,NULL,NULL,1,'2014-10-07 08:42:52',34,'2017-07-03 15:39:44'),(22,22,'销售网点交易','POS','1','POS Transaction - Sale & Shipping',NULL,NULL,NULL,1,NULL,NULL,1,'2015-02-02 02:33:58',34,'2017-07-03 15:28:01'),(23,23,'订单退货交付','OM','27','Return Material Authorization Delivery',NULL,NULL,NULL,1,NULL,NULL,1,'2015-02-07 04:28:23',34,'2017-07-03 15:28:48'),(24,24,'维护领料','AM','1','Maintenance Issue',NULL,NULL,NULL,1,NULL,NULL,1,'2015-03-21 17:49:17',34,'2017-07-03 15:40:08'),(25,25,'维护退料','AM','27','Maintenance Return',NULL,NULL,NULL,1,NULL,NULL,1,'2015-03-21 17:51:03',34,'2017-07-03 15:40:21'),(26,26,'仓库移动交易','INVENTORY','2','Inv Move Transaction',NULL,NULL,NULL,1,NULL,NULL,1,'2015-08-02 02:54:39',34,'2017-07-03 15:40:35'),(27,27,'销售移动交易','INVENTORY','2','Sales Move Transaction',NULL,NULL,NULL,1,NULL,NULL,1,'2015-08-02 02:54:59',34,'2017-07-03 15:40:49'),(28,28,'工单移动交易','INVENTORY','1','WIP Move Transaction',NULL,NULL,NULL,1,NULL,NULL,1,'2015-08-02 02:55:17',34,'2017-07-03 15:41:02'),(29,29,'过程制造领料','PM','1','Process WIP Issue',NULL,NULL,NULL,1,NULL,NULL,1,'2016-05-17 04:02:36',34,'2017-07-03 15:41:18'),(30,30,'过程制造退料','PM','27','Process WIP Return',NULL,NULL,NULL,1,NULL,NULL,1,'2016-05-17 04:03:58',34,'2017-07-03 15:41:30'),(31,31,'批次生产完工','PM','27','Batch Completion',NULL,NULL,NULL,1,NULL,NULL,1,'2016-05-23 12:25:55',34,'2017-07-03 15:41:45'),(32,32,'批次生产返场','PM','1','Batch Return',NULL,NULL,NULL,1,NULL,NULL,1,'2016-05-23 12:26:46',34,'2017-07-03 15:41:59'),(33,33,'内部申购接收','INVENTORY','27','Internal Requisition Receipt',NULL,NULL,NULL,1,NULL,NULL,1,'2016-07-04 06:10:06',1,'2017-07-03 15:42:12');
/*!40000 ALTER TABLE `transaction_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom`
--

DROP TABLE IF EXISTS `uom`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `uom` (
  `uom_id` int(12) unsigned NOT NULL auto_increment,
  `class` varchar(25) NOT NULL,
  `uom_name` varchar(25) default NULL,
  `description` varchar(200) default NULL,
  `primary_cb` tinyint(1) default NULL,
  `primary_uom_id` int(12) default NULL,
  `primary_relation` float default NULL,
  `ef_id` int(12) default NULL,
  `status` tinyint(1) default NULL,
  `rev_enabled_cb` tinyint(1) default NULL,
  `rev_number` int(10) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`uom_id`),
  UNIQUE KEY `name` (`uom_name`),
  KEY `class` (`class`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `uom`
--

LOCK TABLES `uom` WRITE;
/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
INSERT INTO `uom` VALUES (26,'117','HR','Hour',0,29,60,NULL,1,0,NULL,0,'2014-03-31 04:54:24',14,'2018-06-02 15:01:31'),(27,'114','Ea','Each',1,27,1,1,1,0,0,0,'2013-12-16 02:29:13',0,'2017-06-05 18:23:23'),(28,'111','米','Meter',1,28,1,NULL,1,NULL,NULL,0,'2014-03-31 04:57:34',1,'2017-06-23 14:56:33'),(29,'117','Min','Minutes',1,NULL,1,NULL,1,NULL,11,0,'2013-12-16 02:29:13',14,'2018-06-02 14:51:45'),(30,'111','Centi Meter','Centi Meter',0,NULL,100,NULL,1,NULL,NULL,0,'2014-03-31 02:55:18',14,'2018-06-02 13:09:33'),(31,'117','Second','Second',0,NULL,0.0166,NULL,1,NULL,NULL,0,'2014-03-31 05:07:25',0,'2017-06-05 18:24:08'),(32,'109','平方米','Square Meter',1,NULL,0,NULL,1,NULL,NULL,34,'2015-02-10 06:04:14',1,'2017-06-23 17:51:03'),(33,'109','FT2','Square Foot',1,32,0.0929,NULL,1,NULL,NULL,34,'2015-02-10 06:05:04',0,'2017-06-05 18:24:44'),(34,'110','REF','Reference',1,NULL,0,NULL,1,NULL,NULL,34,'2015-02-10 06:05:31',0,'2017-06-05 18:26:12'),(35,'111','FT','Foot',1,NULL,0.3048,NULL,1,NULL,NULL,34,'2015-02-10 06:06:14',0,'2017-06-05 18:26:23'),(36,'111','IN','Inch',1,NULL,0.0254,NULL,1,NULL,NULL,34,'2015-02-10 06:07:09',0,'2017-06-05 18:26:28'),(37,'111','KM','Kilometer',1,NULL,1000,NULL,1,NULL,NULL,34,'2015-02-10 06:07:52',0,'2017-06-05 18:26:37'),(38,'114','BT','Bottle',1,NULL,1,NULL,1,NULL,NULL,34,'2015-02-10 06:09:52',0,'2017-06-05 18:26:43'),(39,'113','KG','Kilogram',0,40,1000,NULL,1,NULL,NULL,34,'2015-02-10 06:21:01',0,'2017-06-05 18:26:51'),(40,'113','GM','Gram',1,NULL,0,NULL,1,NULL,2,34,'2015-02-10 06:21:32',0,'2017-06-05 18:26:55'),(41,'113','MG','Milligram',0,40,0.001,NULL,1,NULL,1,34,'2015-02-10 06:22:11',0,'2017-05-13 16:27:28'),(42,'117','Day','Day',1,29,1440,NULL,1,NULL,NULL,34,'2015-06-13 09:52:45',14,'2018-06-02 15:04:45'),(43,'116','Currency','Currency',1,NULL,0,NULL,1,NULL,NULL,34,'2015-06-16 10:33:32',0,'2017-06-05 18:27:47'),(45,'116','Dollar','Dollar',1,NULL,NULL,NULL,1,NULL,NULL,34,'2015-06-16 10:34:34',34,'2015-08-05 07:34:38'),(46,'117','Year','Year',1,NULL,365,NULL,1,NULL,NULL,34,'2015-09-14 11:27:31',0,'2017-06-05 18:28:30'),(47,'114','根','根',1,NULL,0,NULL,1,NULL,NULL,0,'2017-05-15 16:57:05',0,'2017-06-05 18:28:49'),(48,'112','litre','litre',1,NULL,0,NULL,1,NULL,NULL,0,'2017-06-05 18:48:19',0,'2017-06-05 18:48:19'),(49,'112','M3','cubic meter',1,NULL,0,NULL,1,NULL,NULL,0,'2017-06-05 18:48:59',0,'2017-06-05 18:48:59');
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user` (
  `user_id` int(12) unsigned NOT NULL auto_increment,
  `person_id` int(12) default NULL,
  `username` varchar(20) default NULL,
  `password` varchar(50) NOT NULL default '',
  `first_name` varchar(100) default NULL,
  `last_name` varchar(60) default NULL,
  `assigned_ip` varchar(50) default NULL,
  `phone` varchar(30) default NULL,
  `email` varchar(50) NOT NULL,
  `user_role` int(11) default NULL,
  `user_language` varchar(20) default NULL,
  `date_format` tinyint(1) NOT NULL default '0',
  `hr_employee_id` int(12) default NULL,
  `block_notif_count` int(5) default NULL,
  `supplier_id` int(12) default NULL,
  `default_theme` varchar(50) default NULL,
  `use_personal_db_cb` tinyint(1) default NULL,
  `ar_customer_id` int(12) default NULL,
  `lms_student_id` int(12) default NULL,
  `use_personal_color_cb` tinyint(1) default NULL,
  `mandatory_field_color` varchar(15) default NULL,
  `heading_color` varchar(15) default NULL,
  `content_color` varchar(15) default NULL,
  `bg_image_file_id` int(12) default NULL,
  `bg_opacity` decimal(3,3) default NULL,
  `show_bg_image_cb` tinyint(1) default NULL,
  `debug_mode` int(2) default NULL,
  `prices_dec` smallint(6) NOT NULL default '2',
  `qty_dec` smallint(6) NOT NULL default '2',
  `rates_dec` smallint(6) NOT NULL default '4',
  `percent_dec` smallint(6) NOT NULL default '1',
  `show_gl` tinyint(1) NOT NULL default '1',
  `show_codes` tinyint(1) NOT NULL default '0',
  `show_hints` tinyint(1) NOT NULL default '0',
  `last_visit_date` datetime default NULL,
  `query_size` tinyint(1) default '10',
  `image_file_id` int(12) default NULL,
  `pos` smallint(6) default '1',
  `print_profile` varchar(30) NOT NULL default '1',
  `rep_popup` tinyint(1) default '1',
  `auth_provider_name` varchar(50) default NULL,
  `auth_provider_id` varchar(50) default NULL,
  `status` tinyint(1) NOT NULL default '1',
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  `revision_enabled` char(1) default 'N',
  `revision_number` int(11) default NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user_name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'admin','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,NULL,'support@3ucs.com',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,4,1,1,0,0,NULL,10,NULL,1,'1',1,NULL,NULL,1,0,'2021-11-21 09:46:27',0,'2021-11-21 09:46:27','N',NULL),(2,NULL,'inv','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,NULL,'support1@3ucs.com',2,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,4,1,1,0,0,NULL,10,NULL,1,'1',1,NULL,NULL,1,1,'2021-11-21 16:36:03',1,'2021-11-21 16:36:03','N',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_bom_department`
--

DROP TABLE IF EXISTS `user_bom_department`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_bom_department` (
  `user_bom_department_id` int(12) unsigned NOT NULL auto_increment,
  `bom_department_id` int(11) NOT NULL,
  `user_id` int(12) unsigned NOT NULL,
  `active` tinyint(1) default '1',
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`user_bom_department_id`),
  UNIQUE KEY `bom_department_id` (`bom_department_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_bom_department`
--

LOCK TABLES `user_bom_department` WRITE;
/*!40000 ALTER TABLE `user_bom_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_bom_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_role` (
  `role_id` tinyint(4) NOT NULL auto_increment,
  `role_name_cn` varchar(20) NOT NULL,
  `role_name_eng` varchar(50) default NULL,
  `role_layout` varchar(100) default NULL,
  `org_id` int(11) default '0',
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`role_id`),
  UNIQUE KEY `role_name_cn` (`role_name_cn`),
  UNIQUE KEY `role_name_eng` (`role_name_eng`),
  KEY `org_id` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'admin','admin','layout/ucin/mes_trace/common.xml',0,0,'2021-11-21 09:44:31',0,'2021-11-21 09:44:31'),(2,'inv','inv','layout/ucin/mes_trace/common.xml',0,1,'2021-11-21 16:35:30',1,'2021-11-21 16:35:30');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wip_move_transaction`
--

DROP TABLE IF EXISTS `wip_move_transaction`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `wip_move_transaction` (
  `wip_move_transaction_id` bigint(20) unsigned NOT NULL auto_increment,
  `wip_wo_header_id` int(11) default NULL,
  `wo_routing_line_id` int(10) unsigned NOT NULL,
  `wo_routing_detail_id` int(10) unsigned NOT NULL,
  `org_id` int(10) unsigned NOT NULL,
  `wo_number` varchar(50) default NULL,
  `item_id_m` int(11) NOT NULL,
  `item_number` varchar(50) default NULL,
  `from_routing_sequence` int(11) NOT NULL,
  `to_routing_sequence` int(11) NOT NULL,
  `from_routing_seq_num` int(11) default '0',
  `to_routing_seq_num` int(11) default '0',
  `from_operation_step` int(50) NOT NULL,
  `to_operation_step` int(50) NOT NULL,
  `transaction_type` varchar(50) default NULL,
  `transaction_date` datetime NOT NULL,
  `move_quantity` decimal(20,5) NOT NULL,
  `reason` varchar(255) default NULL,
  `reference` varchar(255) default NULL,
  `scrap_account_id` int(11) default '0',
  `sales_order_header_id` int(11) default '0',
  `sales_order_line_id` int(11) default '0',
  `created_by` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY  (`wip_move_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `wip_move_transaction`
--

LOCK TABLES `wip_move_transaction` WRITE;
/*!40000 ALTER TABLE `wip_move_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `wip_move_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wip_wo_bom`
--

DROP TABLE IF EXISTS `wip_wo_bom`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `wip_wo_bom` (
  `wip_wo_bom_id` bigint(20) unsigned NOT NULL auto_increment,
  `wip_wo_header_id` int(10) unsigned NOT NULL,
  `bom_sequence` int(10) unsigned NOT NULL,
  `routing_sequence` int(11) default NULL,
  `routing_seq_num` int(11) default '0',
  `component_item_id_m` int(11) NOT NULL,
  `component_revision` varchar(10) default NULL,
  `usage_basis` int(11) default NULL,
  `usage_quantity` decimal(15,5) NOT NULL default '0.00000',
  `auto_request_material_cb` tinyint(1) default NULL,
  `effective_start_date` date default NULL,
  `effective_end_date` date default NULL,
  `eco_number` varchar(50) default NULL,
  `eco_implemented_cb` tinyint(1) default NULL,
  `planning_percentage` decimal(6,2) default '0.00',
  `yield` decimal(6,6) default '0.000000',
  `include_in_cost_rollup_cb` tinyint(1) default NULL,
  `wip_supply_type` varchar(50) default NULL,
  `supply_sub_inventory` int(11) default NULL,
  `supply_locator` int(11) default NULL,
  `required_quantity` decimal(15,5) default '0.00000',
  `issued_quantity` decimal(15,5) default '0.00000',
  `ef_id` int(11) default NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY  (`wip_wo_bom_id`),
  UNIQUE KEY `bom_header_id` (`wip_wo_header_id`,`bom_sequence`),
  UNIQUE KEY `bom_header_id_2` (`wip_wo_header_id`,`routing_sequence`,`component_item_id_m`,`routing_seq_num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `wip_wo_bom`
--

LOCK TABLES `wip_wo_bom` WRITE;
/*!40000 ALTER TABLE `wip_wo_bom` DISABLE KEYS */;
INSERT INTO `wip_wo_bom` VALUES (1,1,10,10,0,3,NULL,351,'10.00000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'337',1,0,'7800.00000','200.00000',NULL,1,'2021-12-19 14:40:48',1,'2021-12-19 14:40:48'),(2,1,20,20,0,5,NULL,351,'8.00000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'337',1,0,'6240.00000','100.00000',NULL,1,'2021-12-19 14:40:48',1,'2021-12-19 14:40:48'),(3,1,30,10,0,2,NULL,351,'6.00000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'337',1,0,'4680.00000','0.00000',NULL,1,'2021-12-19 14:40:48',1,'2021-12-19 14:40:48');
/*!40000 ALTER TABLE `wip_wo_bom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `wip_wo_bom_v`
--

DROP TABLE IF EXISTS `wip_wo_bom_v`;
/*!50001 DROP VIEW IF EXISTS `wip_wo_bom_v`*/;
/*!50001 CREATE TABLE `wip_wo_bom_v` (
  `wo_number` varchar(50),
  `product` varchar(50),
  `product_name` varchar(50),
  `product_specification` varchar(50),
  `product_description` varchar(255),
  `material` varchar(50),
  `item_name` varchar(50),
  `item_specification` varchar(50),
  `item_description` varchar(255),
  `required_quantity` decimal(15,5),
  `issued_quantity` decimal(15,5),
  `uom_name` varchar(25),
  `usage_basis` varchar(50),
  `usage_quantity` decimal(15,5),
  `wip_supply_type` varchar(50),
  `supply_sub_inventory` varchar(25),
  `supply_locator` varchar(255),
  `standard_operation` varchar(50),
  `routing_sequence` int(11),
  `routing_seq_num` int(11),
  `start_date` date,
  `effective_start_date` date,
  `effective_end_date` date,
  `created_by` int(11),
  `creation_date` datetime,
  `last_update_by` int(11),
  `last_update_date` datetime,
  `material_id` int(11),
  `product_id` int(12),
  `uom_id` int(11),
  `supply_sub_inventory_id` int(11),
  `supply_locator_id` int(11),
  `bom_sequence` int(10) unsigned,
  `wip_wo_bom_id` bigint(20) unsigned,
  `wip_wo_header_id` int(12),
  `org_id` int(12),
  `wo_statusv` varchar(50),
  `wo_status` varchar(50),
  `wo_id` bigint(11)
) */;

--
-- Table structure for table `wip_wo_header`
--

DROP TABLE IF EXISTS `wip_wo_header`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `wip_wo_header` (
  `wip_wo_header_id` int(12) NOT NULL auto_increment,
  `item_id_m` int(12) NOT NULL,
  `wo_number` varchar(50) default NULL,
  `revision_name` varchar(10) default NULL,
  `org_id` int(12) NOT NULL,
  `wip_accounting_group_id` int(12) NOT NULL,
  `wo_type` int(12) NOT NULL,
  `wo_status` varchar(50) default NULL,
  `start_date` date NOT NULL,
  `completion_date` date default NULL,
  `quantity` decimal(20,5) NOT NULL default '0.00000',
  `nettable_quantity` decimal(20,5) NOT NULL default '0.00000',
  `reference_bom_item_id_m` int(12) default NULL,
  `bom_exploded_cb` tinyint(1) default NULL,
  `routing_exploded_cb` tinyint(1) default NULL,
  `reference_routing_item_id_m` int(12) default NULL,
  `completion_sub_inventory` int(12) default NULL,
  `completion_locator` int(12) default NULL,
  `completed_quantity` decimal(20,5) default '0.00000',
  `scrapped_quantity` decimal(20,5) default '0.00000',
  `released_date` date default NULL,
  `first_unit_completed_date` date default NULL,
  `last_unit_completed_date` date default NULL,
  `schedule_group` varchar(20) default NULL,
  `build_sequence` int(12) default NULL,
  `line` varchar(20) default NULL,
  `scheduling_priority` int(12) default NULL,
  `closed_date` date default NULL,
  `ef_id` int(12) default NULL,
  `parent_wo_id` int(11) default '0',
  `primary_wo_id` int(11) default '0',
  `wo_prefix` varchar(50) default '',
  `created_by` int(12) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY  (`wip_wo_header_id`),
  UNIQUE KEY `wo_number` (`wo_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `wip_wo_header`
--

LOCK TABLES `wip_wo_header` WRITE;
/*!40000 ALTER TABLE `wip_wo_header` DISABLE KEYS */;
INSERT INTO `wip_wo_header` VALUES (1,1,'WO21121900001',NULL,0,0,368,'369','0000-00-00',NULL,'780.00000','0.00000',1,NULL,NULL,1,NULL,NULL,'8090.00000','10.00000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'',1,'2021-12-19 14:40:48',1,'2021-12-19 14:40:48');
/*!40000 ALTER TABLE `wip_wo_header` ENABLE KEYS */;
UNLOCK TABLES;

/*!50003 SET @SAVE_SQL_MODE=@@SQL_MODE*/;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`i3u`@`localhost` */ /*!50003 TRIGGER `wipwoinsertB` BEFORE INSERT ON `wip_wo_header` FOR EACH ROW BEGIN
if new.wo_number='' or new.wo_number is null then
SELECT standard_operation_id into @stdop FROM bom_routing_line WHERE bom_routing_header_id=new.reference_routing_item_id_m LIMIT 0,1;
SET @cnt=0;
set @prefix=if(new.wo_prefix is null or new.wo_prefix='','WO',new.wo_prefix);
SELECT COUNT(0) INTO @cnt FROM wip_wo_header WHERE DATE(creation_date) BETWEEN CURDATE() AND CURDATE();
set new.wo_number=generate_orderNo(@prefix, 6, @cnt,'','');
end if;
    END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`i3u`@`localhost` */ /*!50003 TRIGGER `wipwoInsert` AFTER INSERT ON `wip_wo_header` FOR EACH ROW BEGIN
if new.wo_type=368 then
    call explodeBomRoute(NEW.wip_wo_header_id,NEW.created_by,NEW.reference_bom_item_id_m,NEW.reference_routing_item_id_m,new.quantity);
end if;
        END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`i3u`@`localhost` */ /*!50003 TRIGGER `wip_wo_headerUpdate` AFTER UPDATE ON `wip_wo_header` FOR EACH ROW BEGIN
    if old.quantity!=new.quantity then
    update wip_wo_bom set required_quantity=usage_quantity*new.quantity where wip_wo_header_id=new.wip_wo_header_id;
    update wip_wo_routing_detail set required_quantity=resource_usage*new.quantity WHERE wip_wo_header_id=new.wip_wo_header_id;
    end if;
    if old.wo_status=369 and new.wo_status=370 then
    call wipwoReleaseRL(new.wip_wo_header_id,new.item_id_m,new.quantity,new.org_id,new.last_update_by);
    end if;
    END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@SAVE_SQL_MODE*/;

--
-- Table structure for table `wip_wo_routing_detail`
--

DROP TABLE IF EXISTS `wip_wo_routing_detail`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `wip_wo_routing_detail` (
  `wip_wo_routing_detail_id` int(12) NOT NULL auto_increment,
  `wip_wo_routing_line_id` int(12) NOT NULL,
  `wip_wo_header_id` int(12) NOT NULL,
  `resource_sequence` int(12) NOT NULL,
  `charge_basis` int(11) default NULL,
  `resource_id` int(12) NOT NULL,
  `resource_usage` double(20,5) default NULL,
  `resource_schedule` int(20) default NULL,
  `assigned_units` int(12) default '0',
  `required_quantity` decimal(20,5) default '0.00000',
  `applied_quantity` decimal(20,5) default '0.00000',
  `charge_type` int(11) default NULL,
  `standard_rate_cb` tinyint(1) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY  (`wip_wo_routing_detail_id`),
  UNIQUE KEY `wip_wo_routing_line_id` (`wip_wo_routing_line_id`,`resource_sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `wip_wo_routing_detail`
--

LOCK TABLES `wip_wo_routing_detail` WRITE;
/*!40000 ALTER TABLE `wip_wo_routing_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `wip_wo_routing_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `wip_wo_routing_first_last_v`
--

DROP TABLE IF EXISTS `wip_wo_routing_first_last_v`;
/*!50001 DROP VIEW IF EXISTS `wip_wo_routing_first_last_v`*/;
/*!50001 CREATE TABLE `wip_wo_routing_first_last_v` (
  `firstSEQ` int(11),
  `lastSEQ` int(11),
  `wip_wo_header_id` int(11)
) */;

--
-- Table structure for table `wip_wo_routing_line`
--

DROP TABLE IF EXISTS `wip_wo_routing_line`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `wip_wo_routing_line` (
  `wip_wo_routing_line_id` bigint(20) NOT NULL auto_increment,
  `wip_wo_header_id` int(11) NOT NULL,
  `routing_sequence` int(11) NOT NULL,
  `routing_seq_num` int(11) default '0',
  `standard_operation_id` int(11) default NULL,
  `department_id` int(11) default NULL,
  `description` varchar(255) default NULL,
  `start_date` date default NULL,
  `count_point_cb` tinyint(1) default NULL,
  `auto_charge_cb` tinyint(1) default NULL,
  `completion_date` date default NULL,
  `queue_quantity` int(11) default '0',
  `running_quantity` int(11) default '0',
  `rejected_quantity` int(11) default '0',
  `backflush_cb` tinyint(1) default NULL,
  `yield` decimal(6,6) default NULL,
  `scrapped_quantity` int(11) default '0',
  `minimum_transfer_quantity` int(11) default '0',
  `tomove_quantity` int(11) default '0',
  `completed_quantity` int(11) default '0',
  `progress_percentage` int(11) default '0',
  `created_by` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY  (`wip_wo_routing_line_id`),
  UNIQUE KEY `bom_header_id` (`wip_wo_header_id`,`routing_sequence`,`routing_seq_num`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `wip_wo_routing_line`
--

LOCK TABLES `wip_wo_routing_line` WRITE;
/*!40000 ALTER TABLE `wip_wo_routing_line` DISABLE KEYS */;
INSERT INTO `wip_wo_routing_line` VALUES (1,1,10,0,1,0,'',NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,0,0,0,0,1,'2021-12-19 14:40:48',1,'2021-12-19 14:40:48'),(2,1,20,0,2,0,'',NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,0,0,0,0,1,'2021-12-19 14:40:48',1,'2021-12-19 14:40:48');
/*!40000 ALTER TABLE `wip_wo_routing_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `wip_wo_routing_v`
--

DROP TABLE IF EXISTS `wip_wo_routing_v`;
/*!50001 DROP VIEW IF EXISTS `wip_wo_routing_v`*/;
/*!50001 CREATE TABLE `wip_wo_routing_v` (
  `wo_number` varchar(50),
  `item_number` varchar(50),
  `item_name` varchar(50),
  `item_specification` varchar(50),
  `item_description` varchar(255),
  `status` varchar(50),
  `queue_quantity` int(11),
  `running_quantity` int(11),
  `rejected_quantity` int(11),
  `scrapped_quantity` int(11),
  `completed_quantity` int(11),
  `routing_sequence` int(11),
  `routing_seq_num` int(11),
  `standard_operation` varchar(50),
  `department` varchar(50),
  `description` varchar(255),
  `start_date` date,
  `completion_date` date,
  `minimum_transfer_quantity` int(11),
  `yield` decimal(6,6),
  `created_by` int(11),
  `creation_date` datetime,
  `last_update_by` int(11),
  `last_update_date` datetime,
  `wip_wo_routing_line_id` bigint(20),
  `standard_operation_id` int(11),
  `bom_department_id` int(10) unsigned,
  `firstSeq` int(11),
  `lastSeq` int(11),
  `firstlast` int(1),
  `wo_type` int(12),
  `wo_status` varchar(50),
  `wip_wo_header_id` int(12),
  `build_sequence` int(12),
  `line` varchar(20),
  `scheduling_priority` int(12),
  `item_id_m` int(12),
  `org_id` int(12),
  `wo_id` bigint(11)
) */;

--
-- Table structure for table `xbs_log`
--

DROP TABLE IF EXISTS `xbs_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `xbs_log` (
  `xbs_log_id` bigint(20) NOT NULL auto_increment,
  `log_level` enum('error','warning','debug','info') default NULL,
  `task` varchar(20) default NULL,
  `program` varchar(50) default NULL,
  `msg` text,
  `user_id` int(11) default NULL,
  `org_id` int(11) default NULL,
  `dt` datetime default NULL,
  PRIMARY KEY  (`xbs_log_id`),
  KEY `task` (`task`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `xbs_log`
--

LOCK TABLES `xbs_log` WRITE;
/*!40000 ALTER TABLE `xbs_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xbs_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mes_trace'
--
DELIMITER ;;
/*!50003 DROP FUNCTION IF EXISTS `generate_orderNo` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 FUNCTION `generate_orderNo`(orderNamePre VARCHAR(5), num INT,maxNo INT,orderTbl VARCHAR(20),orderNo VARCHAR(20)) RETURNS varchar(50) CHARSET utf8
BEGIN
      DECLARE currentDate VARCHAR (15) ;-- 当前日期,有可能包含时分秒     
      #DECLARE maxNo INT DEFAULT 0 ; -- 离现在最近的满足条件的订单编号的流水号最后5位，如：SH2013011000002的maxNo=2     
        --  DECLARE l_orderNo varCHAR (25) ;-- 新生成的订单编号     
        --  DECLARE oldDate DATE ;-- 离现在最近的满足条件的订单编号的日期     
      DECLARE oldOrderNo VARCHAR (25) DEFAULT '' ;-- 离现在最近的满足条件的订单编号     
          
      IF num = 6 THEN -- 根据年月日生成订单编号     
        SELECT DATE_FORMAT(NOW(), '%y%m%d') INTO currentDate ;-- 订单编号形式:前缀+年月日+流水号，如：SH13011000002     
      ELSEIF num = 8 THEN -- 根据年月日时分秒生成订单编号     
        SELECT DATE_FORMAT(NOW(), '%Y%m%d') INTO currentDate ;-- 订单编号形式:前缀+年月日+流水号，如：SH2013011000002     
      ELSEIF num = 14 THEN -- 根据年月日时分秒生成订单编号     
        SELECT DATE_FORMAT(NOW(), '%Y%m%d%H%i%s') INTO currentDate ; -- 订单编号形式：前缀+年月日时分秒+流水号，如：SH2013011010050700001,个人不推荐使用这种方法生成流水号     
      ELSE -- 根据年月日时分生成订单编号     
        SELECT DATE_FORMAT(NOW(), '%Y%m%d%H%i') INTO currentDate ;-- 订单形式：前缀+年月日时分+流水号,如：SH20130110100900005     
      END IF ;    
	
	/*SET @tsql = CONCAT('SELECT IFNULL(',orderNo,', \'\') INTO oldOrderNo FROM ',orderTbl,'WHERE SUBSTRING(',orderNo,', 3, ',num,') = currentDate     
            AND SUBSTRING(',orderNo,', 1, 2) = ',orderNamePre,' and length(',orderNo,') = 7 + ',num,' ORDER BY ',orderNo,' DESC LIMIT 1;');
	 PREPARE ins FROM @tsql;
	 EXECUTE ins;
	 DEALLOCATE PREPARE ins; */         
        /*SELECT IFNULL(orderNo, '') INTO oldOrderNo     
          FROM orderTbl     
          WHERE SUBSTRING(orderNo, 3, num) = currentDate     
            AND SUBSTRING(orderNo, 1, 2) = orderNamePre     
            and length(orderNo) = 7 + num    
          ORDER BY id DESC LIMIT 1 ; -- 有多条时只显示离现在最近的一条     
              
          IF oldOrderNo != '' THEN     
            SET maxNo = CONVERT(SUBSTRING(oldOrderNo, -5), DECIMAL) ;-- SUBSTRING(oldOrderNo, -5)：订单编号如果不为‘‘截取订单的最后5位     
          END IF ;    */
          SELECT     
            CONCAT(orderNamePre, currentDate,  LPAD((maxNo + 1), 5, '0')) INTO @newOrderNo ; -- LPAD((maxNo + 1), 5, '0')：如果不足5位，将用0填充左边     
              
          #INSERT INTO test_orders (orderNo, orderName) VALUES (newOrderNo, 'testNo') ; -- 向订单表中插入数据    
        --    set newOrderNo = l_orderNo;     
         RETURN  @newOrderNo ;    
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP FUNCTION IF EXISTS `getChildBoms` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 FUNCTION `getChildBoms`(itemIdM BIGINT, orgId int) RETURNS varchar(100) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(100);
DECLARE sTempChd VARCHAR(100);
SET sTemp = null;
SET sTempChd = null;
SELECT GROUP_CONCAT(bom_header_id) into sTempChd FROM bom_header WHERE (item_id_m,org_id)=(itemIdM,orgId);
WHILE sTempChd is not NULL DO
SET sTemp = if(sTemp is null,sTempChd,CONCAT(sTemp,',',sTempChd));
set @sTempChd=null;
SELECT group_concat(bom_header_id) INTO @sTempChd FROM bom_header WHERE (item_id_m,org_id) IN (SELECT component_item_id_m,orgId FROM bom_line WHERE FIND_IN_SET(bom_header_id,sTempChd));
set sTempChd=@sTempChd;
END WHILE;
return sTemp;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP FUNCTION IF EXISTS `GetItemBom` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 FUNCTION `GetItemBom`(itemIdM int,rev int,userid int) RETURNS int(11)
BEGIN
set @brhid=NULL;
select bom_header_id into @bhid from bom_header where item_id_m=itemIdM and bom_revision=rev;
if @bhid is null then
insert into bom_header (item_id_m,bom_revision,created_by,last_update_by,creation_date,last_update_date) 
values(itemIdM,rev,userid,userid,now(),now());
select LAST_INSERT_ID() into @bhid;
end if;
return @bhid;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP FUNCTION IF EXISTS `GetItemBomRouting` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 FUNCTION `GetItemBomRouting`(itemIdM int,rev int,userid int) RETURNS int(11)
BEGIN
set @brhid=NULL;
select bom_routing_header_id into @brhid from bom_routing_header where item_id_m=itemIdM and routing_revision=rev;
if @brhid is null then
insert into bom_routing_header (item_id_m,routing_revision,created_by,last_update_by,creation_date,last_update_date) 
values(itemIdM,rev,userid,userid,now(),now());
select LAST_INSERT_ID() into @brhid;
end if;
return @brhid;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP FUNCTION IF EXISTS `GetLotNumberId` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 FUNCTION `GetLotNumberId`(lotNo varchar(50),itemIdM int,userid int) RETURNS int(11)
BEGIN
SET @lotid=NULL;
SELECT inv_lot_number_id INTO @lotid FROM inv_lot_number WHERE item_id_m=itemIdM AND lot_number=lotNo;
IF @lotid IS NULL THEN
INSERT INTO inv_lot_number (item_id_m,lot_number,created_by,last_update_by,creation_date,last_update_date) 
VALUES(itemIdM,lotNo,userid,userid,NOW(),NOW());
SELECT LAST_INSERT_ID() INTO @lotid;
END IF;
RETURN @lotid;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP FUNCTION IF EXISTS `GetPallet` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 FUNCTION `GetPallet`(bc varchar(50),specId int,userId int) RETURNS int(11)
BEGIN
if bc='' then
return NULL;
end if;
set @pltid=NULL;
select pallet_id into @pltid from pallet where bc_label=bc;
if @pltid is null then
insert into pallet (bc_label,specification,created_by,last_update_by,creation_date,last_update_date) 
values(bc,specId,userId,userId,now(),now());
select LAST_INSERT_ID() into @pltid;
end if;
return @pltid;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP FUNCTION IF EXISTS `GetUomRelation` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 FUNCTION `GetUomRelation`(uomId1 int,uomId2 int) RETURNS float
BEGIN
if (uomId1 is not null and uomId2 is not null) then
if uomId1=uomId2 then
return 1;
end if;
set @uom_pri1=null;
set @pr1=null;
set @uom_pri2=null;
set @pr2=null;
select ifnull(primary_uom_id,uomId1),if(primary_uom_id is null,1,primary_relation) into @uom_pri1,@pr1 from uom where uom_id=uomId1;
select ifnull(primary_uom_id,uomId2),IF(primary_uom_id IS NULL,1,primary_relation) into @uom_pri2,@pr2 from uom where uom_id=uomId2;
if @uom_pri1=@uom_pri2 then
if @pr1 is not null and @pr2 is not null and (@pr2!=0) then
return @pr1/@pr2;
end if;
end if;
end if;
return null;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP FUNCTION IF EXISTS `pallet_trans` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 FUNCTION `pallet_trans`(palletId int,itemIdM int, lotId int,transtp int,doctp varchar(10),docno varchar(50),qty double,refkn varchar(50),refkv bigint,userid int,memo varchar(100)) RETURNS int(11)
BEGIN
set @invtid=NULL;
set @invltid=NULL;
set @ptid=NULL;
if qty=0 then
return NULL;
end if;
INSERT INTO inv_transaction (transaction_type_id, item_number, revision_name, item_id_m, uom_id, quantity,lot_number_id,document_type, document_number, document_id, description, reference_type, reference_key_name, reference_key_value, created_by, creation_date, last_update_by, last_update_date) 
select transtp, item_number, item_rev_number, itemIdM, uom_id, qty, lotId, doctp, docno, '', memo,if(refkv,'table',''),refkn,refkv,userid,now(),userid,now() from item where item_id_m=itemIdM;
select last_insert_id() into @invtid;
INSERT INTO inv_lot_transaction ( inv_transaction_id, inv_lot_number_id, lot_quantity, created_by, creation_date, last_update_by, last_update_date) 
VALUES(@invtid, lotId, qty, userid, NOW(),userid,NOW());
select last_insert_id() into @invltid;
INSERT INTO pallet_transaction (inv_transaction_id,inv_lot_transaction_id, inv_lot_number_id, pallet_id, pallet_quantity, created_by, creation_date, last_update_by, last_update_date) 
VALUES( @invtid, @invltid, lotId, palletId, qty,userid, NOW(),userid,NOW());
select last_insert_id() into @ptid;
if refkn='inv_transaction' then
update inv_transaction set status=0 where inv_transaction_id=refkv and status;
update inv_transaction set status=0 where inv_transaction_id=@invtid and status;
end if;
return @ptid;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `explodeBomRoute` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 PROCEDURE `explodeBomRoute`(woid BIGINT,userid BIGINT,bomId BIGINT, routId BIGINT,prods INT)
BEGIN
INSERT INTO wip_wo_bom (bom_sequence, routing_sequence, routing_seq_num,component_item_id_m, component_revision, usage_basis, usage_quantity, required_quantity,auto_request_material_cb, effective_start_date, effective_end_date, eco_number, eco_implemented_cb, planning_percentage, yield, include_in_cost_rollup_cb, wip_supply_type, supply_sub_inventory, supply_locator, ef_id, created_by, creation_date, last_update_by, last_update_date,wip_wo_header_id ) 
SELECT bom_sequence, routing_sequence,routing_seq_num, component_item_id_m, component_revision, usage_basis, usage_quantity,IF(usage_basis=351,usage_quantity*prods,usage_quantity), auto_request_material_cb, effective_start_date, effective_end_date, eco_number, eco_implemented_cb, planning_percentage, yield, include_in_cost_rollup_cb, IFNULL(bl.wip_supply_type,i.wip_supply_type) wip_supply_type, IFNULL(bl.supply_sub_inventory,i.receipt_sub_inventory) supply_sub_inventory, supply_locator, bl.ef_id, userid, NOW(), userid, NOW(),woid FROM bom_line bl JOIN bom_header bh ON bl.bom_header_id=bh.bom_header_id JOIN item i ON bl.component_item_id_m=i.item_id_m AND bh.org_id=i.org_id WHERE bh.bom_header_id=bomId;
INSERT INTO wip_wo_routing_line (wip_wo_header_id, routing_sequence,routing_seq_num, standard_operation_id, department_id, description,  count_point_cb, auto_charge_cb,   backflush_cb, yield, created_by, creation_date, last_update_by, last_update_date) SELECT woid, routing_sequence,routing_seq_num, standard_operation_id, department_id, description, count_point_cb, auto_charge_cb, backflush_cb,yield, userid, NOW(), userid,NOW() FROM bom_routing_line WHERE bom_routing_header_id=routId;
INSERT INTO wip_wo_routing_detail (wip_wo_routing_line_id,wip_wo_header_id,resource_sequence,charge_basis,resource_id,resource_usage,resource_schedule,required_quantity,charge_type,standard_rate_cb,created_by,creation_date,last_update_by,last_update_date)
SELECT (SELECT wip_wo_routing_line_id FROM wip_wo_routing_line WHERE (wip_wo_header_id,routing_sequence,routing_seq_num)=(woid,brl.routing_sequence,brl.routing_seq_num)),woid,resource_sequence,charge_basis,resource_id,resource_usage,resource_schedule,IF(charge_basis=351,resource_usage*prods,resource_usage),charge_type,standard_rate_cb, userid, NOW(), userid,NOW()
FROM bom_routing_detail brd JOIN bom_routing_line brl ON brd.bom_routing_line_id=brl.bom_routing_line_id WHERE brd.bom_routing_header_id=routId;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `inv_lot_onhand_updater` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 PROCEDURE `inv_lot_onhand_updater`(act INT,lotId INT,transactionId BIGINT,quantity DECIMAL(15,5),onhandId INT,updaterId INT)
BEGIN
IF lotId!=0 THEN
BEGIN
SET @lohid=NULL;
SELECT inv_lot_onhand_id INTO @lohid FROM inv_lot_onhand WHERE inv_lot_number_id=lotId AND onhand_id=onhandId;
IF act=1 THEN
BEGIN
IF @lohid IS NOT NULL THEN
UPDATE inv_lot_onhand SET lot_quantity=lot_quantity-quantity,last_update_by=updaterId,last_update_date=NOW() WHERE inv_lot_onhand_id=@lohid;
END IF;
END;
ELSE IF act=27 THEN
BEGIN
IF @lohid IS NULL THEN
INSERT INTO inv_lot_onhand (inv_lot_number_id,lot_quantity,onhand_id,created_by,creation_date,last_update_by,last_update_date) VALUE(lotId,quantity,onhandid,updaterId,NOW(),updaterId,NOW());
SELECT LAST_INSERT_ID() INTO @lohid;
SET @fitid=NULL;
SELECT first_inv_transaction_id INTO @fitid FROM inv_lot_number WHERE inv_lot_number_id=lotId;
IF @fitid is null THEN
UPDATE inv_lot_number SET first_inv_transaction_id=transactionId,lock_cb=0,activation_date=CURDATE() WHERE inv_lot_number_id=lotId;
END IF;
ELSE
UPDATE inv_lot_onhand SET lot_quantity=lot_quantity+quantity,last_update_by=updaterId,last_update_date=NOW() WHERE inv_lot_onhand_id=@lohid;
END IF;
END;
END IF;
END IF;
END;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `wipwoRelease` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 PROCEDURE `wipwoRelease`(woid bigint,userid int,orgid int)
BEGIN
set @qty=0;
select item_id_m,quantity into @item,@qty from wip_wo_header where wip_wo_header_id=woid AND wo_status=369;
if @qty > 0 then
update wip_wo_header set wo_status=370,released_date=now(),last_update_by=userid where wip_wo_header_id=woid and wo_status=369;
#update wip_wo_header set wo_status=370,released_date=now() where parent_wo_id=woid and wo_status=369;
#call wipwoReleaseRL(woid,@item,@qty,orgid,userid);move to wip_wo_headerUpdate
end if;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `wipwoReleaseRL` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`i3u`@`localhost`*/ /*!50003 PROCEDURE `wipwoReleaseRL`(woid BIGINT,item BIGINT,qty int,orgid int,userid int)
BEGIN
DECLARE rs INT;
DECLARE rsn INT;
DECLARE rlid INT;
DECLARE done INT;
DECLARE wipwoR CURSOR FOR SELECT MIN(routing_sequence),routing_seq_num,wip_wo_routing_line_id FROM wip_wo_routing_line WHERE wip_wo_header_id=woid GROUP BY routing_seq_num;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
DELETE FROM xbs_log WHERE task='WO_Release' AND user_id=userid;
    OPEN wipwoR;
    BEGIN_wipwoR: LOOP
        FETCH wipwoR INTO rs,rsn,rlid;
        IF done THEN
            LEAVE BEGIN_wipwoR;
        END IF;
        IF(rs>0) THEN
INSERT INTO wip_move_transaction (wip_wo_header_id,item_id_m,move_quantity,from_routing_sequence,from_routing_seq_num,from_operation_step,reason,to_routing_sequence,to_routing_seq_num,to_operation_step,transaction_type,transaction_date,created_by,creation_date,last_update_by,last_update_date,org_id) 
SELECT woid,item,qty,0,rsn,378,'wo_release',rs,rsn,'382','WIP_MOVE',NOW(),userid,NOW(),userid,NOW(),orgid FROM wip_wo_routing_line WHERE wip_wo_routing_line_id=rlid;
update wip_wo_routing_line set queue_quantity=qty where wip_wo_routing_line_id=rlid;
	END IF;
    END LOOP BEGIN_wipwoR;
    CLOSE wipwoR;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
DELIMITER ;

--
-- Current Database: `mes_trace`
--

USE `mes_trace`;

--
-- Final view structure for view `bom_department_user_v`
--

/*!50001 DROP TABLE `bom_department_user_v`*/;
/*!50001 DROP VIEW IF EXISTS `bom_department_user_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bom_department_user_v` AS (select `d`.`department` AS `department`,`b`.`standard_operation` AS `standard_operation`,`x`.`username` AS `username`,(`d`.`status` and `b`.`status` and `u`.`active`) AS `active`,`d`.`description` AS `description`,`d`.`org_id` AS `org_id`,`x`.`user_id` AS `user_id`,`d`.`status` AS `bd_status`,`b`.`status` AS `bo_status`,`u`.`active` AS `bu_active`,`d`.`bom_department_id` AS `bom_department_id`,`b`.`bom_standard_operation_id` AS `bom_standard_operation_id`,`u`.`user_bom_department_id` AS `user_bom_department_id` from (((`bom_department` `d` left join `user_bom_department` `u` on((`u`.`bom_department_id` = `d`.`bom_department_id`))) left join `user` `X` on((`u`.`user_id` = `x`.`user_id`))) left join `bom_standard_operation` `b` on((`b`.`department_id` = `d`.`bom_department_id`)))) */;

--
-- Final view structure for view `hr_employee_v`
--

/*!50001 DROP TABLE `hr_employee_v`*/;
/*!50001 DROP VIEW IF EXISTS `hr_employee_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hr_employee_v` AS select concat(`he`.`last_name`,_utf8' ',`he`.`first_name`) AS `name`,`he`.`employee_number` AS `employee_number`,`he`.`first_name` AS `first_name`,`he`.`last_name` AS `last_name`,`u`.`username` AS `username`,`d`.`department` AS `department`,concat(`hs`.`last_name`,_utf8' ',`hs`.`first_name`) AS `supervisor`,`he`.`identification_id` AS `identification_id`,`he`.`start_date` AS `emp_start_date`,`he`.`citizen_number` AS `citizen_number`,`he`.`phone` AS `phone`,`he`.`email` AS `emp_email`,`u`.`email` AS `email`,`u`.`status` AS `status`,`he`.`gender` AS `gender`,`he`.`person_type` AS `person_type`,`he`.`hr_employee_id` AS `hr_employee_id`,`he`.`org_id` AS `org_id`,`he`.`job_id` AS `job_id`,`u`.`user_id` AS `user_id`,`he`.`department_id` AS `department_id`,`he`.`position_id` AS `position_id`,`he`.`expense_ac_id` AS `expense_ac_id`,`he`.`supervisor_employee_id` AS `supervisor_employee_id` from (((`user` `u` left join `hr_employee` `he` on((`he`.`hr_employee_id` = `u`.`hr_employee_id`))) left join `hr_department` `d` on((`he`.`department_id` = `d`.`dept_id`))) left join `hr_employee` `hs` on((`he`.`supervisor_employee_id` = `hs`.`hr_employee_id`))) */;

--
-- Final view structure for view `wip_wo_bom_v`
--

/*!50001 DROP TABLE `wip_wo_bom_v`*/;
/*!50001 DROP VIEW IF EXISTS `wip_wo_bom_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wip_wo_bom_v` AS (select `w0`.`wo_number` AS `wo_number`,`p`.`item_number` AS `product`,`p`.`item_name` AS `product_name`,`p`.`item_specification` AS `product_specification`,`p`.`item_description` AS `product_description`,`i`.`item_number` AS `material`,`i`.`item_name` AS `item_name`,`i`.`item_specification` AS `item_specification`,`i`.`item_description` AS `item_description`,`w`.`required_quantity` AS `required_quantity`,`w`.`issued_quantity` AS `issued_quantity`,`u`.`uom_name` AS `uom_name`,`o`.`option_line_value` AS `usage_basis`,`w`.`usage_quantity` AS `usage_quantity`,`o0`.`option_line_value` AS `wip_supply_type`,`s`.`subinventory` AS `supply_sub_inventory`,`l`.`locator` AS `supply_locator`,`bso`.`standard_operation` AS `standard_operation`,`w`.`routing_sequence` AS `routing_sequence`,`w`.`routing_seq_num` AS `routing_seq_num`,`w0`.`start_date` AS `start_date`,`w`.`effective_start_date` AS `effective_start_date`,`w`.`effective_end_date` AS `effective_end_date`,`w`.`created_by` AS `created_by`,`w`.`creation_date` AS `creation_date`,`w`.`last_update_by` AS `last_update_by`,`w`.`last_update_date` AS `last_update_date`,`w`.`component_item_id_m` AS `material_id`,`w0`.`item_id_m` AS `product_id`,`i`.`uom_id` AS `uom_id`,`w`.`supply_sub_inventory` AS `supply_sub_inventory_id`,`w`.`supply_locator` AS `supply_locator_id`,`w`.`bom_sequence` AS `bom_sequence`,`w`.`wip_wo_bom_id` AS `wip_wo_bom_id`,`w0`.`wip_wo_header_id` AS `wip_wo_header_id`,`w0`.`org_id` AS `org_id`,`ws`.`option_line_value` AS `wo_statusv`,`w0`.`wo_status` AS `wo_status`,if((isnull(`w0`.`parent_wo_id`) or (`w0`.`parent_wo_id` = 0)),`w0`.`wip_wo_header_id`,`wp`.`wip_wo_header_id`) AS `wo_id` from ((((((((((((`wip_wo_bom` `w` left join `wip_wo_header` `w0` on((`w`.`wip_wo_header_id` = `w0`.`wip_wo_header_id`))) left join `wip_wo_header` `wp` on((`w0`.`parent_wo_id` = `wp`.`wip_wo_header_id`))) left join `item` `p` on(((`w0`.`item_id_m` = `p`.`item_id_m`) and (`w0`.`org_id` = `p`.`org_id`)))) left join `item` `i` on(((`w`.`component_item_id_m` = `i`.`item_id_m`) and (`w0`.`org_id` = `i`.`org_id`)))) left join `uom` `u` on((`i`.`uom_id` = `u`.`uom_id`))) join `wip_wo_routing_line` `wwrl` on(((`w`.`wip_wo_header_id` = `wwrl`.`wip_wo_header_id`) and (`w`.`routing_sequence` = `wwrl`.`routing_sequence`) and (`w`.`routing_seq_num` = `wwrl`.`routing_seq_num`)))) join `bom_standard_operation` `bso` on((`bso`.`bom_standard_operation_id` = `wwrl`.`standard_operation_id`))) left join `option_line` `o` on((`w`.`usage_basis` = `o`.`option_line_id`))) left join `option_line` `o0` on((`w`.`wip_supply_type` = `o0`.`option_line_id`))) left join `option_line` `ws` on((`w0`.`wo_status` = `ws`.`option_line_id`))) left join `subinventory` `s` on((`w`.`supply_sub_inventory` = `s`.`subinventory_id`))) left join `locator` `l` on((`w`.`supply_locator` = `l`.`locator_id`)))) */;

--
-- Final view structure for view `wip_wo_routing_first_last_v`
--

/*!50001 DROP TABLE `wip_wo_routing_first_last_v`*/;
/*!50001 DROP VIEW IF EXISTS `wip_wo_routing_first_last_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wip_wo_routing_first_last_v` AS (select min(`wip_wo_routing_line`.`routing_sequence`) AS `firstSEQ`,max(`wip_wo_routing_line`.`routing_sequence`) AS `lastSEQ`,`wip_wo_routing_line`.`wip_wo_header_id` AS `wip_wo_header_id` from `wip_wo_routing_line` group by `wip_wo_routing_line`.`wip_wo_header_id`) */;

--
-- Final view structure for view `wip_wo_routing_v`
--

/*!50001 DROP TABLE `wip_wo_routing_v`*/;
/*!50001 DROP VIEW IF EXISTS `wip_wo_routing_v`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wip_wo_routing_v` AS (select if((isnull(`w0`.`parent_wo_id`) or (`w0`.`parent_wo_id` = 0)),`w0`.`wo_number`,`wp`.`wo_number`) AS `wo_number`,`i`.`item_number` AS `item_number`,`i`.`item_name` AS `item_name`,`i`.`item_specification` AS `item_specification`,`i`.`item_description` AS `item_description`,`st`.`option_line_value` AS `status`,`w`.`queue_quantity` AS `queue_quantity`,`w`.`running_quantity` AS `running_quantity`,`w`.`rejected_quantity` AS `rejected_quantity`,`w`.`scrapped_quantity` AS `scrapped_quantity`,`w`.`completed_quantity` AS `completed_quantity`,`w`.`routing_sequence` AS `routing_sequence`,`w`.`routing_seq_num` AS `routing_seq_num`,`b`.`standard_operation` AS `standard_operation`,`b0`.`department` AS `department`,`w`.`description` AS `description`,`w0`.`start_date` AS `start_date`,`w0`.`completion_date` AS `completion_date`,`w`.`minimum_transfer_quantity` AS `minimum_transfer_quantity`,`w`.`yield` AS `yield`,`w`.`created_by` AS `created_by`,`w`.`creation_date` AS `creation_date`,`w`.`last_update_by` AS `last_update_by`,`w`.`last_update_date` AS `last_update_date`,`w`.`wip_wo_routing_line_id` AS `wip_wo_routing_line_id`,`w`.`standard_operation_id` AS `standard_operation_id`,`b0`.`bom_department_id` AS `bom_department_id`,`wfl`.`firstSEQ` AS `firstSeq`,`wfl`.`lastSEQ` AS `lastSeq`,(case when (`wfl`.`firstSEQ` = `wfl`.`lastSEQ`) then 3 when (`w`.`routing_sequence` = `wfl`.`firstSEQ`) then 1 when (`w`.`routing_sequence` = `wfl`.`lastSEQ`) then 2 else 0 end) AS `firstlast`,`w0`.`wo_type` AS `wo_type`,`w0`.`wo_status` AS `wo_status`,`w0`.`wip_wo_header_id` AS `wip_wo_header_id`,`w0`.`build_sequence` AS `build_sequence`,`w0`.`line` AS `line`,`w0`.`scheduling_priority` AS `scheduling_priority`,`w0`.`item_id_m` AS `item_id_m`,`w0`.`org_id` AS `org_id`,if((isnull(`w0`.`parent_wo_id`) or (`w0`.`parent_wo_id` = 0)),`w0`.`wip_wo_header_id`,`wp`.`wip_wo_header_id`) AS `wo_id` from (((((((`wip_wo_routing_line` `w` join `wip_wo_routing_first_last_v` `wfl` on((`w`.`wip_wo_header_id` = `wfl`.`wip_wo_header_id`))) left join `wip_wo_header` `w0` on((`w`.`wip_wo_header_id` = `w0`.`wip_wo_header_id`))) left join `wip_wo_header` `wp` on((`w0`.`parent_wo_id` = `wp`.`wip_wo_header_id`))) left join `bom_standard_operation` `b` on((`w`.`standard_operation_id` = `b`.`bom_standard_operation_id`))) left join `bom_department` `b0` on((`w`.`department_id` = `b0`.`bom_department_id`))) left join `option_line` `st` on((`w0`.`wo_status` = `st`.`option_line_id`))) left join `item` `i` on((`w0`.`item_id_m` = `i`.`item_id_m`)))) */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-18  7:08:48
