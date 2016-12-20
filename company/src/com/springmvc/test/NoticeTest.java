package com.springmvc.test;

import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.springmvc.pojo.Employee;
import com.springmvc.pojo.Notice;
import com.springmvc.service.NoticeService;

public class NoticeTest {
	
	private NoticeService noticeService;
	
	  @Test
	  public void findNotice() {
		  Notice notice = noticeService.findNoticeById(1);
	    System.out.println(notice.getNid()+"  "+notice.getTitle()+" "+notice.getContentt());
	   
	       System.out.println(notice.getEmployees().getEmpno()+""+notice.getEmployees().getRealname());           
	    
	  }
	  @Test
	  public void findEmployee(){
		  Employee employee=noticeService.findEmployeeById(1002);
		  System.out.println(employee.getEname()+""+employee.getPassword());
	  }
	
	@Test
	public void add(){
		Notice notice=new Notice();
		Employee employee=new Employee();
		notice.setNid(2);
		notice.setTitle("���");
		notice.setContentt("asdas");
		notice.setHtml("asdhawu dd");
		notice.setPubdate(new Date());
		notice.setLastview(new Date());
		notice.setViewcount(34);
		notice.setFilet("yeyeyeye");
		employee.setEmpno(1003);
		notice.setEmployees(employee);
		if(noticeService.add(notice)>0){
			System.out.println("�ɹ�");
		}else{
			System.out.println("ʧ��");
		}
	}
	
	@Test
	public void modify(){
		Notice notice=new Notice();
		Employee employee=new Employee();
		notice.setNid(43);
		notice.setTitle("���");
		notice.setContentt("��������");
		notice.setHtml("��������");
		notice.setPubdate(new Date());
		notice.setLastview(new Date());
		notice.setViewcount(43);
		notice.setFilet("�������۴��մ���");
		employee.setEmpno(1003);
		notice.setEmployees(employee);
		if(noticeService.modify(notice)>0){
			System.out.println("�ɹ�");
		}else{
			System.out.println("ʧ��");
		}
	}
	

	
	@SuppressWarnings("resource")
	@Before
	public void init(){
		ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		noticeService=ctx.getBean("noticeService",NoticeService.class);
	}
}
