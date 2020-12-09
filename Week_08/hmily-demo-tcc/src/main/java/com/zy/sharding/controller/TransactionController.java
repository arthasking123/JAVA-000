package com.zy.sharding.controller;

import com.zy.sharding.service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by zy on 2020/12/8.
 */
@RestController
public class TransactionController {
    @Autowired
    private TransactionService transactionService;

    /**
     * 分布式事务测试
     * @return long
     */
    @RequestMapping(value = "/transactionTest/{userId}/{orderSN}", method = RequestMethod.GET)
    public long transactionTest(@PathVariable Integer userId, @PathVariable long orderSN) {
        transactionService.transactionTest(userId, orderSN);
        return 1;
    }


    /**
     * 分布式事务测试
     * @return long
     */
    @RequestMapping(value = "/transactionExceptionTest/{userId}/{orderSN}", method = RequestMethod.GET)
    public long transactionExceptionTest(@PathVariable Integer userId, @PathVariable long orderSN) {
            transactionService.transactionExceptionTest(userId, orderSN);
            return 1;
    }
}
