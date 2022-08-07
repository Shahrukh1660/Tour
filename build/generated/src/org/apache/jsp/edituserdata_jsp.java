package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class edituserdata_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");
 String s=session.getAttribute("uname").toString();
   
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from userdata where USERNAME='"+s+"'");
        while(rs.next()){
        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <form action=\"createu.jsp\">\n");
      out.write("            <table border=\"2\">\n");
      out.write("                <tr><td> Username : </td> <td><input type=\"text\"name=\"n1\" value=\"");
      out.print(rs.getString(1));
      out.write("\"></td></tr>\n");
      out.write("                <tr><td> Password : </td> <td><input type=\"text\"name=\"n2\" value=\"");
      out.print(rs.getString(2));
      out.write("\"</td></tr>\n");
      out.write("                <tr><td> First Name : </td> <td><input type=\"text\"name=\"n3\" value=\"");
      out.print(rs.getString(3));
      out.write("\"</td></tr>\n");
      out.write("                 <tr><td> Last Name : </td> <td><input type=\"text\"name=\"n4\" value=\"");
      out.print(rs.getString(4));
      out.write("\"</td></tr>\n");
      out.write("                 <tr><td> Email Id : </td> <td><input type=\"text\"name=\"n5\" value=\"");
      out.print(rs.getString(5));
      out.write("\"</td></tr>\n");
      out.write("                 <tr><td> Adharcard Number : </td> <td><input type=\"text\"name=\"n6\" value=\"");
      out.print(rs.getString(6));
      out.write("\"</td></tr>\n");
      out.write("                 <tr><td> Mobile Number : </td> <td><input type=\"text\"name=\"n7\" value=\"");
      out.print(rs.getString(7));
      out.write("\"</td></tr>\n");
      out.write("                 <tr><td> Current Address: </td> <td><input type=\"text\"name=\"n8\" value=\"");
      out.print(rs.getString(8));
      out.write("\"</td></tr>\n");
      out.write("                 <tr><td> Permenant Address : </td> <td><input type=\"text\"name=\"n9\" value=\"");
      out.print(rs.getString(9));
      out.write("\"</td></tr>\n");
      out.write("                 <tr><td> Alternate Mobile Number : </td> <td><input type=\"text\"name=\"n10\" value=\"");
      out.print(rs.getString(10));
      out.write("\"</td></tr>\n");
      out.write("                 <tr><td> College Name : </td> <td><input type=\"text\"name=\"n11\" value=\"");
      out.print(rs.getString(11));
      out.write("\"</td></tr>\n");
      out.write("                 <tr align=\"center\"> <td> <input type=\"SUBMIT\" value=\"SUBMIT\"> </td>\n");
      out.write("                     <td> <input type=\"RESET\" value=\"CANCEL\"> </td></tr>\n");
      out.write("                \n");
      out.write("                 ");
}


      out.write("\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
