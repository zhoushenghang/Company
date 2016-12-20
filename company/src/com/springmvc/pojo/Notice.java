package com.springmvc.pojo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Notice implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer nid;//id
	private String title;//标题
	private String contentt;//文本内容
	private String html;//HTML内容
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date pubdate;//发布时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date lastview;//最后浏览时间
	private Integer viewcount;//浏览次数
	private String filet;//附件文件名
	
	//多个公告：1个人
	private Employee employees;

	public Notice() {
	
	}

	public Integer getNid() {
		return nid;
	}

	public void setNid(Integer nid) {
		this.nid = nid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContentt() {
		return contentt;
	}

	public void setContentt(String contentt) {
		this.contentt = contentt;
	}

	public String getHtml() {
		return html;
	}

	public void setHtml(String html) {
		this.html = html;
	}

	public Date getPubdate() {
		return pubdate;
	}

	public void setPubdate(Date pubdate) {
		this.pubdate = pubdate;
	}

	public Date getLastview() {
		return lastview;
	}

	public void setLastview(Date lastview) {
		this.lastview = lastview;
	}

	public Integer getViewcount() {
		return viewcount;
	}

	public void setViewcount(Integer viewcount) {
		this.viewcount = viewcount;
	}

	public String getFilet() {
		return filet;
	}

	public void setFilet(String filet) {
		this.filet = filet;
	}

	public Employee getEmployees() {
		return employees;
	}

	public void setEmployees(Employee employees) {
		this.employees = employees;
	}

	
	
	
	
}
