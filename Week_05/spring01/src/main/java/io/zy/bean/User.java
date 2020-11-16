package io.zy.bean;

import java.util.List;

/**
 * Created by zy on 2020/11/16.
 */
public class User {
    private int id;
    private String name;
    private String mobile;
    private List<String> addressList;
    /**
     *  2.使用设值注入
     *  2.1 提供默认空参构造方法
     *  2.2为所有属性提供setter方法
     */

    public User(){
        super();
    }
    public User(int id,String name,String mobile,List<String> addressList){
        super();
        this.id = id;
        this.name = name;
        this.mobile = mobile;
        this.addressList = addressList;
    }

    @Override
    public String toString(){
        return "id:"+ String.format("%d",this.id) + " name:" + this.name + " mobile:" + this.mobile + " addressList:" + this.addressList ;
    }

}
