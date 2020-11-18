package io.kimmking.springboot01.spring01;


import io.kimmking.springboot01.student.Student;
import org.springframework.context.annotation.Configuration;

import java.util.List;

@Configuration
public class Klass { 
    
    List<Student> students;
    
    public void dong(){
        System.out.println(this.getStudents());
    }
    public String getDefaultPrint() {return "hello from Klass";}
    public List<Student> getStudents(){
        return students;
    }
}
