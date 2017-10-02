package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
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
      meuBean.Monografia mono = null;
      synchronized (_jspx_page_context) {
        mono = (meuBean.Monografia) _jspx_page_context.getAttribute("mono", PageContext.PAGE_SCOPE);
        if (mono == null){
          mono = new meuBean.Monografia();
          _jspx_page_context.setAttribute("mono", mono, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Index</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            table{\n");
      out.write("                width: 1200px;\n");
      out.write("                margin-left: -50px;\n");
      out.write("            }\n");
      out.write("            .rotulo{\n");
      out.write("                background-color: #000000;\n");
      out.write("                text-align: center;\n");
      out.write("                color:#ffffff;\n");
      out.write("                font-size: 16pt;\n");
      out.write("                font-family: Verdana, Arial, Helvetica, sans-serif;\n");
      out.write("            }\n");
      out.write("            .dados{\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 12pt;\n");
      out.write("                font-family: Verdana, Arial, Helvetica, sans-serif;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <!-- Latest compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("     <body>\n");
      out.write("        \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <img src=\"img/banner.jpg\" class=\"img-responsive img-rounded\"/><hr>\n");
      out.write("            <nav class=\"navbar navbar-inverse\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <a class=\"navbar-brand\" href=\"index.jsp\">Página Inicial</a>\n");
      out.write("                    </div>\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li><a href=\"cadastro.jsp\">Cadastro de monografia</a></li>\n");
      out.write("                        <li><a href=\"alteracao.jsp\">Alteração de monografia</a></li>\n");
      out.write("                        <li><a href=\"exclusao.jsp\">Exclusão de monografia</a></li>\n");
      out.write("                        <li><a href=\"consulta.jsp\">Consulta de monografia</a></li>\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <div>\n");
      out.write("                    \n");
      out.write("                <table  class=\"table table-hover\">\n");
      out.write("  <tr class=\"rotulo\">\n");
      out.write("    <th>Titulo</th>\n");
      out.write("  </tr>\n");
      out.write("    ");

        ResultSet res = mono.consultar();
        for (int i=0; i<5; i++){
        if (res.next()) {
        
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td id=\"titulomonografia\"><a href=\"ExibeMonografia\">");
      out.print( res.getString("titulo") );
      out.write("</a></td>                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("        ");

        }
        }
        

      out.write("\n");
      out.write("</table>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
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
