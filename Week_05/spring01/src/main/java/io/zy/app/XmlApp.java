package io.zy.app;

import io.zy.Service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by zy on 2020/11/16.
 */
public class XmlApp {

    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("application-Context1.xml");

        /*1.构造方式输出结果*/
        System.out.println(context.getBean("user1"));
		/*2.设值方式输出结果*/
        System.out.println(context.getBean("user2"));
        /*3.Resource注解方式输出结果*/
        System.out.print(((UserService)(context.getBean("userService"))).hello());
        /*4.AutoWired注解方式输出结果*/
        System.out.print(((UserService)(context.getBean("userServiceAutoWired"))).hello());

    }
}
