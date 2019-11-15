package com.web.auction.service.impl;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.auction.pojo.Orderuser;
import com.web.auction.pojo.OrderuserExample;
import com.web.auction.service.ManagerService;
import com.web.auction.mapper.*;
@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	private OrderuserMapper orderuserMapper;
	
	@Override
	public List<Orderuser> querys(Orderuser orderuser) {
		
		OrderuserExample example=new OrderuserExample();
		OrderuserExample.Criteria criteria=example.createCriteria();
		if(orderuser!=null) {
			if(orderuser.getOrderno()!=null &&!"".equals(orderuser.getOrderno())) {
				criteria.andOrdernoLike("%"+ orderuser.getOrderno()+"%");
			}
			if(orderuser.getUsername()!=null && !"".equals(orderuser.getUsername())) {
				criteria.andUsernameLike("%"+ orderuser.getUsername()+"%");
			}
			if(orderuser.getTell()!=null &&!"".equals(orderuser.getTell())) {
				criteria.andTellLike("%"+ orderuser.getTell()+"%");
			}
			if(orderuser.getAddress()!=null && !"".equals(orderuser.getAddress())) {
				criteria.andAddressLike("%"+ orderuser.getAddress()+"%");
			}
			

		}

		List<Orderuser> list=orderuserMapper.selectByExample(example);
	
		return list;
	}

	@Override
	public List<Orderuser> getOrderUserList(String keyword) {
		// TODO Auto-generated method stub
		List<Orderuser> list=new ArrayList<Orderuser>();
		if(keyword!=null&&!keyword.equals(""))
		{
			list=orderuserMapper.getOrderUserListBySearch(keyword);
		}else
		{
			list=orderuserMapper.getOrderUserListBySearch("");
		}
		return list;
	}

	@Override
	public int addOrderUser(Orderuser u) {
		// TODO Auto-generated method stub
		return orderuserMapper.insert(u);
	}

	@Override
	public int EditOrder(Orderuser u) {
		// TODO Auto-generated method stub
		return orderuserMapper.updateByPrimaryKeySelective(u);
	}

	@Override
	public int Delete(String oId) {
		// TODO Auto-generated method stub
		return orderuserMapper.deleteByPrimaryKey(oId);
	}

	@Override
	public int PlaceOrder(String oId) {
		// TODO Auto-generated method stub
		return orderuserMapper.PlaceOrder(oId);
	}

	@Override
	public List<Orderuser> getnoPriceOrder() {
		// TODO Auto-generated method stub
		return orderuserMapper.getnoPriceOrder();
	}

}
