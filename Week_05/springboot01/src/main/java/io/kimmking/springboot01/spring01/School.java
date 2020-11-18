package io.kimmking.springboot01.spring01;


import io.kimmking.springboot01.aop.ISchool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;
@Configuration
public class School implements ISchool {
    
    // Resource 
    @Autowired //primary
    Klass class1;

    @Override
    public String ding(){
        return this.class1.getDefaultPrint();
    }
    
}
