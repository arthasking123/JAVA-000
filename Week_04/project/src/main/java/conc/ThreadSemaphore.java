package conc;

import Entities.EntityCountDownLatch;
import Entities.EntitySemaphore;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/**
 * Created by zy on 2020/11/10.
 */
public class ThreadSemaphore {
    public static void main(String[] args) {

        Semaphore sem = new Semaphore(1, true);
        long start=0;
        EntitySemaphore entity = new EntitySemaphore(5,sem);
        Thread thread = new Thread(entity);
        try {
            System.out.println("开始异步计算");
            start=System.currentTimeMillis();
            thread.start();
            sem.acquire();
            int result = entity.getResult();
            System.out.println("异步计算结果为："+result);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        System.out.println("使用时间："+ (System.currentTimeMillis()-start) + " ms");
    }
}
