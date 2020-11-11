package Entities;

import java.util.concurrent.locks.LockSupport;

public class EntityObjectLock extends EntityBase implements Runnable{
    private final Object lock;
    public EntityObjectLock(Integer id, Object lock){
        this.id = id;
        this.lock = lock;
    }
    @Override
    public void run(){
        synchronized(this.lock){
            this.result = fibo(id);
            this.lock.notify();
        }
    }

}