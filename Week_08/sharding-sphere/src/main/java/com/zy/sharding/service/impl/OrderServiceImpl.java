package com.zy.sharding.service.impl;

import com.zy.sharding.dao.OrderDao;
import com.zy.sharding.dao.UserDao;
import com.zy.sharding.entity.Order;
import com.zy.sharding.entity.User;
import com.zy.sharding.service.OrderService;
import com.zy.sharding.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zy on 2020/12/2.
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;

    @Override
    public List<Order> getOrdersByUserId(Map<String, Object> map) {
        return orderDao.getOrdersByUserId(map);
    }

    @Transactional
    @Override
    public long insertOrder(Map<String, Object> map){
        return orderDao.insertOrder(map);
    }

    @Transactional
    @Override
    public long deleteOrder(Map<String, Object> map){
        return orderDao.deleteOrder(map);
    }

    @Transactional
    @Override
    public long setOrderStatus(Integer id, Integer status){
        Order order = new Order();
        order.setId(id);
        order.setStatus(status);
        return orderDao.setOrderStatus(order);
    }
}
