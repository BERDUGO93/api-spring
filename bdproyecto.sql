-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Temporary view structure for view `consultar_producto`
--

DROP TABLE IF EXISTS `consultar_producto`;
/*!50001 DROP VIEW IF EXISTS `consultar_producto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consultar_producto` AS SELECT 
 1 AS `id_prod`,
 1 AS `prodnombre`,
 1 AS `prodprecio`,
 1 AS `prod_id_categoria`,
 1 AS `prodestado`,
 1 AS `prodstock_disp`,
 1 AS `prod_descripcion`,
 1 AS `prod_id_prov`,
 1 AS `catnombre`,
 1 AS `pronombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `detalles_cotizacion`
--

DROP TABLE IF EXISTS `detalles_cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_cotizacion` (
  `id_dcot` int NOT NULL AUTO_INCREMENT,
  `id_cot` int NOT NULL,
  `dc_id_prod` int NOT NULL,
  `dc_cantidad` int NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id_dcot`),
  KEY `dc_id_cot` (`id_cot`),
  KEY `dc_id_prod` (`dc_id_prod`),
  CONSTRAINT `dc_id_cot` FOREIGN KEY (`id_cot`) REFERENCES `tblcotizaciones` (`id_cot`),
  CONSTRAINT `dc_id_prod` FOREIGN KEY (`dc_id_prod`) REFERENCES `tblproductos` (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_cotizacion`
--

LOCK TABLES `detalles_cotizacion` WRITE;
/*!40000 ALTER TABLE `detalles_cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalles_cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_pedido`
--

DROP TABLE IF EXISTS `detalles_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_pedido` (
  `dp_id_pedido` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `dp_id_producto` int NOT NULL,
  `dp_cantidad` int NOT NULL,
  `dp_precio` double(10,2) NOT NULL,
  PRIMARY KEY (`dp_id_pedido`),
  KEY `dp_id_pedido` (`id_pedido`),
  KEY `dp_id_producto` (`dp_id_producto`),
  CONSTRAINT `dp_id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `tblpedido` (`id_ped`),
  CONSTRAINT `dp_id_producto` FOREIGN KEY (`dp_id_producto`) REFERENCES `tblproductos` (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalles_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_propedido`
--

DROP TABLE IF EXISTS `detalles_propedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_propedido` (
  `id_dpro` int NOT NULL AUTO_INCREMENT,
  `dpro_id_pedido` int NOT NULL,
  `dpro_id_producto` int NOT NULL,
  `dpro_cantidad` int NOT NULL,
  `dpro_preciocompra` int NOT NULL,
  `dpro_subtotal` double DEFAULT NULL,
  PRIMARY KEY (`id_dpro`),
  KEY `dpro_id_pedido` (`dpro_id_pedido`),
  KEY `dpro_id_producto` (`dpro_id_producto`),
  CONSTRAINT `dpro_id_pedido` FOREIGN KEY (`dpro_id_pedido`) REFERENCES `tblpedidos_proveedor` (`id_proped`),
  CONSTRAINT `dpro_id_producto` FOREIGN KEY (`dpro_id_producto`) REFERENCES `tblproductos` (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_propedido`
--

LOCK TABLES `detalles_propedido` WRITE;
/*!40000 ALTER TABLE `detalles_propedido` DISABLE KEYS */;
INSERT INTO `detalles_propedido` VALUES (1,87,1,2,258000,NULL),(2,87,1,2,258000,NULL),(3,89,1,2,258000,NULL),(4,89,3,2,258000,NULL),(5,89,3,2,258000,NULL),(6,101,1,2,258000,NULL),(7,101,1,2,258000,NULL),(8,101,1,2,258000,NULL),(9,101,1,2,258000,NULL),(10,110,1,2,258000,NULL),(11,110,3,2,2500,NULL),(12,111,1,2,258000,NULL),(13,112,3,2,2500,NULL),(14,113,3,2,2500,NULL),(15,114,3,2,2500,NULL),(16,114,3,2,2500,NULL),(17,114,3,2,2500,NULL),(18,114,3,2,2500,NULL),(19,114,3,2,2500,NULL),(20,114,3,2,2500,NULL),(21,114,3,2,2500,NULL),(22,115,1,2,258000,NULL),(23,115,1,2,258000,NULL),(24,116,3,2,2500,NULL),(25,116,3,2,2500,NULL),(26,117,1,2,258000,NULL),(27,117,1,2,258000,NULL),(28,118,1,2,258000,NULL),(29,118,1,2,258000,NULL),(30,118,1,2,258000,NULL),(31,118,1,2,258000,NULL),(32,120,3,2,2500,NULL),(33,121,3,2,2500,NULL),(34,121,3,2,2500,NULL),(35,121,1,2,258000,NULL),(36,121,1,2,258000,NULL),(37,121,3,2,2500,NULL),(38,121,3,5,2500,NULL),(39,121,3,5,2500,NULL),(40,121,3,2,2500,NULL),(41,121,3,2,2500,NULL),(42,121,3,2,2500,NULL),(43,121,4,2,500000,NULL),(44,122,4,2,500000,NULL),(45,122,3,5,2500,NULL),(46,123,3,2,2500,NULL),(47,123,4,5,500000,NULL),(48,124,3,2,2500,NULL),(49,131,3,2,2500,NULL),(50,131,3,2,2500,NULL),(51,144,3,2,2500,NULL),(52,144,3,2,2500,NULL),(53,144,3,2,2500,NULL),(54,144,3,2,2500,NULL),(55,144,3,2,2500,NULL),(56,145,4,2,500000,NULL),(57,145,4,3,500000,NULL),(58,145,3,5,2500,NULL),(59,146,4,2,500000,NULL),(60,146,4,5,500000,NULL),(61,148,3,2,2500,NULL),(62,148,3,5,2500,NULL),(63,154,3,2,2500,NULL),(64,154,3,2,2500,NULL),(65,154,3,3,2500,NULL),(66,154,3,3,2500,NULL),(67,154,4,2,500000,NULL),(68,154,3,2,2500,NULL),(69,154,3,2,2500,NULL),(70,154,4,3,500000,NULL),(71,155,4,5,500000,NULL),(72,155,2,9,2000,NULL),(73,155,1,6,258000,NULL),(74,161,3,2,2500,NULL),(75,161,3,2,2500,NULL),(76,162,1,2,258000,NULL),(77,162,4,5,500000,NULL),(78,162,4,6,500000,NULL);
/*!40000 ALTER TABLE `detalles_propedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcategorias`
--

DROP TABLE IF EXISTS `tblcategorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcategorias` (
  `id_cat` int NOT NULL AUTO_INCREMENT,
  `catnombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `catestado` enum('activo','inactivo') COLLATE utf8mb4_general_ci DEFAULT 'activo',
  `catdescripcion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=5470 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategorias`
--

LOCK TABLES `tblcategorias` WRITE;
/*!40000 ALTER TABLE `tblcategorias` DISABLE KEYS */;
INSERT INTO `tblcategorias` VALUES (1,'breakers','activo','breakers y contactores'),(2,'cableado','activo','cableado estructurado'),(3,'herramientas','activo','herramienta especializada'),(5469,'perifericos','activo','teclados y controles , etc');
/*!40000 ALTER TABLE `tblcategorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclientes`
--

DROP TABLE IF EXISTS `tblclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblclientes` (
  `id_cliente` int NOT NULL,
  `clinombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cliapellido` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `clicorreo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `clidireccion` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `clitelefono` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `clidescripcion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `clicorreo` (`clicorreo`,`clidireccion`,`clitelefono`),
  UNIQUE KEY `clitelefono` (`clitelefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclientes`
--

LOCK TABLES `tblclientes` WRITE;
/*!40000 ALTER TABLE `tblclientes` DISABLE KEYS */;
INSERT INTO `tblclientes` VALUES (51615914,'peopletech','latinsas','peopletech.latin3@hotmail.com','Calle 108 # 45-63','31347890','empresa'),(1019081667,'diego','lopez','diegolopez@gmail.com','calle 145 # 136 a45 bloque 8','3143808397','cliente natural'),(1019083668,'laura','castiblanco','lauraC@hotmail.com','calle 127 # 45.26','3212862893','cliente mayorista'),(1134567890,'Roberto','López','roberto.lopez@outlook.com','Carrera 78 # 56-12','3209876543','credito'),(1145678901,'María','González','maria.gonzalez@hotmail.com','Avenida 19 # 78-45','3101234567','natural'),(1156789012,'Carlos','Hernández','chernandez2@gmail.com','Carrera 45 # 32-67','3187654321','credito'),(1167890123,'Laura alejandra','Sánchez','lsanchez3@hotmail.com','Calle 80 # 45-67','3134567890','natural'),(1178901234,'Pedro','García','pedrogarcia4@outlook.com','Carrera 56 # 78-90','3190123456','credito'),(1189012345,'Ana','López','analopez5@gmail.com','Avenida 15 # 34-56','3123456789','natural'),(1201234567,'Laura','Sánchez','laurasanchez6@hotmail.com','Calle 56 # 90-12','3145678901','credito');
/*!40000 ALTER TABLE `tblclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcotizaciones`
--

DROP TABLE IF EXISTS `tblcotizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcotizaciones` (
  `id_cot` int NOT NULL AUTO_INCREMENT,
  `cot_id_cliente` int NOT NULL,
  `cot_id_usuario` int NOT NULL,
  `cotfecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Totalcot` double NOT NULL,
  `cotestado` enum('pendiente','aprobada','rechazada') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pendiente',
  PRIMARY KEY (`id_cot`),
  KEY `cot_id_usuario` (`cot_id_usuario`),
  KEY `cot_id_cliente` (`cot_id_cliente`),
  CONSTRAINT `cot_id_cliente` FOREIGN KEY (`cot_id_cliente`) REFERENCES `tblclientes` (`id_cliente`),
  CONSTRAINT `cot_id_usuario` FOREIGN KEY (`cot_id_usuario`) REFERENCES `tblusuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcotizaciones`
--

LOCK TABLES `tblcotizaciones` WRITE;
/*!40000 ALTER TABLE `tblcotizaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcotizaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpedido`
--

DROP TABLE IF EXISTS `tblpedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpedido` (
  `id_ped` int NOT NULL AUTO_INCREMENT,
  `ped_id_cliente` int NOT NULL,
  `ped_id_usuario` int NOT NULL,
  `pedfecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Totalvalor` double NOT NULL,
  `pedestado` enum('pendiente','en_proceso','entregado') COLLATE utf8mb4_general_ci DEFAULT 'pendiente',
  PRIMARY KEY (`id_ped`),
  KEY `ped_id_usuario` (`ped_id_usuario`),
  KEY `ped_id_cliente` (`ped_id_cliente`),
  CONSTRAINT `ped_id_cliente` FOREIGN KEY (`ped_id_cliente`) REFERENCES `tblclientes` (`id_cliente`),
  CONSTRAINT `ped_id_usuario` FOREIGN KEY (`ped_id_usuario`) REFERENCES `tblusuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpedido`
--

LOCK TABLES `tblpedido` WRITE;
/*!40000 ALTER TABLE `tblpedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpedidos_proveedor`
--

DROP TABLE IF EXISTS `tblpedidos_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpedidos_proveedor` (
  `id_proped` int NOT NULL AUTO_INCREMENT,
  `ped_id_proveedor` int NOT NULL,
  `id_usuario` int NOT NULL,
  `proped_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Total_proped` double DEFAULT NULL,
  `propedestado` enum('pendiente','en_proceso','entregado') COLLATE utf8mb4_general_ci DEFAULT 'pendiente',
  PRIMARY KEY (`id_proped`),
  KEY `proped_id_proveedor` (`ped_id_proveedor`),
  CONSTRAINT `proped_id_proveedor` FOREIGN KEY (`ped_id_proveedor`) REFERENCES `tblproveedores` (`id_prov`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpedidos_proveedor`
--

LOCK TABLES `tblpedidos_proveedor` WRITE;
/*!40000 ALTER TABLE `tblpedidos_proveedor` DISABLE KEYS */;
INSERT INTO `tblpedidos_proveedor` VALUES (70,2,1074414468,'2023-05-21 23:11:30',NULL,'pendiente'),(71,2,1074414468,'2023-05-21 23:14:25',NULL,'pendiente'),(72,2,1074414468,'2023-05-21 23:15:29',NULL,'pendiente'),(73,2,1074414468,'2023-05-21 23:15:37',NULL,'pendiente'),(74,2,1074414468,'2023-05-21 23:17:27',NULL,'pendiente'),(75,2,1074414468,'2023-05-21 23:18:44',NULL,'pendiente'),(76,2,1074414468,'2023-05-21 23:19:42',NULL,'pendiente'),(77,2,1074414468,'2023-05-21 23:19:54',NULL,'pendiente'),(78,2,1074414468,'2023-05-21 23:20:52',NULL,'pendiente'),(79,2,1074414468,'2023-05-21 23:24:02',NULL,'pendiente'),(80,2,1074414468,'2023-05-21 23:32:36',NULL,'pendiente'),(81,5915923,1,'2023-05-21 23:46:51',NULL,'pendiente'),(84,5915914,1,'2023-05-22 00:00:37',NULL,'pendiente'),(85,5915914,1,'2023-05-22 00:19:30',NULL,'pendiente'),(86,5915914,1,'2023-05-22 01:02:15',NULL,'pendiente'),(87,5915914,1,'2023-05-22 01:03:53',NULL,'pendiente'),(88,5915914,1,'2023-05-22 01:11:07',NULL,'pendiente'),(89,5915914,1,'2023-05-22 01:13:30',NULL,'pendiente'),(90,2,1074414468,'2023-05-22 01:20:21',NULL,'pendiente'),(91,2,1074414468,'2023-05-22 01:20:25',NULL,'pendiente'),(92,2,1074414468,'2023-05-22 01:20:53',NULL,'pendiente'),(93,2,1074414468,'2023-05-22 01:30:14',NULL,'pendiente'),(94,5915914,1,'2023-05-22 01:34:18',NULL,'pendiente'),(95,5915914,1,'2023-05-22 01:34:41',NULL,'pendiente'),(96,2,1074414468,'2023-05-22 01:43:08',NULL,'pendiente'),(97,2,1074414468,'2023-05-22 02:09:11',NULL,'pendiente'),(98,5915923,1074414468,'2023-05-22 02:10:20',NULL,'pendiente'),(99,5915923,1074414468,'2023-05-22 02:11:09',NULL,'pendiente'),(100,2,1,'2023-05-22 02:13:00',NULL,'pendiente'),(101,2,1,'2023-05-22 02:13:49',NULL,'pendiente'),(102,2,1074414468,'2023-05-22 04:01:03',NULL,'pendiente'),(103,2,1074414468,'2023-05-22 04:02:50',NULL,'pendiente'),(104,5915914,1074414468,'2023-05-22 04:17:48',NULL,'pendiente'),(105,5915914,1074414468,'2023-05-22 04:23:54',NULL,'pendiente'),(106,5915914,1074414468,'2023-05-22 04:23:54',NULL,'pendiente'),(107,5915914,1074414468,'2023-05-22 04:25:32',NULL,'pendiente'),(108,5915914,1074414468,'2023-05-22 04:26:57',NULL,'pendiente'),(109,5915914,1074414468,'2023-05-22 16:50:23',NULL,'pendiente'),(110,2,1074414468,'2023-05-22 17:34:04',NULL,'pendiente'),(111,5915914,1074414468,'2023-05-22 17:44:33',NULL,'pendiente'),(112,5915914,1074414468,'2023-05-22 18:11:53',NULL,'pendiente'),(113,5915914,1074414468,'2023-05-22 18:17:47',NULL,'pendiente'),(114,5915914,1,'2023-05-22 18:23:58',NULL,'pendiente'),(115,5915914,1,'2023-05-22 18:31:38',NULL,'pendiente'),(116,2,1,'2023-05-22 18:36:12',NULL,'pendiente'),(117,5915914,1,'2023-05-22 18:37:10',NULL,'pendiente'),(118,2,1,'2023-05-22 18:38:17',NULL,'pendiente'),(119,5915914,1074414468,'2023-05-22 18:42:34',NULL,'pendiente'),(120,5915914,1074414468,'2023-05-22 18:44:04',NULL,'pendiente'),(121,2,1074414468,'2023-05-22 18:44:57',NULL,'pendiente'),(122,5915923,1,'2023-05-22 18:56:03',NULL,'pendiente'),(123,5915914,1074414468,'2023-05-22 18:59:45',NULL,'pendiente'),(124,5915914,1074414468,'2023-05-24 14:45:05',NULL,'pendiente'),(125,5915914,1074414468,'2023-05-24 17:18:30',NULL,'pendiente'),(126,5915914,1074414468,'2023-05-24 17:24:54',NULL,'pendiente'),(127,1,1,'2023-05-24 18:03:02',NULL,'pendiente'),(128,1,1,'2023-05-24 18:03:41',NULL,'pendiente'),(129,1,1,'2023-05-24 18:04:11',NULL,'pendiente'),(130,1,1,'2023-05-24 18:04:15',NULL,'pendiente'),(131,5915923,1074414468,'2023-05-24 18:05:28',NULL,'pendiente'),(133,2,1074414468,'2023-05-24 20:01:36',NULL,'pendiente'),(134,2,1074414468,'2023-05-24 20:12:32',NULL,'pendiente'),(135,5915914,1,'2023-05-24 20:12:43',NULL,'pendiente'),(136,5915914,1,'2023-05-24 20:17:09',NULL,'pendiente'),(137,5915914,1,'2023-05-24 20:37:26',NULL,'pendiente'),(138,5915914,1,'2023-05-24 20:37:35',NULL,'pendiente'),(139,5915914,1,'2023-05-24 20:46:55',NULL,'pendiente'),(140,5915914,1,'2023-05-24 20:48:34',NULL,'pendiente'),(141,5915914,1,'2023-05-24 21:01:31',NULL,'pendiente'),(142,5915914,1,'2023-05-24 21:11:09',NULL,'pendiente'),(143,2,1,'2023-05-24 21:31:09',NULL,'pendiente'),(144,2,1074414468,'2023-05-24 21:32:42',NULL,'pendiente'),(145,2,1,'2023-05-24 21:56:43',NULL,'pendiente'),(146,5915914,1074414468,'2023-05-24 22:00:20',NULL,'pendiente'),(147,2,1,'2023-05-24 22:17:32',NULL,'pendiente'),(148,2,1,'2023-05-24 22:20:45',NULL,'pendiente'),(149,5915914,1,'2023-05-24 22:27:27',NULL,'pendiente'),(150,5915914,1,'2023-05-24 22:28:43',NULL,'pendiente'),(151,5915914,1,'2023-05-24 22:29:39',NULL,'pendiente'),(152,2,1,'2023-05-24 22:31:35',NULL,'pendiente'),(153,2,1,'2023-05-24 22:32:55',NULL,'pendiente'),(154,5915914,1,'2023-05-24 22:34:49',NULL,'pendiente'),(155,5915914,1,'2023-05-24 22:35:49',NULL,'pendiente'),(156,2,1074414468,'2023-05-24 22:44:23',NULL,'pendiente'),(157,2,1,'2023-05-24 22:49:22',NULL,'pendiente'),(158,2,1,'2023-05-24 23:02:59',NULL,'pendiente'),(159,2,1,'2023-05-24 23:03:15',NULL,'pendiente'),(160,2,1,'2023-05-24 23:03:45',NULL,'pendiente'),(161,5915914,1,'2023-05-25 00:59:55',NULL,'pendiente'),(162,5915914,1,'2023-05-25 01:01:14',NULL,'pendiente');
/*!40000 ALTER TABLE `tblpedidos_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductos`
--

DROP TABLE IF EXISTS `tblproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproductos` (
  `id_prod` int NOT NULL AUTO_INCREMENT,
  `prodnombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `prodprecio` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prod_id_categoria` int NOT NULL,
  `prodestado` enum('activo','inactivo') COLLATE utf8mb4_general_ci DEFAULT 'activo',
  `prodstock_disp` int NOT NULL,
  `prod_descripcion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `prod_id_prov` int NOT NULL,
  `catnombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_prod`),
  KEY `prod_id_categoria` (`prod_id_categoria`),
  KEY `prod_id_prov_idx` (`prod_id_prov`),
  CONSTRAINT `prod_id_categoria` FOREIGN KEY (`prod_id_categoria`) REFERENCES `tblcategorias` (`id_cat`),
  CONSTRAINT `prod_id_prov` FOREIGN KEY (`prod_id_prov`) REFERENCES `tblproveedores` (`id_prov`)
) ENGINE=InnoDB AUTO_INCREMENT=8023 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductos`
--

LOCK TABLES `tblproductos` WRITE;
/*!40000 ALTER TABLE `tblproductos` DISABLE KEYS */;
INSERT INTO `tblproductos` VALUES (1,'breaker t8','258000.00',1,'activo',8,'breakers de corriente trifasica',1,NULL),(2,'cable cobre  calibre 12','2000.00',3,'activo',30,'cable cobre calibre 12 por metros',1,NULL),(3,'cable calibre 20','2500.00',1,'activo',50,'cable calibre 20 por metros',2,NULL),(4,'canaleta ','500000.00',1,'activo',23,'canaleta de cableado',2,NULL),(1993,'cinta c34','2500.00',3,'activo',10,'cintas er',5915914,NULL),(2043,'Foco LED 10W','5000.00',1,'activo',50,'Foco LED de 10W para iluminación residencial',1,NULL),(4421,'Cable UTP Cat 6','6000.00',2,'activo',100,'Cable UTP categoría 6 para redes de datos',2,NULL),(5469,'teclado mecanico s546','300000',2,'activo',10,'teclado gamer',1,'teclados'),(6545,'Tubo PVC 3/4\"','2500.00',1,'activo',80,'Tubo PVC de 3/4\" para canalizaciones eléctricas',1,NULL),(6630,'Martillo de Carpintero','10000.00',3,'activo',15,'Martillo de carpintero para trabajos de instalaciones eléctricas',5915914,NULL),(6861,'Destornillador de Precisión','8000.00',3,'activo',20,'Destornillador de precisión para trabajos de instalaciones eléctricas',5915923,NULL),(7107,'Caja de Empalmes','8000.00',1,'activo',60,'Caja de empalmes para conexiones eléctricas',1,NULL),(7513,'Alicate de Corte','12000.00',3,'activo',25,'Alicate de corte para trabajos de instalaciones eléctricas',5915923,NULL),(7929,'Toma Corriente Doble','5000.00',1,'activo',40,'Toma corriente doble para instalaciones eléctricas residenciales',1,NULL),(8022,'Interruptor Sencillo','3500.00',1,'activo',60,'Interruptor sencillo para instalaciones eléctricas residenciales',1,NULL);
/*!40000 ALTER TABLE `tblproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproveedores`
--

DROP TABLE IF EXISTS `tblproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproveedores` (
  `id_prov` int NOT NULL,
  `pronombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `prodireccion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `protelefono` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `proestado` enum('activo','inactivo') COLLATE utf8mb4_general_ci DEFAULT 'activo',
  `prodescripcion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `procorreo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `prorepresentante` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_prov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproveedores`
--

LOCK TABLES `tblproveedores` WRITE;
/*!40000 ALTER TABLE `tblproveedores` DISABLE KEYS */;
INSERT INTO `tblproveedores` VALUES (1,'cableltda','calla 127 # 45-23','3178446082','activo','empresa de cableado estructurado','cableltda@gmail.com','carlos diaz'),(2,'breakersfusion','calle 138a 12-42','3212862894','activo','distribuidora de brakers','breakeres@outlook.com','ana tellez'),(19334,'fortec','calle 123d # 114 -45','312246854','activo','proveedor articulos gamer','fortescs@gmail.com','alex perez'),(5915914,'cables y otros','calle 144 # 144-45','6859823','activo','','alexcarr@hotmail.com','alexander carranza'),(5915923,'sirius','calle 138 # 134 -45','312245789','activo','proveedor articulos','sirius@gmail.com','orlando perez');
/*!40000 ALTER TABLE `tblproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblroles`
--

DROP TABLE IF EXISTS `tblroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblroles` (
  `id_Rol` int NOT NULL AUTO_INCREMENT,
  `rolnombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Estado` enum('activo','inactivo') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'activo',
  PRIMARY KEY (`id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblroles`
--

LOCK TABLES `tblroles` WRITE;
/*!40000 ALTER TABLE `tblroles` DISABLE KEYS */;
INSERT INTO `tblroles` VALUES (1,'vendedor','activo'),(2,'administrador','activo'),(3,'gerente comercial','activo');
/*!40000 ALTER TABLE `tblroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuarios`
--

DROP TABLE IF EXISTS `tblusuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblusuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `usunombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `usuapellido` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `usudireccion` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `usutelefono` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `usuemail` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `usupassword` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `usuestado` enum('activo','inactivo') COLLATE utf8mb4_general_ci DEFAULT 'activo',
  `usu_id_rol` int NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `usu_id_rol` (`usu_id_rol`),
  CONSTRAINT `usu_id_rol` FOREIGN KEY (`usu_id_rol`) REFERENCES `tblroles` (`id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=1869126640 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuarios`
--

LOCK TABLES `tblusuarios` WRITE;
/*!40000 ALTER TABLE `tblusuarios` DISABLE KEYS */;
INSERT INTO `tblusuarios` VALUES (52814045,'Daniela','Cipagauta','Calle 113b #18-20','3106891171','ldcastiblanco@gmail.com','123','activo',1),(72625873,'Gineth ','Palacios','Calle 9 bis #12-76','3103491237','gineth@gmail.com','123','activo',1),(1019081667,'diego','berdugo ','calle 144 # 136a-45','6863691','diego@gmail.com','123','activo',1),(1074414468,'Laura','Castiblanco','Cra 93a #73-20','3206257680','laura@gmail.com','123','activo',1),(1869126639,'laura','castiblanco','calle 127 # 45.26','3212862893','casti@gmail.com','123','activo',1);
/*!40000 ALTER TABLE `tblusuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `usuariosactivos`
--

DROP TABLE IF EXISTS `usuariosactivos`;
/*!50001 DROP VIEW IF EXISTS `usuariosactivos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuariosactivos` AS SELECT 
 1 AS `id_usuario`,
 1 AS `usunombre`,
 1 AS `usudireccion`,
 1 AS `usutelefono`,
 1 AS `usuemail`,
 1 AS `usuestado`,
 1 AS `rolnombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `consultar_producto`
--

/*!50001 DROP VIEW IF EXISTS `consultar_producto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consultar_producto` AS select `tblproductos`.`id_prod` AS `id_prod`,`tblproductos`.`prodnombre` AS `prodnombre`,`tblproductos`.`prodprecio` AS `prodprecio`,`tblproductos`.`prod_id_categoria` AS `prod_id_categoria`,`tblproductos`.`prodestado` AS `prodestado`,`tblproductos`.`prodstock_disp` AS `prodstock_disp`,`tblproductos`.`prod_descripcion` AS `prod_descripcion`,`tblproductos`.`prod_id_prov` AS `prod_id_prov`,`tblcategorias`.`catnombre` AS `catnombre`,`tblproveedores`.`pronombre` AS `pronombre` from ((`tblproductos` join `tblcategorias` on((`tblcategorias`.`id_cat` = `tblproductos`.`prod_id_categoria`))) join `tblproveedores` on((`tblproveedores`.`id_prov` = `tblproductos`.`prod_id_prov`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuariosactivos`
--

/*!50001 DROP VIEW IF EXISTS `usuariosactivos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuariosactivos` AS select `tblusuarios`.`id_usuario` AS `id_usuario`,concat(`tblusuarios`.`usunombre`,' ',`tblusuarios`.`usuapellido`) AS `usunombre`,`tblusuarios`.`usudireccion` AS `usudireccion`,`tblusuarios`.`usutelefono` AS `usutelefono`,`tblusuarios`.`usuemail` AS `usuemail`,`tblusuarios`.`usuestado` AS `usuestado`,`tblroles`.`rolnombre` AS `rolnombre` from (`tblusuarios` join `tblroles` on((`tblusuarios`.`usu_id_rol` = `tblroles`.`id_Rol`))) where (`tblusuarios`.`usuestado` = 'activo') */;
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

-- Dump completed on 2023-10-06 17:09:19
