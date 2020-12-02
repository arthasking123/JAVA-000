package com.zy.sharding.service.impl;

import com.zy.sharding.dao.UserDao;
import com.zy.sharding.entity.User;
import com.zy.sharding.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by zy on 2020/12/2.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User getUser(Integer id) {
        return userDao.getUserById(id);
    }

    @Transactional
    @Override
    public long setUserName(User user){
        return userDao.setUserName(user);
    }
}
