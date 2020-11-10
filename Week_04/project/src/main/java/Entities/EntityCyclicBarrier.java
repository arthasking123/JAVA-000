package Entities;

import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.CyclicBarrier;

public class EntityCyclicBarrier extends EntityBase implements Runnable{
    private CyclicBarrier barrier;
    public EntityCyclicBarrier(Integer id, CyclicBarrier barrier){
        this.id = id;
        this.barrier = barrier;
    }
    @Override
    public void run(){
        this.result = fibo(id);
        try {
            barrier.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (BrokenBarrierException e) {
            e.printStackTrace();
        }
    }

}