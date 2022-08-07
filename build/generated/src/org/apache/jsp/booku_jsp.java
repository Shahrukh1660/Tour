package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class booku_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <body><link rel=\"stylesheet\" href=\"bookbutton.css\">\n");
      out.write("        ");
 String  TOUR_ID=request.getParameter("n1");
            Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from tour where TOUR_ID="+TOUR_ID+" ");
           
           
           if(!rs.next())
            {out.print("Sorry no data found");
            
            }
            else{
                
      out.write("\n");
      out.write("                \n");
      out.write("            <table border =\"2\">\n");
      out.write("                    <tr><th>TOUR_ID</th>\n");
      out.write("                        <th>DESTINATION</th>\n");
      out.write("                        <th>TOUR_DURATION</th>\n");
      out.write("                        <th>TOUR_COST</th>\n");
      out.write("                        \n");
      out.write("                        </tr>\n");
      out.write("                    \n");
      out.write("                                \n");
      out.write("                           <tr> <td>");
      out.print(rs.getInt(1));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getInt(4));
      out.write("</td>\n");
      out.write("                            \n");
      out.write("                            </tr>  \n");
      out.write("                           \n");
      out.write("           \n");
      out.write("    <tr align=\"center\"><td><a href=\"bookc.jsp\"><button class=\"buttonbook\" role=\"button\">BOOK TOUR</button></a></td></tr>\n");
      out.write("     ");
}
      out.write("\n");
      out.write("            </table>\n");
      out.write("   \n");
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
