package meuBean;

import java.io.Serializable;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Raphael fodão
 */
public class Monografia implements Serializable{
    private String titulo;
    private String autor;
    private String orientador;
    private String palavra1;
    private String palavra2;
    private String palavra3;
    private String areaConcentracao;
    private String ano;
    private String local;
    private String resumo;
    private int id;
    
    public Monografia(){}

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getOrientador() {
        return orientador;
    }

    public void setOrientador(String orientador) {
        this.orientador = orientador;
    }

    public String getPalavra1() {
        return palavra1;
    }

    public void setPalavra1(String palavra1) {
        this.palavra1 = palavra1;
    }

    public String getPalavra2() {
        return palavra2;
    }

    public void setPalavra2(String palavra2) {
        this.palavra2 = palavra2;
    }

    public String getPalavra3() {
        return palavra3;
    }

    public void setPalavra3(String palavra3) {
        this.palavra3 = palavra3;
    }

    public String getAreaConcentracao() {
        return areaConcentracao;
    }

    public void setAreaConcentracao(String areaConcentracao) {
        this.areaConcentracao = areaConcentracao;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getResumo() {
        return resumo;
    }

    public void setResumo(String resumo) {
        this.resumo = resumo;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    //metodos de acesso ao banco
    
    //metodo de inclusão
    public boolean incluir(){
        try{
            Conexao c = new Conexao();
            String sql =
            "INSERT INTO monografias(titulo, autor, orientador, palavra1, palavra2, palavra3, area_concentracao, ano, local, resumo) VALUES (?,?,?,?,?,?,?,?,?,?)";
            c.setSt(c.getCon().prepareStatement(sql));
            
            c.getSt().setString(1, getTitulo());
            c.getSt().setString(2, getAutor());
            c.getSt().setString(3, getOrientador());
            c.getSt().setString(4, getPalavra1());
            c.getSt().setString(5, getPalavra2());
            c.getSt().setString(6, getPalavra3());
            c.getSt().setString(7, getAreaConcentracao());
            c.getSt().setString(8, getAno());
            c.getSt().setString(9, getLocal());
            c.getSt().setString(10, getResumo());
            
            // Executa o comando SQL
            c.getSt().executeUpdate();
            
            //Fecha o fluxo 
            c.getSt().close();
            //Fecha a conexao
            c.getCon().close();
            return(true);
            
        }catch(Exception ex){
            return false;
            
        }
    }
    
    //método de alteração
    public boolean alterar(String titulo){
        try {
            Conexao c = new Conexao();
 			
            String sql = "UPDATE monografias set autor=?, orientador=?, palavra1=?, palavra2=?, palavra3=?, area_concentracao=?, "
                    + "ano=?, local=?, resumo=? WHERE titulo = ?";
            c.setSt(c.getCon().prepareStatement(sql));
            
            
            c.getSt().setString(1, getAutor());
            c.getSt().setString(2, getOrientador());
            c.getSt().setString(3, getPalavra1());
            c.getSt().setString(4, getPalavra2());
            c.getSt().setString(5, getPalavra3());
            c.getSt().setString(6, getAreaConcentracao());
            c.getSt().setString(7, getAno());
            c.getSt().setString(8, getLocal());
            c.getSt().setString(9, getResumo());
            c.getSt().setString(10, getTitulo());
                        
            // Executa o comando SQL
            c.getSt().executeUpdate();
            
            //Fecha o fluxo 
            c.getSt().close();
            //Fecha a conexao
            c.getCon().close();
            return(true);
        } 
        catch (Exception ex) { return(false); } 
    }
    
    //metodo de consulta por titulo
    public ResultSet consultarTitulo(String titulo){
            try {
                Conexao c = new Conexao();
                String sql = "SELECT * FROM monografias WHERE titulo = ?";
                c.setSt(c.getCon().prepareStatement(sql));               
                c.getSt().setString(1, titulo);
               
                return c.getSt().executeQuery();			
            }
            catch (Exception ex) { return null; }         	   	
    }
    
    //metodo de consulta ordenado por titulo
    public ResultSet listarPorTitulo(){
            try {
                Conexao c = new Conexao();
                String sql = "SELECT * FROM monografias ORDER BY titulo";
                c.setSt(c.getCon().prepareStatement(sql));

                return c.getSt().executeQuery();	
            }
            catch (Exception ex) { return null; }         	   	
    }
    
    //metodo de consulta ordenado por autor
    public ResultSet listarPorAutor(){
            try {
                Conexao c = new Conexao();
                String sql = "SELECT * FROM monografias ORDER BY autor";
                c.setSt(c.getCon().prepareStatement(sql));

                return c.getSt().executeQuery();	
            }
            catch (Exception ex) { return null; }         	   	
    }
    
    //metodo de consulta ordenado por ano
    public ResultSet listarPorAno(){
            try {
                Conexao c = new Conexao();
                String sql = "SELECT * FROM monografias ORDER BY ano desc";
                c.setSt(c.getCon().prepareStatement(sql));

                return c.getSt().executeQuery();	
            }
            catch (Exception ex) { return null; }         	   	
    }
    
    public ResultSet consultar(){
            try {
                Conexao c = new Conexao();
                String sql = "SELECT * FROM monografias";
                c.setSt(c.getCon().prepareStatement(sql));

                return c.getSt().executeQuery();	
            }
            catch (Exception ex) { return null; }         	   	
    }

    public boolean excluir(String titulo){
        try {
            Conexao c = new Conexao(); 			
            String sql = "DELETE FROM monografias WHERE titulo = ?";
            c.setSt(c.getCon().prepareStatement(sql));
            
            c.getSt().setString(1, titulo);
            
            // Executa o comando SQL
            c.getSt().executeUpdate();
            
            //Fecha o fluxo 
            c.getSt().close();
            //Fecha a conexao
            c.getCon().close();
            return(true);
        } 
        catch (Exception ex) {    return(false);       } 
    }
}
