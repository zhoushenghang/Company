package com.springmvc.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;


import com.springmvc.pojo.Employee;
import com.springmvc.pojo.Notice;

@Repository("noticeMapper")
public interface NoticeMapper {
	
	Notice findNoticeById(Integer nid);
	Employee findEmployeeById(Integer empno);

	
	 List<Notice> findPager(
		      @Param("pageno")Integer pageno,
		      @Param("pagesize")Integer pagesize,
		      @Param("sort")String sort,
		      @Param("order")String order,
		      @Param("title")String title,
		      @Param("beginDate")Date beginDate,
		      @Param("endDate")Date endDate);

		  int findTotal(
		      @Param("title")String title,
		      @Param("beginDate")Date beginDate,
		      @Param("endDate")Date endDate);
	
	@Insert("insert into T_NOTICE(NID,TITLE,CONTENTT,HTML,EMPNO,PUBDATE,LASTVIEW,VIEWCOUNT,FILET) values"
			+ "(#{nid},#{title,jdbcType=VARCHAR},#{contentt,jdbcType=VARCHAR},#{html,jdbcType=VARCHAR},"
			+ "#{employees.empno},#{pubdate,jdbcType=DATE},#{lastview,jdbcType=DATE},#{viewcount},#{filet,jdbcType=VARCHAR})")
	@SelectKey(statement="select SEQ_NOTICE.NEXTVAL from DUAL",keyProperty="nid",resultType=int.class,before=true)
	int add(Notice notice);
	
	@Update("update T_NOTICE set TITLE=#{title,jdbcType=VARCHAR},CONTENTT=#{contentt,jdbcType=VARCHAR},"
			+ "HTML=#{html,jdbcType=VARCHAR},EMPNO=#{employees.empno},PUBDATE=#{pubdate,jdbcType=DATE},"
			+ "LASTVIEW=#{lastview,jdbcType=DATE},VIEWCOUNT=#{viewcount},FILET=#{filet,jdbcType=VARCHAR} where NID=#{nid} ")
	int modify(Notice notice);
	
	@Select("select NID,TITLE,CONTENTT,HTML,EMPNO,PUBDATE,LASTVIEW,VIEWCOUNT,FILET from T_NOTICE  where NID=#{nid}")
	Notice findById(Integer nid);
	
	
}
