package io.kimmking.springboot01;

import io.kimmking.springboot01.Jdbc.MysqlConnector;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jms.annotation.EnableJms;


public class JDBCApplication {

	public static void main(String[] args) {
         //JDBC增删改查
		MysqlConnector instance = MysqlConnector.getInstance();
		instance.insertTest();
		instance.selectTest();
		instance.updateTest();
		instance.selectTest();
        instance.deleteTest();
		MysqlConnector.stopConnection();
	}

}
