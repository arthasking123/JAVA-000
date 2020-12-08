package com.zy.sharding.service.impl;

import com.zy.sharding.dao.OrderDao;
import com.zy.sharding.entity.Order;
import com.zy.sharding.service.OrderService;
import com.zy.sharding.service.TransactionService;
import com.zy.sharding.service.UserService;
import lombok.Builder;
import org.dromara.hmily.annotation.HmilyTCC;
import org.dromara.hmily.common.exception.HmilyRuntimeException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * Created by zy on 2020/12/2.
 */
@Service
public class TransactionServiceImpl implements TransactionService {

    private static final Logger LOGGER = LoggerFactory.getLogger(TransactionServiceImpl.class);

    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @Override
    @HmilyTCC(confirmMethod = "confirm", cancelMethod = "cancel")
    public void transactionTest(Integer userId, long orderSN){
        LOGGER.info("=========事务开始================");
        orderService.setOrderStatus(userId,orderSN,3);
        userService.plusAge(userId);
    }

    @Override
    @HmilyTCC(confirmMethod = "confirm", cancelMethod = "cancel")
    public void transactionExceptionTest(Integer userId, long orderSN){
        LOGGER.info("=========事务开始================");
        orderService.setOrderStatus(userId,orderSN,3);
        LOGGER.info("=========开始模拟异常================");
        throw new HmilyRuntimeException("异常模拟");
    }

    public void confirm(Integer userId, long orderSN) {
        LOGGER.info("=========事务confirm操作完成================");
    }

    public void cancel(Integer userId, long orderSN) {
        LOGGER.info("=========事务cancel操作完成================");
    }


}
