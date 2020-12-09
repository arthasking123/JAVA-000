package com.zy.dt;

import com.zy.dt.config.YAMLLoader;
import com.zy.dt.event.EventRunner;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.Map;
import java.util.concurrent.TimeUnit;

@SpringBootApplication
@EnableAutoConfiguration
public class DistributeTransactionApp {
    private static final Logger LOGGER = LoggerFactory.getLogger(DistributeTransactionApp.class);

    public static void main(String[] args) {
        SpringApplication.run(DistributeTransactionApp.class, args);
        //正常分布式事务测试
        test1();
        //子事务执行超时测试
        test2();
        //子事务执行失败测试
        test3();
        //子事务执行抛异常测试
        test4();
    }


    static void test1(){
        LOGGER.info("=========开始执行正常事务测试================");
        String sReturn = (String)new EventRunner(false).addBaseEvent(()->{
            LOGGER.info("=========总事务try操作完成================");
            return true;
        },()->{
            LOGGER.info("=========总事务confirm操作完成================");
            return "OK";
        },()->{
            LOGGER.info("=========总事务cancel操作完成================");
            return "CANCEL";
        }).addSubEvent(()->{
            LOGGER.info("=========子事务1try操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务1confirm操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务1cancel操作完成================");
            return true;
        }).addSubEvent(()->{
            LOGGER.info("=========子事务2try操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务2confirm操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务2cancel操作完成================");
            return true;
        }).run();
        LOGGER.info("=========返回值"+ sReturn +"================");
    }

    static void test2(){
        LOGGER.info("=========开始执行事务执行超时测试================");
        String sReturn = (String)new EventRunner(false).addBaseEvent(()->{
            LOGGER.info("=========总事务try操作完成================");
            return true;
        },()->{
            LOGGER.info("=========总事务confirm操作完成================");
            return "OK";
        },()->{
            LOGGER.info("=========总事务cancel操作完成================");
            return "CANCEL";
        }).addSubEvent(()->{
            LOGGER.info("=========子事务1try操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务1confirm操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务1cancel操作完成================");
            return true;
        }).addSubEvent(()->{
            LOGGER.info("=========子事务2try超时================");
            Thread.sleep(3000);
            return true;
        },()->{
            LOGGER.info("=========子事务2confirm操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务2cancel操作完成================");
            return true;
        }).run();
        LOGGER.info("=========返回值"+ sReturn +"================");
    }

    static void test3(){
        LOGGER.info("=========开始执行事务返回失败测试================");
        String sReturn = (String)new EventRunner(false).addBaseEvent(()->{
            LOGGER.info("=========总事务try操作完成================");
            return true;
        },()->{
            LOGGER.info("=========总事务confirm操作完成================");
            return "OK";
        },()->{
            LOGGER.info("=========总事务cancel操作完成================");
            return "CANCEL";
        }).addSubEvent(()->{
            LOGGER.info("=========子事务1try操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务1confirm操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务1cancel操作完成================");
            return true;
        }).addSubEvent(()->{
            LOGGER.info("=========子事务2try返回失败================");
            return false;
        },()->{
            LOGGER.info("=========子事务2confirm操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务2cancel操作完成================");
            return true;
        }).run();
        LOGGER.info("=========返回值"+ sReturn +"================");
    }

    static void test4(){
        LOGGER.info("=========开始执行事务抛异常测试================");
        String sReturn = (String)new EventRunner(false).addBaseEvent(()->{
            LOGGER.info("=========总事务try操作完成================");
            return true;
        },()->{
            LOGGER.info("=========总事务confirm操作完成================");
            return "OK";
        },()->{
            LOGGER.info("=========总事务cancel操作完成================");
            return "CANCEL";
        }).addSubEvent(()->{
            LOGGER.info("=========子事务1try操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务1confirm操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务1cancel操作完成================");
            return true;
        }).addSubEvent(()->{
            LOGGER.info("=========子事务2try抛出异常================");
            throw new Exception("抛异常");
        },()->{
            LOGGER.info("=========子事务2confirm操作完成================");
            return true;
        },()->{
            LOGGER.info("=========子事务2cancel操作完成================");
            return true;
        }).run();
        LOGGER.info("=========返回值"+ sReturn +"================");
    }
}
