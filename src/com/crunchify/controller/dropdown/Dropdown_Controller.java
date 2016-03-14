package com.crunchify.controller.dropdown;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Dropdown_Controller 
{
	ModelAndView mav = null;
	@ModelAttribute("countryList")
	public List<String> getCountry()
	{
		List<String> countryList = new ArrayList<String>();
		countryList.add("India");
		countryList.add("Australia");
		countryList.add("England");
		return countryList;
	}
	
	
	@ModelAttribute("nameList")
	public List<String> getName(){
		List<String> nameList = new ArrayList<>(); 
		nameList.add("Mohammad Fajar"); 
		nameList.add("Usman"); 
		nameList.add("Teman ku"); 
		return nameList; 
	}
	
	@RequestMapping("/DropdownExample")
	public String dispForm(Map<String, DropdownBean> model)
	{
		DropdownBean db = new DropdownBean();
		model.put("db" , db );
		return "SpringMVC_DropdownExample";
	}
	
	@RequestMapping(value= "/processCountry", method=RequestMethod.POST )
	public String processForm(@Valid @ModelAttribute("db") 
		DropdownBean db1 , BindingResult result) {
		if(result.hasErrors())
		{
			System.out.println("Validation Failed");
			return "SpringMVC_DropdownExample";
		}
		else
		{
			System.out.println("Validated Successfully");
			return "dropdown_Success";
		}
	}
}