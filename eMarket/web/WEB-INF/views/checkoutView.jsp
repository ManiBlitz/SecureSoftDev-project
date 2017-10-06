<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="UTF-8">
     <title>Checkout</title>
  </head>
  <body>
 
     <jsp:include page="_header.jsp"></jsp:include>
     <jsp:include page="_menu.jsp"></jsp:include>
    
      <h3>Checkout</h3>
      
      <b>
          Thank you for your purchase:
      </b>
      <ul>
          <li>
              Name: 
              ${check.card_holder_name}
          </li>
          <li>
              Address:
              ${check.address},
              ${check.apt_number},
              ${check.city},
              ${check.state},
              ${check.country},
              ${check.zip_code}
          </li>
          <li>
              Bill:
              ${check.bill}
          </li>
      </ul>
    </c:out>
  
 
     <jsp:include page="_footer.jsp"></jsp:include>
 
  </body>
</html>
