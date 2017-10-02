<%-- 
    Document   : Index
    Created on : 22/11/2016, 22:35:54
    Author     : werner
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="mono" class="meuBean.Monografia" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <style type="text/css">
            table{
                width: 1200px;
                margin-left: -50px;
            }
            .rotulo{
                background-color: #000000;
                text-align: center;
                color:#ffffff;
                font-size: 16pt;
                font-family: Verdana, Arial, Helvetica, sans-serif;
            }
            .dados{
                text-align: center;
                font-size: 12pt;
                font-family: Verdana, Arial, Helvetica, sans-serif;
            }
        </style>
        <meta charset="UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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
                        <li><a href="cadastro.jsp">Cadastro de monografia</a></li>
                        <li><a href="alteracao.jsp">Alteração de monografia</a></li>
                        <li><a href="exclusao.jsp">Exclusão de monografia</a></li>
                        <li><a href="consulta.jsp">Consulta de monografia</a></li>
                        
                    </ul>
                </div>
            </nav>
            <div>
                    
                <table  class="table table-hover">
  <tr class="rotulo">
    <th>Titulo</th>
  </tr>
    <%
        ResultSet res = mono.consultar();
        for (int i=0; i<5; i++){
        if (res.next()) {
        %>
            <tr>
                <td id="titulomonografia"><a href="ExibeMonografia"><%= res.getString("titulo") %></a></td>                
                
                
            </tr>
        <%
        }
        }
        
%>
</table>
            </div>
            
        </div>
    </body>
</html>
