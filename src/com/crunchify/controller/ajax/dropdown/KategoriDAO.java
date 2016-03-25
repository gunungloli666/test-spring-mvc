package com.crunchify.controller.ajax.dropdown;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class KategoriDAO {

	
	@Autowired
	private SessionFactory sessionFactory; 
	
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Kategori> getAllKategori(){
		List<Kategori> listOfKategori = sessionFactory.openSession().
				createCriteria(Kategori.class).list(); 
		return listOfKategori; 
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Product> getAllProductByCategory( 
			String categoryId){
		List<Product> listOfProduct = sessionFactory.openSession().
				createQuery("from Product p where p.kategoryId like \'" + categoryId + "\'").list(); 
//		System.out.println("panjang hasil: " + listOfProduct.size()) ; 
		return listOfProduct;
	}
	
	
}
