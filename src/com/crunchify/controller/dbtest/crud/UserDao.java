package com.crunchify.controller.dbtest.crud;

import java.util.List;

public interface UserDao {
 
    User findById(int id);
     
    User findBySSO(String sso);
     
    void save(User user);
     
    void deleteBySSO(String sso);
     
    List<User> findAllUsers();
    
    
    
 
}