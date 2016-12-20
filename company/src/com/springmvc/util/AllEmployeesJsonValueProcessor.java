package com.springmvc.util;

import com.springmvc.pojo.Employee;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

public  class AllEmployeesJsonValueProcessor  implements JsonValueProcessor{

	public AllEmployeesJsonValueProcessor() {
		
	}

	@Override
	public Object processArrayValue(Object value, JsonConfig config) {
		// TODO Auto-generated method stub
		return process(value);
	}

	@Override
	public Object processObjectValue(String key, Object value, JsonConfig arg2) {
		// TODO Auto-generated method stub
		return null;
	}
	
	private Object process(Object value) {
	    if (value instanceof Employee) {
	      return ((Employee) value).getDept().getDname();
	    }
	    return value == null ? "" : value.toString();
	  }

	
}
