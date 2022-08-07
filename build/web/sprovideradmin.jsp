<%-- 
    Document   : sprovideradmin
    Created on : 14 May, 2022, 10:42:58 AM
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
            ResultSet rs=stmt.executeQuery("select * from sprovider");
           
           %>
           <table border="2">
                <tr><th> Username : </th>
                <th> Password : </th>
                <th> First Name : </th>
                 <th> Last Name : </th>
                 <th> Type of Service: </th>
                 <th> Address: </th>
                 <th> Mobile Number : </th>
                 <th> Email Id : </th>
                 <th> Description : </th>
                 <th> Location : </th>
                 <th> Request Accept : </th>
                 <th> Request Reject : </th>
                </tr>
                
                    
                                <%
                                    while(rs.next()){
                                        String uname=rs.getString(1).toString();
                session.setAttribute("uname", uname);
                                %>
                                        
                           <tr> <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getInt(7)%></td>
                            <td><%=rs.getString(8)%></td>
                            <td><%=rs.getString(9)%></td>
                            <td><%=rs.getString(10)%></td>
                            <td><a href="acceptrequest.jsp">Accept</a></td>
                            <td><a href="rejectrequest.jsp">Reject</a></td>
                            </tr>  
                            <%}%>
                             
                
           </table>
    </body>
</html>
