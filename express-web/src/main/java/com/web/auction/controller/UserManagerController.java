package com.web.auction.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.web.auction.mapper.EmployeeMapper;
import com.web.auction.pojo.Auctionuser;
import com.web.auction.pojo.Employee;
import com.web.auction.service.UserManagerService;
import com.web.auction.service.UserService;
@Controller
public class UserManagerController {
	
	private static final int PAGE_SIZE=5;
	@Autowired
	private UserService userService;
	@Autowired
	private UserManagerService usermanagerService;
	@Resource
	private EmployeeMapper employeeMapper;
	
	@PostMapping("/querys1")
	@ResponseBody
	public HashMap querys1(int page, int rows,String keyword) {
		HashMap<String, Object> hashMap=new HashMap<>();
		List<Employee> list=usermanagerService.getEmployeeList(keyword);
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
	@PostMapping("/orderadd1")
	@ResponseBody
	public HashMap Edit1(int eid,String ename,String eage,String etime,String oper,String id) {	
		HashMap<String, Object> hashMap=new HashMap<>();
		if(oper.equals("add"))
		{
			
			Employee u=new Employee();
			u.setEid(eid);
			u.setEname(ename);
			u.setEage(eage);
			u.setEtime(etime);
			u.setEstate("未取");
			usermanagerService.addOrderUser(u);
			hashMap.put("success", true);
			
		}if(oper.equals("edit")) {
			
			Employee u=new Employee();
			u.setEid(eid);
			u.setEname(ename);
			u.setEage(eage);
			u.setEtime(etime);
			usermanagerService.EditOrder(u);
			hashMap.put("success", true);
			
		}else {
			usermanagerService.Delete(eid);
			hashMap.put("success", true);
			
		}
		return hashMap;
			
	}
	
	@GetMapping("/getuserisadmin")
	@ResponseBody
	public HashMap getuserisadmin() {
		HashMap<String, Object> hashMap=new HashMap<>();
		
		hashMap.put("data", usermanagerService.getUserisadmin());
		return hashMap;
	}
	
	
	@GetMapping("/take")
	@ResponseBody
	public HashMap take(String ename) {
		HashMap<String, Object> hashMap=new HashMap<>();
		usermanagerService.PlaceState(ename);
		System.out.println(ename);
		hashMap.put("success", true);	
		return hashMap;
	}
	
	
	
	


 /*   //查询
    @RequestMapping("getUser")
    public String getUser(int id, Model model) throws Exception {
        Employee employee = employeeMapper.getUser(id);
        model.addAttribute("Employee", employee);
        return "userShow";
    }

    //添加
    @RequestMapping("addUser")
    public String listUser(Employee employee, BindingResult bindingResult) throws Exception {
        boolean flag = employeeMapper.add(employee) > 0;
        return "redirect:listUser";
    }

    //删除
    @RequestMapping("deleteUser")
    public String deleteUser(Employee employee) throws Exception {
    	employeeMapper.del(employee.getEid());
        return "redirect:listUser";
    }

    //修改
    @RequestMapping("updateUser")
    public String updateUser(Employee employee) throws Exception {
        boolean flag = employeeMapper.update(employee) > 0;
        return "redirect:listUser";
    }

    //查找(用于修改)
    @RequestMapping("findUser")
    public String findUser(int id, Model model) throws Exception {
    	Employee employee = employeeMapper.getUser(id);
        model.addAttribute("Employee", employee);
        return "modify";
    }

    //遍历
    @RequestMapping({"/","listUser"})
    public String listUser(@RequestParam(value = "name",defaultValue = "") String name,
                           Model model, @RequestParam(value = "start", defaultValue = "1") int start,
                           @RequestParam(value = "size", defaultValue = "2") int size) throws Exception {
        PageHelper.startPage(start, size, "id asc");
        List<Employee> userList = employeeMapper.getEmployeeList(name);
        PageInfo<Employee> page = new PageInfo<>(userList);
        model.addAttribute("pages", page);
        model.addAttribute("name", name);
        return "userManger";
    }
	*/
    
	@RequestMapping("/queryAuctions")
	public ModelAndView queryAuctions(@ModelAttribute("condition")Employee employee,@RequestParam(value="pageNum",required=false,defaultValue="1") int pageNum) {
		ModelAndView mv=new ModelAndView();
		//分页拦截
		
		PageHelper.startPage(pageNum,PAGE_SIZE);
		List<Employee> list=usermanagerService.queryAuctions(employee);
		
		PageInfo page=new PageInfo<>(list);
		mv.addObject("employeeList",list);
		mv.addObject("pageInfo",page);
		return mv;
	
	}
}
	


