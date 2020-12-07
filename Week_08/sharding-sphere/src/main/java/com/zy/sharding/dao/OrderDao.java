package com.zy.sharding.dao;

import com.zy.sharding.entity.Order;
import com.zy.sharding.entity.User;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by zy on 2020/12/2.
 */
@Repository
public interface OrderDao {
    List<Order> getOrdersByUserId(Map<String, Object> map);
    long insertOrder(Map<String, Object> map);
    long deleteOrder(Map<String, Object> map);
    long setOrderStatus(Order order);
}