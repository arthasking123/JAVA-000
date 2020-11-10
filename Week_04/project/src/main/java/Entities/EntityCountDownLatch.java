package Entities;

import java.util.concurrent.CountDownLatch;

public class EntityCountDownLatch extends EntityBase implements Runnable{
    private CountDownLatch latch;
    public EntityCountDownLatch(Integer id, CountDownLatch latch){
        this.id = id;
        this.latch = latch;
    }
    @Override
    public void run(){
        this.result = fibo(id);
        this.latch.countDown();
    }

}