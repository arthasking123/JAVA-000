package io.github.kimmking.gateway.outbound.okhttp;

import io.github.kimmking.gateway.filter.HttpRequestFilter;
import io.github.kimmking.gateway.router.HttpEndpointRouter;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.DefaultFullHttpResponse;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.HttpUtil;
import okhttp3.*;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import static io.netty.handler.codec.http.HttpResponseStatus.NO_CONTENT;
import static io.netty.handler.codec.http.HttpVersion.HTTP_1_1;

public class OkhttpOutboundHandler implements HttpEndpointRouter,HttpRequestFilter {

    @Override
    public  void filter(FullHttpRequest fullRequest, ChannelHandlerContext ctx){

    }

    @Override
    public String route(List<String> endpoints){
        return "";
    }

    String getServerUrlBaseOnLVS(){
       return "http://localhost:8088";
    }

    public void handle(final FullHttpRequest fullRequest, final ChannelHandlerContext ctx) {
        Map<String,String> map = new HashMap<String,String>();
        map.put("nio","zhangyang");
        Response res = null;
        try {
            res = connect(getServerUrlBaseOnLVS(), SetHeaders(map));
        }
        catch(Exception e){
            e.printStackTrace();
            exceptionCaught(ctx, e);
        }
        finally {
            if (fullRequest != null) {
                if (res == null) {
                    res.newBuilder().body(null).build();
                }

                if (!HttpUtil.isKeepAlive(fullRequest)) {
                    ctx.write(res).addListener(ChannelFutureListener.CLOSE);
                } else {
                    //response.headers().set(CONNECTION, KEEP_ALIVE);
                    ctx.write(res);
                }

            }
            ctx.flush();
            //ctx.close();
        }
    }

    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) {
        cause.printStackTrace();
        ctx.close();
    }


    public static Headers SetHeaders(Map<String, String> headersParams) {
        Headers headers = null;
        okhttp3.Headers.Builder headersbuilder = new okhttp3.Headers.Builder();
        if (headersParams.size() != 0) {
            Iterator<String> iterator = headersParams.keySet().iterator();
            String key = "";
            while (iterator.hasNext()) {
                key = iterator.next();
                headersbuilder.add(key, headersParams.get(key));
            }
        }
        headers = headersbuilder.build();
        return headers;
    }


    public static Response connect(String url, Headers header){

        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder().url(url).headers(header).build();
        Response response  = null;
        try {
            response = client.newCall(request).execute();
            System.out.println(response.body());
            return response;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return response;
    }
}
