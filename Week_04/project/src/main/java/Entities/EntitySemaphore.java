package Entities;

import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CyclicBarrier;
import java.util.concurrent.Semaphore;

public class EntitySemaphore extends EntityBase implements Runnable{
    private Semaphore sem;
    public EntitySemaphore(Integer id, Semaphore sem){
        this.id = id;
        this.sem = sem;
    }
    @Override
    public void run(){

        try {
            sem.acquire();
            this.result = fibo(id);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        finally {
            sem.release();
        }
    }

}