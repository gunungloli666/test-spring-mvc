package com.crunchify.controller.dbtest.makanan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DaftarMakananController {
	
	@RequestMapping(value = "add-makanan")
	public String insertData(){	
		return "daftar-makanan/insert"; 
	}
}

