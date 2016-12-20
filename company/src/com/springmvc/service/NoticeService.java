package com.springmvc.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springmvc.dao.NoticeMapper;
import com.springmvc.pojo.Employee;
import com.springmvc.pojo.Notice;

@Service("noticeService")
public class NoticeService {
	
	@Resource(name="noticeMapper")
	private NoticeMapper noticeMapper;
	
	
	public Notice findById(Integer nid){
		return noticeMapper.findById(nid);
	}
	
	public Notice findNoticeById(Integer nid){
		return noticeMapper.findNoticeById(nid);
	}
	
	public Employee findEmployeeById(Integer empno){
		return noticeMapper.findEmployeeById(empno);
	}
	
	public int add(Notice notice){
		return noticeMapper.add(notice);
	}
	
	public int modify(Notice notice){
		return noticeMapper.modify(notice);
	}
}
