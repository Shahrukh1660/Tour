<%-- 
    Document   : addadmin
    Created on : 11 May, 2022, 7:28:02 PM
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
        <% String  TOUR_ID=request.getParameter("n1");
        long TID=Long.parseLong(TOUR_ID);
        String  DESTINATION=request.getParameter("n2");
        String  TOUR_DURATION=request.getParameter("n3");
        String TOUR_COST=request.getParameter("n4");
         long TCOST=Long.parseLong(TOUR_COST);
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int rs=stmt.executeUpdate("insert into tour values ("+TID+",'"+DESTINATION+"','"+TOUR_DURATION+"',"+TCOST+",sysdate)");
            if (rs>0){
                out.print("Product added Successfully");
            }
            else{
                out.print("Product not added try again");
            }
   
        %>
    </body>
</html>
