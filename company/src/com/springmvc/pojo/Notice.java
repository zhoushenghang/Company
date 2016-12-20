package com.springmvc.pojo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Notice implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer nid;//id
	private String title;//����
	private String contentt;//�ı�����
	private String html;//HTML����
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date pubdate;//����ʱ��
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date lastview;//������ʱ��
	private Integer viewcount;//�������
	private String filet;//�����ļ���
	
	//������棺1����
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
