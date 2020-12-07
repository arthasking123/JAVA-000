--��db0 db1�ֱ�������16�ű�
CREATE TABLE `tb_order_0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_10` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_11` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_12` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_13` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_14` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';
CREATE TABLE `tb_order_15` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '�������',
  `trade_no` char(64) DEFAULT NULL COMMENT '������֧��������',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '֧������ 1֧���� 2΢��',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '�û�id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '�û�����id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒid',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '��Ʒ����id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʵ��Ӧ֧�����֣�',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����״̬ 0--������ 1--������ 2--���ջ� 3--����� 4--��ȡ��',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������';