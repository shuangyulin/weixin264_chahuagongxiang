/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - chahuagongxiangpingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chahuagongxiangpingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chahuagongxiangpingtai`;

/*Table structure for table `chahua` */

DROP TABLE IF EXISTS `chahua`;

CREATE TABLE `chahua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chahua_name` varchar(200) DEFAULT NULL COMMENT '插画名称 Search111  ',
  `chahua_photo` varchar(200) DEFAULT NULL COMMENT '插画图片 ',
  `chahua_file` varchar(200) DEFAULT NULL COMMENT '下载',
  `chahua_types` int(11) NOT NULL COMMENT '插画类型 Search111  ',
  `zan_number` int(11) NOT NULL COMMENT '赞',
  `cai_number` int(11) NOT NULL COMMENT '踩',
  `yonghu_id` int(11) NOT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '插画发布时间 ',
  `chahua_content` text COMMENT '插画详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='插画信息';

/*Data for the table `chahua` */

insert  into `chahua`(`id`,`chahua_name`,`chahua_photo`,`chahua_file`,`chahua_types`,`zan_number`,`cai_number`,`yonghu_id`,`insert_time`,`chahua_content`,`create_time`) values (1,'插画名称1','http://localhost:8080/chahuagongxiangpingtai/upload/1651915684299.jpg','http://localhost:8080/chahuagongxiangpingtai/upload/file.rar',1,154,293,2,'2022-05-07 17:22:17','<p>插画详情1</p>','2022-05-07 17:22:17'),(2,'插画名称211','http://localhost:8080/chahuagongxiangpingtai/upload/1651915674280.jpg','http://localhost:8080/chahuagongxiangpingtai/upload/file.rar',3,87,59,1,'2022-05-07 17:22:17','<p>插画详情2</p>','2022-05-07 17:22:17'),(3,'插画名称3','http://localhost:8080/chahuagongxiangpingtai/upload/1651915665203.jpg','http://localhost:8080/chahuagongxiangpingtai/upload/file.rar',1,171,202,2,'2022-05-07 17:22:17','<p>插画详情3</p>','2022-05-07 17:22:17'),(4,'插画名称4','http://localhost:8080/chahuagongxiangpingtai/upload/1651915653584.jpg','http://localhost:8080/chahuagongxiangpingtai/upload/file.rar',2,157,3,2,'2022-05-07 17:22:17','<p>插画详情4</p>','2022-05-07 17:22:17'),(5,'插画名称5','http://localhost:8080/chahuagongxiangpingtai/upload/1651915643532.jpg','http://localhost:8080/chahuagongxiangpingtai/upload/file.rar',2,224,317,3,'2022-05-07 17:22:17','<p>插画详情5</p>','2022-05-07 17:22:17');

/*Table structure for table `chahua_collection` */

DROP TABLE IF EXISTS `chahua_collection`;

CREATE TABLE `chahua_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chahua_id` int(11) DEFAULT NULL COMMENT '插画',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chahua_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='插画收藏';

/*Data for the table `chahua_collection` */

insert  into `chahua_collection`(`id`,`chahua_id`,`yonghu_id`,`chahua_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-05-07 17:22:17','2022-05-07 17:22:17'),(2,2,2,1,'2022-05-07 17:22:17','2022-05-07 17:22:17'),(4,4,1,1,'2022-05-07 17:22:17','2022-05-07 17:22:17');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/chahuagongxiangpingtai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/chahuagongxiangpingtai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/chahuagongxiangpingtai/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'chahua_types','插画类型',1,'动物',NULL,NULL,'2022-05-07 17:22:02'),(2,'chahua_types','插画类型',2,'漫画',NULL,NULL,'2022-05-07 17:22:02'),(3,'chahua_types','插画类型',3,'人物',NULL,NULL,'2022-05-07 17:22:03'),(4,'chahua_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-05-07 17:22:03'),(5,'chahua_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-05-07 17:22:03'),(6,'chahua_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-05-07 17:22:03'),(7,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-05-07 17:22:03'),(8,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-05-07 17:22:03'),(9,'sex_types','性别类型',1,'男',NULL,NULL,'2022-05-07 17:22:03'),(10,'sex_types','性别类型',2,'女',NULL,NULL,'2022-05-07 17:22:03'),(11,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-05-07 17:22:03'),(12,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-05-07 17:22:03');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,'2022-05-07 17:22:17','2022-05-07 17:22:17','2022-05-07 17:22:17'),(2,'帖子标题2',3,NULL,'发布内容2',NULL,1,'2022-05-07 17:22:17','2022-05-07 17:22:17','2022-05-07 17:22:17'),(3,'帖子标题3',3,NULL,'发布内容3',NULL,1,'2022-05-07 17:22:17','2022-05-07 17:22:17','2022-05-07 17:22:17'),(4,'帖子标题4',2,NULL,'发布内容4',NULL,1,'2022-05-07 17:22:17','2022-05-07 17:22:17','2022-05-07 17:22:17'),(5,'帖子标题5',3,NULL,'发布内容5',NULL,1,'2022-05-07 17:22:17','2022-05-07 17:22:17','2022-05-07 17:22:17'),(6,NULL,NULL,1,'管理评论1212',5,2,'2022-05-07 17:29:43',NULL,'2022-05-07 17:29:43'),(7,NULL,1,NULL,'用户评论1211',5,2,'2022-05-07 17:32:15',NULL,'2022-05-07 17:32:15'),(9,'123',1,NULL,'123',NULL,1,'2022-05-07 17:32:42',NULL,'2022-05-07 17:32:42');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int(11) NOT NULL COMMENT '公告类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/chahuagongxiangpingtai/upload/news1.jpg',2,'2022-05-07 17:22:17','公告详情1','2022-05-07 17:22:17'),(2,'公告名称2','http://localhost:8080/chahuagongxiangpingtai/upload/news2.jpg',1,'2022-05-07 17:22:17','公告详情2','2022-05-07 17:22:17'),(3,'公告名称3','http://localhost:8080/chahuagongxiangpingtai/upload/news3.jpg',1,'2022-05-07 17:22:17','公告详情3','2022-05-07 17:22:17'),(4,'公告名称4','http://localhost:8080/chahuagongxiangpingtai/upload/news4.jpg',1,'2022-05-07 17:22:17','公告详情4','2022-05-07 17:22:17'),(5,'公告名称5','http://localhost:8080/chahuagongxiangpingtai/upload/news5.jpg',1,'2022-05-07 17:22:17','公告详情5','2022-05-07 17:22:17');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','7wi593sqpvov8vf0poysqja3ug1cyaro','2022-05-07 17:20:53','2022-05-07 18:30:50'),(2,1,'admin','users','管理员','hun25vv8bs3i3zhhjfqggx3vwv8e1l0o','2022-05-07 17:27:04','2022-05-07 18:36:37');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-08-01 08:15:04');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','名称1','17703786901','http://localhost:8080/chahuagongxiangpingtai/upload/yonghu1.jpg',2,'1@qq.com','2022-05-07 17:22:17'),(2,'a2','123456','名称2','17703786902','http://localhost:8080/chahuagongxiangpingtai/upload/yonghu2.jpg',2,'2@qq.com','2022-05-07 17:22:17'),(3,'a3','123456','名称3','17703786903','http://localhost:8080/chahuagongxiangpingtai/upload/yonghu3.jpg',2,'3@qq.com','2022-05-07 17:22:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
