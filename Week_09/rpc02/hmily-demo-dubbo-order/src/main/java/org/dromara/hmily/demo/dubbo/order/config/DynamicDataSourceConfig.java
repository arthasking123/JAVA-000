package org.dromara.hmily.demo.dubbo.order.config;

import org.dromara.hmily.demo.dubbo.order.bean.MyRoutingDataSource;
import org.dromara.hmily.demo.dubbo.order.enums.DBTypeEnum;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

/**
 * 配置多数据源
 * @author arthasking123
 * @version V1.0.0
 */
@Configuration
public class DynamicDataSourceConfig {

    @Bean
    @ConfigurationProperties("spring.datasource.db0")
    public DataSource db0DataSource() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.db1")
    public DataSource db1DataSource() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @Primary
    public DataSource myRoutingDataSource(@Qualifier("db0DataSource") DataSource db0DataSource,
                                          @Qualifier("db1DataSource") DataSource db1DataSource
                                          ) {
        Map<Object, Object> targetDataSources = new HashMap<>();
        targetDataSources.put(DBTypeEnum.DB0, db0DataSource);
        targetDataSources.put(DBTypeEnum.DB1, db1DataSource);
        MyRoutingDataSource myRoutingDataSource = new MyRoutingDataSource();
        myRoutingDataSource.setDefaultTargetDataSource(db0DataSource);
        myRoutingDataSource.setTargetDataSources(targetDataSources);
        return myRoutingDataSource;
    }

    @Bean
    public PlatformTransactionManager platformTransactionManager(DataSource myRoutingDataSource){
        return new DataSourceTransactionManager(myRoutingDataSource);
    }
}
