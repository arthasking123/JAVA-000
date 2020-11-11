package Entities;

public class EntityThread extends EntityBase implements Runnable {
    private Integer id;
    public EntityThread(Integer id){
        this.id = id;
    }
    @Override
    public void run(){
        this.result = fibo(id);
    }
}