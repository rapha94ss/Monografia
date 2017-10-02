<%-- 
    Document   : cadastro
    Created on : 16/11/2016, 21:08:22
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Cadastro</title>
    </head>
    <body>
        <div class="container">
            <img src="img/banner.jpg" class="img-responsive img-rounded"/><hr>
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp">Página Inicial</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="cadastro.jsp">Cadastro de monografia</a></li>
                        <li><a href="alteracao.jsp">Alteração de monografia</a></li>
                        <li><a href="exclusao.jsp">Exclusão de monografia</a></li>
                        <li><a href="consulta.jsp">Consulta de monografia</a></li>
                        
                    </ul>
                </div>
            </nav>

            <h1>Cadastro de Monografias</h1>

            <form id="form1" name="form1" method="POST" action="gravarNovo.jsp">
                <div class="form-group">
                    <label for="titulo">Título da Monografia:</label>
                    <input name="titulo" type="text" class="form-control" id="titulo" required="required" />
                </div>
                <div class="form-group">
                    <label for="autor">Nome do Autor:</label>
                    <input name="autor" type="text" class="form-control" id="autor" required="required" />
                </div>
                <div class="form-group">
                    <label for="orientador">Nome do Orientador</label>
                    <input name="orientador" type="text" class="form-control" id="orientador" required="required" />
                </div>
                <div class="form-group">
                    <label for="palavra1">Palavra chave 1:</label>
                    <input name="palavra1" type="text" class="form-control" id="palavra1" required="required" />
                </div>
                <div class="form-group">
                    <label for="palavra2">Palavra chave 2:</label>
                    <input name="palavra2" type="text" class="form-control" id="palavra2" required="required" />
                </div>
                <div class="form-group">
                    <label for="palavra3">Palavra chave 3:</label>
                    <input name="palavra3" type="text" class="form-control" id="palavra3" required="required" />
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
                    <input name="ano" type="text" class="form-control" id="ano" required="required" />
                </div>
                <div class="form-group">
                    <label for="local">Local:</label>
                    <input name="local" type="text" class="form-control" id="local" required="required" />
                </div>
                <div class="form-group">
                    <label for="resumo">Resumo:</label>
                    <input name="resumo" type="text" class="form-control" id="resumo" required="required" />
                </div>
                <button type="submit" class="btn btn-primary">Gravar</button>
            </form>

        </div>

    </body>
</html>
