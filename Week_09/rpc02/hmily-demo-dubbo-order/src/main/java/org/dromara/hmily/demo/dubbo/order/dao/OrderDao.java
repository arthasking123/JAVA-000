package org.dromara.hmily.demo.dubbo.order.dao;

import org.dromara.hmily.demo.dubbo.order.entity.Order;
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
    long setUserAPrepare();
    long setUserBPrepare();
    long setUserAConfirm();
    long setUserBConfirm();
    long setUserACancel();
    long setUserBCandel();
}