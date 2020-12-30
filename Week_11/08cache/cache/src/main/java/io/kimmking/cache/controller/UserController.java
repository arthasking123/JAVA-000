package io.kimmking.cache.controller;

import io.kimmking.cache.entity.User;
import io.kimmking.cache.service.GoodService;
import io.kimmking.cache.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@EnableAutoConfiguration
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    GoodService goodService;

    @RequestMapping("/user/find")
    User find(Integer id) {
        return userService.find(id);
        //return new User(1,"KK", 28);
    }

    @RequestMapping("/user/list")
    List<User> list() {
        return userService.list();
//        return Arrays.asList(new User(1,"KK", 28),
//                             new User(2,"CC", 18));
    }

    @RequestMapping("/user/update")
    User update(Integer id, String name){
        return userService.update(id, name);
    }

    @RequestMapping("/user/delete")
    Integer delete(Integer id){
        return userService.delete(id);
    }

    //秒杀接口
    @RequestMapping("/good/miaosha")
    Integer miaosha(Integer goodId){
       return goodService.minus(goodId);
    }

}