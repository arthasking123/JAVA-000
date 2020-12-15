学习笔记

- 调试问题记录

- rpc01问题

- 问题1：SERVER返回400 BAD REQUEST

  解决方法：HTTP请求HEADER缺少HOST字段，在请求时添加HOST即可
  
- 问题2：HTTP返回头中没有content-length字段，导致无法按content-length创建reader对象
  
  解决方法：在DEBUG时发现SERVER所回应的HEADER中只包含3个字段："Transfer-Encoding" -> "chunked"、"Date" -> "Mon, 14 Dec 2020 08:56:49 GMT"、"Content-Type" -> "application/json;charset=UTF-8"，其中Transfer-Encoding为chunked,表示该HTTP的内容被分块传送。netty的clientRead需要兼容CHUNK传输方式，在channelRead中加入支持CHUNK类传输代码解决
  

 
- 工程说明

- rpc01  RPC作业

- rpc02  DUBBO + HMILY 实现交易DEMO