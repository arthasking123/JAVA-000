package org.dromara.hmily.demo.dubbo.order.service;


import org.dromara.hmily.annotation.Hmily;
import org.dromara.hmily.demo.dubbo.order.entity.Order;
import org.dromara.hmily.spi.HmilySPI;

import java.util.List;
import java.util.Map;

/**
 * Created by zy on 2020/12/2.
 */
public interface OrderService {
    @Hmily
    long setUserAccountA();
    @Hmily
    long setUserAccountB();
}
