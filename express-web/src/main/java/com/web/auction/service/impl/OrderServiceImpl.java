package com.web.auction.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.auction.service.OrderService;
import com.web.auction.mapper.OrderuserMapper;

import com.web.auction.pojo.Orderuser;
import com.web.auction.pojo.OrderuserExample;


@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderuserMapper OrderuserMapper;
	@Override
	 public  Orderuser checkOrder(String orderno) {
		 
		 OrderuserExample example=new OrderuserExample();
		 OrderuserExample.Criteria criteria=example.createCriteria();
		 criteria.andOrdernoEqualTo(orderno);
		 List<Orderuser> list=OrderuserMapper.selectByExample(example);
		 
			if(list!=null && list.size()>0) {
				return list.get(0);
			}
			return null;
		 
	 }
	
	public int save(Orderuser order) {
		return OrderuserMapper.insert(order);
	}

	@Override
	public List<Orderuser> queryOrder(Orderuser orderuser) {
	OrderuserExample example=new OrderuserExample();
	List<Orderuser> list=OrderuserMapper.selectByExample(example);
		return list;
	}
	

}
