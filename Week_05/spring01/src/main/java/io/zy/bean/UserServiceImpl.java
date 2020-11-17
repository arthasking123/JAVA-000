package io.zy.bean;

import com.google.common.annotations.Beta;
import io.zy.Dao.UserDao;
import io.zy.Service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by zy on 2020/11/17.
 */
@Service("userService")
public class UserServiceImpl implements UserService{
    @Resource(name = "userDao")
    private UserDao userDao;

    @Override
    public String hello(){
        return this.userDao.getString();
    }
}
