<%@include file="conecta.jsp"%>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    out.println("<trabalho>");
    
    try{
        String codTurma = request.getParameter("id");
        if(codTurma!=null){
            ResultSet rs = stmt.executeQuery("SELECT * FROM monografias WHERE id = "+codTurma+" ORDER BY id");
            while(rs.next()){
                out.println("<monografia>");
                out.println("<titulo>"+rs.getString("titulo")+"</titulo>");
                out.println("<orientador>"+rs.getString("orientador")+"</orientador>");
                out.println("<palavra1>"+rs.getString("palavra1")+"</palavra1>");
                out.println("<palavra2>"+rs.getString("palavra2")+"</palavra2>");
                out.println("<palavra3>"+rs.getString("palavra3")+"</palavra3>");
                out.println("<area>"+rs.getString("area_concentracao")+"</area>");
                out.println("<ano>"+rs.getString("ano")+"</ano>");
                out.println("<local>"+rs.getString("local")+"</local>");
                out.println("<resumo>"+rs.getString("resumo")+"</resumo>");
                out.println("</monografia>");
            }
            rs.close();
       }
    }catch(Exception e){
         out.println("<mensagem>"+e.getMessage()+"</mensagem>");
    }
    out.println("</trabalho>");
%>