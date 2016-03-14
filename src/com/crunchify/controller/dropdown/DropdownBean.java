package com.crunchify.controller.dropdown;
import org.hibernate.validator.constraints.NotEmpty;

public class DropdownBean 
{
	@NotEmpty
	String country;
	String name; 
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	
}