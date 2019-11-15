package com.web.auction.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.auction.mapper.EmployeeMapper;
import com.web.auction.pojo.Employee;
import com.web.auction.pojo.EmployeeExample;
import com.web.auction.pojo.Orderuser;
import com.web.auction.pojo.OrderuserExample;
import com.web.auction.service.UserManagerService;
@Service
public class UserManagerServiceImpl implements UserManagerService {
	
	@Autowired
	private EmployeeMapper employeeMapper;

	@Override
	public List<Employee> querys(Employee eid) {
		
		EmployeeExample example=new EmployeeExample();
		List<Employee> list=employeeMapper.selectByExample(example);
		
		return list;
	
	}

	@Override
	public List<Employee> getEmployeeList(String keyword) {
		// TODO Auto-generated method stub
		List<Employee> list=new ArrayList<Employee>();
		if(keyword!=null&&!keyword.equals(""))
		{
			list=employeeMapper.getEmployeeListBySearch(keyword);
		}else
		{
			list=employeeMapper.getEmployeeListBySearch("");
		}
		return list;
	}

	@Override
	public int addOrderUser(Employee u) {
		// TODO Auto-generated method stub
		return employeeMapper.insert(u);
	}

	@Override
	public int EditOrder(Employee u) {
		// TODO Auto-generated method stub
		return employeeMapper.updateByPrimaryKeySelective(u);
	}

	@Override
	public int Delete(int eid) {
		// TODO Auto-generated method stub
		return employeeMapper.deleteByPrimaryKey(eid);
	}

	@Override
	public int PlaceState(String ename) {
		// TODO Auto-generated method stub
		
		return employeeMapper.PlaceState(ename);
	}

	@Override
	public List<Employee> getUserisadmin() {
		
		return employeeMapper.getUserisadmin();
	}
	@Override
	public List<Employee> queryAuctions(Employee employee){
		EmployeeExample example=new EmployeeExample();
	//	EmployeeExample.Criteria criteria=example.createCriteria();
		/*	
		if(employee!=null) {
			if(employee.getEname()!=null &&!"".equals(employee.getEname())) {
				criteria.andEnameLike("%"+ employee.getEname()+"%");
			}
			if(employee.getEage()!=null &&!"".equals(employee.getEage())) {
				criteria.andEageLike("%"+ employee.getEage()+"%");
			}
			if(employee.getEtime()!=null &&!"".equals(employee.getEtime())) {
				criteria.andEtimeLike("%"+ employee.getEname()+"%");
			}
			if(employee.getEstate()!=null &&!"".equals(employee.getEstate())) {
				criteria.andEstateLike("%"+ employee.getEname()+"%");
			}
	
		}
		*/
	//	example.setOrderByClause("auctionstarttime desc");
		List<Employee> list=employeeMapper.selectByExample(example);
		
		return list;
		
	}

}
