package com.web.auction.service;

import java.util.List;

import com.web.auction.pojo.Orderuser;

public interface ManagerService {
	public List<Orderuser> querys(Orderuser Orderuser);
	
	public List<Orderuser> getOrderUserList(String keyword);
	
	public int addOrderUser(Orderuser u);
	
	public int EditOrder(Orderuser u);
	
	public int Delete(String oId);
	
	public int PlaceOrder(String oId);
	
	public List<Orderuser> getnoPriceOrder();

}
