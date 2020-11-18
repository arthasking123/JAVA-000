package io.zy.config;

import io.zy.bean.User;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.List;

/**
 * Created by zy on 2020/11/16.
 */
@Configuration
public class UserConfigure {

    @Bean
    public User user(){
        return new User();
    }

}
