<%-- 
    Document   : acceptrequest
    Created on : 14 May, 2022, 11:08:04 AM
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
        ResultSet rs=stmt.executeQuery("select * from sprovider where username='"+username+"'");
            if (rs.next()){
                String un=rs.getString(1);
                String password=rs.getString(2);
        String fn=rs.getString(3);
        String ln=rs.getString(4);
        String type=rs.getString(5);
        String add=rs.getString(6);
        long mn=rs.getInt(7);
        String em=rs.getString(8);
        String desc=rs.getString(9);
        String loca=rs.getString(10);
       
        
        int i=stmt.executeUpdate("insert into sproviderc values ('"+un+"','"+password+"','"+fn+"','"+ln+"','"+type+"','"+add+"',"+mn+",'"+em+"','"+desc+"','"+loca+"',sysdate)");
            if (i>0){
                out.print("User added Successfully");
                int j=stmt.executeUpdate("delete from sprovider where username='"+un+"'");
            }
            
            }
            else{
                out.print("User not created try again");
            }
   
        %>
    </body>
</html>
