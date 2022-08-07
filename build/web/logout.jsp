<%-- 
    Document   : logout
    Created on : 12 May, 2022, 11:04:45 PM
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
<% session.setAttribute("un",null);
session.invalidate();
response.sendRedirect("index.html");
%>
    </body>
</html>
