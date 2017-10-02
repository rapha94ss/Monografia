<%@include file="conecta.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
              crossorigin="anonymous">
        <title>JSP Page</title>
        <style type="text/css">
            #mensagem{
                background-color:#CC3300; 
                color:#FFFFFF; 
                font-weight:bold; 
                position:absolute; 
                top:0; 
                right:0; 
                visibility:hidden;
            }
        </style> 
        <script src="jquery.js"></script>
        <script>
    function pesquisaMonografia(pombo) {
        var saida="";
        $.ajax({ 
            type: "POST",
            url: "buscaMonografia.jsp", //envia request para arquivo buscaAlunos, que retorna uma response no formato XML
            data: {id: pombo},
            success: function(xml){ 
                saida += "<table class='table table-hover'><tr><th>Titulo</th><th>Orientador</th><th>Palavra-chave1</th><th>Palavra-chave2</th><th>Palavra-chave3</th><th>Area concentração</th><th>Ano</th><th>Local</th><th>Resumo</th></tr>";
                $(xml).find("monografia").each(function(){
                    $(this).find("titulo").each(function(){
                        saida += "<td>"+$(this).text()+"</td>";
                    });
                    $(this).find("orientador").each(function(){
                        saida += "<td>"+$(this).text()+"</td>";
                    });
                    $(this).find("palavra1").each(function(){
                        saida += "<td>"+$(this).text()+"</td>";
                    });
                    $(this).find("palavra2").each(function(){
                        saida += "<td>"+$(this).text()+"</td>";
                    });
                    $(this).find("palavra3").each(function(){
                        saida += "<td>"+$(this).text()+"</td>";
                    });
                    $(this).find("area").each(function(){
                        saida += "<td>"+$(this).text()+"</td>";
                    });
                    $(this).find("ano").each(function(){
                        saida += "<td>"+$(this).text()+"</td>";
                    });
                    $(this).find("local").each(function(){
                        saida += "<td>"+$(this).text()+"</td>";
                    });
                    $(this).find("resumo").each(function(){
                        saida += "<td>"+$(this).text()+"</td></tr>";
                    });
                });
                saida += "</table>";
                $("#tabelaAlunos").html(saida);
                $(xml).find("mensagem").each(function(){
                    $("#mensagem").html($(this).text());
                });
            },        
            error: function(){	
                $("#mensagem").html("Processo não concluído");
            }
        });
    }
    
    $(function(){
        $("#selecao").change(function(){
            pesquisaMonografia($("#selecao").val());
        });
    });
        </script>
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
            <h1>Consulte por autor</h1>
        <select name="selecao" id="selecao" >
           <option value="0">Escolha um autor</option>
           <%
               String resp = "";
               try{
                   ResultSet rs = stmt.executeQuery("SELECT * FROM monografias ORDER BY autor");
                   while(rs.next()){
                       resp+="<option value='"+rs.getInt("id")+"'>";
                       resp+=rs.getString("autor")+"</option>";
                   }
                   rs.close();
               }catch(Exception ex){
                   resp = "<option>Erro ao carregar as turmas" + ex.toString() + "</option>";
               }
               out.println(resp);
           %>
       </select>
           </p>
       <div id="tabelaAlunos">
       </div>
       <div id="mensagem">&nbsp;&nbsp;Processando...&nbsp;&nbsp;</div>
        </div>
        
    </body>
</html>
