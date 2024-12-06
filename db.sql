/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmb00ts
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmb00ts` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmb00ts`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmb00ts/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmb00ts/upload/1616841233142.jpg'),(3,'picture3','http://localhost:8080/ssmb00ts/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusstushuxinxi` */

DROP TABLE IF EXISTS `discusstushuxinxi`;

CREATE TABLE `discusstushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616841577987 DEFAULT CHARSET=utf8 COMMENT='图书信息评论表';

/*Data for the table `discusstushuxinxi` */

insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (71,'2021-03-27 18:15:29',1,1,'用户名1','评论内容1','回复内容1'),(72,'2021-03-27 18:15:29',2,2,'用户名2','评论内容2','回复内容2'),(73,'2021-03-27 18:15:29',3,3,'用户名3','评论内容3','回复内容3'),(74,'2021-03-27 18:15:29',4,4,'用户名4','评论内容4','回复内容4'),(75,'2021-03-27 18:15:29',5,5,'用户名5','评论内容5','回复内容5'),(76,'2021-03-27 18:15:29',6,6,'用户名6','评论内容6','回复内容6'),(1616841577986,'2021-03-27 18:39:37',1616841191851,1616841498920,'2','很不错的小说','');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616841598605 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (61,'2021-03-27 18:15:29',1,'用户名1','留言内容1','回复内容1'),(62,'2021-03-27 18:15:29',2,'用户名2','留言内容2','回复内容2'),(63,'2021-03-27 18:15:29',3,'用户名3','留言内容3','回复内容3'),(64,'2021-03-27 18:15:29',4,'用户名4','留言内容4','回复内容4'),(65,'2021-03-27 18:15:29',5,'用户名5','留言内容5','回复内容5'),(66,'2021-03-27 18:15:29',6,'用户名6','留言内容6','回复内容6'),(1616841340419,'2021-03-27 18:35:39',1616841255218,'1','请问有狼图腾小说吗','有'),(1616841598604,'2021-03-27 18:39:57',1616841498920,'2','EFERTRTYTRY','FDRT ');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616841219848 DEFAULT CHARSET=utf8 COMMENT='图书资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (51,'2021-03-27 18:15:29','标题1','简介1','http://localhost:8080/ssmb00ts/upload/1616840376334.jpg','<p>内容1</p>'),(52,'2021-03-27 18:15:29','标题2','简介2','http://localhost:8080/ssmb00ts/upload/1616840395104.jpg','<p>内容2</p>'),(53,'2021-03-27 18:15:29','标题3','简介3','http://localhost:8080/ssmb00ts/upload/1616840401715.jpg','<p>内容3</p>'),(54,'2021-03-27 18:15:29','标题4','简介4','http://localhost:8080/ssmb00ts/upload/1616840409415.jpg','<p>内容4</p>'),(55,'2021-03-27 18:15:29','标题5','简介5','http://localhost:8080/ssmb00ts/upload/1616840420332.jpg','<p>内容5</p>'),(1616841219847,'2021-03-27 18:33:38','图书资讯','图书资讯','http://localhost:8080/ssmb00ts/upload/1616841204880.jpg','<p>资讯内容SDJFKRHTGTRUIYHTUHYTT</p><p><img src=\"http://localhost:8080/ssmb00ts/upload/1616841217451.jpg\"></p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616841644750 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616841277875,'2021-03-27 18:34:37',1616841255218,1616841191851,'tushuxinxi','晚熟的人','http://localhost:8080/ssmb00ts/upload/1616841122730.jpg'),(1616841641237,'2021-03-27 18:40:41',1616841498920,36,'tushuxinxi','图书名称6','http://localhost:8080/ssmb00ts/upload/tushuxinxi_tupian6.jpg'),(1616841644749,'2021-03-27 18:40:44',1616841498920,1616841191851,'tushuxinxi','晚熟的人','http://localhost:8080/ssmb00ts/upload/1616841122730.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','uszv3w8mc1mts95apn8swehmjoo61tjz','2021-03-27 18:16:40','2021-03-27 19:16:41'),(2,1,'abo','users','管理员','9xsjx7o4qny9y5okpt9vlb1h6iu9ymvs','2021-03-27 18:18:06','2021-03-27 19:31:19'),(3,1616841255218,'1','yonghu','用户','jpy5y6nc5sg8g1vl2yjn8s229hkh3il4','2021-03-27 18:34:21','2021-03-27 19:34:21'),(4,1616841498920,'2','yonghu','用户','vbhh6va4d4p5nm7w9owlugreavu8apst','2021-03-27 18:38:24','2021-03-27 19:40:30'),(5,12,'用户2','yonghu','用户','ev6tdyk77caig8iplio2x7ns211rgli3','2021-03-27 20:20:17','2021-03-27 21:20:17');

/*Table structure for table `tushufenlei` */

DROP TABLE IF EXISTS `tushufenlei`;

CREATE TABLE `tushufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616841109109 DEFAULT CHARSET=utf8 COMMENT='图书分类';

/*Data for the table `tushufenlei` */

insert  into `tushufenlei`(`id`,`addtime`,`fenlei`) values (21,'2021-03-27 18:15:29','分类1'),(22,'2021-03-27 18:15:29','分类2'),(23,'2021-03-27 18:15:29','分类3'),(24,'2021-03-27 18:15:29','分类4'),(1616841101768,'2021-03-27 18:31:41','文学小说'),(1616841109108,'2021-03-27 18:31:48','古典小说');

/*Table structure for table `tushuxinxi` */

DROP TABLE IF EXISTS `tushuxinxi`;

CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `zongzhangjie` varchar(200) DEFAULT NULL COMMENT '总章节',
  `zishu` varchar(200) DEFAULT NULL COMMENT '字数',
  `tushuneirong` longtext COMMENT '图书内容',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616841191852 DEFAULT CHARSET=utf8 COMMENT='图书信息';

/*Data for the table `tushuxinxi` */

insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`fenlei`,`tupian`,`zuozhe`,`chubanshe`,`zongzhangjie`,`zishu`,`tushuneirong`,`clicktime`,`clicknum`) values (31,'2021-03-27 18:15:29','图书编号1','图书名称1','分类1','http://localhost:8080/ssmb00ts/upload/1616840312160.jpg','作者1','出版社1','总章节1','字数1','<p>图书内容1</p>','2021-03-27 18:18:21',2),(32,'2021-03-27 18:15:29','图书编号2','图书名称2','分类2','http://localhost:8080/ssmb00ts/upload/1616840319746.jpg','作者2','出版社2','总章节2','字数2','<p>图书内容2</p>','2021-03-27 18:18:35',3),(33,'2021-03-27 18:15:29','图书编号3','图书名称3','分类3','http://localhost:8080/ssmb00ts/upload/1616840327801.jpg','作者3','出版社3','总章节3','字数3','<p>图书内容3</p>','2021-03-27 18:18:43',4),(34,'2021-03-27 18:15:29','图书编号4','图书名称4','分类4','http://localhost:8080/ssmb00ts/upload/1616840339711.jpg','作者4','出版社4','总章节4','字数4','<p>图书内容4</p>','2021-03-27 18:38:49',13),(36,'2021-03-27 18:15:29','图书编号6','图书名称6','分类6','http://localhost:8080/ssmb00ts/upload/tushuxinxi_tupian6.jpg','作者6','出版社6','总章节6','字数6','图书内容6','2021-03-27 18:40:40',8),(1616841191851,'2021-03-27 18:33:11','1616841112241','晚熟的人','文学小说','http://localhost:8080/ssmb00ts/upload/1616841122730.jpg','莫言','人民文学出版社','48章节','100002字','<p>莫言用十二个故事讲述了获得诺贝尔文学奖后八年的里里外外；</p>','2021-03-27 18:40:43',5);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','aboo','管理员','2021-03-27 18:15:29');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616841498921 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (11,'2021-03-27 18:15:29','用户1','123456','姓名1','男','http://localhost:8080/ssmb00ts/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-03-27 18:15:29','用户2','123456','姓名2','男','http://localhost:8080/ssmb00ts/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-03-27 18:15:29','用户3','123456','姓名3','男','http://localhost:8080/ssmb00ts/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-03-27 18:15:29','用户4','123456','姓名4','男','http://localhost:8080/ssmb00ts/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-03-27 18:15:29','用户5','123456','姓名5','男','http://localhost:8080/ssmb00ts/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-03-27 18:15:29','用户6','123456','姓名6','男','http://localhost:8080/ssmb00ts/upload/yonghu_touxiang6.jpg','13823888886'),(1616841255218,'2021-03-27 18:34:15','1','1','张明','男','http://localhost:8080/ssmb00ts/upload/1616841270068.jpg','12312312312'),(1616841498920,'2021-03-27 18:38:18','2','2','陈一','女','http://localhost:8080/ssmb00ts/upload/1616841510160.png','12345678945');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
