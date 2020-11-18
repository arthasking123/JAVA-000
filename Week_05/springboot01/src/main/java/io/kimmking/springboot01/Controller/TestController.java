package io.kimmking.springboot01.Controller;

import io.kimmking.springboot01.spring01.School;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by zy on 2020/11/18.
 */
@RestController
@RequestMapping("/index")
public class TestController {
    @Autowired
    private School school;
    @RequestMapping("/test")
    public String test(){
        return school.ding();
    }
}
