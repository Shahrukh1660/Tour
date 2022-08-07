<%-- 
    Document   : edituserdata
    Created on : 10 May, 2022, 8:03:13 PM
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
         <% String s=session.getAttribute("uname").toString();
   
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from userdata where USERNAME='"+s+"'");
        while(rs.next()){
        %>
        
        
        <form action="updateu.jsp">
            <table border="2">
                <tr><td> Username : </td> <td><input type="text"name="n1" value="<%=rs.getString(1)%>"></td></tr>
                <tr><td> Password : </td> <td><input type="text"name="n2" value="<%=rs.getString(2)%>"</td></tr>
                <tr><td> First Name : </td> <td><input type="text"name="n3" value="<%=rs.getString(3)%>"</td></tr>
                 <tr><td> Last Name : </td> <td><input type="text"name="n4" value="<%=rs.getString(4)%>"</td></tr>
                 <tr><td> Email Id : </td> <td><input type="text"name="n5" value="<%=rs.getString(5)%>"</td></tr>
                 <tr><td> Adharcard Number : </td> <td><input type="text"name="n6" value="<%=rs.getString(6)%>"</td></tr>
                 <tr><td> Mobile Number : </td> <td><input type="text"name="n7" value="<%=rs.getString(7)%>"</td></tr>
                 <tr><td> Current Address: </td> <td><input type="text"name="n8" value="<%=rs.getString(8)%>"</td></tr>
                 <tr><td> Permenant Address : </td> <td><input type="text"name="n9" value="<%=rs.getString(9)%>"</td></tr>
                 <tr><td> Alternate Mobile Number : </td> <td><input type="text"name="n10" value="<%=rs.getString(10)%>"</td></tr>
                 <tr><td> College Name : </td> <td><input type="text"name="n11" value="<%=rs.getString(11)%>"</td></tr>
                 <tr align="center"> <td> <input type="SUBMIT" value="SUBMIT"> </td>
                     <td> <input type="RESET" value="CANCEL"> </td></tr>
                
                 <%}

%>
                
                
            </table>
            
            
            
            
        </form>
    </body>
</html>
