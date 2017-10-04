/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eMarket.app.utils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
 
import org.eMarket.app.beans.Book;
import org.eMarket.app.beans.User;
 
public class DBUtils {
 
    public static User findUser(Connection conn, //
            String userName, String password) throws SQLException {
 
        String sql = "Select a.userName, a.password, a.sex from user a " //
                + " where a.userName = ? and a.password= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, password);
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            String gender = rs.getString("sex");
            User user = new User();
            user.setUserName(userName);
            user.setPassword(password);
            user.setGender(gender.charAt(0));
            return user;
        }
        return null;
    }
 
    public static User findUser(Connection conn, String userName) throws SQLException {
 
        String sql = "Select a.userName, a.password, a.sex from user a "//
                + " where a.userName = ? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
 
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            String password = rs.getString("password");
            String gender = rs.getString("sex");
            User user = new User();
            user.setUserName(userName);
            user.setPassword(password);
            user.setGender(gender.charAt(0));
            return user;
        }
        return null;
    }
 
    public static List<Book> queryProduct(Connection conn) throws SQLException {
        String sql = "Select a.* from book a ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<Book> list = new ArrayList<Book>();
        while (rs.next()) {
            int code = rs.getInt("id_book");
            String name = rs.getString("name");
            float price = rs.getFloat("price");
            String author = rs.getString("author");
            String editor = rs.getString("editor");
            Date releaseDate = rs.getDate("release_date");
            int units = rs.getInt("units");
            int num_pages = rs.getInt("num_pages");
            String genre = rs.getString("genre");
            Book product = new Book();
            product.setCode(code);
            product.setName(name);
            product.setPrice(price);
            product.setAuthor(author);
            product.setEditor(editor);
            product.setReleaseDate(releaseDate);
            product.setUnits(units);
            product.setNumPages(num_pages);
            product.setGenre(genre);
            list.add(product);
        }
        return list;
    }
 
/*    public static Product findProduct(Connection conn, String code) throws SQLException {
        String sql = "Select a.Code, a.Name, a.Price from Product a where a.Code=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, code);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
            String name = rs.getString("Name");
            float price = rs.getFloat("Price");
            Product product = new Product(code, name, price);
            return product;
        }
        return null;
    }
    */
 
    public static void updateProduct(Connection conn, Book product) throws SQLException {
        String sql = "Update Product set Units=? where Code=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setInt(1, product.getUnits());
        pstm.setInt(2, product.getCode());
        pstm.executeUpdate();
    }

    public static void registerUser(Connection conn, User newUser) throws SQLException {
        String sql = "Insert into user(userName, l_name,f_name, sex, email, password, phone_num, date_of_birth) values (?,?,?,?,?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, newUser.getUserName());
        pstm.setString(2, newUser.getLastName());
        pstm.setString(3, newUser.getFirstName());
        pstm.setString(4, ""+newUser.getGender());
        pstm.setString(5, newUser.getEmail());
        pstm.setString(6, newUser.getPassword());
        pstm.setString(7, newUser.getPhoneNumber());
        pstm.setDate(8, (Date) newUser.getDOB());
        
 
        pstm.executeUpdate();
    }
/*
    public static void deleteProduct(Connection conn, String code) throws SQLException {
        String sql = "Delete From Product where Code= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, code);
 
        pstm.executeUpdate();
    }
*/
 
}
