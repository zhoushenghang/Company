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
		notice.setTitle("Ëæ±ã");
		notice.setContentt("asdas");
		notice.setHtml("asdhawu dd");
		notice.setPubdate(new Date());
		notice.setLastview(new Date());
		notice.setViewcount(34);
		notice.setFilet("yeyeyeye");
		employee.setEmpno(1003);
		notice.setEmployees(employee);
		if(noticeService.add(notice)>0){
			System.out.println("³É¹¦");
		}else{
			System.out.println("Ê§°Ü");
		}
	}
	
	@Test
	public void modify(){
		Notice notice=new Notice();
		Employee employee=new Employee();
		notice.setNid(43);
		notice.setTitle("Ëæ±ã");
		notice.setContentt("°¢ÈøµÂÎÒ");
		notice.setHtml("°¢ÈøµÂÍÛ");
		notice.setPubdate(new Date());
		notice.setLastview(new Date());
		notice.setViewcount(43);
		notice.setFilet("°¢ÈøµÂÍÛ´óËÕ´òÍÛ");
		employee.setEmpno(1003);
		notice.setEmployees(employee);
		if(noticeService.modify(notice)>0){
			System.out.println("³É¹¦");
		}else{
			System.out.println("Ê§°Ü");
		}
	}
	

	
	@SuppressWarnings("resource")
	@Before
	public void init(){
		ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		noticeService=ctx.getBean("noticeService",NoticeService.class);
	}
}
