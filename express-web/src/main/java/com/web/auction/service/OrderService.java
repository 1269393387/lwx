package com.web.auction.service;
import java.util.List;


import com.web.auction.pojo.Orderuser;
public interface OrderService{

  public  Orderuser checkOrder(String orderno);
public List<Orderuser> queryOrder(Orderuser orderuser);

public int save(Orderuser order);
}
