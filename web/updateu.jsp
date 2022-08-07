<%-- 
    Document   : updateu
    Created on : 11 May, 2022, 1:43:43 PM
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
              <% String username=request.getParameter("n1");
        String password=request.getParameter("n2");
        String fn=request.getParameter("n3");
        String ln=request.getParameter("n4");
        String em=request.getParameter("n5");
        String an=request.getParameter("n6");
        String mobile_number=request.getParameter("n7");
        long mn=Long.parseLong(mobile_number);
        String Ca=request.getParameter("n8");
        String Pa=request.getParameter("n9");
        String alt_mobile_number=request.getParameter("n10");
        long amb=Long.parseLong(mobile_number);
        String Cn=request.getParameter("n11");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        int rs=stmt.executeUpdate("update userdata SET USERNAME='"+username+"',PASSWORD='"+password+"',FIRST_NAME='"+fn+"',LAST_NAME='"+ln+"',EMAIL_ID='"+em+"',ADHARCARD_NUMBER='"+an+"',MOBILE_NUMBER="+mn+",CURRENT_ADDRESS='"+Ca+"',PERMENANT_ADDRESS='"+Pa+"',ALTERNAME_MOBILE_NUMBER="+amb+",COLLEGE_NAME='"+Cn+"' where USERNAME='"+username+"'");
            if (rs>0){
                out.print("User Updated Successfully");
            }
            else{
                out.print("User not created try again");
            }
   
        %>
    </body>
</html>
