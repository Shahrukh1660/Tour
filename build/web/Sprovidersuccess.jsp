<%-- 
    Document   : success
    Created on : 8 May, 2022, 3:31:11 PM
    Author     : sharukh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <% if((session.getAttribute("username")==null)|| (session.getAttribute("username")==" "))
                {%>
                Are You Not LoggedIn<br>
                <a href="userlogin.html">Please Login</a>
                <%
                }
                else{
                %>
                
                Welcome <%= session.getAttribute("username")%>
                <pre>
                    <a href="ADD.html">ADD PRODUCT</a>  | <a href="delete.html">Delete Product</a> |    <a href="update.html">UPDATE PRODUCT</a> | <a href="view.html">View Product</a> |<a href="ViewAllProducts.jsp">View All</a> | <a href="logout.jsp">LOGOUT</a>
                    
                    <%}
%>


               
    </body>
</html>
