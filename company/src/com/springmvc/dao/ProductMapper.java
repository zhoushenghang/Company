package com.springmvc.dao;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.springmvc.pojo.Product;

@Repository("productMapper")
public interface ProductMapper {
	
	 List<Product> findPager(
		      @Param("pageno")Integer pageno,
		      @Param("pagesize")Integer pagesize,
		      @Param("sort")String sort,
		      @Param("order")String order,
		      @Param("pname")String pname,
		      @Param("pnum")String pnum);
		      

		  int findTotal(
		      @Param("pname")String pname,
		      @Param("pnum")String pnum);
		     
	
		  @Insert("insert into T_PRODUCT(PID,PNUM,PNAME,PTYPE,PSTYLE,PIC) values(#{pid},#{pnum},#{pname},#{ptype},#{pstyle},#{pic})")
		  @SelectKey(statement = "select SEQ_PRO.NEXTVAL from DUAL", keyProperty = "pid", resultType = int.class, before = true)
		  int add(Product product);

		  @Update("update T_PRODUCT set PNUM=#{pnum},PNAME=#{pname},PTYPE=#{ptype},PSTYLE=#{pstyle},PIC=#{pic} where PID=#{pid}")
		  int modify(Product product);

		  @Delete("delete from T_PRODUCT where  PID=#{pid}")
		  int remove(Integer pid);

		  @Select("select PID,PNUM,PNAME,PTYPE,PSTYLE,PIC from T_PRODUCT where  PID=#{pid}")
		  Product findById(Integer pid);
		  
		  @Select("select PID,PNUM,PNAME,PTYPE,PSTYLE,PIC from T_PRODUCT")
		  List<Product> find();
}
