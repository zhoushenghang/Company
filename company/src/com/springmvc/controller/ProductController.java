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


import com.springmvc.pojo.Product;
import com.springmvc.service.ProductService;
import com.springmvc.util.JsonDateValueProcessor;
import com.springmvc.util.Pager;

import net.sf.json.JSON;
import net.sf.json.JSONSerializer;
import net.sf.json.JsonConfig;

@Controller
public class ProductController {
	
	@Resource(name="productService")
	private ProductService productService;
	
	@RequestMapping("productController_save")
	public void save(Product product, HttpServletResponse response){
		int count=0;
		if(product!=null && product.getPid()!=null){
			count=productService.modify(product);
		}else{
			count=productService.add(product);
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
	
	
	@RequestMapping("productController_findById")
	public String findById(@RequestParam(value = "pid", required = true) Integer pid, ModelMap map){
		
		Product product=productService.findById(pid);
		map.put("product",product);
		return "add";
	}
	
	@RequestMapping("productController_remove")
	public void remove(@RequestParam(value = "ids", required = true) String ids, HttpServletResponse response){
		String [] sids=ids.split(",");
		int count=0;
		for (int i = 0; i < sids.length; i++) {
		      Integer pid = NumberUtils.parseNumber(sids[i], Integer.class);
		      count += productService.remove(pid);
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
	
	@RequestMapping("productController_list")
	public  void list(@RequestParam(value = "page", required = true) Integer page,
		      @RequestParam(value = "rows", required = true) Integer rows,
		      @RequestParam(value = "sort", required = true) String sort,
		      @RequestParam(value = "order", required = true) String order,
		      @RequestParam(value = "pname", required = false) String pname,
		      @RequestParam(value = "pnum", required = false)String pnum,
		      HttpServletResponse response){
		if (!StringUtils.isEmpty(pname)) {
		      pname = "%" + pname + "%";
		    }
		if (!StringUtils.isEmpty(pnum)) {
			pnum = "%" + pnum + "%";
		    }
		
		Integer pageno = (page - 1) * rows;
	    Integer pagesize = page * rows;
	    
	    Pager<Product> pager=productService.list(pageno, pagesize, sort, order, pname, pnum);
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
