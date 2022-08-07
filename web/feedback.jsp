<%-- 
    Document   : feedback
    Created on : 12 May, 2022, 11:12:25 PM
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
            String fn=request.getParameter("n1");
            String ln=request.getParameter("n2");
            String cont=request.getParameter("n4");
            String feed=request.getParameter("n3");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
            Statement stmt=con.createStatement();
            
        int rs=stmt.executeUpdate("insert into feedback values ('"+fn+"','"+ln+"','"+cont+"','"+feed+"')");
            if (rs>0){
                out.print("Feedback Submitted Successfully");
            }
            else{
                out.print("Feedback not Submitted try again");
            }
   
        %>
    </body>
</html>
