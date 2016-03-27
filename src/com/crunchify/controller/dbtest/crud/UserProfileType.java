package com.crunchify.controller.dbtest.crud;
public enum UserProfileType {
	
	User("User"), 
    Bankir("Bankir"),
    Petani("Petani"),
    Penjahit("Penjahit"),
	Professor("Professor");
	
     
    String userProfileType;
     
    private UserProfileType(String userProfileType){
        this.userProfileType = userProfileType;
    }
     
    public String getUserProfileType(){
        return userProfileType;
    }
     
}