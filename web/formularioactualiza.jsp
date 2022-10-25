<%-- 
    Document   : actualizacion
    Created on : 7/10/2022, 10:22:41 AM
    Author     : Arturo
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Actualiza el producto</h1>
         <%
         
         //Falta hacer la consulta
        Connection conn=null;
        Statement stat=null;
        ResultSet rs=null;
        try
        {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch(Exception ex) {
            out.println("Fallo driver: "+ex);
        }

        try
        {
        conn=DriverManager.getConnection("jdbc:mysql://localhost/","root","");

        } catch (SQLException se)
        {
        out.println("Mensaje: "+se.getMessage());
        out.println("Estado: "+se.getSQLState());
        out.println("Error: "+se.getErrorCode());
        }
        
        String item= request.getParameter("elemento");
        out.println("Elemento a actualizar :"+ item + "<br>");

        try
        {
        stat=conn.createStatement();
        rs=stat.executeQuery("use gamestore;");
        rs=stat.executeQuery("select * from videojuego where id= '"+item+"'");

        out.println("<form method='POST' target='_SELF' action='actualizacion.jsp'>");
        while (rs.next())
        {
        out.println("<input type=Hidden name='id' value="+item+">");
        out.println("<br> <B> Nombre:  </b> <input type='Text' size='30' name='nom' value='"+rs.getString("Nombre")+"'>");
        out.println("<br> <B> Precio:  </b> <input type='Text' size='10' name='pre' value='"+rs.getFloat("Precio")+"'>");
        out.println("<br> <B> Categoria:  </b> <input type='Text' size='30' name='cat' value='"+rs.getString("Categoria")+"'>");
        out.println("<br> <B> Fabricante:  </b> <input type='Text' size='30' name='fab' value='"+rs.getString("Fabricante")+"'>");
        out.println("<br> <B> Consola:  </b> <input type='Text' size='30' name='con' value='"+rs.getString("Consola")+"'>");
        out.println("<br> <B> Fecha de Lanzamiento:  </b> <input type='Text' size='30' name='fec' value='"+rs.getString("Fecha")+"'>");
        out.println("<br> <B> Rango de Edad:  </b> <input type='Text' size='10' name='ran' value='"+rs.getString("RangoEdad")+"'>");
        out.println("<br> <B> Idioma:  </b> <input type='Text' size='20' name='idi' value='"+rs.getString("Idioma")+"'>");
        out.println("<br> <input type='Submit' value='Actualizar'>");
        }
        out.println("</form>");
        
        
        } catch (SQLException se)
        {
        out.println("LMensaje: "+se.getMessage());
        out.println("LEstado: "+se.getSQLState());
        out.println("LError: "+se.getErrorCode());
        }
  
            
         
         //Llenar el formulario
            %>
         
    </body>
</html>
