package com.zy.dynamicdata.dao;

import com.zy.dynamicdata.entity.User;
import org.springframework.stereotype.Repository;

/**
 * Created by zy on 2020/12/1.
 */
@Repository
public interface UserDao {
    User getUserById(Integer id);
}