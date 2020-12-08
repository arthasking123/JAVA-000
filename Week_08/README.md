学习笔记

- 问题记录

- 问题1：本工程基于user_id % 2分库，order_sn % 16分表，在写操作时误将String类型的order_sn作为参数进行输入，会出现No signature of method: java.lang.String.mod() is applicable for argument types: (java.lang.Integer) values: [16]的错误

- 问题2：如果HMILY 的REPO不使用MONGODB，在SpringBootApplication注解上需要排除MongoAutoConfiguration.class, MongoDataAutoConfiguration.class，否则会出现MongoDb连接异常的提示。

工程说明：

- sharding-sphere  

  本工程完成了以下两项任务：
  
  1.基于SS实现分库分表下的CRUD操作
  
  2.基于HMILY TCC进行了分布式事务测试（仅进行了本地TCC事务测试，未通过DUBBO进行RPC调用）