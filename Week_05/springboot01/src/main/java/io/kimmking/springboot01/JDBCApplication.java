package io.kimmking.springboot01;

import io.kimmking.springboot01.Jdbc.MysqlConnector;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jms.annotation.EnableJms;


public class JDBCApplication {

	public static void main(String[] args) {
         //1.JDBC增删改查
		MysqlConnector.getInstance().insertTest();
		MysqlConnector.getInstance().selectTest();
		MysqlConnector.getInstance().updateTest();
		MysqlConnector.getInstance().selectTest();
        MysqlConnector.getInstance().deleteTest();


		//3.Hikari连接池




	}

}
