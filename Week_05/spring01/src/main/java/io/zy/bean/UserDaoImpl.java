package io.zy.bean;

import io.zy.Dao.UserDao;
import org.springframework.stereotype.Repository;

/**
 * Created by zy on 2020/11/17.
 */
@Repository("userDao")
public class UserDaoImpl implements UserDao {
    @Override
    public String getString(){
        return "Hello From UserDaoImpl";
    }
}
