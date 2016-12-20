package com.springmvc.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springmvc.dao.DeptMapper;
import com.springmvc.pojo.Dept;

import com.springmvc.util.Pager;

@Service("deptService")
public class DeptService {
	
	@Resource(name="deptMapper")
	private DeptMapper deptMapper;
	
	 public Pager<Dept> list(Integer pageno, Integer pagesize, String sort, String order, String dname) {
		    Pager<Dept> pager = new Pager<Dept>();
		    pager.setRows(deptMapper.findPager(pageno, pagesize, sort, order, dname));
		    pager.setTotal(deptMapper.findTotal(dname));
		    return pager;
		  }
	 
	 public int add(Dept dept){
		 return deptMapper.add(dept);
	 }
	 
	 public int modify(Dept dept){
		 return deptMapper.modify(dept);
	 }
	 
	 public int remove(Integer deptno){
		 return deptMapper.remove(deptno);
	 }
	 
	 public Dept findById(Integer deptno){
		 return deptMapper.findById(deptno);
	 }
	 
	 public List<Dept> find() {
		    return deptMapper.find();
		  }
}
