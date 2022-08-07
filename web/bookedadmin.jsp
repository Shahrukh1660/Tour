<%-- 
    Document   : bookedadmin
    Created on : 12 May, 2022, 4:15:03 PM
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
       <%
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from bookingc");
           
           %>
           <table border ="2">
                    <tr><th>USERNAME</th>
                        <th>TOUR ID</th>
                        <th>BOOKED DATE</th>
                        
                        </tr>
                    
                                <%
                                    while(rs.next()){
                                %>
                                        
                           <tr> <td><%=rs.getString(1)%></td>
                            <td><%=rs.getInt(2)%></td>
                            <td><%=rs.getString(3)%></td>
                           
                            
                           
                           
                            </tr>  
                            
                            <%}%>
                            <tr align="center"><td><a href="fetchdataforadmin.html"><button class="buttonbook" role="button">Click Here To Fetch Data</button></a></td></tr>
           </table>
    </body>
</html>
