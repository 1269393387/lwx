package com.web.auction.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import org.apache.ibatis.scripting.xmltags.VarDeclSqlNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.web.auction.pojo.Orderuser;
import com.web.auction.service.ManagerService;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	private static final int PAGE_SIZE=5;
	
	@PostMapping("/querys")
	@ResponseBody
	public HashMap querys(int page, int rows,String keyword) {
		HashMap<String, Object> hashMap=new HashMap<>();
		List<Orderuser> list=managerService.getOrderUserList(keyword);
		int totle = (list.size() / rows) * rows >= list.size() 
                ? (list.size()  / rows)
                : (list.size()  / rows) + 1;
		hashMap.put("total",totle );
		hashMap.put("page", page);
		hashMap.put("records", list.size());
		list=list.subList((page-1)*rows, (page)*rows>list.size()?list.size():(page)*rows);
		hashMap.put("rows", list);
		return hashMap;
	}
	@PostMapping("/orderadd")
	@ResponseBody
	public HashMap Edit(String orderno,String tell,String username,String address,String price,String oper,String id) {
		HashMap<String, Object> hashMap=new HashMap<>();
		if(oper.equals("add"))
		{
			Orderuser u=new Orderuser();
			u.setAddress(address);
			u.setOrderno(orderno);
			u.setState("未取");
			u.setTell(tell);
			u.setUsername(username);
			u.setPrice(price);
			managerService.addOrderUser(u);
			hashMap.put("success", true);
		}
		if(oper.equals("edit"))
		{
			Orderuser u=new Orderuser();
			u.setAddress(address);
			u.setOrderno(id);
			u.setTell(tell);
			u.setUsername(username);
			u.setPrice(price);
			managerService.EditOrder(u);
			hashMap.put("success", true);
		}else
		{
			managerService.Delete(id);
			hashMap.put("success", true);
		}
		return hashMap;
	}
	@GetMapping("/price")
	@ResponseBody
	public HashMap price(String oId) {
		HashMap<String, Object> hashMap=new HashMap<>();
		managerService.PlaceOrder(oId);
		hashMap.put("success", true);
		return hashMap;
	}
	
	@GetMapping("/getnoprice")
	@ResponseBody
	public HashMap getnoprice() {
		HashMap<String, Object> hashMap=new HashMap<>();
		
		hashMap.put("data", managerService.getnoPriceOrder());
		return hashMap;
	}
	
	
	

}
