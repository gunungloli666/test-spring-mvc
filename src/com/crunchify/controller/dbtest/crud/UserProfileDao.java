package com.crunchify.controller.dbtest.crud;

import java.util.List;

public interface UserProfileDao {
 
    List<UserProfile> findAll();
     
    UserProfile findByType(String type);
     
    UserProfile findById(int id);
}