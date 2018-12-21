-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: fall2018dbshubham.cutrzcvjwnrd.us-east-2.rds.amazonaws.com    Database: ADBMS
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
-- Table structure for table `Account`
--

DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Account` (
  `emp_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`account_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `Account_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
INSERT INTO `Account` VALUES (5,1,'OCEAN123','DSDS2323'),(6,2,'cleo222','dsdf355'),(8,3,'axel8756','hjmgnm474'),(12,4,'Noml5534','fcndfnj434'),(18,5,'Serena','ldmfldlskfi34');
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmpFlight`
--

DROP TABLE IF EXISTS `EmpFlight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmpFlight` (
  `flight_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`flight_id`,`employee_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `EmpFlight_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `Flight` (`flight_id`),
  CONSTRAINT `EmpFlight_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmpFlight`
--

LOCK TABLES `EmpFlight` WRITE;
/*!40000 ALTER TABLE `EmpFlight` DISABLE KEYS */;
INSERT INTO `EmpFlight` VALUES (5,9),(7,9),(12,9),(16,9),(1,11),(9,11),(15,11),(2,20),(10,20),(21,20);
/*!40000 ALTER TABLE `EmpFlight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmpLounge`
--

DROP TABLE IF EXISTS `EmpLounge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmpLounge` (
  `lounge_terminal_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`lounge_terminal_id`,`employee_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `EmpLounge_ibfk_1` FOREIGN KEY (`lounge_terminal_id`) REFERENCES `Lounge` (`lounge_terminal_id`),
  CONSTRAINT `EmpLounge_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmpLounge`
--

LOCK TABLES `EmpLounge` WRITE;
/*!40000 ALTER TABLE `EmpLounge` DISABLE KEYS */;
INSERT INTO `EmpLounge` VALUES (3,1),(5,1),(6,1),(1,10),(6,10),(7,10),(2,13),(7,13),(8,13),(4,17),(5,17),(8,17);
/*!40000 ALTER TABLE `EmpLounge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmpParking`
--

DROP TABLE IF EXISTS `EmpParking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmpParking` (
  `lot_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`lot_id`,`employee_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `EmpParking_ibfk_1` FOREIGN KEY (`lot_id`) REFERENCES `Parking` (`lot_id`),
  CONSTRAINT `EmpParking_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmpParking`
--

LOCK TABLES `EmpParking` WRITE;
/*!40000 ALTER TABLE `EmpParking` DISABLE KEYS */;
INSERT INTO `EmpParking` VALUES (3,1),(5,1),(6,1),(1,10),(6,10),(9,10),(2,13),(7,13),(10,13),(4,17),(5,17),(8,17);
/*!40000 ALTER TABLE `EmpParking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmpShopRest`
--

DROP TABLE IF EXISTS `EmpShopRest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmpShopRest` (
  `shop_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`,`employee_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `EmpShopRest_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `ShopRestCat` (`shop_id`),
  CONSTRAINT `EmpShopRest_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmpShopRest`
--

LOCK TABLES `EmpShopRest` WRITE;
/*!40000 ALTER TABLE `EmpShopRest` DISABLE KEYS */;
INSERT INTO `EmpShopRest` VALUES (3,1),(5,1),(6,1),(1,10),(3,10),(6,10),(9,10),(2,13),(7,13),(8,13),(9,13),(10,13),(4,17),(8,17),(9,17);
/*!40000 ALTER TABLE `EmpShopRest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(5) NOT NULL DEFAULT 'GEN',
  `emp_firstname` varchar(255) NOT NULL,
  `emp_lastname` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zip_code` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'FM','Phelan','Logan','257 Ligula. Ave','Gavle','Gävleborgs län','Honduras','9464 EC','sed.orci.lobortis@arcuiaculis.ca','1-778-840-4196',634546),(2,'AM','Lani','Rivas','Ap #614-6265 Sed, St.','Coevorden','Dr','Ecuador','171453','dictum@ullamcorper.org','1-452-491-1042',772656),(3,'AM','Sonya','Giles','P.O. Box 969, 3410 Et Rd.','Vienna','Vienna','Macao','761891','Donec@maurisut.edu','1-644-825-9839',662796),(4,'GEN','John','Shields','2016 Aenean Street','Lagos','Lagos','Bhutan','90-063','habitant@adipiscinglacus.org','1-432-741-5867',366189),(5,'RP','Ocean','Blevins','8470 Non, St.','Auckland','North Island','Cuba','8671','Integer.eu@euismodestarcu.ca','1-877-864-0308',676768),(6,'AAS','Cleo','Black','6344 Ac Avenue','Annapolis','MD','Bahamas','09164','malesuada@nibhDonecest.ca','1-378-871-7333',922546),(7,'GS','Cameron','Savage','943-1891 Tortor, Street','Avesta','W','Heard Island and Mcdonald Islands','38938','nunc.ac.mattis@Nullafacilisis.edu','1-458-229-2485',694186),(8,'AAS','Axel','Kent','169-3867 Cras Avenue','Galmaarden','VB','Madagascar','44703','dui.Fusce.aliquam@vitaeodiosagittis.edu','1-635-554-6560',418884),(9,'ATC','Delilah','Rogers','775-5487 Adipiscing Av.','Shreveport','LA','Switzerland','4775','euismod.ac.fermentum@nullaat.edu','1-403-847-4925',926944),(10,'FM','Ursa','Pace','P.O. Box 445, 9972 Nunc Ave','Heredia','H','Marshall Islands','460255','mauris.aliquam@netuset.co.uk','1-452-923-5510',885434),(11,'ATC','Ulric','Wilkins','Ap #947-1275 Egestas. Ave','Göteborg','Västra Götalands län','Iran','68439','volutpat.nunc@sed.edu','1-202-620-4046',100059),(12,'AAS','Nomlanga','Valencia','Ap #266-9983 Interdum. Ave','Radicofani','TOS','Suriname','9742','lorem@metusurna.org','1-240-834-6216',952442),(13,'FM','Darrel','Merrill','P.O. Box 886, 1937 Erat St.','Noragugume','Sardegna','French Guiana','699981','feugiat.placerat@orciconsectetuer.org','1-322-257-5050',166849),(14,'AM','Hermione','Harding','358-5030 In Rd.','Hofors','Gävleborgs län','Korea, South','9256','pharetra.sed.hendrerit@liberoDonecconsectetuer.net','1-843-908-4802',291276),(15,'GS','Blair','Horton','P.O. Box 374, 4164 Orci, Ave','Siedlce','MA','Samoa','9851','nec.tellus.Nunc@magnisdisparturient.edu','1-398-549-1891',474792),(16,'AM','Channing','Fitzgerald','Ap #896-2369 Ligula. Street','Palencia','CL','Kyrgyzstan','33009-682','adipiscing@etmagnaPraesent.org','1-934-549-5972',527070),(17,'FM','Brody','Mitchell','Ap #896-6735 Interdum Av.','Montebello','QC','Italy','10507','molestie.Sed@at.ca','1-316-156-2026',978089),(18,'RP','Serena','Maynard','Ap #436-7221 Neque. Rd.','Zamosc','LU','Turkmenistan','V6S 9YI','nibh.Quisque.nonummy@vehiculaaliquetlibero.edu','1-115-316-5877',214410),(19,'GEN','Caryn','Benjamin','P.O. Box 524, 7544 Facilisi. St.','Timaru','South Island','Estonia','8734','tortor.dictum@mattisvelitjusto.edu','1-701-172-9456',604687),(20,'ATC','Igor','Norman','P.O. Box 998, 7457 Tortor, Street','Cinco Esquinas','SJ','Montenegro','24503-907','ipsum.primis.in@egestasnuncsed.edu','1-898-751-3504',794041);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Flight`
--

DROP TABLE IF EXISTS `Flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Flight` (
  `flight_id` int(11) NOT NULL AUTO_INCREMENT,
  `airline_no` varchar(255) NOT NULL,
  `airline_name` varchar(255) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flight`
--

LOCK TABLES `Flight` WRITE;
/*!40000 ALTER TABLE `Flight` DISABLE KEYS */;
INSERT INTO `Flight` VALUES (1,'JB-123','Jet Blue','San Antonio, TX','Charlotte, NC'),(2,'DA-543','Delta Air lines','Charlotte, NC','New York City, NY'),(3,'AA-334','American Airlines','Seattle, WA','Charlotte, WA'),(4,'JB-987','Jet Blue','Charlotte, NC','Dallas, TX'),(5,'JB-65','Jet Blue','Dallas, TX','Charlotte, NC'),(6,'JB-77','Jet Blue','San Antonio, TX','Charlotte, NC'),(7,'JB-387','Jet Blue','Charlotte, NC','Memphis, TN'),(8,'AA-776','American Airlines','Philadelphia, PA','Charlotte, NC'),(9,'SA-678','Southwest Airlines','Charlotte, NC','Chicago, IL'),(10,'SA-621','Southwest Airlines','Charlotte, NC','Boston, MA'),(11,'AA-76','American Airlines','Chicago, IL','Charlotte, NC'),(12,'DA-53','Delta Air lines','Charlotte, NC','Chicago, IL'),(13,'SA-21','Southwest Airlines','Charlotte, NC','Philadelphia, PA'),(14,'AA-276','American Airlines','Charlotte, NC','Memphis, TN'),(15,'DA-543','Delta Air lines','Charlotte, NC','Boston, MA'),(16,'AA-676','American Airlines','New York City, NY','Charlotte, NC'),(17,'JB-327','Jet Blue','Charlotte, NC','Seattle, WA'),(18,'JB-887','Jet Blue','Memphis, TN','Charlotte, NC'),(19,'AA-996','American Airlines','Charlotte, NC','Seattle, WA'),(20,'SA-241','Southwest Airlines','Charlotte, NC','San Antonio, TX'),(21,'JB-242','Jet Blues','Charlotte, NC','Chicago, IL');
/*!40000 ALTER TABLE `Flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FlightDetails`
--

DROP TABLE IF EXISTS `FlightDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FlightDetails` (
  `flight_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL,
  `gate_no` varchar(5) DEFAULT NULL,
  `terminal_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`flight_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FlightDetails`
--

LOCK TABLES `FlightDetails` WRITE;
/*!40000 ALTER TABLE `FlightDetails` DISABLE KEYS */;
INSERT INTO `FlightDetails` VALUES (1,'2018-09-24','13:52:58','02:14:44','M3',3),(2,'2018-10-04','21:15:26','04:35:07','F5',9),(3,'2019-08-05','12:21:43','16:11:36','T8',7),(4,'2018-04-12','22:22:42','12:24:03','J4',4),(5,'2018-01-15','07:24:21','01:00:00','W3',4),(6,'2019-07-27','14:08:25','22:24:41','A9',1),(7,'2019-03-09','13:32:13','04:35:01','B4',1),(8,'2018-02-06','05:31:04','06:27:41','V3',7),(9,'2018-09-17','02:24:41','01:33:02','O3',3),(10,'2019-09-26','20:56:39','19:27:45','D2',3),(11,'2018-01-27','07:31:51','09:04:16','W1',2),(12,'2019-01-30','15:53:00','05:18:50','H4',4),(13,'2019-07-24','17:27:01','03:30:49','O4',8),(14,'2019-02-08','16:45:22','03:54:49','Y1',4),(15,'2019-04-03','06:48:12','05:12:01','E2',6),(16,'2019-08-26','12:31:09','02:51:53','J0',5),(17,'2018-10-30','00:04:55','12:38:59','X6',1),(18,'2018-09-16','10:30:48','11:00:00','R2',5),(19,'2018-01-05','07:19:25','19:19:27','X5',9),(20,'2018-10-22','04:23:54','00:03:23','R3',1),(21,'2018-10-25','22:00:00','01:00:00',NULL,NULL);
/*!40000 ALTER TABLE `FlightDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lounge`
--

DROP TABLE IF EXISTS `Lounge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lounge` (
  `lounge_terminal_id` int(11) NOT NULL AUTO_INCREMENT,
  `lounge_id` int(11) NOT NULL,
  `terminal_no` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  PRIMARY KEY (`lounge_id`,`terminal_no`,`lounge_terminal_id`),
  KEY `lounge_terminal_id` (`lounge_terminal_id`),
  CONSTRAINT `Lounge_ibfk_1` FOREIGN KEY (`lounge_id`) REFERENCES `LoungeCat` (`lounge_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lounge`
--

LOCK TABLES `Lounge` WRITE;
/*!40000 ALTER TABLE `Lounge` DISABLE KEYS */;
INSERT INTO `Lounge` VALUES (2,1,1,12,6),(5,1,5,6,2),(3,1,7,6,1),(7,2,1,6,0),(1,2,3,6,3),(8,2,4,6,0),(6,2,7,12,10),(4,2,9,6,5);
/*!40000 ALTER TABLE `Lounge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoungeCat`
--

DROP TABLE IF EXISTS `LoungeCat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoungeCat` (
  `lounge_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`lounge_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoungeCat`
--

LOCK TABLES `LoungeCat` WRITE;
/*!40000 ALTER TABLE `LoungeCat` DISABLE KEYS */;
INSERT INTO `LoungeCat` VALUES (1,'Business'),(2,'First Class');
/*!40000 ALTER TABLE `LoungeCat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parking`
--

DROP TABLE IF EXISTS `Parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Parking` (
  `lot_id` int(11) NOT NULL AUTO_INCREMENT,
  `terminal_no` int(11) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  PRIMARY KEY (`lot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parking`
--

LOCK TABLES `Parking` WRITE;
/*!40000 ALTER TABLE `Parking` DISABLE KEYS */;
INSERT INTO `Parking` VALUES (1,1,100,25),(2,1,100,45),(3,7,300,14),(4,5,300,58),(5,6,50,10),(6,3,50,2),(7,3,250,127),(8,3,300,0),(9,3,300,0),(10,10,100,85);
/*!40000 ALTER TABLE `Parking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Passenger`
--

DROP TABLE IF EXISTS `Passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Passenger` (
  `passenger_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `passenger_type` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  PRIMARY KEY (`passenger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Passenger`
--

LOCK TABLES `Passenger` WRITE;
/*!40000 ALTER TABLE `Passenger` DISABLE KEYS */;
INSERT INTO `Passenger` VALUES (1,'Britanni','Newman','Adult ','auctor@velquamdignissim.co.uk','1-340-304-7191'),(2,'Mark','Hurst','Adult ','nibh@Proin.ca','1-564-921-3514'),(3,'Steel','Spencer','Adult ','dis.parturient.montes@Vestibulumuteros.org','1-511-183-3258'),(4,'Mallory','Lowe','Adult ','Donec@Nullasempertellus.co.uk','1-896-567-3069'),(5,'Maxwell','Savage',' Child','quam@tinciduntnunc.ca','1-167-351-5067'),(6,'Kasper','Golden','Adult ','nonummy.Fusce@ProinmiAliquam.ca','1-572-589-3195'),(7,'Jael','Watts',' Child','eget.varius.ultrices@ullamcorpernisl.org','1-248-925-1718'),(8,'Jordan','Mccarthy',' Child','gravida.sit@sedtortor.edu','1-808-997-4567'),(9,'Illana','Christian',' Child','semper.et.lacinia@nislelementum.org','1-191-284-3419'),(10,'Hashim','Mccarthy',' Child','sapien@habitant.net','1-140-155-7403'),(11,'Allistair','Holmes','Adult ','purus.sapien@malesuada.com','1-507-449-8791'),(12,'Octavia','Skinner','Adult ','eros.Nam.consequat@fringillaeuismodenim.co.uk','1-531-953-1724'),(13,'Tucker','Pruitt',' Child','nunc@nunc.net','1-450-621-5874'),(14,'Hyacinth','Stanton','Adult ','erat@amalesuadaid.edu','1-176-878-4246'),(15,'Marsden','Parker',' Child','ligula.consectetuer.rhoncus@Utsemper.net','1-129-178-4022'),(16,'Leah','Harmon','Adult ','orci.Donec@Mauris.edu','1-435-626-2187'),(17,'Aristotle','Wright','Adult ','nibh.sit@Donec.com','1-468-815-6842'),(18,'Jane','Marks','Adult ','porta@temporbibendum.ca','1-212-381-3923'),(19,'Lacey','Cannon','Adult ','eros.nec@senectuset.co.uk','1-725-419-0174'),(20,'Emma','Chan','Adult ','mauris.sagittis.placerat@magnaa.ca','1-842-311-8962');
/*!40000 ALTER TABLE `Passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PassengerFlight`
--

DROP TABLE IF EXISTS `PassengerFlight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PassengerFlight` (
  `flight_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `pnr_no` int(11) NOT NULL,
  `ticket_no` int(11) NOT NULL,
  `ticket_class` varchar(15) NOT NULL,
  `seat_no` varchar(5) NOT NULL,
  `meal_type` enum('veg','non-veg') NOT NULL,
  PRIMARY KEY (`flight_id`,`passenger_id`,`pnr_no`),
  KEY `passenger_id` (`passenger_id`),
  CONSTRAINT `PassengerFlight_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `Flight` (`flight_id`),
  CONSTRAINT `PassengerFlight_ibfk_2` FOREIGN KEY (`passenger_id`) REFERENCES `Passenger` (`passenger_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PassengerFlight`
--

LOCK TABLES `PassengerFlight` WRITE;
/*!40000 ALTER TABLE `PassengerFlight` DISABLE KEYS */;
INSERT INTO `PassengerFlight` VALUES (1,15,772054,2147483647,'Business','12F','non-veg'),(3,7,639174,2147383677,'Economy','15B','non-veg'),(4,8,626900,2147483646,'Economy','16B','veg'),(5,1,517833,2147483645,'Business','28C','non-veg'),(5,4,508527,2147483647,'Business','12E','non-veg'),(5,14,477363,2147483647,'Economy','19F','veg'),(5,16,433845,2147483647,'Economy','15D','veg'),(6,9,415897,2147483644,'Economy','8C','veg'),(7,14,384272,2147483615,'Business','7D','veg'),(8,2,357249,2147483610,'Business','1A','veg'),(8,3,276013,2147483623,'Economy','2B','veg'),(10,15,207011,2147483622,'Business','2B','non-veg'),(12,6,203514,2147483615,'Business','5C','veg'),(13,13,202747,2147483619,'Economy','4C','non-veg'),(14,17,157111,2147483629,'Economy','6C','veg'),(15,5,125605,2147483633,'Business','8F','veg'),(15,17,125705,2147483647,'Business','9F','veg'),(17,12,125805,2147483613,'Business','18D','veg'),(18,9,125905,2147483647,'Economy','9A','veg'),(19,11,125405,2147473647,'Business','8D','veg'),(19,18,225505,2147483647,'Business','15D','veg'),(20,19,256999,2145483647,'Business','12B','veg'),(21,5,828885,2112483647,'Economy','13F','veg'),(21,10,823986,2136456647,'Business','11D','veg'),(21,17,823987,2119483647,'Economy','14C','veg'),(21,18,823988,1233155647,'Economy','15F','veg'),(21,20,823989,2147483647,'Economy','7A','non-veg');
/*!40000 ALTER TABLE `PassengerFlight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShopRestCat`
--

DROP TABLE IF EXISTS `ShopRestCat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShopRestCat` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShopRestCat`
--

LOCK TABLES `ShopRestCat` WRITE;
/*!40000 ALTER TABLE `ShopRestCat` DISABLE KEYS */;
INSERT INTO `ShopRestCat` VALUES (1,'Panda Express','Restaurant'),(2,'Moe\'s Southwest Grill','Restaurant'),(3,'Papa John','Restaurant'),(4,'Krispy Kreme','Restaurant'),(5,'Sbarro','Restaurant'),(6,'Tom\'s Souvenir Shop','Shop'),(7,'Cinnabon','Restaurant'),(8,'Subway','Restaurant'),(9,'Bojangles','Store'),(10,'Dukin Donuts','Restaurant');
/*!40000 ALTER TABLE `ShopRestCat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShopsRestaurants`
--

DROP TABLE IF EXISTS `ShopsRestaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShopsRestaurants` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `terminal_no` int(11) NOT NULL,
  `area` varchar(255) NOT NULL,
  PRIMARY KEY (`shop_id`,`terminal_no`),
  CONSTRAINT `ShopsRestaurants_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `ShopRestCat` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShopsRestaurants`
--

LOCK TABLES `ShopsRestaurants` WRITE;
/*!40000 ALTER TABLE `ShopsRestaurants` DISABLE KEYS */;
INSERT INTO `ShopsRestaurants` VALUES (1,10,'C'),(2,3,'A'),(3,4,'C'),(4,3,'A'),(4,7,'A'),(5,8,'C'),(6,1,'B'),(7,9,'D'),(8,6,'B'),(9,5,'D'),(10,8,'A');
/*!40000 ALTER TABLE `ShopsRestaurants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-10 15:45:32
