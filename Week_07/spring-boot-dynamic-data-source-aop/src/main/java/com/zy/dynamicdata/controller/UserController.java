package com.zy.dynamicdata.controller;


import com.zy.dynamicdata.entity.User;
import com.zy.dynamicdata.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 系统用户 前端控制器
 * </p>
 *
 * @author arthasking123
 * @since 2019-06-04
 */
@RestController
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/getUser/{id}", method = RequestMethod.GET)
    public User getUser(@PathVariable Integer id) {
        User user = userService.getUser(id);
        return user;
    }

    @RequestMapping(value = "/setUserName/{id}/{name}", method = RequestMethod.GET)
    public long setUserName(@PathVariable Integer id, @PathVariable String name) {
        User user = new User(id, name);
        return userService.setUserName(user);
    }
}
