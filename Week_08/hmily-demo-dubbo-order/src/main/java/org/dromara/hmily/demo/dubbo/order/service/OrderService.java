package org.dromara.hmily.demo.dubbo.order.service;


import org.dromara.hmily.annotation.Hmily;
import org.dromara.hmily.demo.dubbo.order.entity.Order;

import java.util.List;
import java.util.Map;

/**
 * Created by zy on 2020/12/2.
 */
public interface OrderService {
    List<Order> getOrdersByUserId(Map<String, Object> map);
    @Hmily
    long insertOrder(Map<String, Object> map);
    @Hmily
    long deleteOrder(Map<String, Object> map);
    @Hmily
    long setOrderStatus(Integer userId, long orderSN, Integer status);
}
