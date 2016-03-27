package com.crunchify.controller.dbtest.insertdata;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crunchify.controller.dbtest.crud.User;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;


@Repository
@Transactional
public class InsertDataDAO {
	
	@Autowired
	private SessionFactory sessionFactory; 
	
	public SessionFactory getSessionFactory(){
		return sessionFactory; 
	}
	
	public void insertEmployee(EmployeeEntity emp){
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		session.save(emp);
		session.flush();
		session.getTransaction().commit();
		 session.close();
//		session.flush();
	}
	
	@SuppressWarnings("unchecked")
	public List<EmployeeEntity> getAllEmployee(){
		List<EmployeeEntity> list =  sessionFactory.openSession().
				createCriteria(EmployeeEntity.class).list(); 
		return list;
	}
	
}
