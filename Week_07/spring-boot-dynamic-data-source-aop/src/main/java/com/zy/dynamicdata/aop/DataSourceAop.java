package com.zy.dynamicdata.aop;

import com.zy.dynamicdata.bean.DBContextHolder;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * Created by zy on 2020/12/1.
 */
@Aspect
@Component
public class DataSourceAop {
    @Pointcut("(execution(* com.zy.dynamicdata.service..*.select*(..)) " +
            "|| execution(* com.zy.dynamicdata.service..*.get*(..)))")
    public void readPointcut() {

    }

    @Pointcut("execution(* com.zy.dynamicdata.service..*.insert*(..)) " +
            "|| execution(* com.zy.dynamicdata.service..*.add*(..)) " +
            "|| execution(* com.zy.dynamicdata.service..*.set*(..)) " +
            "|| execution(* com.zy.dynamicdata.service..*.update*(..)) " +
            "|| execution(* com.zy.dynamicdata.service..*.edit*(..)) " +
            "|| execution(* com.zy.dynamicdata.service..*.delete*(..)) " +
            "|| execution(* com.zy.dynamicdata.service..*.remove*(..))")
    public void writePointcut() {

    }

    @Before("readPointcut()")
    public void read() {
        DBContextHolder.slave();
    }

    @Before("writePointcut()")
    public void write() {
        DBContextHolder.master();
    }
}
