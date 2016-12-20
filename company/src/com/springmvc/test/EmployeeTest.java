package com.springmvc.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import com.springmvc.pojo.Employee;

import com.springmvc.service.EmployeeService;

public class EmployeeTest {

	private EmployeeService employeeService;
	
	 @Test
	  public void findByEmployee() {
		 Employee employee = employeeService.findById(1001);
	    System.out.println(employee.getEname()+""+employee.getJob());
	    System.out.println(employee.getDept().getDeptno());
	  }
	
	
	 
	
	@SuppressWarnings("resource")
	@Before
	public void init(){
		ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		employeeService=ctx.getBean("employeeService",EmployeeService.class);
	}
}
