package com.springmvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;


import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.NumberUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.springmvc.pojo.Employee;
import com.springmvc.service.EmployeeService;
import com.springmvc.util.AllEmployeesJsonValueProcessor;
import com.springmvc.util.JsonDateValueProcessor;
import com.springmvc.util.Pager;

import net.sf.json.JSON;
import net.sf.json.JSONSerializer;
import net.sf.json.JsonConfig;


@Controller
public class EmployeeController {
	
	@Resource(name="employeeService")
	private EmployeeService  employeeService;
	
	@RequestMapping("employeeController_save")
	public void save(Employee employee, HttpServletResponse response){
		 int count = 0;
		if(employee!=null&&employee.getEmpno()!=null){
			count=employeeService.modify(employee);
		}else{
			count=employeeService.add(employee);
		}
		 try {
		      PrintWriter out = response.getWriter();
		      out.println(count);
		      out.flush();
		      out.close();
		    } catch (IOException e) {
		      e.printStackTrace();
		    }
	}
	
	
	@RequestMapping("employeeController_remove")
	public void remove(@RequestParam(value = "ids", required = true) String ids, HttpServletResponse response){
		
		 String[] sids = ids.split(",");
		 int count = 0;
		 for (int i = 0; i < sids.length; i++) {
		        Integer empno = NumberUtils.parseNumber(sids[i], Integer.class);
		        count += employeeService.remove(empno);
		      }   
		 try {
		      PrintWriter out = response.getWriter();
		      out.println(count);
		      out.flush();
		      out.close();
		    } catch (IOException e) {
		      e.printStackTrace();
		    }
	}
	
	@RequestMapping("employeeController_findById")
	  public String findById(@RequestParam(value = "empno", required = true) Integer empno, ModelMap map) {
		Employee emp = employeeService.findById(empno);
	    map.put("emp", emp);
	    return "addEmp";
	  }
	
	@RequestMapping("employeeController_list")
	  public void list(
		  @RequestParam(value = "page", required = true) Integer page,
	      @RequestParam(value = "rows", required = true) Integer rows,
	      @RequestParam(value = "sort", required = true) String sort,
	      @RequestParam(value = "order", required = true) String order,
	      @RequestParam(value = "realname", required = false) String realname,
	      @RequestParam(value="sex", required = false) String sex,
	      @RequestParam(value="state", required = false) String state,
	      @RequestParam(value="deptno", required = false) Integer dept,
	      @RequestParam(value = "beginDate", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date beginDate,
	      @RequestParam(value = "endDate", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date endDate,
	      
	      HttpServletResponse response) {
		
		
		
	    if (!StringUtils.isEmpty(realname)) {
	    	realname = "%" + realname + "%";
	    }
	    if (!StringUtils.isEmpty(sex)) {
	    	sex = "%" + sex + "%";
	    }
	    if (!StringUtils.isEmpty(state)) {
	    	state = "%" + state + "%";
	    }
	  
	    
	    
	    Integer beginPage=(page-1)*rows;
	    Integer endPage=page*rows;
	    
	    Pager<Employee> pager=employeeService.findPager(realname, sex, dept, state, beginDate, endDate, sort, order, beginPage, endPage);
	    
	    JsonConfig jsonConfig = new JsonConfig();
	    jsonConfig.registerJsonValueProcessor(Date.class, new JsonDateValueProcessor());
	  
	    
	    JSON json=JSONSerializer.toJSON(pager,jsonConfig); 
	    
	    try {
	        PrintWriter out = response.getWriter();
	        out.println(json.toString());
	        out.flush();
	        out.close();
	      } catch (IOException e) {
	        e.printStackTrace();
	      }
	}
}
