CREATE DATABASE  IF NOT EXISTS `itsurlearnenglish` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `itsurlearnenglish`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: itsurlearnenglish
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estadistica`
--

DROP TABLE IF EXISTS `estadistica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estadistica` (
  `IdEstadistica` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(20) NOT NULL,
  `FechaInicio` datetime NOT NULL,
  `Nivel` int(11) NOT NULL,
  PRIMARY KEY (`IdEstadistica`),
  KEY `User` (`User`),
  CONSTRAINT `estadistica_ibfk_1` FOREIGN KEY (`User`) REFERENCES `usuario` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadistica`
--

LOCK TABLES `estadistica` WRITE;
/*!40000 ALTER TABLE `estadistica` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadistica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gramatica`
--

DROP TABLE IF EXISTS `gramatica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gramatica` (
  `IdGramatica` int(11) NOT NULL AUTO_INCREMENT,
  `Sujeto` varchar(50) DEFAULT NULL,
  `Verbo` varchar(50) DEFAULT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `Tipo` enum('Afirmativo','Pregunta','Negativo') NOT NULL,
  PRIMARY KEY (`IdGramatica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gramatica`
--

LOCK TABLES `gramatica` WRITE;
/*!40000 ALTER TABLE `gramatica` DISABLE KEYS */;
/*!40000 ALTER TABLE `gramatica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gramaticaportema`
--

DROP TABLE IF EXISTS `gramaticaportema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gramaticaportema` (
  `IdTema` int(11) NOT NULL,
  `IdGramatica` int(11) NOT NULL,
  PRIMARY KEY (`IdTema`,`IdGramatica`),
  KEY `IdGramatica` (`IdGramatica`),
  CONSTRAINT `gramaticaportema_ibfk_1` FOREIGN KEY (`IdGramatica`) REFERENCES `gramatica` (`idgramatica`),
  CONSTRAINT `gramaticaportema_ibfk_2` FOREIGN KEY (`IdTema`) REFERENCES `tema` (`idtema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gramaticaportema`
--

LOCK TABLES `gramaticaportema` WRITE;
/*!40000 ALTER TABLE `gramaticaportema` DISABLE KEYS */;
/*!40000 ALTER TABLE `gramaticaportema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practica`
--

DROP TABLE IF EXISTS `practica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `practica` (
  `IdPractica` int(11) NOT NULL AUTO_INCREMENT,
  `Correctas` int(11) NOT NULL,
  `IdTema` int(11) DEFAULT NULL,
  `User` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IdPractica`),
  KEY `IdTema` (`IdTema`),
  KEY `User` (`User`),
  CONSTRAINT `practica_ibfk_1` FOREIGN KEY (`IdTema`) REFERENCES `tema` (`idtema`),
  CONSTRAINT `practica_ibfk_2` FOREIGN KEY (`User`) REFERENCES `usuario` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practica`
--

LOCK TABLES `practica` WRITE;
/*!40000 ALTER TABLE `practica` DISABLE KEYS */;
/*!40000 ALTER TABLE `practica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pregunta` (
  `idPregunta` int(11) NOT NULL AUTO_INCREMENT,
  `Pregunta` varchar(150) NOT NULL,
  `RespuestaCorrecta` varchar(150) NOT NULL,
  `RespuestaIncorrecta1` varchar(150) NOT NULL,
  `RespuestaIncorrecta2` varchar(150) NOT NULL,
  `RespuestaIncorrecta3` varchar(150) NOT NULL,
  PRIMARY KEY (`idPregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntacontestadaporusuaruio`
--

DROP TABLE IF EXISTS `preguntacontestadaporusuaruio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `preguntacontestadaporusuaruio` (
  `User` varchar(20) NOT NULL,
  `IdPregunta` int(11) NOT NULL,
  `Contesto` enum('Correcto','Incorrecto') DEFAULT NULL,
  PRIMARY KEY (`User`,`IdPregunta`),
  KEY `IdPregunta` (`IdPregunta`),
  CONSTRAINT `preguntacontestadaporusuaruio_ibfk_1` FOREIGN KEY (`IdPregunta`) REFERENCES `pregunta` (`idpregunta`),
  CONSTRAINT `preguntacontestadaporusuaruio_ibfk_2` FOREIGN KEY (`User`) REFERENCES `usuario` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntacontestadaporusuaruio`
--

LOCK TABLES `preguntacontestadaporusuaruio` WRITE;
/*!40000 ALTER TABLE `preguntacontestadaporusuaruio` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntacontestadaporusuaruio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntaporquiz`
--

DROP TABLE IF EXISTS `preguntaporquiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `preguntaporquiz` (
  `IdPreguntaQuiz` int(11) NOT NULL AUTO_INCREMENT,
  `IdPregunta` int(11) DEFAULT NULL,
  `IdQuiz` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPreguntaQuiz`),
  KEY `IdPregunta` (`IdPregunta`),
  KEY `IdQuiz` (`IdQuiz`),
  CONSTRAINT `preguntaporquiz_ibfk_1` FOREIGN KEY (`IdPregunta`) REFERENCES `pregunta` (`idpregunta`),
  CONSTRAINT `preguntaporquiz_ibfk_2` FOREIGN KEY (`IdQuiz`) REFERENCES `quiz` (`idquiz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntaporquiz`
--

LOCK TABLES `preguntaporquiz` WRITE;
/*!40000 ALTER TABLE `preguntaporquiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntaporquiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntaportema`
--

DROP TABLE IF EXISTS `preguntaportema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `preguntaportema` (
  `IdPregunta` int(11) NOT NULL,
  `IdTema` int(11) NOT NULL,
  PRIMARY KEY (`IdPregunta`,`IdTema`),
  KEY `IdTema` (`IdTema`),
  CONSTRAINT `preguntaportema_ibfk_1` FOREIGN KEY (`IdPregunta`) REFERENCES `pregunta` (`idpregunta`),
  CONSTRAINT `preguntaportema_ibfk_2` FOREIGN KEY (`IdTema`) REFERENCES `tema` (`idtema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntaportema`
--

LOCK TABLES `preguntaportema` WRITE;
/*!40000 ALTER TABLE `preguntaportema` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntaportema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `quiz` (
  `idQuiz` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(40) NOT NULL,
  PRIMARY KEY (`idQuiz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sujeto`
--

DROP TABLE IF EXISTS `sujeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sujeto` (
  `IdSujeto` int(11) NOT NULL AUTO_INCREMENT,
  `SujetoTraducido` varchar(30) NOT NULL,
  `Sujeto` varchar(30) NOT NULL,
  `Objeto` varchar(30) DEFAULT NULL,
  `Posesivo` varchar(30) DEFAULT NULL,
  `Sucesivo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdSujeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sujeto`
--

LOCK TABLES `sujeto` WRITE;
/*!40000 ALTER TABLE `sujeto` DISABLE KEYS */;
/*!40000 ALTER TABLE `sujeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tema` (
  `IdTema` int(11) NOT NULL AUTO_INCREMENT,
  `NombreTraduccion` varchar(100) DEFAULT NULL,
  `NombreIngles` varchar(100) DEFAULT NULL,
  `ContenidoTraduccion` text,
  `ContenidoIngles` text,
  `Dificultad` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdTema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `User` varchar(20) NOT NULL,
  `Password` char(128) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `ApellidoPaterno` varchar(40) DEFAULT NULL,
  `ApellidoMaterno` varchar(40) DEFAULT NULL,
  `Correo` varchar(50) NOT NULL,
  `Foto` varchar(100) DEFAULT NULL,
  `Privilegio` enum('Administrativo','Alumno') DEFAULT NULL,
  PRIMARY KEY (`User`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verbo`
--

DROP TABLE IF EXISTS `verbo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `verbo` (
  `IdVerbo` int(11) NOT NULL AUTO_INCREMENT,
  `VerboTraduccion` varchar(50) NOT NULL,
  `VerboPresenteSimple` varchar(50) NOT NULL,
  `VerboPasadoSimple` varchar(50) NOT NULL,
  `VerboPasadoParticipio` varchar(50) NOT NULL,
  PRIMARY KEY (`IdVerbo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verbo`
--

LOCK TABLES `verbo` WRITE;
/*!40000 ALTER TABLE `verbo` DISABLE KEYS */;
/*!40000 ALTER TABLE `verbo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-16 13:48:31
