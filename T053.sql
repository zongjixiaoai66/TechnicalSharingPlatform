/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t053`;
CREATE DATABASE IF NOT EXISTS `t053` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t053`;

DROP TABLE IF EXISTS `bijifenxiang`;
CREATE TABLE IF NOT EXISTS `bijifenxiang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bijimingcheng` varchar(200) NOT NULL COMMENT '笔记名称',
  `bijileixing` varchar(200) DEFAULT NULL COMMENT '笔记类型',
  `bijibiaoti` varchar(200) DEFAULT NULL COMMENT '笔记标题',
  `bijitupian` varchar(200) DEFAULT NULL COMMENT '笔记图片',
  `bijifujian` varchar(200) DEFAULT NULL COMMENT '笔记附件',
  `bijineirong` longtext NOT NULL COMMENT '笔记内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617373002828 DEFAULT CHARSET=utf8mb3 COMMENT='笔记分享';

DELETE FROM `bijifenxiang`;
INSERT INTO `bijifenxiang` (`id`, `addtime`, `bijimingcheng`, `bijileixing`, `bijibiaoti`, `bijitupian`, `bijifujian`, `bijineirong`, `faburiqi`, `yonghuming`, `xingming`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(21, '2021-04-02 14:12:19', '笔记名称1', '笔记类型1', '笔记标题1', 'http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian1.jpg', '', '笔记内容1', '2021-04-02', '用户名1', '姓名1', 1, 1, '2024-01-18 16:13:19', 6),
	(22, '2021-04-02 14:12:19', '笔记名称2', '笔记类型2', '笔记标题2', 'http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian2.jpg', '', '笔记内容2', '2021-04-02', '用户名2', '姓名2', 2, 2, '2024-01-18 16:10:03', 3),
	(23, '2021-04-02 14:12:19', '笔记名称3', '笔记类型3', '笔记标题3', 'http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian3.jpg', '', '笔记内容3', '2021-04-02', '用户名3', '姓名3', 3, 3, '2024-01-18 16:13:51', 5),
	(24, '2021-04-02 14:12:19', '笔记名称4', '笔记类型4', '笔记标题4', 'http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian4.jpg', '', '笔记内容4', '2021-04-02', '用户名4', '姓名4', 5, 4, '2024-01-18 16:14:13', 6),
	(25, '2021-04-02 14:12:19', '笔记名称5', '笔记类型5', '笔记标题5', 'http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian5.jpg', '', '笔记内容5', '2021-04-02', '用户名5', '姓名5', 5, 5, '2021-04-02 22:12:19', 5),
	(26, '2021-04-02 14:12:19', '笔记名称6', '笔记类型6', '笔记标题6', 'http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian6.jpg', '', '笔记内容6', '2021-04-02', '用户名6', '姓名6', 6, 6, '2021-04-02 22:12:19', 6),
	(1617373002827, '2021-04-02 14:16:42', '测试', 'ssm', '测试', 'http://localhost:8080/springboot1o52x/upload/1617372985216.jpg', 'http://localhost:8080/springboot1o52x/upload/1617372987516.jpg', '<p>附件可上传文件格式<img src="http://localhost:8080/springboot1o52x/upload/1617373000747.jpg"></p>', '2021-04-15', '1', '阿三', 1, 0, '2021-04-02 22:17:38', 4);

DROP TABLE IF EXISTS `bijileixing`;
CREATE TABLE IF NOT EXISTS `bijileixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617372967017 DEFAULT CHARSET=utf8mb3 COMMENT='笔记类型';

DELETE FROM `bijileixing`;
INSERT INTO `bijileixing` (`id`, `addtime`, `leixing`) VALUES
	(35, '2021-04-02 14:12:19', 'springboog'),
	(36, '2021-04-02 14:12:19', 'ssm'),
	(1617372967016, '2021-04-02 14:16:06', 'net');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot1o52x/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot1o52x/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot1o52x/upload/picture3.jpg'),
	(6, 'homepage', 'http://localhost:8080/springboot1o52x/upload/1617372903703.jpg');

DROP TABLE IF EXISTS `discussbijifenxiang`;
CREATE TABLE IF NOT EXISTS `discussbijifenxiang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617373041897 DEFAULT CHARSET=utf8mb3 COMMENT='笔记分享评论表';

DELETE FROM `discussbijifenxiang`;
INSERT INTO `discussbijifenxiang` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(51, '2021-04-02 14:12:19', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(52, '2021-04-02 14:12:19', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(53, '2021-04-02 14:12:19', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(54, '2021-04-02 14:12:19', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(55, '2021-04-02 14:12:19', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(56, '2021-04-02 14:12:19', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1617373041896, '2021-04-02 14:17:21', 1617373002827, 1617372875402, '1', '666', NULL);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705565652025 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1617373048877, '2021-04-02 14:17:27', 1617372875402, 1617373002827, 'bijifenxiang', '测试', 'http://localhost:8080/springboot1o52x/upload/1617372985216.jpg'),
	(1705565489551, '2024-01-18 08:11:29', 11, 21, 'bijifenxiang', '笔记名称1', 'http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian1.jpg'),
	(1705565652024, '2024-01-18 08:14:11', 11, 24, 'bijifenxiang', '笔记名称4', 'http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian4.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', '9g5t9ciy3bi2ds4ya7o3zplherbv06ed', '2021-04-02 14:13:20', '2024-01-18 09:12:56'),
	(2, 1617372875402, '1', 'yonghu', '用户', 'gxsb3tun7tqab77lzb840k5bff1818u6', '2021-04-02 14:15:19', '2021-04-02 15:16:54'),
	(3, 11, '用户1', 'yonghu', '用户', 'hhny9ypcvmmch6wwqn4vctqxvxwrn4xu', '2024-01-18 08:10:41', '2024-01-18 09:13:50');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-02 14:12:19');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617372875403 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`, `zhaopian`) VALUES
	(11, '2021-04-02 14:12:19', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian1.jpg'),
	(12, '2021-04-02 14:12:19', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian2.jpg'),
	(13, '2021-04-02 14:12:19', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian3.jpg'),
	(14, '2021-04-02 14:12:19', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian4.jpg'),
	(15, '2021-04-02 14:12:19', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian5.jpg'),
	(16, '2021-04-02 14:12:19', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian6.jpg'),
	(1617372875402, '2021-04-02 14:14:35', '1', '1', '阿三', '女', '12312312323', '123@qq.com', '441402000000000000', 'http://localhost:8080/springboot1o52x/upload/1617372924470.png');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
