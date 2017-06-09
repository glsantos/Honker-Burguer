CREATE DATABASE  IF NOT EXISTS `dbhonkerburguer20171sem` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbhonkerburguer20171sem`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: dbhonkerburguer20171sem
-- ------------------------------------------------------
-- Server version	5.6.10-log

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
-- Table structure for table `tblbanda`
--

DROP TABLE IF EXISTS `tblbanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbanda` (
  `idBanda` tinyint(4) NOT NULL AUTO_INCREMENT,
  `idHamburguer` smallint(6) NOT NULL,
  `logoBanda` varchar(45) NOT NULL,
  `historiaBanda` text NOT NULL,
  `fotoBanda` varchar(45) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`idBanda`),
  UNIQUE KEY `idHamburguer_UNIQUE` (`idHamburguer`),
  UNIQUE KEY `logoBanda_UNIQUE` (`logoBanda`),
  CONSTRAINT `fk_idHamburguerBanda` FOREIGN KEY (`idHamburguer`) REFERENCES `tblhamburguer` (`idHamburguer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbanda`
--

LOCK TABLES `tblbanda` WRITE;
/*!40000 ALTER TABLE `tblbanda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcidade`
--

DROP TABLE IF EXISTS `tblcidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcidade` (
  `idCidade` int(11) NOT NULL AUTO_INCREMENT,
  `idEstado` int(11) NOT NULL,
  `nomeCidade` varchar(60) NOT NULL,
  PRIMARY KEY (`idCidade`),
  KEY `idEstado_idx` (`idEstado`),
  CONSTRAINT `fk_idEstado` FOREIGN KEY (`idEstado`) REFERENCES `tblestado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcidade`
--

LOCK TABLES `tblcidade` WRITE;
/*!40000 ALTER TABLE `tblcidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontato`
--

DROP TABLE IF EXISTS `tblcontato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontato` (
  `idContato` mediumint(9) NOT NULL,
  `Celular` varchar(15) NOT NULL,
  `Telefone` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`idContato`),
  UNIQUE KEY `idContato_UNIQUE` (`idContato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontato`
--

LOCK TABLES `tblcontato` WRITE;
/*!40000 ALTER TABLE `tblcontato` DISABLE KEYS */;
INSERT INTO `tblcontato` VALUES (1,'(11) 97961-1772',NULL);
/*!40000 ALTER TABLE `tblcontato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontato_usuario`
--

DROP TABLE IF EXISTS `tblcontato_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontato_usuario` (
  `idContato_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` mediumint(9) NOT NULL,
  `idContato` mediumint(9) NOT NULL,
  PRIMARY KEY (`idContato_Usuario`),
  UNIQUE KEY `idContato_Usuario_UNIQUE` (`idContato_Usuario`),
  KEY `idUsuario_idx` (`idUsuario`),
  KEY `idContato_idx` (`idContato`),
  CONSTRAINT `fk_idContato` FOREIGN KEY (`idContato`) REFERENCES `tblcontato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `tblusuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontato_usuario`
--

LOCK TABLES `tblcontato_usuario` WRITE;
/*!40000 ALTER TABLE `tblcontato_usuario` DISABLE KEYS */;
INSERT INTO `tblcontato_usuario` VALUES (2,2,1);
/*!40000 ALTER TABLE `tblcontato_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblenderecorestaurante`
--

DROP TABLE IF EXISTS `tblenderecorestaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblenderecorestaurante` (
  `idEndereco` int(11) NOT NULL AUTO_INCREMENT,
  `ruaRestaurante` varchar(45) NOT NULL,
  `numeroRestaurante` mediumint(9) NOT NULL,
  `fotoRestaurante` varchar(55) NOT NULL,
  PRIMARY KEY (`idEndereco`),
  UNIQUE KEY `ruaRestaurante_UNIQUE` (`ruaRestaurante`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblenderecorestaurante`
--

LOCK TABLES `tblenderecorestaurante` WRITE;
/*!40000 ALTER TABLE `tblenderecorestaurante` DISABLE KEYS */;
INSERT INTO `tblenderecorestaurante` VALUES (16,'Av. Bluffington',666,'arquivo/ambiente01.jpg'),(24,'Rua nao sei onde fica',123,'arquivo/images.png');
/*!40000 ALTER TABLE `tblenderecorestaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestado`
--

DROP TABLE IF EXISTS `tblestado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestado` (
  `idEstado` int(11) NOT NULL AUTO_INCREMENT,
  `idPais` tinyint(4) NOT NULL,
  `uf` varchar(2) NOT NULL,
  PRIMARY KEY (`idEstado`),
  UNIQUE KEY `idPais_UNIQUE` (`idPais`),
  UNIQUE KEY `uf_UNIQUE` (`uf`),
  CONSTRAINT `fk_idPais` FOREIGN KEY (`idPais`) REFERENCES `tblpais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestado`
--

LOCK TABLES `tblestado` WRITE;
/*!40000 ALTER TABLE `tblestado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblestado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfaleconosco`
--

DROP TABLE IF EXISTS `tblfaleconosco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfaleconosco` (
  `idFaleConosco` bigint(20) NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(80) NOT NULL,
  `telefoneCliente` varchar(14) DEFAULT NULL,
  `celularCliente` varchar(15) NOT NULL,
  `emailCliente` varchar(55) NOT NULL,
  `profissaoCliente` varchar(55) NOT NULL,
  `sexoCliente` varchar(1) NOT NULL,
  `homePageCliente` varchar(55) DEFAULT NULL,
  `linkFbCliente` varchar(100) DEFAULT NULL,
  `sugestaoCliente` text,
  PRIMARY KEY (`idFaleConosco`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfaleconosco`
--

LOCK TABLES `tblfaleconosco` WRITE;
/*!40000 ALTER TABLE `tblfaleconosco` DISABLE KEYS */;
INSERT INTO `tblfaleconosco` VALUES (25,'Fran','','11 97961-1772','fran@gmail.com','Assistente de DP','F','','',' Site top de +++');
/*!40000 ALTER TABLE `tblfaleconosco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhamburguer`
--

DROP TABLE IF EXISTS `tblhamburguer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblhamburguer` (
  `idHamburguer` smallint(6) NOT NULL,
  `idTipoHamburguer` tinyint(4) NOT NULL,
  `idSubTipoHamburguer` int(11) NOT NULL,
  `nomeHamburguer` varchar(45) NOT NULL,
  `fotoHamburguer` varchar(55) NOT NULL,
  `preco` float(5,2) NOT NULL,
  PRIMARY KEY (`idHamburguer`),
  UNIQUE KEY `nomeHamburguer_UNIQUE` (`nomeHamburguer`),
  UNIQUE KEY `fotoHamburguer_UNIQUE` (`fotoHamburguer`),
  KEY `fk_idSubTipoHamburguer_idx` (`idTipoHamburguer`),
  KEY `fk_idSubTipoHamburguer_idx1` (`idSubTipoHamburguer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhamburguer`
--

LOCK TABLES `tblhamburguer` WRITE;
/*!40000 ALTER TABLE `tblhamburguer` DISABLE KEYS */;
INSERT INTO `tblhamburguer` VALUES (1,1,1,'Honk Fish','arquivo/peixe01.png',5.99),(3,3,1,'Honk Chicken','arquivo/frango01.png',12.99),(6,2,2,' Honk Down','arquivo/mcd1.png',21.00),(7,2,3,'Honk Now','arquivo/mcd5.png',2.00),(8,3,4,'Honk Actually','arquivo/mcd13.png',3.00),(9,4,5,'Honk Bridget','arquivo/hamburger-slide1.png',5.00),(10,5,6,'Honk Mosca','arquivo/ezequiel.jpg',6.00);
/*!40000 ALTER TABLE `tblhamburguer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblingrediente`
--

DROP TABLE IF EXISTS `tblingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblingrediente` (
  `idIngrediente` smallint(6) NOT NULL,
  `nomeIngrediente` varchar(55) NOT NULL,
  PRIMARY KEY (`idIngrediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblingrediente`
--

LOCK TABLES `tblingrediente` WRITE;
/*!40000 ALTER TABLE `tblingrediente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblingrediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllanchemes`
--

DROP TABLE IF EXISTS `tbllanchemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllanchemes` (
  `idLancheMes` int(11) NOT NULL AUTO_INCREMENT,
  `idHamburguer` smallint(6) NOT NULL,
  `idMes` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`idLancheMes`),
  UNIQUE KEY `idHamburguer_UNIQUE` (`idHamburguer`),
  CONSTRAINT `fk_idHamburguerLancheMes` FOREIGN KEY (`idHamburguer`) REFERENCES `tblhamburguer` (`idHamburguer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllanchemes`
--

LOCK TABLES `tbllanchemes` WRITE;
/*!40000 ALTER TABLE `tbllanchemes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllanchemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmes`
--

DROP TABLE IF EXISTS `tblmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmes` (
  `idMes` smallint(6) NOT NULL,
  `mes` varchar(45) NOT NULL,
  PRIMARY KEY (`idMes`),
  UNIQUE KEY `idMes_UNIQUE` (`idMes`),
  UNIQUE KEY `mes_UNIQUE` (`mes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmes`
--

LOCK TABLES `tblmes` WRITE;
/*!40000 ALTER TABLE `tblmes` DISABLE KEYS */;
INSERT INTO `tblmes` VALUES (4,'abril'),(8,'agosto'),(12,'dezembro'),(2,'fevereiro'),(1,'janeiro'),(7,'julho'),(6,'junho'),(5,'maio'),(3,'março'),(11,'novembro'),(10,'outubro'),(9,'setembro');
/*!40000 ALTER TABLE `tblmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnivelusuario`
--

DROP TABLE IF EXISTS `tblnivelusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnivelusuario` (
  `idNivelUsuario` tinyint(4) NOT NULL,
  `nivelUsuario` varchar(45) NOT NULL,
  `descFuncao` text NOT NULL,
  PRIMARY KEY (`idNivelUsuario`),
  UNIQUE KEY `idNivelUsuario_UNIQUE` (`idNivelUsuario`),
  UNIQUE KEY `nivelUsuario_UNIQUE` (`nivelUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnivelusuario`
--

LOCK TABLES `tblnivelusuario` WRITE;
/*!40000 ALTER TABLE `tblnivelusuario` DISABLE KEYS */;
INSERT INTO `tblnivelusuario` VALUES (1,'Administrador','																																												Pode realizar todo o gerenciamento do site. Páginas gerenciáveis: Todas.																																								'),(2,'Operador Básico','Pode apenas gerenciar as informações básicas do site. Páginas gerenciáveis: Adm. Conteúdo, Adm de Usuários e Fale Conosco.'),(3,'Cataloguista','Pode gerenciar os produtos exibidos no site. Páginas gerenciáveis: Adm. Produtos.');
/*!40000 ALTER TABLE `tblnivelusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpais`
--

DROP TABLE IF EXISTS `tblpais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpais` (
  `idPais` tinyint(4) NOT NULL,
  `nomePais` varchar(60) NOT NULL,
  PRIMARY KEY (`idPais`),
  UNIQUE KEY `nomePais_UNIQUE` (`nomePais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpais`
--

LOCK TABLES `tblpais` WRITE;
/*!40000 ALTER TABLE `tblpais` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpromocao`
--

DROP TABLE IF EXISTS `tblpromocao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpromocao` (
  `idPromocao` mediumint(9) NOT NULL AUTO_INCREMENT,
  `idHamburguer` smallint(6) NOT NULL,
  `preco` float NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`idPromocao`),
  UNIQUE KEY `idHamburguer_UNIQUE` (`idHamburguer`),
  CONSTRAINT `fk_idHamburguer` FOREIGN KEY (`idHamburguer`) REFERENCES `tblhamburguer` (`idHamburguer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpromocao`
--

LOCK TABLES `tblpromocao` WRITE;
/*!40000 ALTER TABLE `tblpromocao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromocao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrestaurante`
--

DROP TABLE IF EXISTS `tblrestaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblrestaurante` (
  `idRestaurante` int(11) NOT NULL AUTO_INCREMENT,
  `idEndereco` int(11) NOT NULL,
  `fotoRestaurante` varchar(45) NOT NULL,
  PRIMARY KEY (`idRestaurante`),
  UNIQUE KEY `idEndereco_UNIQUE` (`idEndereco`),
  CONSTRAINT `fk_idEndereco` FOREIGN KEY (`idEndereco`) REFERENCES `tblenderecorestaurante` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrestaurante`
--

LOCK TABLES `tblrestaurante` WRITE;
/*!40000 ALTER TABLE `tblrestaurante` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrestaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsobrehamburgueria`
--

DROP TABLE IF EXISTS `tblsobrehamburgueria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsobrehamburgueria` (
  `idHistoria` smallint(6) NOT NULL AUTO_INCREMENT,
  `fotoHistoria` varchar(55) NOT NULL,
  `tituloHistoria` varchar(55) NOT NULL,
  `textoHistoria` text NOT NULL,
  `statusHistoria` tinyint(4) NOT NULL,
  PRIMARY KEY (`idHistoria`),
  UNIQUE KEY `fotoHistoria_UNIQUE` (`fotoHistoria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsobrehamburgueria`
--

LOCK TABLES `tblsobrehamburgueria` WRITE;
/*!40000 ALTER TABLE `tblsobrehamburgueria` DISABLE KEYS */;
INSERT INTO `tblsobrehamburgueria` VALUES (1,'arquivo/body.jpg','História da Honker','O vídeo fornece uma maneira poderosa de ajudá-lo a provar seu argumento. Ao clicar em Vídeo Online, você pode colar o código de inserção do vídeo que deseja adicionar. Você também pode digitar uma palavra-chave para pesquisar online o vídeo mais adequado ao seu documento.',1);
/*!40000 ALTER TABLE `tblsobrehamburgueria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsubtipo`
--

DROP TABLE IF EXISTS `tblsubtipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsubtipo` (
  `idSubTipoHamburguer` int(11) NOT NULL AUTO_INCREMENT,
  `idTipoHamburguer` tinyint(4) NOT NULL,
  `nomeSubTipoHamburguer` varchar(100) NOT NULL,
  PRIMARY KEY (`idSubTipoHamburguer`),
  KEY `fk_idTipoHamburguerSUB_idx` (`idTipoHamburguer`),
  CONSTRAINT `fk_idTipoHamburguerSUB` FOREIGN KEY (`idTipoHamburguer`) REFERENCES `tbltipohamburguer` (`idTipoHamburguer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubtipo`
--

LOCK TABLES `tblsubtipo` WRITE;
/*!40000 ALTER TABLE `tblsubtipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsubtipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsubtipohamburguer`
--

DROP TABLE IF EXISTS `tblsubtipohamburguer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsubtipohamburguer` (
  `idSubTipoHamburguer` int(11) NOT NULL AUTO_INCREMENT,
  `idTipoHamburguer` tinyint(4) NOT NULL,
  `nomeSubTipoHamburguer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idSubTipoHamburguer`,`idTipoHamburguer`),
  KEY `fk_subtipohamburguer_idx` (`idTipoHamburguer`),
  CONSTRAINT `fk_subtipohamburguer` FOREIGN KEY (`idTipoHamburguer`) REFERENCES `tbltipohamburguer` (`idTipoHamburguer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubtipohamburguer`
--

LOCK TABLES `tblsubtipohamburguer` WRITE;
/*!40000 ALTER TABLE `tblsubtipohamburguer` DISABLE KEYS */;
INSERT INTO `tblsubtipohamburguer` VALUES (1,1,'Integral'),(2,1,'Verde'),(3,1,'Light'),(4,1,'Fitness'),(5,2,'No Prato'),(6,2,'1k'),(7,2,'Gordinhos Burguer'),(8,2,'All The Burguer'),(9,3,'No Prato'),(10,3,'Especial'),(11,3,'Simples'),(12,3,'Double');
/*!40000 ALTER TABLE `tblsubtipohamburguer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltipohamburguer`
--

DROP TABLE IF EXISTS `tbltipohamburguer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltipohamburguer` (
  `idTipoHamburguer` tinyint(4) NOT NULL,
  `categoriaHamburguer` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoHamburguer`),
  UNIQUE KEY `idTipoHamburguer_UNIQUE` (`idTipoHamburguer`),
  UNIQUE KEY `tipoHamburguer_UNIQUE` (`categoriaHamburguer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltipohamburguer`
--

LOCK TABLES `tbltipohamburguer` WRITE;
/*!40000 ALTER TABLE `tbltipohamburguer` DISABLE KEYS */;
INSERT INTO `tbltipohamburguer` VALUES (3,'Black Dog'),(2,'Monster Burguer'),(1,'Natural\'s Burguer'),(4,'Shakes'),(5,'Vegano');
/*!40000 ALTER TABLE `tbltipohamburguer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuario`
--

DROP TABLE IF EXISTS `tblusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusuario` (
  `idUsuario` mediumint(9) NOT NULL AUTO_INCREMENT,
  `idNivelUsuario` tinyint(4) NOT NULL,
  `nomeUsuario` varchar(60) NOT NULL,
  `login` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  KEY `idNivelUsuario_idx` (`idNivelUsuario`),
  CONSTRAINT `fk_idNivelUsuario` FOREIGN KEY (`idNivelUsuario`) REFERENCES `tblnivelusuario` (`idNivelUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuario`
--

LOCK TABLES `tblusuario` WRITE;
/*!40000 ALTER TABLE `tblusuario` DISABLE KEYS */;
INSERT INTO `tblusuario` VALUES (2,1,'Gabriel Santos','glsantos','123','gabriel._.lima@hotmail.com','373.663.318-13'),(3,3,'Francielly Martins','fmartins','123','fran@gmail.com','356.538.218-39'),(25,2,'Marcel teixeira 123','marcelnt','123','marcel@teste.com','1234567897987');
/*!40000 ALTER TABLE `tblusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vm_consultalanchemes`
--

DROP TABLE IF EXISTS `vm_consultalanchemes`;
/*!50001 DROP VIEW IF EXISTS `vm_consultalanchemes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vm_consultalanchemes` AS SELECT 
 1 AS `ID`,
 1 AS `Lanche`,
 1 AS `Mês`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vm_exibesitelanchemes`
--

DROP TABLE IF EXISTS `vm_exibesitelanchemes`;
/*!50001 DROP VIEW IF EXISTS `vm_exibesitelanchemes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vm_exibesitelanchemes` AS SELECT 
 1 AS `ID`,
 1 AS `Lanche`,
 1 AS `Foto`,
 1 AS `Descrição`,
 1 AS `Preço`,
 1 AS `Mês`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_exibecategoriamenu`
--

DROP TABLE IF EXISTS `vw_exibecategoriamenu`;
/*!50001 DROP VIEW IF EXISTS `vw_exibecategoriamenu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_exibecategoriamenu` AS SELECT 
 1 AS `idCategoria`,
 1 AS `Categoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_exibeconsultalanchemes`
--

DROP TABLE IF EXISTS `vw_exibeconsultalanchemes`;
/*!50001 DROP VIEW IF EXISTS `vw_exibeconsultalanchemes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_exibeconsultalanchemes` AS SELECT 
 1 AS `ID`,
 1 AS `IDLanche`,
 1 AS `Lanche`,
 1 AS `idMes`,
 1 AS `Mês`,
 1 AS `Descrição`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_exibeprodutositehome`
--

DROP TABLE IF EXISTS `vw_exibeprodutositehome`;
/*!50001 DROP VIEW IF EXISTS `vw_exibeprodutositehome`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_exibeprodutositehome` AS SELECT 
 1 AS `idProduto`,
 1 AS `Produto`,
 1 AS `FotoProduto`,
 1 AS `CategoriaProduto`,
 1 AS `idCategoria`,
 1 AS `SubCategoriaProduto`,
 1 AS `Preço`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_exibesiteambientes`
--

DROP TABLE IF EXISTS `vw_exibesiteambientes`;
/*!50001 DROP VIEW IF EXISTS `vw_exibesiteambientes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_exibesiteambientes` AS SELECT 
 1 AS `ruaRestaurante`,
 1 AS `numeroRestaurante`,
 1 AS `fotoRestaurante`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_exibesitehistoriahamburgueria`
--

DROP TABLE IF EXISTS `vw_exibesitehistoriahamburgueria`;
/*!50001 DROP VIEW IF EXISTS `vw_exibesitehistoriahamburgueria`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_exibesitehistoriahamburgueria` AS SELECT 
 1 AS `fotoHistoria`,
 1 AS `tituloHistoria`,
 1 AS `textoHistoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_exibesubcategoriamenu`
--

DROP TABLE IF EXISTS `vw_exibesubcategoriamenu`;
/*!50001 DROP VIEW IF EXISTS `vw_exibesubcategoriamenu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_exibesubcategoriamenu` AS SELECT 
 1 AS `idSubCategoria`,
 1 AS `idCategoria`,
 1 AS `SubCategoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'dbhonkerburguer20171sem'
--

--
-- Dumping routines for database 'dbhonkerburguer20171sem'
--
/*!50003 DROP PROCEDURE IF EXISTS `ConsultaPromocao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultaPromocao`()
BEGIN
	SELECT p.idPromocao AS ID, h.nomeHamburguer AS Hamburguer, h.idHamburguer, p.preco AS Preço, p.status AS Status, h.fotoHamburguer AS Foto
	FROM tblpromocao AS p
	INNER JOIN tblhamburguer AS h
	ON p.idHamburguer = h.idHamburguer
	INNER JOIN tbltipohamburguer AS th
	ON h.idTipoHamburguer = th.idTipoHamburguer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExibePromocao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ExibePromocao`()
BEGIN
	SELECT h.nomeHamburguer AS Hamburguer, p.preco AS Preço, h.fotoHamburguer AS Foto
	FROM tblpromocao AS p
	INNER JOIN tblhamburguer AS h
	ON p.idHamburguer = h.idHamburguer
    WHERE p.status = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Funcionarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Funcionarios`()
BEGIN

	SELECT 	usu.idUsuario,
			usu.nomeUsuario AS Usuario,
			usu.login AS Username,
			nvl.nivelUsuario AS Cargo
    FROM tblusuario AS usu
	INNER JOIN tblnivelusuario AS nvl
    ON nvl.idNivelUsuario = usu.idNivelUsuario
    ORDER BY usu.idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Promocao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Promocao`()
BEGIN
	SELECT p.idPromocao AS ID, h.nomeHamburguer AS Hamburguer, p.preco AS Preço, p.status AS Status
	FROM tblpromocao AS p
	INNER JOIN tblhamburguer AS h
	ON p.idHamburguer = h.idHamburguer
	INNER JOIN tbltipohamburguer AS th
	ON h.idTipoHamburguer = th.idTipoHamburguer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `selectNormal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectNormal`()
BEGIN

	SELECT 	usu.nomeUsuario AS Usuario,
			nvl.nivelUsuario AS Cargo,
            usu.login AS Username
    FROM tblusuario AS usu
	INNER JOIN tblnivelusuario AS nvl
    ON nvl.idNivelUsuario = usu.idNivelUsuario
    ORDER BY usu.idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vm_consultalanchemes`
--

/*!50001 DROP VIEW IF EXISTS `vm_consultalanchemes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vm_consultalanchemes` AS select `lm`.`idLancheMes` AS `ID`,`h`.`nomeHamburguer` AS `Lanche`,`m`.`mes` AS `Mês`,`lm`.`status` AS `Status` from ((`tblhamburguer` `h` join `tbllanchemes` `lm` on((`lm`.`idHamburguer` = `h`.`idHamburguer`))) join `tblmes` `m` on((`m`.`idMes` = `lm`.`idMes`))) order by `m`.`idMes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vm_exibesitelanchemes`
--

/*!50001 DROP VIEW IF EXISTS `vm_exibesitelanchemes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vm_exibesitelanchemes` AS select `lm`.`idLancheMes` AS `ID`,`h`.`nomeHamburguer` AS `Lanche`,`h`.`fotoHamburguer` AS `Foto`,`lm`.`descricao` AS `Descrição`,`h`.`preco` AS `Preço`,ucase(`m`.`mes`) AS `Mês`,`lm`.`status` AS `Status` from ((`tblhamburguer` `h` join `tbllanchemes` `lm` on((`lm`.`idHamburguer` = `h`.`idHamburguer`))) join `tblmes` `m` on((`m`.`idMes` = `lm`.`idMes`))) where (`lm`.`status` = 1) order by `m`.`idMes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_exibecategoriamenu`
--

/*!50001 DROP VIEW IF EXISTS `vw_exibecategoriamenu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_exibecategoriamenu` AS select `h`.`idTipoHamburguer` AS `idCategoria`,`h`.`categoriaHamburguer` AS `Categoria` from `tbltipohamburguer` `h` order by `h`.`categoriaHamburguer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_exibeconsultalanchemes`
--

/*!50001 DROP VIEW IF EXISTS `vw_exibeconsultalanchemes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_exibeconsultalanchemes` AS select `lm`.`idLancheMes` AS `ID`,`h`.`idHamburguer` AS `IDLanche`,`h`.`nomeHamburguer` AS `Lanche`,`m`.`idMes` AS `idMes`,`m`.`mes` AS `Mês`,`lm`.`descricao` AS `Descrição`,`lm`.`status` AS `Status` from ((`tblhamburguer` `h` join `tbllanchemes` `lm` on((`lm`.`idHamburguer` = `h`.`idHamburguer`))) join `tblmes` `m` on((`m`.`idMes` = `lm`.`idMes`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_exibeprodutositehome`
--

/*!50001 DROP VIEW IF EXISTS `vw_exibeprodutositehome`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_exibeprodutositehome` AS select `h`.`idHamburguer` AS `idProduto`,`h`.`nomeHamburguer` AS `Produto`,`h`.`fotoHamburguer` AS `FotoProduto`,`t`.`categoriaHamburguer` AS `CategoriaProduto`,`t`.`idTipoHamburguer` AS `idCategoria`,`st`.`nomeSubTipoHamburguer` AS `SubCategoriaProduto`,`h`.`preco` AS `Preço` from ((`tblhamburguer` `h` join `tbltipohamburguer` `t` on((`t`.`idTipoHamburguer` = `h`.`idTipoHamburguer`))) join `tblsubtipohamburguer` `st` on((`st`.`idSubTipoHamburguer` = `h`.`idSubTipoHamburguer`))) order by rand() */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_exibesiteambientes`
--

/*!50001 DROP VIEW IF EXISTS `vw_exibesiteambientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_exibesiteambientes` AS select `endr`.`ruaRestaurante` AS `ruaRestaurante`,`endr`.`numeroRestaurante` AS `numeroRestaurante`,`endr`.`fotoRestaurante` AS `fotoRestaurante` from `tblenderecorestaurante` `endr` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_exibesitehistoriahamburgueria`
--

/*!50001 DROP VIEW IF EXISTS `vw_exibesitehistoriahamburgueria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_exibesitehistoriahamburgueria` AS select `hst`.`fotoHistoria` AS `fotoHistoria`,`hst`.`tituloHistoria` AS `tituloHistoria`,`hst`.`textoHistoria` AS `textoHistoria` from `tblsobrehamburgueria` `hst` where (`hst`.`statusHistoria` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_exibesubcategoriamenu`
--

/*!50001 DROP VIEW IF EXISTS `vw_exibesubcategoriamenu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_exibesubcategoriamenu` AS select `st`.`idSubTipoHamburguer` AS `idSubCategoria`,`st`.`idTipoHamburguer` AS `idCategoria`,`st`.`nomeSubTipoHamburguer` AS `SubCategoria` from `tblsubtipohamburguer` `st` */;
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

-- Dump completed on 2017-06-09 16:59:19
