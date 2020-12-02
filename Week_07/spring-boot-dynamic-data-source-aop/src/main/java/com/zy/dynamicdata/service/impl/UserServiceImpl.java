package com.zy.dynamicdata.service.impl;

import com.zy.dynamicdata.dao.UserDao;
import com.zy.dynamicdata.enums.DBTypeEnum;
import com.zy.dynamicdata.service.UserService;
import com.zy.dynamicdata.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by zy on 2020/12/1.
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