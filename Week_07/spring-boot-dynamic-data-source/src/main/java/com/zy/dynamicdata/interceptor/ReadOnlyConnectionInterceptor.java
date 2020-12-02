package com.zy.dynamicdata.interceptor;
import com.zy.dynamicdata.bean.DBContextHolder;
import com.zy.dynamicdata.config.ReadOnlyConnection;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;
/**
 * Created by zy on 2020/12/2.
 */
@Aspect
@Component
public class ReadOnlyConnectionInterceptor implements Ordered {

    private static final Logger logger = LoggerFactory.getLogger(ReadOnlyConnectionInterceptor.class);

    @Around("@annotation(readOnlyConnection)")
    public Object proceed(ProceedingJoinPoint proceedingJoinPoint ,ReadOnlyConnection readOnlyConnection) throws Throwable {
        try {
            DBContextHolder.slave();
            Object result = proceedingJoinPoint.proceed();
            return result;
        } finally {
            DBContextHolder.master();
        }
    }

    @Override
    public int getOrder() {
        return 0;
    }
}