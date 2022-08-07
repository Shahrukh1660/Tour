<%-- 
    Document   : loginpage
    Created on : 8 May, 2022, 12:15:33 PM
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
        <% String un=request.getParameter("n1");
        String ps=request.getParameter("n2");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from member where UNAME='"+un+"'and PASSWORD='"+ps+"'"); 
   
        if(rs.next()){
            session.setAttribute("un", un);
            response.sendRedirect("success.jsp");
        }
        else{
            out.print("Invalid Password <a href='index.html'>Try Again</a>");
        }
        %>
    </body>
</html>
