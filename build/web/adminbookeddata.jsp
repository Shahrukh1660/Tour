<%-- 
    Document   : adminbookeddata
    Created on : 12 May, 2022, 3:53:23 PM
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
              String username=request.getParameter("a1");
            
          
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from userdata where USERNAME='"+username+"' ");
            if(!rs.next())
            {out.print("Sorry no data found");
            
            }
            else{
                %>
         
            <table border="2">
                <tr><th> Username : </th> 
                <th> Password : </th> 
                <th> First Name : </th> 
                 <th> Last Name : </th> 
                 <th> Email Id : </th> 
                 <th> Adharcard Number : </th> 
                 <th> Mobile Number : </th> 
                 <th> Current Address: </th> 
                 <th> Permenant Address : </th> 
                 <th> Alternate Mobile Number : </th> 
                 <th> College Name : </th> </tr>
                 
                
                
                                        
                           <tr> <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getLong(7)%></td>
                            <td><%=rs.getString(8)%></td>
                            <td><%=rs.getString(9)%></td>
                            <td><%=rs.getLong(10)%></td>
                            <td><%=rs.getString(11)%></td>
                            
                            </tr>  
                            <%}%>
                
                            
            </table>
  
    </body>
</html>
