CREATE DATABASE  IF NOT EXISTS `devnote` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `devnote`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: devnote
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `code` varchar(20) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `si` varchar(20) DEFAULT NULL,
  `gu` varchar(20) DEFAULT NULL,
  `dong` varchar(20) DEFAULT NULL,
  `ri` varchar(20) DEFAULT NULL,
  `add1` varchar(20) DEFAULT NULL,
  `add2` varchar(20) DEFAULT NULL,
  `add_no1` int(11) NOT NULL DEFAULT '0',
  `add_no2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `ix_auth_username` (`username`,`authority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `article_no` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `division` varchar(100) DEFAULT NULL,
  `writer` varchar(45) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `reg_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_time` datetime DEFAULT NULL,
  PRIMARY KEY (`article_no`),
  KEY `category_fk_idx` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-05  8:56:29

select * from myblog.articles where category = '개발노트' order by write_date desc limit 1; 
select count(*) from articles where category = '개발노트';
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트1','테스트 콘텐츠',1,now(),'admin');
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트2','테스트 콘텐츠',1,now(),'admin');
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트3','테스트 콘텐츠',1,now(),'admin');
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트4','테스트 콘텐츠',1,now(),'admin');
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트5','테스트 콘텐츠',1,now(),'admin');
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트6','테스트 콘텐츠',1,now(),'admin');
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트7','테스트 콘텐츠',1,now(),'admin');
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트8','테스트 콘텐츠',1,now(),'admin');
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트9','테스트 콘텐츠',1,now(),'admin');
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트10','테스트 콘텐츠',1,now(),'admin');
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트11','테스트 콘텐츠',1,now(),'admin');
insert into articles(category,title,content,open,write_date,writer) values('개발노트','테스트12','테스트 콘텐츠',1,now(),'admin');

select * from myblog.articles where category = '개발노트' order by write_date desc limit 0,5;











