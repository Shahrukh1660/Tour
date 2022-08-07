<%-- 
    Document   : updatetour
    Created on : 12 May, 2022, 2:04:20 PM
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
        <% String  usernamenew=session.getAttribute("user").toString();
            
            String  TD=session.getAttribute("TOUR_ID").toString();
            long TID=Long.parseLong(TD);
   
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from userdata where USERNAME='"+usernamenew+"'");
        while(rs.next()){
        %>
        
        
        <form action="bookc.jsp">
            <table border="2">
                <tr><td> TOUR_ID: </td> <td><input type="text"name="n1" value="<%=rs.getString(1)%>"></td></tr>
                <tr><td> DESTINATION: </td> <td><input type="text"name="n2" value="<%=rs.getString(2)%>"</td></tr>
                <tr><td> TOUR_DURATION : </td> <td><input type="text"name="n3" value="<%=rs.getString(3)%>"</td></tr>
                 <tr><td> TOUR_COST : </td> <td><input type="text"name="n4" value="<%=rs.getString(4)%>"</td></tr>
                  <tr align="center"> <td> <input type="SUBMIT" value="SUBMIT"> </td>
                     <td> <input type="RESET" value="CANCEL"> </td></tr>
                
                 <%}

%>
                
                
            </table>
            
            
            
            
        </form>
    </body>
</html>
