package io.zy.app;

import io.zy.Service.UserService;
import io.zy.bean.User;
import io.zy.config.UserConfigure;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by zy on 2020/11/16.
 */
public class AnnotationApp {

    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(UserConfigure.class);

        /*5.Configuration+Bean注解方式输出结果*/
        User tb = (User) context.getBean("user");
        tb.defaultPrint();
    }
}
