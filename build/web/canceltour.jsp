<%-- 
    Document   : canceltour
    Created on : 12 May, 2022, 10:07:20 PM
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
         <% String  TOUR_ID=request.getParameter("t1");
        long TID=Long.parseLong(TOUR_ID);
        String uname=session.getAttribute("username").toString();
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int rs=stmt.executeUpdate("delete from bookingc where TOUR_ID="+TID+" and USERNAME='"+uname+"'");
            if (rs>0){
                out.print("Tour Cancelled Successfully");
            }
            else{
                out.print("Product not deleted try again");
            }
   
        %>
    </body>
</html>
