package org.dromara.hmily.demo.dubbo.order.bean;


import org.dromara.hmily.demo.dubbo.order.enums.DBTypeEnum;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created by zy on 2020/12/1.
 */
public class DBContextHolder {
    private static final ThreadLocal<DBTypeEnum> contextHolder = new ThreadLocal<>();

    private static final AtomicInteger counter = new AtomicInteger(-1);

    public static void set(DBTypeEnum dbType) {
        contextHolder.set(dbType);
    }

    public static DBTypeEnum get() {
        return contextHolder.get();
    }

    public static void db0() {
        set(DBTypeEnum.DB0);
        System.out.println("切换到db0");
    }

    public static void db1() {
        set(DBTypeEnum.DB1);
        System.out.println("切换到db1");
    }
}
