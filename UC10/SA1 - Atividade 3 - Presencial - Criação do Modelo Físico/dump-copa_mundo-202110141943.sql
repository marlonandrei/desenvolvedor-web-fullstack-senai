-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: copa_mundo
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `cartao`
--

DROP TABLE IF EXISTS `cartao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartao` (
  `Jogos_idJogos` int(11) DEFAULT NULL,
  `Jogador_idJogador` int(11) DEFAULT NULL,
  `amarelo` tinyint(4) DEFAULT NULL,
  `vermelho` tinyint(4) DEFAULT NULL,
  `tempo` varchar(45) DEFAULT NULL,
  KEY `fk_Cartao_Jogador1_idx` (`Jogador_idJogador`),
  KEY `fk_Cartao_Jogos1` (`Jogos_idJogos`),
  CONSTRAINT `fk_Cartao_Jogador1` FOREIGN KEY (`Jogador_idJogador`) REFERENCES `jogador` (`idJogador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cartao_Jogos1` FOREIGN KEY (`Jogos_idJogos`) REFERENCES `jogos` (`idJogos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartao`
--

LOCK TABLES `cartao` WRITE;
/*!40000 ALTER TABLE `cartao` DISABLE KEYS */;
INSERT INTO `cartao` VALUES (1,2210,1,0,'32:55'),(1,2420,1,0,'42:11'),(1,2440,1,0,'71:44'),(1,2420,0,1,'75:38'),(2,2310,1,0,'33:27'),(2,2520,0,1,'61:42'),(3,2825,1,0,'74:21'),(4,2910,1,0,'42:10'),(5,3210,1,0,'19:43'),(5,3125,1,0,'37:35'),(5,3220,1,0,'44:09'),(5,3210,0,1,'57:29'),(6,3050,1,0,'73:41'),(7,3505,1,0,'66:31'),(7,3420,1,0,'78:07'),(8,3725,1,0,'22:37'),(8,3705,1,0,'71:38'),(9,2425,1,0,'09:25'),(9,2325,1,0,'22:33'),(9,2410,1,0,'67:32'),(10,2520,1,0,'73:10'),(13,3125,1,0,'70:35'),(16,3710,1,0,'39:18'),(17,2505,1,0,'27:32'),(17,2425,0,1,'73:15'),(18,2225,1,0,'11:40'),(18,2305,1,0,'21:05'),(18,2215,1,0,'51:06'),(18,2320,0,1,'72:36'),(21,3225,1,0,'62:33'),(24,3710,1,0,'13:25'),(24,3425,1,0,'29:19'),(24,3720,0,1,'65:32');
/*!40000 ALTER TABLE `cartao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadio`
--

DROP TABLE IF EXISTS `estadio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadio` (
  `idEstadio` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `localizacao` varchar(45) DEFAULT NULL,
  `capacidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEstadio`)
) ENGINE=InnoDB AUTO_INCREMENT=5301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadio`
--

LOCK TABLES `estadio` WRITE;
/*!40000 ALTER TABLE `estadio` DISABLE KEYS */;
INSERT INTO `estadio` VALUES (5000,'Lusaiu Stadium','Lusaiu',80000),(5100,'Khalifa International','Doha',50000),(5200,'Al Thumama Stadium','Al Thumama',40000),(5300,'Al Janoub Stadium','Al-Wakrah',40000);
/*!40000 ALTER TABLE `estadio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gols`
--

DROP TABLE IF EXISTS `gols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gols` (
  `Jogos_idJogos` int(11) NOT NULL,
  `Jogador_idJogador` int(11) NOT NULL,
  `tempo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Jogos_idJogos`,`Jogador_idJogador`),
  KEY `fk_Gols_Jogos1_idx` (`Jogos_idJogos`),
  KEY `fk_Gols_Jogador1` (`Jogador_idJogador`),
  CONSTRAINT `fk_Gols_Jogador1` FOREIGN KEY (`Jogador_idJogador`) REFERENCES `jogador` (`idJogador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Gols_Jogos1` FOREIGN KEY (`Jogos_idJogos`) REFERENCES `jogos` (`idJogos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gols`
--

LOCK TABLES `gols` WRITE;
/*!40000 ALTER TABLE `gols` DISABLE KEYS */;
INSERT INTO `gols` VALUES (1,2240,'22:15'),(1,2245,'51:44'),(1,2445,'62:11'),(2,2340,'39:25'),(2,2540,'50:19'),(4,2745,'23:55'),(4,2750,'71:37'),(5,3145,'58:24'),(5,3245,'82:05'),(6,3035,'42:11'),(6,3045,'16:42'),(7,3445,'76:19'),(9,2345,'62:32'),(10,2235,'33:15'),(10,2240,'63:13'),(10,2535,'41:17'),(10,2540,'74:04'),(11,2640,'13:15'),(11,2645,'39:45'),(11,2650,'78:37'),(11,2745,'51:20'),(12,2845,'12:15'),(12,2850,'65:51'),(12,2940,'43:39'),(13,3030,'27:18'),(13,3035,'44:34'),(13,3135,'56:10');
/*!40000 ALTER TABLE `gols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `idGrupo` varchar(1) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES ('A','Grupo A'),('B','Grupo B'),('C','Grupo C'),('D','Grupo D');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogador`
--

DROP TABLE IF EXISTS `jogador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogador` (
  `idJogador` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `camisa` int(11) DEFAULT NULL,
  `posicao` varchar(45) DEFAULT NULL,
  `Pais_idPais` int(11) NOT NULL,
  `situacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idJogador`,`Pais_idPais`),
  KEY `fk_Jogador_Pais1_idx` (`Pais_idPais`),
  CONSTRAINT `fk_Jogador_Pais1` FOREIGN KEY (`Pais_idPais`) REFERENCES `pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3771 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogador`
--

LOCK TABLES `jogador` WRITE;
/*!40000 ALTER TABLE `jogador` DISABLE KEYS */;
INSERT INTO `jogador` VALUES (2200,'Fernando Muslera',1,'Goleiro',1100,'T'),(2205,'Maxi Pereira',2,'Lateral Direito',1100,'T'),(2210,'Diego Godín',3,'Central',1100,'T'),(2215,'Sebastián Coates',4,'Central',1100,'T'),(2220,'Gastón Silva',6,'Lateral Esquerdo',1100,'T'),(2225,'Cristian Rodríguez',5,'Meio Campo',1100,'T'),(2230,'Carlos Sánchez',8,'Meio Campo',1100,'T'),(2235,'Giorgian De Arrascaeta',10,'Meio Campo',1100,'T'),(2240,'Edinson Cavani',11,'Atacante',1100,'T'),(2245,'Luis Suárez',9,'Atacante',1100,'T'),(2250,'Maxi Gómez',7,'Atacante',1100,'T'),(2255,'Martín Silva',12,'Goleiro',1100,'R'),(2260,'Guillermo Varela',13,'Central',1100,'R'),(2265,'Lucas Torreira',14,'Meio Campo',1100,'R'),(2270,'Cristhian Stuani',15,'Atacante',1100,'R'),(2300,'Yuri Dyupin',1,'Goleiro',1110,'T'),(2305,'Dmitriy Chistyakov',2,'Lateral Direito',1110,'T'),(2310,'Igor Diveev',3,'Central',1110,'T'),(2315,'Georgi Dzhikiya',4,'Central',1110,'T'),(2320,'Vyacheslav Karavaev',6,'Lateral Esquerdo',1110,'T'),(2325,'Aleksandr Erokhin',5,'Meio Campo',1110,'T'),(2330,'Aleksei Ionov',8,'Meio Campo',1110,'T'),(2335,'Dmitri Barinov',10,'Meio Campo',1110,'T'),(2340,'Fedor Smolov',11,'Atacante',1110,'T'),(2345,'Konstantin Tyukavin',9,'Atacante',1110,'T'),(2350,'Anton Zabolotny',7,'Atacante',1110,'T'),(2355,'Andrey Lunev',12,'Goleiro',1110,'R'),(2360,'Ilya Samoshnikov',13,'Central',1110,'R'),(2365,'Roman Zobnin',14,'Meio Campo',1110,'R'),(2370,'Rifat Zhemaletdinov',15,'Atacante',1110,'R'),(2400,'Saad Al Sheeb',1,'Goleiro',1120,'T'),(2405,'Ró-Ró',2,'Lateral Direito',1120,'T'),(2410,'Tarek Salman',3,'Central',1120,'T'),(2415,'Ahmed Suhail',4,'Central',1120,'T'),(2420,'Musaab Khidir',6,'Lateral Esquerdo',1120,'T'),(2425,'Mohammed Waad',5,'Meio Campo',1120,'T'),(2430,'Abdelaziz Hatim',8,'Meio Campo',1120,'T'),(2435,'Yusuf Abdurisag',10,'Meio Campo',1120,'T'),(2440,'Ahmed Alaa',11,'Atacante',1120,'T'),(2445,'Mohammed Muntari',9,'Atacante',1120,'T'),(2450,'Hasan Al Haydos',7,'Atacante',1120,'T'),(2455,'Yousof Hassan',12,'Goleiro',1120,'R'),(2460,'Bassam Al Rawi',13,'Central',1120,'R'),(2465,'Assim Madabo',14,'Meio Campo',1120,'R'),(2470,'Almoez Ali',15,'Atacante',1120,'R'),(2500,'Mohamed El Shenawy',1,'Goleiro',1130,'T'),(2505,'Ahmed Tawfik',2,'Lateral Direito',1130,'T'),(2510,'Ahmed Hegazy',3,'Central',1130,'T'),(2515,'Mahmoud Hamdi',4,'Central',1130,'T'),(2520,'Ahmed Fatouh',6,'Lateral Esquerdo',1130,'T'),(2525,'Omar Gaber',5,'Meio Campo',1130,'T'),(2530,'Afsha',8,'Meio Campo',1130,'T'),(2535,'Abdallah Said',10,'Meio Campo',1130,'T'),(2540,'Mohamed Salah',11,'Atacante',1130,'T'),(2545,'Mostafa Mohamed',9,'Atacante',1130,'T'),(2550,'Hussein El Shahat',7,'Atacante',1130,'T'),(2555,'El-Hani Soliman',12,'Goleiro',1130,'R'),(2560,'Ali Gabr',13,'Central',1130,'R'),(2565,'Tarek Hamed',14,'Meio Campo',1130,'R'),(2570,'Ahmed Hassan',15,'Atacante',1130,'R'),(2600,'Hugo Lloris',1,'Goleiro',1140,'T'),(2605,'Lucas Digne',2,'Lateral Direito',1140,'T'),(2610,'Clemént Lenglet',3,'Central',1140,'T'),(2615,'Presnel Kimpembe',4,'Central',1140,'T'),(2620,'Léo Dubois',6,'Lateral Esquerdo',1140,'T'),(2625,'Paul Pogba',5,'Meio Campo',1140,'T'),(2630,'NGolo Kanté',8,'Meio Campo',1140,'T'),(2635,'Adrien Rabiot',10,'Meio Campo',1140,'T'),(2640,'Karim Benzema',11,'Atacante',1140,'T'),(2645,'Kylian Mbappé',9,'Atacante',1140,'T'),(2650,'Antoine Griezmann',7,'Atacante',1140,'T'),(2655,'Mike Maignam',12,'Goleiro',1140,'R'),(2660,'Raphael Varane',13,'Central',1140,'R'),(2665,'Moussa Sissoko',14,'Meio Campo',1140,'R'),(2670,'Olivier Giroud',15,'Atacante',1140,'R'),(2700,'Jesper Hansen',1,'Goleiro',1150,'T'),(2705,'Joachim Andersen',2,'Lateral Direito',1150,'T'),(2710,'Nicolai Boilesen',3,'Central',1150,'T'),(2715,'Andreas Christensen',4,'Central',1150,'T'),(2720,'Simon Kjaer',6,'Lateral Esquerdo',1150,'T'),(2725,'Anders Christiansen',5,'Meio Campo',1150,'T'),(2730,'Mikkel Damsgaard',8,'Meio Campo',1150,'T'),(2735,'Thomas Delaney',10,'Meio Campo',1150,'T'),(2740,'Martin Braithwaite',11,'Atacante',1150,'T'),(2745,'Jacob Bruun Larsen',9,'Atacante',1150,'T'),(2750,'Andreas Cornelius',7,'Atacante',1150,'T'),(2755,'Jonas Lössl',12,'Goleiro',1150,'R'),(2760,'Victor Nelsson',13,'Central',1150,'R'),(2765,'Jesper Lindstrom',14,'Meio Campo',1150,'R'),(2770,'Kasper Dolberg',15,'Atacante',1150,'R'),(2800,'Carlos Cáceda',1,'Goleiro',1160,'T'),(2805,'Luis Abram',2,'Lateral Direito',1160,'T'),(2810,'Luis Advíncula',3,'Central',1160,'T'),(2815,'Alexander Callens',4,'Central',1160,'T'),(2820,'Aldo Corzo',6,'Lateral Esquerdo',1160,'T'),(2825,'Christian Cueva',5,'Meio Campo',1160,'T'),(2830,'Edison Flores',8,'Meio Campo',1160,'T'),(2835,'Raziel García',10,'Meio Campo',1160,'T'),(2840,'Gianluca Lapadula',11,'Atacante',1160,'T'),(2845,'Paolo Guerrero',9,'Atacante',1160,'T'),(2850,'Raúl Ruidíaz',7,'Atacante',1160,'T'),(2855,'José Carvallo',12,'Goleiro',1160,'R'),(2860,'Christian Ramos',13,'Central',1160,'R'),(2865,'Renato Tapia',14,'Meio Campo',1160,'R'),(2870,'André Carrillo',15,'Atacante',1160,'R'),(2900,'Mathew Ryan',1,'Goleiro',1170,'T'),(2905,'Miloš Degenek',2,'Lateral Direito',1170,'T'),(2910,'Brad Smith',3,'Central',1170,'T'),(2915,'Rhyan Grant',4,'Central',1170,'T'),(2920,'Callum Elder',6,'Lateral Esquerdo',1170,'T'),(2925,'Ryan McGowan',5,'Meio Campo',1170,'T'),(2930,'Bailey Wright',8,'Meio Campo',1170,'T'),(2935,'Ajdin Hrustic',10,'Meio Campo',1170,'T'),(2940,'Awer Mabil',11,'Atacante',1170,'T'),(2945,'Adam Taggart',9,'Atacante',1170,'T'),(2950,'Martin Boyle',7,'Atacante',1170,'T'),(2955,'Lawrence Thomas',12,'Goleiro',1170,'R'),(2960,'Harry Souttar',13,'Central',1170,'R'),(2965,'Aaron Mooy',14,'Meio Campo',1170,'R'),(2970,'Mitchell Duke',15,'Atacante',1170,'R'),(3000,'Ivica Ivusic',1,'Goleiro',1180,'T'),(3005,'Borna Barisic',2,'Lateral Direito',1180,'T'),(3010,'Duje Caleta-Car',3,'Central',1180,'T'),(3015,'Josko Gvardiol',4,'Central',1180,'T'),(3020,'Josip Juranovic',6,'Lateral Esquerdo',1180,'T'),(3025,'Marcelo Brozovic',5,'Meio Campo',1180,'T'),(3030,'Luka Ivanusec',8,'Meio Campo',1180,'T'),(3035,'Luka Modric',10,'Meio Campo',1180,'T'),(3040,'Antonio-Mirko Colak',11,'Atacante',1180,'T'),(3045,'Andrej Kramaric',9,'Atacante',1180,'T'),(3050,'Marko Livaja',7,'Atacante',1180,'T'),(3055,'Dominik Livakovic',12,'Goleiro',1180,'R'),(3060,'Mile Skoric',13,'Central',1180,'R'),(3065,'Ivan Perisic',14,'Meio Campo',1180,'R'),(3070,'Mislav Orsic',15,'Atacante',1180,'R'),(3100,'Franco Armani',1,'Goleiro',1190,'T'),(3105,'Juan Foyth',2,'Lateral Direito',1190,'T'),(3110,'Lisandro Martínez',3,'Central',1190,'T'),(3115,'Lucas Martínez Quarta',4,'Central',1190,'T'),(3120,'Nahuel Molina',6,'Lateral Esquerdo',1190,'T'),(3125,'Leandro Paredes',5,'Meio Campo',1190,'T'),(3130,'Exequiel Palacios',8,'Meio Campo',1190,'T'),(3135,'Lionel Messi',10,'Meio Campo',1190,'T'),(3140,'Ángel Di María',11,'Atacante',1190,'T'),(3145,'Sergio Agüero',9,'Atacante',1190,'T'),(3150,'Julián Álvarez',7,'Atacante',1190,'T'),(3155,'Emiliano Martínez',12,'Goleiro',1190,'R'),(3160,'Cristian Romero',13,'Central',1190,'R'),(3165,'Guido Rodríguez',14,'Meio Campo',1190,'R'),(3170,'Paulo Dybala',15,'Atacante',1190,'R'),(3200,'Stanley Nwabili',1,'Goleiro',1200,'T'),(3205,'Olisa Ndah',2,'Lateral Direito',1200,'T'),(3210,'Adeleke Adekunle',3,'Central',1200,'T'),(3215,'Imo Obot',4,'Central',1200,'T'),(3220,'Temitope Olusesi',6,'Lateral Esquerdo',1200,'T'),(3225,'Anayo Iwuala',5,'Meio Campo',1200,'T'),(3230,'Anthony Shimaga',8,'Meio Campo',1200,'T'),(3235,'Seth Mayi',10,'Meio Campo',1200,'T'),(3240,'Sunusi Ibrahim',11,'Atacante',1200,'T'),(3245,'Sunday Adetunji',9,'Atacante',1200,'T'),(3250,'Charles Atshimene',7,'Atacante',1200,'T'),(3255,'John Noble',12,'Goleiro',1200,'R'),(3260,'Oriyomi Murtala',13,'Central',1200,'R'),(3265,'Uche Onwuansanya',14,'Meio Campo',1200,'R'),(3270,'Chinonso Eziekwe',15,'Atacante',1200,'R'),(3300,'Patrik Gunnarsson',1,'Goleiro',1210,'T'),(3305,'Kári Árnason',2,'Lateral Direito',1210,'T'),(3310,'Jón Gudni Fjóluson',3,'Central',1210,'T'),(3315,'Thorir Johann Helgason',4,'Central',1210,'T'),(3320,'Hjörtur Hermannsson',6,'Lateral Esquerdo',1210,'T'),(3325,'Mikkel Anderson',5,'Meio Campo',1210,'T'),(3330,'Andri Fannar Baldursson',8,'Meio Campo',1210,'T'),(3335,'Birkir Bjarnason',10,'Meio Campo',1210,'T'),(3340,'Andri Lucas Gudjohnsen',11,'Atacante',1210,'T'),(3345,'Albert Gudmundsson',9,'Atacante',1210,'T'),(3350,'Vidar Örn Kjartansson',7,'Atacante',1210,'T'),(3355,'Hannes Halldórsson',12,'Goleiro',1210,'R'),(3360,'Ari Skúlason',13,'Central',1210,'R'),(3365,'Victor Palsson',14,'Meio Campo',1210,'R'),(3370,'Jon Dagur Thorsteinsson',15,'Atacante',1210,'R'),(3400,'Ederson',1,'Goleiro',1220,'T'),(3405,'Danilo',2,'Lateral Direito',1220,'T'),(3410,'Thiago Silva',3,'Central',1220,'T'),(3415,'Marquinhos',4,'Central',1220,'T'),(3420,'Daniel Alves',6,'Lateral Esquerdo',1220,'T'),(3425,'Casemiro',5,'Meio Campo',1220,'T'),(3430,'Lucas Paquetá',8,'Meio Campo',1220,'T'),(3435,'Neymar',10,'Meio Campo',1220,'T'),(3440,'Gabriel Jesus',11,'Atacante',1220,'T'),(3445,'Firmino',9,'Atacante',1220,'T'),(3450,'Richarlison',7,'Atacante',1220,'T'),(3455,'Weverton',12,'Goleiro',1220,'R'),(3460,'Militão',13,'Central',1220,'R'),(3465,'Everton Ribeiro',14,'Meio Campo',1220,'R'),(3470,'Gabriel Barbosa',15,'Atacante',1220,'R'),(3500,'Gregor Kobel',1,'Goleiro',1230,'T'),(3505,'Nico Elvedi',2,'Lateral Direito',1230,'T'),(3510,'Jordan Lotomba',3,'Central',1230,'T'),(3515,'Fabian Schär',4,'Central',1230,'T'),(3520,'Silvan Widmer',6,'Lateral Esquerdo',1230,'T'),(3525,'Michel Aebischer',5,'Meio Campo',1230,'T'),(3530,'Christian Fassnacht',8,'Meio Campo',1230,'T'),(3535,'Fabian Frei',10,'Meio Campo',1230,'T'),(3540,'Dan Ndoye',11,'Atacante',1230,'T'),(3545,'Haris Seferovic',9,'Atacante',1230,'T'),(3550,'Andi Zeqiri',7,'Atacante',1230,'T'),(3555,'Yvon Mvogo',12,'Goleiro',1230,'R'),(3560,'Cedric Zesiger',13,'Central',1230,'R'),(3565,'Steven Zuber',14,'Meio Campo',1230,'R'),(3570,'Denis Zakaria',15,'Atacante',1230,'R'),(3600,'Marko Dmitrovic',1,'Goleiro',1240,'T'),(3605,'Nikola Milenkovic',2,'Lateral Direito',1240,'T'),(3610,'Stefan Mitrovic',3,'Central',1240,'T'),(3615,'Filip Mladenovic',4,'Central',1240,'T'),(3620,'Matija Nastasic',6,'Lateral Esquerdo',1240,'T'),(3625,'Veljko Birmancevic',5,'Meio Campo',1240,'T'),(3630,'Filip Djuricic',8,'Meio Campo',1240,'T'),(3635,'Ivan Ilić',10,'Meio Campo',1240,'T'),(3640,'Aleksandar Mitrovic',11,'Atacante',1240,'T'),(3645,'Luka Jovic',9,'Atacante',1240,'T'),(3650,'Dusan Vlahovic',7,'Atacante',1240,'T'),(3655,'Marko Ilic',12,'Goleiro',1240,'R'),(3660,'Milos Veljkovic',13,'Central',1240,'R'),(3665,'Mihailo Ristic',14,'Meio Campo',1240,'R'),(3670,'Dusan Tadic',15,'Atacante',1240,'R'),(3700,'Aaron Cruz',1,'Goleiro',1250,'T'),(3705,'Francisco Calvo',2,'Lateral Direito',1250,'T'),(3710,'Óscar Duarte',3,'Central',1250,'T'),(3715,'Fernán Faerrón',4,'Central',1250,'T'),(3720,'Giancarlo González',6,'Lateral Esquerdo',1250,'T'),(3725,'Ricardo Blanco Mora',5,'Meio Campo',1250,'T'),(3730,'Celso Borges',8,'Meio Campo',1250,'T'),(3735,'David Guzmán',10,'Meio Campo',1250,'T'),(3740,'Bryan Ruiz',11,'Atacante',1250,'T'),(3745,'Joel Campbell',9,'Atacante',1250,'T'),(3750,'Ariel Lassiter',7,'Atacante',1250,'T'),(3755,'Leonel Moreira',12,'Goleiro',1250,'R'),(3760,'Juan Vargas',13,'Central',1250,'R'),(3765,'Gerson Torres',14,'Meio Campo',1250,'R'),(3770,'Kenneth Vargas',15,'Atacante',1250,'R');
/*!40000 ALTER TABLE `jogador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogos` (
  `idJogos` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime DEFAULT NULL,
  `Estadio_idEstadio` int(11) NOT NULL,
  `Pais_idPais_1` int(11) NOT NULL,
  `Pais_idPais_2` int(11) NOT NULL,
  `gols_idpais_1` int(11) DEFAULT NULL,
  `gols_idpais_2` int(11) DEFAULT NULL,
  `publico` int(11) DEFAULT NULL,
  PRIMARY KEY (`idJogos`,`Estadio_idEstadio`,`Pais_idPais_1`,`Pais_idPais_2`),
  KEY `fk_Jogos_Estadio1_idx` (`Estadio_idEstadio`),
  KEY `fk_Jogos_Pais1_idx` (`Pais_idPais_1`),
  KEY `fk_Jogos_Pais2_idx` (`Pais_idPais_2`),
  CONSTRAINT `fk_Jogos_Estadio1` FOREIGN KEY (`Estadio_idEstadio`) REFERENCES `estadio` (`idEstadio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Jogos_Pais1` FOREIGN KEY (`Pais_idPais_1`) REFERENCES `pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Jogos_Pais2` FOREIGN KEY (`Pais_idPais_2`) REFERENCES `pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogos`
--

LOCK TABLES `jogos` WRITE;
/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` VALUES (1,'2020-11-21 20:00:00',5000,1100,1120,2,1,73258),(2,'2020-11-22 17:00:00',5200,1110,1130,1,1,33456),(3,'2020-11-22 17:00:00',5300,1140,1160,0,0,31827),(4,'2020-11-22 20:00:00',5100,1150,1170,2,0,30623),(5,'2020-11-23 17:00:00',5300,1190,1200,1,1,35392),(6,'2020-11-23 20:00:00',5200,1180,1210,2,0,32721),(7,'2020-11-24 17:00:00',5000,1220,1230,1,0,65880),(8,'2020-11-24 20:00:00',5200,1240,1250,0,0,30268),(9,'2020-11-25 17:00:00',5000,1110,1120,1,0,71525),(10,'2020-11-25 20:00:00',5300,1100,1130,2,2,38741),(11,'2020-11-26 17:00:00',5100,1140,1150,3,1,42183),(12,'2020-11-26 20:00:00',5200,1160,1170,2,1,33420),(13,'2020-11-27 17:00:00',5000,1180,1190,2,1,68704),(14,'2020-11-27 20:00:00',5300,1200,1210,2,1,29732),(15,'2020-11-28 17:00:00',5100,1220,1240,3,1,48359),(16,'2020-11-28 20:00:00',5300,1230,1250,1,1,30681),(17,'2020-11-29 17:00:00',5000,1120,1130,0,2,73086),(18,'2020-11-29 20:00:00',5100,1100,1110,3,2,44592),(19,'2020-11-30 17:00:00',5300,1140,1170,3,0,32473),(20,'2020-11-30 20:00:00',5200,1150,1160,2,1,29686),(21,'2020-12-01 17:00:00',5100,1180,1200,2,0,39325),(22,'2020-12-01 20:00:00',5200,1190,1210,3,0,37854),(23,'2020-12-02 17:00:00',5300,1230,1240,1,0,30542),(24,'2020-12-02 20:00:00',5000,1220,1250,2,0,66729);
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 trigger Atualiza_Pais 
	after insert
    on jogos for each row
    begin
		-- vitória da seleção 1
		if new.gols_idpais_1 > new.gols_idpais_2 then
				update pais set 
                pais.pontos = pais.pontos + 3, 
                pais.vitorias = pais.vitorias + 1,
                pais.golspro = pais.golspro + new.gols_idpais_1,
                pais.golscontra = pais.golscontra + new.gols_idpais_2
                where pais.idpais = new.pais_idpais_1;
		end if;
		
        -- vitória da seleção 2
        if new.gols_idpais_1 < new.gols_idpais_2 then
				update pais set 
                pais.pontos = pais.pontos + 3, 
                pais.vitorias = pais.vitorias + 1,
                pais.golspro = pais.golspro + new.gols_idpais_2,
                pais.golscontra = pais.golscontra + new.gols_idpais_1
                where pais.idpais = new.pais_idpais_2;
		end if;
		
        -- empate
        if new.gols_idpais_1 = new.gols_idpais_2 then
				update pais set 
                pais.pontos = pais.pontos + 1, 
                pais.empates = pais.empates + 1,
                pais.golspro = pais.golspro + new.gols_idpais_1,
                pais.golscontra = pais.golscontra + new.gols_idpais_2
                where pais.idpais = new.pais_idpais_1 or
                pais.idpais = new.pais_idpais_2;
		end if;
        
        -- derrota da seleção 1
		if new.gols_idpais_1 < new.gols_idpais_2 then
				update pais set
                pais.derrotas = pais.derrotas + 1,
                pais.golspro = pais.golspro + new.gols_idpais_1,
                pais.golscontra = pais.golscontra + new.gols_idpais_2
                where pais.idpais = new.pais_idpais_1;
		end if;
        
        -- derrota da seleção 2
        if new.gols_idpais_1 > new.gols_idpais_2 then
				update pais set
                pais.derrotas = pais.derrotas + 1,
                pais.golspro = pais.golspro + new.gols_idpais_2,
                pais.golscontra = pais.golscontra + new.gols_idpais_1
                where pais.idpais = new.pais_idpais_2;
		end if;
	end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `idPais` int(11) NOT NULL AUTO_INCREMENT,
  `selecao` varchar(45) DEFAULT NULL,
  `continente` varchar(45) DEFAULT NULL,
  `tecnico` varchar(45) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `vitorias` int(11) DEFAULT NULL,
  `empates` int(11) DEFAULT NULL,
  `derrotas` int(11) DEFAULT NULL,
  `golspro` int(11) DEFAULT NULL,
  `golscontra` int(11) DEFAULT NULL,
  `Grupo_idGrupo` varchar(1) NOT NULL,
  PRIMARY KEY (`idPais`,`Grupo_idGrupo`),
  KEY `fk_Pais_Grupo1_idx` (`Grupo_idGrupo`),
  CONSTRAINT `fk_Pais_Grupo1` FOREIGN KEY (`Grupo_idGrupo`) REFERENCES `grupo` (`idGrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1251 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1100,'Uruguai','América','Óscar Tabárez',7,2,1,0,7,5,'A'),(1110,'Rússia','Europa','Valeri Karpin',4,1,1,1,4,4,'A'),(1120,'Catar','Ásia','José Ricardo',0,0,0,3,1,5,'A'),(1130,'Egito','África','Carlos Queiroz',5,1,2,0,5,3,'A'),(1140,'França','Europa','Didier Deschamps',7,2,1,0,6,1,'B'),(1150,'Dinamarca','Europa','Kasper Hjulmand',6,2,0,1,5,4,'B'),(1160,'Peru','América','Ricardo Gareca',4,1,1,1,3,3,'B'),(1170,'Austrália','Oceania','Graham Arnold',0,0,0,3,1,7,'B'),(1180,'Croácia','Europa','Zlatko Dalić',9,3,0,0,6,1,'C'),(1190,'Argentina','América','Lionel Scaloni',4,1,1,1,5,3,'C'),(1200,'Nigéria','África','Gernot Rohr',4,1,1,1,3,4,'C'),(1210,'Islândia','Europa','Arnar Viðarsson',0,0,0,3,1,7,'C'),(1220,'Brasil','América','Tite',9,3,0,0,6,1,'D'),(1230,'Suiça','Europa','Murat Yakın',4,1,1,1,2,2,'D'),(1240,'Sérvia','Europa','Dragan Stojković',1,0,1,2,1,4,'D'),(1250,'Costa Rica','América','Luis Fernando Suárez',2,0,2,1,1,3,'D');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `substituicao`
--

DROP TABLE IF EXISTS `substituicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `substituicao` (
  `Jogos_idJogos` int(11) NOT NULL,
  `Jogador_idJogador_sai` int(11) NOT NULL,
  `Jogador_idJogador_entra` int(11) NOT NULL,
  `tempo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Jogos_idJogos`,`Jogador_idJogador_sai`,`Jogador_idJogador_entra`),
  KEY `fk_Substituicao_Jogador1_idx` (`Jogador_idJogador_sai`),
  KEY `fk_Substituicao_Jogador2_idx` (`Jogador_idJogador_entra`),
  CONSTRAINT `fk_Substituicao_Jogador1` FOREIGN KEY (`Jogador_idJogador_sai`) REFERENCES `jogador` (`idJogador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Substituicao_Jogador2` FOREIGN KEY (`Jogador_idJogador_entra`) REFERENCES `jogador` (`idJogador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Substituicao_Jogos` FOREIGN KEY (`Jogos_idJogos`) REFERENCES `jogos` (`idJogos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `substituicao`
--

LOCK TABLES `substituicao` WRITE;
/*!40000 ALTER TABLE `substituicao` DISABLE KEYS */;
INSERT INTO `substituicao` VALUES (1,2250,2270,'55:20'),(1,2430,2465,'61:05'),(2,2350,2370,'62:28'),(2,2550,2570,'70:49'),(3,2650,2670,'55:05'),(3,2850,2870,'70:10'),(8,3635,3665,'61:36'),(8,3715,3760,'70:08'),(8,3735,3770,'73:06'),(14,3250,3270,'45:05'),(14,3335,3365,'78:30'),(16,3735,3765,'54:28'),(17,2430,2465,'64:39'),(24,3445,3470,'68:11'),(24,3735,3765,'75:39');
/*!40000 ALTER TABLE `substituicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'copa_mundo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-14 19:43:30
