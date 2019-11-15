package com.web.auction.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.web.auction.pojo.Employee;
import com.web.auction.pojo.Orderuser;
import com.web.auction.service.OrderService;

@Controller
public class OrderController {
	private static final int PAGE_SIZE=5;
	@Autowired
	private OrderService OrderService;
	
	@RequestMapping("/doOrder")
	public String doOrder(String orderno, HttpSession session,Model model) {
		Orderuser Order=OrderService.checkOrder(orderno);
		if(Order!=null) {
			if(Order.getState().equals("未取"))
			{
			session.setAttribute("orderno", Order);
			return "placeOrder";
			}
			else
			{
				model.addAttribute("errorMsg", "订单号已取");
				return "order";
			}
		}else {
			model.addAttribute("errorMsg", "订单号错误");
			return "order";
		}
	

	}
	@RequestMapping("/queryOrder")
	public String queryAuctions(@ModelAttribute("condition")Orderuser orderuser,@RequestParam(value="pageNum",required=false,defaultValue="1") int pageNum) {
		ModelAndView mv=new ModelAndView();
		//分页拦截	
		PageHelper.startPage(pageNum,PAGE_SIZE);
		List<Orderuser> list=OrderService.queryOrder(orderuser);
		System.out.println(list.size());
		PageInfo page=new PageInfo<>(list);
		mv.addObject("order",list);
		mv.addObject("pageInfo",page);

		return "takeOrder";
	}
	
	
	@RequestMapping("/deliveryOrder")
	public String deliveryOrder(String orderno,String tell,String address,String price, HttpSession session,Model model) {
		Orderuser order=OrderService.checkOrder(orderno);
		if(Objects.nonNull(order)) {
			model.addAttribute("errorMsg", "订单已存在！");
			return "delivery";
		}
		Orderuser order1 = new Orderuser();
		order1.setAddress(address);
		order1.setOrderno(orderno);
		order1.setPrice(price);
		order1.setTell(tell);
		order1.setState("未取");
		String username=(String)session.getAttribute("username");
		order1.setUsername(username);
		int result = OrderService.save(order1);
		if(result<=0) {
			model.addAttribute("errorMsg", "订单创建失败！");
			return "delivery";
		}else {
			model.addAttribute("errorMsg", "订单创建成功！");
			return "delivery";
		}
	}

	//接单
	@PostMapping("/takeOrder")
	@ResponseBody
	public HashMap takeOrder(String orderNo) {
        
		return null;
	}
}
