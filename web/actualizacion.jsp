<%-- 
    Document   : actualizacion2
    Created on : 7/10/2022, 10:34:29 AM
    Author     : Arturo
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>Resultado de la Actualizacion</h1>
        <%
       String id= request.getParameter("id");     
       String nombre= request.getParameter("nom");     
       String precio= request.getParameter("pre");     
       String categoria= request.getParameter("cat");     
       String fabricante= request.getParameter("fab");     
       String consola= request.getParameter("con");     
       String fecha= request.getParameter("fec");     
       String rango= request.getParameter("ran");     
       String idioma= request.getParameter("idi"); 
       /*
       out.println("<br> Id: "+id);
       out.println("<br> Nombre: "+nombre);
       out.println("<br> Precio: "+precio);
       out.println("<br> Categoria: "+categoria);
       out.println("<br> Fabricante: "+fabricante);
       out.println("<br> Consola: "+consola);
       out.println("<br> Fecha: "+fecha);
       out.println("<br> Rango: "+rango);
       out.println("<br> Idioma: "+idioma);
         */          
            
            %>
    
            <%
       
       
    try
    {
      // create a mysql database connection
      String myDriver = "com.mysql.jdbc.Driver";
      String myUrl = "jdbc:mysql://localhost:3306/gamestore";
      Class.forName(myDriver);
      Connection conn = DriverManager.getConnection(myUrl, "root", "");
      
      Statement st = conn.createStatement();

      // note that i'm leaving "date_created" out of this insert statement
        int valor= st.executeUpdate("UPDATE videojuego "
          +"SET Nombre = '"+nombre+"', Precio = "+precio+", Categoria ='"+categoria+"', Fabricante ='"+fabricante+
          "', Consola ='"+consola+"', Fecha ='"+fecha+"', RangoEdad ='"+rango+"', Idioma ='"+idioma+"' where id ='"+id+"' ");
      
        if(valor>0)
        {
         out.println("<br>Se inserto correctamente");   
        }
        else
        {
         out.println("<br> No se inserto correctamente");    
        }
     
      conn.close();
    }
    catch (Exception e)
    {
      out.println("Got an exception!");
      out.println(e.getMessage());
    }

       
       
       %>
       
       <BR>
        <BR>
        <a  href="index.html" target="_SELF" > Volver a Index </a>
        <BR>
    </body>
</html>
