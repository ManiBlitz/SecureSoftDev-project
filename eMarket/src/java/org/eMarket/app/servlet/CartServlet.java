/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eMarket.app.servlet;

 
import org.eMarket.app.beans.Cart;
 
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.eMarket.app.beans.User;
import org.eMarket.app.utils.MyUtils;
 
@WebServlet(urlPatterns = { "/cart" })
public class CartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public CartServlet() {
        super();
    }
    
    // Show Cart page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        System.out.println("Goes through the doGet()");
        
        // Checking user connection
        HttpSession session = request.getSession();
 
        // Check User has logged on
        User loginedUser = MyUtils.getLoginedUser(session);
 
        // Not logged in
        if (loginedUser == null) {
            // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        
        //========================
        
        // Check if there is a cart
        Cart cart = MyUtils.getStoredCart(session);
        
 
        // Not logged in
        if (cart == null) {
            // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/productList");
            return;
        }
        List items = cart.getCart();
        // Store info to the request attribute before forwarding.
        request.setAttribute("cart", items); 
        
        //========================

        // Forward to /WEB-INF/views/cartView.jsp
        // (Users can not access directly into JSP pages placed in WEB-INF)
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/views/cartView.jsp");

        dispatcher.forward(request, response);

    }
  
 public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
 
     String errorString = "";
     System.out.println("Goes through the doPost()");
  String strAction = request.getParameter("action");
  request.setAttribute("errorString", errorString);
   
   
  if(strAction!=null && !strAction.equals("")) {
   if(strAction.equals("add")) {
    addToCart(request);
    System.out.println("Item added "+request.getParameter("bookName").toString()+" to cart");
   } /*else if (strAction.equals("Update")) {
    updateCart(request);
   } */else if (strAction.equals("delete")) {
    
   }
  }
  response.sendRedirect(request.getContextPath()+"/cart");
 }
  
 protected void deleteFromCart(HttpServletRequest request) {
  HttpSession session = request.getSession();
  String strItemIndex = request.getParameter("itemIndex");
  Cart cart = null;
   
  Object objCartBean = session.getAttribute("cart");
  if(objCartBean!=null) {
   cart = (Cart) objCartBean ;
  } else {
   cart = new Cart();
  }
  cart.removeFromCart(strItemIndex);
 }
  
 /*protected void updateCart(HttpServletRequest request) {
  HttpSession session = request.getSession();
  String strQuantity = request.getParameter("quantity");
  String strItemIndex = request.getParameter("itemIndex");
  
  Cart cartBean = null;
   
  Object objCartBean = session.getAttribute("cart");
  if(objCartBean!=null) {
   cartBean = (Cart) objCartBean ;
  } else {
   cartBean = new Cart();
  }
  cartBean.updateCartItem(strItemIndex, strQuantity);
 }*/
  
 protected void addToCart(HttpServletRequest request) { // Method optimal
  HttpSession session = request.getSession();
  String strName = request.getParameter("bookName");
  String strPrice = request.getParameter("price");
  String strQuantity = request.getParameter("quantity");
   
  Cart cart = null;
   
  Object objCart = session.getAttribute("cart");
 
  if(objCart!=null) {
   cart = (Cart) objCart ;
  } else {
   cart = new Cart();
   session.setAttribute("cart", cart);
  }
   
  cart.addToCart(strName, Float.parseFloat(strPrice), Integer.parseInt(strQuantity));
  session.setAttribute("cart", cart);
 }
 
}
