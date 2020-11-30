create table tb_user(
  `id` bigint unsigned not null auto_increment comment 'id',
  `name` varchar(45) not null default '' comment '用户名',
  `age`  tinyint unsigned not null default 0 comment '年龄',
  `create_at` datetime not null default current_timestamp comment '注册时间',
  `update_at` datetime not null default current_timestamp comment '更新时间',
  `version` bigint unsigned not null default 0 comment '当前用户信息版本',
  primary key (`id`)
)comment '用户表';

create table tb_user_snapshot(
  `id` bigint unsigned not null auto_increment comment 'id',
  `user_id` bigint unsigned not null comment '用户id',
  `name` varchar(45) not null default '' comment '用户名',
  `age`  tinyint unsigned not null default 0 comment '年龄',
  `version` bigint unsigned not null default 0 comment '用户信息版本',
  `snapshot_at` datetime not null default current_timestamp comment '快照生成时间',
  primary key (`id`),
  key `user_version` (`user_id`,`version`)
)comment '用户快照表';


create table tb_good(
  `id` bigint unsigned not null auto_increment comment 'id',
  `name` varchar(45) not null default '' comment '商品名称',
  `image_url` varchar(200) not null default '' comment '商品图片',
  `category_id`  bigint unsigned not null default 0 comment '品类ID',
  `merchant_id`  bigint unsigned not null default 0 comment '商户ID',
  `price`  int unsigned not null default 0 comment '价格（分）',  
  `create_at` datetime not null default current_timestamp comment '创建时间',
  `update_at` datetime not null default current_timestamp comment '更新时间',
  `version` bigint unsigned not null default 0 comment '当前商品信息版本',
  primary key (`id`)
)comment '商品表';

create table tb_good_snapshot(
  `id` bigint unsigned not null auto_increment comment 'id',
  `good_id` bigint unsigned not null comment '商品id',
  `name` varchar(45) not null default '' comment '商品名称',
  `image_url` varchar(200) not null default '' comment '商品图片',
  `category_id`  bigint unsigned not null default 0 comment '品类ID',
  `price`  int unsigned not null default 0 comment '价格（分）',    
  `version` bigint unsigned not null default 0 comment '商品信息版本',
  `snapshot_at` datetime not null default current_timestamp comment '快照生成时间',
  primary key (`id`),
  key `good_version` (`good_id`,`version`)
)comment '商品快照表';

/*考虑商品描述字段可能较长，另外再商品列表页往往不需要富文本详情数据，故垂直拆分该字段*/
create table tb_good_detail(
  `id` bigint unsigned not null auto_increment comment 'id',
  `good_id` bigint unsigned not null comment '商品id',
  `content` text not null  comment '商品详情/商品富文本描述',  
  primary key (`id`)
)comment '商品详情表';


create table tb_good_detail_snapshot(
  `id` bigint unsigned not null auto_increment comment 'id',
  `good_snapshot_id` bigint unsigned not null comment '商品快照表id',
  `content` varchar(45) not null default '' comment '商品详情/商品富文本描述',
  primary key (`id`),
  key `good_snapshot_id` (`good_snapshot_id`)
)comment '商品详情快照表';


/*注：订单表索引后期根据业务查询特征建立*/
create table tb_order(
  `id` bigint unsigned not null auto_increment comment 'id',
  `order_sn` char(32) not null comment '订单编号',
  `trade_no` char(64) default null comment '第三方支付订单号',
  `pay_type` tinyint(3) unsigned not null default 2 comment '支付类型 1支付宝 2微信',
  `user_id` bigint unsigned not null comment '用户id',
  `user_snapshot_id` bigint unsigned not null comment '用户快照id',
  `good_id` bigint unsigned not null comment '商品id',
  `good_snapshot_id` bigint unsigned not null comment '商品快照id',  
  `pay_fee`  int unsigned not null default 0 comment '实际应支付金额（分）',  
  `status` tinybigint unsigned not null default 0 comment '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime not null default current_timestamp comment '创建时间',
  `update_at` datetime not null default current_timestamp comment '更新时间',  
  primary key (`id`)
)comment '订单表';

