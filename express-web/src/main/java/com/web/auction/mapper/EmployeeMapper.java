package com.web.auction.mapper;


import com.web.auction.pojo.Employee;
import org.apache.ibatis.annotations.*;
import com.web.auction.pojo.EmployeeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface EmployeeMapper {
	   int countByExample(EmployeeExample example);

	    int deleteByExample(EmployeeExample example);
	    
	    int deleteByPrimaryKey(int eid);

	    int insert(Employee record);

	    int insertSelective(Employee record);

	    List<Employee> selectByExample(EmployeeExample example);
	    
	    Employee selectByPrimaryKey(String eid);

	    int updateByExampleSelective(@Param("record") Employee record, @Param("example") EmployeeExample example);

	    int updateByExample(@Param("record") Employee record, @Param("example") EmployeeExample example);
	    
	    int updateByPrimaryKeySelective(Employee record);

	    int updateByPrimaryKey(Employee record);
	    
	    List<Employee> getEmployeeListBySearch(String keyword);
	    
	    int PlaceOrder(String eid);
	    
	    
	    
	    @Select("select * from employee where CONCAT(ename,eage,etime,estate) like CONCAT('%',#{ename},'%')")
	    public List<Employee> getEmployeeList(String name);

	    @Insert("insert into employee (eid,ename,eage,etime,estate) " +
	            "values (#{eid},#{ename},#{eage},#{etime},#{estate})")
	    public int add(Employee employee);

	    @Delete(" delete from employee where id= #{eid} ")
	    public void del(int id);

	    @Select("select * from employee where id= #{eid} ")
	    public Employee getUser(int id);

	    @Update("update employee set " +
	            "ename = #{ename}," +
	            "eage = #{eage}," +
	            "etime = #{etime}," +
	            "estate = #{estate}," +
	             
	            "where id=#{eid} ")
	    public int update(Employee employee);

		List<Employee> getUserisadmin();

		int PlaceState(String username); 
	    
}