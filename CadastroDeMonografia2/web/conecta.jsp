<%-- 
    Document   : conecta
    Created on : 22/11/2016, 22:09:53
    Author     : rapha
--%>

<%@page import="java.sql.*" %>
<%
	Connection con = null;
	Statement stmt = null;
	
	try {
            //Banco de Dados
            String serverName = "localhost";
            String mydatabase = "monografia";

            //Login e senha do banco
            String username = "root";
            String password = "tricolor"; //alterar na faculdade para root

            // Carregando o JDBC Driver
            String driverName = "com.mysql.jdbc.Driver";
            Class.forName(driverName);

            // Criando a conexão com o Banco de Dados
            String url = "jdbc:mysql://" + serverName + "/" + mydatabase; // a JDBC url
            con = DriverManager.getConnection(url, username, password);
            stmt = con.createStatement();
			
        }
	catch (ClassNotFoundException e){
            //Driver não encontrado
            out.println("Driver não encontrado: " + e.toString());
        }
	catch (SQLException e) {
            //Não está conseguindo se conectar ao banco
            out.println("Erro ao executar SQL: " + e.toString());
        }

%>
