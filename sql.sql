-- Active: 1667896766806@@162.14.110.150@3306@compus_second
DROP TABLE IF EXISTS `ordinary_users`;
CREATE TABLE `ordinary_users`(
	   `ordinary_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '普通用户ID',
`user_name` varchar(64) comment '用户姓名',
`user_gender` varchar(64) comment '用户性别',
`subscriber_telephone` varchar(16) comment '用户电话',
`user_address` varchar(64) comment '用户地址',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ordinary_users_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '普通用户';

DROP TABLE IF EXISTS `product_information`;
CREATE TABLE `product_information`(
	   `product_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品信息ID',
`trade_name` varchar(64) comment '商品名称',
`product_cover` varchar(255) comment '商品封面',
`commodity_price_` varchar(64) comment '商品价钱',
`merchandise_inventory` varchar(64) comment '商品库存',
`commodity_type` varchar(64) comment '商品类型',
`product_description` text comment '商品描述',
`product_introduction` longtext comment '商品介绍',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (product_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '商品信息';
insert into `product_information` values (1,'商品名称1','/api/upload/image_1647488932648.jpg','商品价钱1','商品库存1','商品类型1','商品描述1','此处可上传文字、图片、视频、超链接、表格等内容区1','670','472','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `product_information` values (2,'商品名称2','/api/upload/image_1647488932653.jpg','商品价钱2','商品库存2','商品类型2','商品描述2','此处可上传文字、图片、视频、超链接、表格等内容区2','577','272','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `product_information` values (3,'商品名称3','/api/upload/image_1647488932648.jpg','商品价钱3','商品库存3','商品类型3','商品描述3','此处可上传文字、图片、视频、超链接、表格等内容区3','857','738','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `product_information` values (4,'商品名称4','/api/upload/image_1647488932652.jpg','商品价钱4','商品库存4','商品类型4','商品描述4','此处可上传文字、图片、视频、超链接、表格等内容区4','817','804','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `product_information` values (5,'商品名称5','/api/upload/image_1647488932653.jpg','商品价钱5','商品库存5','商品类型5','商品描述5','此处可上传文字、图片、视频、超链接、表格等内容区5','292','589','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `product_information` values (6,'商品名称6','/api/upload/image_1647488932678.jpeg','商品价钱6','商品库存6','商品类型6','商品描述6','此处可上传文字、图片、视频、超链接、表格等内容区6','183','912','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `product_information` values (7,'商品名称7','/api/upload/image_1647488932653.jpg','商品价钱7','商品库存7','商品类型7','商品描述7','此处可上传文字、图片、视频、超链接、表格等内容区7','787','211','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `product_information` values (8,'商品名称8','/api/upload/image_1647488932687.jpg','商品价钱8','商品库存8','商品类型8','商品描述8','此处可上传文字、图片、视频、超链接、表格等内容区8','650','207','0','2022-03-22 23:52:24','2022-03-22 23:52:24');

DROP TABLE IF EXISTS `order_information`;
CREATE TABLE `order_information`(
	   `order_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单信息ID',
`order_number` varchar(64) comment '订单编号',
`purchase_user` int(11) DEFAULT 0 comment '购买用户',
`user_name` varchar(64) comment '用户姓名',
`subscriber_telephone` varchar(16) comment '用户电话',
`user_address` varchar(64) comment '用户地址',
`trade_name` varchar(64) comment '商品名称',
`commodity_price_` varchar(64) comment '商品价钱',
`purchase_quantity` varchar(64) comment '购买数量',
`total` varchar(64) comment '总计',
`pay_state` varchar(16) DEFAULT '未支付' NOT NULL comment '支付状态',
`pay_type` varchar(16) DEFAULT '' comment '支付类型: 微信、支付宝、网银',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (order_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '订单信息';
insert into `order_information` values (1,'订单编号1',0,'用户姓名1','18945782351','用户地址1','商品名称1','商品价钱1','购买数量1','总计1','未支付','支付宝','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `order_information` values (2,'订单编号2',0,'用户姓名2','18945782352','用户地址2','商品名称2','商品价钱2','购买数量2','总计2','未支付','支付宝','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `order_information` values (3,'订单编号3',0,'用户姓名3','18945782353','用户地址3','商品名称3','商品价钱3','购买数量3','总计3','未支付','支付宝','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `order_information` values (4,'订单编号4',0,'用户姓名4','18945782354','用户地址4','商品名称4','商品价钱4','购买数量4','总计4','未支付','支付宝','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `order_information` values (5,'订单编号5',0,'用户姓名5','18945782355','用户地址5','商品名称5','商品价钱5','购买数量5','总计5','未支付','支付宝','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `order_information` values (6,'订单编号6',0,'用户姓名6','18945782356','用户地址6','商品名称6','商品价钱6','购买数量6','总计6','未支付','支付宝','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `order_information` values (7,'订单编号7',0,'用户姓名7','18945782357','用户地址7','商品名称7','商品价钱7','购买数量7','总计7','未支付','支付宝','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `order_information` values (8,'订单编号8',0,'用户姓名8','18945782358','用户地址8','商品名称8','商品价钱8','购买数量8','总计8','未支付','支付宝','0','2022-03-22 23:52:24','2022-03-22 23:52:24');

DROP TABLE IF EXISTS `distribution_information`;
CREATE TABLE `distribution_information`(
	   `distribution_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配送信息ID',
`order_number` varchar(64) comment '订单编号',
`user_name` varchar(64) comment '用户姓名',
`purchase_user` int(11) DEFAULT 0 comment '购买用户',
`trade_name` varchar(64) comment '商品名称',
`logistics_company` varchar(64) comment '物流公司',
`shipment_status` varchar(64) comment '发货状态',
`sign_in_status` varchar(64) comment '签收状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (distribution_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '配送信息';
insert into `distribution_information` values (1,'订单编号1','用户姓名1',0,'商品名称1','物流公司1','发货状态1','签收状态1','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `distribution_information` values (2,'订单编号2','用户姓名2',0,'商品名称2','物流公司2','发货状态2','签收状态2','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `distribution_information` values (3,'订单编号3','用户姓名3',0,'商品名称3','物流公司3','发货状态3','签收状态3','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `distribution_information` values (4,'订单编号4','用户姓名4',0,'商品名称4','物流公司4','发货状态4','签收状态4','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `distribution_information` values (5,'订单编号5','用户姓名5',0,'商品名称5','物流公司5','发货状态5','签收状态5','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `distribution_information` values (6,'订单编号6','用户姓名6',0,'商品名称6','物流公司6','发货状态6','签收状态6','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `distribution_information` values (7,'订单编号7','用户姓名7',0,'商品名称7','物流公司7','发货状态7','签收状态7','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `distribution_information` values (8,'订单编号8','用户姓名8',0,'商品名称8','物流公司8','发货状态8','签收状态8','0','2022-03-22 23:52:24','2022-03-22 23:52:24');

DROP TABLE IF EXISTS `return_information`;
CREATE TABLE `return_information`(
	   `return_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '退货信息ID',
`order_number` varchar(64) comment '订单编号',
`purchase_user` int(11) DEFAULT 0 comment '购买用户',
`user_name` varchar(64) comment '用户姓名',
`trade_name` varchar(64) comment '商品名称',
`total` varchar(64) comment '总计',
`return_request_` varchar(64) comment '退货申请',
`collection_account_number` varchar(64) comment '收款账号',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (return_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '退货信息';
insert into `return_information` values (1,'订单编号1',0,'用户姓名1','商品名称1','总计1','退货申请1','收款账号1','未审核','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `return_information` values (2,'订单编号2',0,'用户姓名2','商品名称2','总计2','退货申请2','收款账号2','未审核','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `return_information` values (3,'订单编号3',0,'用户姓名3','商品名称3','总计3','退货申请3','收款账号3','未审核','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `return_information` values (4,'订单编号4',0,'用户姓名4','商品名称4','总计4','退货申请4','收款账号4','未审核','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `return_information` values (5,'订单编号5',0,'用户姓名5','商品名称5','总计5','退货申请5','收款账号5','未审核','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `return_information` values (6,'订单编号6',0,'用户姓名6','商品名称6','总计6','退货申请6','收款账号6','未审核','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `return_information` values (7,'订单编号7',0,'用户姓名7','商品名称7','总计7','退货申请7','收款账号7','未审核','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `return_information` values (8,'订单编号8',0,'用户姓名8','商品名称8','总计8','退货申请8','收款账号8','未审核','0','2022-03-22 23:52:24','2022-03-22 23:52:24');

DROP TABLE IF EXISTS `commodity_category`;
CREATE TABLE `commodity_category`(
	   `commodity_category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品类别ID',
`commodity_type` varchar(64) comment '商品类型',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (commodity_category_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '商品类别';
insert into `commodity_category` values (1,'商品类型1','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `commodity_category` values (2,'商品类型2','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `commodity_category` values (3,'商品类型3','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `commodity_category` values (4,'商品类型4','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `commodity_category` values (5,'商品类型5','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `commodity_category` values (6,'商品类型6','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `commodity_category` values (7,'商品类型7','0','2022-03-22 23:52:24','2022-03-22 23:52:24');
insert into `commodity_category` values (8,'商品类型8','0','2022-03-22 23:52:24','2022-03-22 23:52:24');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';

DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏：';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ");
insert into `user_group` values ('3','100','普通用户',null,'ordinary_users','ordinary_users_id','0','3',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1647919046142.jpg','307',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1647919046262.jpg','276',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1647919046317.jpg','400',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ");
insert into `slides` values ('4','轮播图4','内容4','/article/details?article=4','/api/upload/image_1647919046317.jpg','123',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ");
insert into `slides` values ('5','轮播图5','内容5','/article/details?article=5','/api/upload/image_1647919046262.jpg','770',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ");
insert into `slides` values ('6','轮播图6','内容6','/article/details?article=6','/api/upload/image_1647919046262.jpg','348',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ");
insert into `article` values ('1','家居好物推荐，总有一款适合你','商城','599','0',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ",null,null,null,'<p>大部分人的工作日生活都是两点一线，不是在回家的路上就是在去上班的途中。回到家之后，想要自己过得更加舒适，那就添加一点实用的好物让家变得更加温馨吧。</p><p><br></p><p><strong>搜#心想即热饮水机#</strong></p><p><img src="https://pics1.baidu.com/feed/d50735fae6cd7b890cde2e1a27044ba0d8330e9b.jpeg?token=50d89b4a48c5cd7aa3a22dcdb564942e" width="640"></p><p>这个大家应该都知道的吧，从字面意思都可以知道，想什么时候喝热水就有热水喝，而且也不会很费电，属于智能饮水机，不会像之前想喝热水的时候非要等到烧到100度在冷下来才行，可以调节到自己想要的合适水温。只是水箱不是很大，需要时刻加水，家里人口较多的话，还是不太建议了。</p><p><strong>搜#透明收纳鞋盒#</strong></p><p><img src="https://pics6.baidu.com/feed/96dda144ad345982ba70e7d12ad438aacaef84a5.jpeg?token=922279ce6662d2b4e0c94915b7088a93" width="310"></p><p>这个对记性不好的小仙女真的很友善了，鞋盒是透明的，你可以看到鞋子都是放在哪里，而且拿取也是很方面的，重点是还可以防尘，占据的空间也不是很大，性价比还是很高的。</p><p><strong>搜#衣柜分层隔板#</strong></p><p><img src="https://pics7.baidu.com/feed/ac4bd11373f082023809fade6ddbf2eaaa641b5a.jpeg?token=a8fc2b1dd45c6158fcefaeb7a626a7d6" width="400"></p><p>如果觉得自己衣柜不是很能装的，那一定是你没有把空间分配好，可以买几个衣柜分层隔板放在衣柜里面，这样不仅可以让衣服可以很好的叠放在衣柜里，而且还美观，并且你会发现，这样衣柜的空间真的大了许多，很能装！强烈推荐购买。</p><p><strong>搜#插线板收纳盒#</strong></p><p><img src="https://pics3.baidu.com/feed/cefc1e178a82b90156444ee955ada0703812ef22.jpeg?token=1b3a359a458c6b8a8d2174d9bfc1d260" width="500"></p><p>可以说是为了安全着想一定要选择它，真的是收纳神器呀，可以让杂乱的插排线收拾得干干净净的，而且还可以防止水或者小孩子触碰到插排，杂乱无章的线终于可以收拾进去啦。</p><p><strong>搜#落地式衣架#</strong></p><p><img src="https://pics5.baidu.com/feed/0823dd54564e9258d38cc1e3bba2d85fccbf4e2d.jpeg?token=93ad954367c23eb5b83c17d1021e2a16" width="500"></p><p><br></p>','/api/upload/image_1644290892597.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('2','家居好物推荐，总有一款适合你','商城','977','0',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ",null,null,null,'<p>大部分人的工作日生活都是两点一线，不是在回家的路上就是在去上班的途中。回到家之后，想要自己过得更加舒适，那就添加一点实用的好物让家变得更加温馨吧。</p><p><br></p><p><strong>搜#心想即热饮水机#</strong></p><p><img src="https://pics1.baidu.com/feed/d50735fae6cd7b890cde2e1a27044ba0d8330e9b.jpeg?token=50d89b4a48c5cd7aa3a22dcdb564942e" width="640"></p><p>这个大家应该都知道的吧，从字面意思都可以知道，想什么时候喝热水就有热水喝，而且也不会很费电，属于智能饮水机，不会像之前想喝热水的时候非要等到烧到100度在冷下来才行，可以调节到自己想要的合适水温。只是水箱不是很大，需要时刻加水，家里人口较多的话，还是不太建议了。</p><p><strong>搜#透明收纳鞋盒#</strong></p><p><img src="https://pics6.baidu.com/feed/96dda144ad345982ba70e7d12ad438aacaef84a5.jpeg?token=922279ce6662d2b4e0c94915b7088a93" width="310"></p><p>这个对记性不好的小仙女真的很友善了，鞋盒是透明的，你可以看到鞋子都是放在哪里，而且拿取也是很方面的，重点是还可以防尘，占据的空间也不是很大，性价比还是很高的。</p><p><strong>搜#衣柜分层隔板#</strong></p><p><img src="https://pics7.baidu.com/feed/ac4bd11373f082023809fade6ddbf2eaaa641b5a.jpeg?token=a8fc2b1dd45c6158fcefaeb7a626a7d6" width="400"></p><p>如果觉得自己衣柜不是很能装的，那一定是你没有把空间分配好，可以买几个衣柜分层隔板放在衣柜里面，这样不仅可以让衣服可以很好的叠放在衣柜里，而且还美观，并且你会发现，这样衣柜的空间真的大了许多，很能装！强烈推荐购买。</p><p><strong>搜#插线板收纳盒#</strong></p><p><img src="https://pics3.baidu.com/feed/cefc1e178a82b90156444ee955ada0703812ef22.jpeg?token=1b3a359a458c6b8a8d2174d9bfc1d260" width="500"></p><p>可以说是为了安全着想一定要选择它，真的是收纳神器呀，可以让杂乱的插排线收拾得干干净净的，而且还可以防止水或者小孩子触碰到插排，杂乱无章的线终于可以收拾进去啦。</p><p><strong>搜#落地式衣架#</strong></p><p><img src="https://pics5.baidu.com/feed/0823dd54564e9258d38cc1e3bba2d85fccbf4e2d.jpeg?token=93ad954367c23eb5b83c17d1021e2a16" width="500"></p><p><br></p>','/api/upload/image_1644290892597.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('3','生活的14种好物推荐','商城','470','0',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ",null,null,null,'<p class="ql-align-justify">科技改变生活这句话放在什么年代都是正确的，近几年经济的高速发展，更是涌现了很多好的产品，没啥好多说的，一切尽在原创中了！</p><h2 class="ql-align-justify"><strong>一、重度依赖：手机&nbsp;</strong></h2><p class="ql-align-justify">二宝出身后，LD作为随身保姆每天陪吃陪睡，早上送大宝上学的任务就由楼主承担了，日复一日生物钟早请习惯了每天在这个时间点准时醒来。醒来后的第一件事就是打开床头柜上面的手机，手机做为人类器官的延伸，扮演着越来越重要的角色，老婆交代的事情可能还会忘记，唯独手机想忘都忘不了。17年从荣耀V9、华为nova 2 Plus、华硕电神4到vivo X20 Plus，看到了国产手机的进步，产品做工、系统优化上面已经能够比肩国际大牌。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/ad3775c34a421f826f123f3dc8831c58.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/342353e0029f939adba155095ed458ad.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">vivo X20 Plus用了有快四个月了，屏幕够大，续航方面做的不错，重度使用的话一整天不会有问题，拍照及Hi-Fi音乐都是不错的卖点，可惜了在这一波手机的涨价潮中，价格也站上了3000+的高位，照这个趋势发展下去，楼主恐怕连国产手机都快用不起了。</p><p class="ql-align-justify">推荐指数：★★★★</p><p class="ql-align-justify">推荐理由：相机确实很给力，逆光效果出众，已经具有了相机70%-80%的功力吧。</p><h2 class="ql-align-justify"><strong>二、养成好习惯 ：电动牙刷</strong></h2><p class="ql-align-justify">刷牙洗脸，楼主的第一把电动牙刷是14年买的力博得，89块钱买的先不说不效果怎么样，最大的好处是让楼主养成了良好的刷牙习惯，早起再匆忙也会按时刷完二分钟。第二把还是力博得图中白色那把，用的也不错，特别是自带消毒桶的设计，很有新颖。右侧这把老婆自己买的oralshark声波电动牙刷K117-B，无意见看见李维嘉做的直播买的，用了几个月，使用体验还不错，等有好价的时候入个飞利浦9系的电动牙刷试下，不知道会不会有更好的体验。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/3f642da8d51994cdcee73370725c4413.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">推荐指数：★★★★</p><p class="ql-align-justify">推荐理由：用过电动牙刷以后再也回不去手动刷牙了，使用高效并且能够养成良好的刷牙习惯，飞利浦、欧乐-B等大牌时常有好价，发展了几年的国产声波牙刷也可适当考虑，几十到上千，丰俭由人。</p><h2 class="ql-align-justify"><strong>三、改善生存条件：美的厨宝</strong></h2><p class="ql-align-justify">是不是羡慕宾馆开了水龙头马上就有热水？那是因为宾馆的供水系统设计有热水循环，为了保证马上有热水，整套的循环系统始终在运行。家用的话考虑到经济性就没必要怎么复杂，直接定时循环或者要用的时候开关控制（一般就是开下水龙头），新房装修的话真的可以考虑装个，毕竟早上洗漱分秒必争，开个水龙头就有热水体验上面还是不错的。想要马上就要热水可以用，目前可以考虑二种方案，一种使用即热式水龙头，另外一种就是楼主这样子在洗手盆下面装个小厨宝，管路短热水也是立马就有，再也不用为每天早晚的洗漱用水烦恼。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/880c99131b6e3428caa30e23ba704c6f.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">推荐指数：★★★★</p><p class="ql-align-justify">推荐理由：你想要的热水，说有就有，方便，装了后夫妻二个再也没有为谁打热水红过脸了。&nbsp;</p><h2 class="ql-align-justify"><strong>四、冬日里的温暖：智能马桶</strong></h2><p class="ql-align-justify">寒冷的冬天与冰寒的马桶圈亲密接触，相信体验过的滋味都不太好，拉粑粑都拉的不顺畅，有了智能马桶后，被加热的马桶圈让人坐着都不想起来，两个字“舒服”。智能马桶集便圈加热、温水洗净、按摩等多项功能于一体，提供良好的洁身功效和舒适的清洗体验。功能设计多样，提供臀部清洁与女性清洁，清洗到位。智能马桶的除臭功能也是非常的实用，小夜灯的设计对晚上上卫生间非常的有帮助，人体感应开关的存在，拉完粑粑连冲水都自动完成了。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/f81ab25804edcb99b980aad99f23a152.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">推荐指数：★★★★★</p><p class="ql-align-justify">推荐理由：经历了日本的智能马桶盖抢购潮，国人对于智能马桶早就有了全新的认识。智能马桶集清洗、按摩、座圈加热等多项功能于一体，你值得拥有。</p><p class="ql-align-justify">使用小贴士：楼主家这个是储水式的，打开清洗开关后，会先出来一截冷水，使用前我会先放掉这一部分冷水。操作也不难，清洗开关先旋转一点点，喷头没有完全伸出以前把冷水放掉，维持几秒后面的就是温水了（品牌及操作不一样这个也不一定有用）。</p><h2 class="ql-align-justify"><strong>五、厨房好伴侣：美的电蒸箱</strong></h2><p class="ql-align-justify">开启早餐模式，电蒸箱绝对算的上是厨房的小神器之一，从买来这东西有什么用，浪费钱到再也离不开的大反转，没有超过一个月，早中晚做的蒸的东西实在是太方便不过了，相比较家用那种几层的小蒸笼，电蒸箱的优势太明显了，腔体大，二层隔板一次能放四个碟子，基本能够满足5口之家一餐所需。对楼主这种平时很少下厨的人来说，电蒸箱就更加的重要了，水箱加满水，选个合适的程式，开点小差，做的别的事情，也不用人为的去多关注，时间到了就等在上桌就行。相比较烤箱，楼主更推荐优先考虑电蒸箱，蒸菜比起其它的做法也更有营养，操作起来也更省事、快捷很多，符合现代人快节奏的生活方式。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/0b82210b1d721844836a8e4d310da34f.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p><br></p>','/api/upload/image_1644290965837.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('4','好物推荐｜花生、芝麻软糯香甜的网红大黄米汤圆，过节提前囤！','商城','895','0',"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ",null,null,null,'<p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_match/0/11273939699/0" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">汤圆，有团圆之意，象征一家人团团圆圆、和睦幸福。</p><p class="ql-align-justify">中国人在逢年过节时，一定要吃上几个汤圆，才算是团圆啊！</p><p class="ql-align-justify">往年，临近过节期间，超市里的汤圆几乎都被抢购一空，若是去的晚了或是手慢了，可能都抢不到。今年过节的汤圆，可一定要早早备好。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_match/0/14495957865/0" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">这次，一条生活馆早就给你选好了一款网红大黄米汤圆，来自品牌“阅农部落”。共有4种口味可选，分别是：</p><p class="ql-align-justify"><strong>花生馅</strong></p><p class="ql-align-justify"><strong>芝麻馅</strong></p><p class="ql-align-justify"><strong>八宝馅</strong></p><p class="ql-align-justify"><strong>红豆蜜薯馅</strong></p><p class="ql-align-justify">这几种汤圆都是我们选出来的人气款，得到了各位同事的一致好评，跟着买准不会错！</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14495957866/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">眼尖的朋友肯定已经发现了，“阅农部落”的大黄米汤圆，不同于我们平时常见的的白色汤圆，它的外皮呈黄色。</p><p class="ql-align-justify"><strong>胖乎乎、圆滚滚的样子，配上金灿灿的鸡蛋黄颜色，看着就十分讨喜，而且，个头也很大！</strong></p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14495957926/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">我们平时吃的汤圆主要以糯米粉为原料，而这款大黄米汤圆在糯米粉的基础上又加入了大黄米。</p><p class="ql-align-justify">大黄米又被称为“软黄米”，是小米的一种，但是比普通小米颗粒更大，米香也更浓郁。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14495957927/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">不仅如此，大黄米还是一种粘性很强的粗粮，它含有丰富的维生素、矿物质、多种氨基酸等，膳食纤维含量尤其丰富。</p><p class="ql-align-justify">大黄米面吃起来，有一种谷物特有的清甜感，用它做出来的汤圆，软软糯糯，很适合老人、孩子食用。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14495957928/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">煮好的大黄米汤圆，滑滑的、弹弹的，再配上独特的米黄色，看着就诱人无比。</p><p class="ql-align-justify">趁着热乎咬上一口，就像一口咬在棉花糖上一样，柔软黏糯，还有浓浓的黄米香气萦绕鼻腔。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_match/0/11273939708/0" alt="图片"></p><p><br></p>','/api/upload/image_1644290839314.jpg','2022年03月23日 12:51 新浪网');
insert into `article_type` values ('1','100','商城','0',null,null,null,"2022-03-22 15:52:24.000 ","2022-03-22 15:52:24.000 ");
