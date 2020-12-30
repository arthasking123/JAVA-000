package io.kimmking.cache.utils;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.concurrent.TimeUnit;

/**
 * Created by zy on 2020/12/29.
 */
@Component
@Aspect
public class RedisAspect {
    @Autowired
    private LockUtil lockUtil;
    //定义Service类minus方法操作的超时时间  10秒
    private static final Long TIMEOUT = 10L;
    //定义Service类minus方法操作的超时时间单位
    private static final TimeUnit TIME_UNIT = TimeUnit.SECONDS;

    //环绕通知
    @Around("execution(* io.kimmking.cache.service.GoodService.minus(..))))")
    public boolean around(ProceedingJoinPoint joinPoint)throws Throwable{
        String serviceId = String.valueOf(joinPoint.getArgs()[0]);
        try{
            boolean getLock = lockUtil.lock(serviceId,TIMEOUT,TIME_UNIT);//加锁
            if(!getLock){  //没获取到锁
                return false;
            }else {     //获取到锁后执行业务逻辑操作
                if(!(boolean) joinPoint.proceed())
                    throw new SoldOutException();
                return true;
            }
        }catch (Throwable e){
            throw e;
        } finally {
            lockUtil.unlock(serviceId);//释放锁
        }
    }

    //自定义异常类（卖完了异常）
    class SoldOutException extends RuntimeException {

    }
}