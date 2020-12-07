--在db0 db1分别建立如下16张表
CREATE TABLE `tb_order_0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_10` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_11` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_12` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_13` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_14` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';
CREATE TABLE `tb_order_15` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';