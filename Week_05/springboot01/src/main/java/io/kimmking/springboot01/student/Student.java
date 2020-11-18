package io.kimmking.springboot01.student;


import org.springframework.context.annotation.Configuration;

import java.io.Serializable;


public class Student implements Serializable {
    
    private int id;
    private String name;
    public Student(int id,String name){
        this.id = id;
        this.name = name;
    }
    public void init(){
        System.out.println("hello...........");
    }
    
    public Student create(){
        return new Student(101,"KK101");
    }
}
