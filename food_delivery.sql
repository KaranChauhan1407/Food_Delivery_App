-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: class12project
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `burger_king`
--

DROP TABLE IF EXISTS `burger_king`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `burger_king` (
  `ID` int NOT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_king`
--

LOCK TABLES `burger_king` WRITE;
/*!40000 ALTER TABLE `burger_king` DISABLE KEYS */;
INSERT INTO `burger_king` VALUES (1,'Whopper',159),(2,'Chicken Whopper',179),(3,'Veg Whopper',149),(4,'Paneer King Burger',139),(5,'Chicken Tandoor Grill',169),(6,'Crispy Veg Burger',89),(7,'Crispy Chicken Burger',109),(8,'King Fries (Medium)',89),(9,'King Fries (Large)',109),(10,'Pepsi (Medium)',60),(11,'Pepsi (Large)',80),(12,'Choco Lava Cake',99),(13,'Vanilla Softy',30),(14,'Cheese Whopper',179),(15,'Chicken Double Patty Burger',189),(16,'Whopper Meal',299),(17,'Chicken Whopper Meal',319),(18,'Veg Whopper Meal',279),(19,'Chicken Strips Meal',249),(20,'Crispy Veg Meal',199),(21,'Crispy Chicken Meal',229),(22,'Onion Rings',99),(23,'Cheesy Fries',129),(24,'Chicken Nuggets (6 pieces)',149),(25,'Chicken Nuggets (10 pieces)',199),(26,'Chocolate Mousse Cup',89),(27,'Hot Brownie with Ice Cream',129),(28,'Berry Blast Sundae',99),(29,'Soft Serve Cup',50),(30,'Mango Smoothie',120),(31,'Strawberry Smoothie',120),(32,'Cold Coffee',99),(33,'Iced Tea',80),(34,'Kids Veg Meal',149),(35,'Kids Chicken Meal',179);
/*!40000 ALTER TABLE `burger_king` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cafe_manhattan`
--

DROP TABLE IF EXISTS `cafe_manhattan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafe_manhattan` (
  `ID` int NOT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafe_manhattan`
--

LOCK TABLES `cafe_manhattan` WRITE;
/*!40000 ALTER TABLE `cafe_manhattan` DISABLE KEYS */;
INSERT INTO `cafe_manhattan` VALUES (1,'Bruschetta',180),(2,'Stuffed Mushrooms',220),(3,'Garlic Bread',150),(4,'Chicken Wings',250),(5,'Cheese Platter',300),(6,'Vegetable Lasagna',350),(7,'Caprese Salad',220),(8,'Spinach Ravioli',330),(9,'Margherita Pizza',300),(10,'Pesto Pasta',340),(11,'Grilled Chicken Breast',400),(12,'Beef Stroganoff',420),(13,'Seafood Paella',450),(14,'Chicken Alfredo',360),(15,'Barbecue Ribs',480),(16,'Club Sandwich',250),(17,'Caesar Wrap',270),(18,'Turkey Panini',290),(19,'Veggie Wrap',230),(20,'Chicken Club Wrap',280),(21,'Greek Salad',200),(22,'Caesar Salad',220),(23,'Quinoa Salad',240),(24,'Nicoise Salad',250),(25,'Avocado Salad',230),(26,'Tiramisu',180),(27,'Cheesecake',200),(28,'Chocolate Fondant',220),(29,'Panna Cotta',190),(30,'Apple Crumble',170),(31,'Espresso',100),(32,'Latte',150),(33,'Cappuccino',160),(34,'Iced Coffee',180),(35,'Fresh Orange Juice',120);
/*!40000 ALTER TABLE `cafe_manhattan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dominos`
--

DROP TABLE IF EXISTS `dominos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dominos` (
  `ID` int NOT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dominos`
--

LOCK TABLES `dominos` WRITE;
/*!40000 ALTER TABLE `dominos` DISABLE KEYS */;
INSERT INTO `dominos` VALUES (1,'Margherita (Regular)',99),(2,'Farmhouse (Medium)',399),(3,'Peppy Paneer (Medium)',449),(4,'Mexican Green Wave (Large)',599),(5,'Deluxe Veggie (Large)',649),(6,'Paneer Makhani (Medium)',499),(7,'Veg Extravaganza (Large)',699),(8,'Chicken Golden Delight (Medium)',549),(9,'Chicken Dominator (Large)',799),(10,'Pepper Barbecue Chicken (Medium)',479),(11,'Garlic Breadsticks',129),(12,'Cheesy Dip',25),(13,'Stuffed Garlic Bread',159),(14,'Taco Mexicana (Non-Veg)',169),(15,'Taco Mexicana (Veg)',149),(16,'Chicken Wings (6 pieces)',199),(17,'Chicken Kickers (4 pieces)',149),(18,'Coke (500 ml)',60),(19,'Coke (1.25 l)',80),(20,'Sprite (500 ml)',60),(21,'Sprite (1.25 l)',80),(22,'Choco Lava Cake',99),(23,'Butterscotch Mousse Cake',90),(24,'Brownie Fantasy',99),(25,'Pizza Mania Combo (4 Regular Pizzas)',399),(26,'Everyday Value Offer (2 Medium Pizzas)',499),(27,'Feast for 2',699),(28,'Feast for 4',1199),(29,'Cheese n Corn (Regular)',129),(30,'Cheese n Corn (Medium)',299),(31,'Pepper Barbecue & Onion (Medium)',469),(32,'Chicken Fiesta (Large)',759),(33,'Veggie Paradise (Medium)',429),(34,'Indi Tandoori Paneer (Large)',799),(35,'Zesty Chicken Mexicana (Medium)',589),(36,'Non-Veg Supreme (Large)',849),(37,'Roasted Chicken Wings (6 pieces)',229),(38,'Spicy Baked Chicken (4 pieces)',199),(39,'Crinkle Fries',99),(40,'Potato Wedges',119),(41,'Choco Brownie Fantasy',119),(42,'Choco Dip',20),(43,'Choco Chip Lava Cake',110),(44,'Mega Saver (2 Large Pizzas)',1199),(45,'Ultimate Combo (3 Regular Pizzas + 3 Sides)',999),(46,'Weekend Special (4 Medium Pizzas + 4 Beverages)',1499),(47,'Fanta (500 ml)',60),(48,'Fanta (1.25 l)',80),(49,'Minute Maid Pulpy Orange (500 ml)',65),(50,'Bottled Water (1 l)',20);
/*!40000 ALTER TABLE `dominos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `haldiram`
--

DROP TABLE IF EXISTS `haldiram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `haldiram` (
  `ID` int NOT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haldiram`
--

LOCK TABLES `haldiram` WRITE;
/*!40000 ALTER TABLE `haldiram` DISABLE KEYS */;
INSERT INTO `haldiram` VALUES (1,'Rasgulla (1 Kg)',220),(2,'Gulab Jamun (1 Kg)',250),(3,'Kaju Katli (500 g)',550),(4,'Soan Papdi (500 g)',180),(5,'Motichoor Ladoo (1 Kg)',300),(6,'Bhujia Sev (200 g)',60),(7,'Aloo Bhujia (200 g)',65),(8,'Navratan Mixture (200 g)',70),(9,'Khatta Meetha (200 g)',65),(10,'Moong Dal (200 g)',70),(11,'Samosa (per piece)',25),(12,'Kachori (per piece)',30),(13,'Paneer Pakoda (per piece)',40),(14,'Dhokla (per piece)',35),(15,'Raj Kachori',90),(16,'Aloo Tikki Chaat',90),(17,'Papdi Chaat',85),(18,'Dahi Bhalla',90),(19,'Pani Puri',70),(20,'Sev Puri',85),(21,'Masala Dosa',120),(22,'Idli Sambhar',80),(23,'Medu Vada',90),(24,'Uttapam',110),(25,'Rava Dosa',130),(26,'Lassi (250 ml)',50),(27,'Chaas (250 ml)',40),(28,'Badam Milk (250 ml)',60),(29,'Jal Jeera (250 ml)',30),(30,'Thandai (250 ml)',70),(31,'Rabri',100),(32,'Malpua',120),(33,'Gajar Ka Halwa',150),(34,'Jalebi (500 g)',200),(35,'Kulfi',70),(36,'Chole Bhature',140),(37,'Pav Bhaji',130),(38,'Rajma Chawal',120),(39,'Veg Thali',250),(40,'Paneer Butter Masala',200),(41,'Peda (500 g)',240),(42,'Kalakand (500 g)',260),(43,'Milk Cake (500 g)',280),(44,'Sandesh (500 g)',300),(45,'Chum Chum (1 Kg)',320),(46,'Masala Peanuts (200 g)',75),(47,'Chana Jor Garam (200 g)',70),(48,'Bikaneri Bhujia (200 g)',65),(49,'Mini Samosa (200 g)',80),(50,'Chakli (200 g)',85),(51,'Dhokla Platter',120),(52,'Paneer Tikka',150),(53,'Chole Tikki',90),(54,'Vada Pav',50),(55,'Paneer Roll',100),(56,'Bhel Puri',85),(57,'Raj Kachori Chaat',100),(58,'Dahi Puri',90),(59,'Aloo Chaat',85),(60,'Mixed Chaat',95),(61,'Plain Dosa',100),(62,'Onion Uttapam',120),(63,'Masala Idli',110),(64,'Rasam Vada',100),(65,'Paneer Dosa',150),(66,'Mango Lassi (250 ml)',60),(67,'Rose Milk (250 ml)',55),(68,'Kesar Badam Milk (250 ml)',70),(69,'Masala Chai (Cup)',25),(70,'Filter Coffee (Cup)',30),(71,'Mango Kulfi',80),(72,'Phirni',90),(73,'Moong Dal Halwa',130),(74,'Rasgulla Cake',150),(75,'Coconut Barfi',120),(76,'Puri Sabji',100),(77,'Paneer Paratha',120),(78,'Dal Makhani',140),(79,'Matar Paneer',160),(80,'Vegetable Pulao',110);
/*!40000 ALTER TABLE `haldiram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kali_ghata`
--

DROP TABLE IF EXISTS `kali_ghata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kali_ghata` (
  `ID` int NOT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kali_ghata`
--

LOCK TABLES `kali_ghata` WRITE;
/*!40000 ALTER TABLE `kali_ghata` DISABLE KEYS */;
INSERT INTO `kali_ghata` VALUES (1,'Paneer Tikka',250),(2,'Hara Bhara Kebab',200),(3,'Chicken Seekh Kebab',300),(4,'Mutton Galouti Kebab',350),(5,'Tandoori Chicken',400),(6,'Paneer Butter Masala',320),(7,'Dal Makhani',280),(8,'Aloo Gobi',250),(9,'Mixed Veg Curry',270),(10,'Palak Paneer',330),(11,'Butter Chicken',380),(12,'Mutton Rogan Josh',420),(13,'Chicken Biryani',350),(14,'Fish Curry',390),(15,'Prawn Masala',450),(16,'Butter Naan',50),(17,'Tandoori Roti',40),(18,'Lachha Paratha',60),(19,'Missi Roti',55),(20,'Garlic Naan',70),(21,'Gulab Jamun',80),(22,'Rasmalai',90),(23,'Kheer',85),(24,'Kulfi',100),(25,'Jalebi',75),(26,'Masala Chai',40),(27,'Lassi',60),(28,'Cold Coffee',80),(29,'Fresh Lime Soda',70),(30,'Mineral Water (1 l)',30),(31,'Paneer Malai Tikka',270),(32,'Veg Seekh Kebab',220),(33,'Tandoori Prawns',480),(34,'Murgh Malai Tikka',330),(35,'Dahi Ke Kebab',240),(36,'Shahi Paneer',340),(37,'Baingan Bharta',260),(38,'Kadhai Paneer',350),(39,'Chana Masala',280),(40,'Methi Malai Mutter',300),(41,'Chicken Handi',400),(42,'Mutton Keema',450),(43,'Fish Tikka Masala',420),(44,'Chicken Changezi',430),(45,'Lamb Vindaloo',460),(46,'Stuffed Kulcha',80),(47,'Peshawari Naan',90),(48,'Onion Kulcha',75),(49,'Roomali Roti',60),(50,'Plain Paratha',50),(51,'Malpua',120),(52,'Phirni',110),(53,'Rabri',130),(54,'Moong Dal Halwa',150),(55,'Gajar Ka Halwa',140),(56,'Buttermilk',40),(57,'Masala Soda',50),(58,'Sweet Lassi',60),(59,'Badam Milk',90),(60,'Jaljeera',45);
/*!40000 ALTER TABLE `kali_ghata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kfc`
--

DROP TABLE IF EXISTS `kfc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kfc` (
  `ID` int NOT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kfc`
--

LOCK TABLES `kfc` WRITE;
/*!40000 ALTER TABLE `kfc` DISABLE KEYS */;
INSERT INTO `kfc` VALUES (1,'8 Pc Hot & Crispy Chicken',699),(2,'12 Pc Boneless Strips',549),(3,'6 Pc Smoky Grilled Chicken',649),(4,'Ultimate Savings Bucket',749),(5,'Variety Bucket for 2',599),(6,'Zinger Burger',169),(7,'Double Down Burger',249),(8,'Classic Chicken Burger',149),(9,'Veg Zinger Burger',139),(10,'Chicken Biggie',199),(11,'Classic Chicken Rice Bowl',179),(12,'Smoky Grilled Rice Bowl',199),(13,'Veg Rice Bowl',159),(14,'Double Chicken Rice Bowl',219),(15,'Popcorn Chicken (Regular)',119),(16,'Peri Peri Fries (Large)',99),(17,'Chicken Strips (3 Pc)',149),(18,'Hot Wings (6 Pc)',249),(19,'Chicken Momos',129),(20,'Pepsi Can (330 ml)',60),(21,'7Up Can (330 ml)',60),(22,'Mirinda Can (330 ml)',60),(23,'Mountain Dew Can (330 ml)',60),(24,'Iced Tea (500 ml)',99),(25,'Choco Lava Cake',119),(26,'Vanilla Soft Serve Cone',50),(27,'Chocolate Mousse',99),(28,'Brownie Sundae',129),(29,'Zinger Burger Meal',299),(30,'2 Pc Chicken Meal',349),(31,'Ultimate Savings Meal',599),(32,'Rice Bowl & Popcorn Combo',349),(33,'Big 12 Meal',899),(34,'Family Feast Bucket',1099),(35,'Crispy Tenders Bucket',549),(36,'Wings Bucket Meal',799),(37,'Ultimate Chicken Bucket',899),(38,'Triple Zinger Burger',269),(39,'Spicy Chicken Burger',189),(40,'Fiery Grilled Chicken Burger',239),(41,'Paneer Zinger Burger',149),(42,'Fiery Chicken Rice Bowl',209),(43,'Classic Veg Rice Bowl',179),(44,'Fiery Grilled Rice Bowl',219),(45,'Cheesy Popcorn Chicken',149),(46,'Spicy Potato Wedges',99),(47,'Veggie Strips (3 Pc)',139),(48,'Chicken Nuggets (6 Pc)',189),(49,'Hot Wings (10 Pc)',399),(50,'Pepsi Bottle (500 ml)',50),(51,'Diet Pepsi Can (330 ml)',60),(52,'Tropicana Orange Juice',99),(53,'Lemonade',60),(54,'Chocolate Shake',120),(55,'Butterscotch Mousse',99),(56,'Caramel Sundae',129),(57,'Chocolate Chip Cookie',49),(58,'Soft Serve Sundae',79),(59,'Classic Zinger Meal',319),(60,'Chicken Popcorn Meal',329),(61,'Grilled Chicken Meal',369),(62,'Chicken Strips & Rice Combo',369),(63,'Family Feast Meal',1199);
/*!40000 ALTER TABLE `kfc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcdonalds`
--

DROP TABLE IF EXISTS `mcdonalds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcdonalds` (
  `ID` int DEFAULT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcdonalds`
--

LOCK TABLES `mcdonalds` WRITE;
/*!40000 ALTER TABLE `mcdonalds` DISABLE KEYS */;
INSERT INTO `mcdonalds` VALUES (1,'McAloo Tikki Burger',50),(2,'Chicken McGrill',70),(3,'McVeggie',80),(4,'McSpicy Paneer',120),(5,'McSpicy Chicken',130),(6,'Filet-O-Fish',150),(7,'McChicken',110),(8,'Big Spicy Paneer Wrap',200),(9,'Big Spicy Chicken Wrap',210),(10,'Fries (Medium)',65),(11,'Fries (Large)',80),(12,'Coke (Medium)',50),(13,'Coke (Large)',60),(14,'McFlurry Oreo',100),(15,'McFlurry Choco Crunch',110),(16,'Veg Pizza McPuff',45),(17,'Chicken McNuggets (6 pieces)',150),(18,'Chicken Maharaja Mac',180),(19,'Veg Maharaja Mac',170),(20,'McEgg',40),(21,'Egg McMuffin',60),(22,'Sausage McMuffin',90),(23,'Hash Browns',45),(24,'McCafe Cappuccino (Small)',120),(25,'McCafe Cappuccino (Medium)',150),(26,'McCafe Latte (Small)',130),(27,'McCafe Latte (Medium)',160),(28,'Iced Coffee',110),(29,'Chocolate Brownie Sundae',90),(30,'Vanilla Soft Serve Cone',30),(31,'Hot Chocolate',100),(32,'Chicken Kebab Wrap',120),(33,'Veg Kebab Wrap',110),(34,'McSaver Chicken McGrill Meal',150),(35,'McSaver Veg Pizza McPuff Meal',120),(36,'Chicken Strips (3 pieces)',130),(37,'Chicken Strips (6 pieces)',220),(38,'Peri Peri Fries',80),(39,'Veg McCurry Pan',120),(40,'McSpicy Paneer Nuggets',140);
/*!40000 ALTER TABLE `mcdonalds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinch_of_spice`
--

DROP TABLE IF EXISTS `pinch_of_spice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pinch_of_spice` (
  `ID` int NOT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinch_of_spice`
--

LOCK TABLES `pinch_of_spice` WRITE;
/*!40000 ALTER TABLE `pinch_of_spice` DISABLE KEYS */;
INSERT INTO `pinch_of_spice` VALUES (1,'Paneer Tikka',250),(2,'Chicken Tikka',300),(3,'Hara Bhara Kebab',220),(4,'Fish Amritsari',350),(5,'Veg Seekh Kebab',240),(6,'Paneer Butter Masala',320),(7,'Dal Makhani',280),(8,'Aloo Gobi',240),(9,'Chole Bhature',260),(10,'Vegetable Biryani',300),(11,'Butter Chicken',360),(12,'Mutton Rogan Josh',420),(13,'Chicken Biryani',340),(14,'Fish Curry',380),(15,'Lamb Korma',450),(16,'Butter Naan',50),(17,'Garlic Naan',60),(18,'Tandoori Roti',40),(19,'Laccha Paratha',70),(20,'Stuffed Kulcha',80),(21,'Gulab Jamun',100),(22,'Rasmalai',120),(23,'Gajar Ka Halwa',140),(24,'Kulfi Faluda',160),(25,'Shahi Tukda',150),(26,'Masala Chai',50),(27,'Lassi',70),(28,'Buttermilk',60),(29,'Cold Coffee',90),(30,'Fresh Lime Soda',80);
/*!40000 ALTER TABLE `pinch_of_spice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza_hut`
--

DROP TABLE IF EXISTS `pizza_hut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza_hut` (
  `ID` int NOT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza_hut`
--

LOCK TABLES `pizza_hut` WRITE;
/*!40000 ALTER TABLE `pizza_hut` DISABLE KEYS */;
INSERT INTO `pizza_hut` VALUES (1,'Classic Margherita (Regular)',129),(2,'Paneer Vegorama (Medium)',449),(3,'Tandoori Paneer (Large)',699),(4,'Country Feast (Medium)',479),(5,'Veggie Supreme (Large)',799),(6,'Chicken Supreme (Medium)',549),(7,'Triple Chicken Feast (Large)',849),(8,'Chicken Tikka Supreme (Medium)',569),(9,'Veggie Lover (Medium)',499),(10,'Double Cheese (Regular)',169),(11,'Garlic Bread Spicy Supreme',159),(12,'Cheesy Garlic Bread',169),(13,'Spicy Baked Chicken Wings',229),(14,'Chicken Crunchy Fingers',199),(15,'Potato Poppers',99),(16,'Pepsi (500 ml)',60),(17,'Pepsi (1.25 l)',80),(18,'7Up (500 ml)',60),(19,'7Up (1.25 l)',80),(20,'Mountain Dew (500 ml)',60),(21,'Choco Volcano Cake',99),(22,'Vanilla Soft Serve',50),(23,'Triple Chocolate Mousse',119),(24,'Choco Chip Cookie',60),(25,'Classic Meal for 2',599),(26,'Supreme Meal for 4',1199),(27,'Family Feast',1599),(28,'Veggie Lovers Combo',899),(29,'Chicken Lovers Combo',999);
/*!40000 ALTER TABLE `pizza_hut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restraunts`
--

DROP TABLE IF EXISTS `restraunts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restraunts` (
  `ID` int DEFAULT NULL,
  `Names` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restraunts`
--

LOCK TABLES `restraunts` WRITE;
/*!40000 ALTER TABLE `restraunts` DISABLE KEYS */;
INSERT INTO `restraunts` VALUES (1,'Singla'),(2,'Mcdonalds'),(3,'Burger_King'),(4,'Dominos'),(5,'Pizza_Hut'),(6,'Kali_Ghata'),(7,'KFC'),(8,'Haldiram'),(9,'Pinch_of_Spice'),(10,'Cafe_Manhattan');
/*!40000 ALTER TABLE `restraunts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singla`
--

DROP TABLE IF EXISTS `singla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `singla` (
  `ID` int DEFAULT NULL,
  `Item` varchar(200) DEFAULT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singla`
--

LOCK TABLES `singla` WRITE;
/*!40000 ALTER TABLE `singla` DISABLE KEYS */;
INSERT INTO `singla` VALUES (1,'Rice',120),(2,'Veg Biryani',180),(3,'Masala Dosa',120),(4,'Mysore Masala Dosa',150),(5,'Sambar Idli',80),(6,'Dal Makhani',190),(7,'Mix Vegetables',200),(8,'Mushroom Do-Pyaza',225),(9,'Mutter Paneer',210),(10,'Kadhai Paneer',225),(11,'Shahi Paneer',210),(12,'Paneer Do-Pyaza',225),(13,'Choley Bhature',70),(14,'Roti',12),(15,'Plain Naan',35),(16,'Butter Naan',45),(17,'Garlic Naan',50),(18,'Paneer Tikka',180),(19,'Honey Chilli Potato',160),(20,'Veg Manchurian Dry',170);
/*!40000 ALTER TABLE `singla` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-26 17:06:03
