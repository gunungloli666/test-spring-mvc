package com.crunchify.controller.upload;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UploadController {
	
	@RequestMapping("/upload")
	public String getUploadPage(ModelMap model){
		model.put("name", "Mohammad Fajar");
		return "upload/upload"; 
	}

}
