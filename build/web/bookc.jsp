<%-- 
    Document   : bookc
    Created on : 12 May, 2022, 10:09:14 AM
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
        <%  String  usernamenew=session.getAttribute("user").toString();
            
            String  TD=session.getAttribute("TOUR_ID").toString();
            long TID=Long.parseLong(TD);
        
       
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int rs=stmt.executeUpdate("insert into bookingc values ('"+usernamenew+"',"+TID+",sysdate)");
        
            if (rs>0){
                out.print("Booking Successfull");
            }
            else{
                out.print("Booking not Successfull try again");
            }
   
        %>
    </body>
</html>
