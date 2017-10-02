<%-- 
    Document   : listarPorAno
    Created on : 21/11/2016, 23:40:18
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
        <title>Por ano</title>
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
                        <li><a href="exclusao.jsp">Exclusão de monografia</a></li>
                        <li><a href="consulta.jsp">Consulta de monografia</a></li>
                        
                    </ul>
                </div>
            </nav>
            
            <!--navegação entre lista de ordenação-->
            <ul class="nav nav-tabs" role="tablist">
                <li><a href="listarPorTitulo.jsp">Listar por ordem de Título</a></li>
                <li><a href="listarPorAutor.jsp">Listar por ordem de Autor</a></li>
                <li class="active"><a href="listarPorAno.jsp">Listar por ordem de Ano</a></li>
            </ul>
            
            <table class="table table-hover">
                <tr class="rotulo">
                    <th>TÍTULO</th><th>AUTOR</th><th>ORIENTADOR</th><th>PALAVRA CHAVE 1</th><th>PALAVRA CHAVE 2</th><th>PALAVRA CHAVE 3</th>
                    <th>AREA</th><th>ANO</th><th>LOCAL</th><th>RESUMO</th></tr>
                        <%
                            ResultSet res = mono.listarPorAno();
                            while (res.next()) {
                        %>
                <tr class="dados">
                    <td><%= res.getString("titulo")%></td>
                    <td><%= res.getString("autor")%></td>
                    <td><%= res.getString("orientador")%></td>
                    <td><%= res.getString("palavra1")%></td>
                    <td><%= res.getString("palavra3")%></td>
                    <td><%= res.getString("palavra3")%></td>
                    <td><%= res.getString("area_concentracao")%></td>
                    <td><%= res.getString("ano")%></td>
                    <td><%= res.getString("local")%></td>
                    <td><%= res.getString("resumo")%></td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
        
    </body>
</html>
