package conc;

import Entities.EntityCountDownLatch;
import Entities.EntityCyclicBarrier;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.CyclicBarrier;

/**
 * Created by zy on 2020/11/10.CyclicBarrier
 */
public class ThreadCyclicBarrier {
    public static void main(String[] args) {
        CyclicBarrier barrier = new CyclicBarrier(2, () -> System.out.println(""));
        CountDownLatch latch = new CountDownLatch(1);
        long start=0;
        EntityCyclicBarrier entity = new EntityCyclicBarrier(5,barrier);
        Thread thread = new Thread(entity);
        try {
            System.out.println("开始异步计算");
            thread.start();
            barrier.await();
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
