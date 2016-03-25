package com.crunchify.controller.ajax.dropdown;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class KategoriService {

	
	@Autowired
	private KategoriDAO kategoriDAO; 
	
	public List<Kategori> getAllKategori(){
		return kategoriDAO.getAllKategori(); 
	}
	
	public List<Product> getAllProductByCategory(String id){
		return kategoriDAO.getAllProductByCategory(id); 
	}
 	
}
