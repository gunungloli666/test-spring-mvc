package com.crunchify.controller.dbtest.crud;
import java.util.List;


public interface UserProfileService {
 
    UserProfile findById(int id);
 
    UserProfile findByType(String type);
     
    List<UserProfile> findAll();
     
}