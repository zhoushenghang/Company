package com.springmvc.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.springmvc.pojo.Product;
import com.springmvc.service.ProductService;
import com.springmvc.util.Pager;

public class ProductTest {
	
	private ProductService productService;
	
	  @Test
	  public void list() {
	    // easyui �������
	    Integer page = 1;
	    Integer rows = 2;
	    String sort = "pid";
	    String order = "asc";

	    // �������� (��ѡ)
	    String pname = null;
	    String pnum = null;

	    // name = "%��%";

	    // ������ʼҳ�ͽ���ҳ
	    Integer pageno = (page - 1) * rows;
	    Integer pagesize = page * rows;

	    Pager<Product> pager = productService.list(pageno, pagesize, sort, order, pname, pnum);
	    System.out.println("��ҳ����: " + pager.getTotal());
	    for (Product product : pager.getRows()) {
	      System.out.println(product.getPid()+""+product.getPnum()+""+product.getPname()+""+product.getPstyle()+""+product.getPtype()+""+product.getPic());
	    }
	  }
	
	 @Test
	 public void findById() {
		 	Product product = productService.findById(2);
		    System.out.println(product.getPid()+""+product.getPnum()+""+product.getPname()+""+product.getPstyle()+""+product.getPtype()+""+product.getPic());
		 }
	
	@Test
	public void add(){
		Product product=new Product();
		
		product.setPnum("AB#10005");
		product.setPname("����");
		product.setPtype("����");
		product.setPstyle("����");
		product.setPic("AB#10005");
		if(productService.add(product)>0){
			System.out.println("�ɹ�");
		}else{
			System.out.println("ʧ��");
		}
	}


	@Test
	public void modify(){
		Product product=new Product();
		product.setPid(6);
		product.setPnum("AB#10004");
		product.setPname("��ɫ����");
		product.setPtype("����������");
		product.setPstyle("����");
		product.setPic("AB#10004");
		if(productService.modify(product)>0){
			System.out.println("�ɹ�");
		}else{
			System.out.println("ʧ��");
		}
	}
	
	@Test
	public void remove(){
		if(productService.remove(6)>0){
			System.out.println("�ɹ�");
		}else{
			System.out.println("ʧ��");
		}
	}
	
	 @SuppressWarnings("resource")
	  @Before
	  public void init() {
	    ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
	    productService = ctx.getBean("productService", ProductService.class);
	  }
}
