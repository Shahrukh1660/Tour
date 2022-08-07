<%-- 
    Document   : booku
    Created on : 11 May, 2022, 10:40:51 PM
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
    <body><link rel="stylesheet" href="bookbutton.css">
        <% String  TOUR_ID=request.getParameter("n1");
        long TID=Long.parseLong(TOUR_ID);
        String user=session.getAttribute("uname").toString();
            Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from tour where TOUR_ID="+TID+" ");
           
           
           if(!rs.next())
            {out.print("Sorry no data found");
            
            }
            else{
                %>
                
            <table border ="2">
                    <tr><th>TOUR_ID</th>
                        <th>DESTINATION</th>
                        <th>TOUR_DURATION</th>
                        <th>TOUR_COST</th>
                        
                        </tr>
                    
                                
                           <tr> <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getInt(4)%></td>
                            
                            </tr>  
                           
           
    <tr align="center"><td><a href="bookc.jsp"><button class="buttonbook" role="button">BOOK TOUR</button></a></td></tr>
     
                
                <% session.setAttribute("TOUR_ID", TOUR_ID);
                session.setAttribute("user",user);%>
     <%}%>
            </table>
   
    </body>
</html>
