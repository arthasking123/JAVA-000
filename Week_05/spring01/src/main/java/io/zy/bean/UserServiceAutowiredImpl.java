package io.zy.bean;

import io.zy.Dao.UserDao;
import io.zy.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by zy on 2020/11/17.
 */
@Service("userServiceAutoWired")
public class UserServiceAutowiredImpl implements UserService{
    @Autowired
    private UserDao userDao;

    @Override
    public String hello(){
        return this.userDao.getString() + " From autowired";
    }
}
