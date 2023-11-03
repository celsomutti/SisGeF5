-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: rjsmart_homologacao
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.37-MariaDB

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
-- Table structure for table `cadastro_estados`
--

DROP TABLE IF EXISTS `cadastro_estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cadastro_estados` (
  `uf_estado` varchar(2) NOT NULL,
  `nom_estado` varchar(70) NOT NULL,
  `cep_inicial` int(11) DEFAULT NULL,
  `cep_final` int(11) DEFAULT NULL,
  `des_log` mediumtext,
  PRIMARY KEY (`uf_estado`),
  KEY `cadastro_estados_ix1` (`cep_inicial`),
  KEY `cadastro_estados_ix2` (`cep_final`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_estados`
--

LOCK TABLES `cadastro_estados` WRITE;
/*!40000 ALTER TABLE `cadastro_estados` DISABLE KEYS */;
INSERT INTO `cadastro_estados` VALUES ('AC','ACRE',69900000,69999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('AL','ALAGOAS',57000000,57999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('AM','AMAZONAS',69000000,69899999,'2018-12-19 16:19:00 inserido por celso.mutti'),('AP','AMAPA',68900000,68999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('BA','BAHIA',40000000,48999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('CE','CEARA',60000000,63999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('DF','DISTRITO FEDERAL',70000000,73699999,'2018-12-19 16:19:00 inserido por celso.mutti'),('ES','ESPIRITO SANTO',29000000,29999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('GO','GOIAS',72800000,76799999,'2018-12-19 16:19:00 inserido por celso.mutti'),('MA','MARANHAO',65000000,65999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('MG','MINAS GERAIS',30000000,39999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('MS','MATO GROSSO DO SUL',79000000,79999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('MT','MATO GROSSO',78000000,78899999,'2018-12-19 16:19:00 inserido por celso.mutti'),('PA','PARA',66000000,68899999,'2018-12-19 16:19:00 inserido por celso.mutti'),('PB','PARAIBA',58000000,58999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('PE','PERNAMBUCO',50000000,56999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('PI','PIAUI',64000000,64999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('PR','PARANA',80000000,87999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('RJ','RIO DE JANEIRO',20000000,28999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('RN','RIO GRANDE DO NORTE',59000000,59999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('RO','RONDONIA',76800000,76999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('RR','RORAIMA',69300000,69399999,'2018-12-19 16:19:00 inserido por celso.mutti'),('RS','RIO GRANDE DO SUL',90000000,99999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('SC','SANTA CATARINA',88000000,88999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('SE','SERGIPE',49000000,49999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('SP','SÃO PAULO',1000000,19999999,'2018-12-19 16:19:00 inserido por celso.mutti'),('TO','TOCANTINS',77000000,77999999,'2018-12-19 16:19:00 inserido por celso.mutti');
/*!40000 ALTER TABLE `cadastro_estados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-19 16:27:27
