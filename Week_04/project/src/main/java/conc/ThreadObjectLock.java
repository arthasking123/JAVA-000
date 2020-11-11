package conc;

import Entities.EntityLockSupport;
import Entities.EntityObjectLock;

import java.util.concurrent.locks.LockSupport;

/**
 * Created by zy on 2020/11/10.
 */
public class ThreadObjectLock {
    public static void main(String[] args) {

        long start=0;
        final Object lock = new Object();
        EntityObjectLock entity = new EntityObjectLock(5,lock);
        Thread thread = new Thread(entity);
        try {
            System.out.println("开始异步计算");
            start=System.currentTimeMillis();
            thread.start();
            synchronized(lock){
                lock.wait();
            }
            int result = entity.getResult();
            System.out.println("异步计算结果为："+result);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        System.out.println("使用时间："+ (System.currentTimeMillis()-start) + " ms");
    }
}
