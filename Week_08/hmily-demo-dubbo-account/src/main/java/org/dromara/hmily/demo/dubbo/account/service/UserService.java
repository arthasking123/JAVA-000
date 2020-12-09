package org.dromara.hmily.demo.dubbo.account.service;

import org.dromara.hmily.annotation.Hmily;
import org.dromara.hmily.demo.dubbo.account.entity.User;

/**
 * Created by zy on 2020/12/2.
 */
public interface UserService {
    @Hmily
    User getUser(Integer id);
    @Hmily
    long setUserName(User user);
    @Hmily
    long plusAge(Integer id);
}
