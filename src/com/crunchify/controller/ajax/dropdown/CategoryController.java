package com.crunchify.controller.ajax.dropdown;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CategoryController {
	
	@Autowired
	private KategoriService kategoriService; 
	
	@RequestMapping(value="/daftar-kategori/kategori")
	public String getKategory(Model m){
		m.addAttribute("category_list", kategoriService.getAllKategori());  
		return "/daftar-kategori/kategori";  
	}
	
	@RequestMapping(value="/daftar-kategori/products_ajax")
	public @ResponseBody List<Product> getAllProductByKategori(
		@RequestParam(value = "id", required = true) String id ){
		System.out.println("ganti product"); 
		System.out.println("id = " + id); 
		return kategoriService.getAllProductByCategory(id); 
	}

}
