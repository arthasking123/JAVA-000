学习笔记

- 问题记录

- 问题1：本工程基于user_id % 2分库，order_sn % 16分表，在写操作时误将String类型的order_sn作为参数进行输入，会出现No signature of method: java.lang.String.mod() is applicable for argument types: (java.lang.Integer) values: [16]的错误

- 问题2：如果HMILY 的REPO不使用MONGODB，在SpringBootApplication注解上需要排除MongoAutoConfiguration.class, MongoDataAutoConfiguration.class，否则会出现MongoDb连接异常的提示。

工程说明：

- sharding-sphere  

  基于SS实现分库分表下的CRUD操作

- hmily-demo-tcc  hmily-demo-dubbo-order  hmily-demo-dubbo-account
  
  基于HMILY TCC进行了分布式事务测试，其中tcc为consumer, order与account为provider
  
- distributeTransaction
  
  简易TCC框架

  特性：
  
  1.TRY阶段超时、抛异常、返回值为false均可触发CANCEL
  
  2.可并行执行分布式事务（待完成）
  