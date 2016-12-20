package com.springmvc.pojo;

import java.io.Serializable;
import java.util.List;

public class Dept implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer deptno;
	private String dname;
	private String remark;
	private List<Employee> emps;
	
	public Integer getDeptno() {
		return deptno;
	}
	public void setDeptno(Integer deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public List<Employee> getEmps() {
		return emps;
	}
	public void setEmps(List<Employee> emps) {
		this.emps = emps;
	}
	public Dept() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
