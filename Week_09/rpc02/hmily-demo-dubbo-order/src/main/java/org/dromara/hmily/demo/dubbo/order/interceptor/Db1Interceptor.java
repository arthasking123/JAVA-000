package org.dromara.hmily.demo.dubbo.order.interceptor;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.dromara.hmily.demo.dubbo.order.bean.DBContextHolder;
import org.dromara.hmily.demo.dubbo.order.config.Db1;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;

/**
 * Created by zy on 2020/12/2.
 */
@Aspect
@Component
public class Db1Interceptor implements Ordered {

    private static final Logger logger = LoggerFactory.getLogger(Db1Interceptor.class);

    @Around("@annotation(db1)")
    public Object proceed(ProceedingJoinPoint proceedingJoinPoint , Db1 db1) throws Throwable {
        try {
            DBContextHolder.db1();
            Object result = proceedingJoinPoint.proceed();
            return result;
        } finally {
            DBContextHolder.db0();
        }
    }

    @Override
    public int getOrder() {
        return 0;
    }
}