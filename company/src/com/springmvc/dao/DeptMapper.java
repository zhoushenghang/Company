package com.springmvc.dao;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.springmvc.pojo.Dept;


@Repository("deptMapper")
public interface DeptMapper {
	
	 List<Dept> findPager(
		      @Param("pageno")Integer pageno,
		      @Param("pagesize")Integer pagesize,
		      @Param("sort")String sort,
		      @Param("order")String order,
		      @Param("dname")String dname);
	 int findTotal(
				@Param("dname") String dname);

		  @Insert("insert into T_DEPT (DEPTNO,DNAME,REMARK) values(#{deptno},#{dname},#{remark})")
		  @SelectKey(statement = "select SEQ_DEPT.NEXTVAL from DUAL", keyProperty = "deptno", resultType = int.class, before = true)
		  int add(Dept dept);

		  @Update("update T_DEPT set DNAME=#{dname},REMARK=#{remark} where DEPTNO=#{deptno}")
		  int modify(Dept dept);

		  @Delete("delete from T_DEPT where  DEPTNO=#{deptno}")
		  int remove(Integer deptno);

		  @Select("select DEPTNO,DNAME,REMARK from T_DEPT where  DEPTNO=#{deptno}")
		  Dept findById(Integer deptno);
		  
		  @Select("select DEPTNO,DNAME,REMARK from T_DEPT")
		  List<Dept> find();
}
