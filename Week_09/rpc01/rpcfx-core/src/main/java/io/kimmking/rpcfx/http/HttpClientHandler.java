package io.kimmking.rpcfx.http;

/**
 * Created by zy on 2020/12/14.
 */
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.http.HttpContent;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpResponse;
import io.netty.handler.codec.http.HttpUtil;
import io.netty.util.CharsetUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.awt.*;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class HttpClientHandler extends ChannelInboundHandlerAdapter {

    private ChannelHandlerContext ctx;

    private ByteBufToBytes reader;

    private String response;

    private static final Logger logger = LoggerFactory.getLogger(HttpClientHandler.class);

    private boolean bTrunked = false;

    private ChannelPromise promise;

    private CountDownLatch latch;
    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg)
            throws Exception {
        if (msg instanceof HttpResponse) {
            response = "";
            HttpResponse response = (HttpResponse) msg;
            System.out.println("CONTENT_TYPE:" + response.headers().get(HttpHeaderNames.CONTENT_TYPE));
            if (HttpUtil.isContentLengthSet(response)) {
                reader = new ByteBufToBytes(
                        (int) HttpUtil.getContentLength(response));
                bTrunked = false;
            }
            else{
                bTrunked = true;
            }
        }
        if (msg instanceof HttpContent) {
            HttpContent httpContent = (HttpContent) msg;
            ByteBuf content = httpContent.content();
            if(!bTrunked) {
                reader.reading(content);
                content.release();
                if (reader.isEnd()) {
                    String resultStr = new String(reader.readFull());
                    System.out.println("Server said:" + resultStr);
                    response = resultStr;
                    promise.setSuccess();
                    latch.countDown();
                }
            }
            else{
               if(httpContent.toString().equals("EmptyLastHttpContent")){
                   promise.setSuccess();
                   latch.countDown();
               }
               else {
                   response += content.toString(CharsetUtil.UTF_8);
               }
            }
        }
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        super.channelActive(ctx);
        this.ctx = ctx;
    }

    public synchronized ChannelPromise sendMessage(Object message, CountDownLatch latch) {
        while (ctx == null) {
            try {
                TimeUnit.MILLISECONDS.sleep(1);
                //logger.error("等待ChannelHandlerContext实例化");
            } catch (InterruptedException e) {
                logger.error("等待ChannelHandlerContext实例化过程中出错",e);
            }
        }
        this.latch = latch;
        promise = ctx.newPromise();
        ctx.writeAndFlush(message);
        return promise;
    }


    public String getResponse(){
        return response;
    }

}