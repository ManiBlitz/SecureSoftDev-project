/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eMarket.app.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.YearMonth;
import java.util.Calendar;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.eMarket.app.beans.Cart;
import org.eMarket.app.beans.Checkout;
 
import org.eMarket.app.utils.DBUtils;
import org.eMarket.app.utils.MyUtils;
 
@WebServlet(urlPatterns = { "/checkout" })
public class checkoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public checkoutServlet() {
        super();
    }
 
    // Show product creation page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/WEB-INF/views/checkoutView.jsp");
        dispatcher.forward(request, response);
    }
 
    // When the user enters the product information, and click Submit.
    // This method will be called.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request); 
        HttpSession session = request.getSession();
        
        //Address parameters
        String address = (String) request.getParameter("address");
        String apt_number = (String) request.getParameter("apt");
        String city = (String) request.getParameter("city");
        String state = (String) request.getParameter("state");
        String country = (String) request.getParameter("country");
        String zip_code = (String) request.getParameter("zip_code");
        
        //Banking parameters
        int cvs_number = 0;
        int exp_month_number = 0;
        int exp_year_number = 0;
        float bill_number = 0;
        
        String card_number = (String) request.getParameter("card_number");
        
        String CVS = (String) request.getParameter("cvs");
        if(!CVS.equals("")){
            cvs_number = Integer.parseInt(CVS);
        }
        

        String exp_month = (String) request.getParameter("exp_month");
        if(!exp_month.equals("")){
            exp_month_number = Integer.parseInt(exp_month);
        }
      
        String exp_year = (String) request.getParameter("exp_year");
        if(!exp_year.equals("")){
            exp_year_number = Integer.parseInt(exp_year);
        }
        
        String card_holder = (String) request.getParameter("card_holder");
        
        String bill = (String) request.getParameter("bill");
        if(!bill.equals("")){
            bill_number = Float.parseFloat(bill);
        }
        
        
        
        Checkout check = new Checkout();
        
        check.setAddress(address);
        check.setApt_number(apt_number);
        check.setCity(city);
        check.setState(state);
        check.setCountry(country);
        check.setZip_code(zip_code);
        
        check.setCredit_card_number(card_number);
        check.setCvs(cvs_number);
        check.setExp_month(exp_month_number);
        check.setExp_year(exp_year_number);
        check.setCard_holder_name(card_holder);
        
        check.setBill(bill_number);
        
        
 
        String errorString = null;
        
        // Credit card regex
        // All credits cards are of the format ****-****-****-****
        String card_number_regex = "[1-9][0-9]{15}";
        
        // Credit CVS regex
        // All CVS cards have a three digits format
        String cvs_regex = "[1-9]{1}[0-9]{2}";
        
        // Zip code regex
        // The zip code can have at least digits
        String zip_code_regex = "^[0-9]{5}(-[0-9]{4})?$";
 
        
        if (address == null){
            errorString = "You must provide an address";    
        }else if(city == null){
            errorString = "You must provide a city";
        }else if(state == null){
            errorString = "You must provide a state";
        }else if(country == null){
            errorString = "You must provide a country";
        }else if(card_number == null || !card_number.matches(card_number_regex)){
            errorString = "Your card number is invalid, enter the 16 digits of your credit card";
        }else if(cvs_number <100){
            errorString = "Your CVS is invalid. Please enter the three digits of your CVS";
        }else if(exp_month_number <1 && exp_month_number > 12){
            errorString = "Invalid expiration date. Please set a valid one";
        }else if(exp_year_number <  Calendar.getInstance().get(Calendar.YEAR)){
            errorString = "Invalid expiration date. Please set a valid one";
        }else if(YearMonth.of(exp_year_number,exp_month_number).isBefore(YearMonth.now())){
            errorString = "Your card is expired";
        }else if(card_holder == null){
            errorString = "You must provide a card holder name";
        }else if(zip_code == null || !zip_code.matches(zip_code_regex)){
            errorString = "Invalid Zip code provided";
        }
        
        
        if (errorString == null) {
            try {
                DBUtils.checkoutProcess(conn, check);
            } catch (SQLException e) {
                e.printStackTrace();
                errorString = e.getMessage();
            }
        }
 
        // Store infomation to request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("check", check);
 
        // If error, forward to cart page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/cartView.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
            session.removeAttribute("cart");
            response.sendRedirect(request.getContextPath() + "/checkout");
        }
    }
 
}

