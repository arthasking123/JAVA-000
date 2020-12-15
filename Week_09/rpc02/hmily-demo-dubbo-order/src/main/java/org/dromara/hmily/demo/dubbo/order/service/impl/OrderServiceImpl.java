package org.dromara.hmily.demo.dubbo.order.service.impl;

import org.dromara.hmily.annotation.HmilyTCC;
import org.dromara.hmily.demo.dubbo.order.config.Db1;
import org.dromara.hmily.demo.dubbo.order.dao.OrderDao;
import org.dromara.hmily.demo.dubbo.order.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * Created by zy on 2020/12/2.
 */
@Service("orderService")
public class OrderServiceImpl implements OrderService {

    private static final Logger LOGGER = LoggerFactory.getLogger(OrderServiceImpl.class);

    @Autowired
    private OrderDao orderDao;

    @Transactional
    @Override
    @HmilyTCC(confirmMethod = "confirmA", cancelMethod = "cancelA")
    public long setUserAccountA(){
        return orderDao.setUserAPrepare();
    }

    @Transactional
    @Override
    @Db1
    @HmilyTCC(confirmMethod = "confirmB", cancelMethod = "cancelB")
    public long setUserAccountB(){
        return orderDao.setUserBPrepare();
    }

    public void confirmA() {
        orderDao.setUserAConfirm();
        LOGGER.info("=========UserA事务confirm操作完成================");
    }

    @Db1
    public void confirmB() {
        orderDao.setUserBConfirm();
        LOGGER.info("=========UserB事务confirm操作完成================");
    }

    public void cancelA(){
        orderDao.setUserACancel();
        LOGGER.info("=========UserA事务cancel操作完成================");
    }

    @Db1
    public void cancelB(){
        orderDao.setUserBCandel();
        LOGGER.info("=========UserB事务cancel操作完成================");
    }
}
