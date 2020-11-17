package io.zy.component;

import io.zy.Dao.UserDao;
import org.springframework.stereotype.Component;

/**
 * Created by zy on 2020/11/17.
 */
@Component("userDao2")
public class UserDaoImpl implements UserDao {
    @Override
    public String getString(){
        return "Hello From Component UserDaoImpl";
    }
}
