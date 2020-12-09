package org.dromara.hmily.demo.dubbo.order.service.impl;

import org.dromara.hmily.annotation.HmilyTCC;
import org.dromara.hmily.demo.dubbo.order.dao.OrderDao;
import org.dromara.hmily.demo.dubbo.order.entity.Order;
import org.dromara.hmily.demo.dubbo.order.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zy on 2020/12/2.
 */
@Service("orderService")
public class OrderServiceImpl implements OrderService {

    private static final Logger LOGGER = LoggerFactory.getLogger(OrderServiceImpl.class);

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
    @HmilyTCC(confirmMethod = "confirm", cancelMethod = "cancel")
    public long setOrderStatus(Integer userId, long orderSN, Integer status){
        Order order = new Order();
        order.setUserId(userId);
        order.setOrderSN(orderSN);
        order.setStatus(status);
        return orderDao.setOrderStatus(order);
    }

    public void confirm(Integer userId, long orderSN, Integer status) {
        LOGGER.info("=========order事务confirm操作完成================");
    }

    public void cancel(Integer userId, long orderSN, Integer status) {
        LOGGER.info("=========order事务cancel操作完成================");
    }

}
