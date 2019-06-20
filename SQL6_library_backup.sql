CREATE DATABASE  IF NOT EXISTS `our_recipes` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `our_recipes`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: our_recipes
-- ------------------------------------------------------
-- Server version	5.7.25-log

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
-- Table structure for table `chef`
--

DROP TABLE IF EXISTS `chef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chef` (
  `chef_id` int(11) NOT NULL,
  `first_name` char(25) DEFAULT NULL,
  `last_name` char(25) DEFAULT NULL,
  PRIMARY KEY (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef`
--

LOCK TABLES `chef` WRITE;
/*!40000 ALTER TABLE `chef` DISABLE KEYS */;
INSERT INTO `chef` VALUES (1,'Aaron','Hernandez'),(2,'Lionel','Messo'),(3,'Yuri','Elkaim'),(4,'Rachele','Yuri'),(5,'Elkaim','Ray'),(6,'Alton','Rex'),(7,'Nasser','Albanna'),(8,'Majed','Albanna'),(9,'Yasmeen','Albanna'),(10,'Ray','Ali'),(11,'Rachel','Alton'),(12,'James','Milner'),(13,'Mohammed','Salah'),(14,'Rashed','Albanna'),(15,'Alison','Becker');
/*!40000 ALTER TABLE `chef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `ingredient_id` int(11) NOT NULL,
  `ingredient_name` char(25) DEFAULT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'noodles'),(2,'cheese'),(3,'potatoes'),(4,'onions'),(5,'chicken'),(6,'chocolate'),(7,'pepper'),(8,'salmon'),(9,'shrimp'),(10,'broccoli'),(11,'cauliflower'),(12,'strawberries'),(13,'garlic'),(14,'rice'),(15,'lamb'),(16,'olives'),(17,'olive oil'),(18,'apples'),(19,'beef'),(20,'oatmeal'),(21,'coconut oil'),(22,'powdered sugar'),(23,'mustard'),(24,'salt'),(25,'sweet potatoes'),(26,'maple syrup'),(27,'eggs'),(28,'mushrooms'),(29,'flour'),(30,'baking soda'),(31,'nutmeg'),(32,'milk'),(33,'cucumber'),(34,'oregano'),(35,'butter'),(36,'tomatoes'),(37,'pecans'),(38,'vegetable oil'),(39,'lettuce'),(40,'kale'),(41,'lemon juice'),(42,'blueberries'),(43,'avocadoes'),(44,'almond milk'),(45,'vanilla extract'),(46,'carrots'),(47,'banana'),(48,'filet mignon');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurements`
--

DROP TABLE IF EXISTS `measurements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurements` (
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `quantity` float DEFAULT NULL,
  `units` tinytext,
  KEY `recipe_id_idx` (`recipe_id`),
  KEY `ingredient_id_idx` (`ingredient_id`),
  CONSTRAINT `ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`ingredient_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurements`
--

LOCK TABLES `measurements` WRITE;
/*!40000 ALTER TABLE `measurements` DISABLE KEYS */;
INSERT INTO `measurements` VALUES (1,13,4,'cloves'),(1,1,2,'cups'),(2,7,0.5,'teaspoons'),(2,19,4,'balls'),(3,35,0.5,'cups'),(3,36,4,'slices'),(4,27,3,'haughes'),(4,37,2,'cups '),(5,24,0.25,'teaspoons'),(5,8,0.25,'cups'),(6,24,0.125,'teaspoons'),(6,6,4,'squares'),(7,32,0.25,'cups'),(7,31,0.5,'teaspoons'),(8,38,1,'tablespoons'),(8,29,3,'tablespoons'),(9,24,1,'teaspoons'),(9,3,2,'units'),(10,27,4,'haughes'),(10,4,6,'slices'),(11,6,14,'ounces'),(11,24,0.25,'teaspoons'),(12,17,6,'tablespoons'),(12,36,2,'units'),(13,22,2,'teaspoons'),(13,35,0.75,'cups'),(14,17,2,'tablespoons'),(14,24,1,'teaspoons'),(15,23,1,'teaspoons'),(15,17,9,'tablespoons'),(16,39,3,'cups'),(16,36,0.25,'cups'),(17,36,1,'cups'),(17,39,1,'heads'),(18,44,1,'cups'),(18,41,1,'cups'),(19,44,0.5,'cups'),(19,42,0.5,'cups'),(20,43,3,'units'),(20,36,2,'units'),(21,44,0.5,'cups'),(21,45,0.125,'teaspoons'),(22,44,1,'cups'),(22,26,1,'tablespoons'),(23,33,1,'cups'),(23,46,1,'cups'),(24,32,0.5,'cups'),(24,45,0.5,'teaspoons'),(25,46,2,'cups'),(25,41,0.25,'cups'),(26,17,4,'tablespoons'),(26,41,2,'tablespoons'),(27,42,0.5,'cups'),(27,47,1,'units'),(28,42,6,'ounces'),(28,41,1,'tablespoons'),(29,37,0.65,'cups'),(29,17,4.5,'tablespoons'),(30,38,1,'tablespoons'),(30,36,0.33,'cups'),(31,45,0.5,'teaspoons'),(31,24,1,'dash'),(32,38,1,'tablespoons'),(32,4,0.5,'cups'),(33,26,0.75,'cups'),(33,32,0.75,'cups'),(34,38,2,'tablespoons'),(34,35,4,'tablespoons'),(35,35,1,'tablespoons'),(35,48,0.5,'pounds'),(36,32,2,'cups'),(36,24,0.5,'teaspoons'),(37,47,1,'units'),(37,42,0.5,'cups'),(38,32,1,'cups'),(38,41,1,'teaspoons'),(39,35,12,'ounces'),(39,41,1,'teaspoons');
/*!40000 ALTER TABLE `measurements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `media_link` tinytext,
  PRIMARY KEY (`media_id`),
  KEY `recipe_id_idx` (`recipe_id`),
  CONSTRAINT `recipe1_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,'https://video.vice.com/en_us/video/munchies-Kohsary/5c911211be4077317d46b141'),(2,2,'https://video.vice.com/en_us/video/munchies-Burger/5c911211be4077317d46b141'),(3,3,'https://video.vice.com/en_us/video/munchies-Tomato_Basil_Soup_(La_Madeleine_copycat)/5c911211be4077317d46b141'),(4,4,'https://video.vice.com/en_us/video/munchies-John_Thornes_Pecan_Pie/5c911211be4077317d46b141'),(5,5,'https://video.vice.com/en_us/video/munchies-Smoked_Salmon_Ebelskivers/5c911211be4077317d46b142'),(6,6,'https://video.vice.com/en_us/video/munchies-Godiva_Angel_Pie/5c911211be4077317d46b143'),(7,7,'https://video.vice.com/en_us/video/munchies-Spaetzle/5c911211be4077317d46b144'),(8,8,'https://video.vice.com/en_us/video/munchies-Pot_Roast_Carbonnade/5c911211be4077317d46b145'),(9,9,'https://video.vice.com/en_us/video/munchies-Old_Fashion_Vegetable_Soup/5c911211be4077317d46b146'),(10,10,'https://video.vice.com/en_us/video/munchies-Onion_Pie/5c911211be4077317d46b147'),(11,11,'https://video.vice.com/en_us/video/munchies-Godiva_Dark_Chocolate_Cheesecake/5c911211be4077317d46b148'),(12,12,'https://video.vice.com/en_us/video/munchies-Greek_Salad/5c911211be4077317d46b149'),(13,13,'https://video.vice.com/en_us/video/munchies-Flaky_Buttermilk_Biscuits/5c911211be4077317d46b150'),(14,14,'https://video.vice.com/en_us/video/munchies-Grilled_Portobello_Mushrooms_Stacked_with_Fresh_Spinach_and/5c911211be4077317d46b151'),(15,15,'https://video.vice.com/en_us/video/munchies-Sherry_Vinaigrette/5c911211be4077317d46b152'),(16,16,'https://video.vice.com/en_us/video/munchies-Margherita_Salad/5c911211be4077317d46b153'),(17,17,'https://video.vice.com/en_us/video/munchies-Mexican_Ensalada/5c911211be4077317d46b154'),(18,18,'https://video.vice.com/en_us/video/munchies-The_Ultimate_Green_Smoothie/5c911211be4077317d46b155'),(19,19,'https://video.vice.com/en_us/video/munchies-Tropical_Nut_Smoothie/5c911211be4077317d46b156'),(20,20,'https://video.vice.com/en_us/video/munchies-Guacamole/5c911211be4077317d46b157'),(21,21,'https://video.vice.com/en_us/video/munchies-Sweet_Almond_Date_Smoothie/5c911211be4077317d46b158'),(22,22,'https://video.vice.com/en_us/video/munchies-The_Ironman_Smoothie/5c911211be4077317d46b159'),(23,23,'https://video.vice.com/en_us/video/munchies-Super_Protein_Salad/5c911211be4077317d46b160'),(24,24,'https://video.vice.com/en_us/video/munchies-The_Shake/5c911211be4077317d46b161'),(25,25,'https://video.vice.com/en_us/video/munchies-Apple_Carrot_Salad/5c911211be4077317d46b162'),(26,26,'https://video.vice.com/en_us/video/munchies-Extreme_Green_Salad/5c911211be4077317d46b163'),(27,27,'https://video.vice.com/en_us/video/munchies-Blueberry_Bliss_Smoothie/5c911211be4077317d46b164'),(28,28,'https://video.vice.com/en_us/video/munchies-Berry_Sauce/5c911211be4077317d46b165'),(29,29,'https://video.vice.com/en_us/video/munchies-Popeyes_Muscle_Salad/5c911211be4077317d46b166'),(30,30,'https://video.vice.com/en_us/video/munchies-Breakfast_Mediterranean_Scramble/5c911211be4077317d46b167'),(31,31,'https://video.vice.com/en_us/video/munchies-Best_Oatmeal_Ever/5c911211be4077317d46b168'),(32,32,'https://video.vice.com/en_us/video/munchies-Lovely_Lentils/5c911211be4077317d46b169'),(33,33,'https://video.vice.com/en_us/video/munchies-Sweet_Mashed_Potatoes/5c911211be4077317d46b170'),(34,34,'https://video.vice.com/en_us/video/munchies-Steakhouse_steaks/5c911211be4077317d46b171'),(35,35,'https://video.vice.com/en_us/video/munchies-Roquefort_Cheese_Sauce/5c911211be4077317d46b172'),(36,36,'https://video.vice.com/en_us/video/munchies-Stove_top_mac_and_cheese/5c911211be4077317d46b173'),(37,27,'https://video.vice.com/en_us/video/munchies-Blueberry_Bliss_Smoothie/5c911211be4077317d46b174'),(38,38,'https://video.vice.com/en_us/video/munchies-Smoked_Salmon_Ebelskivers/5c911211be4077317d46b175'),(39,39,'https://video.vice.com/en_us/video/munchies-Kunafa/5c911211be4077317d46b176'),(40,1,'https://photo.vice.com/en_us/photo/munchies-Kohsary/32658bhdfd'),(41,2,'https://photo.vice.com/en_us/photo/munchies-Burger/32658bhdfd'),(42,3,'https://photo.vice.com/en_us/photo/munchies-Tomato_Basil_Soup_(La_Madeleine_copycat)/32658bhdfd'),(43,4,'https://photo.vice.com/en_us/photo/munchies-John_Thornes_Pecan_Pie/32658bhdfd'),(44,5,'https://photo.vice.com/en_us/photo/munchies-Smoked_Salmon_Ebelskivers/32658bhdfd'),(45,6,'https://photo.vice.com/en_us/photo/munchies-Godiva_Angel_Pie/32658bhdfd'),(46,7,'https://photo.vice.com/en_us/photo/munchies-Spaetzle/32658bhdfd'),(47,8,'https://photo.vice.com/en_us/photo/munchies-Pot_Roast_Carbonnade/32658bhdfd'),(48,9,'https://photo.vice.com/en_us/photo/munchies-Old_Fashion_Vegetable_Soup/32658bhdfd'),(49,10,'https://photo.vice.com/en_us/photo/munchies-Onion_Pie/32658bhdfd'),(50,11,'https://photo.vice.com/en_us/photo/munchies-Godiva_Dark_Chocolate_Cheesecake/32658bhdfd'),(51,12,'https://photo.vice.com/en_us/photo/munchies-Greek_Salad/32658bhdfd'),(52,13,'https://photo.vice.com/en_us/photo/munchies-Flaky_Buttermilk_Biscuits/32658bhdfd'),(53,14,'https://photo.vice.com/en_us/photo/munchies-Grilled_Portobello_Mushrooms_Stacked_with_Fre/32658bhdfd'),(54,15,'https://photo.vice.com/en_us/photo/munchies-Sherry_Vinaigrette/32658bhdfd'),(55,16,'https://photo.vice.com/en_us/photo/munchies-Margherita_Salad/32658bhdfd'),(56,17,'https://photo.vice.com/en_us/photo/munchies-Mexican_Ensalada/32658bhdfd'),(57,18,'https://photo.vice.com/en_us/photo/munchies-The_Ultimate_Green_Smoothie/32658bhdfd'),(58,19,'https://photo.vice.com/en_us/photo/munchies-Tropical_Nut_Smoothie/32658bhdfd'),(59,20,'https://photo.vice.com/en_us/photo/munchies-Guacamole/32658bhdfd'),(60,21,'https://photo.vice.com/en_us/photo/munchies-Sweet_Almond_Date_Smoothie/32658bhdfd'),(61,22,'https://photo.vice.com/en_us/photo/munchies-The_Ironman_Smoothie/32658bhdfd'),(62,23,'https://photo.vice.com/en_us/photo/munchies-Super_Protein_Salad/32658bhdfd'),(63,24,'https://photo.vice.com/en_us/photo/munchies-The_Shake/32658bhdfd'),(64,25,'https://photo.vice.com/en_us/photo/munchies-Apple_Carrot_Salad/32658bhdfd'),(65,26,'https://photo.vice.com/en_us/photo/munchies-Extreme_Green_Salad/32658bhdfd'),(66,27,'https://photo.vice.com/en_us/photo/munchies-Blueberry_Bliss_Smoothie/32658bhdfd'),(67,28,'https://photo.vice.com/en_us/photo/munchies-Berry_Sauce/32658bhdfd'),(68,29,'https://photo.vice.com/en_us/photo/munchies-Popeyes_Muscle_Salad/32658bhdfd'),(69,30,'https://photo.vice.com/en_us/photo/munchies-Breakfast_Mediterranean_Scramble/32658bhdfd'),(70,31,'https://photo.vice.com/en_us/photo/munchies-Best_Oatmeal_Ever/32658bhdfd'),(71,32,'https://photo.vice.com/en_us/photo/munchies-Lovely_Lentils/32658bhdfd'),(72,33,'https://photo.vice.com/en_us/photo/munchies-Sweet_Mashed_Potatoes/32658bhdfd'),(73,34,'https://photo.vice.com/en_us/photo/munchies-Steakhouse_steaks/32658bhdfd'),(74,35,'https://photo.vice.com/en_us/photo/munchies-Roquefort_Cheese_Sauce/32658bhdfd'),(75,36,'https://photo.vice.com/en_us/photo/munchies-Stove_top_mac_and_cheese/32658bhdfd'),(76,37,'https://photo.vice.com/en_us/photo/munchies-Blueberry_Bliss_Smoothie/32658bhdfd'),(77,38,'https://photo.vice.com/en_us/photo/munchies-Smoked_Salmon_Ebelskivers/32658bhdfd'),(78,39,'https://photo.vice.com/en_us/photo/munchies-Kunafa/32658bhdfd');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `numberofingredients`
--

DROP TABLE IF EXISTS `numberofingredients`;
/*!50001 DROP VIEW IF EXISTS `numberofingredients`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `numberofingredients` AS SELECT 
 1 AS `Full Name`,
 1 AS `Recipe Name`,
 1 AS `Number of Ingredients`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `recipe_tag`
--

DROP TABLE IF EXISTS `recipe_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_tag` (
  `recipe_id` int(11) NOT NULL,
  `tag_id` varchar(25) NOT NULL,
  KEY `tag_id_idx` (`tag_id`),
  KEY `recipe_id_idx` (`recipe_id`),
  CONSTRAINT `recipe3_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_tag`
--

LOCK TABLES `recipe_tag` WRITE;
/*!40000 ALTER TABLE `recipe_tag` DISABLE KEYS */;
INSERT INTO `recipe_tag` VALUES (1,'2'),(1,'5'),(1,'16'),(2,'6'),(2,'12'),(2,'14'),(3,'9'),(3,'10'),(4,'5'),(4,'6'),(4,'12'),(5,'1'),(5,'6'),(5,'7'),(5,'12'),(5,'14'),(6,'5'),(6,'6'),(6,'12'),(7,'7'),(8,'12'),(8,'13'),(8,'14'),(9,'6'),(9,'9'),(9,'12'),(9,'14'),(10,'6'),(10,'8'),(11,'5'),(11,'6'),(12,'3'),(13,'6'),(13,'7'),(13,'8'),(13,'14'),(14,'6'),(14,'14'),(15,'8'),(15,'14'),(15,'10'),(16,'3'),(16,'8'),(16,'14'),(17,'3'),(17,'10'),(17,'14'),(18,'3'),(18,'4'),(18,'8'),(18,'10'),(18,'15'),(19,'3'),(19,'4'),(19,'8'),(19,'9'),(19,'10'),(19,'15'),(20,'4'),(20,'7'),(20,'8'),(20,'10'),(21,'2'),(21,'8'),(21,'9'),(21,'15'),(22,'3'),(22,'4'),(22,'6'),(22,'8'),(22,'12'),(22,'15'),(23,'3'),(23,'6'),(23,'12'),(24,'4'),(24,'6'),(24,'8'),(24,'15'),(25,'3'),(25,'4'),(25,'7'),(25,'10'),(26,'3'),(26,'6'),(26,'8'),(26,'10'),(26,'14'),(27,'4'),(27,'6'),(27,'8'),(27,'10'),(27,'14'),(27,'15'),(28,'4'),(28,'8'),(28,'10'),(29,'3'),(29,'6'),(29,'7'),(29,'12'),(29,'14'),(30,'8'),(30,'12'),(30,'14'),(30,'15'),(30,'16'),(31,'15'),(31,'6'),(31,'14'),(31,'15'),(32,'7'),(32,'10'),(32,'14'),(32,'16'),(33,'6'),(33,'7'),(33,'14'),(34,'6'),(34,'12'),(34,'14'),(35,'8'),(35,'13'),(35,'12'),(36,'6'),(36,'14'),(37,'4'),(37,'6'),(37,'14'),(37,'15'),(38,'1'),(38,'12'),(38,'14'),(39,'2'),(39,'5');
/*!40000 ALTER TABLE `recipe_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL,
  `recipe_name` mediumtext,
  `description` longtext,
  `min_prep` varchar(25) DEFAULT NULL,
  `total_time` int(11) DEFAULT NULL,
  `servings_min` varchar(25) DEFAULT NULL,
  `servings_max` varchar(45) DEFAULT NULL,
  `directions` longtext,
  `website_id` varchar(25) NOT NULL,
  PRIMARY KEY (`recipe_id`),
  UNIQUE KEY `recipe_id_UNIQUE` (`recipe_id`),
  KEY `chef_id_idx` (`chef_id`),
  KEY `website_id_idx` (`website_id`),
  CONSTRAINT `chef_id` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `website2_id` FOREIGN KEY (`website_id`) REFERENCES `website` (`website_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,1,'Kohsary','middle eastern desert','5',8,'15','20','Make good sweets','1'),(2,1,'Burger','American Food','5',8,'1','2','Make good food','2'),(3,3,'Tomato Basil Soup (La Madeleine copycat)','soup; tomatoes; copycat; main','3',6,'4','7','Combine tomatoes, juice/and or possibly stock in saucepan. Simmer 30 min. Puree, along with the basil leaves, in small batches, in blender or food processor or use an immersion blender in the pan. Return to saucepan and add in cream and butter, while stirring over low heat. Garnish with basil leaves and serve with your favorite bread.','3'),(4,4,'John Thornes Pecan Pie','dessert; pie; untried','200',8,'12','15','Preheat oven to 350F. In a large saucepan, heat the brown sugar, golden syrup and butter to the boiling point. Stirring constantly and scraping back any foam that clings to the side of the pan, let this mixture boil for about 1 minute. Remove from the heat and let cool while, in a separate bowl, you beat the eggs until creamy. When the boiled syrup has cooled, beat in the eggs, salt and pecans. Pour into the unbaked pie shell and bake for about 50 minutes. Notes:  A little cream (about 1/4 to 1/2 cup) mixed into a pecan pie filling before baking gives it a richer, lighter texture. For a sweeter, lighter pie: add more sugar and use fewer pecans; for a denser, less sweet pie: add more pecans and use less sugar.  The buttery flavour and the lard-induced flakiness of a butter and lard crust make it the perfect one for a perfect pecan pie. And a Southern pecan pie authority I know suggests that you roll out the dough a little thicker than usual; a thick, richly shortened crust provides an appetizing balance to the sweetness of the filling. ','4'),(5,5,'Smoked Salmon Ebelskivers','salmon; ebelskivers; main','1080',10,'3','6','Preheat oven to 200F. In a large bowl, whisk together the flour, sugar, baking powder, salt, and pepper. In a small bowl, lightly whisk the egg yolks, then whisk in the milk, 2 tablespoons of melted butter and lemon juice. Add the yolk mixture to the flour mixture and, using a wooden spoon, stir until well blended. The batter will be lumpy. In a clean bowl, using an electric mixer on high speed, beat the egg whites until stiff, but not dry, peaks form. Using a silicone spatula, fold about one-third of the egg whites into the batter to lighten it, then fold in the rest just until no white streaks remain. Stir in fresh dill. Brush the wells of the ebelskiver pan with some of the remaining melted butter and place over medium heat. When the butter starts to bubble, add about 1 tablespoon batter to each well. Working quickly, carefully spoon about 1/2 teaspoon of the smoked salmon into the center of each pancake, then spoon about 1/2 teaspoon of the cream cheese on top. Top each with another 1 tablespoon batter. (Alternatively, gently mix the cream cheese and salmon together. Spoon about 1 teaspoon into the center of each pancake). Cook until the bottoms of the pancakes are lightly browned and crisp, 3-5 minutes. Use 2 short wooden skewers to turn all the  pancakes and cook until lightly browned on the second side, about 3 minutes longer. Transfer the finished pancakes to a platter and keep warm  in the oven while you repeat to make 2 more batches. Serve right away.','5'),(6,6,'Godiva Angel Pie','chocolate; dessert; pie; untried','40',12,'12','15','TO MAKE SHELL: Preheat oven to 300 degrees. In mixer bowl, beat egg whites until foamy. Beat in salt and cream of tartar and beat until soft peaks form. Add sugar, a tablespoon at a time, beating after each addition. Continue until very stiff peaks form. Fold in nuts and vanilla. Lightly butter a metal 8-inch pie plate. (Do NOT use glass.) Spoon meringue into pan lightly, building up the edges to come at least 1/2 inch above the side of the pan. Bake in preheated 300 degree oven for 35 to 40 minutes until light brown. Cool completely before adding filling. TO MAKE FILLING: Melt chocolate and water in a pan over hot, but not boiling, water, stirring occasionally, to blend. Add vanilla and chocolate mixture (cooled) to whipped cream and pile into meringue shell, swirling top with spatula. Be sure to cool the chocolate mixture before adding to the whipped cream. If it is too warm, the mixture will thin out. If this happens, chill until it is thick enough to put in shell.','6'),(7,7,'Spaetzle','german; noodles; sides','30',14,'4','7','Bring a saucepan of salted water it a boil, reduce the heat, and maintain a simmer. In a bowl, stir all the ingredients together (eggs, flour, milk, salt, baking powder, and nutmeg). Place a colander over the pan, pour about1/4 of the batter into the colander, and press through the holes with a plastic spatula into the hot water. When the spatzle starts to float to the surface, cover the pan and keep covered until the spatzle appears to swell and is fluffy. Remove the dumplings and repeat the procedure with the remaining batter.In a medium saute pan, add butter, and melt over medium heat until butter turns a light brown. Add garlic and cook until it becomes lightly colored. Add spaetzle to the pan to heat through. Add parsley, cheese, salt and pepper, to taste.','7'),(8,8,'Pot Roast Carbonnade','beef; main','240',16,'4','7','Preheat the oven to 325 degrees F. In a large Dutch oven over medium-low heat, add the bacon and cook until it renders its fat and almost becomes crispy. Remove it with a slotted spoon to a plate. Add the onions, season with salt and pepper, to taste, and cook over low heat until they are deep in color and caramelized, about 30 minutes. Remove the onions to a plate, leaving as much fat in the pot as possible. Add the vegetable oil and mix it with the bacon fat. Raise the heat to high. Season the beef liberally with salt and pepper and sear, in batches, until nicely browned on both sides. Once the meat is browned, add the first batch of meat back to the pan along with the onions, carrots and bacon. Sprinkle in the flour and stir. Cook for 1 minute before deglazing the pan with the beer. Add the remaining ingredients and bring the mixture to a simmer. Cover the pot and put it in the oven to braise until the beef is tender, about 2 hours. Remove the pot from the oven and transfer the pot roast to a serving dish.','8'),(9,9,'Old Fashion Vegetable Soup','soup; beef; family_recipes; main','30',18,'6','9','In a large soup pot, brown ground beef and onion, drain off fat.  Add remaining ingredients EXCEPT for last 3 items (canned vegetables).  Simmer on low heat until vegetables are tender, about an hour.  Add canned vegetables and simmer 5 minutes.  Remove bay leaf and serve.','9'),(10,10,'Onion Pie','onion; casserole; main; vegetarian','40',20,'6','9','Preheat the oven to 400 degrees halfway through onion cooking. Slice the onions and saute in 4 tablespoons butter over medium-low heat; the longer you cook them - as long as 35 minutes - the sweeter they will be.  Sprinkle in crushed red pepper. Melt the remaining 4 tablespoons butter.  Mix with the crushed crackers, then press the mixture into the bottom and sides of a glass pie plate to form a crust.  Prebake crust for 10 minutes. Lightly beat the eggs and milk together in a small bowl. Spoon the onions into the crust, then pour the egg mixture over them.  Sprinkle with Parmesan. Bake for 30-40 minutes until set and golden.','10'),(11,11,'Godiva Dark Chocolate Cheesecake','cheesecake; dessert; pie; chocolate; untried','20',22,'10','13','In a food processor with a blade attachment, cream the cheese until smooth and then add in sugar. Pulse a couple times to incorporate sugar and cocoa powder. Add in eggs and yolks pulsing a couple times again and scrape down to ensure all is smooth and uniform. With machine running, pour in melted Godiva Chocolate in a steady stream until all in, and finish by pulsing in the crème fraiche. Pour batter into a 10\" x 10\" baking pan and bake at 325 for 30, minutes or until custard is set and a toothpick inserted in center can be removed cleanly. The top may caramelize or brown slightly, which is not an issue. Once set, remove from oven and allow cheesecake to cool completely. Wrap the pan with plastic and reserve in cooler to set and chill completely. Once the cheesecake is cold and firm, remove it from the pan and place in a mixer bowl with a paddle attachment. Beat the cake for a few moments to soften and smooth out the custard. Place smoothed custard into a piping bag with a plain tip and pipe into the bottom of a plastic lined half cylinder mold. Tap the mold to ensure the custard is solid and then flatten out to top. Freeze the mold to harden the custard for unmolding. Once the cake can be unmolded, remove from the pan and cut into 1½\" sections. Brush some tempered Godiva Dark Chocolate onto a strip of acetate and, while it is still fluid, smooth over the top of the molded cheesecake. Once the chocolate has cooled and completely crystallized, remove the acetate, revealing a shiny and textured chocolate finish.','11'),(12,12,'Greek Salad','main; greek; salad; dressing','120',24,'4','7','In a small bowl, whisk together the lemon juice, garlic, salt, and oil. Set aside.   In a large bowl lightly toss the lettuce with the olives, cheese, cucumber, tomatoes, onion, oregano, and black pepper. Let sit up to 2 hours.  To serve, toss salad with dressing and place sliced chicken on top.','12'),(13,13,'Flaky Buttermilk Biscuits','biscuits; bread; sides','360',26,'12','15','Adjust oven rack to lower-middle position; heat oven to 450 degrees.  Whisk flour, baking power, baking soda, and salt in large bowl.Add shortening to flour mixture; break up chunks with fingertips until only pea-sized pieces remain.  Working in batches, drop butter slices into flour mixture and toss to coat; pick up each slice of butter and press between floured fingertips into flat, nickel-sized pieces.  Repeat until all butter is incorporated; toss to combine.  Freeze mixture (in bowl) until chilled, about 15 minutes. Spray 24-square-inch work surface with nonstick cooking spray; spread spray evenly across surface with kitchen towel or paper towel.  Sprinkle 1/3 cup of extra flour across sprayed area; gently spread flour across work surface with palm to form thin, even coating.  Add all but 2 tablespoons of buttermilk to flour mixture; stir briskly with fork until ball forms and no dry bits of flour are visible, adding remaining buttermilk as needed (dough will be sticky and shaggy but should clear sides of bowl).  With rubber spatula, transfer dough onto center of prepared work surface, dust surface lightly with flour, and, with floured hands, bring dough together into cohesive ball.Pat dough into approximate 10-inch square; roll into 18- by 14-inch rectangle about 1/4 inch thick, dusting dough and rolling pin with flour as needed.  Using bench scraper or thin metal spatula, fold dough into thirds, brushing any excess flour from surface; lift short end of dough and fold in thirds again to form approximate 6- by 4-inch rectangle.  Rotate dough 90 degrees, dusting work surface underneath with flour; roll and fold dough again, dusting with flour as needed. Roll dough into 10-inch square about 1/2 inch thick; flip dough and cut nine 3-inch rounds with floured biscuit cutter, dipping cutter back into flour after each cut.  Carefully invert and transfer rounds to ungreased baking sheet, spaced 1 inch apart.  Gather dough scraps into ball; roll and fold once or twice until scraps form smooth dough.  Roll dough into 1/2-inch-thick round; cut 3 more 3-inch rounds and transfer to baking sheet.  Discard excess dough. Brush biscuit tops with melted butter.  Bake, without opening oven door, until tops are golden brown and crisp, 15 to 17 minutes.  Let cool on baking sheet 5 to 10 minutes before serving.','12'),(14,14,'Grilled Portobello Mushrooms Stacked with Fresh Spinach and Shaved Manchego Cheese','vegetarian; main; mushrooms; cheese','20',28,'4','7','Heat grill to high. Brush mushroom caps on both sides with oil and season with salt and pepper. Grill, cap side down, until slightly charred, about 4 to 5 minutes. Turn the mushrooms over and continue grilling until just cooked through, about 3 to 4 minutes longer. Stack the ingredients on each of 4 salad plates starting with a mushroom cap, a slice of cheese, some spinach, and a drizzle of Sherry Vinaigrette. Add another mushroom cap, more vinaigrette, spinach, and another slice of cheese. Place a third mushroom cap on top and finish by drizzling with additional vinaigrette and garnishing with chopped chives, if desired. [Sherry Vinaigrette](http://www.xanthir.com/recipes/showrecipe.php?id=18)','4'),(15,15,'Sherry Vinaigrette','dressing; components','10',30,'1','4','Whisk together the shallot, vinegar, mustard, salt, and pepper in a small bowl. Slowly whisk in the oil until emulsified.','6'),(16,6,'Margherita Salad','salad; dressing; main','10',32,'4','7','Puree the plum tomato, sun-dried tomatoes, vinegar, garlic, oregano, a basil leaves and parmesan in a blender, drizzling in the sun-dried tomato oil until smooth. Add 2 to 3 tablespoons water, if needed to make a pour-able dressing; season with salt and pepper. Heat the olive oil in a large skillet over medium-high heat. Add the breadcrumbs, season with salt and pepper and cook, stirring occasionally, until golden, about 2 minutes. Add the remaining parmesan and the parsley and cook until toasted, about 1 more minute. Toss the salad greens, mozzarella, and remaining basil in a large bowl. Toss with the dressing, then sprinkle with the breadcrumb mixture.','3'),(17,7,'Mexican Ensalada','salad; mexican; FUF; main; vegetarian','25',34,'2','5','In small bowl, whisk together dressing ingredients.Chop up additional ingredients bite size and add to a medium bowl. Combine dressing and all ingredients in a large bowl, toss, and serve. Includes recipe for [basil-lime vinaigrette](http://www.xanthir.com/recipes/showrecipe.php?id=id6). Alternate dressing (for 2 servings): 1/2 lemon, juiced; 1 tbsp apple cider vinegar; 2 tbsp olive oil; 2 tablespoons cilantro, chopped','7'),(18,8,'The Ultimate Green Smoothie','smoothie; FUF; breakfast','160',36,'2','5','To prepare, just throw everything in a blender and give it a whirl!','5'),(19,9,'Tropical Nut Smoothie','smoothie; FUF; breakfast','10',38,'2','5','Combine all ingredients in blender. Blend until smooth.','2'),(20,10,'Guacamole','dip; appetizer; mexican; FUF; sides','5',40,'8','11','1. Place all ingredients in a bowl with a flat bottom and mash it with a potato masher.  Alternatively, you can mix everything briefly in a food processor. 2. Stir well and keep refrigerated. This dish will brown on the areas exposed to air within a few hours, so serve it shortly after making it or just stir again before serving.','6'),(21,11,'Sweet Almond Date Smoothie','smoothie; FUF; breakfast','5',42,'2','5','Combine all ingredients in blender. Blend until smooth.','9'),(22,12,'The Ironman Smoothie','smoothie; FUF; breakfast','10',44,'2','5','In a blender, blend all ingredients until smooth','4'),(23,13,'Super Protein Salad','salad; beans; FUF; main','20',46,'1','4','Combine olive oil, vinegar, mustard, salt and pepper to taste. Toss with other ingredients in a bowl and serve.','1'),(24,14,'The Shake','smoothie; FUF; breakfast','5',48,'2','5','Combine all ingredients in blender. Blend until smooth.','3'),(25,15,'Apple Carrot Salad','raw; salad; FUF; vegetarian; main','12',50,'2','5','1. In small bowl, whisk olive oil, vinegar, and lemon juice. 2. Combine salad ingredients in a medium bowl. Pour dressing over salad. Slice eggs and place on top.','13'),(26,1,'Extreme Green Salad','salad; asian; vegetarian; main','10',52,'2','5','1. Place all the salad ingredients, except the sesame seeds, into a large bowl or platter. 2. Whisk together all the dressing ingredients in a small bowl. Drizzle over the salad and toss lightly to coat. 3. Sprinkle with sesame seeds and serve.','4'),(27,2,'Blueberry Bliss Smoothie','FUF; smoothie; breakfast','5',54,'2','5','Combine all ingredients in blender. Blend until smooth.','9'),(28,3,'Berry Sauce','sauce; components; berries','300',56,'1','4','1. Lightly warm berries and maple syrup in a saucepan 2. Pour over pancakes/dessert as desired','15'),(29,4,'Popeyes Muscle Salad','salad; FUF; spinach; main','30',58,'1','4','Combine all ingredients in a bowl, toss, and serve. Use whatever vinaigrette you want.','2'),(30,5,'Breakfast Mediterranean Scramble','breakfast','23',60,'1','4','Heat oil in a small non-stick skillet. Once hot, add veggies and saute until soft. Meanwhile, beat greek seasoning and feta into eggs. Once veggies are at desired doneness, add egg mixture to skillet and gently stir until cooked. Serve immediately.','8'),(31,6,'Best Oatmeal Ever','breakfast','42',62,'1','4','1. To prepare, once oatmeal has been sufficiently cooked, add diced apples and nut butter. Stir for 2-3 minutes. 2. Serve into a bowl and mix in cinnamon, flax seeds, maple syrup/agave. Stir and enjoy!','14'),(32,7,'Lovely Lentils','lentils; FUF; sides','70',64,'2','5','1. Pour coconut oil and chopped garlic into a saucepan, over medium heat, and sauté the garlic until lightly browned. 2. Add vegetable broth to the saucepan, allowing everything to simmer for about 5 minutes. 3. Add 1 cup of water along with lentils and allow to simmer (uncovered) for about 20-30 minutes until they are soft. Add rosemary and drizzle olive oil near the end.','3'),(33,8,'Sweet Mashed Potatoes','potatoes; FUF; sides','10',66,'4','7','1. In a pot that covers the potatoes with water, bring to a boil. The sweet potatoes are done when they are fork tender. 2. Mash the potatoes with a hand mixer (or fork or masher) and slowly add in butter and milk until potatoes are creamy and mashed to your preferred consistency. Add a touch of cinnamon for added flavour.','8'),(34,9,'Steakhouse steaks','beef; main','45',68,'2','5','Preheat the oven to 400 degrees F. Heat a large, well-seasoned cast iron skillet over high heat until very hot, 5 to 7 minutes. Meanwhile, pat the steaks dry with a paper towel and brush them lightly with vegetable oil. Combine the fleur de sel and cracked pepper on a plate and roll the steaks in the mixture, pressing lightly to evenly coat all sides. When the skillet is ready, add the steaks and sear them evenly on all sides for about 2 minutes per side, for a total of 10 minutes. Top each steak with a tablespoon of butter, if using, and place the skillet in the oven. Cook the steaks until they reach 120 degrees F for rare or 125 degrees F for medium-rare on an instant-read thermometer. (To test the steaks, insert the thermometer sideways to be sure youre actually testing the middle of the steak.) Remove the steaks to a serving platter, cover tightly with aluminum foil and allow to rest at room temperature for 10 minutes. Serve hot with [Roquefort Cheese Sauce](http://www.xanthir.com/recipes/showrecipe.php?id=62) on the side.','5'),(35,10,'Roquefort Cheese Sauce','sauce; cheese; components','30',70,'4','7','Bring the heavy cream to a boil in a small heavy-bottomed saucepan over medium-high heat. Cook at a low boil, stirring occasionally, until the mixture has become thick and creamy, about 20 minutes. Remove the pan from the heat, add the cheese, salt, pepper and chives and whisk rapidly until the cheese melts.','3'),(36,11,'Stove top mac and cheese','cheese; noodles; main; vegetarian','12',72,'6','9','In a large pot of boiling, salted water cook the pasta to al dente and drain. Return to the pot and melt in the butter. Toss to coat. Whisk together the eggs, milk, hot sauce, salt, pepper, and mustard. Stir into the pasta and add the cheese. Over low heat continue to stir for 3 minutes or until creamy. (This recipe originally called for 6oz milk.  It is reduced as an experiment.)','8'),(37,12,'Smoked Salmon Ebelskivers','salmon; ebelskivers; main','1080',10,'3','6','Preheat oven to 200F. In a large bowl, whisk together the flour, sugar, baking powder, salt, and pepper. In a small bowl, lightly whisk the egg yolks, then whisk in the milk, 2 tablespoons of melted butter and lemon juice. Add the yolk mixture to the flour mixture and, using a wooden spoon, stir until well blended. The batter will be lumpy. In a clean bowl, using an electric mixer on high speed, beat the egg whites until stiff, but not dry, peaks form. Using a silicone spatula, fold about one-third of the egg whites into the batter to lighten it, then fold in the rest just until no white streaks remain. Stir in fresh dill. Brush the wells of the ebelskiver pan with some of the remaining melted butter and place over medium heat. When the butter starts to bubble, add about 1 tablespoon batter to each well. Working quickly, carefully spoon about 1/2 teaspoon of the smoked salmon into the center of each pancake, then spoon about 1/2 teaspoon of the cream cheese on top. Top each with another 1 tablespoon batter. (Alternatively, gently mix the cream cheese and salmon together. Spoon about 1 teaspoon into the center of each pancake','9'),(38,1,'Kunafa','eastern desert','5',8,'15','20','Make good sweets','4'),(39,2,'Strawberries Romanov (La Madeleine copycat)','fruit; dessert; strawberries; copycat; untried','5',4,'4','7','Wash strawberries and cut the tops off. Let strawberries drain.  Mix together heavy whipping cream, powdered sugar, and the brandy. Beat with a mixer till this becomes thick.  Place strawberries into glasses and spoon over the sauce.','11');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sendnoods`
--

DROP TABLE IF EXISTS `sendnoods`;
/*!50001 DROP VIEW IF EXISTS `sendnoods`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `sendnoods` AS SELECT 
 1 AS `Full Name`,
 1 AS `Recipe Name`,
 1 AS `Ingredient`,
 1 AS `Quantity`,
 1 AS `Units`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `soups_from_foodnetwork`
--

DROP TABLE IF EXISTS `soups_from_foodnetwork`;
/*!50001 DROP VIEW IF EXISTS `soups_from_foodnetwork`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `soups_from_foodnetwork` AS SELECT 
 1 AS `Recipe Id`,
 1 AS `Recipe Name`,
 1 AS `Media`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `tag_id` varchar(25) NOT NULL,
  `tag_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES ('1','seafood'),('10','vegan'),('11','african'),('12','non_vegeterian'),('13','french'),('14','non-dessert'),('15','breakfast'),('16','medeteranian'),('2','desert food'),('3','salad'),('4','fruit'),('5','dessert'),('6','american'),('7','sides'),('8','random'),('9','soup');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `thealbannabrothers`
--

DROP TABLE IF EXISTS `thealbannabrothers`;
/*!50001 DROP VIEW IF EXISTS `thealbannabrothers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `thealbannabrothers` AS SELECT 
 1 AS `Full Name`,
 1 AS `Recipe Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website` (
  `website_id` varchar(25) NOT NULL,
  `website_name` varchar(45) DEFAULT NULL,
  `website_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website`
--

LOCK TABLES `website` WRITE;
/*!40000 ALTER TABLE `website` DISABLE KEYS */;
INSERT INTO `website` VALUES ('1','fcbarcelonafood','http://fcbarcelona.com'),('10','onerecipe','http://onerecipe.com'),('11','egyptian Food','http://egyptianFood.com'),('12','outside recipe','http://outsiderecipe.com'),('13','deedeeFound food','http://deedeefoundfood.com'),('14','Ebonies food','http://eboniefoodie.com'),('15','Adidas Food network','http://adidasFoodnetwork.com'),('2','eatshare','http://sharefod.com'),('3','chowhound.chow','http://chowhound.chow.com'),('4','recipes','http://recipes.com/recipes'),('5','lamadeleine','http://lamadeleine.com'),('6','topicfood','http://topicFood.chow.com'),('7','ebelskivers','http://ebelskivers.com'),('8','everyrecipe','http://everyrecipe.com'),('9','foodnetwork','http://foodnetwork.com');
/*!40000 ALTER TABLE `website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `whatcanimake`
--

DROP TABLE IF EXISTS `whatcanimake`;
/*!50001 DROP VIEW IF EXISTS `whatcanimake`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `whatcanimake` AS SELECT 
 1 AS `Full Name`,
 1 AS `Recipe Name`,
 1 AS `Ingredients`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `numberofingredients`
--

/*!50001 DROP VIEW IF EXISTS `numberofingredients`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `numberofingredients` AS select concat(`chef`.`last_name`,', ',`chef`.`first_name`) AS `Full Name`,`recipes`.`recipe_name` AS `Recipe Name`,count(`ingredients`.`ingredient_name`) AS `Number of Ingredients` from (((`recipes` join `measurements` on((`recipes`.`recipe_id` = `measurements`.`recipe_id`))) join `chef` on((`recipes`.`chef_id` = `chef`.`chef_id`))) join `ingredients` on((`measurements`.`ingredient_id` = `ingredients`.`ingredient_id`))) where (`chef`.`first_name` <> 'Alison') group by `recipes`.`recipe_name` order by `chef`.`last_name`,'Recipe Name' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sendnoods`
--

/*!50001 DROP VIEW IF EXISTS `sendnoods`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sendnoods` AS select concat(`chef`.`last_name`,', ',`chef`.`first_name`) AS `Full Name`,`recipes`.`recipe_name` AS `Recipe Name`,`ingredients`.`ingredient_name` AS `Ingredient`,`measurements`.`quantity` AS `Quantity`,`measurements`.`units` AS `Units` from (((`recipes` join `measurements` on((`recipes`.`recipe_id` = `measurements`.`recipe_id`))) join `chef` on((`recipes`.`chef_id` = `chef`.`chef_id`))) join `ingredients` on((`measurements`.`ingredient_id` = `ingredients`.`ingredient_id`))) where (`ingredients`.`ingredient_name` = 'noodles') order by 'Recipe Name' desc,`chef`.`last_name` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `soups_from_foodnetwork`
--

/*!50001 DROP VIEW IF EXISTS `soups_from_foodnetwork`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `soups_from_foodnetwork` AS select `recipes`.`recipe_id` AS `Recipe Id`,`recipes`.`recipe_name` AS `Recipe Name`,`media`.`media_link` AS `Media` from (((`recipes` join `media` on((`recipes`.`recipe_id` = `media`.`recipe_id`))) join `recipe_tag` on((`recipes`.`recipe_id` = `recipe_tag`.`recipe_id`))) join `tags` on((`recipe_tag`.`tag_id` = `tags`.`tag_id`))) where ('foodnetwork' in (select `website`.`website_name` from (`website` join `recipes` on((`website`.`website_id` = `recipes`.`website_id`)))) and (`tags`.`tag_name` = 'soup')) group by `media`.`media_id` order by `recipes`.`recipe_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `thealbannabrothers`
--

/*!50001 DROP VIEW IF EXISTS `thealbannabrothers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `thealbannabrothers` AS select concat(`chef`.`last_name`,', ',`chef`.`first_name`) AS `Full Name`,`recipes`.`recipe_name` AS `Recipe Name` from (`recipes` join `chef` on((`recipes`.`chef_id` = `chef`.`chef_id`))) where (`chef`.`last_name` = 'Albanna') group by `recipes`.`recipe_name` order by 'Recipe Name' desc,`chef`.`last_name` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `whatcanimake`
--

/*!50001 DROP VIEW IF EXISTS `whatcanimake`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `whatcanimake` AS select concat(`chef`.`last_name`,', ',`chef`.`first_name`) AS `Full Name`,`recipes`.`recipe_name` AS `Recipe Name`,group_concat(concat(' ',`measurements`.`quantity`,' ',`measurements`.`units`,' of ',`ingredients`.`ingredient_name`) separator ', ') AS `Ingredients` from (((`recipes` join `measurements` on((`recipes`.`recipe_id` = `measurements`.`recipe_id`))) join `chef` on((`recipes`.`chef_id` = `chef`.`chef_id`))) join `ingredients` on((`measurements`.`ingredient_id` = `ingredients`.`ingredient_id`))) group by `recipes`.`recipe_id` order by 'Recipe Name' desc,`chef`.`last_name` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-10 16:26:20
