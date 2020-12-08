package com.zy.sharding.service;

import com.zy.sharding.entity.Order;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

/**
 * Created by zy on 2020/12/2.
 */
public interface TransactionService {
    void transactionTest(Integer userId, long orderSN);
    void transactionExceptionTest(Integer userId, long orderSN);
}
