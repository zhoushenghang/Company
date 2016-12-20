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
	    // easyui 必需参数
	    Integer page = 1;
	    Integer rows = 2;
	    String sort = "pid";
	    String order = "asc";

	    // 条件参数 (可选)
	    String pname = null;
	    String pnum = null;

	    // name = "%拉%";

	    // 处理起始页和结束页
	    Integer pageno = (page - 1) * rows;
	    Integer pagesize = page * rows;

	    Pager<Product> pager = productService.list(pageno, pagesize, sort, order, pname, pnum);
	    System.out.println("分页总数: " + pager.getTotal());
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
		product.setPname("衬衫");
		product.setPtype("上衣");
		product.setPstyle("流行");
		product.setPic("AB#10005");
		if(productService.add(product)>0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
	}


	@Test
	public void modify(){
		Product product=new Product();
		product.setPid(6);
		product.setPnum("AB#10004");
		product.setPname("白色衬衫");
		product.setPtype("上衣连体衣");
		product.setPstyle("流行");
		product.setPic("AB#10004");
		if(productService.modify(product)>0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
	}
	
	@Test
	public void remove(){
		if(productService.remove(6)>0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
	}
	
	 @SuppressWarnings("resource")
	  @Before
	  public void init() {
	    ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
	    productService = ctx.getBean("productService", ProductService.class);
	  }
}
