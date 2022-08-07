<%-- 
    Document   : rejectrequest
    Created on : 14 May, 2022, 12:18:00 PM
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
        <% String username=session.getAttribute("uname").toString();
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int i=stmt.executeUpdate("delete from sprovider where username='"+username+"'");
         
        
        
            if (i>0){
                out.print("Deleted Successfully");
            }
            
            
            else{
                out.print(" try again");
            }
   
        %>
    </body>
</html>
