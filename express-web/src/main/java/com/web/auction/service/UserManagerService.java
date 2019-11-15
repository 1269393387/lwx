package com.web.auction.service;

import java.util.List;

import com.web.auction.pojo.Employee;
import com.web.auction.pojo.Orderuser;

public interface UserManagerService {
	
	public List<Employee> querys(Employee eid);
	
	public List<Employee> getEmployeeList(String keyword);
	
	public int addOrderUser(Employee u);
	
	public int EditOrder(Employee u);
	
	public int Delete(int eid);
	
	public int PlaceState(String ename);
	

	
	public List<Employee> queryAuctions(Employee employee);

	public List<Employee> getUserisadmin();
	

}
