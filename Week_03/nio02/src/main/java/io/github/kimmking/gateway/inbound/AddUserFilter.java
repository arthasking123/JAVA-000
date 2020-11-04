package io.github.kimmking.gateway.inbound;

import io.github.kimmking.gateway.filter.HttpRequestFilter;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.util.ReferenceCountUtil;


public class AddUserFilter extends ChannelInboundHandlerAdapter implements HttpRequestFilter {

    @Override
    public void filter(FullHttpRequest fullRequest, ChannelHandlerContext ctx){
         fullRequest.headers().add("nio","zhangyang");
         System.out.println("add header!");
    }


    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) {
        try {
            filter((FullHttpRequest) msg,ctx);

        } catch(Exception e) {
            e.printStackTrace();
        } finally {
           ctx.fireChannelRead(msg);
        }
    }
}
