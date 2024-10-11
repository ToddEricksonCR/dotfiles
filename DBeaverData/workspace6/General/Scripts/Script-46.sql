-- MySQL dump 10.13  Distrib 8.0.35, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: corteza_data
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `cr_crm_Account`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Account` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_AccountContactRole`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_AccountContactRole` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_AccountContactRole_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_AccountContactRole_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Account_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Account_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Campaigns`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Campaigns` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Campaigns_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Campaigns_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Contact`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Contact` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Contact_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Contact_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_InvoiceLineItem`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_InvoiceLineItem` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_InvoiceLineItem_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_InvoiceLineItem_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Lead`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Lead` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Lead_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Lead_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Note`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Note` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Note_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Note_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Opportunity`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Opportunity` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_OpportunityContactRole`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_OpportunityContactRole` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_OpportunityContactRole_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_OpportunityContactRole_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_OpportunityLineItem`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_OpportunityLineItem` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_OpportunityLineItem_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_OpportunityLineItem_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Opportunity_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Opportunity_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Product` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Product_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Product_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Quote`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Quote` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_Quote_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_Quote_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_ReportingConfiguration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_ReportingConfiguration` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_ReportingConfiguration_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_ReportingConfiguration_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_RevRecLineItem`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_RevRecLineItem` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_RevRecLineItem_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_RevRecLineItem_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_WorkUnitCosts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_WorkUnitCosts` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_WorkUnitCosts_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_WorkUnitCosts_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_WorkUnitProfile`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_WorkUnitProfile` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_WorkUnitProfile_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_WorkUnitProfile_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_deliveryInformation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_deliveryInformation` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_deliveryInformation_copy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_deliveryInformation_copy` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_deliveryInformation_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_deliveryInformation_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_invoice`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_invoice` (
  `values` json NOT NULL,
  `id` bigint unsigned NOT NULL,
  `rel_module` bigint unsigned NOT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `meta` json NOT NULL,
  `owned_by` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cr_crm_invoice_revisions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cr_crm_invoice_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL,
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upload_aws_industry_codes___aws_industries_codes_20240614165946`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_aws_industry_codes___aws_industries_codes_20240614165946` (
  `_mb_row_id` bigint NOT NULL AUTO_INCREMENT,
  `industry_codes` varchar(255) DEFAULT NULL,
  `flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_mb_row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upload_euc_counts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_euc_counts` (
  `_mb_row_id` bigint NOT NULL AUTO_INCREMENT,
  `cloudamize_id` bigint DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `count_of_vmware_horizon_systems` bigint DEFAULT NULL,
  `count_of_xen_desktop_systems` bigint DEFAULT NULL,
  `count_of_citrix_xenapp_systems` bigint DEFAULT NULL,
  `count_of_remote_desktop_systems` bigint DEFAULT NULL,
  PRIMARY KEY (`_mb_row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'corteza_data'
--
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-02 14:54:45
