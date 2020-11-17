package io.zy.app;

import io.zy.Dao.UserDao;
import io.zy.Service.UserService;
import io.zy.bean.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by zy on 2020/11/16.
 */
public class ComponentScanApp {

    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("application-Context2.xml");

        /*6.ComponentScan组件扫描注解方式输出结果*/
        UserDao tb = (UserDao) context.getBean("userDao2");
        System.out.println(tb.getString());

        /*7.Component自动装配注解方式输出结果*/
        UserService us = (UserService) context.getBean("userService2");
        System.out.println(us.hello());

    }
}
