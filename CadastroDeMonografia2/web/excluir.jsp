<%-- 
    Document   : excluir
    Created on : 22/11/2016, 20:41:21
    Author     : rapha
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="mono" class="meuBean.Monografia" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
              crossorigin="anonymous">
        <title>Exclusão</title>
    </head>
    <body>
        <div class="container">
            <img src="img/banner.jpg" class="img-responsive img-rounded"/><hr>
            <!--barra de navegação-->
            
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp">Página Inicial</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="cadastro.jsp">Cadastro de monografia</a></li>
                        <li><a href="alteracao.jsp">Alteração de monografia</a></li>
                        <li class="active"><a href="exclusao.jsp">Exclusão de monografia</a></li>
                        <li><a href="consulta.jsp">Consulta de monografia</a></li>
                        
                    </ul>
                </div>
            </nav>
            
            <p>
   
   <%
//exclusão no banco
if (mono.excluir(request.getParameter("titulo"))) out.print("Dados excluídos");
else out.print("Erro ao apagar dados");
%>
</p>
<a href="exclusao.jsp"><h3>Voltar</h3></a>
        </div>
        
    </body>
</html>
