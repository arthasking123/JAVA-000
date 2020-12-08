package com.zy.sharding.controller;

import com.zy.sharding.entity.Order;
import com.zy.sharding.entity.User;
import com.zy.sharding.service.OrderService;
import com.zy.sharding.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 订单控制器
 */
@RestController
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	/**
	 * 获取订单列表信息
	 * @return List<Order>
	 */
	@RequestMapping(value = "/getOrderList/{userId}/{page}", method = RequestMethod.GET)
	public List<Order> getOrdersByUserId(@PathVariable Integer userId, @PathVariable Integer page) {
		Map<String,Object> map = new HashMap<>();
		map.put("userId",userId);
		map.put("offset",page * 20);
		map.put("limit",20);
		return orderService.getOrdersByUserId(map);
	}


	private String getRandomString(int length){
		String str="0123456789";
		Random random=new Random();
		StringBuffer sb=new StringBuffer();
		for(int i=0;i<length;i++){
			int number=random.nextInt(10);
			sb.append(str.charAt(number));
		}
		return sb.toString();
	}

	/**
	 * 插入订单
	 * @return long
	 */
	@RequestMapping(value = "/insertOrder/{userId}/{userSnapshotId}/{goodId}/{goodSnapshotId}/{fee}", method = RequestMethod.GET)
	public long insertOrder(@PathVariable Integer userId, @PathVariable Integer userSnapshotId, @PathVariable Integer goodId, @PathVariable Integer goodSnapshotId, @PathVariable Integer fee) {
		Map<String,Object> map = new HashMap<>();
		map.put("userId",userId);
		map.put("userSnapshotId",userSnapshotId);
		map.put("goodId",goodId);
		map.put("goodSnapshotId",goodSnapshotId);
		map.put("payFee",fee);
		map.put("orderSN", Long.valueOf(new SimpleDateFormat("yyyyMMddHHmmsSSS").format(new Date(System.currentTimeMillis()))));
		map.put("tradeNo",getRandomString(20));
		map.put("payType",Math.round(Math.random() + 1));
		return orderService.insertOrder(map);
	}

	/**
	 * 删除订单
	 * @return long
	 */
	@RequestMapping(value = "/deleteOrder/{userId}/{orderSN}", method = RequestMethod.GET)
	public long getOrdersByUserId(@PathVariable Integer userId, @PathVariable long orderSN) {
		Map<String,Object> map = new HashMap<>();
		map.put("orderSN",orderSN);
		map.put("userId",userId);
		return orderService.deleteOrder(map);
	}

	/**
	 * 更新订单状态
	 * @return long
	 */
	@RequestMapping(value = "/setOrderStatus/{userId}/{id}/{status}", method = RequestMethod.GET)
	public long setOrderStatus(@PathVariable Integer userId, @PathVariable Integer id, @PathVariable Integer status) {
		return orderService.setOrderStatus(userId, id, status);
	}

}
