package org.dromara.hmily.demo.dubbo.account.dao;

import org.dromara.hmily.demo.dubbo.account.entity.User;
import org.springframework.stereotype.Repository;
/**
 * Created by zy on 2020/12/2.
 */
@Repository
public interface UserDao {
    User getUserById(Integer id);
    long setUserName(User user);
    long plusAge(Integer id);
}