package io.zy.component;

import io.zy.Dao.UserDao;
import io.zy.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by zy on 2020/11/17.
 */
@Component("userService2")
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDao userDao;

    @Override
    public String hello(){
        return this.userDao.getString() + " of userService2" ;
    }
}
