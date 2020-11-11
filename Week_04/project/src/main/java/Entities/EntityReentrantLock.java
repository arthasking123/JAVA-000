package Entities;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

public class EntityReentrantLock extends EntityBase implements Runnable{
    private final Lock lock;
    public EntityReentrantLock(Integer id, Lock lock){
        this.id = id;
        this.lock = lock;
    }
    @Override
    public void run(){
        synchronized(this.lock){
            this.lock.lock();
            this.result = fibo(id);
            this.lock.unlock();
        }
    }

}