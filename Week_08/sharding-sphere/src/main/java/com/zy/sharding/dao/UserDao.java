package com.zy.sharding.dao;

import com.zy.sharding.entity.User;
import org.springframework.stereotype.Repository;

/**
 * Created by zy on 2020/12/2.
 */
@Repository
public interface UserDao {
    User getUserById(Integer id);
    long setUserName(User user);
}