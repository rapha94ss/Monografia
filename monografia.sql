/*
SQLyog Community v12.2.4 (64 bit)
MySQL - 5.7.14-log : Database - monografia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`monografia` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `monografia`;

/*Table structure for table `monografias` */

DROP TABLE IF EXISTS `monografias`;

CREATE TABLE `monografias` (
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `orientador` varchar(100) DEFAULT NULL,
  `palavra1` varchar(50) DEFAULT NULL,
  `palavra2` varchar(50) DEFAULT NULL,
  `palavra3` varchar(50) DEFAULT NULL,
  `area_concentracao` varchar(100) DEFAULT NULL,
  `ano` varchar(4) DEFAULT NULL,
  `local` varchar(50) DEFAULT NULL,
  `resumo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `monografias` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
