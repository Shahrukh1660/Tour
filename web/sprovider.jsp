<%-- 
    Document   : sprovider
    Created on : 8 May, 2022, 3:53:16 PM
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
          <% String username=request.getParameter("n1");
        String password=request.getParameter("n2");
        String ts=request.getParameter("n3");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from sproviderc where USERNAME='"+username+"'and PASSWORD='"+password+"' and TYPE_OF_SERVICE='"+ts+"'"); 
   
        if(rs.next()){
            session.setAttribute("username", username);
            response.sendRedirect("Sprovidersuccess.jsp");
        }
        else{
            out.print("Invalid Password <a href='userlogin.html'>Try Again</a>");
        }
        %>
    </body>
</html>
