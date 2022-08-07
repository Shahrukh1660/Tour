<%-- 
    Document   : creatsprovider
    Created on : 9 May, 2022, 10:11:23 AM
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
        String fn=request.getParameter("n3");
        String ln=request.getParameter("n4");
        String type=request.getParameter("n5");
        String add=request.getParameter("n6");
        String mobile_number=request.getParameter("n7");
        long mn=Long.parseLong(mobile_number);
        String em=request.getParameter("n8");
        String desc=request.getParameter("n9");
        String loca=request.getParameter("n10");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int rs=stmt.executeUpdate("insert into sprovider values ('"+username+"','"+password+"','"+fn+"','"+ln+"','"+type+"','"+add+"',"+mn+",'"+em+"','"+desc+"','"+loca+"',sysdate)");
            if (rs>0){
                out.print("User Created Successfully");
            }
            else{
                out.print("User not created try again");
            }
   
        %>
    </body>
</html>
