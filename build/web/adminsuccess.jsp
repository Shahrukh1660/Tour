<%-- 
    Document   : adminsuccess
    Created on : 11 May, 2022, 7:23:01 PM
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
        <link rel="stylesheet" href="adminsuccess.css">
        <% if((session.getAttribute("username")==null)|| (session.getAttribute("username")==" "))
                {%>
                Are You Not LoggedIn<br>
                <a href="adminlogin.html">Please Login</a>
                <%
                }
                else{
                %>
                
                <h1> Welcome <%= session.getAttribute("username")%></h1>
                <% String uname=session.getAttribute("username").toString();
                session.setAttribute("uname", uname);%>
                
                <ul>
                    <li> <a href="addadmin.html">ADD PRODUCT</a></li>   <li><a href="deleteadmin.html">Delete Product</a></li> <li> <a href="updateadmin.html">UPDATE PRODUCT</a> </li> <li> <a href="bookedadmin.jsp">BOOKED SEATS</a></li> <li><a href="sprovideradmin.jsp">SERVICE PROVIDER DETAILS</a> </li><li><a href="viewall.jsp">View All</a> </li> <li> <a href="logout.jsp">LOGOUT</a></li>
                </ul>
                    <%}
%>
    </body>
</html>
