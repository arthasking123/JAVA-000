package Entities;

import java.util.concurrent.Semaphore;
import java.util.concurrent.locks.LockSupport;

public class EntityLockSupport extends EntityBase implements Runnable{
    private Thread mainThread;
    public EntityLockSupport(Integer id,Thread t){
        this.id = id;
        this.mainThread = t;
    }
    @Override
    public void run(){
            this.result = fibo(id);
            LockSupport.unpark(mainThread);
    }

}