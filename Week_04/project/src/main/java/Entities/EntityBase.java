package Entities;

public class EntityBase {
    protected Integer id;
    protected int result;

    public int getResult(){
        return this.result;
    }

    protected static int fibo(int a) {
        if ( a < 2)
            return 1;
        return fibo(a-1) + fibo(a-2);
    }
}