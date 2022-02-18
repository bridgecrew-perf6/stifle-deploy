-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: compliance
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Dumping data for table `api_call_record`
--

LOCK TABLES `api_call_record` WRITE;
/*!40000 ALTER TABLE `api_call_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_call_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add search name',1,'add_searchname'),(2,'Can change search name',1,'change_searchname'),(3,'Can delete search name',1,'delete_searchname'),(4,'Can view search name',1,'view_searchname'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session'),(29,'Can add customer type',8,'add_customertype'),(30,'Can change customer type',8,'change_customertype'),(31,'Can delete customer type',8,'delete_customertype'),(32,'Can view customer type',8,'view_customertype'),(33,'Can add delivery channel',9,'add_deliverychannel'),(34,'Can change delivery channel',9,'change_deliverychannel'),(35,'Can delete delivery channel',9,'delete_deliverychannel'),(36,'Can view delivery channel',9,'view_deliverychannel'),(37,'Can add geographic location',10,'add_geographiclocation'),(38,'Can change geographic location',10,'change_geographiclocation'),(39,'Can delete geographic location',10,'delete_geographiclocation'),(40,'Can view geographic location',10,'view_geographiclocation'),(41,'Can add product type',11,'add_producttype'),(42,'Can change product type',11,'change_producttype'),(43,'Can delete product type',11,'delete_producttype'),(44,'Can view product type',11,'view_producttype'),(45,'Can add beneficial',12,'add_beneficial'),(46,'Can change beneficial',12,'change_beneficial'),(47,'Can delete beneficial',12,'delete_beneficial'),(48,'Can view beneficial',12,'view_beneficial'),(49,'Can add individual',13,'add_individual'),(50,'Can change individual',13,'change_individual'),(51,'Can delete individual',13,'delete_individual'),(52,'Can view individual',13,'view_individual'),(53,'Can add organization',14,'add_organization'),(54,'Can change organization',14,'change_organization'),(55,'Can delete organization',14,'delete_organization'),(56,'Can view organization',14,'view_organization'),(57,'Can add pep',15,'add_pep'),(58,'Can change pep',15,'change_pep'),(59,'Can delete pep',15,'delete_pep'),(60,'Can view pep',15,'view_pep'),(61,'Can add discount',16,'add_discount'),(62,'Can change discount',16,'change_discount'),(63,'Can delete discount',16,'delete_discount'),(64,'Can view discount',16,'view_discount'),(65,'Can add alert',17,'add_alert'),(66,'Can change alert',17,'change_alert'),(67,'Can delete alert',17,'delete_alert'),(68,'Can view alert',17,'view_alert'),(69,'Can add fuzzy score',18,'add_fuzzyscore'),(70,'Can change fuzzy score',18,'change_fuzzyscore'),(71,'Can delete fuzzy score',18,'delete_fuzzyscore'),(72,'Can view fuzzy score',18,'view_fuzzyscore'),(73,'Can add customer type organization',19,'add_customertypeorganization'),(74,'Can change customer type organization',19,'change_customertypeorganization'),(75,'Can delete customer type organization',19,'delete_customertypeorganization'),(76,'Can view customer type organization',19,'view_customertypeorganization');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$kfAs0dkGvt9wI6YiVxxB6o$1LXJNWA+kWKOD0MBI4WmrXp0XIOns4RqzwIZtJS1rA8=','2021-12-06 07:59:23.014652',1,'shahid','','','rai@gmail.com',1,1,'2021-12-04 06:51:42.021245');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `consolidate_list`
--

LOCK TABLES `consolidate_list` WRITE;
/*!40000 ALTER TABLE `consolidate_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `consolidate_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `country_nationality`
--

LOCK TABLES `country_nationality` WRITE;
/*!40000 ALTER TABLE `country_nationality` DISABLE KEYS */;
/*!40000 ALTER TABLE `country_nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer_type`
--

LOCK TABLES `customer_type` WRITE;
/*!40000 ALTER TABLE `customer_type` DISABLE KEYS */;
INSERT INTO `customer_type` VALUES (1,'Accountant, Auditor and Tax Advisor','Medium',30),(2,'Agriculturist','Low',20),(3,'Arms/ Ammunition Dealers','High',40),(4,'High valuable/ Precious Metal Dealers (e.g.  Gold, Silver, Diamond, Ruby, Antique, etc Dealers)','High',40),(5,'High Net worth customers with no clearly identifiable source of income, etc','High',40),(6,'Housewives/ Widows/ Households','High',40),(7,'Investment and Comodity Advisor','Medium',30),(8,'Land Lords','High',40),(9,'Landady','High',40),(10,'Lawyers','High',40),(11,'Minors','Low',20),(12,'Non Residents, Foreign Nationals','High',40),(13,'Notaries','Low',20),(14,'Old Auto Parts and/ or Metal Scrap Dealers','High',40),(15,'Pensioner','Low',10),(16,'Politically Exposed Parties/ Persons (PEPs) including their Family Members and Close associates or Relatives','High',60),(17,'Real-Estate Dealer/Agent','Medium',30),(18,'Retired Person','Low',10),(19,'Salaried individual, Pension Holders and like Customers','Low',10),(20,'Security Brokers-Dealer (Such as Shares, Mutual Funds etc.)','Medium',30),(21,'Self Employed/ Proprietorship','Low',10),(22,'Minors, Students, Unemployed','Low',20),(23,'Trader of General Items','Medium',30),(24,'Travel/Tourism Agent','Medium',30),(25,'Government Entities (Local/Provincal/State/Federal) / Public Administration','Medium',30),(26,'All other Customers not Specified above','High',40);
/*!40000 ALTER TABLE `customer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer_type_organization`
--

LOCK TABLES `customer_type_organization` WRITE;
/*!40000 ALTER TABLE `customer_type_organization` DISABLE KEYS */;
INSERT INTO `customer_type_organization` VALUES (1,'Arms/ Ammunition Dealers','High',40),(2,'High valuable/ Precious Metal Dealers (e.g.  Gold, Silver, Diamond, Ruby, Antique, etc Dealers)','High',40),(3,'Investment and Comodity Advisor','Medium',30),(4,'Lawyers','Medium',30),(5,'Notaries','Low',20),(6,'Old Auto Parts and/ or Metal Scrap Dealers','High',40),(7,'Politically Exposed Parties/ Persons (PEPs) including their Family Members and Close associates or Relatives','High',40),(8,'Real-Estate Dealer/Agent','Medium',30),(9,'Security Brokers-Dealer (Such as Shares, Mutual Funds etc.)','Medium',30),(10,'Self Employed/ Proprietorship','Low',10),(11,'Trader of General Items','Medium',30),(12,'Travel/Tourism Agent','Medium',30),(13,'NGOs, NPOs, Charitable/ Religious Organizations, Associations, Clubs, Societies, Associations, etc','High',40),(14,'Exchange Companies','Medium',30),(15,'Administrators, Liquidators, Agents & like customers','Low',20),(16,'Companies having Nominee Shareholders or Shares in Bearer Form','High',40),(17,'Legal Persons or Arrangements that are Personal Asset Holding Vehicles','high',40),(18,'Un-registered Partnership concerns OR Registered Partnership Concerns involving Businesses e.g. Real Estate, Civil Work, Brokerage, Share Dealing, Travel/ Tourism, Trading of general items, etc','Medium',20),(19,'Financial Institutions Regulated Supervised by Regulator except Exchange Companies/ Money Remitters/ Changers','Low',10),(20,'Non-Bank Finance Companies (NBFCs) Regulated/ Supervised byRegulator','Low',10),(21,'Government Entities (Local/ Provincial/ Federal) / Public Administrations','Low',10),(22,'Public/ Private Limited/Guarantee Limited Companies','Low',10),(23,'Foreign Government Entities OR Foreign Private Entities (that are subject to regulatory disclosure requirements and whose  information is publically available)','Low',10),(24,'All other Customers not Specified above','Low',10);
/*!40000 ALTER TABLE `customer_type_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `delivery_channel`
--

LOCK TABLES `delivery_channel` WRITE;
/*!40000 ALTER TABLE `delivery_channel` DISABLE KEYS */;
INSERT INTO `delivery_channel` VALUES (1,'Mobile Wallet','Medium',7),(3,'Branches','Medium',5),(4,'Field Officers','Medium',5),(5,'Automated Teller Machines (ATMs)','High',8),(6,'Payment Terminals','Medium',6),(7,'Point-of-sale-devices','Medium',7),(8,'Mobile Branches','High',10),(9,'Mobile Phones','High',10),(10,'Wire Transfer Channel','High',10);
/*!40000 ALTER TABLE `delivery_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discounting_alert`
--

LOCK TABLES `discounting_alert` WRITE;
/*!40000 ALTER TABLE `discounting_alert` DISABLE KEYS */;
INSERT INTO `discounting_alert` VALUES (1,113212,'ALI SAYYID MUHAMED MUSTAFA BAKRI',' ','Ali Salim','Good','','Unspecified','INDIVIDUAL','Strong','94','1966-04-18','Egypt Beni Suef','','',' ','Egypt','','','UNSC','6754098'),(2,9665,'Ali Salim','ROUMANIN','','',' ','Unspecified','INDIVIDUAL','Strong','94','1000-01-01',' ','West Bank Oja Palestinian','West Bank',' ',' ','Palestinian','Oja','OFAC','6754098'),(3,8719,'Salim Ali ',' ','Ali Salim','AKA',' ','Unspecified','INDIVIDUAL','Strong','94','1966-04-18','Beni-Suef','',' ',' ','Egyptian',' ','Beni-Suef','OFSI','6754098'),(4,110913,'FAIZ',' ',' ','','','Unspecified','INDIVIDUAL','Exact','100','1000-01-01','Afghanistan Ghazni Province','','',' ','Afghanistan','','','UNSC','124');
/*!40000 ALTER TABLE `discounting_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discounting_discount`
--

LOCK TABLES `discounting_discount` WRITE;
/*!40000 ALTER TABLE `discounting_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounting_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discounting_fuzzyscore`
--

LOCK TABLES `discounting_fuzzyscore` WRITE;
/*!40000 ALTER TABLE `discounting_fuzzyscore` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounting_fuzzyscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-12-04 06:58:19.893752','1','DeliveryChannel object (1)',2,'[{\"changed\": {\"fields\": [\"Risk weight\"]}}]',9,1),(2,'2021-12-04 06:58:32.970853','2','DeliveryChannel object (2)',3,'',9,1),(3,'2021-12-04 06:58:50.617390','3','DeliveryChannel object (3)',1,'[{\"added\": {}}]',9,1),(4,'2021-12-04 06:59:09.511413','4','DeliveryChannel object (4)',1,'[{\"added\": {}}]',9,1),(5,'2021-12-04 06:59:23.182334','5','DeliveryChannel object (5)',1,'[{\"added\": {}}]',9,1),(6,'2021-12-04 06:59:40.731149','6','DeliveryChannel object (6)',1,'[{\"added\": {}}]',9,1),(7,'2021-12-04 06:59:56.395324','7','DeliveryChannel object (7)',1,'[{\"added\": {}}]',9,1),(8,'2021-12-04 07:00:12.201451','8','DeliveryChannel object (8)',1,'[{\"added\": {}}]',9,1),(9,'2021-12-04 07:00:24.508972','9','DeliveryChannel object (9)',1,'[{\"added\": {}}]',9,1),(10,'2021-12-04 07:00:37.926821','10','DeliveryChannel object (10)',1,'[{\"added\": {}}]',9,1),(11,'2021-12-04 07:07:03.653861','19','CustomerType object (19)',2,'[{\"changed\": {\"fields\": [\"Cust type\"]}}]',8,1),(12,'2021-12-04 07:08:35.107346','22','CustomerType object (22)',2,'[{\"changed\": {\"fields\": [\"Cust type\"]}}]',8,1),(13,'2021-12-04 07:08:49.170725','25','CustomerType object (25)',3,'',8,1),(14,'2021-12-04 07:10:23.351270','26','CustomerType object (26)',3,'',8,1),(15,'2021-12-04 07:10:48.735027','28','CustomerType object (28)',3,'',8,1),(16,'2021-12-04 07:10:57.822662','29','CustomerType object (29)',3,'',8,1),(17,'2021-12-04 07:11:13.423179','31','CustomerType object (31)',3,'',8,1),(18,'2021-12-04 07:11:28.137733','32','CustomerType object (32)',3,'',8,1),(19,'2021-12-04 07:11:37.346934','33','CustomerType object (33)',3,'',8,1),(20,'2021-12-04 07:11:46.257810','34','CustomerType object (34)',3,'',8,1),(21,'2021-12-04 07:11:58.126679','36','CustomerType object (36)',3,'',8,1),(22,'2021-12-04 07:12:04.089133','37','CustomerType object (37)',3,'',8,1),(23,'2021-12-04 07:12:09.227779','38','CustomerType object (38)',3,'',8,1),(24,'2021-12-04 07:12:13.763095','39','CustomerType object (39)',3,'',8,1),(25,'2021-12-04 07:12:21.959747','40','CustomerType object (40)',3,'',8,1),(26,'2021-12-04 07:12:27.608172','41','CustomerType object (41)',3,'',8,1),(27,'2021-12-04 07:12:44.239365','56','CustomerType object (56)',3,'',8,1),(28,'2021-12-04 07:12:52.413462','54','CustomerType object (54)',3,'',8,1),(29,'2021-12-04 07:12:58.991997','53','CustomerType object (53)',3,'',8,1),(30,'2021-12-04 07:13:05.238214','49','CustomerType object (49)',3,'',8,1),(31,'2021-12-04 07:13:10.046562','50','CustomerType object (50)',3,'',8,1),(32,'2021-12-04 07:13:14.626945','51','CustomerType object (51)',3,'',8,1),(33,'2021-12-04 07:13:19.419820','52','CustomerType object (52)',3,'',8,1),(34,'2021-12-04 07:13:26.686486','42','CustomerType object (42)',3,'',8,1),(35,'2021-12-04 07:13:32.054740','43','CustomerType object (43)',3,'',8,1),(36,'2021-12-04 07:13:36.215500','44','CustomerType object (44)',3,'',8,1),(37,'2021-12-04 07:13:39.966382','45','CustomerType object (45)',3,'',8,1),(38,'2021-12-04 07:13:44.816099','46','CustomerType object (46)',3,'',8,1),(39,'2021-12-04 07:13:49.854992','47','CustomerType object (47)',3,'',8,1),(40,'2021-12-04 07:13:56.231295','48','CustomerType object (48)',3,'',8,1),(41,'2021-12-04 07:14:05.388109','35','CustomerType object (35)',3,'',8,1),(42,'2021-12-04 07:14:10.442344','30','CustomerType object (30)',3,'',8,1),(43,'2021-12-04 07:14:44.858081','27','CustomerType object (27)',3,'',8,1),(44,'2021-12-04 07:16:24.585272','24','CustomerType object (24)',2,'[]',8,1),(45,'2021-12-04 07:17:43.417768','57','CustomerType object (57)',1,'[{\"added\": {}}]',8,1),(46,'2021-12-04 07:19:04.721385','58','CustomerType object (58)',1,'[{\"added\": {}}]',8,1),(47,'2021-12-04 07:19:57.997858','59','CustomerType object (59)',1,'[{\"added\": {}}]',8,1),(48,'2021-12-04 07:22:03.687152','55','CustomerType object (55)',3,'',8,1),(49,'2021-12-04 07:22:14.555681','60','CustomerType object (60)',1,'[{\"added\": {}}]',8,1),(50,'2021-12-04 07:24:01.872278','2','ProductType object (2)',3,'',11,1),(51,'2021-12-04 07:24:09.511577','1','ProductType object (1)',2,'[]',11,1),(52,'2021-12-04 07:24:30.872301','3','ProductType object (3)',1,'[{\"added\": {}}]',11,1),(53,'2021-12-04 07:24:41.359385','4','ProductType object (4)',1,'[{\"added\": {}}]',11,1),(54,'2021-12-04 07:24:57.945057','5','ProductType object (5)',1,'[{\"added\": {}}]',11,1),(55,'2021-12-04 07:25:08.905660','6','ProductType object (6)',1,'[{\"added\": {}}]',11,1),(56,'2021-12-04 07:25:24.603314','7','ProductType object (7)',1,'[{\"added\": {}}]',11,1),(57,'2021-12-04 07:25:41.835275','8','ProductType object (8)',1,'[{\"added\": {}}]',11,1),(58,'2021-12-04 07:25:53.819209','9','ProductType object (9)',1,'[{\"added\": {}}]',11,1),(59,'2021-12-04 07:26:10.581687','10','ProductType object (10)',1,'[{\"added\": {}}]',11,1),(60,'2021-12-04 07:26:20.844973','11','ProductType object (11)',1,'[{\"added\": {}}]',11,1),(61,'2021-12-04 07:26:34.124441','12','ProductType object (12)',1,'[{\"added\": {}}]',11,1),(62,'2021-12-04 07:26:49.601738','13','ProductType object (13)',1,'[{\"added\": {}}]',11,1),(63,'2021-12-04 07:27:02.616045','14','ProductType object (14)',1,'[{\"added\": {}}]',11,1),(64,'2021-12-04 07:27:11.933916','15','ProductType object (15)',1,'[{\"added\": {}}]',11,1),(65,'2021-12-04 07:27:26.943961','16','ProductType object (16)',1,'[{\"added\": {}}]',11,1),(66,'2021-12-04 07:27:40.743765','17','ProductType object (17)',1,'[{\"added\": {}}]',11,1),(67,'2021-12-04 07:27:53.284578','18','ProductType object (18)',1,'[{\"added\": {}}]',11,1),(68,'2021-12-04 07:28:06.675323','19','ProductType object (19)',1,'[{\"added\": {}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(17,'discounting','alert'),(16,'discounting','discount'),(18,'discounting','fuzzyscore'),(12,'identification','beneficial'),(8,'identification','customertype'),(19,'identification','customertypeorganization'),(9,'identification','deliverychannel'),(10,'identification','geographiclocation'),(13,'identification','individual'),(14,'identification','organization'),(15,'identification','pep'),(11,'identification','producttype'),(1,'kyc','searchname'),(7,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-24 09:35:05.837314'),(2,'auth','0001_initial','2021-11-24 09:35:06.429659'),(3,'admin','0001_initial','2021-11-24 09:35:06.643149'),(4,'admin','0002_logentry_remove_auto_add','2021-11-24 09:35:06.658225'),(5,'admin','0003_logentry_add_action_flag_choices','2021-11-24 09:35:06.671519'),(6,'contenttypes','0002_remove_content_type_name','2021-11-24 09:35:06.786642'),(7,'auth','0002_alter_permission_name_max_length','2021-11-24 09:35:06.892054'),(8,'auth','0003_alter_user_email_max_length','2021-11-24 09:35:06.923004'),(9,'auth','0004_alter_user_username_opts','2021-11-24 09:35:06.937007'),(10,'auth','0005_alter_user_last_login_null','2021-11-24 09:35:07.001162'),(11,'auth','0006_require_contenttypes_0002','2021-11-24 09:35:07.006149'),(12,'auth','0007_alter_validators_add_error_messages','2021-11-24 09:35:07.018118'),(13,'auth','0008_alter_user_username_max_length','2021-11-24 09:35:07.086759'),(14,'auth','0009_alter_user_last_name_max_length','2021-11-24 09:35:07.168906'),(15,'auth','0010_alter_group_name_max_length','2021-11-24 09:35:07.196415'),(16,'auth','0011_update_proxy_permissions','2021-11-24 09:35:07.213550'),(17,'auth','0012_alter_user_first_name_max_length','2021-11-24 09:35:07.300689'),(18,'sessions','0001_initial','2021-11-24 09:35:07.373042'),(19,'identification','0001_initial','2021-12-03 18:52:49.087381'),(20,'identification','0002_auto_20211203_2358','2021-12-03 18:58:34.216955'),(21,'discounting','0001_initial','2021-12-04 13:21:23.468735'),(22,'discounting','0002_alert_individual','2021-12-04 13:47:04.242842'),(23,'discounting','0003_discount','2021-12-04 13:47:04.409062'),(24,'discounting','0004_delete_discount','2021-12-04 13:47:04.436677'),(25,'discounting','0005_discount','2021-12-04 13:47:04.593830'),(26,'discounting','0006_fuzzyscore','2021-12-06 07:18:00.254000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('04n39zgrgivd727ozxb9ovu86o3s8ue2','.eJxFjkEKAjEMRe-StYtx20PMTjciEtvMGOikJckIIt7dSnVcvsd_8J8guBAEgB1M6DfSceMoHMd16VDRrBb1TWBKSmYbp3KFcAI4t7Cs4vpo2KD-_UySSNv8IFYp8sSUWinoXAQz-y_RcmeJ3xuJzZWjdzKU-JlfctN9rigzHTFD2A_D6w30qUKl:1mt47E:bDAHlFdLy208J8sWDidN6b8MV31Sv47h0UxvhkjbTEg','2021-12-17 08:40:24.793148'),('bt5na1imo1oashfknr6ngvhjmn88nev5','.eJxVjDsOwjAQBe_iGlm2N8nGlPQ5g7XrdXAA2VI-FeLuJFIKaN_MvLcKtK05bEuawyTqqqy6_G5M8ZnKAeRB5V51rGWdJ9aHok-66KFKet1O9-8g05L3GoEIPaexa8V0hB1Y8JbF-dgQJGHswRtr3S71KDimfjQMgGTQmaZVny_cpTdH:1mu8uB:xj2CT_pv8btsB7AzWehNCbRC8ivTPNoyloLuTv2DFzY','2021-12-20 07:59:23.021005'),('cf9s2ccat9hxam1u7bkc1h1cegzkkfxr','.eJxNj11rgzAUhv-K5HoF7ce29s65FsaYipbdlCFnSayHaZSTtNCO_fedaAe7CrzP-z5JvoWBTouNKAFUsAO8ghF3ogbXaEpv6KJVkGs6Mw32SB1ekTvSoExPHReW83ARRg_r5YKPiNEA1g49uQlrqmsOQSnS1k7ZKxDIxmtU_yk2BxGtH-9n4Wo2X4kPdvcn4-jiQQ5faB2_iuNh6v6NOTlqozSx8A1azTYDDnsDLbpxPNzGY3eg_oxGjl9Coxp_OVNC6f5FFoz0jqpl5h1pnOzjKi-yMilenrbPVb4tyiwtuZvt4sSbCcxRv0MrNlEY_vwCuZ1rjg:1mqr9R:P1QWCrLSFc_WGR7TXv5DL3W0CY05wV2yuoJPmyY0G88','2021-12-11 06:25:33.805585'),('jsbjmqv9mp959hkmtppuarm7aa2s368m','.eJxNj9FqgzAUhl9Fcr2C2sqmd861MMZUtOxmFDlLsnqYJpKkhXbs3XeiHewq5P_-853kmykYJctYCyCCHeAVFLtjn-B6acobukgR1NKciQZ7NCNekTpcIS9PIxU2cbgOo_t0s6YjIjSBtZM2bsEUgBBGWrvcX8AA771C6A-WvbMofUhWYbKKY3Ygrz4pZy4e1PCF1tGLKJ6W7t8wJUephDQkfIVBkk2BQ61gQDcPT7fhuTsZfUbF5--gEr1fTtQgd_8iC4p7RzcQ844yL_Z5VzdVWzTPj9unrt42bVW21K12eeHNBtRRvsHAsiT9-QVJUWnE:1mpxKu:qoAoi_a-MMrsGAkh-HhTqkHmG0Ph1JPMjhzSbLKg-ws','2021-12-08 18:49:40.282809'),('pdbduh0yo7vt5dp12r9wmd4638hgjjyk','.eJxFjkEKAjEMRe-StYtx20PMTjciEtvMGOikJckIIt7dSnVcvsd_8J8guBAEgB1M6DfSceMoHMd16VDRrBb1TWBKSmYbp3KFcAI4t7Cs4vpo2KD-_UySSNv8IFYp8sSUWinoXAQz-y_RcmeJ3xuJzZWjdzKU-JlfctN9rigzHTFD2A_D6w30qUKl:1mrLtg:OUA7RANuE5vuKA_TYPii1ekh-zGOBG_0TwAts8c3Bxg','2021-12-12 15:15:20.026988'),('qprdv1qjc51n9opeifk0llfenwz3nsdy','.eJxVjDsOwjAQBe_iGlm2N8nGlPQ5g7XrdXAA2VI-FeLuJFIKaN_MvLcKtK05bEuawyTqqqy6_G5M8ZnKAeRB5V51rGWdJ9aHok-66KFKet1O9-8g05L3GoEIPaexa8V0hB1Y8JbF-dgQJGHswRtr3S71KDimfjQMgGTQmaZVny_cpTdH:1mtOtp:s_zldCsM_-h9VY8tQ9Lep01u22diNjXMo0bR46hgER4','2021-12-18 06:51:57.475351'),('r041re4p4i3sy8s7qlwfk8zwsg3uvnyk','.eJxNj1FrwjAQx79KyfOE1lqcfRsbvoid4PBliNySzB5rL-ESBR1-911ahT2F_H__-13yqwh6q2q1BTDZEvAKpJ7UN8TWcnNHF2uyjeWz0OwDuccrSkcT6ubUS2E2zcu8mC9mpRyFIA8heMdxxBKAMWxDGO8rYNBtUhj3pepPVSyeq0leTaaV2ovXnSjyJYEN_GCI8iKJ_dh9DEtytGQsi3ANnRUbQURH0GEchv19eOh6dmckPXwHybRpuVBGHf9FAUgnx6ETlhzvy5fXw_atSQoGOtoddKqel7c_GPdjWw:1mppBZ:64uB9Y2iEY5ojmkleN2ZUfpCTf8RcsfRhIgfeFX89oU','2021-12-08 10:07:29.782498'),('s5uel9zf82sgji3l7vyluogtlt44o285','.eJxNj9FqgzAUhl9Fcr2BVmWtd862MMZUtOxmDDlLshqmiZykhXbs3XdiHQwCgf_7z3eSb6ZhlCxjLYAI9qCuoNkd-wTXSywXdJEiqCWeiQYHhaO6KupwrXh5GqmQrMI4jB42SUxXRGgCayeDbsFpklIIQqC09pY9AwLvvUaYD5a9sWizTu_DFR32Tm5z0g4vHtTwpayjV1E83bp_w5QcpRYSSfgCgySbBqeMhkG5eXhahufuhOasNJ-_pLTo_XKiqLj7F1nQ3Du6gZh3lHlxyLu6qdqieXrcbbt617RV2VK32udF125Lb0fQR_kKA8vW8c8vM8Rr0g:1mqwDR:QV-thir9Fu5g4fRNZ32XvQwDhZRjxwXA2Ht50Viyrog','2021-12-11 11:50:01.061993'),('uyejmyabfcxjcfuu9ab30ozyc1jtca6v','.eJxFjkEKAjEMRe-StYtx20PMTjciEtvMGOikJckIIt7dSnVcvsd_8J8guBAEgB1M6DfSceMoHMd16VDRrBb1TWBKSmYbp3KFcAI4t7Cs4vpo2KD-_UySSNv8IFYp8sSUWinoXAQz-y_RcmeJ3xuJzZWjdzKU-JlfctN9rigzHTFD2A_D6w30qUKl:1msnoA:AJ6qFpDcDTT7xCcyYzCqUyEgcAhYbXbiiJ6hDiSObOo','2021-12-16 15:15:38.284470');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eufs`
--

LOCK TABLES `eufs` WRITE;
/*!40000 ALTER TABLE `eufs` DISABLE KEYS */;
/*!40000 ALTER TABLE `eufs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `geographic_location`
--

LOCK TABLES `geographic_location` WRITE;
/*!40000 ALTER TABLE `geographic_location` DISABLE KEYS */;
INSERT INTO `geographic_location` VALUES (1,'Abbottabad','Low',10),(2,'Abdul Hakim','Medium',20),(3,'Akora Khatak','High',30),(4,'Aliabad','Low',10),(5,'Alpurai','Low',10),(6,'Athmuqam','Low',10),(7,'Attock City','Low',10),(8,'Awaran','High',30),(9,'Badin','Medium',20),(10,'Bagh','Medium',20),(11,'Bahawalnagar','Low',10),(12,'Bahawalpur','Low',10),(13,'Bajur','High',30),(14,'Bannu','High',30),(15,'Bara','High',30),(16,'Barkhan','High',30),(17,'Batkhela','High',30),(18,'Battagram','High',30),(19,'Bela','High',30),(20,'Bhakkar','Medium',20),(21,'Bisham','High',30),(22,'Bolan','High',30),(23,'Buner','High',30),(24,'Chaghi','High',30),(25,'Chakwal','Low',10),(26,'Chaman','High',30),(27,'Charsadda','High',30),(28,'Chilas','Medium',20),(29,'Chitral','High',30),(30,'DI Khan','High',30),(31,'Dadu','Medium',20),(32,'Daggar','Medium',20),(33,'Dalbadin','High',30),(34,'Dalbandin','Low',10),(35,'Danyor','Low',10),(36,'Dara Adamkhel','High',30),(37,'Dasu','Low',10),(38,'Dera Allahyar','Medium',20),(39,'Dera Bughti','High',30),(40,'Dera Ghazi Khan','Medium',20),(41,'Dera Ismail Khan','Medium',20),(42,'Dera Murad Jamali','High',30),(43,'Dhadar','High',30),(44,'Dir','High',30),(45,'Faisalabad','Low',10),(46,'Gadoon Amzai','High',30),(47,'Gakuch','Medium',20),(48,'Gandava','Low',10),(49,'Gawadar','High',30),(50,'Ghakhar','High',30),(51,'Ghotki','Medium',20),(52,'Gijkopt','High',30),(53,'Gilgit','Low',10),(54,'Gojra','Medium',20),(55,'Gomal','High',30),(56,'Gujranwala','Low',10),(57,'Gujrat','Low',10),(58,'Hafizabad','Low',10),(59,'Hangu','High',30),(60,'Haripur','Medium',20),(61,'Harunabad','Low',10),(62,'Hasilpur','Low',10),(63,'Hassan Abdal','Low',10),(64,'Hub','High',30),(65,'Hujra Shah Muqim','Medium',20),(66,'Hyderabad','Low',10),(67,'Islamabad','Low',10),(68,'Jacobabad','Low',10),(69,'Jaffarabad','High',30),(70,'Jalalpur Jattan','Medium',20),(71,'Jamrud','High',30),(72,'Jamshoro','Low',10),(73,'Jaranwala','Low',10),(74,'Jehangira','High',30),(75,'Jhal Magsi','High',30),(76,'Jhang','Low',10),(77,'Jhelum','Low',10),(78,'Kabirwala','Medium',20),(79,'Kalabagh','High',30),(80,'Kalat','Low',10),(81,'Kamalia','Medium',20),(82,'Kandhkot','Medium',20),(83,'Kanpur','High',30),(84,'Karachi','Low',10),(85,'Karak','High',30),(86,'Kasur','Low',10),(87,'Kech','High',30),(88,'Khairpur','Medium',20),(89,'Khanewal','Low',10),(90,'Khanpur','Low',10),(91,'Kharan','High',30),(92,'Kharian','Low',10),(93,'Khushab','Low',10),(94,'Khuzdar','High',30),(95,'Khyber Agency','High',30),(96,'Kila Saifullah','High',30),(97,'Killa Abdullah','High',30),(98,'Kohat','High',30),(99,'Kohlu','High',30),(100,'Kot Addu','Low',10),(101,'Kotli','Low',10),(102,'Kulachi','Low',10),(103,'Kundian','Low',10),(104,'Kurram Agency','High',30),(105,'Lahore','Low',10),(106,'Laki Marwat','High',30),(107,'Lala Musa','Medium',20),(108,'Landi Kotal','High',30),(109,'Larkana','Low',10),(110,'Lasbela','High',30),(111,'Latamber','High',30),(112,'Layyah','Low',10),(113,'Lodhran','Low',10),(114,'Loralai','High',30),(115,'Malakand','High',30),(116,'Mandi Bahauddin','Low',10),(117,'Mandi Burewala','Low',10),(118,'Mansehra','Medium',20),(119,'Mardan','High',30),(120,'Mastung','High',30),(121,'Matiari','Low',10),(122,'Mian Channu','Low',10),(123,'Mianwali','Low',10),(124,'Mingora','High',30),(125,'Mir Ali Mirali','High',30),(126,'Miranshah','High',30),(127,'Mirpur Khas','Low',10),(128,'Mohmand Agency','High',30),(129,'Multan','Low',10),(130,'Muridke','Low',10),(131,'Musa Khel Bazar','Low',10),(132,'Musakhel','High',30),(133,'Muzaffarabad','Low',10),(134,'Muzaffargarh','Low',10),(135,'Nankana Sahib','Low',10),(136,'Narowal','Low',10),(137,'Nasirabad','High',30),(138,'Naushahro Firoz','Low',10),(139,'Nawabshah','Low',10),(140,'Nawankali','High',30),(141,'New Mirpur','Medium',20),(142,'North Waziristan Agency','High',30),(143,'Nowshera','High',30),(144,'Nushki','High',30),(145,'Okara','Low',10),(146,'Orakazi Agency','High',30),(147,'Pakpattan','Medium',20),(148,'Panjgur','High',30),(149,'Parachinar','High',30),(150,'Pasni','High',30),(151,'Pattoki','Low',10),(152,'Peshawar','High',30),(153,'Pishin','High',30),(154,'Pubi','High',30),(155,'Qaidabad','High',30),(156,'Qalat','High',30),(157,'Qila Saifullah','Medium',20),(158,'Quetta','High',30),(159,'Rahimyar Khan','Low',10),(160,'Rajanpur','Low',10),(161,'Rawala Kot','Low',10),(162,'Rawalpindi','Low',10),(163,'Risalpur','Low',10),(164,'Sadiqabad','Low',10),(165,'Sahiwal','Low',10),(166,'Saidu Sharif','Medium',20),(167,'Sakhakot','High',30),(168,'Sanghar','Medium',20),(169,'Sarai Morang','High',30),(170,'Sargodha','Low',10),(171,'Sawabi','High',30),(172,'Shahdad Kot','Low',10),(173,'Shakargarh','Low',10),(174,'Sharkpur','High',30),(175,'Shekhupura','Low',10),(176,'Shijaabad','High',30),(177,'Shikarpur','Low',10),(178,'Sialkot','Low',10),(179,'Sibi','High',30),(180,'South Waziristan Agency','High',30),(181,'Sukkur','Low',10),(182,'Swabi','Medium',20),(183,'Swat','High',30),(184,'Taftan','High',30),(185,'Takht Bhai','High',30),(186,'Takht Nusrati','High',30),(187,'Taloi Band','High',30),(188,'Tando Allahyar','Medium',20),(189,'Tando Muhammad Khan','Medium',20),(190,'Tank','High',30),(191,'Thatta','Medium',20),(192,'Thul','High',30),(193,'Timergara','High',30),(194,'Toba Tek Singh','Low',10),(195,'Turbat','High',30),(196,'Umarkot','Medium',20),(197,'Upper Dir','Medium',20),(198,'Usta Muhammad','High',30),(199,'Uthal','High',30),(200,'Vehari','Low',10),(201,'Washuk','High',30),(202,'Zhob','High',30),(203,'Ziarat','High',30),(204,'Azad Kashmir','Low',10),(205,'Wah Cantt','Low',10),(206,'Abbottabad','Low',10),(207,'Abdul Hakim','Medium',20),(208,'Akora Khatak','High',30),(209,'Aliabad','Low',10),(210,'Alpurai','Low',10),(211,'Athmuqam','Low',10),(212,'Attock City','Low',10),(213,'Awaran','High',30),(214,'Badin','Medium',20),(215,'Bagh','Medium',20),(216,'Bahawalnagar','Low',10),(217,'Bahawalpur','Low',10),(218,'Bajur','High',30),(219,'Bannu','High',30),(220,'Bara','High',30),(221,'Barkhan','High',30),(222,'Batkhela','High',30),(223,'Battagram','High',30),(224,'Bela','High',30),(225,'Bhakkar','Medium',20),(226,'Bisham','High',30),(227,'Bolan','High',30),(228,'Buner','High',30),(229,'Chaghi','High',30),(230,'Chakwal','Low',10),(231,'Chaman','High',30),(232,'Charsadda','High',30),(233,'Chilas','Medium',20),(234,'Chitral','High',30),(235,'DI Khan','High',30),(236,'Dadu','Medium',20),(237,'Daggar','Medium',20),(238,'Dalbadin','High',30),(239,'Dalbandin','Low',10),(240,'Danyor','Low',10),(241,'Dara Adamkhel','High',30),(242,'Dasu','Low',10),(243,'Dera Allahyar','Medium',20),(244,'Dera Bughti','High',30),(245,'Dera Ghazi Khan','Medium',20),(246,'Dera Ismail Khan','Medium',20),(247,'Dera Murad Jamali','High',30),(248,'Dhadar','High',30),(249,'Dir','High',30),(250,'Faisalabad','Low',10),(251,'Gadoon Amzai','High',30),(252,'Gakuch','Medium',20),(253,'Gandava','Low',10),(254,'Gawadar','High',30),(255,'Ghakhar','High',30),(256,'Ghotki','Medium',20),(257,'Gijkopt','High',30),(258,'Gilgit','Low',10),(259,'Gojra','Medium',20),(260,'Gomal','High',30),(261,'Gujranwala','Low',10),(262,'Gujrat','Low',10),(263,'Hafizabad','Low',10),(264,'Hangu','High',30),(265,'Haripur','Medium',20),(266,'Harunabad','Low',10),(267,'Hasilpur','Low',10),(268,'Hassan Abdal','Low',10),(269,'Hub','High',30),(270,'Hujra Shah Muqim','Medium',20),(271,'Hyderabad','Low',10),(272,'Islamabad','Low',10),(273,'Jacobabad','Low',10),(274,'Jaffarabad','High',30),(275,'Jalalpur Jattan','Medium',20),(276,'Jamrud','High',30),(277,'Jamshoro','Low',10),(278,'Jaranwala','Low',10),(279,'Jehangira','High',30),(280,'Jhal Magsi','High',30),(281,'Jhang','Low',10),(282,'Jhelum','Low',10),(283,'Kabirwala','Medium',20),(284,'Kalabagh','High',30),(285,'Kalat','Low',10),(286,'Kamalia','Medium',20),(287,'Kandhkot','Medium',20),(288,'Kanpur','High',30),(289,'Karachi','Low',10),(290,'Karak','High',30),(291,'Kasur','Low',10),(292,'Kech','High',30),(293,'Khairpur','Medium',20),(294,'Khanewal','Low',10),(295,'Khanpur','Low',10),(296,'Kharan','High',30),(297,'Kharian','Low',10),(298,'Khushab','Low',10),(299,'Khuzdar','High',30),(300,'Khyber Agency','High',30),(301,'Kila Saifullah','High',30),(302,'Killa Abdullah','High',30),(303,'Kohat','High',30),(304,'Kohlu','High',30),(305,'Kot Addu','Low',10),(306,'Kotli','Low',10),(307,'Kulachi','Low',10),(308,'Kundian','Low',10),(309,'Kurram Agency','High',30),(310,'Lahore','Low',10),(311,'Laki Marwat','High',30),(312,'Lala Musa','Medium',20),(313,'Landi Kotal','High',30),(314,'Larkana','Low',10),(315,'Lasbela','High',30),(316,'Latamber','High',30),(317,'Layyah','Low',10),(318,'Lodhran','Low',10),(319,'Loralai','High',30),(320,'Malakand','High',30),(321,'Mandi Bahauddin','Low',10),(322,'Mandi Burewala','Low',10),(323,'Mansehra','Medium',20),(324,'Mardan','High',30),(325,'Mastung','High',30),(326,'Matiari','Low',10),(327,'Mian Channu','Low',10),(328,'Mianwali','Low',10),(329,'Mingora','High',30),(330,'Mir Ali Mirali','High',30),(331,'Miranshah','High',30),(332,'Mirpur Khas','Low',10),(333,'Mohmand Agency','High',30),(334,'Multan','Low',10),(335,'Muridke','Low',10),(336,'Musa Khel Bazar','Low',10),(337,'Musakhel','High',30),(338,'Muzaffarabad','Low',10),(339,'Muzaffargarh','Low',10),(340,'Nankana Sahib','Low',10),(341,'Narowal','Low',10),(342,'Nasirabad','High',30),(343,'Naushahro Firoz','Low',10),(344,'Nawabshah','Low',10),(345,'Nawankali','High',30),(346,'New Mirpur','Medium',20),(347,'North Waziristan Agency','High',30),(348,'Nowshera','High',30),(349,'Nushki','High',30),(350,'Okara','Low',10),(351,'Orakazi Agency','High',30),(352,'Pakpattan','Medium',20),(353,'Panjgur','High',30),(354,'Parachinar','High',30),(355,'Pasni','High',30),(356,'Pattoki','Low',10),(357,'Peshawar','High',30),(358,'Pishin','High',30),(359,'Pubi','High',30),(360,'Qaidabad','High',30),(361,'Qalat','High',30),(362,'Qila Saifullah','Medium',20),(363,'Quetta','High',30),(364,'Rahimyar Khan','Low',10),(365,'Rajanpur','Low',10),(366,'Rawala Kot','Low',10),(367,'Rawalpindi','Low',10),(368,'Risalpur','Low',10),(369,'Sadiqabad','Low',10),(370,'Sahiwal','Low',10),(371,'Saidu Sharif','Medium',20),(372,'Sakhakot','High',30),(373,'Sanghar','Medium',20),(374,'Sarai Morang','High',30),(375,'Sargodha','Low',10),(376,'Sawabi','High',30),(377,'Shahdad Kot','Low',10),(378,'Shakargarh','Low',10),(379,'Sharkpur','High',30),(380,'Shekhupura','Low',10),(381,'Shijaabad','High',30),(382,'Shikarpur','Low',10),(383,'Sialkot','Low',10),(384,'Sibi','High',30),(385,'South Waziristan Agency','High',30),(386,'Sukkur','Low',10),(387,'Swabi','Medium',20),(388,'Swat','High',30),(389,'Taftan','High',30),(390,'Takht Bhai','High',30),(391,'Takht Nusrati','High',30),(392,'Taloi Band','High',30),(393,'Tando Allahyar','Medium',20),(394,'Tando Muhammad Khan','Medium',20),(395,'Tank','High',30),(396,'Thatta','Medium',20),(397,'Thul','High',30),(398,'Timergara','High',30),(399,'Toba Tek Singh','Low',10),(400,'Turbat','High',30),(401,'Umarkot','Medium',20),(402,'Upper Dir','Medium',20),(403,'Usta Muhammad','High',30),(404,'Uthal','High',30),(405,'Vehari','Low',10),(406,'Washuk','High',30),(407,'Zhob','High',30),(408,'Ziarat','High',30),(409,'Azad Kashmir','Low',10),(410,'Wah Cantt','Low',10);
/*!40000 ALTER TABLE `geographic_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `identification_beneficial`
--

LOCK TABLES `identification_beneficial` WRITE;
/*!40000 ALTER TABLE `identification_beneficial` DISABLE KEYS */;
/*!40000 ALTER TABLE `identification_beneficial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `identification_individual`
--

LOCK TABLES `identification_individual` WRITE;
/*!40000 ALTER TABLE `identification_individual` DISABLE KEYS */;
INSERT INTO `identification_individual` VALUES ('2021-12-22','12345','2021-12-22','male','Test','Test','Test','Test','Ali','Hassan','1985-03-31','Chakwal','Austria','Resident','Lahore','Lahore','Lahore ','Sindh','Awaran','','[\'Old Auto Parts and/ or Metal Scrap Dealers\']','[\'Credit cards\']','[\'Automated Teller Machines (ATMs)\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','23','69099','23','67689','High',75,'SDD','self'),('2021-12-22','12345678','2021-12-22','male','Test','Test','Test','Test','Ali','Hassan','1985-03-31','Chakwal','Austria','Resident','Lahore','Lahore','Lahore ','Sindh','Awaran','','[\'Old Auto Parts and/ or Metal Scrap Dealers\']','[\'Credit cards\']','[\'Automated Teller Machines (ATMs)\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','23','69099','23','67689','High',75,'SDD','self'),('','124','2021-12-15','male','','','','','Faiz','Fareed','2021-12-15','Alipur','Armenia','Resident','Lahore','Lahore','Lahore','Punjab','Abbottabad','','[\'Accountant, Auditor and Tax Advisor\']','[\'ATM cards\']','[\'Payment Terminals\']','[\'Pension\']','[\'Clearing\']','[\'Pension\']','45','69099','434','67689','Medium',75,'SDD','self'),('2021-12-20','6754098','2021-12-07','male','Test','1234','HBL','ABC','Saim Ali','Ali','2021-12-06','Bahawalnagar','Austria','Resident','Lahore','Lahore','Lahore','Punjab','Attock City','','[\'Land Lords\']','[\'Home equity loans\']','[\'Automated Teller Machines (ATMs)\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','23','69099','434','67689','Medium',75,'SDD','self'),('','6754098op','2021-12-07','male','ACCA','Er560Pk','sahiwal','06767','Hassan','Ali','2021-12-07','Lahore','Antigua & Barbuda','Resident','Lahore','Lahore','Sahiwal','Sindh','Bannu','57000','[\'High Net worth customers with no clearly identifiable source of income, etc\']','[\'Digital Account\']','[\'Mobile Wallet\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','50','780999','434','67689','High',75,'SDD','self'),('2021-12-22','6754y','2021-12-15','male','ACCA','','HBL','06767','Hassan','Ali','2021-12-15','Lahore','Antigua & Barbuda','Resident','Lahore','Lahore','Lahore ','Sindh','Sahiwal','57000','[\'Non Residents, Foreign Nationals\']','[\'Sweep accounts\']','[\'Payment Terminals\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','45','90876','23','67689','Medium',75,'SDD','self'),('2021-12-15','78hjb','2021-12-29','male','ACCA','Test','Test','Test','Saim','Ali','1991-12-15','Lahore','Antigua & Barbuda','Resident','Lahore','Lahore','Lahore ','Sindh','Awaran','','[\'Salaried individual, Pension Holders and like Customers\']','[\'Digital Account\']','[\'Payment Terminals\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','50','69099','434','908765','Medium',75,'SDD','self'),('2021-12-22','ABC34','2021-12-22','male','Test','Test','Test','Test','Ali','Hassan','1985-03-31','Chakwal','Austria','Resident','Lahore','Lahore','Lahore ','Sindh','Awaran','','[\'Old Auto Parts and/ or Metal Scrap Dealers\']','[\'Credit cards\']','[\'Automated Teller Machines (ATMs)\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','23','69099','23','67689','High',75,'SDD','self'),('','ER567489','2021-12-15','male','title','Er560Pk','sahiwal','06767','Hassan','ali','2021-12-01','Lahore','Antigua & Barbuda','Resident','Lahore','Lahore','Sahiwal','Sindh','Bara','','[\'Accountant, Auditor and Tax Advisor\']','[\'Digital Account\']','[\'Mobile Wallet\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','50','69099','23','908765','High',75,'SDD','self'),('','ER567489ER','2021-12-15','male','title','Er560Pk','sahiwal','06767','Hassan','ali','2021-12-01','Lahore','Antigua & Barbuda','Resident','Lahore','Lahore','Sahiwal','Sindh','Bara','','[\'Accountant, Auditor and Tax Advisor\']','[\'Digital Account\']','[\'Mobile Wallet\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','50','69099','23','908765','High',75,'SDD','self'),('2021-12-21','RTVF56754','2021-12-21','male','Test','Test','Test','Test','Azhar','Ali','1987-05-11','Bahawalnagar','Austria','Resident','Lahore','Lahore','Sahiwal','Punjab','Bara','','[\'Investment and Comodity Advisor\']','[\'Traveler cheques\']','[\'Payment Terminals\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','','','','','Medium',75,'SDD','self'),('2021-12-18','SA34','2021-12-22','male','Test','Test','Test','Test','Tayyab','Ali','2021-12-15','Sahiwal','Andorra','Resident','Sahiwal','Lahore','Lahore ','Sindh','Awaran','57000','[\'Non Residents, Foreign Nationals\']','[\'Sweep accounts\']','[\'Mobile Branches\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','45','69099','434','908765','High',75,'SDD','self'),('2021-12-08','ST674','2021-12-28','male','Test','Test','HBL','06767','Ahmed','Faraz','1996-12-15','Chillianwala',NULL,'Resident','Sahiwal','Sahiwal','Sahiwal','Punjab','Alpurai','','[\'High Net worth customers with no clearly identifiable source of income, etc\']','[\'Certificates of deposit/Term deposits\']','[\'Mobile Wallet\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','23','69099','23','67689','Medium',75,'SDD','self'),('2021-12-27','TT65','2021-12-14','male','ABC','ABC','ABC','ABC','Hassan','Ali','2021-12-15','Lahore','Antigua & Barbuda','Resident','Lahore','Lahore','Sindh','Sindh','Batkhela','78650','[\'Notaries\']','[\'Sweep accounts\']','[\'Mobile Wallet\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','50','69099','434','67689','Medium',75,'SDD','self');
/*!40000 ALTER TABLE `identification_individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `identification_organization`
--

LOCK TABLES `identification_organization` WRITE;
/*!40000 ALTER TABLE `identification_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `identification_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `identification_pep`
--

LOCK TABLES `identification_pep` WRITE;
/*!40000 ALTER TABLE `identification_pep` DISABLE KEYS */;
/*!40000 ALTER TABLE `identification_pep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `individual_account_purpose`
--

LOCK TABLES `individual_account_purpose` WRITE;
/*!40000 ALTER TABLE `individual_account_purpose` DISABLE KEYS */;
INSERT INTO `individual_account_purpose` VALUES (1,'Agriculture'),(2,'Self Employed/ Proprietorship'),(3,'Home Remittance'),(4,'Pension'),(5,'Personal Saving'),(6,'Property Rent'),(7,'Salary'),(8,'Stock/Investment'),(9,'Other');
/*!40000 ALTER TABLE `individual_account_purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kyc`
--

LOCK TABLES `kyc` WRITE;
/*!40000 ALTER TABLE `kyc` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nacta_proscribed_organizations`
--

LOCK TABLES `nacta_proscribed_organizations` WRITE;
/*!40000 ALTER TABLE `nacta_proscribed_organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `nacta_proscribed_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nacta_proscribed_persons`
--

LOCK TABLES `nacta_proscribed_persons` WRITE;
/*!40000 ALTER TABLE `nacta_proscribed_persons` DISABLE KEYS */;
/*!40000 ALTER TABLE `nacta_proscribed_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nacta_proscribed_persons_denotified`
--

LOCK TABLES `nacta_proscribed_persons_denotified` WRITE;
/*!40000 ALTER TABLE `nacta_proscribed_persons_denotified` DISABLE KEYS */;
/*!40000 ALTER TABLE `nacta_proscribed_persons_denotified` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac`
--

LOCK TABLES `ofac` WRITE;
/*!40000 ALTER TABLE `ofac` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_address`
--

LOCK TABLES `ofac_address` WRITE;
/*!40000 ALTER TABLE `ofac_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_alias`
--

LOCK TABLES `ofac_alias` WRITE;
/*!40000 ALTER TABLE `ofac_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_citizenship`
--

LOCK TABLES `ofac_citizenship` WRITE;
/*!40000 ALTER TABLE `ofac_citizenship` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_citizenship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_date_of_birth`
--

LOCK TABLES `ofac_date_of_birth` WRITE;
/*!40000 ALTER TABLE `ofac_date_of_birth` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_date_of_birth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_id`
--

LOCK TABLES `ofac_id` WRITE;
/*!40000 ALTER TABLE `ofac_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_place_of_birth`
--

LOCK TABLES `ofac_place_of_birth` WRITE;
/*!40000 ALTER TABLE `ofac_place_of_birth` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_place_of_birth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_sdn`
--

LOCK TABLES `ofac_sdn` WRITE;
/*!40000 ALTER TABLE `ofac_sdn` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_sdn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_sdn_address`
--

LOCK TABLES `ofac_sdn_address` WRITE;
/*!40000 ALTER TABLE `ofac_sdn_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_sdn_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_sdn_alias`
--

LOCK TABLES `ofac_sdn_alias` WRITE;
/*!40000 ALTER TABLE `ofac_sdn_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_sdn_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_sdn_citizenship`
--

LOCK TABLES `ofac_sdn_citizenship` WRITE;
/*!40000 ALTER TABLE `ofac_sdn_citizenship` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_sdn_citizenship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_sdn_date_of_birth`
--

LOCK TABLES `ofac_sdn_date_of_birth` WRITE;
/*!40000 ALTER TABLE `ofac_sdn_date_of_birth` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_sdn_date_of_birth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_sdn_id`
--

LOCK TABLES `ofac_sdn_id` WRITE;
/*!40000 ALTER TABLE `ofac_sdn_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_sdn_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_sdn_nationality`
--

LOCK TABLES `ofac_sdn_nationality` WRITE;
/*!40000 ALTER TABLE `ofac_sdn_nationality` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_sdn_nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_sdn_place_of_birth`
--

LOCK TABLES `ofac_sdn_place_of_birth` WRITE;
/*!40000 ALTER TABLE `ofac_sdn_place_of_birth` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_sdn_place_of_birth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac_sdn_vessel_info`
--

LOCK TABLES `ofac_sdn_vessel_info` WRITE;
/*!40000 ALTER TABLE `ofac_sdn_vessel_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac_sdn_vessel_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofsi`
--

LOCK TABLES `ofsi` WRITE;
/*!40000 ALTER TABLE `ofsi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'Digital Account','Low',5),(3,'Transactional accounts','Medium',10),(4,'Checking accounts','Medium',10),(5,'Current accounts','Medium',10),(6,'Savings accounts','Medium',10),(7,'Debit cards','High',15),(8,'ATM cards','High',18),(9,'Credit cards','High',20),(10,'Traveler cheques','Medium',12),(11,'Mortgages','Low',7),(12,'Home equity loans','Low',5),(13,'Personal loans','Medium',12),(14,'Certificates of deposit/Term deposits','Medium',11),(15,'Sweep accounts','Low',7),(16,'Money market accounts','Medium',10),(17,'Individual Retirement Accounts (IRAs)','High',20),(18,'Internet Banking','High',20),(19,'Mobile Banking','High',20);
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_entity`
--

LOCK TABLES `unsc_entity` WRITE;
/*!40000 ALTER TABLE `unsc_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_entity_address`
--

LOCK TABLES `unsc_entity_address` WRITE;
/*!40000 ALTER TABLE `unsc_entity_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_entity_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_entity_alias`
--

LOCK TABLES `unsc_entity_alias` WRITE;
/*!40000 ALTER TABLE `unsc_entity_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_entity_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual`
--

LOCK TABLES `unsc_individual` WRITE;
/*!40000 ALTER TABLE `unsc_individual` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual_address`
--

LOCK TABLES `unsc_individual_address` WRITE;
/*!40000 ALTER TABLE `unsc_individual_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual_alias`
--

LOCK TABLES `unsc_individual_alias` WRITE;
/*!40000 ALTER TABLE `unsc_individual_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual_date_of_birth`
--

LOCK TABLES `unsc_individual_date_of_birth` WRITE;
/*!40000 ALTER TABLE `unsc_individual_date_of_birth` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual_date_of_birth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual_document`
--

LOCK TABLES `unsc_individual_document` WRITE;
/*!40000 ALTER TABLE `unsc_individual_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual_place_of_birth`
--

LOCK TABLES `unsc_individual_place_of_birth` WRITE;
/*!40000 ALTER TABLE `unsc_individual_place_of_birth` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual_place_of_birth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'compliance'
--

--
-- Dumping routines for database 'compliance'
--
/*!50003 DROP PROCEDURE IF EXISTS `CONSOLIDATED_LIST_SEARCH_INTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CONSOLIDATED_LIST_SEARCH_INTO`()
BEGIN
TRUNCATE TABLE consolidate_list;
INSERT INTO compliance.consolidate_list
SELECT 0, B.*
FROM(
	SELECT A.DATAID, A.`Name`, A.Alias, A.ALIAS_QUALITY, A.ID_NUMBER, A.Father_Name, A.Gender, 
	CASE
	    WHEN STR_TO_DATE(A.DOB, '%Y-%m-%d') != '(NULL)' THEN STR_TO_DATE(A.DOB, '%Y-%m-%d')
	    WHEN STR_TO_DATE(A.DOB, '%d %b %Y') != '(NULL)' THEN STR_TO_DATE(A.DOB, '%d %b %Y')     
	    WHEN STR_TO_DATE(A.DOB, '%d/%m/%Y') != '(NULL)' THEN STR_TO_DATE(A.DOB, '%d/%m/%Y')
	    ELSE "1000-01-01"
	END AS DOB,
	A.POB, A.Address, A.Province, A.District, A.Nationality, A.Country, A.City, A.DISCREPANT_CHECK, A.List, A.Type, CURRENT_TIMESTAMP() AS DATE_INSERTED
	FROM (
		SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME, A.SECOND_NAME, A.THIRD_NAME, A.FOURTH_NAME) AS 'Name', IFNULL(C.ALIAS_NAME,' ') AS Alias, IFNULL(C.QUALITY ,'') AS ALIAS_QUALITY, IFNULL(F.NUMBER ,'') AS ID_NUMBER, ' ' AS Father_Name, IFNULL(A.Gender,'Unspecified') AS Gender,IFNULL(D.Date, ' ') AS DOB, IFNULL(CONCAT_WS(' ',E.CITY, E.COUNTRY, E.STATE_PROVINCE), ' ') AS POB, CONCAT_WS(' ',B.CITY, B.STATE_PROVINCE, B.COUNTRY) AS 'Address', IFNULL(B.STATE_PROVINCE, '')  AS PROVINCE, ' ' AS DISTRICT, IFNULL(A.NATIONALITY, '') AS Nationality, IFNULL(B.COUNTRY, '') AS Country, IFNULL(E.CITY, '') AS City, '' AS DISCREPANT_CHECK, 'UNSC' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM unsc_individual AS A
		LEFT JOIN unsc_individual_address AS B
		ON A.DATAID = B.DATAID
		LEFT JOIN unsc_individual_alias AS C
		ON A.DATAID = C.DATAID	
		LEFT JOIN unsc_individual_date_of_birth AS D
		ON A.DATAID = D.DATAID
		LEFT JOIN unsc_individual_place_of_birth AS E
		ON A.DATAID = E.DATAID
		LEFT JOIN unsc_individual_document AS F
		ON A.DATAID = F.DATAID
		WHERE A.DATE_INSERTED = (SELECT MAX(DATE_INSERTED)
					FROM unsc_individual)
				
		UNION

		SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME) AS 'Name', IFNULL(C.ALIAS_NAME,' ') AS Alias, IFNULL(C.QUALITY ,'') AS ALIAS_QUALITY, ' ' AS ID_NUMBER, ' ' AS Father_Name,'Unspecified' AS Gender,' ' AS DOB,' ' AS POB, CONCAT_WS(' ',B.CITY, B.STATE_PROVINCE, B.COUNTRY) AS 'Address', ' ' AS PROVINCE, ' ' AS DISTRICT, ' ' AS Nationality,' ' AS Country, ' ' AS City, '' AS DISCREPANT_CHECK, 'UNSC' AS 'List', 'ENTITY' AS 'Type'
		FROM unsc_entity AS A
		LEFT JOIN unsc_entity_address AS B
		ON A.DATAID = B.DATAID
		LEFT JOIN unsc_entity_alias AS C
		ON A.DATAID = C.DATAID
		WHERE A.DATE_INSERTED = (SELECT MAX(DATE_INSERTED)
					FROM unsc_entity)		
				
		UNION

		SELECT CNIC AS 'DATAID', `Name`, IFNULL(ALIAS,' ') AS Alias, '' AS ALIAS_QUALITY, CNIC AS ID_NUMBER, Father_Name AS Father_Name, 'Unspecified' AS Gender, ' ' AS DOB, ' ' AS POB, ' ' AS 'Address', IFNULL(PROVINCE,'') AS PROVINCE, IFNULL(DISTRICT,'') AS DISTRICT, ' ' AS Nationality,' ' AS Country, ' ' AS City, DISCREPANT_CHECK, 'NACTA_PROSCRIBED_PERSONS' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM nacta_proscribed_persons
		WHERE DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM nacta_proscribed_persons)

		UNION
		

		SELECT DISTINCT (A.DATAID), A.FIRST_NAME AS `Name`, IFNULL(CONCAT_WS(' ',C.FIRST_NAME ,C.LAST_NAME),' ') AS Alias, IFNULL(C.CATEGORY, '') AS ALIAS_QUALITY, IFNULL(G.ID_NUMBER,' ') AS ID_NUMBER, A.LAST_NAME AS Father_Name,'Unspecified' AS Gender, IFNULL(D.DATE_OF_BIRTH, ' ') AS DOB, IFNULL(E.PLACE_OF_BIRTH,' ') AS POB, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', IFNULL(B.STATE_OR_PROVINCE, '') AS PROVINCE, ' ' AS DISTRICT, IFNULL(F.COUNTRY,' ') AS Nationality, IFNULL(B.COUNTRY, '') AS Country, IFNULL(B.City, '') AS City, '' AS DISCREPANT_CHECK, 'OFAC' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM ofac AS A
		LEFT JOIN ofac_address AS B 
		ON A.DATAID = B.DATAID
		LEFT JOIN ofac_alias AS C
		ON A.DATAID = C.DATAID
		LEFT JOIN ofac_date_of_birth  AS D
		ON A.DATAID = D.DATAID
		LEFT JOIN ofac_place_of_birth  AS E
		ON A.DATAID = E.DATAID
		LEFT JOIN  ofac_citizenship AS F
		ON A.DATAID = F.DATAID
		LEFT JOIN  ofac_id AS G
		ON A.DATAID = G.DATAID
		WHERE SDN_TYPE = 'Individual'
		AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofac)
					
		UNION

		SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME, A.LAST_NAME) AS `Name`,IFNULL(CONCAT_WS(' ',C.FIRST_NAME ,C.LAST_NAME),' ') AS Alias, IFNULL(C.CATEGORY, '') AS ALIAS_QUALITY, IFNULL(G.ID_NUMBER,' ') AS ID_NUMBER, ' ' AS Father_Name, 'Unspecified' AS Gender, IFNULL(D.DATE_OF_BIRTH, ' ') AS DOB, IFNULL(E.PLACE_OF_BIRTH,' ') AS POB, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', IFNULL(B.STATE_OR_PROVINCE, '') AS PROVINCE, ' ' AS DISTRICT, IFNULL(F.COUNTRY,' ') AS Nationality, IFNULL(B.COUNTRY, '') AS Country, IFNULL(B.City, '') AS City, '' AS DISCREPANT_CHECK, 'OFAC' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM ofac AS A
		LEFT JOIN ofac_address AS B 
		ON A.DATAID = B.DATAID
		LEFT JOIN ofac_alias AS C
		ON A.DATAID = C.DATAID
		LEFT JOIN ofac_date_of_birth  AS D
		ON A.DATAID = D.DATAID
		LEFT JOIN ofac_place_of_birth  AS E
		ON A.DATAID = E.DATAID
		LEFT JOIN  ofac_citizenship AS F
		ON A.DATAID = F.DATAID
		LEFT JOIN  ofac_id AS G
		ON A.DATAID = G.DATAID
		WHERE SDN_TYPE = 'Entity'
		AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofac)
					
					
		UNION
		
		SELECT DISTINCT (A.DATAID), A.FIRST_NAME AS `NAME`, IFNULL(CONCAT_WS(' ',C.FIRST_NAME ,C.LAST_NAME),' ') AS Alias, IFNULL(C.CATEGORY, '') AS ALIAS_QUALITY, IFNULL(G.ID_NUMBER,' ') AS ID_NUMBER, A.LAST_NAME AS Father_Name,'Unspecified' AS Gender, IFNULL(D.DATE_OF_BIRTH, ' ') AS DOB, IFNULL(E.PLACE_OF_BIRTH,' ') AS POB, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', IFNULL(B.STATE_OR_PROVINCE, '') AS PROVINCE, ' ' AS DISTRICT,  IFNULL(F.COUNTRY,' ') AS Nationality, IFNULL(B.COUNTRY,' ') AS Country, IFNULL(B.CITY,' ') AS City, '' AS DISCREPANT_CHECK, 'OFAC_SDN' AS 'List', 'INDIVIDUAL' AS 'Type'	
		FROM ofac_sdn AS A
		LEFT JOIN ofac_sdn_address AS B 
		ON A.DATAID = B.DATAID
		LEFT JOIN ofac_sdn_alias AS C
		ON A.DATAID = C.DATAID
		LEFT JOIN ofac_sdn_date_of_birth AS D
		ON A.DATAID = D.DATAID
		LEFT JOIN ofac_sdn_place_of_birth AS E
		ON A.DATAID = E.DATAID
		LEFT JOIN ofac_sdn_nationality AS F
		ON A.DATAID = F.DATAID	
		LEFT JOIN ofac_sdn_id AS G
		ON A.DATAID = G.DATAID
		WHERE A.SDN_TYPE = 'Individual'
		AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofac_sdn)
					
		UNION

		SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME, A.LAST_NAME) AS `NAME`, IFNULL(CONCAT_WS(' ',C.FIRST_NAME ,C.LAST_NAME),' ') AS Alias, IFNULL(C.CATEGORY, '') AS ALIAS_QUALITY, IFNULL(G.ID_NUMBER,' ') AS ID_NUMBER, ' ' AS Father_Name,'Unspecified' AS Gender, IFNULL(D.DATE_OF_BIRTH, ' ') AS DOB, IFNULL(E.PLACE_OF_BIRTH, ' ') AS POB, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', IFNULL(B.STATE_OR_PROVINCE, '') AS PROVINCE, ' ' AS DISTRICT,  IFNULL(F.COUNTRY,' ') AS Nationality, IFNULL(B.COUNTRY,' ') AS Country, IFNULL(B.CITY,' ') AS City, '' AS DISCREPANT_CHECK, 'OFAC_SDN' AS 'List', 'INDIVIDUAL' AS 'Type'	
		FROM ofac_sdn AS A
		LEFT JOIN ofac_sdn_address AS B 
		ON A.DATAID = B.DATAID
		LEFT JOIN ofac_sdn_alias AS C
		ON A.DATAID = C.DATAID
		LEFT JOIN ofac_sdn_date_of_birth AS D
		ON A.DATAID = D.DATAID
		LEFT JOIN ofac_sdn_place_of_birth AS E
		ON A.DATAID = E.DATAID
		LEFT JOIN ofac_sdn_nationality AS F
		ON A.DATAID = F.DATAID	
		LEFT JOIN ofac_sdn_id AS G
		ON A.DATAID = G.DATAID
		WHERE A.SDN_TYPE = 'Entity'	
		AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofac_sdn) 
		
		UNION

		SELECT GROUPID AS DATAID, FullName AS `NAME`, IFNULL(CONCAT_WS(' ', name1, name2, name3, name4, name5, name6),' ') AS Alias, IFNULL(AliasType, '') AS ALIAS_QUALITY, IFNULL(NationalIdNumber,' ') AS ID_NUMBER, ' ' AS Father_Name,'Unspecified' AS Gender, IFNULL(DateofBirth, ' ') AS DOB, IFNULL(TownOfBirth, ' ') AS POB, CONCAT_WS(' ',address1, address2, address3, address4, address5, address6) AS 'Address', ' ' AS PROVINCE, ' ' AS DISTRICT,  IFNULL(Nationality,' ') AS Nationality, IFNULL(Country,' ') AS Country, IFNULL(TownOfBirth, '') AS City, '' AS DISCREPANT_CHECK, 'OFSI' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM ofsi
		WHERE GroupTypeDescription = 'INDIVIDUAL' 
		AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofsi)			
					
		UNION

		SELECT GROUPID AS DATAID, FullName AS `NAME`, IFNULL(CONCAT_WS(' ', name1, name2, name3, name4, name5, name6),' ') AS Alias, IFNULL(AliasType, '') AS ALIAS_QUALITY, IFNULL(NationalIdNumber,' ') AS ID_NUMBER, ' ' AS Father_Name,'Unspecified' AS Gender, IFNULL(DateofBirth, ' ') AS DOB, IFNULL(TownOfBirth, ' ') AS POB, CONCAT_WS(' ',address1, address2, address3, address4, address5, address6) AS 'Address', ' ' AS PROVINCE, ' ' AS DISTRICT,  IFNULL(Nationality,' ') AS Nationality, IFNULL(Country,' ') AS Country, IFNULL(TownOfBirth, '') AS City, '' AS DISCREPANT_CHECK, 'OFSI' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM ofsi
		WHERE GroupTypeDescription = 'Entity' 
		AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofsi)
					
		UNION

		SELECT Entity_LogicalId AS DATAID, NameAlias_WholeName AS `Name`, IFNULL(CONCAT_WS(' ', NameAlias_FirstName, NameAlias_MiddleName),' ') AS `Alias`, '' AS ALIAS_QUALITY, IFNULL(Identification_Number,' ') AS ID_NUMBER, NameAlias_LastName AS Father_Name,'Unspecified' AS Gender, IFNULL(BirthDate_BirthDate,' ') AS DOB , IFNULL(CONCAT_WS('-', BirthDate_Region, BirthDate_Place, BirthDate_City),' ') AS POB, CONCAT_WS(' ', Address_Street, Address_City, Address_CountryDescription) AS 'Address', ' ' AS PROVINCE, ' ' AS DISTRICT,  IFNULL(CONCAT_WS(' ',Citizenship_Region,Citizenship_CountryIso2Code),' ') AS Nationality, IFNULL(Address_CountryDescription, '') AS Country, IFNULL(BirthDate_City, '') AS City,'' AS DISCREPANT_CHECK, 'EUFS' AS 'List' , 'INDIVIDUAL' AS 'Type'
		FROM eufs
		WHERE NameAlias_FirstName IS NOT NULL 
		AND Entity_SubjectType_ClassificationCode = 'person'
		AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM eufs)
		UNION			
					
		SELECT Entity_LogicalId AS DATAID, NameAlias_WholeName AS `Name`, IFNULL(CONCAT_WS(' ', NameAlias_FirstName, NameAlias_MiddleName, NameAlias_LastName),' ') AS `Alias`, '' AS ALIAS_QUALITY, IFNULL(Identification_Number,' ') AS ID_NUMBER, ' ' AS Father_Name,'Unspecified' AS Gender,  IFNULL(BirthDate_BirthDate,' ') AS DOB , IFNULL(CONCAT_WS('-', BirthDate_Region, BirthDate_Place, BirthDate_City), ' ') AS POB, CONCAT_WS(' ', Address_Street, Address_City, Address_CountryDescription) AS 'Address', ' ' AS PROVINCE, ' ' AS DISTRICT,  IFNULL(CONCAT_WS(' ',Citizenship_Region,Citizenship_CountryIso2Code),' ') AS Nationality, IFNULL(Address_CountryDescription, '') AS Country, IFNULL(BirthDate_City, '') AS City, '' AS DISCREPANT_CHECK, 'EUFS' AS 'List' , 'INDIVIDUAL' AS 'Type'
		FROM eufs
		WHERE Entity_SubjectType_ClassificationCode = 'enterprise'
		AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM eufs)
	)AS A
)AS B;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CONSOLIDATED_SEARCH_LIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CONSOLIDATED_SEARCH_LIST`()
BEGIN
SELECT A.*
FROM (

	SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME, A.SECOND_NAME, A.THIRD_NAME, A.FOURTH_NAME, C.ALIAS_NAME) AS 'Name', CONCAT_WS(' ',B.CITY, B.STATE_PROVINCE, B.COUNTRY) AS 'Address', 'UNSC' AS 'List', 'INDIVIDUAL' AS 'Type'
	FROM UNSC_INDIVIDUAL AS A
	LEFT JOIN UNSC_INDIVIDUAL_ADDRESS AS B
	ON A.DATAID = B.DATAID
	LEFT JOIN UNSC_INDIVIDUAL_ALIAS AS C
	ON A.DATAID = C.DATAID
	WHERE A.DATE_INSERTED = (SELECT MAX(DATE_INSERTED)
				FROM UNSC_INDIVIDUAL)
			
	UNION

	SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME, C.ALIAS_NAME) AS 'Name', CONCAT_WS(' ',B.CITY, B.STATE_PROVINCE, B.COUNTRY) AS 'Address', 'UNSC' AS 'List', 'ENTITY' AS 'Type'
	FROM UNSC_ENTITY AS A
	LEFT JOIN UNSC_ENTITY_ADDRESS AS B
	ON A.DATAID = B.DATAID
	LEFT JOIN UNSC_ENTITY_ALIAS AS C
	ON A.DATAID = C.DATAID
	WHERE A.DATE_INSERTED = (SELECT MAX(DATE_INSERTED)
				FROM UNSC_ENTITY)		
			
	UNION

	SELECT CNIC AS 'DATAID', `Name`, CONCAT_WS(' ',PROVINCE, DISTRICT) AS 'Address' , 'NACTA_PROSCRIBED_PERSONS' AS 'List', 'INDIVIDUAL' AS 'Type'
	FROM NACTA_PROSCRIBED_PERSONS
	WHERE `Name` IS NOT NULL 
	AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
				FROM NACTA_PROSCRIBED_PERSONS)

	UNION

	SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME ,A.LAST_NAME, C.FIRST_NAME ,C.LAST_NAME) AS `Name`, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', 'OFAC' AS 'List', 'INDIVIDUAL' AS 'Type'
	FROM OFAC AS A
	LEFT JOIN OFAC_ADDRESS AS B 
	ON A.DATAID = B.DATAID
	LEFT JOIN OFAC_ALIAS AS C
	ON A.DATAID = C.DATAID
	WHERE SDN_TYPE = 'Individual'
	AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
				FROM OFAC)
				
	UNION

	SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME ,A.LAST_NAME, C.FIRST_NAME ,C.LAST_NAME) AS `Name`, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', 'OFAC' AS 'List', 'ENTITY' AS 'Type'
	FROM OFAC AS A
	LEFT JOIN OFAC_ADDRESS AS B 
	ON A.DATAID = B.DATAID
	LEFT JOIN OFAC_ALIAS AS C
	ON A.DATAID = C.DATAID	
	WHERE SDN_TYPE = 'Entity'
	AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
				FROM OFAC)
				
				
	UNION
	
	SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME ,A.LAST_NAME, C.FIRST_NAME ,C.LAST_NAME) AS `Name`, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', 'OFAC_SDN' AS 'List', 'INDIVIDUAL' AS 'Type'
	FROM OFAC_SDN AS A
	LEFT JOIN OFAC_SDN_ADDRESS AS B 
	ON A.DATAID = B.DATAID
	LEFT JOIN OFAC_SDN_ALIAS AS C
	ON A.DATAID = C.DATAID
	WHERE SDN_TYPE = 'Individual'
	AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
				FROM OFAC_SDN)
				
	UNION

	SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME ,A.LAST_NAME, C.FIRST_NAME ,C.LAST_NAME) AS `Name`, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', 'OFAC_SDN' AS 'List', 'ENTITY' AS 'Type'
	FROM OFAC_SDN AS A
	LEFT JOIN OFAC_SDN_ADDRESS AS B 
	ON A.DATAID = B.DATAID
	LEFT JOIN OFAC_SDN_ALIAS AS C
	ON A.DATAID = C.DATAID	
	WHERE SDN_TYPE = 'Entity'
	AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
				FROM OFAC_SDN) 
	UNION

	SELECT DISTINCT(GROUPID) AS DATAID, CONCAT_WS(' ',FullName, name1, name2, name3, name4, name5, name6) AS `NAME`, CONCAT_WS(' ',address1, address2, address3, address4, address5, address6) AS 'Address', 'OFSI' AS 'List', 'INDIVIDUAL' AS 'Type'
	FROM OFSI
	WHERE FullName IS NOT NULL 
	AND GroupTypeDescription = 'INDIVIDUAL' 
	AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
				FROM OFSI)			
				
	UNION

	SELECT DISTINCT(GROUPID) AS DATAID, CONCAT_WS(' ',FullName, name1, name2, name3, name4, name5, name6) AS `NAME`, CONCAT_WS(' ',address1, address2, address3, address4, address5, address6) AS 'Address', 'OFSI' AS 'List', 'ENTITY' AS 'Type'
	FROM OFSI
	WHERE FullName IS NOT NULL 
	AND GroupTypeDescription = 'Entity' 
	AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
				FROM OFSI)
				
	UNION

	SELECT DISTINCT(Entity_LogicalId) AS DATAID, CONCAT_WS(' ',NameAlias_WholeName, NameAlias_FirstName, NameAlias_MiddleName, NameAlias_LastName) AS `Name`, CONCAT_WS(' ', Address_Street, Address_City, Address_CountryDescription) AS 'Address', 'EUFS' AS 'List' , 'INDIVIDUAL' AS 'Type'
	FROM EUFS
	WHERE (NameAlias_WholeName AND NameAlias_FirstName AND NameAlias_MiddleName AND NameAlias_LastName) IS NOT NULL 
	AND Entity_SubjectType_ClassificationCode = 'person'
	AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
				FROM EUFS)
	UNION			
				
	SELECT DISTINCT(Entity_LogicalId) AS DATAID, CONCAT_WS(' ',NameAlias_WholeName, NameAlias_FirstName, NameAlias_MiddleName, NameAlias_LastName) AS `Name`, CONCAT_WS(' ', Address_Street, Address_City, Address_CountryDescription) AS 'Address', 'EUFS' AS 'List' , 'ENTITY' AS 'Type'
	FROM EUFS
	WHERE (NameAlias_WholeName AND NameAlias_FirstName AND NameAlias_MiddleName AND NameAlias_LastName) IS NOT NULL 
	AND Entity_SubjectType_ClassificationCode = 'enterprise'
	AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
				FROM EUFS)
	

)AS A;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CONSOLIDATE_LIST_SELECT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CONSOLIDATE_LIST_SELECT`()
BEGIN
  SELECT *
  FROM consolidate_list
  WHERE DATE_INSERTED = (SELECT MAX(DATE_INSERTED)
			FROM consolidate_list);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EUFS_COUNT_REC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EUFS_COUNT_REC`(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM eufs  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EUFS_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EUFS_INSERT`(
	IN Entity_LogicalId VARCHAR(20) ,
	IN Entity_EU_ReferenceNumber VARCHAR(20) ,
	IN Entity_UnitedNationId VARCHAR(20) ,
	IN Entity_DesignationDate VARCHAR(100) ,
	IN Entity_DesignationDetails TEXT,
	IN Entity_Remark TEXT,
	IN Entity_SubjectType VARCHAR(100) ,
	IN Entity_SubjectType_ClassificationCode VARCHAR(100) ,
	IN Entity_Regulation_Type VARCHAR(100) ,
	IN Entity_Regulation_OrganisationType VARCHAR(100) ,
	IN Entity_Regulation_PublicationDate VARCHAR(100) ,
	IN Entity_Regulation_EntryIntoForceDate VARCHAR(100) ,
	IN Entity_Regulation_NumberTitle VARCHAR(100) ,
	IN Entity_Regulation_Programme VARCHAR(100) ,
	IN Entity_Regulation_PublicationUrl TEXT,
	IN NameAlias_LastName VARCHAR(100),
	IN NameAlias_FirstName VARCHAR(100),
	IN NameAlias_MiddleName VARCHAR(100),
	IN NameAlias_WholeName VARCHAR(500),
	IN NameAlias_NameLanguage VARCHAR(100),
	IN NameAlias_Gender VARCHAR(100),
	IN NameAlias_Title VARCHAR(500),
	IN NameAlias_Function TEXT,
	IN NameAlias_LogicalId VARCHAR(100),
	IN NameAlias_RegulationLanguage VARCHAR(100) ,
	IN NameAlias_Remark TEXT,
	IN NameAlias_Regulation_Type VARCHAR(100) ,
	IN NameAlias_Regulation_OrganisationType VARCHAR(100),
	IN NameAlias_Regulation_PublicationDate VARCHAR(100),
	IN NameAlias_Regulation_EntryIntoForceDate VARCHAR(100) ,
	IN NameAlias_Regulation_NumberTitle VARCHAR(100),
	IN NameAlias_Regulation_Programme VARCHAR(100),
	IN NameAlias_Regulation_PublicationUrl TEXT,
	IN Address_City VARCHAR(1000),
	IN Address_Street TEXT,
	IN Address_PoBox VARCHAR(100),
	IN Address_ZipCode VARCHAR(100),
	IN Address_Region VARCHAR(100),
	IN Address_Place VARCHAR(100),
	IN Address_AsAtListingTime VARCHAR(100),
	IN Address_ContactInfo VARCHAR(500),
	IN Address_CountryIso2Code VARCHAR(100),
	IN Address_CountryDescription VARCHAR(100),
	IN Address_LogicalId VARCHAR(100),
	IN Address_RegulationLanguage VARCHAR(100) ,
	IN Address_Remark TEXT,
	IN Address_Regulation_Type VARCHAR(100) ,
	IN Address_Regulation_OrganisationType VARCHAR(100) ,
	IN Address_Regulation_PublicationDate VARCHAR(100) ,
	IN Address_Regulation_EntryIntoForceDate VARCHAR(100) ,
	IN Address_Regulation_NumberTitle VARCHAR(100) ,
	IN Address_Regulation_Programme VARCHAR(100) ,
	IN Address_Regulation_PublicationUrl VARCHAR(500) ,
	IN BirthDate_BirthDate VARCHAR(100) ,
	IN BirthDate_Day VARCHAR(100) ,
	IN BirthDate_Month VARCHAR(100) ,
	IN BirthDate_Year VARCHAR(100) ,
	IN BirthDate_YearRangeFrom VARCHAR(100) ,
	IN BirthDate_YearRangeTo VARCHAR(100) ,
	IN BirthDate_Circa VARCHAR(100) ,
	IN BirthDate_CalendarType VARCHAR(100) ,
	IN BirthDate_ZipCode VARCHAR(100) ,
	IN BirthDate_Region VARCHAR(100) ,
	IN BirthDate_Place VARCHAR(500) ,
	IN BirthDate_City VARCHAR(100) ,
	IN BirthDate_CountryIso2Code VARCHAR(100) ,
	IN BirthDate_CountryDescription VARCHAR(100) ,
	IN BirthDate_LogicalId VARCHAR(100) ,
	IN BirthDate_RegulationLanguage VARCHAR(100) ,
	IN BirthDate_Remark VARCHAR(500) ,
	IN BirthDate_Regulation_Type VARCHAR(100) ,
	IN BirthDate_Regulation_OrganisationType VARCHAR(100) ,
	IN BirthDate_Regulation_PublicationDate VARCHAR(100) ,
	IN BirthDate_Regulation_EntryIntoForceDate VARCHAR(100) ,
	IN BirthDate_Regulation_NumberTitle VARCHAR(100) ,
	IN BirthDate_Regulation_Programme VARCHAR(100) ,
	IN BirthDate_Regulation_PublicationUrl VARCHAR(500) ,
	IN Identification_Number TEXT,
	IN Identification_Diplomatic VARCHAR(100) ,
	IN Identification_KnownExpired VARCHAR(100) ,
	IN Identification_KnownFalse VARCHAR(100) ,
	IN Identification_ReportedLost VARCHAR(100) ,
	IN Identification_RevokedByIssuer VARCHAR(100) ,
	IN Identification_IssuedBy VARCHAR(500) ,
	IN Identification_IssuedDate VARCHAR(100),
	IN Identification_ValidFrom VARCHAR(100),
	IN Identification_ValidTo VARCHAR(100),
	IN Identification_LatinNumber VARCHAR(100),
	IN Identification_NameOnDocument VARCHAR(100) ,
	IN Identification_TypeCode VARCHAR(100),
	IN Identification_TypeDescription VARCHAR(100),
	IN Identification_Region VARCHAR(100),
	IN Identification_CountryIso2Code VARCHAR(100),
	IN Identification_CountryDescription VARCHAR(100),
	IN Identification_LogicalId VARCHAR(100) ,
	IN Identification_RegulationLanguage VARCHAR(100),
	IN Identification_Remark VARCHAR(500),
	IN Identification_Regulation_Type VARCHAR(100) ,
	IN Identification_Regulation_OrganisationType VARCHAR(100),
	IN Identification_Regulation_PublicationDate VARCHAR(100),
	IN Identification_Regulation_EntryIntoForceDate VARCHAR(100),
	IN Identification_Regulation_NumberTitle VARCHAR(100),
	IN Identification_Regulation_Programme VARCHAR(100),
	IN Identification_Regulation_PublicationUrl TEXT,
	IN Citizenship_Region VARCHAR(100),
	IN Citizenship_CountryIso2Code VARCHAR(100) ,
	IN Citizenship_CountryDescription VARCHAR(100),
	IN Citizenship_LogicalId VARCHAR(100),
	IN Citizenship_RegulationLanguage VARCHAR(100),
	IN Citizenship_Remark TEXT,
	IN Citizenship_Regulation_Type VARCHAR(100) ,
	IN Citizenship_Regulation_OrganisationType VARCHAR(100),
	IN Citizenship_Regulation_PublicationDate VARCHAR(100),
	IN Citizenship_Regulation_EntryIntoForceDate VARCHAR(100),
	IN Citizenship_Regulation_NumberTitle VARCHAR(100),
	IN Citizenship_Regulation_Programme VARCHAR(100),
	IN Citizenship_Regulation_PublicationUrl TEXT,
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO eufs (Entity_LogicalId,Entity_EU_ReferenceNumber,Entity_UnitedNationId,Entity_DesignationDate,Entity_DesignationDetails,Entity_Remark,Entity_SubjectType,Entity_SubjectType_ClassificationCode,Entity_Regulation_Type,Entity_Regulation_OrganisationType,Entity_Regulation_PublicationDate,Entity_Regulation_EntryIntoForceDate,Entity_Regulation_NumberTitle,Entity_Regulation_Programme,Entity_Regulation_PublicationUrl,NameAlias_LastName,NameAlias_FirstName,NameAlias_MiddleName,NameAlias_WholeName,NameAlias_NameLanguage,NameAlias_Gender,NameAlias_Title,NameAlias_Function,NameAlias_LogicalId,NameAlias_RegulationLanguage,NameAlias_Remark,NameAlias_Regulation_Type,NameAlias_Regulation_OrganisationType,	NameAlias_Regulation_PublicationDate,NameAlias_Regulation_EntryIntoForceDate,NameAlias_Regulation_NumberTitle,NameAlias_Regulation_Programme,	NameAlias_Regulation_PublicationUrl,	Address_City ,	Address_Street  ,	Address_PoBox,	Address_ZipCode,Address_Region,	Address_Place,Address_AsAtListingTime,Address_ContactInfo,Address_CountryIso2Code,Address_CountryDescription,Address_LogicalId,Address_RegulationLanguage,Address_Remark,Address_Regulation_Type,Address_Regulation_OrganisationType,	Address_Regulation_PublicationDate,	Address_Regulation_EntryIntoForceDate,	Address_Regulation_NumberTitle,	Address_Regulation_Programme,	Address_Regulation_PublicationUrl,	BirthDate_BirthDate,BirthDate_Day,BirthDate_Month,BirthDate_Year,BirthDate_YearRangeFrom,BirthDate_YearRangeTo,	BirthDate_Circa,BirthDate_CalendarType,	BirthDate_ZipCode,BirthDate_Region,BirthDate_Place,BirthDate_City,BirthDate_CountryIso2Code,BirthDate_CountryDescription,BirthDate_LogicalId,BirthDate_RegulationLanguage,BirthDate_Remark,BirthDate_Regulation_Type,BirthDate_Regulation_OrganisationType,BirthDate_Regulation_PublicationDate,BirthDate_Regulation_EntryIntoForceDate,BirthDate_Regulation_NumberTitle,BirthDate_Regulation_Programme,BirthDate_Regulation_PublicationUrl,Identification_Number,Identification_Diplomatic,Identification_KnownExpired,Identification_KnownFalse,Identification_ReportedLost,Identification_RevokedByIssuer,Identification_IssuedBy,Identification_IssuedDate,Identification_ValidFrom,Identification_ValidTo,Identification_LatinNumber,Identification_NameOnDocument,Identification_TypeCode,Identification_TypeDescription,	Identification_Region,	Identification_CountryIso2Code,	Identification_CountryDescription,Identification_LogicalId,Identification_RegulationLanguage,Identification_Remark,Identification_Regulation_Type,Identification_Regulation_OrganisationType,	Identification_Regulation_PublicationDate,	Identification_Regulation_EntryIntoForceDate,	Identification_Regulation_NumberTitle,	Identification_Regulation_Programme,	Identification_Regulation_PublicationUrl,Citizenship_Region,Citizenship_CountryIso2Code,Citizenship_CountryDescription,Citizenship_LogicalId,Citizenship_RegulationLanguage,Citizenship_Remark,Citizenship_Regulation_Type,Citizenship_Regulation_OrganisationType,Citizenship_Regulation_PublicationDate,Citizenship_Regulation_EntryIntoForceDate,Citizenship_Regulation_NumberTitle,Citizenship_Regulation_Programme,Citizenship_Regulation_PublicationUrl,DATE_INSERTED)
  VALUES (Entity_LogicalId,Entity_EU_ReferenceNumber,Entity_UnitedNationId,Entity_DesignationDate,Entity_DesignationDetails,Entity_Remark,Entity_SubjectType,Entity_SubjectType_ClassificationCode,Entity_Regulation_Type,Entity_Regulation_OrganisationType,Entity_Regulation_PublicationDate,Entity_Regulation_EntryIntoForceDate,Entity_Regulation_NumberTitle,Entity_Regulation_Programme,Entity_Regulation_PublicationUrl,NameAlias_LastName,NameAlias_FirstName,NameAlias_MiddleName,NameAlias_WholeName,NameAlias_NameLanguage,NameAlias_Gender,NameAlias_Title,NameAlias_Function,NameAlias_LogicalId,NameAlias_RegulationLanguage,NameAlias_Remark,NameAlias_Regulation_Type,NameAlias_Regulation_OrganisationType,	NameAlias_Regulation_PublicationDate,NameAlias_Regulation_EntryIntoForceDate,NameAlias_Regulation_NumberTitle,NameAlias_Regulation_Programme,	NameAlias_Regulation_PublicationUrl,	Address_City ,	Address_Street  ,	Address_PoBox,	Address_ZipCode,Address_Region,	Address_Place,Address_AsAtListingTime,Address_ContactInfo,Address_CountryIso2Code,Address_CountryDescription,Address_LogicalId,Address_RegulationLanguage,Address_Remark,Address_Regulation_Type,Address_Regulation_OrganisationType,	Address_Regulation_PublicationDate,	Address_Regulation_EntryIntoForceDate,	Address_Regulation_NumberTitle,	Address_Regulation_Programme,	Address_Regulation_PublicationUrl,	BirthDate_BirthDate,BirthDate_Day,BirthDate_Month,BirthDate_Year,BirthDate_YearRangeFrom,BirthDate_YearRangeTo,	BirthDate_Circa,BirthDate_CalendarType,	BirthDate_ZipCode,BirthDate_Region,BirthDate_Place,BirthDate_City,BirthDate_CountryIso2Code,BirthDate_CountryDescription,BirthDate_LogicalId,BirthDate_RegulationLanguage,BirthDate_Remark,BirthDate_Regulation_Type,BirthDate_Regulation_OrganisationType,BirthDate_Regulation_PublicationDate,BirthDate_Regulation_EntryIntoForceDate,BirthDate_Regulation_NumberTitle,BirthDate_Regulation_Programme,BirthDate_Regulation_PublicationUrl,Identification_Number,Identification_Diplomatic,Identification_KnownExpired,Identification_KnownFalse,Identification_ReportedLost,Identification_RevokedByIssuer,Identification_IssuedBy,Identification_IssuedDate,Identification_ValidFrom,Identification_ValidTo,Identification_LatinNumber,Identification_NameOnDocument,Identification_TypeCode,Identification_TypeDescription,	Identification_Region,	Identification_CountryIso2Code,	Identification_CountryDescription,Identification_LogicalId,Identification_RegulationLanguage,Identification_Remark,Identification_Regulation_Type,Identification_Regulation_OrganisationType,	Identification_Regulation_PublicationDate,	Identification_Regulation_EntryIntoForceDate,	Identification_Regulation_NumberTitle,	Identification_Regulation_Programme,	Identification_Regulation_PublicationUrl,Citizenship_Region,Citizenship_CountryIso2Code,Citizenship_CountryDescription,Citizenship_LogicalId,Citizenship_RegulationLanguage,Citizenship_Remark,Citizenship_Regulation_Type,Citizenship_Regulation_OrganisationType,Citizenship_Regulation_PublicationDate,Citizenship_Regulation_EntryIntoForceDate,Citizenship_Regulation_NumberTitle,Citizenship_Regulation_Programme,Citizenship_Regulation_PublicationUrl,DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NACTA_PROSCRIBED_ORGANIZATIONS_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NACTA_PROSCRIBED_ORGANIZATIONS_INSERT`(
	IN Name_of_Organization VARCHAR(500),
	IN Date_of_Notification VARCHAR(100),
	IN Affiliated_Organizations VARCHAR(500),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO nacta_proscribed_organizations (Name_of_Organization, Date_of_Notification, Affiliated_Organizations, DATE_INSERTED) 
  VALUES (Name_of_Organization, Date_of_Notification, Affiliated_Organizations, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NACTA_PROSCRIBED_ORGANIZATIONS_REC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NACTA_PROSCRIBED_ORGANIZATIONS_REC`(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM nacta_proscribed_organizations  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NACTA_PROSCRIBED_PERSONS_COMPARISION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NACTA_PROSCRIBED_PERSONS_COMPARISION`()
BEGIN
  DECLARE DATE_INSERTED_CURRENT VARCHAR(100);
  DECLARE DATE_INSERTED_PREVIOUS  VARCHAR(100);
  

	SET @DATE_INSERTED_CURRENT = (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i')   AS DATE_INSERTED 
				FROM nacta_proscribed_persons
				GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
				ORDER BY DATE_INSERTED DESC
				LIMIT 1);

	SET @DATE_INSERTED_PREVIOUS = (SELECT DATE_INSERTED 
				FROM (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') AS DATE_INSERTED 
					FROM nacta_proscribed_persons 
					GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
					ORDER BY DATE_INSERTED DESC
					LIMIT 2) 
				AS nacta_proscribed_persons 
				ORDER BY DATE_INSERTED ASC 
				LIMIT 1);  
			
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp_nacta_proscribed_persons;
  
	CREATE TEMPORARY TABLE compliance.tmp_nacta_proscribed_persons ( 
		`NAME` VARCHAR(300),
		ALIAS VARCHAR(300),
		FATHER_NAME VARCHAR(300),	
		CNIC VARCHAR(300),
		PROVINCE VARCHAR(300),
		DISTRICT VARCHAR(300),
		DATE_INSERTED VARCHAR(100) 
		);
  
	INSERT INTO compliance.tmp_nacta_proscribed_persons
	SELECT 
	 T1.`NAME`, T1.ALIAS, T1.FATHER_NAME, T1.CNIC, T1.PROVINCE, T1.DISTRICT, T1.DATE_INSERTED
	FROM nacta_proscribed_persons AS T1
		LEFT JOIN nacta_proscribed_persons AS T2 
		ON T1.CNIC = T2.CNIC  
		AND T2.DATE_INSERTED = @DATE_INSERTED_PREVIOUS 
	WHERE T1.DATE_INSERTED = @DATE_INSERTED_CURRENT AND T1.DISCREPANT_CHECK = '0|1|0' OR T1.DISCREPANT_CHECK = '1|1|0' OR T1.DISCREPANT_CHECK = '0|0|0' OR T1.DISCREPANT_CHECK = '1|0|0'
		AND IF(T2.CNIC IS NULL, TRUE, ((T1.`NAME` <> T2.`NAME`) 
		OR (T1.ALIAS <> T2.ALIAS)
		OR (T1.FATHER_NAME <> T2.FATHER_NAME) 
		OR (T1.PROVINCE <> T2.PROVINCE)
		OR (T1.DISTRICT <> T2.DISTRICT)));
		
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp2_NACTA_PROSCRIBED_PERSONS;

	CREATE TEMPORARY TABLE compliance.tmp2_NACTA_PROSCRIBED_PERSONS ( 
		CNIC VARCHAR(100) NOT NULL,
		xmldoc TEXT
		);
		
	INSERT INTO compliance.tmp2_nacta_proscribed_persons
	SELECT
	   l.CNIC,
	   CONCAT('<CNIC DATA_ID="', l.CNIC, '">',
	    (
		SELECT
		    CONCAT('<DATA>',
		    GROUP_CONCAT('<NP="', IFNULL(Name1.PREVIOUS_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NC="', IFNULL(Name1.CURRENT_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ALIASP="', IFNULL(ALIAS1.PREVIOUS_ALIAS, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ALIASC="', IFNULL(ALIAS1.CURRENT_ALIAS, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FATHERNAMEP="', IFNULL(FATHERNAME.PREVIOUS_FATHER_NAME, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FATHERNAMEC="', IFNULL(FATHERNAME.CURRENT_FATHER_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PROVINCEP="', IFNULL(PROVINCE1.PREVIOUS_PROVINCE, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PROVINCEC="', IFNULL(PROVINCE1.CURRENT_PROVINCE, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DISTRICTP="', IFNULL(DISTRICT1.PREVIOUS_DISTRICT, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DISTRICTC="', IFNULL(DISTRICT1.CURRENT_DISTRICT, 'NULL'), '"/>'  SEPARATOR ''),
		    '</DATA>')
	    FROM(
		(SELECT pre.CNIC,
		    pre.`NAME` AS PREVIOUS_NAME,
		    cur.`NAME` AS CURRENT_NAME
		FROM nacta_proscribed_persons pre
		    LEFT JOIN nacta_proscribed_persons cur
		    ON cur.CNIC = pre.CNIC
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.`NAME` <=> cur.`NAME`) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Name1

		LEFT JOIN (
		SELECT pre.CNIC,
		    pre.ALIAS AS PREVIOUS_ALIAS,
		    cur.ALIAS AS CURRENT_ALIAS
		FROM nacta_proscribed_persons pre
		    LEFT JOIN nacta_proscribed_persons cur
		    ON cur.CNIC = pre.CNIC
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.ALIAS <=> cur.ALIAS) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS ALIAS1
		ON Name1.CNIC = ALIAS1.CNIC 
		    

		LEFT JOIN (
			SELECT pre.CNIC,
			    pre.FATHER_NAME AS PREVIOUS_FATHER_NAME,
			    cur.FATHER_NAME AS CURRENT_FATHER_NAME
			FROM nacta_proscribed_persons pre
			    LEFT JOIN nacta_proscribed_persons cur
			    ON cur.CNIC = pre.CNIC
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FATHER_NAME <=> cur.FATHER_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS FATHERNAME
		    ON Name1.CNIC = FATHERNAME.CNIC
		    
		
		  
		LEFT JOIN (
			SELECT pre.CNIC,
			    pre.PROVINCE AS PREVIOUS_PROVINCE,
			    cur.PROVINCE AS CURRENT_PROVINCE
			FROM nacta_proscribed_persons pre
			    LEFT JOIN nacta_proscribed_persons cur
			    ON cur.CNIC = pre.CNIC
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PROVINCE <=> cur.PROVINCE) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS PROVINCE1
		    ON Name1.CNIC = PROVINCE1.CNIC   
		
		LEFT JOIN (
			SELECT pre.CNIC,
			    pre.DISTRICT AS PREVIOUS_DISTRICT,
			    cur.DISTRICT AS CURRENT_DISTRICT
			FROM nacta_proscribed_persons pre
			    LEFT JOIN nacta_proscribed_persons cur
			    ON cur.CNIC = pre.CNIC
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DISTRICT <=> cur.DISTRICT) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS DISTRICT1
		    ON Name1.CNIC = DISTRICT1.CNIC
  
			  
	    )     
	    GROUP BY Name1.CNIC
		HAVING Name1.CNIC = l.CNIC
		),
	    '</CNIC>') AS xmldoc
	FROM tmp_nacta_proscribed_persons l;
	
	BEGIN
	UPDATE compliance.nacta_proscribed_persons AS A
	INNER JOIN compliance.tmp2_nacta_proscribed_persons AS B
		ON A.CNIC = B.CNIC
	SET A.xml_col = B.xmldoc	
	WHERE B.xmldoc IS NOT NULL
	AND A.DATE_INSERTED = DATE_FORMAT(STR_TO_DATE(@DATE_INSERTED_CURRENT, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i');
	END;	
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NACTA_PROSCRIBED_PERSONS_COUNT_REC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NACTA_PROSCRIBED_PERSONS_COUNT_REC`(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM nacta_proscribed_persons  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NACTA_PROSCRIBED_PERSONS_DENOTIFIED_COUNT_REC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NACTA_PROSCRIBED_PERSONS_DENOTIFIED_COUNT_REC`(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM nacta_proscribed_persons_denotified  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NACTA_PROSCRIBED_PERSONS_DENOTIFIED_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NACTA_PROSCRIBED_PERSONS_DENOTIFIED_INSERT`(
	IN `NAME` VARCHAR(100),
	IN FATHER_NAME VARCHAR(100),	
	IN CNIC VARCHAR(100),
	IN PROVINCE VARCHAR(100),
	IN DISTRICT VARCHAR(100),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO nacta_proscribed_persons_denotified (`NAME`, FATHER_NAME, CNIC, PROVINCE, DISTRICT, DATE_INSERTED) 
  VALUES (`NAME`, FATHER_NAME, CNIC, PROVINCE, DISTRICT, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NACTA_PROSCRIBED_PERSONS_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NACTA_PROSCRIBED_PERSONS_INSERT`(
	IN `NAME` VARCHAR(300),
	IN ALIAS VARCHAR(300),
	IN FATHER_NAME VARCHAR(300),	
	IN CNIC VARCHAR(100),
	IN PROVINCE VARCHAR(100),
	IN DISTRICT VARCHAR(100),
	IN DISCREPANT_CHECK VARCHAR(20),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO nacta_proscribed_persons (`NAME`, ALIAS, FATHER_NAME, CNIC, PROVINCE, DISTRICT, DISCREPANT_CHECK, DATE_INSERTED) 
  VALUES (`NAME`, ALIAS, FATHER_NAME, CNIC, PROVINCE, DISTRICT, discrepant_check, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_ADDRESS_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_ADDRESS_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN STATE_OR_PROVINCE VARCHAR(500),	
	IN POSTAL_CODE VARCHAR(100),
	IN COUNTRY VARCHAR(500), 		
	IN CITY VARCHAR(500), 		
	IN ADDRESS_1 VARCHAR(500), 		
	IN ADDRESS_2 VARCHAR(500), 		
	IN ADDRESS_3 VARCHAR(500), 	
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_address (DATAID, UID, STATE_OR_PROVINCE, POSTAL_CODE, COUNTRY, CITY, ADDRESS_1, ADDRESS_2, ADDRESS_3, DATE_INSERTED) 
  VALUES (DATAID, UID, STATE_OR_PROVINCE, POSTAL_CODE, COUNTRY, CITY, ADDRESS_1, ADDRESS_2, ADDRESS_3, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_ALIAS_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_ALIAS_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN `TYPE` VARCHAR(100),
	IN FIRST_NAME VARCHAR(300),
	IN LAST_NAME VARCHAR(300),
	IN CATEGORY VARCHAR(100),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_alias (DATAID, UID, `TYPE`, FIRST_NAME, LAST_NAME, CATEGORY, DATE_INSERTED) 
  VALUES (DATAID, UID, `TYPE`, FIRST_NAME, LAST_NAME, CATEGORY, DATE_INSERTED) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_CITIZENSHIP_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_CITIZENSHIP_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN COUNTRY VARCHAR(300),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_citizenship (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_COMPARISION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_COMPARISION`()
BEGIN
  DECLARE DATE_INSERTED_CURRENT VARCHAR(100);
  DECLARE DATE_INSERTED_PREVIOUS  VARCHAR(100);
  

	SET @DATE_INSERTED_CURRENT = (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i')   AS DATE_INSERTED 
				FROM ofac
				GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
				ORDER BY DATE_INSERTED DESC
				LIMIT 1);

	SET @DATE_INSERTED_PREVIOUS = (SELECT DATE_INSERTED 
				FROM (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') AS DATE_INSERTED 
					FROM ofac 
					GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
					ORDER BY DATE_INSERTED DESC
					LIMIT 2) 
				AS ofac 
				ORDER BY DATE_INSERTED ASC 
				LIMIT 1);  
			
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp_ofac;
  
	CREATE TEMPORARY TABLE compliance.tmp_ofac ( 
		DATAID VARCHAR(100) NOT NULL,
		FIRST_NAME VARCHAR(500),
		LAST_NAME VARCHAR(500),
		SDN_TYPE VARCHAR(100),
		REMARKS TEXT,
		PROGRAM_LIST VARCHAR(100),
		DATE_INSERTED VARCHAR(100) 
		);
  
	INSERT INTO compliance.tmp_ofac
	SELECT 
	 T1.DATAID, T1.FIRST_NAME, T1.LAST_NAME, T1.SDN_TYPE, T1.REMARKS, T1.PROGRAM_LIST, T1.DATE_INSERTED
	FROM ofac AS T1
		LEFT JOIN ofac AS T2 
		ON T1.DATAID = T2.DATAID  
		AND T2.DATE_INSERTED = @DATE_INSERTED_PREVIOUS 
	WHERE T1.DATE_INSERTED = @DATE_INSERTED_CURRENT
		AND IF(T2.DATAID IS NULL, TRUE, ((T1.FIRST_NAME <> T2.FIRST_NAME) 
		OR (T1.LAST_NAME <> T2.LAST_NAME)
		OR (T1.SDN_TYPE <> T2.SDN_TYPE) 
		OR (T1.REMARKS <> T2.REMARKS)
		OR (T1.PROGRAM_LIST <> T2.PROGRAM_LIST)));
		
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp2_ofac;

	CREATE TEMPORARY TABLE compliance.tmp2_ofac ( 
		DATAID VARCHAR(100) NOT NULL,
		xmldoc TEXT
		);
		
	INSERT INTO compliance.tmp2_ofac
	SELECT
	   l.DATAID,
	   CONCAT('<DATAID DATA_ID="', l.DATAID, '">',
	    (
		SELECT
		    CONCAT('<DATA>',
		    GROUP_CONCAT('<FNP="', IFNULL(FirstName.PREVIOUS_FIRST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FNC="', IFNULL(FirstName.CURRENT_FIRST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LNP="', IFNULL(LastName.PREVIOUS_LAST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LNC="', IFNULL(LastName.CURRENT_LAST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SDN_TYPEP="', IFNULL(SDN_TYPE1.PREVIOUS_SDN_TYPE, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SDN_TYPEC="', IFNULL(SDN_TYPE1.CURRENT_SDN_TYPE, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<REMARKSP="', IFNULL(REMARKS1.PREVIOUS_REMARKS, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<REMARKSC="', IFNULL(REMARKS1.CURRENT_REMARKS, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PROGRAM_LISTP="', IFNULL(PROGRAM_LIST1.PREVIOUS_PROGRAM_LIST, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PROGRAM_LISTC="', IFNULL(PROGRAM_LIST1.CURRENT_PROGRAM_LIST, 'NULL'), '"/>'  SEPARATOR ''),
		    '</DATA>')
	    FROM(
		(SELECT pre.DATAID,
		    pre.FIRST_NAME AS PREVIOUS_FIRST_NAME,
		    cur.FIRST_NAME AS CURRENT_FIRST_NAME
		FROM ofac pre
		    LEFT JOIN ofac cur
		    ON cur.DATAID = pre.DATAID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.FIRST_NAME <=> cur.FIRST_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS FirstName

		LEFT JOIN (
		SELECT pre.DATAID,
		    pre.LAST_NAME AS PREVIOUS_LAST_NAME,
		    cur.LAST_NAME AS CURRENT_LAST_NAME
		FROM ofac pre
		    LEFT JOIN ofac cur
		    ON cur.DATAID = pre.DATAID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.LAST_NAME <=> cur.LAST_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS LastName
		ON FirstName.DATAID = LastName.DATAID 
		    

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.SDN_TYPE AS PREVIOUS_SDN_TYPE,
			    cur.SDN_TYPE AS CURRENT_SDN_TYPE
			FROM ofac pre
			    LEFT JOIN ofac cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.SDN_TYPE <=> cur.SDN_TYPE) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS SDN_TYPE1
		    ON FirstName.DATAID = SDN_TYPE1.DATAID
		    
		
		  
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.REMARKS AS PREVIOUS_REMARKS,
			    cur.REMARKS AS CURRENT_REMARKS
			FROM ofac pre
			    LEFT JOIN ofac cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.REMARKS <=> cur.REMARKS) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS REMARKS1
		    ON FirstName.DATAID = REMARKS1.DATAID   
		
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.PROGRAM_LIST AS PREVIOUS_PROGRAM_LIST,
			    cur.PROGRAM_LIST AS CURRENT_PROGRAM_LIST
			FROM ofac pre
			    LEFT JOIN ofac cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PROGRAM_LIST <=> cur.PROGRAM_LIST) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS PROGRAM_LIST1
		    ON FirstName.DATAID = PROGRAM_LIST1.DATAID
  
			  
	    )     
	    GROUP BY FirstName.DATAID
		HAVING FirstName.DATAID = l.DATAID
		),
	    '</DATAID>') AS xmldoc
	FROM tmp_ofac l;
	
	BEGIN
	UPDATE compliance.ofac AS A
	INNER JOIN compliance.tmp2_ofac AS B
		ON A.DATAID = B.DATAID
	SET A.xml_col = B.xmldoc	
	WHERE B.xmldoc IS NOT NULL
	AND A.DATE_INSERTED = DATE_FORMAT(STR_TO_DATE(@DATE_INSERTED_CURRENT, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i');
	END;	
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_COUNT_REC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_COUNT_REC`(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM ofac  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_DATE_OF_BIRTH_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_DATE_OF_BIRTH_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN DATE_OF_BIRTH VARCHAR(100),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_date_of_birth (DATAID, UID, DATE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, DATE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_ID_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_ID_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN ID_TYPE VARCHAR(500),	
	IN ID_NUMBER VARCHAR(500), 		
	IN ID_COUNTRY VARCHAR(500), 
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_id (DATAID, UID, ID_TYPE, ID_NUMBER, ID_COUNTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, ID_TYPE, ID_NUMBER, ID_COUNTRY, DATE_INSERTED) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_INSERT`(
	IN DATAID VARCHAR(100),
	IN FIRST_NAME VARCHAR(500),
	IN LAST_NAME VARCHAR(500),
	IN SDN_TYPE VARCHAR(100),
	IN REMARKS TEXT,
	IN PROGRAM_LIST VARCHAR(100),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO ofac (DATAID, FIRST_NAME, LAST_NAME, SDN_TYPE, REMARKS, PROGRAM_LIST, DATE_INSERTED) 
  VALUES (DATAID, FIRST_NAME, LAST_NAME, SDN_TYPE, REMARKS, PROGRAM_LIST, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_PLACE_OF_BIRTH_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_PLACE_OF_BIRTH_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN PLACE_OF_BIRTH VARCHAR(100),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_place_of_birth (DATAID, UID, PLACE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, PLACE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_SDN_ADDRESS_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_SDN_ADDRESS_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN STATE_OR_PROVINCE VARCHAR(500),	
	IN POSTAL_CODE VARCHAR(100),
	IN COUNTRY VARCHAR(500), 		
	IN CITY VARCHAR(500), 		
	IN ADDRESS_1 VARCHAR(500), 		
	IN ADDRESS_2 VARCHAR(500), 		
	IN ADDRESS_3 VARCHAR(500), 	
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_address (DATAID, UID, STATE_OR_PROVINCE, POSTAL_CODE, COUNTRY, CITY, ADDRESS_1, ADDRESS_2, ADDRESS_3, DATE_INSERTED) 
  VALUES (DATAID, UID, STATE_OR_PROVINCE, POSTAL_CODE, COUNTRY, CITY, ADDRESS_1, ADDRESS_2, ADDRESS_3, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_SDN_ALIAS_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_SDN_ALIAS_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN `TYPE` VARCHAR(100),
	IN FIRST_NAME VARCHAR(300),
	IN LAST_NAME VARCHAR(300),
	IN CATEGORY VARCHAR(100),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_alias (DATAID, UID, `TYPE`, FIRST_NAME, LAST_NAME, CATEGORY, DATE_INSERTED) 
  VALUES (DATAID, UID, `TYPE`, FIRST_NAME, LAST_NAME, CATEGORY, DATE_INSERTED) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_SDN_CITIZENSHIP_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_SDN_CITIZENSHIP_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN COUNTRY VARCHAR(300),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_citizenship (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_SDN_COMPARISION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_SDN_COMPARISION`()
BEGIN
  DECLARE DATE_INSERTED_CURRENT VARCHAR(100);
  DECLARE DATE_INSERTED_PREVIOUS  VARCHAR(100);
  

	SET @DATE_INSERTED_CURRENT = (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i')   AS DATE_INSERTED 
				FROM ofac_sdn
				GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
				ORDER BY DATE_INSERTED DESC
				LIMIT 1);

	SET @DATE_INSERTED_PREVIOUS = (SELECT DATE_INSERTED 
				FROM (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') AS DATE_INSERTED 
					FROM ofac_sdn 
					GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
					ORDER BY DATE_INSERTED DESC
					LIMIT 2) 
				AS ofac_sdn 
				ORDER BY DATE_INSERTED ASC 
				LIMIT 1);  
			
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp_ofac_sdn;
  
	CREATE TEMPORARY TABLE compliance.tmp_ofac_sdn ( 
		DATAID VARCHAR(100) NOT NULL,
		FIRST_NAME VARCHAR(500),
		LAST_NAME VARCHAR(500),
		SDN_TYPE VARCHAR(100),
		REMARKS TEXT,
		PROGRAM_LIST VARCHAR(100),
		DATE_INSERTED VARCHAR(100) 
		);
  
	INSERT INTO compliance.tmp_ofac_sdn
	SELECT 
	 T1.DATAID, T1.FIRST_NAME, T1.LAST_NAME, T1.SDN_TYPE, T1.REMARKS, T1.PROGRAM_LIST, T1.DATE_INSERTED
	FROM ofac_sdn AS T1
		LEFT JOIN ofac_sdn AS T2 
		ON T1.DATAID = T2.DATAID  
		AND T2.DATE_INSERTED = @DATE_INSERTED_PREVIOUS 
	WHERE T1.DATE_INSERTED = @DATE_INSERTED_CURRENT
		AND IF(T2.DATAID IS NULL, TRUE, ((T1.FIRST_NAME <> T2.FIRST_NAME) 
		OR (T1.LAST_NAME <> T2.LAST_NAME)
		OR (T1.SDN_TYPE <> T2.SDN_TYPE) 
		OR (T1.REMARKS <> T2.REMARKS)
		OR (T1.PROGRAM_LIST <> T2.PROGRAM_LIST)));
		
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp2_ofac_sdn;

	CREATE TEMPORARY TABLE compliance.tmp2_ofac_sdn ( 
		DATAID VARCHAR(100) NOT NULL,
		xmldoc TEXT
		);
		
	INSERT INTO compliance.tmp2_ofac_sdn
	SELECT
	   l.DATAID,
	   CONCAT('<DATAID DATA_ID="', l.DATAID, '">',
	    (
		SELECT
		    CONCAT('<DATA>',
		    GROUP_CONCAT('<FNP="', IFNULL(FirstName.PREVIOUS_FIRST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FNC="', IFNULL(FirstName.CURRENT_FIRST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LNP="', IFNULL(LastName.PREVIOUS_LAST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LNC="', IFNULL(LastName.CURRENT_LAST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SDN_TYPEP="', IFNULL(SDN_TYPE1.PREVIOUS_SDN_TYPE, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SDN_TYPEC="', IFNULL(SDN_TYPE1.CURRENT_SDN_TYPE, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<REMARKSP="', IFNULL(REMARKS1.PREVIOUS_REMARKS, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<REMARKSC="', IFNULL(REMARKS1.CURRENT_REMARKS, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PROGRAM_LISTP="', IFNULL(PROGRAM_LIST1.PREVIOUS_PROGRAM_LIST, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PROGRAM_LISTC="', IFNULL(PROGRAM_LIST1.CURRENT_PROGRAM_LIST, 'NULL'), '"/>'  SEPARATOR ''),
		    '</DATA>')
	    FROM(
		(SELECT pre.DATAID,
		    pre.FIRST_NAME AS PREVIOUS_FIRST_NAME,
		    cur.FIRST_NAME AS CURRENT_FIRST_NAME
		FROM ofac_sdn pre
		    LEFT JOIN ofac_sdn cur
		    ON cur.DATAID = pre.DATAID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.FIRST_NAME <=> cur.FIRST_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS FirstName

		LEFT JOIN (
		SELECT pre.DATAID,
		    pre.LAST_NAME AS PREVIOUS_LAST_NAME,
		    cur.LAST_NAME AS CURRENT_LAST_NAME
		FROM ofac_sdn pre
		    LEFT JOIN ofac_sdn cur
		    ON cur.DATAID = pre.DATAID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.LAST_NAME <=> cur.LAST_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS LastName
		ON FirstName.DATAID = LastName.DATAID 
		    

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.SDN_TYPE AS PREVIOUS_SDN_TYPE,
			    cur.SDN_TYPE AS CURRENT_SDN_TYPE
			FROM ofac_sdn pre
			    LEFT JOIN ofac_sdn cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.SDN_TYPE <=> cur.SDN_TYPE) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS SDN_TYPE1
		    ON FirstName.DATAID = SDN_TYPE1.DATAID
		    
		
		  
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.REMARKS AS PREVIOUS_REMARKS,
			    cur.REMARKS AS CURRENT_REMARKS
			FROM ofac_sdn pre
			    LEFT JOIN ofac_sdn cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.REMARKS <=> cur.REMARKS) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS REMARKS1
		    ON FirstName.DATAID = REMARKS1.DATAID   
		
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.PROGRAM_LIST AS PREVIOUS_PROGRAM_LIST,
			    cur.PROGRAM_LIST AS CURRENT_PROGRAM_LIST
			FROM ofac_sdn pre
			    LEFT JOIN ofac_sdn cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PROGRAM_LIST <=> cur.PROGRAM_LIST) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS PROGRAM_LIST1
		    ON FirstName.DATAID = PROGRAM_LIST1.DATAID
  
			  
	    )     
	    GROUP BY FirstName.DATAID
		HAVING FirstName.DATAID = l.DATAID
		),
	    '</DATAID>') AS xmldoc
	FROM tmp_ofac l;
	
	BEGIN
	UPDATE compliance.ofac_sdn AS A
	INNER JOIN compliance.tmp2_ofac_sdn AS B
		ON A.DATAID = B.DATAID
	SET A.xml_col = B.xmldoc	
	WHERE B.xmldoc IS NOT NULL
	AND A.DATE_INSERTED = DATE_FORMAT(STR_TO_DATE(@DATE_INSERTED_CURRENT, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i');
	END;	
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_SDN_COUNT_REC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_SDN_COUNT_REC`(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM ofac_sdn  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_SDN_DATE_OF_BIRTH_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_SDN_DATE_OF_BIRTH_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN DATE_OF_BIRTH VARCHAR(100),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_date_of_birth (DATAID, UID, DATE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, DATE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_SDN_ID_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_SDN_ID_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN ID_TYPE VARCHAR(500),	
	IN ID_NUMBER VARCHAR(500), 		
	IN ID_COUNTRY VARCHAR(500), 
	IN ISSUE_DATE VARCHAR(100),
	IN EXPIRATION_DATE VARCHAR(100),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_id (DATAID, UID, ID_TYPE, ID_NUMBER, ID_COUNTRY, ISSUE_DATE, EXPIRATION_DATE, DATE_INSERTED) 
  VALUES (DATAID, UID, ID_TYPE, ID_NUMBER, ID_COUNTRY, ISSUE_DATE, EXPIRATION_DATE, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_SDN_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_SDN_INSERT`(
	IN DATAID VARCHAR(100),
	IN FIRST_NAME VARCHAR(500),
	IN LAST_NAME VARCHAR(500),
	IN TITLE VARCHAR(500),
	IN SDN_TYPE VARCHAR(100),
	IN REMARKS TEXT,
	IN PROGRAM_LIST VARCHAR(100),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO ofac_sdn (DATAID, FIRST_NAME, LAST_NAME, TITLE, SDN_TYPE, REMARKS, PROGRAM_LIST, DATE_INSERTED) 
  VALUES (DATAID, FIRST_NAME, LAST_NAME, TITLE, SDN_TYPE, REMARKS, PROGRAM_LIST, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_SDN_NATIONALITY_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_SDN_NATIONALITY_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN COUNTRY VARCHAR(300),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_nationality (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_SDN_PLACE_OF_BIRTH_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_SDN_PLACE_OF_BIRTH_INSERT`(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN PLACE_OF_BIRTH VARCHAR(100),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_place_of_birth (DATAID, UID, PLACE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, PLACE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFAC_SDN_VESSEL_INFO_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFAC_SDN_VESSEL_INFO_INSERT`(
	IN DATAID VARCHAR(100),
	IN CALL_SIGN VARCHAR(100),	
	IN VESSEL_TYPE VARCHAR(200),	
	IN VESSEL_FLAG VARCHAR(200), 		
	IN VESSEL_OWNER VARCHAR(200), 	
	IN TONNAGE VARCHAR(100),
	IN GROSS_REGISTERED_TONNAGE VARCHAR(100),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_vessel_info (DATAID, CALL_SIGN, VESSEL_TYPE, VESSEL_FLAG, VESSEL_OWNER, TONNAGE, GROSS_REGISTERED_TONNAGE, DATE_INSERTED) 
  VALUES (DATAID, CALL_SIGN, VESSEL_TYPE, VESSEL_FLAG, VESSEL_OWNER, TONNAGE, GROSS_REGISTERED_TONNAGE, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFSI_COMPARISION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFSI_COMPARISION`()
BEGIN
  DECLARE DATE_INSERTED_CURRENT VARCHAR(100);
  DECLARE DATE_INSERTED_PREVIOUS  VARCHAR(100);
  

	SET @DATE_INSERTED_CURRENT = (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i')   AS DATE_INSERTED 
				FROM ofsi
				GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
				ORDER BY DATE_INSERTED DESC
				LIMIT 1);

	SET @DATE_INSERTED_PREVIOUS = (SELECT DATE_INSERTED 
				FROM (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') AS DATE_INSERTED 
					FROM ofsi 
					GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
					ORDER BY DATE_INSERTED DESC
					LIMIT 2) 
				AS ofsi 
				ORDER BY DATE_INSERTED ASC 
				LIMIT 1);  
			
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp_ofsi;
  
	CREATE TEMPORARY TABLE compliance.tmp_ofsi ( 
		GroupID VARCHAR(100) NOT NULL,
		OFSI_ID VARCHAR(100) NOT NULL,
		AliasType VARCHAR(500),
		AliasTypeName VARCHAR(500),
		FullName VARCHAR(500),
		FullAddress VARCHAR(500),	
		name1 VARCHAR(300),
		name2 VARCHAR(300),
		name3 VARCHAR(300),
		name4 VARCHAR(300),
		name5 VARCHAR(300),
		Name6 VARCHAR(300),
		address1 VARCHAR(300),
		address2 VARCHAR(300),
		address3 VARCHAR(300),
		address4 VARCHAR(300),
		address5 VARCHAR(300),
		address6 VARCHAR(300),
		Gender VARCHAR(500),
		BusinessRegNumber VARCHAR(500),
		Country VARCHAR(500),
		CountryOfBirth VARCHAR(500),
		CurrentOwners VARCHAR(500),
		DateListed VARCHAR(500),
		DateListedDay VARCHAR(500),
		DateListedMonth VARCHAR(500),
		DateListedYear VARCHAR(500),
		DateOfBirth VARCHAR(500),
		DateOfBirthId VARCHAR(500),
		DayOfBirth VARCHAR(500),
		EmailAddress VARCHAR(500),
		FCOId VARCHAR(500),
		FlagOfVessel VARCHAR(500),	
		FurtherIdentifiyingInformation TEXT,	
		GroupStatus TEXT,
		GroupTypeDescription TEXT,
		GrpStatus TEXT,
		HIN TEXT,
		IMONumber TEXT,
		LastUpdated TEXT,
		LastUpdatedDay TEXT,
		LastUpdatedMonth TEXT,
		LastUpdatedYear TEXT,
		LengthOfVessel TEXT,
		ListingType TEXT,
		MonthOfBirth TEXT,
		NameTitle TEXT,
		NationalIdNumber TEXT,
		Nationality VARCHAR(500),
		OrgType VARCHAR(500),
		OtherInformation TEXT,
		ParentCompany TEXT,
		PassportDetails TEXT,
		PhoneNumber TEXT,
		`Position` TEXT,
		PostCode TEXT,
		PreviousFlags TEXT,
		PreviousOwners TEXT,
		RegimeName TEXT,
		Subsidiaries TEXT,
		TonnageOfVessel TEXT,
		TownOfBirth TEXT,
		TypeOfVessel TEXT,
		UKStatementOfReasons TEXT,
		Website TEXT,
		YearBuilt TEXT,
		YearOfBirth TEXT,
		DATE_INSERTED VARCHAR(100) 
		);
  
	INSERT INTO compliance.tmp_ofsi
	SELECT 
	 T1.GroupID, T1.OFSI_ID, T1.AliasType, T1.AliasTypeName, T1.FullName, T1.FullAddress, T1.name1, T1.name2, T1.name3, T1.name4, T1.name5, T1.Name6, T1.address1, T1.address2, T1.address3, T1.address4,
	 T1.address5, T1.address6, T1.Gender, T1.BusinessRegNumber, T1.Country,	T1.CountryOfBirth, T1.CurrentOwners, T1.DateListed, T1.DateListedDay, T1.DateListedMonth, T1.DateListedYear, T1.DateOfBirth,
	 T1.DateOfBirthId, T1.DayOfBirth, T1.EmailAddress, T1.FCOId, T1.FlagOfVessel, T1.FurtherIdentifiyingInformation, T1.GroupStatus, T1.GroupTypeDescription, T1.GrpStatus, T1.HIN, T1.IMONumber,
	 T1.LastUpdated, T1.LastUpdatedDay, T1.LastUpdatedMonth, T1.LastUpdatedYear, T1.LengthOfVessel, T1.ListingType, T1.MonthOfBirth, T1.NameTitle, T1.NationalIdNumber, T1.Nationality, T1.OrgType, 
	 T1.OtherInformation, T1.ParentCompany,	T1.PassportDetails, T1.PhoneNumber, T1.`Position`, T1.PostCode, T1.PreviousFlags, T1.PreviousOwners, T1.RegimeName, T1.Subsidiaries, T1.TonnageOfVessel,
	 T1.TownOfBirth, T1.TypeOfVessel, T1.UKStatementOfReasons, T1.Website, T1.YearBuilt, T1.YearOfBirth, T1.DATE_INSERTED
	FROM ofsi AS T1
		LEFT JOIN ofsi AS T2 
		ON T1.OFSI_ID = T2.OFSI_ID  
		AND T2.DATE_INSERTED = @DATE_INSERTED_PREVIOUS 
	WHERE T1.DATE_INSERTED = @DATE_INSERTED_CURRENT
		AND IF(T2.OFSI_ID IS NULL, TRUE, ((T1.GroupID <> T2.GroupID) 
		OR (T1.AliasType <> T2.AliasType)
		OR (T1.AliasTypeName <> T2.AliasTypeName) 
		OR (T1.FullName <> T2.FullName)
		OR (T1.FullAddress <> T2.FullAddress)
		OR (T1.name1 <> T2.name1)
		OR (T1.name2 <> T2.name2)
		OR (T1.name3 <> T2.name3)
		OR (T1.name4 <> T2.name4)
		OR (T1.name5 <> T2.name5)
		OR (T1.Name6 <> T2.Name6)
		OR (T1.address1 <> T2.address1)
		OR (T1.address2 <> T2.address2)
		OR (T1.address3 <> T2.address3)
		OR (T1.address4 <> T2.address4)
		OR (T1.address5 <> T2.address5)
		OR (T1.address6 <> T2.address6)
		OR (T1.Gender <> T2.Gender)
		OR (T1.BusinessRegNumber <> T2.BusinessRegNumber)
		OR (T1.Country <> T2.Country)
		OR (T1.CountryOfBirth <> T2.CountryOfBirth)
		OR (T1.CurrentOwners <> T2.CurrentOwners)
		OR (T1.DateListed <> T2.DateListed)
		OR (T1.DateListedMonth <> T2.DateListedMonth)
		OR (T1.DateListedYear <> T2.DateListedYear)
		OR (T1.DateOfBirth <> T2.DateOfBirth)
		OR (T1.DateOfBirthId <> T2.DateOfBirthId)
		OR (T1.DayOfBirth <> T2.DayOfBirth)
		OR (T1.EmailAddress <> T2.EmailAddress)
		OR (T1.FCOId <> T2.FCOId)
		OR (T1.FlagOfVessel <> T2.FlagOfVessel)
		OR (T1.FurtherIdentifiyingInformation <> T2.FurtherIdentifiyingInformation)
		OR (T1.GroupStatus <> T2.GroupStatus)
		OR (T1.GroupTypeDescription <> T2.GroupTypeDescription)
		OR (T1.GrpStatus <> T2.GrpStatus)
		OR (T1.HIN <> T2.HIN)
		OR (T1.IMONumber <> T2.IMONumber)
		OR (T1.LastUpdated <> T2.LastUpdated)
		OR (T1.LastUpdatedDay <> T2.LastUpdatedDay)
		OR (T1.LastUpdatedMonth <> T2.LastUpdatedMonth)
		OR (T1.LastUpdatedYear <> T2.LastUpdatedYear)
		OR (T1.LengthOfVessel <> T2.LengthOfVessel)
		OR (T1.ListingType <> T2.ListingType)
		OR (T1.MonthOfBirth <> T2.MonthOfBirth)
		OR (T1.NameTitle <> T2.NameTitle)
		OR (T1.NationalIdNumber <> T2.NationalIdNumber)
		OR (T1.Nationality <> T2.Nationality)
		OR (T1.OrgType <> T2.OrgType)
		OR (T1.OtherInformation <> T2.OtherInformation)
		OR (T1.ParentCompany <> T2.ParentCompany)
		OR (T1.PassportDetails <> T2.PassportDetails)
		OR (T1.PhoneNumber <> T2.PhoneNumber)
		OR (T1.`Position` <> T2.`Position`)
		OR (T1.PostCode <> T2.PostCode)
		OR (T1.PreviousFlags <> T2.PreviousFlags)
		OR (T1.PreviousOwners <> T2.PreviousOwners)
		OR (T1.RegimeName <> T2.RegimeName)
		OR (T1.Subsidiaries <> T2.Subsidiaries)
		OR (T1.TonnageOfVessel <> T2.TonnageOfVessel)
		OR (T1.TownOfBirth <> T2.TownOfBirth)
		OR (T1.TypeOfVessel <> T2.TypeOfVessel)
		OR (T1.UKStatementOfReasons <> T2.UKStatementOfReasons)
		OR (T1.Website <> T2.Website)
		OR (T1.YearBuilt <> T2.YearBuilt)
		OR (T1.YearOfBirth <> T2.YearOfBirth)));
		
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp2_ofsi;

	CREATE TEMPORARY TABLE compliance.tmp2_ofsi ( 
		OFSI_ID VARCHAR(100) NOT NULL,
		xmldoc TEXT
		);
		
	INSERT INTO compliance.tmp2_ofsi
	SELECT
	   l.OFSI_ID,
	   CONCAT('<OFSIID DATA_ID="', l.OFSI_ID, '">',
	    (
		SELECT
		    CONCAT('<DATA>',
		    GROUP_CONCAT('<GIP="', IFNULL(Group_ID.PREVIOUS_GroupID, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GIC="', IFNULL(Group_ID.CURRENT_GroupID, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ATP="', IFNULL(Alias_Type.PREVIOUS_Alias_Type, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ATC="', IFNULL(Alias_Type.CURRENT_Alias_Type, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ATN_TYPEP="', IFNULL(Alias_Type_Name.PREVIOUS_Alias_Type_Name, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ATN_TYPEC="', IFNULL(Alias_Type_Name.CURRENT_Alias_Type_Name, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FNP="', IFNULL(Full_Name.PREVIOUS_Full_Name, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FNC="', IFNULL(Full_Name.CURRENT_Full_Name, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FAP="', IFNULL(Full_Address.PREVIOUS_Full_Address, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FAC="', IFNULL(Full_Address.CURRENT_Full_Address, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N1P="', IFNULL(name_1.PREVIOUS_name1, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N1C="', IFNULL(name_1.CURRENT_name1, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N2P="', IFNULL(name_2.PREVIOUS_name2, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N2C="', IFNULL(name_2.CURRENT_name2, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N3P="', IFNULL(name_3.PREVIOUS_name3, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N3C="', IFNULL(name_3.CURRENT_name3, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N4P="', IFNULL(name_4.PREVIOUS_name_4, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N4C="', IFNULL(name_4.CURRENT_name_4, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N5P="', IFNULL(name_5.PREVIOUS_name5, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N5C="', IFNULL(name_5.CURRENT_name5, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N6P="', IFNULL(Name_6.PREVIOUS_Name6, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N6C="', IFNULL(Name_6.CURRENT_Name6, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A1P="', IFNULL(address_1.PREVIOUS_address1, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A1C="', IFNULL(address_1.CURRENT_address1, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A2P="', IFNULL(address_2.PREVIOUS_address2, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A2C="', IFNULL(address_2.CURRENT_address2, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A3P="', IFNULL(address_3.PREVIOUS_address3, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A3C="', IFNULL(address_3.CURRENT_address3, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A4P="', IFNULL(address_4.PREVIOUS_address4, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A4C="', IFNULL(address_4.CURRENT_address4, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A5P="', IFNULL(address_5.PREVIOUS_address5, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A5C="', IFNULL(address_5.CURRENT_address5, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A6P="', IFNULL(address_6.PREVIOUS_address6, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A6C="', IFNULL(address_6.CURRENT_address6, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GenderP="', IFNULL(Gender1.PREVIOUS_Gender, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GenderC="', IFNULL(Gender1.CURRENT_Gender, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<BusinessRegNumberP="', IFNULL(Business_Reg_Number.PREVIOUS_BusinessRegNumber, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<BusinessRegNumberC="', IFNULL(Business_Reg_Number.CURRENT_BusinessRegNumber, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CountryP="', IFNULL(Country1.PREVIOUS_Country, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CountryC="', IFNULL(Country1.CURRENT_Country, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CountryOfBirthP="', IFNULL(Country_Of_Birth.PREVIOUS_CountryOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CountryOfBirthC="', IFNULL(Country_Of_Birth.CURRENT_CountryOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CurrentOwnersP="', IFNULL(Current_Owners.PREVIOUS_CurrentOwners, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CurrentOwnersC="', IFNULL(Current_Owners.CURRENT_CurrentOwners, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedP="', IFNULL(Date_Listed.PREVIOUS_DateListed, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedC="', IFNULL(Date_Listed.CURRENT_DateListed, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedMonthP="', IFNULL(Date_Listed_Month.PREVIOUS_DateListedMonth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedMonthC="', IFNULL(Date_Listed_Month.CURRENT_DateListedMonth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedYearP="', IFNULL(Date_Listed_Year.PREVIOUS_DateListedYear, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedYearC="', IFNULL(Date_Listed_Year.CURRENT_DateListedYear, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateOfBirthP="', IFNULL(Date_Of_Birth.PREVIOUS_DateOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateOfBirthC="', IFNULL(Date_Of_Birth.CURRENT_DateOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateOfBirthIdP="', IFNULL(Date_Of_Birth_Id.PREVIOUS_DateOfBirthId, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateOfBirthIdC="', IFNULL(Date_Of_Birth_Id.CURRENT_DateOfBirthId, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DayOfBirthP="', IFNULL(Day_Of_Birth.PREVIOUS_DayOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DayOfBirthC="', IFNULL(Day_Of_Birth.CURRENT_DayOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<EmailAddressP="', IFNULL(Email_Address.PREVIOUS_EmailAddress, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<EmailAddressC="', IFNULL(Email_Address.CURRENT_EmailAddress, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FCOIdP="', IFNULL(FCO_Id.PREVIOUS_FCOId, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FCOIdC="', IFNULL(FCO_Id.CURRENT_FCOId, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FlagOfVesselP="', IFNULL(Flag_Of_Vessel.PREVIOUS_FlagOfVessel, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FlagOfVesselC="', IFNULL(Flag_Of_Vessel.CURRENT_FlagOfVessel, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FurtherIdentifiyingInformationP="', IFNULL(Further_Identifiying_Information.PREVIOUS_FurtherIdentifiyingInformation, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FurtherIdentifiyingInformationC="', IFNULL(Further_Identifiying_Information.CURRENT_FurtherIdentifiyingInformation, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GroupStatusP="', IFNULL(Group_Status.PREVIOUS_GroupStatus, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GroupStatusC="', IFNULL(Group_Status.CURRENT_GroupStatus, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GroupTypeDescriptionP="', IFNULL(Group_Type_Description.PREVIOUS_GroupTypeDescription, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GroupTypeDescriptionC="', IFNULL(Group_Type_Description.CURRENT_GroupTypeDescription, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GrpStatusP="', IFNULL(Grp_Status.PREVIOUS_GrpStatus, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GrpStatusC="', IFNULL(Grp_Status.CURRENT_GrpStatus, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<HINP="', IFNULL(HIN1.PREVIOUS_HIN, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<HINC="', IFNULL(HIN1.CURRENT_HIN, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<IMONumberP="', IFNULL(IMO_Number.PREVIOUS_IMONumber, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<IMONumberC="', IFNULL(IMO_Number.CURRENT_IMONumber, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedP="', IFNULL(Last_Updated.PREVIOUS_LastUpdated, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedC="', IFNULL(Last_Updated.CURRENT_LastUpdated, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedDayP="', IFNULL(Last_Updated_Day.PREVIOUS_LastUpdatedDay, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedDayC="', IFNULL(Last_Updated_Day.CURRENT_LastUpdatedDay, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('LastUpdatedMonthP="', IFNULL(Last_Updated_Month.PREVIOUS_LastUpdatedMonth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedMonthC="', IFNULL(Last_Updated_Month.CURRENT_LastUpdatedMonth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedYearP="', IFNULL(Last_Updated_Year.PREVIOUS_LastUpdatedYear, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedYearC="', IFNULL(Last_Updated_Year.CURRENT_LastUpdatedYear, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LengthOfVesselP="', IFNULL(Length_Of_Vessel.PREVIOUS_LengthOfVessel, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LengthOfVesselC="', IFNULL(Length_Of_Vessel.CURRENT_LengthOfVessel, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ListingTypeP="', IFNULL(Listing_Type.PREVIOUS_ListingType, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ListingTypeC="', IFNULL(Listing_Type.CURRENT_ListingType, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<MonthOfBirthP="', IFNULL(Month_Of_Birth.PREVIOUS_MonthOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<MonthOfBirthC="', IFNULL(Month_Of_Birth.CURRENT_MonthOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NameTitleP="', IFNULL(Name_Title.PREVIOUS_NameTitle, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NameTitleC="', IFNULL(Name_Title.CURRENT_NameTitle, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NationalIdNumberP="', IFNULL(National_IdNumber.PREVIOUS_NationalIdNumber, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NationalIdNumberC="', IFNULL(National_IdNumber.CURRENT_NationalIdNumber, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NationalityP="', IFNULL(Nationality.PREVIOUS_Nationality1, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NationalityC="', IFNULL(Nationality.CURRENT_Nationality1, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<OrgTypeP="', IFNULL(Org_Type.PREVIOUS_OrgType, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<OrgTypeC="', IFNULL(Org_Type.CURRENT_OrgType, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<OtherInformationP="', IFNULL(Other_Information.PREVIOUS_OtherInformation, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<OtherInformationC="', IFNULL(Other_Information.CURRENT_OtherInformation, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ParentCompanyP="', IFNULL(Parent_Company.PREVIOUS_ParentCompany, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ParentCompanyC="', IFNULL(Parent_Company.CURRENT_ParentCompany, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PassportDetailsP="', IFNULL(Passport_Details.PREVIOUS_PassportDetails, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PassportDetailsC="', IFNULL(Passport_Details.CURRENT_PassportDetails, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PhoneNumberP="', IFNULL(Phone_Number.PREVIOUS_PhoneNumber, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PhoneNumberC="', IFNULL(Phone_Number.CURRENT_PhoneNumber, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PositionP="', IFNULL(Position1.PREVIOUS_Position, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PositionC="', IFNULL(Position1.CURRENT_Position, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PostCodeP="', IFNULL(Post_Code.PREVIOUS_PostCode, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PostCodeC="', IFNULL(Post_Code.CURRENT_PostCode, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PreviousFlagsP="', IFNULL(Previous_Flags.PREVIOUS_PreviousFlags, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PreviousFlagsC="', IFNULL(Previous_Flags.CURRENT_PreviousFlags, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PreviousOwnersP="', IFNULL(Previous_Owners.PREVIOUS_PreviousOwners, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PreviousOwnersC="', IFNULL(Previous_Owners.CURRENT_PreviousOwners, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<RegimeNameP="', IFNULL(Regime_Name.PREVIOUS_RegimeName, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<RegimeNameC="', IFNULL(Regime_Name.CURRENT_RegimeName, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SubsidiariesP="', IFNULL(Subsidiaries1.PREVIOUS_Subsidiaries, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SubsidiariesC="', IFNULL(Subsidiaries1.CURRENT_Subsidiaries, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TonnageOfVesselP="', IFNULL(Tonnage_Of_Vessel.PREVIOUS_TonnageOfVessel, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TonnageOfVesselC="', IFNULL(Tonnage_Of_Vessel.CURRENT_TonnageOfVessel, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TownOfBirthP="', IFNULL(Town_Of_Birth.PREVIOUS_TownOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TownOfBirthC="', IFNULL(Town_Of_Birth.CURRENT_TownOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TypeOfVesselP="', IFNULL(Type_Of_Vessel.PREVIOUS_TypeOfVessel, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TypeOfVesselC="', IFNULL(Type_Of_Vessel.CURRENT_TypeOfVessel, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<UKStatementOfReasonsP="', IFNULL(UK_Statement_Of_Reasons.PREVIOUS_UKStatementOfReasons, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<UKStatementOfReasonsC="', IFNULL(UK_Statement_Of_Reasons.CURRENT_UKStatementOfReasons, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<WebsiteP="', IFNULL(Website1.PREVIOUS_Website, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<WebsiteC="', IFNULL(Website1.CURRENT_Website, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<YearBuiltP="', IFNULL(Year_Built.PREVIOUS_YearBuilt, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<YearBuiltC="', IFNULL(Year_Built.CURRENT_YearBuilt, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<YearOfBirthP="', IFNULL(Year_Of_Birth.PREVIOUS_YearOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<YearOfBirthC="', IFNULL(Year_Of_Birth.CURRENT_YearOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    '</DATA>')
	    FROM(
		(SELECT pre.OFSI_ID,
		    pre.GroupID AS PREVIOUS_GroupID,
		    cur.GroupID AS CURRENT_GroupID
		FROM ofsi pre
		    LEFT JOIN ofsi cur
		    ON cur.OFSI_ID = pre.OFSI_ID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.GroupID <=> cur.GroupID) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Group_ID

		LEFT JOIN (
		SELECT pre.OFSI_ID,
		    pre.AliasType AS PREVIOUS_Alias_Type,
		    cur.AliasType AS CURRENT_Alias_Type
		FROM ofsi pre
		    LEFT JOIN ofsi cur
		    ON cur.OFSI_ID = pre.OFSI_ID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.AliasType <=> cur.AliasType) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Alias_Type
		ON Group_ID.OFSI_ID = Alias_Type.OFSI_ID 
		    

		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.AliasTypeName AS PREVIOUS_Alias_Type_Name,
			    cur.AliasTypeName AS CURRENT_Alias_Type_Name
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.AliasTypeName <=> cur.AliasTypeName) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Alias_Type_Name
		    ON Group_ID.OFSI_ID = Alias_Type_Name.OFSI_ID
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.FullName AS PREVIOUS_Full_Name,
			    cur.FullName AS CURRENT_Full_Name
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FullName <=> cur.FullName) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Full_Name
		    ON Group_ID.OFSI_ID = Full_Name.OFSI_ID
		    
		    
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.FullAddress AS PREVIOUS_Full_Address,
			    cur.FullAddress AS CURRENT_Full_Address
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FullAddress <=> cur.FullAddress) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Full_Address
		    ON Group_ID.OFSI_ID = Full_Address.OFSI_ID
		    
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.name1 AS PREVIOUS_name1,
			    cur.name1 AS CURRENT_name1
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.name1 <=> cur.name1) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS name_1
		    ON Group_ID.OFSI_ID = name_1.OFSI_ID
		    
		    
		 LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.name2 AS PREVIOUS_name2,
			    cur.name2 AS CURRENT_name2
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.name2 <=> cur.name2) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS name_2
		    ON Group_ID.OFSI_ID = name_2.OFSI_ID
		  
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.name3 AS PREVIOUS_name3,
			    cur.name3 AS CURRENT_name3
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.name3 <=> cur.name3) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS name_3
		    ON Group_ID.OFSI_ID = name_3.OFSI_ID
		    
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.name4 AS PREVIOUS_name4,
			    cur.name4 AS CURRENT_name4
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.name4 <=> cur.name4) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS name_4
		    ON Group_ID.OFSI_ID = name_4.OFSI_ID               
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.name5 AS PREVIOUS_name5,
			    cur.name5 AS CURRENT_name5
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.name5 <=> cur.name5) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS name_5
		    ON Group_ID.OFSI_ID = name_5.OFSI_ID   
		
		
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Name6 AS PREVIOUS_Name6,
			    cur.Name6 AS CURRENT_Name6
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Name6 <=> cur.Name6) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Name_6
		    ON Group_ID.OFSI_ID = Name_6.OFSI_ID
		    
		
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address1 AS PREVIOUS_address1,
			    cur.address1 AS CURRENT_address1
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address1 <=> cur.address1) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_1
		    ON Group_ID.OFSI_ID = address_1.OFSI_ID
		    
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address2 AS PREVIOUS_address2,
			    cur.address2 AS CURRENT_address2
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address2 <=> cur.address2) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_2
		    ON Group_ID.OFSI_ID = address_2.OFSI_ID
		    
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address3 AS PREVIOUS_address3,
			    cur.address3 AS CURRENT_address3
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address3 <=> cur.address3) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_3
		    ON Group_ID.OFSI_ID = address_3.OFSI_ID
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address4 AS PREVIOUS_address4,
			    cur.address4 AS CURRENT_address4
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address4 <=> cur.address4) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_4
		    ON Group_ID.OFSI_ID = address_4.OFSI_ID
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address5 AS PREVIOUS_address5,
			    cur.address5 AS CURRENT_address5
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address5 <=> cur.address5) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_5
		    ON Group_ID.OFSI_ID = address_5.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address6 AS PREVIOUS_address6,
			    cur.address6 AS CURRENT_address6
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address6 <=> cur.address6) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_6
		    ON Group_ID.OFSI_ID = address_6.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Gender AS PREVIOUS_Gender,
			    cur.Gender AS CURRENT_Gender
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Gender <=> cur.Gender) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Gender1
		    ON Group_ID.OFSI_ID = Gender1.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.BusinessRegNumber AS PREVIOUS_BusinessRegNumber,
			    cur.BusinessRegNumber AS CURRENT_BusinessRegNumber
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.BusinessRegNumber <=> cur.BusinessRegNumber) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Business_Reg_Number
		    ON Group_ID.OFSI_ID = Business_Reg_Number.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Country AS PREVIOUS_Country,
			    cur.Country AS CURRENT_Country
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Country <=> cur.Country) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Country1
		    ON Group_ID.OFSI_ID = Country1.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.CountryOfBirth AS PREVIOUS_CountryOfBirth,
			    cur.CountryOfBirth AS CURRENT_CountryOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.CountryOfBirth <=> cur.CountryOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Country_Of_Birth
		    ON Group_ID.OFSI_ID = Country_Of_Birth.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.CurrentOwners AS PREVIOUS_CurrentOwners,
			    cur.CurrentOwners AS CURRENT_CurrentOwners
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.CurrentOwners <=> cur.CurrentOwners) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Current_Owners
		    ON Group_ID.OFSI_ID = Current_Owners.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DateListed AS PREVIOUS_DateListed,
			    cur.DateListed AS CURRENT_DateListed
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DateListed <=> cur.DateListed) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Date_Listed
		    ON Group_ID.OFSI_ID = Date_Listed.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DateListedMonth AS PREVIOUS_DateListedMonth,
			    cur.DateListedMonth AS CURRENT_DateListedMonth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DateListedMonth <=> cur.DateListedMonth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Date_Listed_Month
		    ON Group_ID.OFSI_ID = Date_Listed_Month.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DateListedYear AS PREVIOUS_DateListedYear,
			    cur.DateListedYear AS CURRENT_DateListedYear
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DateListedYear <=> cur.DateListedYear) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Date_Listed_Year
		    ON Group_ID.OFSI_ID = Date_Listed_Year.OFSI_ID
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DateOfBirth AS PREVIOUS_DateOfBirth,
			    cur.DateOfBirth AS CURRENT_DateOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DateOfBirth <=> cur.DateOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Date_Of_Birth
		    ON Group_ID.OFSI_ID = Date_Of_Birth.OFSI_ID
		    
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DateOfBirthId AS PREVIOUS_DateOfBirthId,
			    cur.DateOfBirthId AS CURRENT_DateOfBirthId
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DateOfBirthId <=> cur.DateOfBirthId) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Date_Of_Birth_Id
		    ON Group_ID.OFSI_ID = Date_Of_Birth_Id.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DayOfBirth AS PREVIOUS_DayOfBirth,
			    cur.DayOfBirth AS CURRENT_DayOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DayOfBirth <=> cur.DayOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Day_Of_Birth
		    ON Group_ID.OFSI_ID = Day_Of_Birth.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.EmailAddress AS PREVIOUS_EmailAddress,
			    cur.EmailAddress AS CURRENT_EmailAddress
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.EmailAddress <=> cur.EmailAddress) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Email_Address
		    ON Group_ID.OFSI_ID = Email_Address.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.FCOId AS PREVIOUS_FCOId,
			    cur.FCOId AS CURRENT_FCOId
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FCOId <=> cur.FCOId) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS FCO_Id
		    ON Group_ID.OFSI_ID = FCO_Id.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.FlagOfVessel AS PREVIOUS_FlagOfVessel,
			    cur.FlagOfVessel AS CURRENT_FlagOfVessel
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FlagOfVessel <=> cur.FlagOfVessel) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Flag_Of_Vessel
		    ON Group_ID.OFSI_ID = Flag_Of_Vessel.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.FurtherIdentifiyingInformation AS PREVIOUS_FurtherIdentifiyingInformation,
			    cur.FurtherIdentifiyingInformation AS CURRENT_FurtherIdentifiyingInformation
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FurtherIdentifiyingInformation <=> cur.FurtherIdentifiyingInformation) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Further_Identifiying_Information
		    ON Group_ID.OFSI_ID = Further_Identifiying_Information.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.GroupStatus AS PREVIOUS_GroupStatus,
			    cur.GroupStatus AS CURRENT_GroupStatus
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.GroupStatus <=> cur.GroupStatus) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Group_Status
		    ON Group_ID.OFSI_ID = Group_Status.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.GroupTypeDescription AS PREVIOUS_GroupTypeDescription,
			    cur.GroupTypeDescription AS CURRENT_GroupTypeDescription
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.GroupTypeDescription <=> cur.GroupTypeDescription) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Group_Type_Description
		    ON Group_ID.OFSI_ID = Group_Type_Description.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.GrpStatus AS PREVIOUS_GrpStatus,
			    cur.GrpStatus AS CURRENT_GrpStatus
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.GrpStatus <=> cur.GrpStatus) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Grp_Status
		    ON Group_ID.OFSI_ID = Grp_Status.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.HIN AS PREVIOUS_HIN,
			    cur.HIN AS CURRENT_HIN
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.HIN <=> cur.HIN) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS HIN1
		    ON Group_ID.OFSI_ID = HIN1.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.IMONumber AS PREVIOUS_IMONumber,
			    cur.IMONumber AS CURRENT_IMONumber
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.IMONumber <=> cur.IMONumber) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS IMO_Number
		    ON Group_ID.OFSI_ID = IMO_Number.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.LastUpdated AS PREVIOUS_LastUpdated,
			    cur.LastUpdated AS CURRENT_LastUpdated
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LastUpdated <=> cur.LastUpdated) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Last_Updated
		    ON Group_ID.OFSI_ID = Last_Updated.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.LastUpdatedDay AS PREVIOUS_LastUpdatedDay,
			    cur.LastUpdatedDay AS CURRENT_LastUpdatedDay
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LastUpdatedDay <=> cur.LastUpdatedDay) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Last_Updated_Day
		    ON Group_ID.OFSI_ID = Last_Updated_Day.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.LastUpdatedMonth AS PREVIOUS_LastUpdatedMonth,
			    cur.LastUpdatedMonth AS CURRENT_LastUpdatedMonth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LastUpdatedMonth <=> cur.LastUpdatedMonth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Last_Updated_Month
		    ON Group_ID.OFSI_ID = Last_Updated_Month.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.LastUpdatedYear AS PREVIOUS_LastUpdatedYear,
			    cur.LastUpdatedYear AS CURRENT_LastUpdatedYear
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LastUpdatedYear <=> cur.LastUpdatedYear) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Last_Updated_Year
		    ON Group_ID.OFSI_ID = Last_Updated_Year.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.LengthOfVessel AS PREVIOUS_LengthOfVessel,
			    cur.LengthOfVessel AS CURRENT_LengthOfVessel
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LengthOfVessel <=> cur.LengthOfVessel) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Length_Of_Vessel
		    ON Group_ID.OFSI_ID = Length_Of_Vessel.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.ListingType AS PREVIOUS_ListingType,
			    cur.ListingType AS CURRENT_ListingType
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.ListingType <=> cur.ListingType) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Listing_Type
		    ON Group_ID.OFSI_ID = Listing_Type.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.MonthOfBirth AS PREVIOUS_MonthOfBirth,
			    cur.MonthOfBirth AS CURRENT_MonthOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.MonthOfBirth <=> cur.MonthOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Month_Of_Birth
		    ON Group_ID.OFSI_ID = Month_Of_Birth.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.NameTitle AS PREVIOUS_NameTitle,
			    cur.NameTitle AS CURRENT_NameTitle
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.NameTitle <=> cur.NameTitle) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Name_Title
		    ON Group_ID.OFSI_ID = Name_Title.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.NationalIdNumber AS PREVIOUS_NationalIdNumber,
			    cur.NationalIdNumber AS CURRENT_NationalIdNumber
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.NationalIdNumber <=> cur.NationalIdNumber) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS National_IdNumber
		    ON Group_ID.OFSI_ID = National_IdNumber.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Nationality AS PREVIOUS_Nationality,
			    cur.Nationality AS CURRENT_Nationality
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Nationality <=> cur.Nationality) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Nationality1
		    ON Group_ID.OFSI_ID = Nationality1.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.OrgType AS PREVIOUS_OrgType,
			    cur.OrgType AS CURRENT_OrgType
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.OrgType <=> cur.OrgType) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Org_Type
		    ON Group_ID.OFSI_ID = Org_Type.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.OtherInformation AS PREVIOUS_OtherInformation,
			    cur.OtherInformation AS CURRENT_OtherInformation
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.OtherInformation <=> cur.OtherInformation) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Other_Information
		    ON Group_ID.OFSI_ID = Other_Information.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.ParentCompany AS PREVIOUS_ParentCompany,
			    cur.ParentCompany AS CURRENT_ParentCompany
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.ParentCompany <=> cur.ParentCompany) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Parent_Company
		    ON Group_ID.OFSI_ID = Parent_Company.OFSI_ID                                                 
		
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.PassportDetails AS PREVIOUS_PassportDetails,
			    cur.PassportDetails AS CURRENT_PassportDetails
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PassportDetails <=> cur.PassportDetails) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Passport_Details
		    ON Group_ID.OFSI_ID = Passport_Details.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.PhoneNumber AS PREVIOUS_PhoneNumber,
			    cur.PhoneNumber AS CURRENT_PhoneNumber
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PhoneNumber <=> cur.PhoneNumber) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Phone_Number
		    ON Group_ID.OFSI_ID = Phone_Number.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.`Position` AS PREVIOUS_Position,
			    cur.`Position` AS CURRENT_Position
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.`Position` <=> cur.`Position`) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Position1
		    ON Group_ID.OFSI_ID = Position1.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.PostCode AS PREVIOUS_PostCode,
			    cur.PostCode AS CURRENT_PostCode
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PostCode <=> cur.PostCode) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Post_Code
		    ON Group_ID.OFSI_ID = Post_Code.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.PreviousFlags AS PREVIOUS_PreviousFlags,
			    cur.PreviousFlags AS CURRENT_PreviousFlags
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PreviousFlags <=> cur.PreviousFlags) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Previous_Flags
		    ON Group_ID.OFSI_ID = Previous_Flags.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.PreviousOwners AS PREVIOUS_PreviousOwners,
			    cur.PreviousOwners AS CURRENT_PreviousOwners
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PreviousOwners <=> cur.PreviousOwners) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Previous_Owners
		    ON Group_ID.OFSI_ID = Previous_Owners.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.RegimeName AS PREVIOUS_RegimeName,
			    cur.RegimeName AS CURRENT_RegimeName
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.RegimeName <=> cur.RegimeName) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Regime_Name
		    ON Group_ID.OFSI_ID = Regime_Name.OFSI_ID                                                 
		
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Subsidiaries AS PREVIOUS_Subsidiaries,
			    cur.Subsidiaries AS CURRENT_Subsidiaries
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Subsidiaries <=> cur.Subsidiaries) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Subsidiaries1
		    ON Group_ID.OFSI_ID = Subsidiaries1.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.TonnageOfVessel AS PREVIOUS_TonnageOfVessel,
			    cur.TonnageOfVessel AS CURRENT_TonnageOfVessel
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.TonnageOfVessel <=> cur.TonnageOfVessel) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Tonnage_Of_Vessel
		    ON Group_ID.OFSI_ID = Tonnage_Of_Vessel.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.TownOfBirth AS PREVIOUS_TownOfBirth,
			    cur.TownOfBirth AS CURRENT_TownOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.TownOfBirth <=> cur.TownOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Town_Of_Birth
		    ON Group_ID.OFSI_ID = Town_Of_Birth.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.TypeOfVessel AS PREVIOUS_TypeOfVessel,
			    cur.TypeOfVessel AS CURRENT_TypeOfVessel
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.TypeOfVessel <=> cur.TypeOfVessel) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Type_Of_Vessel
		    ON Group_ID.OFSI_ID = Type_Of_Vessel.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.UKStatementOfReasons AS PREVIOUS_UKStatementOfReasons,
			    cur.UKStatementOfReasons AS CURRENT_UKStatementOfReasons
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.UKStatementOfReasons <=> cur.UKStatementOfReasons) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS UK_Statement_Of_Reasons
		    ON Group_ID.OFSI_ID = UK_Statement_Of_Reasons.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Website AS PREVIOUS_Website,
			    cur.Website AS CURRENT_Website
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Website <=> cur.Website) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Website1
		    ON Group_ID.OFSI_ID = Website1.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.YearBuilt AS PREVIOUS_YearBuilt,
			    cur.YearBuilt AS CURRENT_YearBuilt
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.YearBuilt <=> cur.YearBuilt) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Year_Built
		    ON Group_ID.OFSI_ID = Year_Built.OFSI_ID                                                 
		
		
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.YearOfBirth AS PREVIOUS_YearOfBirth,
			    cur.YearOfBirth AS CURRENT_YearOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.YearOfBirth <=> cur.YearOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Year_Of_Birth
		    ON Group_ID.OFSI_ID = Year_Of_Birth.OFSI_ID
  
			  
	    )     
	    GROUP BY Group_ID.OFSI_ID
		HAVING Group_ID.OFSI_ID = l.OFSI_ID
		),
	    '</OFSIID>') AS xmldoc
	FROM tmp_ofsi l;
	
	BEGIN
	UPDATE compliance.ofsi AS A
	INNER JOIN compliance.tmp2_ofsi AS B
		ON A.OFSI_ID = B.OFSI_ID
	SET A.xml_col = B.xmldoc	
	WHERE B.xmldoc IS NOT NULL
	AND A.DATE_INSERTED = DATE_FORMAT(STR_TO_DATE(@DATE_INSERTED_CURRENT, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i');
	END;	
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFSI_COUNT_REC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFSI_COUNT_REC`(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM ofsi  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OFSI_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OFSI_INSERT`(
	IN GroupID VARCHAR(100),
	IN OFSI_ID VARCHAR(100),
	IN AliasType VARCHAR(500),
	IN AliasTypeName VARCHAR(500),
	IN FullName VARCHAR(500),
	IN FullAddress VARCHAR(500),	
	IN name1 VARCHAR(300),
	IN name2 VARCHAR(300),
	IN name3 VARCHAR(300),
	IN name4 VARCHAR(300),
	IN name5 VARCHAR(300),
	IN Name6 VARCHAR(300),
	IN address1 VARCHAR(300),
	IN address2 VARCHAR(300),
	IN address3 VARCHAR(300),
	IN address4 VARCHAR(300),
	IN address5 VARCHAR(300),
	IN address6 VARCHAR(300),
	IN Gender VARCHAR(500),
	IN BusinessRegNumber VARCHAR(500),
	IN Country VARCHAR(500),
	IN CountryOfBirth VARCHAR(500),
	IN CurrentOwners VARCHAR(500),
	IN DateListed VARCHAR(500),
	IN DateListedDay VARCHAR(500),
	IN DateListedMonth VARCHAR(500),
	IN DateListedYear VARCHAR(500),
	IN DateOfBirth VARCHAR(500),
	IN DateOfBirthId VARCHAR(500),
	IN DayOfBirth VARCHAR(500),
	IN EmailAddress VARCHAR(500),
	IN FCOId VARCHAR(500),
	IN FlagOfVessel VARCHAR(500),	
	IN FurtherIdentifiyingInformation TEXT,	
	IN GroupStatus TEXT,
	IN GroupTypeDescription TEXT,
	IN GrpStatus TEXT,
	IN HIN TEXT,
	IN IMONumber TEXT,
	IN LastUpdated TEXT,
	IN LastUpdatedDay TEXT,
	IN LastUpdatedMonth TEXT,
	IN LastUpdatedYear TEXT,
	IN LengthOfVessel TEXT,
	IN ListingType TEXT,
	IN MonthOfBirth TEXT,
	IN NameTitle TEXT,
	IN NationalIdNumber TEXT,
	IN Nationality TEXT,
	IN OrgType TEXT,
	IN OtherInformation TEXT,
	IN ParentCompany TEXT,
	IN PassportDetails TEXT,
	IN PhoneNumber TEXT,
	IN `Position` TEXT,
	IN PostCode TEXT,
	IN PreviousFlags TEXT,
	IN PreviousOwners TEXT,
	IN RegimeName TEXT,
	IN Subsidiaries TEXT,
	IN TonnageOfVessel TEXT,
	IN TownOfBirth TEXT,
	IN TypeOfVessel TEXT,
	IN UKStatementOfReasons TEXT,
	IN Website TEXT,
	IN YearBuilt TEXT,
	IN YearOfBirth TEXT,
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO ofsi (GroupID, OFSI_ID, AliasType,AliasTypeName,name1,name2,name3,name4,name5,Name6,address1,address2,address3,address4,address5,address6,BusinessRegNumber,Country,	CountryOfBirth,	CurrentOwners,	DateListed,DateListedDay,DateListedMonth,DateListedYear,DateOfBirth,DateOfBirthId,DayOfBirth,EmailAddress,FCOId,FlagOfVessel,FullAddress,FullName,FurtherIdentifiyingInformation,Gender,GroupStatus,GroupTypeDescription,GrpStatus,HIN,	IMONumber,LastUpdated,LastUpdatedDay,LastUpdatedMonth,LastUpdatedYear,LengthOfVessel,ListingType,MonthOfBirth,NameTitle,NationalIdNumber,Nationality,OrgType,	OtherInformation,	ParentCompany,	PassportDetails,PhoneNumber,`Position`,	PostCode,PreviousFlags,	PreviousOwners,	RegimeName,Subsidiaries,TonnageOfVessel,TownOfBirth,TypeOfVessel,UKStatementOfReasons,Website,YearBuilt,YearOfBirth, DATE_INSERTED) 
  VALUES (GroupID, OFSI_ID, AliasType,AliasTypeName,name1,name2,name3,name4,name5,Name6,address1,address2,address3,address4,address5,address6,BusinessRegNumber,Country,	CountryOfBirth,	CurrentOwners,	DateListed,DateListedDay,DateListedMonth,DateListedYear,DateOfBirth,DateOfBirthId,DayOfBirth,EmailAddress,FCOId,FlagOfVessel,FullAddress,FullName,FurtherIdentifiyingInformation,Gender,GroupStatus,GroupTypeDescription,GrpStatus,HIN,	IMONumber,LastUpdated,LastUpdatedDay,LastUpdatedMonth,LastUpdatedYear,LengthOfVessel,ListingType,MonthOfBirth,NameTitle,NationalIdNumber,Nationality,OrgType,	OtherInformation,	ParentCompany,	PassportDetails,PhoneNumber,`Position`,	PostCode,PreviousFlags,	PreviousOwners,	RegimeName,Subsidiaries,TonnageOfVessel,TownOfBirth,TypeOfVessel,UKStatementOfReasons,Website,YearBuilt,YearOfBirth, DATE_INSERTED) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_ENTITY_ADDRESS_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_ENTITY_ADDRESS_INSERT`(
	IN DATAID VARCHAR(100),
	IN CITY VARCHAR(500),
	IN COUNTRY VARCHAR(500),
	IN NOTE TEXT,
	IN STATE_PROVINCE VARCHAR(500),
	IN STREET VARCHAR(500),
	IN ZIP_CODE VARCHAR(500),
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO unsc_entity_address (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, STREET, ZIP_CODE, DATE_INSERTED) 
  VALUES (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, STREET, ZIP_CODE, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_ENTITY_ALIAS_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_ENTITY_ALIAS_INSERT`(
	IN DATAID VARCHAR(100),
	IN ALIAS_NAME VARCHAR(500),	
	IN QUALITY VARCHAR(20),
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO unsc_entity_alias (DATAID, ALIAS_NAME, QUALITY, DATE_INSERTED) 
  VALUES (DATAID, ALIAS_NAME, QUALITY, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_ENTITY_COUNT_REC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_ENTITY_COUNT_REC`(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM unsc_entity  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_ENTITY_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_ENTITY_INSERT`(
	IN DATAID VARCHAR(100),
	IN VERSIONNUM INT,
	IN FIRST_NAME VARCHAR(500),	
	IN UN_LIST_TYPE VARCHAR(50),
	IN REFERENCE_NUMBER VARCHAR(50),
	IN LISTED_ON VARCHAR(50),
	IN COMMENTS1 TEXT,	
	IN LIST_TYPE VARCHAR(50),
	IN LAST_DAY_UPDATED VARCHAR(50),
	IN SORT_KEY VARCHAR(50),
	IN SORT_KEY_LAST_MOD VARCHAR(50),
	IN NAME_ORIGINAL_SCRIPT VARCHAR(500),	
	IN SUBMITTED_ON VARCHAR(100),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO unsc_entity (DATAID, VERSIONNUM, FIRST_NAME, UN_LIST_TYPE, REFERENCE_NUMBER, LISTED_ON, COMMENTS1, LIST_TYPE, LAST_DAY_UPDATED, SORT_KEY, SORT_KEY_LAST_MOD, NAME_ORIGINAL_SCRIPT, SUBMITTED_ON, DATE_INSERTED) 
  VALUES (DATAID, VERSIONNUM , FIRST_NAME, UN_LIST_TYPE, REFERENCE_NUMBER, LISTED_ON, COMMENTS1, LIST_TYPE, LAST_DAY_UPDATED, SORT_KEY, SORT_KEY_LAST_MOD, NAME_ORIGINAL_SCRIPT, SUBMITTED_ON, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_INDIVIDUAL_ADDRESS_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_INDIVIDUAL_ADDRESS_INSERT`(
	IN DATAID VARCHAR(100),
	IN CITY VARCHAR(500),
	IN COUNTRY VARCHAR(500),
	IN NOTE TEXT,
	IN STATE_PROVINCE VARCHAR(500),
	IN STREET VARCHAR(500),
	IN ZIP_CODE VARCHAR(500),
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO unsc_individual_address (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, STREET, ZIP_CODE, DATE_INSERTED) 
  VALUES (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, STREET, ZIP_CODE, DATE_INSERTED) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_INDIVIDUAL_ALIAS_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_INDIVIDUAL_ALIAS_INSERT`(
	IN DATAID VARCHAR(100),
	IN ALIAS_NAME VARCHAR(500),
	IN CITY_OF_BIRTH VARCHAR(100),
	IN COUNTRY_OF_BIRTH VARCHAR(100),
	IN DATE_OF_BIRTH VARCHAR(50), 
	IN NOTE TEXT,
	IN QUALITY VARCHAR(20),
	IN DATE_INSERTED VARCHAR(100)  
	)
BEGIN   
  INSERT INTO unsc_individual_alias (DATAID, ALIAS_NAME, CITY_OF_BIRTH, COUNTRY_OF_BIRTH, DATE_OF_BIRTH, NOTE, QUALITY, DATE_INSERTED) 
  VALUES (DATAID, ALIAS_NAME, CITY_OF_BIRTH, COUNTRY_OF_BIRTH, DATE_OF_BIRTH, NOTE, QUALITY, DATE_INSERTED) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_INDIVIDUAL_COMPARISION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_INDIVIDUAL_COMPARISION`()
BEGIN
  DECLARE DATE_INSERTED_CURRENT VARCHAR(100);
  DECLARE DATE_INSERTED_PREVIOUS  VARCHAR(100);
  

	SET @DATE_INSERTED_CURRENT = (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i')   AS DATE_INSERTED 
				FROM unsc_individual
				GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
				ORDER BY DATE_INSERTED DESC
				LIMIT 1);

	SET @DATE_INSERTED_PREVIOUS = (SELECT DATE_INSERTED 
				FROM (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') AS DATE_INSERTED 
					FROM unsc_individual 
					GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
					ORDER BY DATE_INSERTED DESC
					LIMIT 2) 
				AS unsc_individual 
				ORDER BY DATE_INSERTED ASC 
				LIMIT 1);  
			
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp;
  
	CREATE TEMPORARY TABLE compliance.tmp ( 
		DATAID VARCHAR(100) NOT NULL,
		VERSIONNUM INT,
		FIRST_NAME VARCHAR(50),
		SECOND_NAME VARCHAR(50),
		THIRD_NAME VARCHAR(50),
		FOURTH_NAME VARCHAR(50),
		GENDER  VARCHAR(20),
		TITLE VARCHAR(50),
		UN_LIST_TYPE VARCHAR(50),
		REFERENCE_NUMBER VARCHAR(50),
		LISTED_ON VARCHAR(50),
		COMMENTS1 TEXT,
		DESIGNATION VARCHAR(500),
		NATIONALITY VARCHAR(200),
		LIST_TYPE VARCHAR(50),
		LAST_DAY_UPDATED VARCHAR(50),
		SORT_KEY VARCHAR(50),
		SORT_KEY_LAST_MOD VARCHAR(50),
		NAME_ORIGINAL_SCRIPT TEXT,
		SUBMITTED_BY VARCHAR(50),
		DATE_INSERTED VARCHAR(100) 
		);
  
	INSERT INTO compliance.tmp
	SELECT 
	 T1.DATAID, T1.VERSIONNUM, T1.FIRST_NAME, T1.SECOND_NAME, T1.THIRD_NAME, T1.FOURTH_NAME, T1.GENDER, T1.TITLE, T1.UN_LIST_TYPE, T1.REFERENCE_NUMBER, T1.LISTED_ON, T1.COMMENTS1,
	 T1.DESIGNATION, T1.NATIONALITY, T1.LIST_TYPE, T1.LAST_DAY_UPDATED, T1.SORT_KEY, T1.SORT_KEY_LAST_MOD, T1.NAME_ORIGINAL_SCRIPT, T1.SUBMITTED_BY, T1.DATE_INSERTED
	FROM unsc_individual AS T1
		LEFT JOIN unsc_individual AS T2 
		ON T1.DATAID = T2.DATAID  
		AND T2.DATE_INSERTED = @DATE_INSERTED_PREVIOUS 
	WHERE T1.DATE_INSERTED = @DATE_INSERTED_CURRENT
		AND IF(T2.DATAID IS NULL, TRUE, ((T1.VERSIONNUM <> T2.VERSIONNUM) 
		OR (T1.FIRST_NAME <> T2.FIRST_NAME) 
		OR (T1.SECOND_NAME <> T2.SECOND_NAME) 
		OR (T1.THIRD_NAME <> T2.THIRD_NAME) 
		OR (T1.FOURTH_NAME <> T2.FOURTH_NAME)
		OR (T1.GENDER <> T2.GENDER) 
		OR (T1.TITLE <> T2.TITLE) 
		OR (T1.UN_LIST_TYPE <> T2.UN_LIST_TYPE) 
		OR (T1.REFERENCE_NUMBER <> T2.REFERENCE_NUMBER) 
		OR (T1.LISTED_ON <> T2.LISTED_ON)
		OR (T1.COMMENTS1 <> T2.COMMENTS1) 
		OR (T1.DESIGNATION <> T2.DESIGNATION) 
		OR (T1.NATIONALITY <> T2.NATIONALITY) 
		OR (T1.LIST_TYPE <> T2.LIST_TYPE) 
		OR (T1.LAST_DAY_UPDATED <> T2.LAST_DAY_UPDATED)
		OR (T1.SORT_KEY <> T2.SORT_KEY) 
		OR (T1.SORT_KEY_LAST_MOD <> T2.SORT_KEY_LAST_MOD) 
		OR (T1.NAME_ORIGINAL_SCRIPT <> T2.NAME_ORIGINAL_SCRIPT) 
		OR (T1.SUBMITTED_BY <> T2.SUBMITTED_BY)));
		
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp2;

	CREATE TEMPORARY TABLE compliance.tmp2 ( 
		DATAID VARCHAR(100) NOT NULL,
		xmldoc TEXT
		);
		
	INSERT INTO compliance.tmp2
	SELECT
	   l.DATAID,
	   CONCAT('<DATAID DATA_ID="', l.DATAID, '">',
	    (
		SELECT
		    CONCAT('<DATA>',
		    GROUP_CONCAT('<FNP="', IFNULL(FirstName.PREVIOUS_FIRST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FNC="', IFNULL(FirstName.CURRENT_FIRST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SNP="', IFNULL(SecondName.PREVIOUS_SECOND_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SNC="', IFNULL(SecondName.CURRENT_SECOND_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<VNP="', IFNULL(VERSION_NUM.PREVIOUS_VERSIONNUM, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<VNC="', IFNULL(VERSION_NUM.CURRENT_VERSIONNUM, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TNP="', IFNULL(THIRDNAME.PREVIOUS_THIRD_NAME, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TNC="', IFNULL(THIRDNAME.CURRENT_THIRD_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FOURTHNP="', IFNULL(FOURTHNAME.PREVIOUS_FOURTH_NAME, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FOURTHNC="', IFNULL(FOURTHNAME.CURRENT_FOURTH_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GP="', IFNULL(GENDER1.PREVIOUS_GENDER, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GC="', IFNULL(GENDER1.CURRENT_GENDER, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TP="', IFNULL(TITLE1.PREVIOUS_TITLE, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TC="', IFNULL(TITLE1.CURRENT_TITLE, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<UN_LIST_TYPEP="', IFNULL(UN_LIST_TYPE1.PREVIOUS_UN_LIST_TYPE, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<UN_LIST_TYPEC="', IFNULL(UN_LIST_TYPE1.CURRENT_UN_LIST_TYPE, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<REFERENCENUMBERP="', IFNULL(REFERENCENUMBER.PREVIOUS_REFERENCE_NUMBER, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<REFERENCENUMBERC="', IFNULL(REFERENCENUMBER.CURRENT_REFERENCE_NUMBER, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LISTEDONP="', IFNULL(LISTEDON.PREVIOUS_LISTED_ON, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LISTEDONC="', IFNULL(LISTEDON.CURRENT_LISTED_ON, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<COMMENTSP="', IFNULL(COMMENTS.PREVIOUS_COMMENTS1, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<COMMENTSC="', IFNULL(COMMENTS.CURRENT_COMMENTS1, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DESIGNATIONP="', IFNULL(DESIGNATION1.PREVIOUS_DESIGNATION, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DESIGNATIONC="', IFNULL(DESIGNATION1.CURRENT_DESIGNATION, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NATIONALITYP="', IFNULL(NATIONALITY1.PREVIOUS_NATIONALITY, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NATIONALITYC="', IFNULL(NATIONALITY1.CURRENT_NATIONALITY, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LIST_TYPEP="', IFNULL(LISTTYPE.PREVIOUS_LIST_TYPE, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LIST_TYPEC="', IFNULL(LISTTYPE.CURRENT_LIST_TYPE, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LAST_DAY_UPDATEDP="', IFNULL(LASTDAYUPDATED.PREVIOUS_LAST_DAY_UPDATED, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LAST_DAY_UPDATEDC="', IFNULL(LASTDAYUPDATED.CURRENT_LAST_DAY_UPDATED, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SORT_KEYP="', IFNULL(SORTKEY.PREVIOUS_SORT_KEY, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SORT_KEYC="', IFNULL(SORTKEY.CURRENT_SORT_KEY, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SORT_KEY_LAST_MODP="', IFNULL(SORTKEYLASTMOD.PREVIOUS_SORT_KEY_LAST_MOD, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SORT_KEY_LAST_MODC="', IFNULL(SORTKEYLASTMOD.CURRENT_SORT_KEY_LAST_MOD, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NAME_ORIGINAL_SCRIPTP="', IFNULL(NAMEORIGINALSCRIPT.PREVIOUS_NAME_ORIGINAL_SCRIPT, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NAME_ORIGINAL_SCRIPTC="', IFNULL(NAMEORIGINALSCRIPT.CURRENT_NAME_ORIGINAL_SCRIPT, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SUBMITTED_BYP="', IFNULL(SUBMITTEDBY.PREVIOUS_SUBMITTED_BY, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SUBMITTED_BYC="', IFNULL(SUBMITTEDBY.CURRENT_SUBMITTED_BY, 'NULL'), '"/>'  SEPARATOR ''),
		    '</DATA>')
	    FROM(
		(SELECT pre.DATAID,
		    pre.FIRST_NAME AS PREVIOUS_FIRST_NAME,
		    cur.FIRST_NAME AS CURRENT_FIRST_NAME
		FROM unsc_individual pre
		    LEFT JOIN unsc_individual cur
		    ON cur.DATAID = pre.DATAID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.FIRST_NAME <=> cur.FIRST_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS FirstName

		LEFT JOIN (
		SELECT pre.DATAID,
		    pre.SECOND_NAME AS PREVIOUS_SECOND_NAME,
		    cur.SECOND_NAME AS CURRENT_SECOND_NAME
		FROM unsc_individual pre
		    LEFT JOIN unsc_individual cur
		    ON cur.DATAID = pre.DATAID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.SECOND_NAME <=> cur.SECOND_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS SecondName
		ON FirstName.DATAID = SecondName.DATAID 
		    
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.VERSIONNUM AS PREVIOUS_VERSIONNUM,
			    cur.VERSIONNUM AS CURRENT_VERSIONNUM
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.VERSIONNUM <=> cur.VERSIONNUM) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS VERSION_NUM
		    ON FirstName.DATAID = VERSION_NUM.DATAID    
		  
		  
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.THIRD_NAME AS PREVIOUS_THIRD_NAME,
			    cur.THIRD_NAME AS CURRENT_THIRD_NAME
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.THIRD_NAME <=> cur.THIRD_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS THIRDNAME
		    ON FirstName.DATAID = THIRDNAME.DATAID  
		    

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.FOURTH_NAME AS PREVIOUS_FOURTH_NAME,
			    cur.FOURTH_NAME AS CURRENT_FOURTH_NAME
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FOURTH_NAME <=> cur.FOURTH_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS FOURTHNAME
		    ON FirstName.DATAID = FOURTHNAME.DATAID 

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.GENDER AS PREVIOUS_GENDER,
			    cur.GENDER AS CURRENT_GENDER
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.GENDER <=> cur.GENDER) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS GENDER1
		    ON FirstName.DATAID = GENDER1.DATAID
		    
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.TITLE AS PREVIOUS_TITLE,
			    cur.TITLE AS CURRENT_TITLE
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.TITLE <=> cur.TITLE) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS TITLE1
		    ON FirstName.DATAID = TITLE1.DATAID

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.UN_LIST_TYPE AS PREVIOUS_UN_LIST_TYPE,
			    cur.UN_LIST_TYPE AS CURRENT_UN_LIST_TYPE
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.UN_LIST_TYPE <=> cur.UN_LIST_TYPE) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS UN_LIST_TYPE1
		    ON FirstName.DATAID = UN_LIST_TYPE1.DATAID

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.REFERENCE_NUMBER AS PREVIOUS_REFERENCE_NUMBER,
			    cur.REFERENCE_NUMBER AS CURRENT_REFERENCE_NUMBER
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.REFERENCE_NUMBER <=> cur.REFERENCE_NUMBER) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS REFERENCENUMBER
		    ON FirstName.DATAID = REFERENCENUMBER.DATAID

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.LISTED_ON AS PREVIOUS_LISTED_ON,
			    cur.LISTED_ON AS CURRENT_LISTED_ON
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LISTED_ON <=> cur.LISTED_ON) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS LISTEDON
		    ON FirstName.DATAID = LISTEDON.DATAID  
		  
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.COMMENTS1 AS PREVIOUS_COMMENTS1,
			    cur.COMMENTS1 AS CURRENT_COMMENTS1
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.COMMENTS1 <=> cur.COMMENTS1) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS COMMENTS
		    ON FirstName.DATAID = COMMENTS.DATAID   
		  
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.DESIGNATION AS PREVIOUS_DESIGNATION,
			    cur.DESIGNATION AS CURRENT_DESIGNATION
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DESIGNATION <=> cur.DESIGNATION) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS DESIGNATION1
		    ON FirstName.DATAID = DESIGNATION1.DATAID   

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.NATIONALITY AS PREVIOUS_NATIONALITY,
			    cur.NATIONALITY AS CURRENT_NATIONALITY
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.NATIONALITY <=> cur.NATIONALITY) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS NATIONALITY1
		    ON FirstName.DATAID = NATIONALITY1.DATAID 

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.LIST_TYPE AS PREVIOUS_LIST_TYPE,
			    cur.LIST_TYPE AS CURRENT_LIST_TYPE
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LIST_TYPE <=> cur.LIST_TYPE) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS LISTTYPE
		    ON FirstName.DATAID = LISTTYPE.DATAID 

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.LAST_DAY_UPDATED AS PREVIOUS_LAST_DAY_UPDATED,
			    cur.LAST_DAY_UPDATED AS CURRENT_LAST_DAY_UPDATED
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LAST_DAY_UPDATED <=> cur.LAST_DAY_UPDATED) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS LASTDAYUPDATED
		    ON FirstName.DATAID = LASTDAYUPDATED.DATAID 

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.SORT_KEY AS PREVIOUS_SORT_KEY,
			    cur.SORT_KEY AS CURRENT_SORT_KEY
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.SORT_KEY <=> cur.SORT_KEY) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS SORTKEY
		    ON FirstName.DATAID = SORTKEY.DATAID 
		  
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.SORT_KEY_LAST_MOD AS PREVIOUS_SORT_KEY_LAST_MOD,
			    cur.SORT_KEY_LAST_MOD AS CURRENT_SORT_KEY_LAST_MOD
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.SORT_KEY_LAST_MOD <=> cur.SORT_KEY_LAST_MOD) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS SORTKEYLASTMOD
		    ON FirstName.DATAID = SORTKEYLASTMOD.DATAID

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.NAME_ORIGINAL_SCRIPT AS PREVIOUS_NAME_ORIGINAL_SCRIPT,
			    cur.NAME_ORIGINAL_SCRIPT AS CURRENT_NAME_ORIGINAL_SCRIPT
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.NAME_ORIGINAL_SCRIPT <=> cur.NAME_ORIGINAL_SCRIPT) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS NAMEORIGINALSCRIPT
		    ON FirstName.DATAID = NAMEORIGINALSCRIPT.DATAID
		    
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.SUBMITTED_BY AS PREVIOUS_SUBMITTED_BY,
			    cur.SUBMITTED_BY AS CURRENT_SUBMITTED_BY
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.SUBMITTED_BY <=> cur.SUBMITTED_BY) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS SUBMITTEDBY
		    ON FirstName.DATAID = SUBMITTEDBY.DATAID	  
	    )     
	    GROUP BY FirstName.DATAID
		HAVING FirstName.DATAID = l.DATAID
		),
	    '</DATAID>') AS xmldoc
	FROM tmp l;
	
	BEGIN
	UPDATE compliance.unsc_individual AS A
	INNER JOIN compliance.tmp2 AS B
		ON A.DATAID = B.DATAID
	SET A.xml_col = B.xmldoc	
	WHERE B.xmldoc IS NOT NULL
	AND A.DATE_INSERTED = DATE_FORMAT(STR_TO_DATE(@DATE_INSERTED_CURRENT, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i');
	END;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_INDIVIDUAL_COUNT_REC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_INDIVIDUAL_COUNT_REC`(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM unsc_individual  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_INDIVIDUAL_DATE_OF_BIRTH_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_INDIVIDUAL_DATE_OF_BIRTH_INSERT`(
	IN DATAID VARCHAR(100),
	IN `DATE` VARCHAR(50), 		
	IN FROM_YEAR VARCHAR(50), 		
	IN NOTE TEXT,
	IN TYPE_OF_DATE VARCHAR(50),
	IN `YEAR` VARCHAR(50),		
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO unsc_individual_date_of_birth (DATAID, `DATE`, FROM_YEAR, NOTE, TYPE_OF_DATE, `YEAR`, DATE_INSERTED) 
  VALUES (DATAID, `DATE`, FROM_YEAR, NOTE, TYPE_OF_DATE, `YEAR`, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_INDIVIDUAL_DOCUMENT_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_INDIVIDUAL_DOCUMENT_INSERT`(
	IN DATAID VARCHAR(100),
	IN CITY_OF_ISSUE VARCHAR(500),
	IN COUNTRY_OF_ISSUE VARCHAR(500),
	IN DATE_OF_ISSUE VARCHAR(100), 	
	IN ISSUING_COUNTRY VARCHAR(500),	
	IN NOTE TEXT,	
	IN NUMBER VARCHAR(500),	
	IN TYPE_OF_DOCUMENT VARCHAR(500),	
	IN TYPE_OF_DOCUMENT2 VARCHAR(500),		
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO unsc_individual_document (DATAID, CITY_OF_ISSUE, COUNTRY_OF_ISSUE, DATE_OF_ISSUE, ISSUING_COUNTRY, NOTE, NUMBER, TYPE_OF_DOCUMENT, TYPE_OF_DOCUMENT2, DATE_INSERTED) 
  VALUES (DATAID, CITY_OF_ISSUE, COUNTRY_OF_ISSUE, DATE_OF_ISSUE, ISSUING_COUNTRY, NOTE, NUMBER, TYPE_OF_DOCUMENT, TYPE_OF_DOCUMENT2, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_INDIVIDUAL_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_INDIVIDUAL_INSERT`(
	IN DATAID VARCHAR(100),
	IN VERSIONNUM INT,
	IN FIRST_NAME VARCHAR(50),
	IN SECOND_NAME VARCHAR(50),
	IN THIRD_NAME VARCHAR(50),
	IN FOURTH_NAME VARCHAR(50),
	IN GENDER  VARCHAR(20),
	IN TITLE VARCHAR(50),
	IN UN_LIST_TYPE VARCHAR(50),
	IN REFERENCE_NUMBER VARCHAR(50),
	IN LISTED_ON VARCHAR(50),
	IN COMMENTS1 TEXT,
	IN DESIGNATION VARCHAR(500),
	IN NATIONALITY VARCHAR(200),
	IN LIST_TYPE VARCHAR(50),
	IN LAST_DAY_UPDATED VARCHAR(50),
	IN SORT_KEY VARCHAR(50),
	IN SORT_KEY_LAST_MOD VARCHAR(50),
	IN NAME_ORIGINAL_SCRIPT VARCHAR(500),	
	IN SUBMITTED_BY VARCHAR(50),
	IN DATE_INSERTED VARCHAR(100)  
	)
BEGIN   
  INSERT INTO unsc_individual (DATAID, VERSIONNUM, FIRST_NAME, SECOND_NAME, THIRD_NAME, FOURTH_NAME, GENDER, TITLE, UN_LIST_TYPE, REFERENCE_NUMBER, LISTED_ON, COMMENTS1, DESIGNATION, NATIONALITY, LIST_TYPE, LAST_DAY_UPDATED , SORT_KEY, SORT_KEY_LAST_MOD ,NAME_ORIGINAL_SCRIPT, SUBMITTED_BY, DATE_INSERTED) 
  VALUES (DATAID, VERSIONNUM, FIRST_NAME, SECOND_NAME, THIRD_NAME, FOURTH_NAME, GENDER, TITLE, UN_LIST_TYPE, REFERENCE_NUMBER, LISTED_ON, COMMENTS1, DESIGNATION, NATIONALITY, LIST_TYPE,LAST_DAY_UPDATED , SORT_KEY, SORT_KEY_LAST_MOD ,NAME_ORIGINAL_SCRIPT, SUBMITTED_BY, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UNSC_INDIVIDUAL_PLACE_OF_BIRTH_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UNSC_INDIVIDUAL_PLACE_OF_BIRTH_INSERT`(
	IN DATAID VARCHAR(100),
	IN CITY VARCHAR(500),
	IN COUNTRY VARCHAR(500),
	IN NOTE TEXT,
	IN STATE_PROVINCE VARCHAR(500),		
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO UNSC_INDIVIDUAL_PLACE_OF_BIRTH (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, DATE_INSERTED) 
  VALUES (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, DATE_INSERTED);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06 14:11:18
