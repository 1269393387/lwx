package com.web.auction.service;

import com.web.auction.pojo.Auctionuser;

public interface UserService {
	
	
	public Auctionuser login(String username,String password);
	public void register(Auctionuser user);

}
