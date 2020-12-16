学习笔记

- 调试问题记录

- rpc01问题

- 问题1：客户端向SERVER发送请求时返回400 BAD REQUEST

  解决方法：HTTP请求HEADER缺少HOST字段，在请求时添加HOST即可
  
- 问题2：HTTP返回头中没有content-length字段，导致无法按content-length创建reader对象
  
  解决方法：在DEBUG时发现SERVER所回应的HEADER中只包含3个字段："Transfer-Encoding" -> "chunked"、"Date" -> "Mon, 14 Dec 2020 08:56:49 GMT"、"Content-Type" -> "application/json;charset=UTF-8"，其中Transfer-Encoding为chunked,表示该HTTP的内容被分块传送。netty的clientRead需要兼容CHUNK传输方式，在channelRead中加入支持CHUNK类传输代码解决
  
- 问题3：JMETER压测工程启动时提示Exception in thread "main" java.lang.VerifyError: class net.sf.cglib.core.DebuggingClassWriter overrides final method visit.(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

  解决方法：去除iml文件中多余的asm:asm 依赖，只保留3.3.1的依赖

  
- 工程说明

- rpc01  RPC作业

  完成：
  
  1.服务端集成hp-reflect(https://gitee.com/kkk001/hp-reflect)实现字节码代替服务端反射
  2.客户端动态代理改用MethodInterceptor实现AOP
  3.客户端改用NETTY+HTTP作为传输方式

- rpc02  DUBBO + HMILY 实现交易DEMO