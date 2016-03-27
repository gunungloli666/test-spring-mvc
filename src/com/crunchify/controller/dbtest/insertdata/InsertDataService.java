package com.crunchify.controller.dbtest.insertdata;

import org.springframework.beans.factory.annotation.Autowired;

public class InsertDataService {
	
	@Autowired
	private InsertDataDAO insertDataDAO; 
		
	public void insertEmployee(EmployeeEntity emp){
		insertDataDAO.insertEmployee(emp);
	}
	
}
