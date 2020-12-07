package com.zy.sharding.controller;

import com.zy.sharding.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.zy.sharding.entity.User;

/**
 * 用户信息控制器
 */
@RestController
public class UserInfoController {
	@Autowired
	private UserService userService;
	
	/**
	 * 获取用户信息
	 * @return User
	 */
	@RequestMapping(value = "/getUser/{id}", method = RequestMethod.GET)
	public User getUser(@PathVariable Integer id) {
		User user = userService.getUser(id);
		return user;
	}
	
	/**
	 * 更新用户姓名
	 * @param id id
	 * @param name name
	 * @return long
	 */
	@RequestMapping(value = "/setUserName/{id}/{name}", method = RequestMethod.GET)
	public long setUserName(@PathVariable Integer id, @PathVariable String name) {
		User user = new User();
		user.setId(id);
		user.setName(name);
		return userService.setUserName(user);
	}
}
