package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import details.data;
import java.sql.*;
import details.DataBaseOperation3;

public final class addborrower_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/dbcon.jsp");
    _jspx_dependants.add("/nav.jsp");
  }

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
      			"conerr.jsp", true, 8192, true);
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
      out.write("        ");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","123");
        DataBaseOperation3 db=new DataBaseOperation3(con);
        
      out.write("\n");
      out.write("     \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script>\n");
      out.write("            if(window.history.replaceState){\n");
      out.write("                window.history.replaceState(null,null,window.location.href);\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            h1{\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            ul{\n");
      out.write("                background-color: yellow;\n");
      out.write("                padding: 10px;\n");
      out.write("            }\n");
      out.write("            ul li{\n");
      out.write("                list-style: none;\n");
      out.write("                display: inline;\n");
      out.write("                padding: 10px;\n");
      out.write("            }\n");
      out.write("            ul li:hover{\n");
      out.write("                background-color: aqua;\n");
      out.write("            }\n");
      out.write("            li a{\n");
      out.write("                text-decoration: none;\n");
      out.write("                color:hotpink;\n");
      out.write("            }\n");
      out.write("            table.ta_data{\n");
      out.write("                margin-left: 50%;\n");
      out.write("            }\n");
      out.write("            table.ta_data,table.ta_data tr,td,th{\n");
      out.write("                border-collapse: collapse;\n");
      out.write("                border-style: solid;\n");
      out.write("                padding: 10px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>LIBRARY MANAGEMENT SYSTEM</h1>\n");
      out.write("        \n");
      out.write("        <ul>\n");
      out.write("            <h3>BOOK DETAILS</h3>\n");
      out.write("            <li><a href=\"addbooks.jsp\">ADD BOOK</a></li>\n");
      out.write("            <li><a href=\"deletebooks.jsp\">DELETE BOOK</a></li>\n");
      out.write("            <li><a href=\"updatebooks.jsp\">UPDATE BOOK</a></li>\n");
      out.write("            <li><a href=\"viewbook.jsp\">VIEW BOOK</a></li>\n");
      out.write("            <li><a href=\"viewallbook.jsp\">VIEW ALL BOOK</a></li>\n");
      out.write("            \n");
      out.write("        </ul>\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        <ul>\n");
      out.write("            <h3>BORROWER DETAILS</h3>\n");
      out.write("            <li><a href=\"addborrower.jsp\">ADD BORROWER</a></li>\n");
      out.write("            <li><a href=\"deleteborrower.jsp\">DELETE BORROWER</a></li>\n");
      out.write("            <li><a href=\"updateborrower.jsp\">UPDATE BORROWER</a></li>\n");
      out.write("            <li><a href=\"viewborrower.jsp\">VIEW BORROWER</a></li>\n");
      out.write("            <li><a href=\"viewallborrower.jsp\">VIEW ALL BORROWER</a></li>\n");
      out.write("            \n");
      out.write("        </ul>\n");
      out.write("             <br>\n");
      out.write("               <ul>\n");
      out.write("            <h3>TRANSCATION DETAILS</h3>\n");
      out.write("            <li><a href=\"addtranscation.jsp\">ADD TRANSCATION</a></li>\n");
      out.write("            <li><a href=\"deletetranscation.jsp\">DELETE TRANSCATION</a></li>\n");
      out.write("            <li><a href=\"updatetransaction.jsp\">UPDATE TRANSCATION</a></li>\n");
      out.write("            <li><a href=\"viewtranscation.jsp\">VIEW TRANSCATION</a></li>\n");
      out.write("            <li><a href=\"viewalltranscation.jsp\">VIEW ALL TRANSCATION</a></li>\n");
      out.write("            \n");
      out.write("        </ul>   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
      out.write("    <h1>ADD BORROWER</h1>\n");
      out.write("        <form method=\"post\" action=\"\">\n");
      out.write("            <table align=\"center\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                 \n");
      out.write("                  <tr><td>Borrower Id</td>\n");
      out.write("                    <td><input type=\"text\" name=\"borrowerid\"></td></tr>\n");
      out.write("                 <tr><td>Borrowername</td>\n");
      out.write("                    <td><input type=\"text\" name=\"borrowername\"></td></tr>\n");
      out.write("                  <tr><td>Borrowercontact</td>\n");
      out.write("                    <td><input type=\"number\" name=\"borrowercontact\"></td></tr>\n");
      out.write("                   \n");
      out.write("                  \n");
      out.write("                  <tr><td><input type=\"submit\" value=\"AddBorrower\"></td></tr>\n");
      out.write("                  ");

                  if(request.getParameter("borrowerid")!=null)
                  {
                  
      out.write("\n");
      out.write("                  ");
      details.data u = null;
      synchronized (_jspx_page_context) {
        u = (details.data) _jspx_page_context.getAttribute("u", PageContext.PAGE_SCOPE);
        if (u == null){
          u = new details.data();
          _jspx_page_context.setAttribute("u", u, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("u"), request);
      out.write("\n");
      out.write("                  ");

                  try{
                      int a=db.addBorrower(u);
                      if(a>0)
                      {
                          out.print("inserted");
                      }
                      else{
                          out.print("not inserted");
                      }
}
                  catch(Exception e)
{
    out.print("not inserted with error"+e.getMessage());
}
   }  

      out.write("\n");
      out.write("\n");
      out.write("                  \n");
      out.write("                  <div>\n");
      out.write("                      <p>Available Employee</p>\n");
      out.write("                      ");

                      ArrayList<data>dlist=db.selectAllBorrower();
                      
      out.write("\n");
      out.write("                      <table class=\"ta_data\">\n");
      out.write("                          <tr><th>Borrower Id</th><th>Borrower Name</th><th>Borrower Contact</th></tr>\n");
      out.write("                          ");

                             if(!dlist.isEmpty()){
                                  for(data da:dlist){
                              
                          
      out.write("\n");
      out.write("                          <tr>\n");
      out.write("                              <td>");
      out.print(da.getBorrowerid());
      out.write("</td>\n");
      out.write("                               <td>");
      out.print(da.getBorrowername());
      out.write("</td>\n");
      out.write("                                  <td>");
      out.print(da.getBorrowercontact());
      out.write("</td>\n");
      out.write("                                  \n");
      out.write("                          </tr>\n");
      out.write("                          ");
 
            }
            }
                 else{
                  out.print("<tr><td colspan='3'>Data Not Found</td></tr>");
}

      out.write("\n");
      out.write("                  </div>\n");
      out.write("            </table>\n");
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
