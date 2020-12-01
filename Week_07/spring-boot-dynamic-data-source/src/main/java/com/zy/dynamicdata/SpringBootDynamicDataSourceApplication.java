package com.zy.dynamicdata;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * @author arthasking123
 */
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
@MapperScan(basePackages = "com.zy.dynamicdata.dao")
public class SpringBootDynamicDataSourceApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootDynamicDataSourceApplication.class, args);
    }

}
