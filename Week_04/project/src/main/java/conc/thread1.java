package conc;

import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import Entity.Entity;
/**
 * 本周作业：（必做）思考有多少种方式，在main函数启动一个新线程或线程池，
 * 异步运行一个方法，拿到这个方法的返回值后，退出主线程？
 * 写出你的方法，越多越好，提交到github。
 *
 * 一个简单的代码参考：
 */
public class thread1 {

    public static void main(String[] args) {

        long start=0;

        ExecutorService exec = Executors.newCachedThreadPool();//工头
        Future<String> results = exec.submit(new Entity(10335));//submit返回一个Future，代表了即将要返回的结果
        try {
            System.out.println("开始异步计算");
            start=System.currentTimeMillis();
            int result = Integer.parseInt(results.get()); //这是得到的返回值
            System.out.println("异步计算结果为："+result);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        System.out.println("使用时间："+ (System.currentTimeMillis()-start) + " ms");
    }


}