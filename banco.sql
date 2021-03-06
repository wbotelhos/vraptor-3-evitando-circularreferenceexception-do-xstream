-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.42


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema wbotelhos
--

CREATE DATABASE IF NOT EXISTS wbotelhos;
USE wbotelhos;
CREATE TABLE  `wbotelhos`.`Filme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK40BCB41177F73CF` (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
INSERT INTO `wbotelhos`.`Filme` VALUES  (1,'Avatar',1),
 (2,'A Origem',1),
 (3,'Os Mercenários',1);
CREATE TABLE  `wbotelhos`.`Mensagem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `corpo` varchar(255) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKDFC72A4B177F73CF` (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
INSERT INTO `wbotelhos`.`Mensagem` VALUES  (1,'Corpo da mensagem 1.',1),
 (2,'Corpo da mensagem 2.',1),
 (3,'Corpo da mensagem 3.',1);
CREATE TABLE  `wbotelhos`.`Usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `wbotelhos`.`Usuario` VALUES  (1,'Washington Botelho');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
