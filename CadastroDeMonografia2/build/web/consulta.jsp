<%-- 
    Document   : consulta
    Created on : 18/11/2016, 17:42:03
    Author     : rapha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
              crossorigin="anonymous">
        <title>Consulta</title>
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
                        <li><a href="alteracao.jsp">Alteração de monografia</a></li>
                        <li><a href="exclusao.jsp">Exclusão de monografia</a></li>
                        <li class="active"><a href="consulta.jsp">Consulta de monografia</a></li>
                        
                    </ul>
                </div>
            </nav>
            
            <h1>Consulta de Monografias</h1>
            <p><a href="listagem.jsp"><button type="button" class="btn btn-success">Listar Todos</button></a></p>
            <a href="consultaPorAutor.jsp"><button type="button" class="btn btn-primary">Consultar por autor</button></a>
            <a href="consultaPorOrientador.jsp"><button type="button" class="btn btn-primary">Consultar por orientador</button></a>
            <a href="consultaPalavrasChave.jsp"><button type="button" class="btn btn-primary">Consultar por palavras-chaves</button></a>
            <a href="consultaPorAno.jsp"><button type="button" class="btn btn-primary">Consultar por ano</button></a>
            <a href="consultaPorLocal.jsp"><button type="button" class="btn btn-primary">Consultar por local</button></a>
            <a href="consultaAreaConcentracao.jsp"><button type="button" class="btn btn-primary">Consultar por área de concentração</button></a>
        </div>
    </body>
</html>
