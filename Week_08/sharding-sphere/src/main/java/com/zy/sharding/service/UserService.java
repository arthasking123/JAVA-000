package com.zy.sharding.service;

import com.zy.sharding.entity.User;

/**
 * Created by zy on 2020/12/2.
 */
public interface UserService {
    User getUser(Integer id);
    long setUserName(User user);
}
