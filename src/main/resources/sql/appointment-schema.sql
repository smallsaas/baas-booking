DROP TABLE IF EXISTS `t_appointment`;
CREATE TABLE `t_appointment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL COMMENT '预约码/预约成功后前天显示',
  `type` varchar(100) NOT NULL COMMENT ' 预约类型',
  `item_id` bigint(20) default NULL COMMENT '预约服务ID',
  `user_id` bigint(20) default NULL COMMENT '预约服务ID',
  `item_name` varchar(100) default NULL COMMENT '预约店铺名称',
  `item_address` varchar(255) default NULL COMMENT '预约服务地址',
  `item_description` text default NULL COMMENT '预约服务地址',
  `item_icon` varchar(255) default NULL COMMENT '预约服务图标',
  `member_id` bigint(20) default NULL COMMENT '预约客户ID',
  `status` varchar(20) NOT NULL COMMENT ' 状态',
  `fee` decimal(10,2) default NULL COMMENT '费用',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT ' 创建时间',
  `appointment_time` datetime NOT NULL COMMENT ' 预约时间',
  `close_time` datetime DEFAULT NULL COMMENT ' 结束时间',
  `member_phone` varchar(26) DEFAULT NULL COMMENT '预约客户电话',
  `member_name` varchar(100) DEFAULT NULL COMMENT '预约客户名称',
  `receptionist_id` bigint(20) DEFAULT NULL COMMENT '接待员ID',
  `server_id` bigint(20) DEFAULT NULL COMMENT '处理员ID',
  `server_name` varchar(30) DEFAULT NULL COMMENT '处理员',
  `receptionist_name` varchar(26) DEFAULT NULL COMMENT '接待员',
  `payment_timestamp` datetime DEFAULT NULL COMMENT '支付时间',
  `payment_method` varchar(26) DEFAULT NULL COMMENT '支付方试',
  `earliest_time` datetime DEFAULT NULL COMMENT '预约最早时间',
  `latest_time` datetime DEFAULT NULL COMMENT '预约最迟时间',
  `field_c` varchar(100) DEFAULT NULL COMMENT '保留字段---已使用，接收--DOB',
  unique(`code`),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `t_appointment_type`;
CREATE TABLE `t_appointment_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL COMMENT ' 预约类型',
  `status` smallint NOT NULL default '1' COMMENT ' 状态',
  `fee` decimal(10,2) default NULL COMMENT '费用',
  unique(`type`),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `t_store_appointment_type`;
CREATE TABLE `t_store_appointment_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` bigint(20) NOT NULL COMMENT ' 店铺ID',
  `appointment_type_id` bigint(20) NOT NULL COMMENT '预约项目的ID',
  unique(`store_id`,`appointment_type_id`),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;