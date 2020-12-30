package io.kimmking.cache.service.impl;

import io.kimmking.cache.entity.User;
import io.kimmking.cache.mapper.UserMapper;
import io.kimmking.cache.service.GoodService;
import io.kimmking.cache.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodServiceImpl implements GoodService {

    @Autowired
    RedisTemplate redisTemplate;

    public Integer minus(int goodId){
      redisTemplate.opsForValue().increment("good" + goodId ,-1);
      return 1;
    }

}
