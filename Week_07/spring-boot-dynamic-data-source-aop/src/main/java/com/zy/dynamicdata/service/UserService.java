package com.zy.dynamicdata.service;

import com.zy.dynamicdata.entity.User;

/**
 * Created by zy on 2020/12/1.
 */

public interface UserService {
    User getUser(Integer id);
    long setUserName(User user);
}