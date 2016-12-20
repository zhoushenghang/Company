package com.springmvc.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.springmvc.pojo.Dept;

import com.springmvc.service.DeptService;
import com.springmvc.util.Pager;

public class DeptTest {

	private DeptService deptService;

	@Test
	public void list() {
		Integer page = 1;
		Integer rows = 2;
		String sort = "deptno";
		String order = "asc";

		// 条件参数 (可选)
		String dname = null;
		
		Integer pageno = (page - 1) * rows;
	    Integer pagesize = page * rows;
	    
	    Pager<Dept> pager = deptService.list(pageno, pagesize, sort, order, dname);
	    System.out.println("分页总数: " + pager.getTotal());
	    for (Dept dept : pager.getRows()) {
	      System.out.println(dept.getDname()+""+dept.getRemark());
	    }
	}

	@SuppressWarnings("resource")
	@Before
	public void init() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		deptService = ctx.getBean("deptService", DeptService.class);
	}
}
