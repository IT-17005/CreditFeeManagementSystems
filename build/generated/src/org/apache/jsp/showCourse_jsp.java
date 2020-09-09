package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public final class showCourse_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html class=\"no-js\" lang=\"\"> \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <!DOCTYPE html>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    \n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <title>SHOW ALL COURSES</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "head.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"right-panel\" class=\"right-panel\">\n");
      out.write("            <form action=\"showCourse\" method=\"post\" >\n");
      out.write("                <div class=\"content mt-3\">\n");
      out.write("                    <div class=\"animated fadeIn\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("\n");
      out.write("                            <div class=\"col-md-12\">\n");
      out.write("                                <div class=\"card\">\n");
      out.write("                                    <div class=\"card-header\">\n");
      out.write("                                        <strong class=\"card-title\">Data Table</strong>\n");
      out.write("                                        <div class=\"col-md-12 text-right\">\n");
      out.write("                                            <a href=\"AddCourse.jsp\" class=\"btn btn-primary\">Add Course</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"card-body\">\n");
      out.write("                                        <table id=\"bootstrap-data-table\" class=\"table table-striped table-bordered\">\n");
      out.write("                                            <thead>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    ");
      out.write("\n");
      out.write("                                                    <th>Course Code</th>\n");
      out.write("                                                    <th>Course Name</th>\n");
      out.write("                                                    <th>Credit</th>\n");
      out.write("                                                    <th>Actions</th>\n");
      out.write("\n");
      out.write("                                                </tr>\n");
      out.write("                                            </thead>\n");
      out.write("                                            <tbody>\n");
      out.write("                                                ");

                                                    //String Host = "jdbc:mysql://localhost:3306/mydata";
                                                    //Connection connection = null;
                                                    //Statement statement = null;
                                                    
                                                    ResultSet rs = null;
                                                    String dbUrl = "jdbc:mysql://localhost:3306/creditfee";
                                                    String username = "root";
                                                    String password = "";
                                                    //get a connection()            (step 1)
                                                    Connection connection = DriverManager.getConnection(dbUrl, username, password);
                                                    //create a statement object     (step 2)
                                                    Statement statement = connection.createStatement();
                                                    // connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "");
                                                    statement = connection.createStatement();
                                                    String Data = "select * from course";
                                                    rs = statement.executeQuery(Data);
                                                    while (rs.next()) {
                                                
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>");
      out.print(rs.getString("course_code"));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString("course_name"));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString("course_credit"));
      out.write("</td>\n");
      out.write("                                                    <td class=\"text-center\" width=\"180\">\n");
      out.write("                                                        ");
      out.write("\n");
      out.write("                                                        <a href='deleteCourse.jsp?d=");
      out.print(rs.getString("id"));
      out.write("' class=\"btn btn-danger\">Delete</a>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                ");

                                                    }
                                                
      out.write("\n");
      out.write("                                            </tbody>\n");
      out.write("                                        </table>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div><!-- .animated -->\n");
      out.write("                </div><!-- .content -->\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div><!-- /#right-panel -->\n");
      out.write("\n");
      out.write("        <!-- Right Panel -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"assets/js/vendor/jquery-2.1.4.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/popper.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/plugins.js\"></script>\n");
      out.write("        <script src=\"assets/js/main.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"assets/js/lib/data-table/datatables.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/lib/data-table/dataTables.bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/lib/data-table/dataTables.buttons.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/lib/data-table/buttons.bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/lib/data-table/jszip.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/lib/data-table/pdfmake.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/lib/data-table/vfs_fonts.js\"></script>\n");
      out.write("        <script src=\"assets/js/lib/data-table/buttons.html5.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/lib/data-table/buttons.print.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/lib/data-table/buttons.colVis.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/lib/data-table/datatables-init.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#bootstrap-data-table-export').DataTable();\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
