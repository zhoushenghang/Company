package com.springmvc.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springmvc.dao.EmployeeMapper;

import com.springmvc.pojo.Employee;
import com.springmvc.util.Pager;

@Service("employeeService")
public class EmployeeService {
	
	@Resource(name="employeeMapper")
	private EmployeeMapper employeeMapper;
	
	

	
	public Employee findById(Integer empno){
		return employeeMapper.findById(empno);
	}
	 
	public  int add(Employee employee){
		return employeeMapper.add(employee);
	}
	 
	public int modify(Employee employee){
		return employeeMapper.add(employee);
	}
	 
	public int remove(Integer empno){
		return employeeMapper.remove(empno);
	}
	
	public List<Employee> findParam(String realname,String sex,Integer dept,String state,Date beginDate,Date endDate){
		return employeeMapper.findParam(realname, sex, dept, state, beginDate, endDate);
	}
	
	public List<Employee> findAll(){
		return employeeMapper.findAll();
	}
	
	public Pager<Employee> findPager(String realname,String sex,Integer dept,String state,Date beginDate,Date endDate,String sort,String order,Integer beginPage,Integer endPage){
		Pager<Employee> pager=new Pager<Employee>();
		pager.setRows(employeeMapper.findPager(realname, sex, dept, state, beginDate, endDate, beginPage, endPage, sort, order));
		pager.setTotal(employeeMapper.findTotal(realname, sex, dept, state, beginDate, endDate));
		return pager;
	}
}
