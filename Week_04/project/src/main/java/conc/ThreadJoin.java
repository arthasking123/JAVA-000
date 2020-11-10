package conc;

import Entities.EntityThread;

/**
 * 本周作业：（必做）思考有多少种方式，在main函数启动一个新线程或线程池，
 * 异步运行一个方法，拿到这个方法的返回值后，退出主线程？
 * 写出你的方法，越多越好，提交到github。
 *
 * 一个简单的代码参考：
 */
public class ThreadJoin {

    public static void main(String[] args) {

        long start=0;
        EntityThread entity = new EntityThread(5);
        Thread thread = new Thread(entity);
        try {
            System.out.println("开始异步计算");
            thread.start();
            thread.join();
            start=System.currentTimeMillis();
            int result = entity.getResult();
            System.out.println("异步计算结果为："+result);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        System.out.println("使用时间："+ (System.currentTimeMillis()-start) + " ms");
    }


}