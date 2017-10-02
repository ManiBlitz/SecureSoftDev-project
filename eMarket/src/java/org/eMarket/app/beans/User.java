/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eMarket.app.beans;

import java.util.Date;

/**
 *
 * @author ADMIN
 */
public class User {
    public static final char GENDER_MALE = 'M';
    public static final char GENDER_FEMALE = 'F';
    
    private String l_name;
    private String f_name;
    private String userName;
    private char sex;
    private Date date_of_birth;
    private String email;
    private String phoneNumber;
    private String password;
    
    public User(){
        
    }
    
    public String getUserName(){
        return this.userName;
    }
    
    public void setUserName(String user){
        this.userName = user;
    }
    
    public char getGender(){
        return this.sex;
    }
    
    public void setGender(char sex){
        this.sex = sex;
    }
    
    public String getEmail(){
        return this.email;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public String getPhoneNumber(){
        return this.phoneNumber;
    }
    
    public void setPhoneNumber(String phone){
        this.phoneNumber = phone;
    }
    
    public String getLastName(){
        return this.l_name;
    }
    
    public void setLastName(String last){
        this.l_name = last;
    }
    
    public String getFirstName(){
        return this.f_name;
    }
    
    public void setFirstName(String first){
        this.f_name = first;
    }
    
    public Date getDOB(){
        return this.date_of_birth;
    }
    
    public void setDOB(Date db){
        this.date_of_birth = db;
    }
    
    public void setPassword(String pw){
        this.password = pw;
    }
    
    public String getPassword(){
        return this.password;
    }
    
}
