<%-- 
    Document   : deleteadmin
    Created on : 11 May, 2022, 7:44:32 PM
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
        int TID=Integer.parseInt(TOUR_ID);
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int rs=stmt.executeUpdate("delete from tour where TOUR_ID="+TID+"");
            if (rs>0){
                out.print("Product deleted Successfully");
            }
            else{
                out.print("Product not deleted try again");
            }
   
        %>
       
    </body>
    
</html>
