  <%--
  Created by IntelliJ IDEA.
  User: alextr
  Date: 10/10/19
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="customer.Customer"%>
<%@ page import="java.util.ArrayList" %>
<html>
  <head>
    <title>Customer List</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
  </head>
  <body>
  <%
      ArrayList<Customer> list = new ArrayList<>();
      Customer firstCus = new Customer("Spongebob", 10, "Sea", "image1.jpg");
      Customer secondCus = new Customer("Patrick", 10, "Pineapple", "image2.jpg");
      Customer thirdCus = new Customer("Squidward", 15, "Burger", "image3.jpg");
      list.add(firstCus);
      list.add(secondCus);
      list.add(thirdCus);

      pageContext.setAttribute("list", list);
  %>
  <table border="1px" class="content">
      <tr>
          <td>Name</td>
          <td>Age</td>
          <td>Address</td>
          <td>Image</td>
      </tr>
      <c:forEach var="customer" items="#{list}">
          <tr>
              <td><c:out value="${customer.getName()}"></c:out></td>
              <td><c:out value="${customer.getAge()}"></c:out></td>
              <td><c:out value="${customer.getAddress()}"></c:out></td>
              <td><img width="150px"  height="150px" src="image/<c:out value="${customer.getPicture()}"/>"></td>
          </tr>
      </c:forEach>
  </table>
  </body>
</html>
