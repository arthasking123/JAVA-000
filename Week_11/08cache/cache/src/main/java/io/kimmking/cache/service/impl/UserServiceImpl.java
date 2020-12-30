package io.kimmking.cache.service.impl;

import io.kimmking.cache.entity.User;
import io.kimmking.cache.mapper.UserMapper;
import io.kimmking.cache.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    // 开启spring cache
    @Cacheable(key="#id",value="userCache")
    public User find(int id) {
        System.out.println(" ==> find " + id);
        return userMapper.find(id);
    }

    // 开启spring cache
    @Cacheable //(key="methodName",value="userCache")
    public List<User> list(){
        return userMapper.list();
    }

    @CachePut(key="#id",value="userCache")
    public User update(int id, String name){
        System.out.println(" ==> update id: " + id + " name: " + name);
        userMapper.update(id, name);
        return userMapper.find(id);
    }

    @CacheEvict(key="#id",value="userCache")
    public Integer delete(int id){
        return userMapper.delete(id);
    }
}
