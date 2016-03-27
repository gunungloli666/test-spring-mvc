package com.crunchify.controller.dbtest.insertdata;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

/**
 * untuk mengetes kenapa proses Insert di crud ga berjalan dengan baik=... 
 * 
 * @author fajar66
 *
 */
@Controller
public class InsertEmployeeController {
	
	@Autowired
	private InsertDataDAO insertDataDAO; 
	
	@RequestMapping(value="employee/insert" , method=RequestMethod.GET )
	public String insertEmployee(ModelMap map){
		EmployeeEntity emp = new EmployeeEntity();
		map.addAttribute("employee" , emp); 
		return "/insert-employee/insert"; 
	}	
	
	@RequestMapping(value="employee/insert" , method=RequestMethod.POST)
	public RedirectView insertEmployee1(@Valid EmployeeEntity employee){
		insertDataDAO.insertEmployee(employee);
//		map.addAttribute("employees", insertDataDAO.getAllEmployee()); 
		return new RedirectView("/status", true ); 
	}
	
	@RequestMapping(value="/status",  method=RequestMethod.GET )
	public String getSuccessView(ModelMap map){
		map.addAttribute("employees", insertDataDAO.getAllEmployee()); 
		return "/insert-employee/status"; 
	}
	

}
