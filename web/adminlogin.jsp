<%-- 
    Document   : adminlogin
    Created on : 9 May, 2022, 2:27:18 PM
    Author     : sharukh
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% String username=request.getParameter("a1");
        String password=request.getParameter("a2");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from admin where USERNAME='"+username+"'and PASSWORD='"+password+"'"); 
   
        if(rs.next()){
            session.setAttribute("username", username);
            response.sendRedirect("adminsuccess.jsp");
        }
        else{
            out.print("Invalid Password <a href='adminlogin.html'>Try Again</a>");
        }
        %>
    </body>
</html>
