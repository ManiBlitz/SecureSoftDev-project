<%-- 
    Document   : _menu
    Created on : Oct 1, 2017, 3:21:04 PM
    Author     : ADMIN
--%>

<%@page import="org.eMarket.app.beans.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
    
<div style="padding: 5px;">
 
   <a href="${pageContext.request.contextPath}/">Home</a>
   |
   <a href="${pageContext.request.contextPath}/productList">Product List</a>
   |
   <a href="${pageContext.request.contextPath}/userInfo">My Account Info</a>
   |
   <a href="${pageContext.request.contextPath}/cart">
       Cart
       <% 
           if(session.getAttribute("cart") != null){
               Cart cart = (Cart) session.getAttribute("cart");
               //System.out.println(cart.getNumberElements());
               int cart_items = cart.getNumberElements();
               %>
               (<b><%out.print(cart_items);%></b>)
               <%
           }
       %>
   </a>
   <%  
     if (session.getAttribute("loginedUser") == null) {  
   %>
   |
   <a href="${pageContext.request.contextPath}/login">Login</a>
   |
   <a href="${pageContext.request.contextPath}/registration">Sign up</a>
   <%
       }else{


    %>
    |
   <a href="${pageContext.request.contextPath}/logout">Logout</a>
   <%
       }
   %>
</div>  
