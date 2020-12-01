package com.zy.dynamicdata.entity;

import java.time.LocalDateTime;
import java.io.Serializable;

/**
 * <p>
 * 系统用户
 * </p>
 *
 * @author xiaohe
 * @since 2019-06-04
 */
public class User {
    private Integer id;
    private String name;


    public User(Integer uid, String userName) {
        this.id = uid;
        this.name = userName;

    }

    public Integer getUid() {
        return id;
    }

    public void setUid(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return name;
    }

    public void setUserName(String name) {
        this.name = name;
    }

}