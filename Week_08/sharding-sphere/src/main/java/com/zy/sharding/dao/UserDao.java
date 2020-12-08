package com.zy.sharding.dao;

import com.zy.sharding.entity.User;
import org.springframework.stereotype.Repository;
import com.alibaba.dubbo.rpc.RpcContext;
/**
 * Created by zy on 2020/12/2.
 */
@Repository
public interface UserDao {
    User getUserById(Integer id);
    long setUserName(User user);
    long plusAge(Integer id);
}