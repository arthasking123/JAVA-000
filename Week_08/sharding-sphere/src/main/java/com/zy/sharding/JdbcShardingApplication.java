package com.zy.sharding;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.shardingsphere.driver.api.yaml.YamlShardingSphereDataSourceFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.util.ResourceUtils;
import org.mybatis.spring.annotation.MapperScan;

/**
 * 入口
 */
@MapperScan(basePackages = "com.zy.sharding.dao")
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class JdbcShardingApplication {

	public static void main(String[] args) {
		SpringApplication.run(JdbcShardingApplication.class, args);
	}
	
	/**
	 * 配置读写分离数据源
	 * @return
	 * @throws FileNotFoundException
	 * @throws SQLException
	 * @throws IOException
	 */
	@Bean
	public DataSource dataSource() throws SQLException, IOException {
		return YamlShardingSphereDataSourceFactory.createDataSource(ResourceUtils.getFile("classpath:sharding-jdbc.yml"));
	}
}
