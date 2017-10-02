<%-- 
    Document   : alteracao
    Created on : 17/11/2016, 23:37:45
    Author     : rapha
--%>

<%@page import="java.sql.ResultSet"%>
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
            <img src="img/banner.jpg" class="img-rounded img-responsive"/><hr>
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
                        x
                    </ul>
                </div>
            </nav>
            <!--formulário-->
            <h1>Alteração de Monografias</h1>

            <!--primeiro formulário para verificar existencia da monografia buscada-->
            <form id="form1" name="form1" method="post" action="alteracao.jsp">
                Consultar título: 
                <div class="form-group">
                    <label for="titulo">Título da Monografia:</label>
                    <input name="titulo" type="text" class="form-control" id="titulo" />
                    <span style="color:#aaa">Pesquise monografia pelo título</span><br>
                    <span style="color:#aaa">titulo não pode ser alterado</span><br>
                    <input type="submit" class="btn btn-primary" name="consulta" id="consulta" value="Consultar" />
                </div>
                
            </form>

            <%
                if (request.getParameter("consulta") != null) {
                    ResultSet res = mono.consultarTitulo((request.getParameter("titulo")));

                    if (res.next()) {
                    
            %>
            <!--formulário que irá aparecer caso exista dados encontrados-->
            <form id="form2" name="form2" method="POST" action="gravarAlteracao.jsp">
                <input type="hidden" name="titulo" id="titulo" value="<%= res.getString("titulo") %>" />
                <div class="form-group">
                    <label for="autor">Nome do Autor:</label>
                    <input name="autor" type="text" class="form-control" id="autor" value="<%= res.getString("autor") %>" required="required"/>
                </div>
                <div class="form-group">
                    <label for="orientador">Nome do Orientador</label>
                    <input name="orientador" type="text" class="form-control" id="orientador" value="<%= res.getString("orientador") %>" required="required"/>
                </div>
                <div class="form-group">
                    <label for="palavra1">Palavra chave 1:</label>
                    <input name="palavra1" type="text" class="form-control" id="palavra1" value="<%= res.getString("palavra1") %>" required="required" />
                </div>
                <div class="form-group">
                    <label for="palavra2">Palavra chave 2:</label>
                    <input name="palavra2" type="text" class="form-control" id="palavra2" value="<%= res.getString("palavra2") %>" required="required" />
                </div>
                <div class="form-group">
                    <label for="palavra3">Palavra chave 3:</label>
                    <input name="palavra3" type="text" class="form-control" id="palavra3" value="<%= res.getString("palavra3") %>" required="required" />
                </div>
                <div class="form-group">
                    <label for="area">Area de concentração:</label>
                    <select class="form-control" id="area" name="area">
                        <option value="null">Selecione</option>
                        <option value="Finanças">Finanças</option>
                        <option value="Marketing">Marketing</option>
                        <option value="Gestão de Pessoas">Gestão de Pessoas</option>
                        <option value="Gestão de T.I.">Gestão de T.I.</option>
                        <option value="Pesquisa Operacional">Pesquisa Operacional</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="ano">Ano:</label>
                    <input name="ano" type="text" class="form-control" id="ano" value="<%= res.getString("ano") %>" required="required" />
                </div>
                <div class="form-group">
                    <label for="local">Local:</label>
                    <input name="local" type="text" class="form-control" id="local" value="<%= res.getString("local") %>" required="required"/>
                </div>
                <div class="form-group">
                    <label for="resumo">Resumo:</label>
                    <input name="resumo" type="text" class="form-control" id="resumo" value="<%= res.getString("resumo") %>" required="required" />
                </div>
                <button type="submit" class="btn btn-primary">Concluir Alteração</button>
            </form>
            <%
                    } else {
                        out.print("Nenhum registro");
                    }
                }
            %>
        </div>
    </body>
</html>
