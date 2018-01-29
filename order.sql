CREATE TABLE `vs_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `user_id` varchar(50) NOT NULL COMMENT '用户ID',
  `order_no` varchar(30) NOT NULL COMMENT '订单号',
  `pay_mode` int(4) DEFAULT NULL COMMENT '支付方式: 1.支付宝, 2.微信',
  `point` decimal(20,0) NOT NULL COMMENT '使用积分数量',
  `freight` decimal(20,0) NOT NULL COMMENT '运费',
  `amount_total` decimal(20,0) NOT NULL COMMENT '总金额',
  `amount_discounts` decimal(20,0) NOT NULL COMMENT '优惠金额',
  `amount_final` decimal(20,0) NOT NULL COMMENT '支付金额',
  `state` int(4) NOT NULL COMMENT '状态:[1.创建订单[待付款]，2.待发货[已付款], 3.待收货[已发货], 4.待评价[已收回], 5.已评价[待追评], 6.已追价[已完成], 7.取消订单]',
  `tax` decimal(20,0) DEFAULT NULL COMMENT '税费',
  `source` int(2) NOT NULL COMMENT '订单来源：1.支付宝, 2.微信',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单生成时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '订单修改时间',
  `status` TINYINT(3) DEFAULT NULL COMMENT '状态:1启用|0禁用',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8 COMMENT='订单表';