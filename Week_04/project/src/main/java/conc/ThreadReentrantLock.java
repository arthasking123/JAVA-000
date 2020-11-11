package conc;

import Entities.EntityLockSupport;
import Entities.EntityReentrantLock;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.LockSupport;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Created by zy on 2020/11/10.
 */
public class ThreadReentrantLock {
    public static void main(String[] args) {
        Lock lock = new ReentrantLock();
        long start=0;
        EntityReentrantLock entity = new EntityReentrantLock(5,lock);
        Thread thread = new Thread(entity);
        try {
            System.out.println("开始异步计算");
            start=System.currentTimeMillis();
            thread.start();
            TimeUnit.MILLISECONDS.sleep(1);
            lock.lock();
            int result = entity.getResult();
            System.out.println("异步计算结果为："+result);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally {
            lock.unlock();
        }
        System.out.println("使用时间："+ (System.currentTimeMillis()-start) + " ms");
    }
}
