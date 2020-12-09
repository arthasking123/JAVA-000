package org.dromara.hmily.demo.dubbo.account.service.impl;

import com.google.errorprone.annotations.OverridingMethodsMustInvokeSuper;

import org.dromara.hmily.annotation.HmilyTCC;
import org.dromara.hmily.demo.dubbo.account.dao.UserDao;
import org.dromara.hmily.demo.dubbo.account.entity.User;
import org.dromara.hmily.demo.dubbo.account.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by zy on 2020/12/2.
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);

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

    @Override
    @HmilyTCC(confirmMethod = "confirm", cancelMethod = "cancel")
    public long plusAge(Integer id){
        return userDao.plusAge(id);
    }

    public void confirm(Integer id) {
        LOGGER.info("=========user事务confirm操作完成================");
    }

    public void cancel(Integer id) {
        LOGGER.info("=========user事务cancel操作完成================");
    }

}
