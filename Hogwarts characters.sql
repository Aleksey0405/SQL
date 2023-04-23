-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: hw hogwarts
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `char_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `faculty` varchar(45) DEFAULT NULL,
  `patronus` varchar(45) DEFAULT NULL,
  `book_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`char_id`),
  KEY `book_id_idx` (`book_id`),
  CONSTRAINT `book_id` FOREIGN KEY (`book_id`) REFERENCES `library` (`lib_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,'Harry','Potter',11,'Gryffindor','Stag',10),(2,'Hermione','Granger',11,'Gryffindor','Otter',9),(3,'Ron','Weasley',11,'Gryffindor','Jack Russell terrier',8),(4,'Draco','Malfoy',11,'Slytherin',NULL,6),(5,'Vincent','Crabbe',11,'Slytherin',NULL,6),(6,'Gregory','Goyle',11,'Slytherin',NULL,1),(7,'Albus','Dumbledore',111,'Gryffindor','Phoenix',2),(8,'Luna','Lovegood',11,'Ravenclaw','Hare',2),(9,'Cedric','Diggory',14,'Hufflepuff','Unknown',3),(10,'Severus','Snape',55,'Slytherin','Doe',4);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `lib_id` int NOT NULL AUTO_INCREMENT,
  `char_id` int NOT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  PRIMARY KEY (`lib_id`),
  KEY `char_id_idx` (`char_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (1,6,'Hogwarts: A History','2010-10-20','2020-10-20',1),(2,7,'Quidditch Through The Ages','2010-11-20','2020-11-20',2),(3,9,'The Lockhart Collection','2015-12-20','2030-12-20',3),(4,10,'Moste Potente Potions','2001-01-20','2002-01-20',4),(5,11,'The Life And Lies Of Albus Dumbledore','2018-07-20','2028-07-20',5),(6,4,'Fantastic Beasts And Where To Find Them','2010-10-20','2020-10-20',6),(7,13,'The Tales Of Beadle The Bard','2003-03-20','2004-03-20',7),(8,3,'Advanced Potion-Making','2003-05-20','2006-05-20',8),(9,2,'A History Of Magic','2012-12-20','2022-12-20',9),(10,1,'Magical Water Plants Of The Highland Rocks','2006-06-20','2010-06-20',10),(11,8,'Quidditch Through The Ages','2010-11-20','2020-11-20',2),(12,12,'Magical Water Plants Of The Highland Rocks','2010-11-20','2020-10-20',10),(13,5,'Fantastic Beasts And Where To Find Them','2006-06-20','2010-00-20',6);
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23 10:32:52

SELECT fname, lname, patronus FROM characters WHERE patronus IS NOT NULL AND patronus <> 'Unknown';
SELECT lname FROM characters WHERE lname LIKE '%e';
SELECT SUM(age) FROM characters WHERE age IS NOT NULL;
SELECT fname, lname, age FROM characters WHERE age IS NOT NULL ORDER BY age desc;
SELECT fname, age FROM characters WHERE age BETWEEN 50 AND 100;
SELECT DISTINCT age FROM characters WHERE age IS NOT NULL;
SELECT * FROM characters WHERE faculty = 'Gryffindor' AND age > 30;
SELECT distinct faculty FROM characters LIMIT 3;
SELECT fname FROM characters WHERE fname LIKE 'H____' OR fname LIKE 'L%';
SELECT avg(age) FROM characters;
DELETE FROM characters WHERE char_id = 11;
SELECT lname FROM characters WHERE lname LIKE '%a%';
SELECT fname AS 'Half-Blood Prince' FROM characters WHERE lname = 'Snape'; 
SELECT char_id, patronus FROM characters WHERE patronus IS NOT NULL AND patronus <> 'Unknown' ORDER BY patronus ASC;
SELECT fname, lname FROM characters WHERE lname IN ('Crabbe','Granger','Diggory');
SELECT MIN(age) FROM characters;
SELECT fname FROM characters UNION SELECT book_name FROM library;
SELECT COUNT(faculty) FROM characters GROUP BY faculty HAVING COUNT(faculty) >1;
SELECT fname, lname,
CASE
    WHEN faculty = 'Gryffindor' THEN 'Godric'
    WHEN faculty = 'Slytherin' THEN 'Salazar'
    WHEN faculty = 'Ravenclaw' THEN 'Rowena'
    WHEN faculty = 'Hufflepuff' THEN 'Helga'
    ELSE 'Muggle'
END AS Founders
FROM characters;

SELECT lname FROM characters WHERE lname NOT regexp '^(H|L|S)';
#PART 2
SELECT characters.fname, characters.lname, library.book_name FROM characters JOIN library ON characters.book_id = library.book_id;
SELECT characters.fname, characters.lname, library.book_name FROM characters RIGHT JOIN library ON characters.book_id = library.book_id;
SELECT library.book_name, characters.patronus FROM characters LEFT JOIN library ON characters.char_id = library.char_id;
SELECT library.book_name, characters.patronus FROM characters LEFT JOIN library ON characters.char_id = library.char_id;
SELECT DISTINCT characters.fname, characters.lname, characters.age, library.book_name FROM characters JOIN library ON characters.book_id = library.book_id WHERE characters.age > 15;
SELECT characters.fname, library.book_name, library.start_date, library.end_date FROM characters LEFT JOIN library ON characters.book_id = library.book_id WHERE characters.age < 15 AND characters.patronus = 'Unknown';
SELECT COUNT(book_id) FROM library WHERE end_date > (SELECT end_date FROM library WHERE char_id =2);
SELECT patronus FROM characters WHERE age IN (SELECT age from characters WHERE age > 14);