-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: app_store
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `tbl_aplicaciones`
--

DROP TABLE IF EXISTS `tbl_aplicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_aplicaciones` (
  `id_aplicacion` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_aplicacion` varchar(45) COLLATE utf8_romanian_ci NOT NULL,
  `nombre_aplicacion` varchar(50) COLLATE utf8_romanian_ci NOT NULL,
  `descripcion_aplicacion` varchar(255) COLLATE utf8_romanian_ci NOT NULL,
  `precio_aplicacion` float NOT NULL,
  `autor_aplicacion` varchar(100) COLLATE utf8_romanian_ci NOT NULL,
  `logo_aplicacion` varchar(255) COLLATE utf8_romanian_ci NOT NULL,
  `imagen_aplicacion` varchar(255) COLLATE utf8_romanian_ci NOT NULL,
  `is_instalada_aplicacion` tinyint(4) NOT NULL,
  `id_categoria_aplicacion` int(11) NOT NULL,
  PRIMARY KEY (`id_aplicacion`),
  KEY `id_categoria_fk_idx` (`id_categoria_aplicacion`),
  CONSTRAINT `id_categoria_fk` FOREIGN KEY (`id_categoria_aplicacion`) REFERENCES `tbl_categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aplicaciones`
--

LOCK TABLES `tbl_aplicaciones` WRITE;
/*!40000 ALTER TABLE `tbl_aplicaciones` DISABLE KEYS */;
INSERT INTO `tbl_aplicaciones` VALUES (1,'cod-001','App 1','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',0.45,'fgomez','/app-icons/1.webp','/app-screenshots/1.webp',0,3),(2,'cod-002','App 2','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',7.12,'fgomez','/app-icons/2.webp','/app-screenshots/1.webp',0,3),(3,'cod-003','App 3','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',7.24,'fgomez','/app-icons/3.webp','/app-screenshots/1.webp',0,3),(4,'cod-004','App 4','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',5.84,'fgomez','/app-icons/4.webp','/app-screenshots/2.webp',1,2),(5,'cod-005','App 5','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',7.45,'fgomez','/app-icons/5.webp','/app-screenshots/2.webp',0,2),(6,'cod-006','App 6','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',1.73,'fgomez','/app-icons/6.webp','/app-screenshots/2.webp',0,2),(7,'cod-007','App 7','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',4.29,'fgomez','/app-icons/7.webp','/app-screenshots/3.webp',0,1),(8,'cod-008','App 8','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',7.27,'fgomez','/app-icons/8.webp','/app-screenshots/3.webp',0,1),(9,'cod-009','App 9','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',5.45,'fgomez','/app-icons/9.webp','/app-screenshots/3.webp',0,1),(10,'cod-010','App 10','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',5.42,'fgomez','/app-icons/10.webp','/app-screenshots/1.webp',0,2),(11,'cod-011','App 11','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',1.74,'fgomez','/app-icons/11.webp','/app-screenshots/1.webp',0,2),(12,'cod-012','App 12','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',1.43,'fgomez','/app-icons/12.webp','/app-screenshots/1.webp',0,2),(13,'cod-013','App 13','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',1.94,'fgomez','/app-icons/13.webp','/app-screenshots/2.webp',0,3),(14,'cod-014','App 14','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',5.39,'fgomez','/app-icons/14.webp','/app-screenshots/2.webp',0,2),(15,'cod-015','App 15','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',3.14,'fgomez','/app-icons/15.webp','/app-screenshots/2.webp',0,1),(16,'cod-016','App 16','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',8.49,'fgomez','/app-icons/16.webp','/app-screenshots/1.webp',0,1),(17,'cod-017','App 17','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',6.04,'fgomez','/app-icons/17.webp','/app-screenshots/1.webp',1,2),(18,'cod-018','App 18','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',4.72,'fgomez','/app-icons/18.webp','/app-screenshots/1.webp',0,3),(19,'cod-019','App 19','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',5.48,'fgomez','/app-icons/19.webp','/app-screenshots/1.webp',1,4),(20,'cod-020','App 20','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',4.24,'fgomez','/app-icons/20.webp','/app-screenshots/1.webp',0,5),(21,'cod-021','App 21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',4.73,'fgomez','/app-icons/21.webp','/app-screenshots/2.webp',1,1),(22,'cod-022','App 22','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',1.91,'fgomez','/app-icons/22.webp','/app-screenshots/2.webp',0,2),(23,'cod-023','App 23','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',4.36,'fgomez','/app-icons/23.webp','/app-screenshots/2.webp',1,3),(24,'cod-024','App 24','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',7.08,'fgomez','/app-icons/24.webp','/app-screenshots/2.webp',0,1),(25,'cod-025','App 25','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',4.29,'fgomez','/app-icons/25.webp','/app-screenshots/3.webp',1,1),(26,'cod-026','App 26','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',0.22,'fgomez','/app-icons/26.webp','/app-screenshots/3.webp',0,1),(27,'cod-027','App 27','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',6.21,'fgomez','/app-icons/27.webp','/app-screenshots/3.webp',1,1),(28,'cod-028','App 28','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',3.37,'fgomez','/app-icons/28.webp','/app-screenshots/3.webp',1,4),(29,'cod-029','App 29','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',7.2,'fgomez','/app-icons/29.webp','/app-screenshots/1.webp',0,5),(30,'cod-030','App 30','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',7.88,'fgomez','/app-icons/30.webp','/app-screenshots/2.webp',0,5),(31,'cod-031','App 31','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',8.8,'fgomez','/app-icons/31.webp','/app-screenshots/3.webp',1,4),(32,'cod-032','App 32','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',2.36,'fgomez','/app-icons/32.webp','/app-screenshots/1.webp',0,3),(33,'cod-033','App 33','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',3.37,'fgomez','/app-icons/33.webp','/app-screenshots/2.webp',1,4),(34,'cod-034','App 34','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consectetur corporis, culpa accusamus cupiditate, assumenda nihil at aut quae, minima nemo dolore! Inventore alias reprehenderit quos, ducimus repellendus quas provident at!',0.77,'fgomez','/app-icons/34.webp','/app-screenshots/3.webp',0,1);
/*!40000 ALTER TABLE `tbl_aplicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_categoria`
--

DROP TABLE IF EXISTS `tbl_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categoria`
--

LOCK TABLES `tbl_categoria` WRITE;
/*!40000 ALTER TABLE `tbl_categoria` DISABLE KEYS */;
INSERT INTO `tbl_categoria` VALUES (1,'Acción'),(2,'Rol'),(3,'Aventura'),(4,'Carreras'),(5,'Mesa'),(6,'Estrategia');
/*!40000 ALTER TABLE `tbl_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comentarios`
--

DROP TABLE IF EXISTS `tbl_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_comentarios` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `texto_comentario` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `autor_comentario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_comentario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `valoracion_comentario` int(11) NOT NULL DEFAULT '0',
  `id_aplicacion_comentario` int(11) NOT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `id_aplicacion_idx` (`id_aplicacion_comentario`),
  CONSTRAINT `id_aplicacion_fk` FOREIGN KEY (`id_aplicacion_comentario`) REFERENCES `tbl_aplicaciones` (`id_aplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comentarios`
--

LOCK TABLES `tbl_comentarios` WRITE;
/*!40000 ALTER TABLE `tbl_comentarios` DISABLE KEYS */;
INSERT INTO `tbl_comentarios` VALUES (1,'Comentario de aplicativo 1','FGOMEZ','2022-07-28 23:28:00',1,1),(2,'comentario #2','FGOMEZ','2022-07-28 23:39:00',2,1),(3,'comentario #3','FGOMEZ','2022-07-28 23:41:46',3,1),(4,'comentario #3','FGOMEZ','2022-07-30 20:36:18',4,1),(5,'Comentario #1','FGOMEZ','2022-07-31 22:33:16',2,2),(6,'Comentario #1','FGOMEZ','2022-07-31 22:33:16',4,3),(7,'Comentario #1','FGOMEZ','2022-07-31 22:33:16',5,4),(8,'Comentario manual POST','FGOMEZ','2022-08-01 23:29:14',4,3),(9,'Comentario de prueba para el app #3','Francisco Gómez','2022-08-01 23:38:51',2,3),(10,'comentario de fperez','FPEREZ','2022-08-01 23:51:33',5,3),(11,'4 estrellas de FPEREZ','FPEREZ','2022-08-01 23:52:31',4,3),(12,'test nuevo comentario','FGOMEZ','2022-08-01 23:58:41',3,3),(13,'Primer comentario para el app','FGOMEZ','2022-08-02 00:01:21',4,9);
/*!40000 ALTER TABLE `tbl_comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_descargas_aplicaciones`
--

DROP TABLE IF EXISTS `tbl_descargas_aplicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_descargas_aplicaciones` (
  `id_descarga_aplicacion` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_descargar_aplicacion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_descarga_aplicacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_aplicacion_descarga_aplicacion` int(11) NOT NULL,
  PRIMARY KEY (`id_descarga_aplicacion`),
  KEY `id_aplicacion_descarga_aplicacion_idx` (`id_aplicacion_descarga_aplicacion`),
  CONSTRAINT `id_aplicacion_descarga_aplicacion` FOREIGN KEY (`id_aplicacion_descarga_aplicacion`) REFERENCES `tbl_aplicaciones` (`id_aplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descargas_aplicaciones`
--

LOCK TABLES `tbl_descargas_aplicaciones` WRITE;
/*!40000 ALTER TABLE `tbl_descargas_aplicaciones` DISABLE KEYS */;
INSERT INTO `tbl_descargas_aplicaciones` VALUES (4,'FGOMEZ','2022-07-30 20:58:48',1),(5,'FGOMEZ','2022-07-30 20:58:48',2),(6,'EGOMEZ','2022-07-30 20:59:19',2),(7,'EGOMEZ','2022-07-30 20:59:19',1),(8,'FGOMEZ','2022-08-02 00:27:41',9),(9,'FGOMEZ','2022-08-02 00:27:43',13),(10,'FGOMEZ','2022-08-02 00:27:47',9),(11,'FGOMEZ','2022-08-02 00:27:47',3),(12,'FGOMEZ','2022-08-02 00:27:47',16),(13,'FGOMEZ','2022-08-02 00:27:48',11),(14,'FGOMEZ','2022-08-02 00:27:48',7),(15,'FGOMEZ','2022-08-02 00:27:48',2),(16,'FGOMEZ','2022-08-02 00:27:49',17),(17,'FGOMEZ','2022-08-02 00:27:49',19),(18,'FGOMEZ','2022-08-02 00:27:49',12),(19,'FGOMEZ','2022-08-02 00:27:50',2),(20,'FGOMEZ','2022-08-02 00:27:50',4),(21,'FGOMEZ','2022-08-02 00:27:50',14),(22,'FGOMEZ','2022-08-02 00:27:50',26),(23,'FGOMEZ','2022-08-02 00:27:50',27),(24,'FGOMEZ','2022-08-02 00:27:51',25),(25,'FGOMEZ','2022-08-02 00:27:51',14),(26,'FGOMEZ','2022-08-02 00:27:51',22),(27,'FGOMEZ','2022-08-02 00:27:52',10),(28,'FGOMEZ','2022-08-02 00:27:52',11),(29,'FGOMEZ','2022-08-02 00:27:52',23),(30,'FGOMEZ','2022-08-02 00:27:53',22),(31,'FGOMEZ','2022-08-02 00:27:53',10),(32,'FGOMEZ','2022-08-02 00:27:53',15),(33,'FGOMEZ','2022-08-02 00:27:53',12),(34,'FGOMEZ','2022-08-02 00:27:55',15),(35,'FGOMEZ','2022-08-02 00:27:55',9),(36,'FGOMEZ','2022-08-02 00:27:55',28),(37,'FGOMEZ','2022-08-02 00:27:55',21),(38,'FGOMEZ','2022-08-02 00:27:56',21),(39,'FGOMEZ','2022-08-02 00:27:56',11),(40,'FGOMEZ','2022-08-02 00:27:56',20),(41,'FGOMEZ','2022-08-02 00:27:56',5),(42,'FGOMEZ','2022-08-02 00:27:56',25),(43,'FGOMEZ','2022-08-02 00:28:02',19),(44,'FGOMEZ','2022-08-02 00:28:03',18),(45,'FGOMEZ','2022-08-02 00:28:03',2),(46,'FGOMEZ','2022-08-02 00:28:03',17),(47,'FGOMEZ','2022-08-02 00:28:03',18),(48,'FGOMEZ','2022-08-02 00:28:03',9),(49,'FGOMEZ','2022-08-02 00:28:03',18),(50,'FGOMEZ','2022-08-02 00:28:04',31),(51,'FGOMEZ','2022-08-02 00:28:04',10),(52,'FGOMEZ','2022-08-02 00:28:04',18),(53,'FGOMEZ','2022-08-02 00:28:04',26),(54,'FGOMEZ','2022-08-02 00:28:04',19),(55,'FGOMEZ','2022-08-02 00:28:04',12),(56,'FGOMEZ','2022-08-02 00:28:05',4),(57,'FGOMEZ','2022-08-02 00:28:05',13),(58,'FGOMEZ','2022-08-02 00:28:05',23),(59,'FGOMEZ','2022-08-02 00:28:06',14);
/*!40000 ALTER TABLE `tbl_descargas_aplicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'app_store'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-02  0:47:58
