
package com.springmvc.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;


import com.springmvc.pojo.Employee;


@Repository("employeeMapper")
public interface EmployeeMapper {
	

	@Insert("insert into T_EMPLOYEE (EMPNO,ENAME,PASSWORD,REALNAME,SEX,DEPT,JOB,HIREDATE,STATE) values "
			+ "(#{empno},#{ename},#{password},#{realname},#{sex},#{dept.deptno},#{job},#{hiredate},#{state})")
	@SelectKey(statement = "select SEQ_EMP.NEXTVAL from DUAL", keyProperty = "empno", resultType = int.class, before = true)
	int add(Employee employee);

	@Update("update T_EMPLOYEE set ENAME=#{ename},PASSWORD=#{password},"
			+ "REALNAME=#{realname},SEX=#{sex},DEPT=#{dept.deptno},JOB=#{job},HIREDATE=#{hiredate},"
			+ "STATE=#{state} where EMPNO=#{empno} ")
	int modify(Employee employee);

	@Delete("delete from T_EMPLOYEE where  EMPNO=#{empno}")
	int remove(Integer empno);
	
	@Select("select EMPNO,ENAME,PASSWORD,REALNAME,SEX,DEPT,JOB,HIREDATE,STATE from T_EMPLOYEE")
	List<Employee> findAll();

	Employee findById(Integer empno);


	/**
	 * ģ����ѯ
	 */
	public List<Employee> findParam(
			@Param("realname") String realname, 
			@Param("sex") String sex,
			@Param("deptno") Integer dept,
			@Param("state") String state,
			@Param("beginDate") Date beginDate,
			@Param("endDate") Date endDate);

	/**
	 * ��ҳ��ѯ
	 */
	public List<Employee> findPager(
			@Param("realname") String realname, 
			@Param("sex") String sex,
			@Param("deptno") Integer dept,
			@Param("state") String state,
			@Param("beginDate") Date beginDate,
			@Param("endDate") Date endDate,
			@Param("beginPage")Integer beginPage,
			@Param("endPage")Integer endPage,
			@Param("sort") String sort, 
			@Param("order") String order);

	/**
	 * ��ѯ��¼����
	 */
	public int findTotal(
			@Param("realname") String realname, 
			@Param("sex") String sex,
			@Param("deptno") Integer dept,
			@Param("state") String state,
			@Param("beginDate") Date beginDate,
			@Param("endDate") Date endDate);
}
