package io.kimmking.rpcfx.http;

/**
 * Created by zy on 2020/12/14.
 */
import java.net.URI;
import java.net.URISyntaxException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

import io.netty.bootstrap.Bootstrap;
import io.netty.buffer.Unpooled;
import io.netty.channel.*;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.handler.codec.http.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.print.URIException;

public class HttpClient {

    private static final Logger logger = LoggerFactory.getLogger(HttpClient.class);

    private HttpClientHandler clientHandler = new HttpClientHandler();

    private String url = "";

    private Channel clientChannel;

    EventLoopGroup workerGroup = new NioEventLoopGroup();

    private Channel channel;

    private String host;

    private Integer port;

    public HttpClient(String url) {
        try {
            Bootstrap b = new Bootstrap();
            b.group(workerGroup);
            b.channel(NioSocketChannel.class);
            b.option(ChannelOption.SO_KEEPALIVE, true);
            b.handler(new ChannelInitializer<SocketChannel>() {
                @Override
                public void initChannel(SocketChannel ch) throws Exception {
                    // 客户端接收到的是httpResponse响应，所以要使用HttpResponseDecoder进行解码
                    ch.pipeline().addLast(new HttpResponseDecoder());
                    // 客户端发送的是httprequest，所以要使用HttpRequestEncoder进行编码
                    ch.pipeline().addLast(new HttpRequestEncoder());
                    ch.pipeline().addLast(clientHandler);
                }
            });
            //发起同步连接操作

            URI uri = new URI(url);
            this.url = uri.getPath();
            this.host = uri.getHost();
            this.port = uri.getPort();

            ChannelFuture channelFuture = b.connect(host, port);
            //注册连接事件
            channelFuture.addListener((ChannelFutureListener)future -> {
                //如果连接成功
                if (future.isSuccess()) {
                    logger.info("客户端[" + channelFuture.channel().localAddress().toString() + "]已连接...");
                    clientChannel = channelFuture.channel();
                }
                //如果连接失败，尝试重新连接
                else{
                    logger.info("客户端[" + channelFuture.channel().localAddress().toString() + "]连接失败，重新连接中...");
                    future.channel().close();
                    b.connect(host, port);
                }
            });

            //注册关闭事件
            channelFuture.channel().closeFuture().addListener(cfl -> {
                close();
                logger.info("客户端[" + channelFuture.channel().localAddress().toString() + "]已断开...");
            });

        }
        catch(URISyntaxException e){
            e.printStackTrace();
        }
    }

    private void close() {
        //关闭客户端套接字
        if(clientChannel!=null){
            clientChannel.close();
        }
        //关闭客户端线程组
        if (workerGroup != null) {
            workerGroup.shutdownGracefully();
        }
    }

    public String send(String message) throws InterruptedException {
        DefaultFullHttpRequest request = new DefaultFullHttpRequest(
                HttpVersion.HTTP_1_1, HttpMethod.POST, url,
                Unpooled.wrappedBuffer(message.getBytes()));
        // 构建http请求
        request.headers().set(HttpHeaderNames.HOST, host);
        request.headers().set(HttpHeaderNames.CONNECTION, HttpHeaderNames.KEEP_ALIVE);
        request.headers().set(HttpHeaderNames.CONTENT_LENGTH, request.content().readableBytes());
        request.headers().set(HttpHeaderNames.CONTENT_TYPE, "application/json; charset=utf-8");
//        channel.writeAndFlush(request).sync();
        CountDownLatch latch = new CountDownLatch(1);
        ChannelPromise promise = clientHandler.sendMessage(request, latch);
        latch.await();
        return clientHandler.getResponse();
    }
}