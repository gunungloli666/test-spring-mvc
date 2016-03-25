package com.crunchify.controller.ajax.dropdown;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="daftar_product")
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private String productId; 
	
	
	@Column(name="name")
	private String productName;
	
	
	@Column(name="kategori_id")
	private String kategoryId; 
	

	public String getKategoryId() {
		return kategoryId;
	}


	public void setKategoryId(String kategoryId) {
		this.kategoryId = kategoryId;
	}


	public String getProductId() {
		return productId;
	}


	public void setProductId(String productId) {
		this.productId = productId;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	} 

}
