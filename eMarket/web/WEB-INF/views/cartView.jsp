<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Cart</title>
 </head>
 <body>
 
    <jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu.jsp"></jsp:include>
 
    <h3>Cart</h3>
 
    
 
    <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>Name</th>
          <th>Price</th>
          <th>Units</th>
          <th>Total</th>
       </tr>
       <c:forEach items="${cart}" var="product" >
          <tr>
             <td>${product.bookName}</td>
             <td>${product.unitPrice}</td>
             <td>${product.units}</td>
             <td>${product.total}</td>
          </tr>
       </c:forEach>
    </table>
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>
