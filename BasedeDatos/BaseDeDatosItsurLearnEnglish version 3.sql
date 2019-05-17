USE `db_a48cbd_ieldb`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: itsurenglishlearn
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadistica`
--

LOCK TABLES `estadistica` WRITE;
/*!40000 ALTER TABLE `estadistica` DISABLE KEYS */;
INSERT INTO `estadistica` VALUES (1,'Jose1','2019-02-02 00:00:00',1);
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
  `Formula` varchar(200) DEFAULT NULL,
  `Tipo` enum('Afirmativo','Pregunta','Negativo') NOT NULL,
  `Voz` enum('P','A') DEFAULT NULL,
  `tercerapersona` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IdGramatica`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gramatica`
--

LOCK TABLES `gramatica` WRITE;
/*!40000 ALTER TABLE `gramatica` DISABLE KEYS */;
INSERT INTO `gramatica` VALUES (1,'sujeto_tobe_verbopresentesimple_complemento','Afirmativo','A',1),(2,'tobe_sujeto_verbopresentesimple_complemento_?','Pregunta','A',1),(3,'sujeto_tobe_not_verbopresentesimple_complemento','Negativo','A',1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gramaticaportema`
--

LOCK TABLES `gramaticaportema` WRITE;
/*!40000 ALTER TABLE `gramaticaportema` DISABLE KEYS */;
INSERT INTO `gramaticaportema` VALUES (1,1),(2,1),(1,2),(1,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practica`
--

LOCK TABLES `practica` WRITE;
/*!40000 ALTER TABLE `practica` DISABLE KEYS */;
INSERT INTO `practica` VALUES (1,1,1,'Jose1');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,'_____ is she?','Who','What','Which','Whose'),(2,'_____ you eat pizza?','Do','Does','are','___'),(3,'Where is David? _____ is at home.','He','His','she','him'),(4,'Can you help _____?','me','I','We','They'),(5,'Where is the book? ____ is on the table.','It','He','She','___'),(6,'____ house is blue.','Your','You','It','Yours'),(8,'Where ____ Sarah live?','does','is','do','are'),(9,'How many people ______ in your family?','are there','there are','is there','there'),(10,'Its Thursday today. Tomorrow it ___________ Friday.','will be','was','be','will'),(11,'\"Has Steve got a sister?\" \"No, he ___________, but he has got 2 brothers.\"','hasn´t','has','haven´t','not'),(12,' Complete the sentence: He _____ at the park','runs','run','ran','does run'),(13,'Complete the sentence: _____ He run at the park?','Does','Do','Did','Done'),(14,'What is the correct verb in past simple?','Ate','eat','eaten','eating'),(15,'He ____ pizza','ate','eat','eating','eaten'),(16,'We ____ run at the park','did not','does not','are not','do not'),(17,'Seleccione la traducción en Inglés del verbo \"escribir\" en tiempo pasado.','write','written','wrote','writing'),(18,'Selecccione la traducción de la palabra \"gato\".','Cat','Kitten','Dog','Lion');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntacontestadaporusuaruio`
--

LOCK TABLES `preguntacontestadaporusuaruio` WRITE;
/*!40000 ALTER TABLE `preguntacontestadaporusuaruio` DISABLE KEYS */;
INSERT INTO `preguntacontestadaporusuaruio` VALUES ('Jose1',12,'Correcto'),('Jose1',13,'Correcto'),('Jose1',14,'Incorrecto'),('Jose1',15,'Correcto'),('Jose1',16,'Incorrecto'),('Jose1',17,'Correcto'),('Jose1',18,'Correcto');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntaporquiz`
--

LOCK TABLES `preguntaporquiz` WRITE;
/*!40000 ALTER TABLE `preguntaporquiz` DISABLE KEYS */;
INSERT INTO `preguntaporquiz` VALUES (1,1,1),(2,3,1),(3,4,1),(4,2,1),(5,5,1),(6,6,1),(7,8,1),(8,9,1),(9,10,1),(10,11,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntaportema`
--

LOCK TABLES `preguntaportema` WRITE;
/*!40000 ALTER TABLE `preguntaportema` DISABLE KEYS */;
INSERT INTO `preguntaportema` VALUES (12,1),(13,1),(14,1),(15,2),(16,2),(17,3),(18,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'Quiz Diagnostico 1');
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
  `ser` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`IdSujeto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sujeto`
--

LOCK TABLES `sujeto` WRITE;
/*!40000 ALTER TABLE `sujeto` DISABLE KEYS */;
INSERT INTO `sujeto` VALUES (1,'Yo','I','Me','My','Myself','am'),(2,'Tú/Usted','You','You','Your','Yourself','are'),(3,'Él','He','Him','His','Himself','is'),(4,'Ella','She','Her','Her','Herself','is'),(5,'Eso','It','It','Its','Itself','is'),(6,'Nosotros/as','We','Us','Our','Ourselves','are'),(7,'Ustedes','You','You','Your','Yourselves','are'),(8,'Ellos/as','They','Them','Their','Themselves','are');
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
  `NombreIngles` varchar(100) NOT NULL,
  `ContenidoTraduccion` text,
  `ContenidoIngles` text,
  `Dificultad` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdTema`,`NombreIngles`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` VALUES (1,'Presente simple','Simple present','Un uso comÃºn para el presente simple es el hablar sobre informaciÃ³n personal, por ejemplo, de los trabajos de las personas y donde viven.\nGeneralmente usamos el presente simple para hablar de hechos (acontecimientos), costumbres o estados de Ã¡nimo. Veamos un ejemplo de cada\nuno de estos tÃ³picos:<br/>\n<br/>\n*Hecho------------>I live in Mexico-------------->(Yo vivo en MÃ©xico)<br/>\n*Costumbre-------->She plays soccer on Fridays--->(Ella juega futbol los viernes)<br/>\n*Estado de Ã¡nimo-->We feel tired----------------->(Nos sentimos cansados)<br/>\n<br/>\n\nLa gramÃ¡tica del presente simple estipula que al hablar de terceras   personas del singular (He, She, It) se debe agregar una \"-s\" Ã³ \"-es\" \nal final del verbo (dependiendo el caso) para oraciones afirmativas.<br/>\n<br/>\n<p align=\"center\"><b>Oraciones afirmativas de presente simple:</b></p><br/>\n <pre>\nI \nWe                    <b>Play</b>\nYou                                   <b>Football on weekends</b>\nThey                  <b>watch</b>\n<br/>\nHe                    <b>plays</b>\nShe                                    <b>Football on weekends</b>\nIt                    <b>watches</b>\n </pre>\n <br/>\n <p align=\"center\"><b>Reglas para verbos conjugados con terceras personas de presente simple</b><p/>\n \n <p>Existen 4 reglas que se deben cumplir para el caso de los verbos conjugados con terceras personas del singular, es decir, en caso de \n agregar \"-s\" o \"-es\". Estas reglas estÃ¡n determinadas teniendo en cuenta la terminaciÃ³n de\n cada verbo.</p>\n <b>1) Verbos en general </b>- Es comÃºn que cualquier verbo que no tenga en cuenta las caracterÃ­sticas posteriores, solamente se agregue una \n \"-s\" al final:<br/>\n <p></p>\n<p>\nWork / Works     (trabajar) <br/>\nKnow / Knows     (saber)    <br/>\nSpeak / Speaks    (hablar)  <br/>\n</p>\n\n<b>2) Terminacion del verbo en \"-ch, -sh, -x Ã³ -ss\"</b> - Con este tipo de verbos simplemente se debe agregar \"-es\" al final: \n<p></p>\ncatch / catches (atrapar)<br/> \nwash / washes (lavar)<br/> \nmix / mixes (mezclar)<br/> \nmiss / misses (extraÃ±ar, perder)<br/> \n<p></p>\n<p><b>3) TerminaciÃ³n del verbo en \"consonante + y\"</b> - En este caso hay que cambiar la \"y\" por \"i\" y agregar \"es\": \n<p><p/>\nStudy / Studies (Estudiar) <br/>\nTry / Tries (Intentar) <br/>\nFry / Fries (Freir) </p>\n<p><p/>\n<p><b>4) Verbos con forma especial:</b></p> \n<p><p/>\ngo / goes (ir) <br/>\ndo / does (hacer) <br/>\nhave / has (tener) <br/>\n<p></p>\n<h3 align=\"center\"><b>Ejemplos de presente simple en oraciones afirmativas:</b></h3>\n<p><p/>\n<p><p/>\n<p> \n<p align=\"center\"> I <b>work</b> on saturdays---(Yo trabajo los sÃ¡bados)</p>\n<p align=\"center\"> He <b>has</b> a nice computer---(Ã‰l tiene una bonita computadora)</p>\n<p align=\"center\"> My dad <b>works</b> near here---(Mi papa trabaja cerca de aquÃ­)</p>\n<p align=\"center\"> They <b>like</b> the good music---(A ellos les gusta la buena mÃºsica</p>\n<p align=\"center\"> Peter <b>washes</b> his car every week---(Pedro lava su carro cada semana)</p>\n<p align=\"center\"> Clara and Gabriel <b>have</b> a pet---(Clara y Gabriel tienen una mascota)</p> \n<p align=\"center\"> Hugo loves <b>his</b> job---(Hugo ama su trabajo)</p>\n<p align=\"center\"> My parents and I <b>live</b> in Mexico---(Mis padres y yo vivimos en MÃ©xico)</p>\n<p/>\n<p></p><br/>\n<p>En estos ejemplos se han resaltado los verbos de cada oraciÃ³n para demostrar cÃ³mo es que cambia dependiendo de si el sujeto es una tercera \npersona o no lo es. Por otro lado para formar oraciones negativas usamos los verbos auxiliares \"do\" Ã³ \"does\" + not. \"Does\" solo con las terceras\npersonas: </p>\n<p></p>\n<h3 align=\"center\">Oraciones negativas de presente simple: </h3>\n<p></p>\n<pre>\nI \nWe                    <b>do not play</b>\nYou                                   <b>Football on weekends</b>\nThey                  <b>donÂ´t play</b>\n<br/>\nHe                    <b>does not play</b>\nShe                                    <b>Football on weekends</b>\nIt                    <b>doesnÂ´t play</b>\n</pre>\n<p></p>\n<p>Las contracciones donÂ´t y doesnÂ´t son ampliamente usadas al hablar en inglÃ©s, de hecho, es mÃ¡s comÃºn que se escuche hablar a las personas con estas\ncontracciones en vez de usar las dos palabras de cada una.</p>\n<p></p>\n<p>NÃ³tese que con oraciones negativas no hay cambio en el verbo aunque estÃ©n en tercera persona, esto Ãºnicamente es para las oraciones afirmativas.</p>\n<p></p>\n<p>A continuaciÃ³n se muestran los ejemplos que se vieron en la secciÃ³n anterior pero en su modo negativo.</p><br/>\n<p></p>\n<h3 ALIGN=\"center\"><b>Ejemplos de presente simple en oraciones afirmativas:</b></h3>\n<pre ALIGN=\"center\">\nI do not work on saturdays                        (Yo no trabajo los sÃ¡bados) \nHe doesnÂ´Â´t have a nice computer                  (Ã‰l no tiene una bonita computadora)\nMy dad doesnÂ´t work near here                     (Mi papa no trabaja cerca de aquÃ­\nThey donÂ´t like the good music                    (A ellos no les gusta la buena mÃºsica) \nPeter doesnÂ´t wash his car every week             (Pedro no lava su carro cada semana)\nClara and Gabriel donÂ´t have a pet                (Clara y Gabriel no tienen una mascota)\nHugo doesnÂ´t love his job                         (Hugo no ama su trabajo)\n</pre>\n<p></p>\n<p>En estos ejemplos se han resaltado los verbos de cada oraciÃ³n para demostrar cÃ³mo es que cambia dependiendo de si el sujeto es una tercera persona o no lo es. \nPor otro lado para formar oraciones negativas usamos los verbos auxiliares \"do\" Ã³ \"does\" + not. \"Does\" solo con las terceras personas: </p>\n<p><p/>\n<h3>Preguntas personales en presente simple usando \"do\" y \"does\"</h3>\n<p></p>\n<p>Para formular preguntas en presente simple tenemos que usar los auxiliares \"do\" y \"does\" dependiendo de la persona de la cual estemos hablando en la oraciÃ³n. \nEstos auxiliares van antes del sujeto como se puede ver en la siguiente ilustraciÃ³n</p>\n<p></p>\n<pre>\n	    He                                yes, he does/No, he doesnÂ´t\nDoes        She      Work today?              yes, she does/No, she doesnÂ´t\n	    It                                yes it does/No, it doesnÂ´t \n\n	     I                               Yes, they do/No, they donÂ´t\n             We                              Yes, you do/No, you donÂ´t\nDo           You     We Work today?          Yes, we do/No, we donÂ´t\n             They                            Yes, I do/No I donÂ´t\n</pre>\n<p></p>\n<p>Los anteriores ejemplos son un tipo de preguntas para respuesta de \"sÃ­\" o \"no\". Cuando preguntamos con aquellas palabras \"wh-\" que vimos en la primer lecciÃ³n, \nestas se ponen al principio, despuÃ©s el auxiliar \"do\" o \"does\" dependiendo de la persona, luego el sujeto de quien se estÃ© preguntando ya sea en pronombre personal o el sustantivo</p>\n<p></p>\n<p align=\"center\"><b>â€œWh- questionâ€ + â€œdo/doesâ€ + personal pronoun/name + complement?</b></p>\n<p></p>\n<pre>\n                 He                 He works in a school\nWhere does       She       work?    She works in a school\n                 It                  it works in a school\n\n\n                 I                   You work in  a school\n                 We                  We work in a school\nWhere do         You       work?     I work in a school\n		 They                        They work in a school\n\n</pre>\n<p></p>\n<p>Algo importante que aclarar es que para formular preguntas no se sigue la regla de cambiar el verbo con terceras personas del \nsingular, solamente en las respuestas es donde se seguirÃ¡ la mencionada regla como se pudo notar en la ilustraciÃ³n de arriba. </p>\n<p></p>\n<p>En los siguientes ejemplos se muestran preguntas en presente simple. Las de la primer secciÃ³n son preguntas que requieren una \nrespuesta de \"sÃ­\" o \"no\" y las de la segunda secciÃ³n son preguntas especÃ­ficas que requieren una respuesta especifica debido a que \nhan sido formuladas con las palabras â€œWh-â€ vistas en el primer capÃ­tulo de este curso</p>\n<p></p>\n<h3 align=\"CENTER\"><b>Ejemplos de presente simple para preguntas con respuesta \"sÃ­\" o \"no\": \n</b></h3><br/>\n<p></p>\n<p>-Do you like the pizza? (Â¿Te gusta la pizza?)</p>\n<p>- Yes, I do. </p><br/>\n<p>- Does she watch TV on weekends?    (Â¿Mira ella televisiÃ³n en fines de semana?)</p>\n<p>- No, she doesnÂ´t</p><br/><br/>\n<p>- Do they have a pet?                             (Â¿Tienen ellos una mascota?)</p>\n<p>- No, they donÂ´t</p><br/>\n<p>- Does Alice want a new car?                (Â¿Quiere Alicia un auto nuevo?)</p>\n<p>- Yes, she does.</p><br>\n<p>- Do Charles and Gaby dance?             (Â¿Bailan Carlos y Gabriela?)</p>\n<p>- Yes, they do. </p><br/>\n<p align=\"center\"><b>Ejemplos de presente simple para preguntas \"Wh-\" y respuesta especifica:</b></p>\n<p></p>\n<p>- What do you do?                                                 (Â¿A quÃ© te dedicas?)</p>\n<p>- I am a doctor.                                                       (Soy un doctor) </p><br/>\n<p>- Where does he buy the food?                           (Â¿DÃ³nde compra Ã©l la comida?)</p>\n<p>- He buys the food at the store.                          (El compra la comida en la tienda)</p><br>\n<p>- When does Robert do the homework?           (Â¿Cuando hace la tarea Roberto?)</p>\n<p>- He does the homework in the afternoon.      (El hace la tarea en la tarde)</p><br/>\n<p>- What do Mike, Clara and Jill eat for dinner? (Â¿Que cenan Miguel, Clara y Jill?)</p>\n<p>- They eat cereal for dinner.                               (Ellos cenan cereal)</p><br/>\n<p>- Where does Oscar live?                                     (Â¿DÃ³nde vive Oscar?)</p>\n<p>- He lives in Spain.                                                 (Ã‰l vive en EspaÃ±a)</p><br/>\n','To conjugate the present simple we use the infinitive for the subjects “I”, “you”, “we” y “they” and for the third persons “he”, “she” y “it”, we add a “-s” to the end of the verb.',1),(2,'Pasado Simple','Simple present','<h3 align=\"center\"><b>Pasado simple de \"be\": Oraciones con Was / Were </b></h3><br/>\n<p>De la misma forma que el verbo \"to be\" tiene auxiliares para estructurar oraciones (am, is, are) el tiempo \npasado tambiÃ©n los presenta pero en este tiempo se utilizan solamente dos: \"was\" y \"were\". </p>\n<p></p>\n<p>De esta forma las oraciones afirmativas del pasado del verbo \"to be\" quedarÃ­an estructuradas bajo la siguiente gramÃ¡tica:</p><br/>\n<h4 aling=\"Center\"><b>Oraciones afirmativas de pasado del verbo \"to be\"</b></h4><br/>\n<pre>\nI \nHe \nShe         <b>Was</b>  at the store this morning \nIt\n\nWe\nYou         <b>Where</b>   at the store this morning \nThey\n</pre>\n<p></p>\n<p>NÃ³tese que el auxiliar en pasado \"was\" se usa Ãºnicamente con aquellos pronombres singulares, es decir, que hacen \nreferencia a una sola persona, en cambio el auxiliar \"were\" es usado con pronombres en plural (â€œYouâ€ es tomado de esta \nforma porque ademÃ¡s de \"TÃº o Usted\" tambiÃ©n refiere a \"Ustedes\")</p>\n<p></p>\n<p>NÃ³tese que el auxiliar en pasado \"was\" se usa Ãºnicamente con aquellos pronombres singulares, es decir, que hacen referencia\na una sola persona, en cambio el auxiliar \"were\" es usado con pronombres en plural (â€œYouâ€ es tomado de esta forma porque ademÃ¡s \nde \"TÃº o Usted\" tambiÃ©n refiere a \"Ustedes\")</p><br/>\n<h3><b>Ejemplos de oraciones afirmativas de pasado \"to be\"</b></h3>\n<p>Ejemplos \"ser\": </p>\n<p>Ejemplos \"ser\":</p>\n<p>\n<p>I was a student of this school.            (Yo era un estudiante de esta escuela)</p>\n<p>She was a model.                                  (Ella era una modelo)</p>\n<p>They were good children.                    (Ellos eran buenos niÃ±os)</p>\n</p>\n<p></p>\n<p>Ejemplos \"estar\": </p>\n<p>\n<p>He was at the beach this morning.     (Ã‰l estaba en la playa esta maÃ±ana) </p>\n<p>We were married.                                (EstÃ¡bamos casados)</p>\n<p>You were wrong.                                  (Estabas[n] equivocado[s]) </p>\n</p>\n<p></p>\n<p>En el caso de oraciones negativas se sigue la misma gramÃ¡tica aÃ±adiendo Ãºnicamente \"not\"</p><br/>\n<h3><b>Oraciones negativas de pasado del verbo \"to be\"</b></h3><br/>\n<pre>\n\nI    WAS NOT\nHe              at the store this morning\nShe  WASNÂ´T\n\nWe    WERE NOT\nYou             at the store this morning\nThey  WERENÂ´T \n</pre>\n<p></p>\n<p>Usualmente para expresar oraciones negativas al hablar / escribir se emplean las contracciones indicadas \"wasnÂ´t\" y \"werenÂ´Â´t\".</p><br/>\n<h3><b>Ejemplos de oraciones negativas de pasado \"to be\"</b></h3><br/>\n<pre>\nHe                    He was at the store\nShe   This morning?   She was at the store\nIt                    It was at the store\n\nWe                    We were at the store\nYou   this morning?   I was at the store\nThey                  They were at the store\n</pre><br/>\n<p align=\"center\">\"Wh-\" question + past of \"to be\" verb auxiliar + complement </p><br/>\n<p>Veamos los distintos tipos de preguntas en este tiempo y las posibles respuestas:</p><br/>\n<p align=\"Center\"><b>Preguntas con respuesta \"SÃ­\" o \"No\":</b> </p><br/>\n<p>\n- Were you a football player at the school? \n- Yes, I was. <br/>\n\n- Was she a model? \n- No, she wasnÂ´t.<br/>\n\n- Were they your friends? \n- No, they werenÂ´t.<br/> \n\n- Was Richard your boyfriend? \n- Yes, he was.<br/>\n\n- Were we on a test? \n- Yes, you were.<br/>\n\n</p><br/>\n<h3 align=\"center\"><b>Preguntas especÃ­ficas:</b></h3><br/>\n<p>\n- Where were you?\n- I was at the bank. <br/>\n- Where were Fernando and his girlfriend this morning? \n- They were home.<br/>\n- Who was that person? \n- He was my father.<br/>\n- What was that? \n- That was a thunder<br/>\n- When was Mary at the store? \n- She was at the store in the afternoon<br/> \n</p><br/>\n\n<h3 align=\"center\"><b>Ejemplos con diferencia de verbo \"to be\" en presente y pasad</b></h3><br/>\n<pre>\n\nPre: I am a teacher.                             Pre: Internet is important. \nPas: I was a teacher.                            Pas: Internet was important.<br/>\n\nPre: She is at the movies.                       Pre: Computers arenÂ´t fast.\nPas: She was at the movies.                      Pas: Computers werenâ€™t fast.\n\nPre: They are not professionals.                 Pre: Music is boring at the party.\nPas: They were not professionals.                Pas: Music was boring at the party.\n\n</pre><br/>\n\n<h3 align=\"center\"><b>Pasado simple: Oraciones y preguntas. Uso de auxiliar \"Did\"</b></h3><br/>\n<p>Usamos el tiempo \"Pasado simple\" para hablar acerca de acciones completadas en un tiempo pasado.\nEn este tema es de suma importancia el saber distinguir entre los verbos regulares y los verbos irregulares\n ya que su forma en pasado simple variarÃ¡ en funciÃ³n de estas dos categorÃ­as</p>\n<p></p>\n<p>Para formar el pasado simple de los verbos regulares bastarÃ¡ con aÃ±adir en la mayorÃ­a de los casos la \nterminaciÃ³n \"-ed\", en cambio con los verbos irregulares no se tiene una regla especÃ­fica y por lo tanto son \npalabras que deben ser memorizadas por la persona interesada en aprender inglÃ©s, al final del tema dejo una \nlista con enlaces a recursos Ãºtiles relacionados. Cabe mencionar que el aprendizaje de los tiempos en pasado \nsimple de los verbos nos ayudarÃ¡ Ãºnicamente a formular oraciones afirmativas. Para estructurar oraciones negativas\n e interrogativas haremos uso del auxiliar \"did\". </p><br/>\n<h3><b>Oraciones afirmativas en pasado simple</b></h3><br/>\n<pre>\nI\nHe\nShe\nIt        Arried    <b>On time</b>\nWe\nYou\nThey\n</pre><br/>\n\n<h4 align=\"center\">Ejemplos de oraciones afirmativas en pasado simple</h4><br/>\n<p>\n1.- He closed the window. (El cerrÃ³ la ventana).<br/>\n2.- They lost the keys. (Ellos perdieron las llaves)<br/>\n3.- Alice brushed her teeth (Alicia cepillÃ³ sus dientes)<br/>\n4.- Mike drank all the juice. (Miguel bebiÃ³ todo el jugo)<br/>\n5.- Sam and Ernest watched that movie. (Sam y Ernesto vieron esa pelÃ­cula)<br/>\n6.- Our team won the competition. (Nuestro equipo ganÃ³ la competencia)<br/>  \n</p><br/>\n<p>\nEs de resaltar que en el tiempo pasado para oraciones afirmativas no hay cambio en la \nestructura del verbo dependiendo de la persona de quien se estÃ© hablando (como es el caso del presente simple).\n</p><br/>\n<p>\nEn este tiempo hay que tener en cuenta que la conjugaciÃ³n de algunos verbos en pasado puede ser que se forme con la\nterminaciÃ³n \"-ed\" (verbos regulares) o tambiÃ©n que no se tenga forma establecida (verbos irregulares). \n</p><br/>\n<h3><b>Oraciones negativas en pasado simple</b></h3><br/>\n<p>\nComo mencionaba anteriormente, el aprendizaje de los verbos en tiempo pasado Ãºnicamente serÃ¡ Ãºtil para la \nestructuraciÃ³n de oraciones afirmativas.<br/>\nEn el caso de oraciones negativas e interrogativas nos valdremos del auxiliar \"did\" + not para hacer oraciones:\n</p><br/>\n<pre>\nI\nHe\nShe\nIt      did not\nWe                arrive on time\nYou     didnÂ´t\nThey\n</pre><br/>\n<p>\nA resaltar que en tiempo pasado ya que utilizamos el auxiliar \"did\" por ello no es necesario poner la forma del pasado \nsimple del verbo, por lo tanto, este se debe poner en su forma infinitiva tal y como se mostrÃ³ en el curso de inglÃ©s bÃ¡sico: \nVerbos en InglÃ©s, uso del infinitivo y ejemplos comunes\n</p><br/>\n<h3 align=\"center\"><b>Ejemplos de oraciones negativas en pasado simple</b></h3><br/>\n<p>\n1.- He did not close the window. (El no cerrÃ³ la ventana)<br/>\n2.- They didnÂ´t lose the keys. (Ellos no perdieron las llaves)<br/>\n3.- Alice did not brush her teeth. (Alicia no cepillÃ³ sus dientes)<br/>\n4.- Mike didnÂ´t drink all the juice. (Miguel no bebiÃ³ todo el jugo)<br/>\n5.- Sam and Ernest didnÂ´t watch that movie. (Sam y Ernesto no vieron esa pelÃ­cula)<br/>\n6.- Our team didnÂ´t win the competition. (Nuestro equipo no ganÃ³ la competencia)<br/>\n\nNota: La palabra â€œdidâ€ es la forma en pasado simple del verbo â€œdoâ€.\n Sin embargo en este tema la palabra â€œdidâ€ no se usÃ³ como verbo sino como auxiliar, asÃ­ que\n su traducciÃ³n en espaÃ±ol va de acuerdo al verbo infinitivo que le acompaÃ±a.\n</p><br/>\n<h3><b>Oraciones interrogativas en pasado simple (Preguntas)</b></h3><br/>\n<h5>Veamos la estructura correcta de una pregunta en sus dos formas bÃ¡sicas:</h5><br/>\n<p>\n1.- Preguntas que comienzan con el auxiliar \"Did\" y se contestan con: SÃ­ / No. <br/>\nEjemplos: <br/>\n <pre>\n-Did he arrive on time? (Â¿LlegÃ³ Ã©l a tiempo?) \n-Yes, he did\n\n-Did the package arrive on time? (Â¿LlegÃ³ el paquete a tiempo?) \n- No, it didnÂ´t \n</pre><br/>\n2.- Preguntas especÃ­ficas con palabras \"Wh-\" y se contestan con: Respuesta especÃ­fica<br/>\nEjemplos: <br/>\n<pre>\n- When did they arrive? (Â¿CuÃ¡ndo llegaron ellos?) \n- They arrived three hours ago. (Ellos llegaron hace tres horas) \n \n- Why did she leave? (Â¿Por quÃ© se fue ella?) \n- She left because she forgot something at home. (Ella se fue porque olvido algo en casa)\n</pre><br>\n<h3 align=\"Center\"><b>Ejemplos de preguntas en pasado simple</b><h3/><br/>\n<pre>\n- Did he close the window?  (Â¿CerrÃ³ Ã©l ventana?) \n- Yes, he did.\n\n- Did they lose the keys? (Â¿Perdieron ellos las llaves?) \n- No, they didnÂ´t.\n\n- Did Alice brush her teeth? (Â¿CepillÃ³ Alicia sus dientes?) \n- Yes, she did \n\n- Did Mike drink all the juice? (Â¿BebiÃ³ Miguel todo el jugo?) \n- No, he didnÂ´t. \n\n- Did Sam and Ernest watch that movie? (Â¿Vieron Sam y Ernesto esa pelÃ­cula?) \n- Yes, they did\n\n- Did our team win the competition? (Â¿Gano nuestro equipo la competencia?) \n- No, It didnÂ´t.\n</pre><br/>\n<h3><b>Segundo caso (respuesta especÃ­fica)</b></h3><br/>\n<pre>\n- What did you prepare for dinner?                       (Â¿QuÃ© preparaste para la cena?)\n- I prepared a pizza.                                    (PreparÃ© una pizza) \n\n- When did she arrive?                                   (Â¿CuÃ¡ndo llegÃ³ ella?)\n- She arrived last week.                                 (Ella llegÃ³ la semana pasada) \n\n- Where did they go?                                     (Â¿A dÃ³nde fueron ellos?)\n- They went to the store.                                (Ellos fueron a la tienda\n\n- Why did he buy a new TV?                               (Â¿Por quÃ© comprÃ³ Ã©l una nueva televisiÃ³n?)\n- He bought a new TV because it had a great discount.    (Ã‰l comprÃ³ una nueva televisiÃ³n porque tenÃ­a un gran descuento)\n\n \n</pre>\n</p>\n\n\',\'\',1);\n\ninsert into tema value(3,\'Vocabulario\',\'Vocabulary\',\'\n<div id=\"main-container\">\n\n		<table>\n			<thead>\n				 <th colspan=\"2\" style=\"text-align: center; \">Describiendo Personas</th>\n				<tr style=\"background-color: #369681\">\n				</tr>\n			</thead>\n\n			<tr>\n				<td>Adolescente</td><td>Adolescent, Teenager</td>\n			</tr>\n			<tr>\n				<td>Adulto/a</td><td>Adult</td>\n			</tr>\n			<tr>\n				<td>Adulto; Mayor</td><td>Grown-up</td>\n			</tr>\n			<tr>\n				<td>Alegre</td><td>Cheerful</td>\n			</tr>\n            <tr>\n				<td>Alto</td><td>Tall</td>\n			</tr>\n			<tr>\n				<td>Amable</td><td>Friendly, kind</td>\n			</tr>\n			<tr>\n				<td>Amable;Dulce</td><td>Sweet</td>\n			</tr>\n			<tr>\n				<td>Ambicioso</td><td>Ambitious</td>\n			</tr>\n			<tr>\n				<td>Mayor;Anciano</td><td>Elderly</td>\n			</tr>\n			<tr>\n				<td>Apuesto;Guapo</td><td>Handsome</td>\n			</tr>\n			<tr>\n				<td>Arrogante</td><td>Arrogant</td>\n			</tr>\n			<tr>\n				<td>Arruga</td><td>Wrinkle</td>\n			</tr>\n			<tr>\n				<td>Aspecto</td><td>Appearance</td>\n			</tr>\n			<tr>\n				<td>Atractivo</td><td>Attractive</td>\n			</tr>\n			<tr>\n				<td>Bajo</td><td>Short</td>\n			</tr>\n			<tr>\n				<td>Beard</td><td>Beard</td>\n			</tr>\n			<tr>\n				<td>BebÃ©</td><td>Baby</td>\n			</tr>\n			<tr>\n				<td>Bigote</td><td>Moustache</td>\n			</tr>\n			<tr>\n				<td>BonachÃ³n;Afable</td><td>Good-natured</td>\n			</tr>\n			<tr>\n				<td>Bueno;Obediente</td><td>Well-behaved</td>\n			</tr> \n             <tr>\n				<td>Calvo</td><td>Bald</td>\n			</tr>\n			<tr>\n				<td>CarÃ¡cter</td><td>Character</td>\n			</tr>\n			<tr>\n				<td>Chico/NiÃ±o</td><td>Boy</td>\n			</tr>\n			<tr>\n				<td>Chico/NiÃ±a</td><td>Girl</td>\n			</tr>\n			<tr>\n				<td>Comportarse</td><td>To behave</td>\n			</tr>\n			<tr>\n				<td>Cruel</td><td>Cruel</td>\n			</tr>\n           <tr>\n				<td>De mal cataracter</td><td>Bad-tempered</td>\n			</tr>\n			 <tr>\n				<td>De mediana edad</td><td>Middle-aged</td>\n			</tr>\n			<tr>\n				<td>Decidido</td><td>Decisive</td>\n			</tr>\n			<tr>\n				<td>Delgado</td><td>Thin</td>\n			</tr>\n			<tr>\n				<td>Distraido</td><td>Absent-minded</td>\n			</tr>\n			<tr>\n				<td>Divertido</td><td>Amusing</td>\n			</tr>\n			<tr>\n				<td>Educado</td><td>Polite</td>\n			</tr>\n			<tr>\n				<td>Encantador</td><td>Charming</td>\n			</tr>\n			<tr>\n				<td>Engreido</td><td>Conceited</td>\n			</tr>\n			<tr>\n				<td>Entusiasta</td><td>Enthusiastic</td>\n			</tr><tr>\n				<td>Estupido</td><td>Stupid</td>\n			</tr>\n			<tr>\n				<td>Feo</td><td>Ugly</td>\n			</tr>\n			<tr>\n				<td>Flaco</td><td>Skinny</td>\n			</tr>\n			<tr>\n				<td>Generoso</td><td>Generous</td>\n			</tr> \n			<tr>\n				<td>Gente</td><td>People</td>\n			</tr>\n			<tr>\n				<td>Gordo</td><td>Fat</td>\n			</tr>\n			<tr>\n				<td>Guapo</td><td>Good-looking</td>\n			</tr>\n			<tr>\n				<td>Guapa</td><td>Beautiful</td>\n			</tr>\n			<tr>\n				<td>Inteligente</td><td>Intelligent</td>\n			</tr>\n			<tr>\n				<td>Joven</td><td>Young, youth</td>\n			</tr>\n			<tr>\n				<td>Listo</td><td>Clever</td>\n			</tr>\n			<tr>\n				<td>Loco</td><td>Crazy</td>\n			</tr>\n		</table>\n\n           <table style=\"margin: 5% auto\">\n			<thead>\n				 <th colspan=\"2\" style=\"text-align: center; \">Describiendo Personas</th>\n				<tr style=\"background-color: #369681\">					\n				</tr>\n			</thead>\n\n			<tr>\n				<td>Aburrido</td><td>Bored;Weary</td>\n			</tr>\n			<tr>\n				<td>Agradecido</td><td>Grateful</td>\n			</tr>\n			<tr>\n				<td>Apasionado</td><td>Extremely;Passionately fond </td>\n			</tr>\n			<tr>\n				<td>Amor</td><td>Love</td>\n			</tr>\n			<tr>\n				<td>Astuto</td><td>Astute</td>\n			</tr>\n			<tr>\n				<td>Aterrorizado</td><td>Terrified</td>\n			</tr>\n			<tr>\n				<td>Avergonzado</td><td>Ashamed</td>\n			</tr>\n			<tr>\n				<td>Celoso</td><td>Jealous</td>\n			</tr>\n			<tr>\n				<td>Egoista</td><td>Selfish ; Egoistic ; Egoistical</td>\n			</tr>\n			<tr>\n				<td>Esperanza</td><td>Hope</td>\n			</tr>\n			<tr>\n				<td>Felicidad</td><td>Happiness</td>\n			</tr>\n			<tr>\n				<td>JoyerÃ­a</td><td></td>\n			</tr>\n			<tr>\n				<td>Furioso</td><td>Furious</td>\n			</tr>\n			<tr>\n				<td>Grito</td><td>Scream</td>\n			</tr>\n			<tr>\n				<td>Ira</td><td>Rage</td>\n			</tr>\n			<tr>\n				<td>Odio</td><td>Hate</td>\n			</tr>\n			<tr>\n				<td></td><td></td>\n			</tr>\n			<tr>\n				<td>Orgulloso</td><td>Pride</td>\n			</tr>\n			<tr>\n				<td>Placer</td><td>Pleasure</td>\n			</tr>\n			<tr>\n				<td>Violento</td><td>Violent</td>\n			</tr>\n			<tr>\n				<td>Suspiro</td><td>Sigh</td>\n			</tr>\n			\n		</table>\n	\n\n\n\n</table>\n\n           <table style=\"margin: 5% auto\">\n			<thead>\n				 <th colspan=\"2\" style=\"text-align: center; \">EL CUERPO</th>\n				<tr style=\"background-color: #369681\">					\n				</tr>\n			</thead>\n			<tr>\n				<td>Boca</td><td>Mouth</td>\n			</tr>\n			<tr>\n				<td>Brazo</td><td>Arm</td>\n			</tr>\n			<tr>\n				<td>Cabeza</td><td>Head</td>\n			</tr>\n			<tr>\n				<td>Cadera</td><td>Hip</td>\n			</tr>\n			<tr>\n				<td>Cara</td><td>Face</td>\n			</tr>\n			<tr>\n				<td>Ceja</td><td>Eyebrow</td>\n			</tr>\n			<tr>\n				<td>Cerebro</td><td>Brain</td>\n			</tr>\n			<tr>\n				<td>Cintura</td><td>Waist</td>\n			</tr>\n			<tr>\n				<td>Codo</td><td>Elbow</td>\n			</tr>\n			<tr>\n				<td>CorazÃ³n</td><td>Heart</td>\n			</tr>\n			<tr>\n				<td>CraneÃ³</td><td>Skull</td>\n			</tr>\n			<tr>\n				<td>Cuello</td><td>Neck</td>\n			</tr>\n			<tr>\n				<td>Dedo de la mano</td><td>Finger</td>\n			</tr>\n			<tr>\n				<td>Diente/Dientes</td><td>Tooth/Teeth</td>\n			</tr>\n			<tr>\n				<td>Dedo del pie</td><td>Toe</td>\n			</tr>\n			<tr>\n				<td>Encias</td><td>Gums</td>\n			</tr>\n			<tr>\n				<td>Espalda</td><td>Back</td>\n			</tr>\n			<tr>\n				<td>Mano</td><td>Hand</td>\n			</tr>	\n			<tr>\n				<td>Nariz</td><td>Nose</td>\n			</tr>\n			<tr>\n				<td>Ojo</td><td>Eye</td>\n			</tr>\n			<tr>\n				<td>Pelo</td><td>Hair</td>\n			</tr>\n			<tr>\n				<td>Piel</td><td>Skin</td>\n			</tr>\n			<tr>\n				<td>Rodilla</td><td>Knee</td>\n			</tr>\n			<tr>\n				<td>Sangre</td><td>Blood</td>\n			</tr>\n			<tr>\n				<td>TalÃ³n</td><td>Heel</td>\n			</tr>\n			<tr>\n				<td>UÃ±a</td><td>Nail</td>\n			</tr>					\n		</table>\n\n\n\n\n\n\n <table style=\"margin: 5% auto\">\n			<thead>\n				 <th colspan=\"2\" style=\"text-align: center; \">Lugares</th>\n				<tr style=\"background-color: #369681\">					\n				</tr>\n			</thead>\n			<tr>\n				<td>Barberia</td><td>Barberâ€™s</td>\n			</tr>\n			<tr>\n				<td>CarnicerÃ­a</td><td>Butcherâ€™s</td>\n			</tr>\n			<tr>\n				<td>Centro comercial</td><td>Shopping centre (U.K.) / Mall (USA</td>\n			</tr>\n			<tr>\n				<td>Farmacia</td><td>Chemistâ€™s (U.K.) / Drugstore (USA)</td>\n			</tr>\n			<tr>\n				<td>FerreterÃ­a</td><td>Ironmongerâ€™s</td>\n			</tr>\n			<tr>\n				<td>FruterÃ­a</td><td>Fruitererâ€™s</td>\n			</tr>\n			<tr>\n				<td>Jolleria</td><td>Jewellerâ€™s</td>\n			</tr>\n			<tr>\n				<td>JugueterÃ­a</td><td>Toyshop</td>\n			</tr>\n			<tr>\n				<td>LibrerÃ­a</td><td>Bookshop</td>\n			</tr>\n			<tr>\n				<td>PanaderÃ­a</td><td>Bakerâ€™s</td>\n			</tr>\n			<tr>\n				<td>PeluquerÃ­a</td><td>Hairdresserâ€™s</td>\n			</tr>\n			<tr>\n				<td>PerfumerÃ­a</td><td>Perfumery</td>\n			</tr>\n			<tr>\n				<td>Tienda de animales</td><td>Pet shop</td>\n			</tr>\n			<tr>\n				<td>ZapaterÃ­a</td><td>Shoe shop</td>\n			</tr>\n								\n		</table>\n\n\n	</div>\n','The simple past (also called past simple, past indefinite or preterite) is a verb tense which is used to show that a completed action took place at a specific time in the past.',1),(3,'Verbos','Verbos','.....','.....',1),(4,'Vocabulario','Vocabulary','...','...',1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('Eli123','99adc231b045331e514a516b4b7680f588e3823213abe901738bc3ad67b2f6fcb3c64efb93d18002588d3ccc1a49efbae1ce20cb43df36b38651f11fa75678e8','Elizabeth','González','Duran','eli@gmail.com','kjfkdjfkjdkf','Administrativo'),('Jose1','99adc231b045331e514a516b4b7680f588e3823213abe901738bc3ad67b2f6fcb3c64efb93d18002588d3ccc1a49efbae1ce20cb43df36b38651f11fa75678e8','José Jesús','García','Rojas','jj@gmail.com','ldjfldjf','Alumno'),('Paco','99adc231b045331e514a516b4b7680f588e3823213abe901738bc3ad67b2f6fcb3c64efb93d18002588d3ccc1a49efbae1ce20cb43df36b38651f11fa75678e8','Francisco','Paniagua','Zamora','paco@gmail.com','kjfkdjfkjdkf','Administrativo'),('Ruiz','99adc231b045331e514a516b4b7680f588e3823213abe901738bc3ad67b2f6fcb3c64efb93d18002588d3ccc1a49efbae1ce20cb43df36b38651f11fa75678e8','Jesús','Ruíz','Sánchez','ruiz@gmail.com','kjfkdjfkjdkf','Administrativo');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verbo`
--

LOCK TABLES `verbo` WRITE;
/*!40000 ALTER TABLE `verbo` DISABLE KEYS */;
INSERT INTO `verbo` VALUES (1,'Ser/Estar','Be','Was/Were','Been'),(2,'Ganar (ganarle a alguien)','Beat','Beat','Beaten'),(3,'Empezar','Begin','Began','Begun'),(4,'Doblar','Bend','Bent','Bent'),(5,'Morder','Bite','Bit','Bitten'),(6,'Soplar','Blow','Blew','Blown'),(7,'Romper','Break','Broke','Broken'),(8,'Llevar/Traer','Bring','Brought','Brought'),(9,'Construir','Build','Built','Built'),(10,'Comprar','Buy','Bought','Bought'),(11,'Coger','Catch','Caught','Caught'),(12,'Elegir','Choose','Chose','Chosen'),(13,'Venir','Come','Came','Come'),(14,'Costar','Cost','Cost','Cost'),(15,'Hacer','Do','Did','Done'),(16,'Dibujar','Draw','Drew','Drew'),(17,'Soñar','Dream','Dreamed / Dreamt','Dreamed / Dreamt'),(18,'Conducir','Drive','Drove','Driven'),(19,'Beber','Drink','Drank','Drunk'),(20,'Comer','Eat','Ate','Eaten'),(21,'Caer','Fall','Fell','Fallen'),(22,'Sentir','Feel','Felt','Felt'),(23,'Luchar','Fight','Fought','Fought'),(24,'Encontrar','Find','Found','Found'),(25,'Volar','Fly','Flew','Flown'),(26,'Olvidar','Forget','Forgot','Forgotten'),(27,'Perdonar','Forgive','Forgave','Forgiven'),(28,'Conseguir','Get','Got','Gotten'),(29,'Dar','Give','Gave','Given'),(30,'Ir','Go','Went','Gone'),(31,'Crecer','Grow','Grew','Grown'),(32,'Tener','Have','Had','Had'),(33,'Oir','Hear','Heard','Heard'),(34,'Esconder','Hide','Hid','Hidden'),(35,'Golpear','Hit','Hit','Hit');
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

-- Dump completed on 2019-04-30 15:17:50
