<%-- 
    Document   : gravarAlteracao
    Created on : 19/11/2016, 22:56:04
    Author     : rapha
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="mono" class="meuBean.Monografia" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Alteração</title>
    </head>
    <body>
        <div class="container">
            <!--barra de navegação-->
            <img src="img/banner.jpg" class="img-rounded img-responsive" alt="Chania"/><hr>
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp">Página Inicial</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="cadastro.jsp">Cadastro de monografia</a></li>
                        <li class="active"><a href="alteracao.jsp">Alteração de monografia</a></li>
                        <li><a href="exclusao.jsp">Exclusão de monografia</a></li>
                        <li><a href="consulta.jsp">Consulta de monografia</a></li>
                        
                    </ul>
                </div>
            </nav>
            <jsp:setProperty name="mono" property="*" />  
            <%
                //alterar no banco
                    if (mono.alterar(request.getParameter("titulo"))) {

                        out.print("Dados alterados");
            %>
            <a href="alteracao.jsp"><h3>Voltar</h3></a>
                    <%
                            } else {
                                out.print("Erro ao alterar");
                            }
                    %>
        </div>
    </body>
</html>
