package com.zy.dt;

import com.zy.dt.config.YAMLLoader;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.Map;

@SpringBootApplication
@EnableAutoConfiguration
public class DistributeTransactionApp {
    public static void main(String[] args) {
        String str = YAMLLoader.loadString("defaults.local-transaction-timeout");
        SpringApplication.run(DistributeTransactionApp.class, args);
    }
}
