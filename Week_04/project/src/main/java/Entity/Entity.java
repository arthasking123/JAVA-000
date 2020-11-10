package Entity;

import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

public class Entity implements Callable<String> {
    private Integer id;
    public Entity(Integer id){
        this.id = id;
    }
    @Override
    public String call() throws Exception {
        return ""+ (fibo(this.id) );
    }

    private static int fibo(int a) {
        if ( a < 2)
            return 1;
        return fibo(a-1) + fibo(a-2);
    }
}