package meuBean;

import java.io.Serializable;
import java.sql.*;

/**
 *
 * @author Raphael fodão
 */
public class Conexao implements Serializable {

    private Connection con;
    private PreparedStatement st;
    private String erro;

    public Conexao() {
        try{
            // Carregar Driver do MySQL
            Class.forName("com.mysql.jdbc.Driver");
            //Fazer a conexao
            //Verifique se o usuario root e a senha 123 sao iguais na maquina de teste
            //caso contrario, altere na linha abaixo.
            con = DriverManager.getConnection("jdbc:mysql://localhost/monografia", "root", "tricolor");//alterar senha para root na faculdade do carai
            //Criar o fluxo para mandar comando sql o banco
        } 
        catch (ClassNotFoundException ex) {
            erro = ex.getMessage();
        }
        catch (SQLException ex) {
            erro = ex.getMessage();
        }
    }

    public Connection getCon() {
        return con;
    }

    public PreparedStatement getSt() {
        return st;
    }

    public void setSt(PreparedStatement st) {
        this.st = st;
    }

    
}
