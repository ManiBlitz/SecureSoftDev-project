/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eMarket.app.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Date;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.eMarket.app.beans.User;
import org.eMarket.app.utils.DBUtils;
import org.eMarket.app.utils.MyUtils;
 
@WebServlet(urlPatterns = { "/registration" })
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public RegistrationServlet() {
        super();
    }
 
    // Show product creation page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/WEB-INF/views/registrationView.jsp");
        dispatcher.forward(request, response);
    }
 
    // When the user enters the product information, and click Submit.
    // This method will be called.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String last_name = (String) request.getParameter("l_name");
        String first_name = (String) request.getParameter("f_name");
        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");
        String sex = (String) request.getParameter("sex");
        String email = (String) request.getParameter("email");
        String phone_number = (String) request.getParameter("phone_number");
        String dob = request.getParameter("date_of_birth");
        
        User newUser = new User();
        
        newUser.setLastName(last_name);
        newUser.setFirstName(first_name);
        newUser.setUserName(username);
        newUser.setPassword(password);
        if(sex != null){
            newUser.setGender(sex.charAt(0));
        }
        newUser.setEmail(email);
        newUser.setPhoneNumber(phone_number);
        if(dob != null){
            
            String date_parts[] = dob.split("/");
            int year = Integer.parseInt(date_parts[2]);
            int month = Integer.parseInt(date_parts[0]);
            int day = Integer.parseInt(date_parts[1]);
            newUser.setDOB(new Date(year,month,day));
        }
 
        String errorString = null;
 
        // Product ID is the string literal [a-zA-Z_0-9]
        // with at least 1 character
        String regex = "\\w+";
        
        // Email regex: 
        // All emails should be of the form *****@******.***
        String email_regex = "[a-zA-Z0-9]+@[a-zA-Z]*[.][a-z]{3}"; 
        
        // password regex
        // All passwords must contain at least one uppercase, one lowercase
        // one number and be 8 characters long at least.
        String password_regex = "^\\S*(?=\\S{8,})(?=\\S*[a-z])(?=\\S*[A-Z])(?=\\S*[\\d])\\S*$";
        
        // Phone number regex
        // The phone number assumes the standard of the US
        String phone_regex = "[0-9]{3}[0-9]{3}[0-9]{4}";
        
        // Username regex
        // The username must start with a letter and should not contain any
        // special character.
        String username_regex = "[a-zA-Z]{1}[a-zA-Z0-9]{1,29}";
        
        // Date regex
        // The date will be of the format mm/dd/yyyy
        String date_regex = "^\\d{2}\\/\\d{2}\\/\\d{4}$";
        
        if (last_name == null) {
            errorString = "You must provide a last name";
        }else if(first_name == null){
            errorString = "You must provide a first name";
        }else if(password == null || !password.matches(password_regex)){
            errorString = "Invalid password. It must containt at least 1 uppercase"+
                    "1 lowercase, 1 number and be 8 characters long";
        }else if(email == null || !email.matches(email_regex)){
            errorString = "Invalid email. The email should be of the form exmaple@123.any";
        }else if(phone_number == null || !phone_number.matches(phone_regex)){
            errorString = "Invalid phone number. Please enter a valid one";
        }else if(username == null || !username.matches(username_regex)){
            errorString = "Invalid username. The username must start by a alphabetical"+
                    " character, be less than 30 characters long, without special characters";
        }else if(dob == null || !dob.matches(date_regex)){
            errorString = "Invalid date format. The date must be of the form mm/dd/yyyy";
        }
 
        if (errorString == null) {
            try {
                DBUtils.registerUser(conn, newUser);
            } catch (SQLException e) {
                e.printStackTrace();
                errorString = e.getMessage();
            }
        }
 
        // Store infomation to request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("newUser", newUser);
 
        // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/registrationView.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
            response.sendRedirect(request.getContextPath() + "/home");
        }
    }
 
}
