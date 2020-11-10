package conc;

import Entities.EntityCountDownLatch;

import java.util.concurrent.CountDownLatch;

/**
 * Created by zy on 2020/11/10.
 */
public class ThreadCountDownLatch {
    public static void main(String[] args) {
        CountDownLatch latch = new CountDownLatch(1);
        long start=0;
        EntityCountDownLatch entity = new EntityCountDownLatch(5,latch);
        Thread thread = new Thread(entity);
        try {
            System.out.println("开始异步计算");
            thread.start();
            latch.await();
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
