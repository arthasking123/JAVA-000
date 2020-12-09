package org.dromara.hmily.demo.dubbo.account.service;

import com.zy.sharding.entity.User;
import org.dromara.hmily.annotation.Hmily;

/**
 * Created by zy on 2020/12/2.
 */
public interface UserService {
    User getUser(Integer id);
    @Hmily
    long setUserName(User user);
    @Hmily
    long plusAge(Integer id);
}
