/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eMarket.app.beans;

/**
 *
 * @author ADMIN
 */
public class Checkout {
    
    //Address elements
    private String address;
    private String apt_number;
    private String city;
    private String state;
    private String country;
    private String zip_code;
    
    //Banking elements
    private String credit_card_number;
    private int cvs;
    private int exp_month;
    private int exp_year;
    private String card_holder_name;
    private float bill;
    
    public Checkout(){
        
    }

    public String getZip_code() {
        return zip_code;
    }

    public void setZip_code(String zip_code) {
        this.zip_code = zip_code;
    }

    
    public float getBill() {
        return bill;
    }

    public void setBill(float bill) {
        this.bill = bill;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getApt_number() {
        return apt_number;
    }

    public void setApt_number(String apt_number) {
        this.apt_number = apt_number;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCredit_card_number() {
        return credit_card_number;
    }

    public void setCredit_card_number(String credit_card_number) {
        this.credit_card_number = credit_card_number;
    }

    public int getCvs() {
        return cvs;
    }

    public void setCvs(int cvs) {
        this.cvs = cvs;
    }

    public int getExp_month() {
        return exp_month;
    }

    public void setExp_month(int exp_month) {
        this.exp_month = exp_month;
    }

    public int getExp_year() {
        return exp_year;
    }

    public void setExp_year(int exp_year) {
        this.exp_year = exp_year;
    }

    public String getCard_holder_name() {
        return card_holder_name;
    }

    public void setCard_holder_name(String card_holder_name) {
        this.card_holder_name = card_holder_name;
    }
    
    
    
}
