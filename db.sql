/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wenlishengcheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wenlishengcheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wenlishengcheng`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1大师傅','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-08 16:14:56'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-08 16:14:56'),(3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-08 16:14:56'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-08 16:14:56'),(5,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-08 16:14:56'),(6,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-08 16:14:56'),(7,'tupian_types','图片类型',1,'图片类型1',NULL,NULL,'2023-04-08 16:14:56'),(8,'tupian_types','图片类型',2,'图片类型2',NULL,NULL,'2023-04-08 16:14:56'),(9,'tupian_erji_types','二级类型',1,'二级类型1',1,NULL,'2023-04-08 16:14:56'),(10,'tupian_erji_types','二级类型',2,'二级类型2',1,NULL,'2023-04-08 16:14:56'),(11,'tupian_erji_types','二级类型',3,'二级类型3',2,NULL,'2023-04-08 16:14:56'),(12,'tupian_erji_types','二级类型',4,'二级类型4',2,NULL,'2023-04-08 16:14:56'),(13,'tupian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-08 16:14:56'),(14,'tupian_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-08 16:14:56'),(15,'tupian_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-08 16:14:56'),(16,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-08 16:14:56'),(17,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-08 16:14:56'),(18,'tupian_erji_types','二级类型',5,'二级类型5',2,'','2023-04-08 16:28:48');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-08 16:15:51','公告详情1','2023-04-08 16:15:51'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-08 16:15:51','公告详情2','2023-04-08 16:15:51'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-08 16:15:51','公告详情3','2023-04-08 16:15:51'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-04-08 16:15:51','公告详情4','2023-04-08 16:15:51'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-08 16:15:51','公告详情5','2023-04-08 16:15:51'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-08 16:15:51','公告详情6','2023-04-08 16:15:51'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-08 16:15:51','公告详情7','2023-04-08 16:15:51'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-08 16:15:51','公告详情8','2023-04-08 16:15:51'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-08 16:15:51','公告详情9','2023-04-08 16:15:51'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-08 16:15:51','公告详情10','2023-04-08 16:15:51'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-08 16:15:51','公告详情11','2023-04-08 16:15:51'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-08 16:15:51','公告详情12','2023-04-08 16:15:51'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-08 16:15:51','公告详情13','2023-04-08 16:15:51'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-08 16:15:51','公告详情14','2023-04-08 16:15:51'),(15,'公告1111','/upload/1680942543920.jpg',2,'2023-04-08 16:29:08','<p>高大上法大使馆第三个</p>','2023-04-08 16:29:08');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','7rcpng0g8zau1l4dhun4b1yhcgcftdqp','2023-04-08 16:25:28','2023-04-08 17:28:26'),(2,3,'a3','yonghu','用户','8ak6l7kyxuer21a938trc7obu03r6jl3','2023-04-08 16:26:13','2023-04-08 17:26:14'),(3,4,'a5','yonghu','用户','3abnvcbqkmt0wgugis2xkvfp82duheef','2023-04-08 16:27:33','2023-04-08 17:27:33');

/*Table structure for table `tupian` */

DROP TABLE IF EXISTS `tupian`;

CREATE TABLE `tupian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tupian_name` varchar(200) DEFAULT NULL COMMENT '图片名称  Search111 ',
  `tupian_uuid_number` varchar(200) DEFAULT NULL COMMENT '图片编号',
  `tupian_photo` varchar(200) DEFAULT NULL COMMENT '缩略图',
  `tupian_file` varchar(200) DEFAULT NULL COMMENT '高清文件',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `tupian_types` int(11) DEFAULT NULL COMMENT '图片类型 Search111',
  `tupian_erji_types` int(11) DEFAULT NULL COMMENT '二级类型 Search111',
  `tupian_clicknum` int(11) DEFAULT NULL COMMENT '图片热度',
  `tupian_content` longtext COMMENT '图片介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `tupian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='图片';

/*Data for the table `tupian` */

insert  into `tupian`(`id`,`tupian_name`,`tupian_uuid_number`,`tupian_photo`,`tupian_file`,`zan_number`,`cai_number`,`tupian_types`,`tupian_erji_types`,`tupian_clicknum`,`tupian_content`,`shangxia_types`,`tupian_delete`,`insert_time`,`create_time`) values (1,'图片名称1','1680941752087','upload/tupian1.jpg','upload/file.rar',130,14,1,1,224,'图片介绍1',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(2,'图片名称2','1680941752086','upload/tupian2.jpg','upload/file.rar',284,62,1,1,6,'图片介绍2',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(3,'图片名称3','1680941752056','upload/tupian3.jpg','upload/file.rar',392,451,1,1,282,'图片介绍3',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(4,'图片名称4','1680941752089','upload/tupian4.jpg','upload/file.rar',434,440,1,1,171,'图片介绍4',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(5,'图片名称5','1680941752023','upload/tupian5.jpg','upload/file.rar',137,112,1,1,223,'图片介绍5',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(6,'图片名称6','1680941752052','upload/tupian6.jpg','upload/file.rar',212,376,1,1,399,'图片介绍6',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(7,'图片名称7','1680941752059','upload/tupian7.jpg','upload/file.rar',437,279,1,2,36,'图片介绍7',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(8,'图片名称8','1680941752012','upload/tupian8.jpg','upload/file.rar',251,398,2,3,307,'图片介绍8',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(9,'图片名称9','1680941752018','upload/tupian9.jpg','upload/file.rar',51,182,2,3,322,'图片介绍9',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(10,'图片名称10','1680941752086','upload/tupian10.jpg','upload/file.rar',113,213,2,3,12,'图片介绍10',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(11,'图片名称11','1680941752002','upload/tupian11.jpg','upload/file.rar',250,247,2,3,93,'图片介绍11',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(12,'图片名称12','1680941752033','upload/tupian12.jpg','upload/file.rar',416,484,2,4,477,'图片介绍12',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(13,'图片名称13','1680941752098','upload/tupian13.jpg','upload/file.rar',272,33,2,4,42,'图片介绍13',1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(14,'图片名称14','1680941752069','upload/tupian14.jpg','upload/file.rar',477,43,2,4,19,'图片介绍14',2,1,'2023-04-08 16:15:51','2023-04-08 16:15:51');

/*Table structure for table `tupian_collection` */

DROP TABLE IF EXISTS `tupian_collection`;

CREATE TABLE `tupian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tupian_id` int(11) DEFAULT NULL COMMENT '图片',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tupian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='图片收藏';

/*Data for the table `tupian_collection` */

insert  into `tupian_collection`(`id`,`tupian_id`,`yonghu_id`,`tupian_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(2,2,3,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(3,3,2,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(4,4,2,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(5,5,1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(6,6,3,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(7,7,3,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(8,8,2,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(9,9,3,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(10,10,2,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(11,11,1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(12,12,1,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(13,13,2,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(14,14,2,1,'2023-04-08 16:15:51','2023-04-08 16:15:51'),(15,9,4,1,'2023-04-08 16:27:51','2023-04-08 16:27:51'),(16,5,4,1,'2023-04-08 16:28:02','2023-04-08 16:28:02'),(17,5,4,2,'2023-04-08 16:28:04','2023-04-08 16:28:04');

/*Table structure for table `tupian_liuyan` */

DROP TABLE IF EXISTS `tupian_liuyan`;

CREATE TABLE `tupian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tupian_id` int(11) DEFAULT NULL COMMENT '图片',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tupian_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='图片留言';

/*Data for the table `tupian_liuyan` */

insert  into `tupian_liuyan`(`id`,`tupian_id`,`yonghu_id`,`tupian_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-04-08 16:15:51','回复信息1','2023-04-08 16:15:51','2023-04-08 16:15:51'),(2,2,2,'留言内容2','2023-04-08 16:15:51','回复信息2','2023-04-08 16:15:51','2023-04-08 16:15:51'),(3,3,1,'留言内容3','2023-04-08 16:15:51','回复信息3','2023-04-08 16:15:51','2023-04-08 16:15:51'),(4,4,2,'留言内容4','2023-04-08 16:15:51','回复信息4','2023-04-08 16:15:51','2023-04-08 16:15:51'),(5,5,2,'留言内容5','2023-04-08 16:15:51','回复信息5','2023-04-08 16:15:51','2023-04-08 16:15:51'),(6,6,2,'留言内容6','2023-04-08 16:15:51','回复信息6','2023-04-08 16:15:51','2023-04-08 16:15:51'),(7,7,1,'留言内容7','2023-04-08 16:15:51','回复信息7','2023-04-08 16:15:51','2023-04-08 16:15:51'),(8,8,1,'留言内容8','2023-04-08 16:15:51','回复信息8','2023-04-08 16:15:51','2023-04-08 16:15:51'),(9,9,3,'留言内容9','2023-04-08 16:15:51','回复信息9','2023-04-08 16:15:51','2023-04-08 16:15:51'),(10,10,2,'留言内容10','2023-04-08 16:15:51','回复信息10','2023-04-08 16:15:51','2023-04-08 16:15:51'),(11,11,1,'留言内容11','2023-04-08 16:15:51','回复信息11','2023-04-08 16:15:51','2023-04-08 16:15:51'),(12,12,2,'留言内容12','2023-04-08 16:15:51','回复信息12','2023-04-08 16:15:51','2023-04-08 16:15:51'),(13,13,1,'留言内容13','2023-04-08 16:15:51','回复信息13','2023-04-08 16:15:51','2023-04-08 16:15:51'),(14,14,2,'留言内容14','2023-04-08 16:15:51','回复信息14','2023-04-08 16:15:51','2023-04-08 16:15:51'),(15,9,4,'gdafa股份第三个','2023-04-08 16:27:57',NULL,NULL,'2023-04-08 16:27:57'),(16,5,4,'高大上割发代首个','2023-04-08 16:28:08','嘎萨达高大上','2023-04-08 16:29:21','2023-04-08 16:28:08');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-08 16:14:56');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1680941752063','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com',2,'2023-04-08 16:15:51'),(2,'a2','123456','1680941752009','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com',2,'2023-04-08 16:15:51'),(3,'a3','123456','1680941752081','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com',1,'2023-04-08 16:15:51'),(4,'a5','123456','1680942448200','张5','17788889999','444555888899999999','upload/1680942497287.jpg',1,'5@qq.com',1,'2023-04-08 16:27:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
