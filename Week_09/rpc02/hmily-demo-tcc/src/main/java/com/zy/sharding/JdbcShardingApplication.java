package com.zy.sharding;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.mongo.MongoDataAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.mongo.MongoAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ImportResource;
import org.springframework.util.ResourceUtils;
import org.mybatis.spring.annotation.MapperScan;

/**
 * 入口
 */
@ImportResource({"classpath:spring-dubbo.xml"})
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class,MongoAutoConfiguration.class, MongoDataAutoConfiguration.class})
public class JdbcShardingApplication {

	public static void main(String[] args) {
		SpringApplication.run(JdbcShardingApplication.class, args);
	}
	
}
