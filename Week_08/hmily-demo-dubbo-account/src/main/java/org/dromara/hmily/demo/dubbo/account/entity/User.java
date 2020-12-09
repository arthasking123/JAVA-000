package org.dromara.hmily.demo.dubbo.account.entity;

import lombok.Data;

/**
 * 用户信息实体
 */
@Data
public class User {
	private int id;
	private String name;
    private Integer age;
}
