/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: providencia
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `tbl_productos`
--

DROP TABLE IF EXISTS `tbl_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `sku_producto` varchar(50) NOT NULL,
  `numero_producto` decimal(2,2) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `descripcion_producto` text DEFAULT NULL,
  `foto_1_producto` varchar(255) DEFAULT NULL,
  `foto_2_producto` varchar(255) DEFAULT NULL,
  `foto_3_producto` varchar(255) DEFAULT NULL,
  `material_producto` varchar(50) DEFAULT NULL,
  `color_producto` varchar(30) DEFAULT NULL,
  `tipo_producto` varchar(50) DEFAULT NULL,
  `Tallas_producto` varchar(100) DEFAULT NULL,
  `precio_producto` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sku_producto`),
  KEY `id_producto` (`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productos`
--

LOCK TABLES `tbl_productos` WRITE;
/*!40000 ALTER TABLE `tbl_productos` DISABLE KEYS */;
INSERT INTO `tbl_productos` VALUES
(1,'CAPRMOSH',0.99,'CAMISOLA PROGRESO\r\nGABARDINA','• Térmico. \r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma','CAPRMOSH_1','CAPRMOSH_2','CAPRMOSH_3','100% ALGODON ','MARINO','Industrial','32-34-36-38-40-42-44-46-48-50-52','$192\r\n+\r\nIVA'),
(2,'CA08PRSH',0.99,'CAMISOLA PROGRESO\r\nDE \r\nMEZCLILLA','• Mezclilla ligera\r\n• Corte amplio \r\n• Proceso de suavizado \r\n• Puños amplios','CA08PRSH_1','CA08PRSH_2','CA08PRSH_3','MEZCLILLA 8 OZ\r\nSUAVIZADA\r\nMANGA LARGA','MEZCLILLA\r\nAZUL','Industrial','32-34-36-38-40-42-44-46-48-50-52','$168\r\n+\r\nIVA'),
(3,'CAGAMOSH',0.99,'CAMISOLA GABARDINA','• Térmico. \r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma ','CAGAMOSH_1','CAGAMOSH_2','CAGAMOSH_3','100% ALGODON ','MARINO','Industrial','32-34-36-38-40-42-44-46-48-50-52','$212\r\n+\r\nIVA'),
(4,'CAGAAMSH',0.99,'CAMISOLA GABARDINA','• Térmico. \r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma ','CAGAAMSH_1','CAGAAMSH_2','CAGAAMSH_3','100% ALGODON ','AMBAR','Industrial','32-34-36-38-40-42-44-46-48-50-52','$212\r\n+\r\nIVA'),
(5,'CAGAGRSH',0.99,'CAMISOLA GABARDINA','Térmico Corte- puños amplios.  Dos bolsas- una con cartera y boton- otra con separación para pluma ','CAGAGRSH_1','CAGAGRSH_2','CAGAGRSH_3','100% ALGODON ','GRIS','Industrial','32-34-36-38-40-42-44-46-48-50-52','$212\r\n+\r\nIVA'),
(6,'CAGAPBSH',0.99,'CAMISOLA GABARDINAPRODUCTO','• Térmico. \r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma ','CAGAPBSH_1','CAGAPBSH_2','CAGAPBSH_3','100% ALGODON ','PLUMBAGO','Industrial','32-34-36-38-40-42-44-46-48-50-52','$212\r\n+\r\nIVA'),
(7,'CAGAVOSH',0.99,'CAMISOLA GABARDINA','• Térmico. \r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma','CAGAVOSH_1','CAGAVOSH_2','CAGAVOSH_3','100% ALGODON ','VERDE\r\nOLIVO','Industrial','32-34-36-38-40-42-44-46-48-50-52','$212\r\n+\r\nIVA'),
(8,'CA14MOSH',0.99,'CAMISOLA\r\nDE \r\nMEZCLILLA','• Térmico. \r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma','CA14MOSH_1','CA14MOSH_2','CA14MOSH_3','MEZCLILLA 14 OZ \r\nUSO RUDO\r\nMANGA LARGA','MEZCLILLA\r\nAZUL','Industrial','32-34-36-38-40-42-44-46-48-50-52','$206\r\n+\r\nIVA'),
(9,'CA14MSSH',0.99,'CAMISOLA\r\nDE \r\nMEZCLILLA','• Térmico.\r\n• Proceso de suavizado  \r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma','CA14MSSH_1','CA14MSSH_2','CA14MSSH_3','MEZCLILLA 14 OZ\r\nSUAVIZADA\r\nMANGA LARGA','MEZCLILLA\r\nAZUL','Industrial','32-34-36-38-40-42-44-46-48-50-52','$220\r\n+\r\nIVA'),
(10,'CA14CBSH',0.99,'CAMISOLA\r\nDE \r\nMEZCLILLA','• Térmico.\r\n• Proceso de suavizado  \r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma\r\n• Cinta reflejante bicolor (amarillo - plata) de 2','CA14CBSH_1','CA14CBSH_2','CA14CBSH_3','MEZCLILLA 14 OZ\r\nC/CINTA REFLEJANTE \r\nBICOLOR\r\nMAN','MEZCLILLA\r\nAZUL /\r\nCINTA \r\nAMA','Industrial','36-38-40-42-44-46-48','$256\r\n+\r\nIVA'),
(11,'CA65MOSH',0.99,'CAMISOLA \r\n65/35\r\nPOLIESTER -ALGODON','\r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma','CA65MOSH_1','CA65MOSH_2','CA65MOSH_3','POLIESTER-ALGODON\r\n65/35','MARINO','Industrial','32-34-36-38-40-42-44-46-48-50-52','$175\r\n+\r\nIVA'),
(12,'CA65BGSH',0.99,'CAMISOLA 65/35 POLIESTER -ALGODON','\r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma','CA65BGSH_1','CA65BGSH_2','CA65BGSH_3','POLIESTER-ALGODON\r\n65/35','AMBAR','Industrial','36-38-40-42-44-46-48','$175\r\n+\r\nIVA'),
(13,'CA65GRSH',0.99,'CAMISOLA \r\n65/35\r\nPOLIESTER -ALGODON','\r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma','CA65GRSH_1','CA65GRSH_2','CA65GRSH_3','POLIESTER-ALGODON\r\n65/35','GRIS','Industrial','36-38-40-42-44-46-48','$175\r\n+\r\nIVA'),
(14,'CA80MOSH',0.99,'CAMISOLA \r\n80/20\r\nPOLIESTER -ALGODON','\r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma','CA80MOSH_1','CA80MOSH_2','CA80MOSH_3','POLIESTER-ALGODON\r\n80/20','MARINO','Industrial','36-38-40-42-44-46-48','$159\r\n+\r\nIVA'),
(15,'CA80PZSH',0.99,'CAMISOLA \r\n80/20\r\nPOLIESTER -ALGODON','\r\n• Corte- puños amplios. \r\n• Dos bolsas- una con cartera y boton- otra con separación para pluma','CA80PZSH_1','CA80PZSH_2','CA80PZSH_3','POLIESTER-ALGODON\r\n80/20','PIZARRA','Industrial','36-38-40-42-44-46-48','$159\r\n+\r\nIVA'),
(16,'BAPRMOSH',0.99,'BATA PROGRESO \r\nHOMBRE \r\nGABARDINA\r\n','• Térmico. \r\n• Corte- puños amplios. \r\n• Aberturas laterales de comunicacion con bolsas de pantalon','BAPRMOSH_1','BAPRMOSH_2','BAPRMOSH_3','100% ALGODON','MARINO','Industrial','36-38-40-42-44-46-48','$260\r\n+\r\nIVA'),
(17,'BAPRBLSH',0.99,'BATA PROGRESO \r\nHOMBRE \r\nGABARDINA\r\n','• Térmico. \r\n• Corte- puños amplios. \r\n• Aberturas laterales de comunicacion con bolsas de pantalon','BAPRBLSH_1','BAPRBLSH_2','BAPRBLSH_3','100% ALGODON','BLANCA','Industrial','36-38-40-42-44-46-48','$260\r\n+\r\nIVA'),
(18,'BA65MOSH',0.99,'BATA \r\nHOMBRE \r\n65/35\r\nPOLIESTER-ALGODON','Corte- puños amplios. \r\n• Tres bolsas- una superior y dos inferiores. \r\n• Aberturas laterales de comunicacion con bolsas de pantalon','BA65MOSH_1','BA65MOSH_2','BA65MOSH_3','POLIESTER - ALGODON\r\n65/35','MARINO','Industrial','36-38-40-42-44-46-48','$237 + IVA'),
(19,'BA80MOSH',0.99,'BATA \r\nHOMBRE \r\n80/20\r\nPOLIESTER-ALGODON','• Corte- puños amplios. \r\n• Tres bolsas- una superior y dos inferiores. \r\n• Aberturas laterales de comunicacion con bolsas de pantalon','BA80MOSH_1','BA80MOSH_2','BA80MOSH_3','POLIESTER - ALGODON\r\n80/20\r\n','MARINO','Industrial','36-38-40-42-44-46-48','$215\r\n+\r\nIVA'),
(20,'BA80PZSH',0.99,'BATA \r\nHOMBRE \r\n80/20\r\nPOLIESTER-ALGODON','• Corte- puños amplios. \r\n• Tres bolsas- una superior y dos inferiores. \r\n• Aberturas laterales de comunicacion con bolsas de pantalon','BA80PZSH_1','BA80PZSH_2','BA80PZSH_3','POLIESTER - ALGODON\r\n80/20\r\n','PIZARRA','Industrial','36-38-40-42-44-46-48','$215\r\n+\r\nIVA'),
(21,'BA80BLSH',0.99,'BATA \r\nHOMBRE \r\n80/20\r\nPOLIESTER-ALGODON','• Corte- puños amplios. \r\n• Tres bolsas- una superior y dos inferiores. \r\n• Aberturas laterales de comunicacion con bolsas de pantalon','BA80BLSH_1','BA80BLSH_2','BA80BLSH_3','POLIESTER - ALGODON\r\n80/20\r\n','BLANCA','Industrial','36-38-40-42-44-46-48','$215\r\n+\r\nIVA'),
(22,'CP65BLSH',0.99,'PESCADORA\r\n65/35\r\nPOLIESTER - ALGODON','• Aletilla delantera\r\n• Corte amplio. \r\n• Unixes','CP65BLSH_1','CP65BLSH_2','CP65BLSH_3','\r\nPOLIESTER - ALGODON\r\n65/35','BLANCO','Industrial','36-38-40-42-44-46-48','$170\r\n+\r\nIVA'),
(23,'PU65BLSH',0.99,'PANTALON\r\n65/35\r\nPOLIESTER -ALGODON','• Corte amplio.  \r\n• Pantalon con elastico y jareta en cintura y bolsa interna\r\n• Unixes','PU65BLSH_1','PU65BLSH_2','PU65BLSH_3','POLIESTER-ALGODON\r\n65/35\r\nCON JARETA Y RESORTE','BLANCO','Industrial','28-30-32-34-36-38-40-42-44-46-48','$184\r\n+\r\nIVA'),
(24,'PAPRMOAA',0.99,'PANTALON PROGRESO \r\nGABARDINA\r\n','• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PAPRMOAA_1','PAPRMOAA_2','PAPRMOAA_3','100% ALGODON','MARINO','Industrial','28-30-32-34-36-38-40-42-44-46-48','$203\r\n+\r\nIVA'),
(25,'PAGAMOAA',0.99,'PANTALON GABARDINA\r\n','• Termico\r\n• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PAGAMOAA_1','PAGAMOAA_2','PAGAMOAA_3','100% ALGODON','MARINO','Industrial','28-30-32-34-36-38-40-42-44-46-48','$223\r\n+\r\nIVA'),
(26,'PAGAAMAA',0.99,'PANTALON GABARDINA\r\n','• Termico\r\n• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PAGAAMAA_1','PAGAAMAA_2','PAGAAMAA_3','100% ALGODON','AMBAR','Industrial','28-30-32-34-36-38-40-42-44-46-48','$223\r\n+\r\nIVA'),
(27,'PAGAGRAA',0.99,'PANTALON GABARDINA\r\n','• Termico\r\n• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PAGAGRAA_1','PAGAGRAA_2','PAGAGRAA_3','100% ALGODON','GRIS','Industrial','28-30-32-34-36-38-40-42-44-46-48','$223\r\n+\r\nIVA'),
(28,'PAGAPBAA',0.99,'PANTALON GABARDINA\r\n','• Termico\r\n• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PAGAPBAA_1','PAGAPBAA_2','PAGAPBAA_3','100% ALGODON','PLUMBAGO','Industrial','28-30-32-34-36-38-40-42-44-46-48','$223\r\n+\r\nIVA'),
(29,'PAGAVOAA',0.99,'PANTALON GABARDINA\r\n','• Termico\r\n• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PAGAVOAA_1','PAGAVOAA_2','PAGAVOAA_3','100% ALGODON','VERDE OLIVO','Industrial','28-30-32-34-36-38-40-42-44-46-48','$223\r\n+\r\nIVA'),
(30,'PA14MOSH',0.99,'PANTALON MEZCLILLA\r\n','• Termico\r\n• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PA14MOSH_1','PA14MOSH_2','PA14MOSH_3','MEZCLILLA 14 OZ \r\nUSO RUDO\r\nCIERRE DE LATON','MEZCLILLA\r\nAZUL','Industrial','28-30-32-34-36-38-40-42-44-46-48','$216\r\n+\r\nIVA'),
(31,'PA14CBSH',0.99,'PANTALON MEZCLILLA\r\n','• Termico\r\n• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PA14CBSH_1','PA14CBSH_2','PA14CBSH_3','MEZCLILLA 14 OZ\r\nC/CINTA REFLEJANTE \r\nBICOLOR\r\nCIE','MEZCLILLA\r\nAZUL /\r\nCINTA \r\nAMA','Industrial','28-30-32-34-36-38-40-42-44-46-48','$252\r\n+\r\nIVA'),
(32,'PA65MOSH',0.99,'PANTALON\r\n65/35\r\nPOLIESTER -ALGODON','• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PA65MOSH_1','PA65MOSH_2','PA65MOSH_3','POLIESTER-ALGODON\r\n65/35\r\nCIERRE DE LATON','MARINO','Industrial','28-30-32-34-36-38-40-42-44-46-48','$190\r\n+\r\nIVA'),
(33,'PA65BGSH',0.99,'PANTALON\r\n65/35\r\nPOLIESTER -ALGODON','• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PA65BGSH_1','PA65BGSH_2','PA65BGSH_3','POLIESTER-ALGODON\r\n65/35\r\nCIERRE DE LATON','AMBAR','Industrial','28-30-32-34-36-38-40-42-44-46-48','$190\r\n+\r\nIVA'),
(34,'PA65GRSH',0.99,'PANTALON\r\n65/35\r\nPOLIESTER -ALGODON','• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PA65GRSH_1','PA65GRSH_2','PA65GRSH_3','POLIESTER-ALGODON\r\n65/35\r\nCIERRE DE LATON','GRIS','Industrial','28-30-32-34-36-38-40-42-44-46-48','$190\r\n+\r\nIVA'),
(35,'PA65BLSH',0.99,'PANTALON\r\n65/35\r\nPOLIESTER -ALGODON','• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PA65BLSH_1','PA65BLSH_2','PA65BLSH_3','POLIESTER-ALGODON\r\n65/35\r\nCIERRE DE LATON','BLANCO','Industrial','28-30-32-34-36-38-40-42-44-46-48','$190\r\n+\r\nIVA'),
(36,'PA80MOSH',0.99,'PANTALON\r\n80/20\r\nPOLIESTER -ALGODON','• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PA80MOSH_1','PA80MOSH_2','PA80MOSH_3','POLIESTER-ALGODON\r\n80/20\r\nCIERRE DE LATON','MARINO','Industrial','28-30-32-34-36-38-40-42-44-46-48','$174\r\n+\r\nIVA'),
(37,'PA80PZSH',0.99,'PANTALON\r\n80/20\r\nPOLIESTER -ALGODON','• Corte amplio.  \r\n• Pantalon con 4 bolsas profundas.','PA80PZSH_1','PA80PZSH_2','PA80PZSH_3','POLIESTER-ALGODON\r\n80/20\r\nCIERRE DE LATON','PIZARRA','Industrial','28-30-32-34-36-38-40-42-44-46-48','$174\r\n+\r\nIVA'),
(38,'OVGAVOSH',0.99,'OVEROL\r\nGABARDINA\r\n','• Termico\r\n• Corte y piernas amplias.  \r\n• Seis bolsas de parche.','OVGAVOSH_1','OVGAVOSH_2','OVGAVOSH_3','100% ALGODON\r\nCON BOTON','VERDE OLIVO','Industrial','36-38-40-42-44-46-48','$430\r\n+\r\nIVA'),
(39,'OVGAMOAA',0.99,'OVEROL\r\nGABARDINA\r\n','• Termico\r\n• Corte y piernas amplias.  \r\n• Seis bolsas de parche.','OVGAMOAA_1','OVGAMOAA_2','OVGAMOAA_3','100% ALGODON\r\nCON CIERRE\r\nDOBLE ACCION','MARINO','Industrial','36-38-40-42-44-46-48','$479\r\n+\r\nIVA'),
(40,'OVGANAAA',0.99,'OVEROL\r\nGABARDINA\r\n','• Termico\r\n• Corte y piernas amplias.  \r\n• Seis bolsas de parche.','OVGANAAA_1','OVGANAAA_2','OVGANAAA_3','100% ALGODON\r\nCON CIERRE\r\nDOBLE ACCION','NARANJA','Industrial','36-38-40-42-44-46-48','$479\r\n+\r\nIVA'),
(41,'OVGAMOTK',0.99,'OVEROL\r\nGABARDINA\r\n','• Termico\r\n• Cierre metalico doble accion\r\n• Corte y piernas amplias.  \r\n• Seis bolsas de parche.\r\n• Elastico ajuste en cintura de pantalon\r\n• Bolsa derecha con cartera con ojal y boton oculto.\r\n• Cinta reflejante bicolor (amarillo - plata) de 2\"','OVGAMOTK_1','OVGAMOTK_2','OVGAMOTK_3','100% ALGODON\r\nC/CINTA REFLEJANTE \r\nBICOLOR\r\nMANGA ','MARINO /\r\nCINTA \r\nAMARILLO-PLA','Industrial','36-38-40-42-44-46-48','$557\r\n+\r\nIVA'),
(42,'OVGANATS',0.99,'OVEROL\r\nGABARDINA\r\n','• Termico\r\n• Cierre metalico doble accion\r\n• Corte y piernas amplias.  \r\n• Seis bolsas de parche.\r\n• Elastico ajuste en cintura de pantalon\r\n• Bolsa derecha con cartera con ojal y boton oculto.\r\n• Cinta reflejante plata de 1','OVGANATS_1','OVGANATS_2','OVGANATS_3','100% ALGODON\r\nC/CINTA REFLEJANTE \r\nMANGA LARGA\r\nCO','NARANJA /\r\nCINTA \r\nPLATA','Industrial','36-38-40-42-44-46-48','$557\r\n+\r\nIVA'),
(43,'OV65MOSH',0.99,'OVEROL\r\n65/35\r\nPOLIESTER -ALGODON','• Cierre metalico doble accion\r\n• Corte y piernas amplias.  \r\n• Seis bolsas de parche.\r\n• Elastico ajuste en cintura de pantalon\r\n• Bolsa derecha con cartera con ojal y boton oculto.','OV65MOSH_1','OV65MOSH_2','OV65MOSH_3','POLIESTER-ALGODON\r\n65/35\r\nCIERRE DE LATON DE\r\nDOBL','MARINO','Industrial','36-38-40-42-44-46-48','$402\r\n+\r\nIVA'),
(44,'ZAINCCSH',0.99,'ZAPATO / BOTA VAN-VIEN\r\nBORCEGUI INYECTADO\r\nCON CASQUILLO DE\r\nPOLICARBONATO','• Corte vacuno\r\n• Dielectrico  \r\n• Casquillo de policarbonato\r\n• Suela Anti-derrapante\r\n•Confortable','ZAINCCSH_1','ZAINCCSH_2','ZAINCCSH_3','CORTE CUERO VACUNO\r\nSUELA ANTI-DERRAPANTE AZUL','CALZADO Y \r\nFORRO NEGRO \r\nCOST','Industrial','22-23-24-25-26-27-28-29-30','$787\r\n+\r\nIVA'),
(45,'ZABODICR',0.99,'ZAPATO / BOTA CRUCERO\r\nBORCEGUI INYECTADO\r\nCON CASQUILLO DE\r\nPOLICARBONATO','• Corte vacuno\r\n• Dielectrico  \r\n• Casquillo de policarbonato\r\n• Suela Anti-derrapante\r\n•Confortable','ZABODICR_1','ZABODICR_2','ZABODICR_3','CORTE CUERO VACUNO\r\nSUELA ANTI-DERRAPANTE NEGRA','CALZADO NEGRO  \r\nFORRO NARANJA','Industrial','22-23-24-25-26-27-28-29-30','$740\r\n+\r\nIVA'),
(46,'CAPRMOSM',0.99,'BLUSA \r\nGABARDINA','• Térmico. \r\n• Corte mujer. \r\n• Dos bolsas inferiores','CAPRMOSM_1','CAPRMOSM_2','CAPRMOSM_3','100% ALGODON\r\nMANGA CORTA','MARINO','Industrial','32-34-36-38-40-42-44-46-48','$191\r\n+\r\nIVA'),
(47,'CA80MRSM',0.99,'BLUSA\r\n80/20\r\nPOLIESTER -ALGODON','• Tela ligera. \r\n• Corte mujer. \r\n• Dos bolsas inferiores\r\n• Cierre de plastico al frente','CA80MRSM_1','CA80MRSM_2','CA80MRSM_3','POLIESTER-ALGODON\r\n80/20\r\nCON CIERRE DE\r\nPLASTICO\r','MIL RAYAS AZUL\r\n','Industrial','32-34-36-38-40-42-44-46-48','$162\r\n+\r\nIVA'),
(48,'CA80MOSM',0.99,'BLUSA\r\n80/20\r\nPOLIESTER -ALGODON','• Tela ligera. \r\n• Corte mujer. \r\n• Dos bolsas inferiores\r\n• Cierre de plastico al frente','CA80MOSM_1','CA80MOSM_2','CA80MOSM_3','POLIESTER-ALGODON\r\n80/20\r\nCON CIERRE DE\r\nPLASTICO\r','MARINO','Industrial','32-34-36-38-40-42-44-46-48','$167\r\n+\r\nIVA'),
(49,'CA80PZSM',0.99,'BLUSA\r\n80/20\r\nPOLIESTER -ALGODON','• Tela ligera. \r\n• Corte mujer. \r\n• Dos bolsas inferiores\r\n• Cierre de plastico al frente','CA80PZSM_1','CA80PZSM_2','CA80PZSM_3','POLIESTER-ALGODON\r\n80/20\r\nCON CIERRE DE\r\nPLASTICO\r','PIZARRA','Industrial','32-34-36-38-40-42-44-46-48','$167\r\n+\r\nIVA'),
(50,'BAPRMOSM',0.99,'BATA PROGRESO \r\nMUJER \r\nGABARDINA\r\n','• Termico\r\n• Corte tipo A para mujer\r\n• Pinzas en espalda y delanteros\r\n• Tres bolsas- una superior y dos inferiores\r\n• Cinturon de vista en espalda\r\n• Botones ocultos mediante ojalera','BAPRMOSM_1','BAPRMOSM_2','BAPRMOSM_3','100% ALGODON','MARINO','Industrial','32-34-36-38-40-42-44-46-48','$260\r\n+\r\nIVA'),
(51,'BAPRBLSM',0.99,'BATA PROGRESO \r\nMUJER \r\nGABARDINA\r\n','• Termico\r\n• Corte tipo A para mujer\r\n• Pinzas en espalda y delanteros\r\n• Tres bolsas- una superior y dos inferiores\r\n• Cinturon de vista en espalda\r\n• Botones ocultos mediante ojalera','BAPRBLSM_1','BAPRBLSM_2','BAPRBLSM_3','100% ALGODON','BLANCA','Industrial','32-34-36-38-40-42-44-46-48','$260\r\n+\r\nIVA'),
(52,'BA80MOSM',0.99,'BATA \r\nMUJER \r\n80/20\r\nPOLIESTER-ALGODON','• Corte tipo A para mujer\r\n• Pinzas en espalda y delanteros\r\n• Tres bolsas- una superior y dos inferiores\r\n• Cinturon de vista en espalda','BA80MOSM_1','BA80MOSM_2','BA80MOSM_3','POLIESTER - ALGODON\r\n80/20\r\n','MARINO','Industrial','32-34-36-38-40-42-44-46-48','$215\r\n+\r\nIVA'),
(53,'BA80PZSM',0.99,'BATA \r\nMUJER \r\n80/20\r\nPOLIESTER-ALGODON','• Corte tipo A para mujer\r\n• Pinzas en espalda y delanteros\r\n• Tres bolsas- una superior y dos inferiores\r\n• Cinturon de vista en espalda','BA80PZSM_1','BA80PZSM_2','BA80PZSM_3','POLIESTER - ALGODON\r\n80/20\r\n','PIZARRA','Industrial','32-34-36-38-40-42-44-46-48','$215\r\n+\r\nIVA'),
(54,'BA80BLSM',0.99,'BATA \r\nMUJER \r\n80/20\r\nPOLIESTER-ALGODON','• Corte tipo A para mujer\r\n• Pinzas en espalda y delanteros\r\n• Tres bolsas- una superior y dos inferiores\r\n• Cinturon de vista en espalda','BA80BLSM_1','BA80BLSM_2','BA80BLSM_3','POLIESTER - ALGODON\r\n80/20\r\n','BLANCA','Industrial','32-34-36-38-40-42-44-46-48','$215\r\n+\r\nIVA'),
(55,'PAPRMOSM',0.99,'PANTALON PROGRESO\r\nMUJER \r\nGABARDINA\r\n','• Pantalon con elastico de ajuste en cisntura  \r\n• Pantalon con 3 bolsas profundas.','PAPRMOSM_1','PAPRMOSM_2','PAPRMOSM_3','100% ALGODON','MARINO','Industrial','28-30-32-34-36-38-40-42-44-46-48','$203\r\n+\r\nIVA'),
(56,'PA80MOSM',0.99,'PANTALON\r\nMUJER\r\n80/20\r\nPOLIESTER -ALGODON','• Corte mujer y tela ligera.  \r\n• Pantalon con elastico de ajuste en cisntura  \r\n• Pantalon con 3 bolsas profundas.','PA80MOSM_1','PA80MOSM_2','PA80MOSM_3','POLIESTER-ALGODON\r\n80/20\r\nCIERRE DE LATON','MARINO','Industrial','28-30-32-34-36-38-40-42-44-46-48','$174\r\n+\r\nIVA'),
(57,'PA80PZSM',0.99,'PANTALON\r\nMUJER\r\n80/20\r\nPOLIESTER -ALGODON','• Corte mujer y tela ligera.  \r\n• Pantalon con elastico de ajuste en cisntura  \r\n• Pantalon con 3 bolsas profundas.','PA80PZSM_1','PA80PZSM_2','PA80PZSM_3','POLIESTER-ALGODON\r\n80/20\r\nCIERRE DE LATON','PIZARRA','Industrial','28-30-32-34-36-38-40-42-44-46-48','$174\r\n+\r\nIVA'),
(58,'CC08PRSH',0.99,'CAMISA CASUAL\r\nPROGRESO \r\nCABALLERO \r\nMEZCLILLA','• Mezclilla ligera\r\n• Corte amplio \r\n• Proceso de suavizado \r\n• Puños amplios','CC08PRSH_1','CC08PRSH_2','CC08PRSH_3','MEZCLILLA 8 OZ\r\nSUAVIZADA\r\nMANGA LARGA','MEZCLILLA\r\nAZUL','CASUAL','32,34,36,38,40,42,44,46,48,50,52','$183\r\n+\r\nIVA'),
(59,'CC08POSH',0.99,'CAMISA CASUAL\r\nPROGRESO \r\nCABALLERO\r\nMEZCLILLA','• Mezclilla ligera\r\n• Corte amplio \r\n• Proceso de suavizado \r\n• Puños amplios\r\n• Sin bolsa\r\n• Boton oculto','CC08POSH_1','CC08POSH_2','CC08POSH_3','MEZCLILLA 8 OZ\r\nSUAVIZADA\r\nMANGA LARGA\r\nS/N BOLSA','MEZCLILLA\r\nAZUL','CASUAL','32,34,36,38,40,42,44,46,48,50,52','$183\r\n+\r\nIVA'),
(60,'CC08MOSH',0.99,'CAMISA CASUAL \r\nCABALLERO\r\nMEZCLILLA','• Mezclilla ligera\r\n• Corte amplio \r\n• Proceso de suavizado \r\n• Puños con 2 botones de ajuste','CC08MOSH_1','CC08MOSH_2','CC08MOSH_3','MEZCLILLA 8 OZ\r\nSUAVIZADA\r\nMANGA LARGA','MEZCLILLA\r\nAZUL','CASUAL','32,34,36,38,40,42,44,46,48,50,52','$210\r\n+\r\nIVA'),
(61,'CC08CBSH',0.99,'CAMISA CASUAL \r\nCABALLERO\r\nMEZCLILLA','• Mezclilla ligera\r\n• Proceso de suavizado  \r\n• Puños con 2 botones de ajuste. \r\n• Dos bolsas al frente\r\n• Cinta reflejante bicolor (amarillo - plata) de 2\" en mangas,bolsas y espalda','CC08CBSH_1','CC08CBSH_2','CC08CBSH_3','MEZCLILLA 8 OZ\r\nC/CINTA REFLEJANTE \r\nBICOLOR\r\nMANG','MEZCLILLA\r\nAZUL /\r\nCINTA \r\nAMA','CASUAL','32,34,36,38,40,42,44,46,48,50,52','$257\r\n+\r\nIVA'),
(62,'CC60OXSH',0.99,'CAMISA\r\n60/40\r\nALGODON - POLIESTER','• Tablon en espalda\r\n• Corte amplio \r\n•  Pie de cuello\r\n• Manga corta\r\n• Bolsa en frente con boton\r\n• Botones en cuello','CC60OXSH_1','CC60OXSH_2','CC60OXSH_3','ALGODON - POLIESTER\r\n60/40\r\nMANGA CORTA','OXFORD AZUL','CASUAL','32,34,36,38,40,42,44,46,48,50,52','$185\r\n+\r\nIVA'),
(63,'CCMLOXSH',0.99,'CAMISA\r\n60/40\r\nALGODON - POLIESTER','• Tablon en espalda\r\n• Corte amplio \r\n•  Pie de cuello\r\n• Manga larga\r\n• Bolsa en frente con boton\r\n• Botones en cuello','CCMLOXSH_1','CCMLOXSH_2','CCMLOXSH_3','ALGODON - POLIESTER\r\n60/40\r\nMANGA LARGA','OXFORD AZUL','CASUAL','32,34,36,38,40,42,44,46,48,50,52','$208\r\n+\r\nIVA'),
(64,'CCMLOBSH',0.99,'CAMISA\r\n60/40\r\nALGODON - POLIESTER','• Tablon en espalda\r\n• Corte amplio \r\n•  Pie de cuello\r\n• Manga larga\r\n• Bolsa en frente con boton\r\n• Botones en cuello','CCMLOBSH_1','CCMLOBSH_2','CCMLOBSH_3','ALGODON - POLIESTER\r\n60/40\r\nMANGA LARGA','BLANCA','CASUAL','32,34,36,38,40,42,44,46,48,50,52','$208\r\n+\r\nIVA'),
(65,'CCMLOGSH',0.99,'CAMISA\r\n60/40\r\nALGODON - POLIESTER','• Tablon en espalda\r\n• Corte amplio \r\n•  Pie de cuello\r\n• Manga larga\r\n• Bolsa en frente con boton\r\n• Botones en cuello','CCMLOGSH_1','CCMLOGSH_2','CCMLOGSH_3','ALGODON - POLIESTER\r\n60/40\r\nMANGA LARGA','GRIS','CASUAL','36,38,40,42,44,46,48','$208\r\n+\r\nIVA'),
(66,'CCMLOLSH',0.99,'CAMISA\r\n60/40\r\nALGODON - POLIESTER','• Tablon en espalda\r\n• Corte amplio \r\n•  Pie de cuello\r\n• Manga larga\r\n• Bolsa en frente con boton\r\n• Botones en cuello','CCMLOLSH_1','CCMLOLSH_2','CCMLOLSH_3','ALGODON - POLIESTER\r\n60/40\r\nMANGA LARGA','LADRILLO','CASUAL','36,38,40,42,44,46,48','$208\r\n+\r\nIVA'),
(67,'CC50RASH',0.99,'CAMISA\r\n50/50\r\nALGODON - POLIESTER','• Tablon en espalda\r\n• Corte amplio \r\n•  Pie de cuello\r\n• Manga larga\r\n• Bolsa en frente con boton\r\n• Botones en cuello','CC50RASH_1','CC50RASH_2','CC50RASH_3','ALGODON - POLIESTER\r\n50/50\r\nMANGA LARGA','RAYAS AZUL','CASUAL','36,38,40,42,44,46,48','$228\r\n+\r\nIVA'),
(68,'CC50CRSH',0.99,'CAMISA\r\n50/50\r\nALGODON - POLIESTER','• Tablon en espalda\r\n• Corte amplio \r\n•  Pie de cuello\r\n• Manga larga\r\n• Bolsa en frente con boton\r\n• Botones en cuello','CC50CRSH_1','CC50CRSH_2','CC50CRSH_3','ALGODON - POLIESTER\r\n50/50\r\nMANGA LARGA','CUADROS AZUL','CASUAL','36,38,40,42,44,46,48','$228\r\n+\r\nIVA'),
(69,'POGAGRSH',0.99,'PLAYERA POLO','• Tejido pique\r\n• Corte amplio \r\n• Botones de cuerno al frente \r\n• Cardigan den manga y cuello','POGAGRSH_1','POGAGRSH_2','POGAGRSH_3','100% TEJIDO PIQUE\r\nMANGA CORTA','GRIS','CASUAL','CH, MD, GD, XG, XXG','$114\r\n+\r\nIVA'),
(70,'POMLGRSH',0.99,'PLAYERA POLO','• Tejido pique\r\n• Corte amplio \r\n• Botones de cuerno al frente \r\n• Cardigan den manga y cuello','POMLGRSH_1','POMLGRSH_2','POMLGRSH_3','100% TEJIDO PIQUE\r\nMANGA LARGA','GRIS','CASUAL','CH, MD, GD, XG, XXG','$126\r\n+\r\nIVA'),
(71,'POGAMOSH',0.99,'PLAYERA POLO','• Tejido pique\r\n• Corte amplio \r\n• Botones de cuerno al frente \r\n• Cardigan den manga y cuello','POGAMOSH_1','POGAMOSH_2','POGAMOSH_3','100% TEJIDO PIQUE\r\nMANGA CORTA','MARINO','CASUAL','CH, MD, GD, XG, XXG','$138\r\n+\r\nIVA'),
(72,'POMLMOSH',0.99,'PLAYERA POLO','• Tejido pique\r\n• Corte amplio \r\n• Botones de cuerno al frente \r\n• Cardigan den manga y cuello','POMLMOSH_1','POMLMOSH_2','POMLMOSH_3','100% TEJIDO PIQUE\r\nMANGA LARGA','MARINO','CASUAL','CH, MD, GD, XG, XXG','$153\r\n+\r\nIVA'),
(73,'POGARYSH',0.99,'PLAYERA POLO','• Tejido pique\r\n• Corte amplio \r\n• Botones de cuerno al frente \r\n• Cardigan den manga y cuello','POGARYSH_1','POGARYSH_2','POGARYSH_3','100% TEJIDO PIQUE\r\nMANGA CORTA','AZUL REY','CASUAL','CH, MD, GD, XG, XXG','$132\r\n+\r\nIVA'),
(74,'POGANGSH',0.99,'PLAYERA POLO','• Tejido pique\r\n• Corte amplio \r\n• Botones de cuerno al frente \r\n• Cardigan den manga y cuello','POGANGSH_1','POGANGSH_2','POGANGSH_3','100% TEJIDO PIQUE\r\nMANGA CORTA','NEGRA','CASUAL','CH, MD, GD, XG, XXG','$132\r\n+\r\nIVA'),
(75,'POGABLSH',0.99,'PLAYERA POLO','• Tejido pique\r\n• Corte amplio \r\n• Botones de cuerno al frente \r\n• Cardigan den manga y cuello','POGABLSH_1','POGABLSH_2','POGABLSH_3','100% TEJIDO PIQUE\r\nMANGA CORTA','BLANCA','CASUAL','CH, MD, GD, XG, XXG','$120\r\n+\r\nIVA'),
(76,'POPOMOSH',0.99,'PLAYERA POLO','• 100% Poliester\r\n• Corte amplio \r\n• Botones de cuerno al frente ','POPOMOSH_1','POPOMOSH_2','POPOMOSH_3','100% POLIESTER\r\nSPORT DRY\r\nMANGA CORTA','MARINO','CASUAL','CH, MD, GD, XG, XXG','$117\r\n+\r\nIVA'),
(77,'POPORYSH',0.99,'PLAYERA POLO','• 100% Poliester\r\n• Corte amplio \r\n• Botones de cuerno al frente ','POPORYSH_1','POPORYSH_2','POPORYSH_3','100% POLIESTER\r\nSPORT DRY\r\nMANGA CORTA','AZUL REY','CASUAL','CH, MD, GD, XG, XXG','$117\r\n+\r\nIVA'),
(78,'PRGAGRSH',0.99,'PLAYERA CUELLO\r\nREDONDO','• 100% Algodon\r\n• Corte amplio \r\n• Tejido chifon\r\n• Cardigan en cuello ','PRGAGRSH_1','PRGAGRSH_2','PRGAGRSH_3','100% ALGODON\r\nMANGA CORTA','GRIS','CASUAL','CH, MD, GD, XG, XXG','$74\r\n+\r\nIVA'),
(79,'PRGAMOSH',0.99,'PLAYERA CUELLO\r\nREDONDO','• 100% Algodon\r\n• Corte amplio \r\n• Tejido chifon\r\n• Cardigan en cuello','PRGAMOSH_1','PRGAMOSH_2','PRGAMOSH_3','100% ALGODON\r\nMANGA CORTA','MARINO','CASUAL','CH, MD, GD, XG, XXG','$74\r\n+\r\nIVA'),
(80,'PRGARYSH',0.99,'PLAYERA CUELLO\r\nREDONDO','• 100% Algodon\r\n• Corte amplio \r\n• Tejido chifon\r\n• Cardigan en cuello ','PRGARYSH_1','PRGARYSH_2','PRGARYSH_3','100% ALGODON\r\nMANGA CORTA','AZUL REY','CASUAL','CH, MD, GD, XG, XXG','$74\r\n+\r\nIVA'),
(81,'PRMLMOSH',0.99,'PLAYERA CUELLO\r\nREDONDO','• 100% Algodon\r\n• Corte amplio \r\n• Tejido chifon\r\n• Cardigan en cuello y puños','PRMLMOSH_1','PRMLMOSH_2','PRMLMOSH_3','100% ALGODON\r\nMANGA LARGA','MARINO','CASUAL','CH, MD, GD, XG, XXG','$116\r\n+\r\nIVA'),
(82,'PRMLGRSH',0.99,'PLAYERA CUELLO\r\nREDONDO','100% Algodon\r\n• Corte amplio \r\n• Tejido chifon\r\n• Cardigan en cuello y puños','PRMLGRSH_1','PRMLGRSH_2','PRMLGRSH_3','100% ALGODON\r\nMANGA LARGA','GRIS','CASUAL','CH, MD, GD, XG, XXG','$116\r\n+\r\nIVA'),
(83,'PRGABLSH',0.99,'PLAYERA CUELLO\r\nREDONDO','• 100% Algodon\r\n• Corte amplio \r\n• Tejido chifon\r\n• Cardigan en cuello','PRGABLSH_1','PRGABLSH_2','PRGABLSH_3','100% ALGODON\r\nMANGA CORTA','BLANCA','CASUAL','CH, MD, GD, XG, XXG','$64\r\n+\r\nIVA'),
(84,'PJPRMSSH',0.99,'PANTALON PROGRESO \r\nMEZCLILLA','• Suavizado\r\n• Corte amplio.  \r\n• Pantalon con bolsas delanteras profundas.\r\n• Cierre laton','PJPRMSSH_1','PJPRMSSH_2','PJPRMSSH_3','MEZCLILLA 14 OZ \r\nCIERRE DE LATON','MEZCLILLA\r\nAZUL','CASUAL','28,30,32,34,36,38,40,42,44,46,48','$209\r\n+\r\nIVA'),
(85,'PJ14MSSH',0.99,'PANTALON \r\nMEZCLILLA','• Suavizado\r\n• Corte amplio.  \r\n• Pantalon con bolsas delanteras profundas.\r\n• Cierre laton','PJ14MSSH_1','PJ14MSSH_2','PJ14MSSH_3','MEZCLILLA 14 OZ \r\nSUAVIZADO\r\nCIERRE DE LATON','MEZCLILLA\r\nAZUL','CASUAL','28,30,32,34,36,38,40,42,44,46,48','$232\r\n+\r\nIVA'),
(86,'PJCBMSSH',0.99,'PANTALON \r\nMEZCLILLA','• Suavizado\r\n• Corte amplio.  \r\n• Pantalon con bolsas delanteras profundas.\r\n• Cierre laton\r\n• Cinta reflejante (Amarillo - Plata) de 2\" pulgadas en las piernas','PJCBMSSH_1','PJCBMSSH_2','PJCBMSSH_3','MEZCLILLA 14 OZ\r\nSUAVIZADO\r\nC/CINTA REFLEJANTE \r\nB','MEZCLILLA\r\nAZUL /\r\nCINTA \r\nAMA','CASUAL','28,30,32,34,36,38,40,42,44,46,48','$263\r\n+\r\nIVA'),
(87,'PC65MOSH',0.99,'PANTALON CASUAL','• Tiro reforzado\r\n• Dos bolsas delanteras y traseras \r\n• Pantalon con bolsas profundas.\r\n• Bolsa trasera con ojal y boton de cuerno\r\n• Corte recto\r\n• Cierre laton','PC65MOSH_1','PC65MOSH_2','PC65MOSH_3','POLIESTER-ALGODON\r\n65/35\r\n','MARINO','CASUAL','28,30,32,34,36,38,40,42,44,46,48','$206\r\n+\r\nIVA'),
(88,'PC65BGSH',0.99,'PANTALON CASUAL','• Tiro reforzado\r\n• Dos bolsas delanteras y traseras \r\n• Pantalon con bolsas profundas.\r\n• Bolsa trasera con ojal y boton de cuerno\r\n• Corte recto\r\n• Cierre laton','PC65BGSH_1','PC65BGSH_2','PC65BGSH_3','POLIESTER-ALGODON\r\n65/35\r\n','BEIGE','CASUAL','28,30,32,34,36,38,40,42,44,46,48','$206\r\n+\r\nIVA'),
(89,'PC65NGSH',0.99,'PANTALON CASUAL','• Tiro reforzado\r\n• Dos bolsas delanteras y traseras \r\n• Pantalon con bolsas profundas.\r\n• Bolsa trasera con ojal y boton de cuerno\r\n• Corte recto\r\n• Cierre laton','PC65NGSH_1','PC65NGSH_2','PC65NGSH_3','POLIESTER-ALGODON\r\n65/35\r\n','NEGRO','CASUAL','28,30,32,34,36,38,40,42,44,46,48','$206\r\n+\r\nIVA'),
(90,'CC08PRSM',0.99,'CAMISA CASUAL\r\nPROGRESO \r\nMUJER\r\nMEZCLILLA','• Mezclilla ligera\r\n• Corte mujer con pinzas en delanteros \r\n• Proceso de suavizado \r\n• Puños con 2 botones de ajuste','CC08PRSM_1','CC08PRSM_2','CC08PRSM_3','MEZCLILLA 8 OZ\r\nSUAVIZADA\r\nMANGA LARGA','MEZCLILLA\r\nAZUL','CASUAL','32,34,36,38,40,42,44,46,48','$183\r\n+\r\nIVA'),
(91,'CC08MOSM',0.99,'CAMISA CASUAL \r\nMUJER\r\nMEZCLILLA','• Mezclilla ligera\r\n• Corte mujer con pinzas en delanteros \r\n• Proceso de suavizado \r\n• Puños con 2 botones de ajuste','CC08MOSM_1','CC08MOSM_2','CC08MOSM_3','MEZCLILLA 8 OZ\r\nSUAVIZADA\r\nMANGA LARGA','MEZCLILLA\r\nAZUL','CASUAL','32,34,36,38,40,42,44,46,48','$210\r\n+\r\nIVA'),
(92,'CC60OXSM',0.99,'CAMISA\r\n60/40\r\nALGODON - POLIESTER','• Corte para mujer con pinzas delanteros\r\n•  Pie de cuello\r\n• Bolsa amplia al frente con boton\r\n• Botones en cuello','CC60OXSM_1','CC60OXSM_2','CC60OXSM_3','ALGODON - POLIESTER\r\n60/40\r\nMANGA LARGA','OXFORD AZUL','CASUAL','32,34,36,38,40,42,44,46,48','$208\r\n+\r\nIVA'),
(93,'CC60OBSM',0.99,'CAMISA\r\n60/40\r\nALGODON - POLIESTER','• Corte para mujer con pinzas delanteros\r\n•  Pie de cuello\r\n• Bolsa amplia al frente con boton\r\n• Botones en cuello','CC60OBSM_1','CC60OBSM_2','CC60OBSM_3','ALGODON - POLIESTER\r\n60/40\r\nMANGA LARGA','BLANCA','CASUAL','32,34,36,38,40,42,44,46,48','$208\r\n+\r\nIVA'),
(94,'POGAGRSM',0.99,'PLAYERA POLO','• Tejido pique\r\n• Corte amplio \r\n• Botones de cuerno al frente \r\n• Cardigan den manga y cuello','POGAGRSM_1','POGAGRSM_2','POGAGRSM_3','100% TEJIDO PIQUE\r\nMANGA CORTA','GRIS','CASUAL','CH, MD, GD, XG','$114\r\n+\r\nIVA'),
(95,'POGAMOSM',0.99,'PLAYERA POLO','• Tejido pique\r\n• Corte amplio \r\n• Botones de cuerno al frente \r\n• Cardigan den manga y cuello','POGAMOSM_1','POGAMOSM_2','POGAMOSM_3','100% TEJIDO PIQUE\r\nMANGA CORTA','MARINO','CASUAL','CH, MD, GD, XG','$138\r\n+\r\nIVA'),
(96,'PJPRMSSM',0.99,'PANTALON PROGRESO \r\nMEZCLILLA','• Suavizado\r\n• Corte mujer.  \r\n• Pantalon con bolsas delanteras profundas.\r\n• Cierre laton','PJPRMSSM_1','PJPRMSSM_2','PJPRMSSM_3','MEZCLILLA 14 OZ \r\nCIERRE DE LATON','MEZCLILLA\r\nAZUL','CASUAL','28,30,32,34,36,38,40,42,44,46,48','$209\r\n+\r\nIVA'),
(97,'PJ14MSSM',0.99,'PANTALON \r\nMEZCLILLA','• Suavizado\r\n• Corte mujer.  \r\n• Pantalon con bolsas delanteras profundas.\r\n• Cierre laton','PJ14MSSM_1','PJ14MSSM_2','PJ14MSSM_3','MEZCLILLA 14 OZ \r\nSUAVIZADO\r\nCIERRE DE LATON','MEZCLILLA\r\nAZUL','CASUAL','28,30,32,34,36,38,40,42,44,46,48','$232\r\n+\r\nIVA'),
(98,'PC65MOSM',0.99,'PANTALON CASUAL','• Tiro reforzado\r\n• Dos bolsas delanteras\r\n• Pantalon con bolsas profundas.\r\n• Bolsa trasera con ojal y boton de cuerno\r\n• Corte recto\r\n• Cierre laton','PC65MOSM_1','PC65MOSM_2','PC65MOSM_3','POLIESTER-ALGODON\r\n65/35\r\n','MARINO','CASUAL','28,30,32,34,36,38,40,42,44,46,48','$206\r\n+\r\nIVA'),
(99,'PC65BGSM',0.99,'PANTALON CASUAL','• Tiro reforzado\r\n• Dos bolsas delanteras\r\n• Pantalon con bolsas profundas.\r\n• Bolsa trasera con ojal y boton de cuerno\r\n• Corte recto\r\n• Cierre laton','PC65BGSM_1','PC65BGSM_2','PC65BGSM_3','POLIESTER-ALGODON\r\n65/35\r\n','BEIGE','CASUAL','28,30,32,34,36,38,40,42,44,46,48','$206\r\n+\r\nIVA');
/*!40000 ALTER TABLE `tbl_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL COMMENT 'SHA256',
  `nombre` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL DEFAULT 'usuario',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES
(1,'admin','240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9','jose','usuario');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'providencia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-05-21 18:19:21
