-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot96lz5xfg
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot96lz5xfg`
--

/*!40000 DROP DATABASE IF EXISTS `springboot96lz5xfg`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot96lz5xfg` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot96lz5xfg`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingfenlei`
--

DROP TABLE IF EXISTS `dianyingfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingfenlei` varchar(200) NOT NULL COMMENT '电影分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianyingfenlei` (`dianyingfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='电影分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingfenlei`
--

LOCK TABLES `dianyingfenlei` WRITE;
/*!40000 ALTER TABLE `dianyingfenlei` DISABLE KEYS */;
INSERT INTO `dianyingfenlei` VALUES (21,'2024-03-12 06:26:58','电影分类1'),(22,'2024-03-12 06:26:58','电影分类2'),(23,'2024-03-12 06:26:58','电影分类3'),(24,'2024-03-12 06:26:58','电影分类4'),(25,'2024-03-12 06:26:58','电影分类5'),(26,'2024-03-12 06:26:58','电影分类6'),(27,'2024-03-12 06:26:58','电影分类7'),(28,'2024-03-12 06:26:58','电影分类8');
/*!40000 ALTER TABLE `dianyingfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingxinxi`
--

DROP TABLE IF EXISTS `dianyingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `dianyingfenlei` varchar(200) NOT NULL COMMENT '电影分类',
  `yanyuan` varchar(200) NOT NULL COMMENT '演员',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `fengmiantu` longtext COMMENT '封面图',
  `shipin` longtext COMMENT '视频',
  `shangyingshijian` date DEFAULT NULL COMMENT '上映时间',
  `dianyingjieshao` longtext COMMENT '电影介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='电影信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingxinxi`
--

LOCK TABLES `dianyingxinxi` WRITE;
/*!40000 ALTER TABLE `dianyingxinxi` DISABLE KEYS */;
INSERT INTO `dianyingxinxi` VALUES (31,'2024-03-12 06:26:58','电影名称1','电影分类1','演员1','导演1','upload/dianyingxinxi_fengmiantu1.jpg,upload/dianyingxinxi_fengmiantu2.jpg,upload/dianyingxinxi_fengmiantu3.jpg','','2024-03-12','电影介绍1',1,1,1,0,1),(32,'2024-03-12 06:26:58','电影名称2','电影分类2','演员2','导演2','upload/dianyingxinxi_fengmiantu2.jpg,upload/dianyingxinxi_fengmiantu3.jpg,upload/dianyingxinxi_fengmiantu4.jpg','','2024-03-12','电影介绍2',2,2,2,0,2),(33,'2024-03-12 06:26:58','电影名称3','电影分类3','演员3','导演3','upload/dianyingxinxi_fengmiantu3.jpg,upload/dianyingxinxi_fengmiantu4.jpg,upload/dianyingxinxi_fengmiantu5.jpg','','2024-03-12','电影介绍3',3,3,3,0,3),(34,'2024-03-12 06:26:58','电影名称4','电影分类4','演员4','导演4','upload/dianyingxinxi_fengmiantu4.jpg,upload/dianyingxinxi_fengmiantu5.jpg,upload/dianyingxinxi_fengmiantu6.jpg','','2024-03-12','电影介绍4',4,4,4,0,4),(35,'2024-03-12 06:26:58','电影名称5','电影分类5','演员5','导演5','upload/dianyingxinxi_fengmiantu5.jpg,upload/dianyingxinxi_fengmiantu6.jpg,upload/dianyingxinxi_fengmiantu7.jpg','','2024-03-12','电影介绍5',5,5,5,0,5),(36,'2024-03-12 06:26:58','电影名称6','电影分类6','演员6','导演6','upload/dianyingxinxi_fengmiantu6.jpg,upload/dianyingxinxi_fengmiantu7.jpg,upload/dianyingxinxi_fengmiantu8.jpg','','2024-03-12','电影介绍6',6,6,6,0,6),(37,'2024-03-12 06:26:58','电影名称7','电影分类7','演员7','导演7','upload/dianyingxinxi_fengmiantu7.jpg,upload/dianyingxinxi_fengmiantu8.jpg,upload/dianyingxinxi_fengmiantu9.jpg','','2024-03-12','电影介绍7',7,7,7,0,7),(38,'2024-03-12 06:26:58','电影名称8','电影分类8','演员8','导演8','upload/dianyingxinxi_fengmiantu8.jpg,upload/dianyingxinxi_fengmiantu9.jpg,upload/dianyingxinxi_fengmiantu10.jpg','','2024-03-12','电影介绍8',8,8,8,0,8);
/*!40000 ALTER TABLE `dianyingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussdianyingxinxi`
--

DROP TABLE IF EXISTS `discussdianyingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussdianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `score` double DEFAULT NULL COMMENT '评分',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电影信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussdianyingxinxi`
--

LOCK TABLES `discussdianyingxinxi` WRITE;
/*!40000 ALTER TABLE `discussdianyingxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussdianyingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshujixinxi`
--

DROP TABLE IF EXISTS `discussshujixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshujixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `score` double DEFAULT NULL COMMENT '评分',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshujixinxi`
--

LOCK TABLES `discussshujixinxi` WRITE;
/*!40000 ALTER TABLE `discussshujixinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussshujixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `istop` int(11) DEFAULT '0' COMMENT '是否置顶',
  `toptime` datetime DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='社区论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2024-03-12 06:26:58','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放',0,'2024-03-12 14:26:58'),(62,'2024-03-12 06:26:58','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放',0,'2024-03-12 14:26:58'),(63,'2024-03-12 06:26:58','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放',0,'2024-03-12 14:26:58'),(64,'2024-03-12 06:26:58','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放',0,'2024-03-12 14:26:58'),(65,'2024-03-12 06:26:58','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放',0,'2024-03-12 14:26:58'),(66,'2024-03-12 06:26:58','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放',0,'2024-03-12 14:26:58'),(67,'2024-03-12 06:26:58','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放',0,'2024-03-12 14:26:58'),(68,'2024-03-12 06:26:58','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放',0,'2024-03-12 14:26:58');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shujileixing`
--

DROP TABLE IF EXISTS `shujileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shujileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujileixing` varchar(200) NOT NULL COMMENT '书籍类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shujileixing` (`shujileixing`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='书籍类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shujileixing`
--

LOCK TABLES `shujileixing` WRITE;
/*!40000 ALTER TABLE `shujileixing` DISABLE KEYS */;
INSERT INTO `shujileixing` VALUES (41,'2024-03-12 06:26:58','书籍类型1'),(42,'2024-03-12 06:26:58','书籍类型2'),(43,'2024-03-12 06:26:58','书籍类型3'),(44,'2024-03-12 06:26:58','书籍类型4'),(45,'2024-03-12 06:26:58','书籍类型5'),(46,'2024-03-12 06:26:58','书籍类型6'),(47,'2024-03-12 06:26:58','书籍类型7'),(48,'2024-03-12 06:26:58','书籍类型8');
/*!40000 ALTER TABLE `shujileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shujixinxi`
--

DROP TABLE IF EXISTS `shujixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shujixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujimingcheng` varchar(200) NOT NULL COMMENT '书籍名称',
  `shujileixing` varchar(200) NOT NULL COMMENT '书籍类型',
  `tupian` longtext COMMENT '图片',
  `jianshu` varchar(200) DEFAULT NULL COMMENT '简述',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shujixiangqing` longtext COMMENT '书籍详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='书籍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shujixinxi`
--

LOCK TABLES `shujixinxi` WRITE;
/*!40000 ALTER TABLE `shujixinxi` DISABLE KEYS */;
INSERT INTO `shujixinxi` VALUES (51,'2024-03-12 06:26:58','书籍名称1','书籍类型1','upload/shujixinxi_tupian1.jpg,upload/shujixinxi_tupian2.jpg,upload/shujixinxi_tupian3.jpg','简述1','作者1','出版社1','书籍详情1',1,1,1,0,1),(52,'2024-03-12 06:26:58','书籍名称2','书籍类型2','upload/shujixinxi_tupian2.jpg,upload/shujixinxi_tupian3.jpg,upload/shujixinxi_tupian4.jpg','简述2','作者2','出版社2','书籍详情2',2,2,2,0,2),(53,'2024-03-12 06:26:58','书籍名称3','书籍类型3','upload/shujixinxi_tupian3.jpg,upload/shujixinxi_tupian4.jpg,upload/shujixinxi_tupian5.jpg','简述3','作者3','出版社3','书籍详情3',3,3,3,0,3),(54,'2024-03-12 06:26:58','书籍名称4','书籍类型4','upload/shujixinxi_tupian4.jpg,upload/shujixinxi_tupian5.jpg,upload/shujixinxi_tupian6.jpg','简述4','作者4','出版社4','书籍详情4',4,4,4,0,4),(55,'2024-03-12 06:26:58','书籍名称5','书籍类型5','upload/shujixinxi_tupian5.jpg,upload/shujixinxi_tupian6.jpg,upload/shujixinxi_tupian7.jpg','简述5','作者5','出版社5','书籍详情5',5,5,5,0,5),(56,'2024-03-12 06:26:58','书籍名称6','书籍类型6','upload/shujixinxi_tupian6.jpg,upload/shujixinxi_tupian7.jpg,upload/shujixinxi_tupian8.jpg','简述6','作者6','出版社6','书籍详情6',6,6,6,0,6),(57,'2024-03-12 06:26:58','书籍名称7','书籍类型7','upload/shujixinxi_tupian7.jpg,upload/shujixinxi_tupian8.jpg,upload/shujixinxi_tupian9.jpg','简述7','作者7','出版社7','书籍详情7',7,7,7,0,7),(58,'2024-03-12 06:26:58','书籍名称8','书籍类型8','upload/shujixinxi_tupian8.jpg,upload/shujixinxi_tupian9.jpg,upload/shujixinxi_tupian10.jpg','简述8','作者8','出版社8','书籍详情8',8,8,8,0,8);
/*!40000 ALTER TABLE `shujixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','ngara45n33pqqvjvgt88gr5knh7utsdi','2024-03-12 06:30:49','2024-03-12 07:30:49');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2024-03-12 06:26:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  `pquestion` varchar(200) DEFAULT NULL COMMENT '密保问题',
  `panswer` varchar(200) DEFAULT NULL COMMENT '密保答案',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2024-03-12 06:26:58','账号1','123456','昵称1','男','13823888881','upload/yonghu_touxiang1.jpg','密保问题1','密保答案1'),(12,'2024-03-12 06:26:58','账号2','123456','昵称2','男','13823888882','upload/yonghu_touxiang2.jpg','密保问题2','密保答案2'),(13,'2024-03-12 06:26:58','账号3','123456','昵称3','男','13823888883','upload/yonghu_touxiang3.jpg','密保问题3','密保答案3'),(14,'2024-03-12 06:26:58','账号4','123456','昵称4','男','13823888884','upload/yonghu_touxiang4.jpg','密保问题4','密保答案4'),(15,'2024-03-12 06:26:58','账号5','123456','昵称5','男','13823888885','upload/yonghu_touxiang5.jpg','密保问题5','密保答案5'),(16,'2024-03-12 06:26:58','账号6','123456','昵称6','男','13823888886','upload/yonghu_touxiang6.jpg','密保问题6','密保答案6'),(17,'2024-03-12 06:26:58','账号7','123456','昵称7','男','13823888887','upload/yonghu_touxiang7.jpg','密保问题7','密保答案7'),(18,'2024-03-12 06:26:58','账号8','123456','昵称8','男','13823888888','upload/yonghu_touxiang8.jpg','密保问题8','密保答案8');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-12 17:52:09
