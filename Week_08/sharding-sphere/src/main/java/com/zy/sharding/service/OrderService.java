package com.zy.sharding.service;

import com.zy.sharding.entity.Order;
import com.zy.sharding.entity.User;

import java.util.List;
import java.util.Map;

/**
 * Created by zy on 2020/12/2.
 */
public interface OrderService {
    List<Order> getOrdersByUserId(Map<String, Object> map);
    long insertOrder(Map<String, Object> map);
    long deleteOrder(Map<String, Object> map);
    long setOrderStatus(Integer userId, long orderSN, Integer status);
}
