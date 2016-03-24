package com.crunchify.controller.dbtest.person;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//import com.ekiras.service.PersonService;

@Controller
@RequestMapping(value="/person")
public class PersonController {

	@Autowired
	private PersonService personService;
	
	@RequestMapping(value="/list")
	public String list(Model model, Integer offset, Integer maxResults){
		model.addAttribute("persons", personService.list(offset, maxResults));
		model.addAttribute("count", personService.count());
		model.addAttribute("offset", offset);
		return "/person/list";
	}
	
	
	@RequestMapping(value="/full-list")
	public String fullList(Model model){
		model.addAttribute("persons", personService.list());
		model.addAttribute("count", personService.count());
		return "/person/full-list"; 
	}
	
	@RequestMapping(value="/save")
	public String save(){
		personService.save();
		return "/person/list";
	}
	
}
