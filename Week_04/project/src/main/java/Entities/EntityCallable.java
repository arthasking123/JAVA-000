package Entities;

import java.util.concurrent.Callable;

public class EntityCallable extends EntityBase implements Callable<String> {
    public EntityCallable(Integer id){
        this.id = id;
    }
    @Override
    public String call() throws Exception {
        return ""+ (fibo(this.id) );
    }
}