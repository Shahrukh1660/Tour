<%-- 
    Document   : userpage
    Created on : 10 May, 2022, 2:26:33 PM
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
         <link rel="stylesheet" href="userpage2.css">
            <% if((session.getAttribute("username")==null)|| (session.getAttribute("username")==" "))
                {
            
            %>
                Are You Not LoggedIn<br>
                <a href="userlogin.html">Please Login</a>
                <%
                }
                else{
                %>
                
                Welcome <%= session.getAttribute("username")%>
                <% String uname=session.getAttribute("username").toString();
                session.setAttribute("uname", uname);%>
                   
                <nav>
                     <a href="useredit.jsp">EDIT</a>   <a href="booku.html">BOOK TRIP</a> <a href="cancelseat.jsp">CANCEL SEAT</a>  <a href="viewall.jsp">VIEW ALL TOURS</a> <a href="feedback.html">FEEDBACK</a>  <a href="logout.jsp">LOGOUT</a>
                     <div class="animation start-home"></div></nav>
                    <%}
%>
    </body>
</html>

