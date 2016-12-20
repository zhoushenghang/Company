package com.springmvc.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springmvc.dao.ProductMapper;
import com.springmvc.pojo.Product;
import com.springmvc.util.Pager;

@Service("productService")
public class ProductService {
	
	@Resource(name="productMapper")
	private ProductMapper productMapper;
	
	
	 public Pager<Product> list(Integer pageno, Integer pagesize, String sort, String order, String pname, String pnum) {
		    Pager<Product> pager = new Pager<Product>();
		    pager.setRows(productMapper.findPager(pageno, pagesize, sort, order, pname,pnum));
		    pager.setTotal(productMapper.findTotal(pname, pnum));
		    return pager;
		  }
	
	 public int add(Product product){
		 return productMapper.add(product);
	 }
	 
	 public int modify(Product product){
		 return productMapper.modify(product);
	 }
	 
	 public int remove(Integer pid){
		 return productMapper.remove(pid);
	 }
	 
	 public Product findById(Integer pid){
		 return productMapper.findById(pid);
	 }
	 
	 public List<Product> find() {
		    return productMapper.find();
		  }
	 
}
