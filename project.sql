-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `Account`
--

DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Account` (
  `Acc_no` int NOT NULL,
  `Acc_type` varchar(45) DEFAULT NULL,
  `Opening_date` datetime DEFAULT NULL,
  `Cust_id` int NOT NULL,
  `Bank_code` int NOT NULL,
  PRIMARY KEY (`Acc_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admin` (
  `Admin_id` int NOT NULL,
  `Admin_name` varchar(45) NOT NULL,
  `Admin_contact` varchar(45) NOT NULL,
  `Admin_pass` varchar(45) NOT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ban_admin`
--

DROP TABLE IF EXISTS `Ban_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ban_admin` (
  `Bank_code` int NOT NULL,
  `Bank_name` varchar(45) DEFAULT NULL,
  `Bank_address` varchar(45) DEFAULT NULL,
  `Admin_id` varchar(45) NOT NULL,
  PRIMARY KEY (`Bank_code`),
  UNIQUE KEY `Admin_id_UNIQUE` (`Admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ban_admin`
--

LOCK TABLES `Ban_admin` WRITE;
/*!40000 ALTER TABLE `Ban_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ban_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bank`
--

DROP TABLE IF EXISTS `Bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bank` (
  `Bank_name` varchar(15) NOT NULL,
  `Bank_code` int NOT NULL,
  `Bank_address` varchar(45) NOT NULL,
  `Bank_contact` varchar(45) NOT NULL,
  PRIMARY KEY (`Bank_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bank`
--

LOCK TABLES `Bank` WRITE;
/*!40000 ALTER TABLE `Bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bank_Bank_Contact`
--

DROP TABLE IF EXISTS `Bank_Bank_Contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bank_Bank_Contact` (
  `Bank_code` int NOT NULL,
  `Bank_Conatct` varchar(45) NOT NULL,
  PRIMARY KEY (`Bank_code`,`Bank_Conatct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bank_Bank_Contact`
--

LOCK TABLES `Bank_Bank_Contact` WRITE;
/*!40000 ALTER TABLE `Bank_Bank_Contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bank_Bank_Contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `Cust_id` int NOT NULL,
  `Cust_name` varchar(45) DEFAULT NULL,
  `cust_contact` varchar(45) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `Hno` varchar(45) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Postal_code` varchar(45) NOT NULL,
  PRIMARY KEY (`Cust_id`),
  UNIQUE KEY `Postal_code_UNIQUE` (`Postal_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_admin`
--

DROP TABLE IF EXISTS `Customer_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_admin` (
  `Cust_id` int NOT NULL,
  `Admin_id` varchar(45) NOT NULL,
  PRIMARY KEY (`Cust_id`,`Admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_admin`
--

LOCK TABLES `Customer_admin` WRITE;
/*!40000 ALTER TABLE `Customer_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Deposit`
--

DROP TABLE IF EXISTS `Deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Deposit` (
  `Tran_id` int NOT NULL,
  `Amount` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `Acc_no` int NOT NULL,
  PRIMARY KEY (`Tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Deposit`
--

LOCK TABLES `Deposit` WRITE;
/*!40000 ALTER TABLE `Deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `Deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Loan`
--

DROP TABLE IF EXISTS `Loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Loan` (
  `Loan_id` int NOT NULL,
  `Loan_type` varchar(45) DEFAULT NULL,
  `Loan_duration` varchar(45) DEFAULT NULL,
  `Loan_amt` int DEFAULT NULL,
  PRIMARY KEY (`Loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Loan`
--

LOCK TABLES `Loan` WRITE;
/*!40000 ALTER TABLE `Loan` DISABLE KEYS */;
/*!40000 ALTER TABLE `Loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Loan_cust_bank`
--

DROP TABLE IF EXISTS `Loan_cust_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Loan_cust_bank` (
  `Loan_id` int NOT NULL,
  `Cust_id` int NOT NULL,
  `Bank_code` int NOT NULL,
  PRIMARY KEY (`Loan_id`,`Cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Loan_cust_bank`
--

LOCK TABLES `Loan_cust_bank` WRITE;
/*!40000 ALTER TABLE `Loan_cust_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `Loan_cust_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Loan_pay_cust`
--

DROP TABLE IF EXISTS `Loan_pay_cust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Loan_pay_cust` (
  `pay_id` int NOT NULL,
  `Loan_id` int NOT NULL,
  `Cust_id` int NOT NULL,
  PRIMARY KEY (`pay_id`,`Cust_id`,`Loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Loan_pay_cust`
--

LOCK TABLES `Loan_pay_cust` WRITE;
/*!40000 ALTER TABLE `Loan_pay_cust` DISABLE KEYS */;
/*!40000 ALTER TABLE `Loan_pay_cust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payment` (
  `pay_id` int NOT NULL,
  `pay_amt` int DEFAULT NULL,
  `pay_type` varchar(45) DEFAULT NULL,
  `pay_date` datetime DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transfer`
--

DROP TABLE IF EXISTS `Transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transfer` (
  `Tran_id` int NOT NULL,
  `Amount` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `Receivers_ac` int NOT NULL,
  `Acc_no` varchar(45) NOT NULL,
  PRIMARY KEY (`Tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transfer`
--

LOCK TABLES `Transfer` WRITE;
/*!40000 ALTER TABLE `Transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Withdrawl`
--

DROP TABLE IF EXISTS `Withdrawl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Withdrawl` (
  `Tran_id` int NOT NULL,
  `Amount` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `Acc_no` int NOT NULL,
  PRIMARY KEY (`Tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Withdrawl`
--

LOCK TABLES `Withdrawl` WRITE;
/*!40000 ALTER TABLE `Withdrawl` DISABLE KEYS */;
/*!40000 ALTER TABLE `Withdrawl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-29 19:49:17
