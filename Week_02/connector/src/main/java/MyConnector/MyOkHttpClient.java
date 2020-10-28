package MyConnector;

import okhttp3.*;


import java.io.IOException;
import java.util.Map;
import java.util.Objects;

public class MyOkHttpClient {
   public static void main(String[] args){
       String url = "http://127.0.0.1:8801";
       connect(url);
   }

   public static void connect(String url){

       OkHttpClient client = new OkHttpClient();
       Request request = new Request.Builder().url(url).build();
       try {
           Response response = client.newCall(request).execute();
           System.out.println(response.body().toString());
       } catch (Exception e) {
           e.printStackTrace();
       }

   }
}
