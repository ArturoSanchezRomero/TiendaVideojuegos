<%-- 
    Document   : actualizaMVC
    Created on : 29/09/2022, 12:39:28 PM
    Author     : giner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Operacion Actualiza con MVC</h1>
        <%
            www.operaciones.Actualiza e= new www.operaciones.Actualiza();
    
            if(e.conectar())
            {
              out.println(e.consultar());
            }
            else{
              out.println("Error en la conexion");
            }        
        %>
    </body>
</html>
