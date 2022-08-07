<%-- 
    Document   : viewall
    Created on : 11 May, 2022, 10:32:34 PM
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
            ResultSet rs=stmt.executeQuery("select * from tour");
           
           %>
           <table border ="2">
                    <tr><th>TOUR_ID</th>
                        <th>DESTINATION</th>
                        <th>TOUR_DURATION</th>
                        <th>TOUR_COST</th>
                        
                        </tr>
                    
                                <%
                                    while(rs.next()){
                                %>
                                        
                           <tr> <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getInt(4)%></td>
                            
                            </tr>  
                            <%}%>
           </table>
    </body> 
</html>
