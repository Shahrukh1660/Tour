<%-- 
    Document   : cancelseat
    Created on : 12 May, 2022, 8:56:06 PM
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
        <link rel="stylesheet" href="cancelbutton.css">
        
        <% String uname=session.getAttribute("username").toString();
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from bookingc where username='"+uname+"' ");
           
           %>
           <table border ="2">
                    <tr><th>USERNAME</th>
                        <th>TOUR_ID</th>
                        <th>BOOKING DATE</th>
                        
                        
                        </tr>
                    
                                <%
                                    while(rs.next()){
                                %>
                                        
                           <tr> <td><%=rs.getString(1)%></td>
                            <td><%=rs.getInt(2)%></td>
                            <td><%=rs.getString(3)%></td>
                           
                            
                            </tr>  
                            <%}%>
                           
                             
           </table>
                            <form action="canceltour.jsp">
                            <table border="1">
                                <tr><td>Enter Tour ID : <input type="text" name="t1"> </td><td><button class="button button3"><input type="SUBMIT" value="CANCEL"></button></td></tr>       
                            </table>
                            </form>
                            </body>
</html>
