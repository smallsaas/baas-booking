DROP TABLE IF EXISTS t_store;

DROP TABLE IF EXISTS `t_appointment`;
CREATE TABLE `t_appointment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL COMMENT '预约码/预约成功后前天显示',
  `type` varchar(26) NOT NULL COMMENT ' 预约类型',
  `item_id` bigint(20) default NULL COMMENT '预约服务ID',
  `item_name` varchar(255) default NULL COMMENT '预约店铺名称',
  `item_address` varchar(255) default NULL COMMENT '预约服务地址',
  `item_description` text default NULL COMMENT '预约服务地址',
  `item_icon` varchar(255) default NULL COMMENT '预约服务图标',
  `member_id` bigint(20) default NULL COMMENT '预约客户ID',
  `status` varchar(20) NOT NULL COMMENT ' 状态',
  `fee` decimal(10,2) default NULL COMMENT '费用',
  `create_time` datetime NOT NULL COMMENT ' 创建时间',
  `appointment_time` datetime NOT NULL COMMENT ' 预约时间',
  `close_time` datetime DEFAULT NULL COMMENT ' 结束时间',
  `member_phone` varchar(255) DEFAULT NULL COMMENT '预约客户电话',
  `member_name` varchar(255) DEFAULT NULL COMMENT '预约客户名称',
  `receptionist_id` bigint(20) DEFAULT NULL COMMENT '接待员ID',
  `server_id` bigint(20) DEFAULT NULL COMMENT '处理员ID',
  `receptionist_name` varchar(26) DEFAULT NULL COMMENT '接待员',
  `server_name` varchar(26) DEFAULT NULL COMMENT '处理员',
  `field_c` varchar(255) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;