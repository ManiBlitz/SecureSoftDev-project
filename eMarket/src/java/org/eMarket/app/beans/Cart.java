/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eMarket.app.beans;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class Cart {
    
    public class CartItem{
        
        private String bookName;
        private float unitPrice;
        private int units;
        private float total;
        
        public CartItem(String name, float price, int unit){
            this.bookName = name;
            this.unitPrice = price;
            this.units = unit;
        }
        

        public int getUnits() {
            return units;
        }

        public void setUnits(int units) {
            this.units = units;
        }

        public String getBookName() {
            return bookName;
        }

        public void setBookName(String bookName) {
            this.bookName = bookName;
        }

        public float getUnitPrice() {
            return unitPrice;
        }

        public void setUnitPrice(float unitPrice) {
            this.unitPrice = unitPrice;
        }
        
        public float getTotal(){
            return this.unitPrice*(float)this.units;
        }

    }
    
    private List<CartItem> cart = new ArrayList<>();
    private String userName;
    
    public Cart(){
        
    }

    public List<CartItem> getCart() {
        return cart;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    public void addToCart(String bookName, float unitPrice, int units){
        this.cart.add(new CartItem(bookName, unitPrice,units));
    }
    
    public void removeFromCart(String itemName){
        int i = 0;
        for( CartItem x: this.cart){
            if(x.bookName.equals(itemName)){
                break;
            }else{
                i++;
            }
        }
        this.cart.remove(i);
    }
    
    public int getNumberElements(){
        return this.cart.size();
    }
    
    public float getTotal(){
        float amount = 0;
        for (CartItem x : this.cart){
            amount += x.getTotal();
        }
        return amount;
    }
    
}
