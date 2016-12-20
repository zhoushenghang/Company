package com.springmvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.NumberUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.pojo.Dept;

import com.springmvc.service.DeptService;
import com.springmvc.util.JsonDateValueProcessor;
import com.springmvc.util.Pager;

import net.sf.json.JSON;
import net.sf.json.JSONSerializer;
import net.sf.json.JsonConfig;



@Controller
public class DeptController {
	
	@Resource(name="deptService")
	private DeptService deptService;
	
	@RequestMapping("deptController_save")
	public void save(Dept dept,HttpServletResponse response){
		int count=0;
		if(dept !=null && dept.getDeptno()!=null){
			count=deptService.modify(dept);
		}else{
			count=deptService.add(dept);
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
	
	@RequestMapping("deptController_remove")
	public  void remove(@RequestParam(value = "ids", required = true) String ids, HttpServletResponse response){
		String[] sids = ids.split(",");
	    int count = 0;

	    for (int i = 0; i < sids.length; i++) {
	      Integer deptno = NumberUtils.parseNumber(sids[i], Integer.class);
	      count += deptService.remove(deptno);
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
	
	@RequestMapping("deptController_findById")
	public String findById(@RequestParam(value = "deptno", required = true) Integer deptno, ModelMap map){
		
		Dept dept=deptService.findById(deptno);
		map.put("dept",dept);
		return "addDept";
	}
	
	@RequestMapping("deptController_list")
	public  void list(@RequestParam(value = "page", required = true) Integer page,
		      @RequestParam(value = "rows", required = true) Integer rows,
		      @RequestParam(value = "sort", required = true) String sort,
		      @RequestParam(value = "order", required = true) String order,
		      @RequestParam(value = "dname", required = false) String dname,
		      HttpServletResponse response){
		if (!StringUtils.isEmpty(dname)) {
				dname = "%" + dname + "%";
		    }
		
		Integer pageno = (page - 1) * rows;
	    Integer pagesize = page * rows;
	    
	    Pager<Dept> pager=deptService.list(pageno, pagesize, sort, order, dname);
	    
	    JsonConfig jsonConfig = new JsonConfig();
	    
	    jsonConfig.registerJsonValueProcessor(Date.class, new JsonDateValueProcessor());

	    JSON json = JSONSerializer.toJSON(pager, jsonConfig);
	    
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
