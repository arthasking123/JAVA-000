package io.zy.app;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by zy on 2020/11/16.
 */
public class springApp {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("application-zyContext.xml");

        /*构造方式输出结果*/
        System.out.println(context.getBean("user1"));
		/*设置方式输出结果*/
        System.out.println(context.getBean("user2"));
    }
}
