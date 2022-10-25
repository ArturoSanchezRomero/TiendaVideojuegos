<%-- 
    Document   : eliminaMVC
    Created on : 29/09/2022, 12:38:57 PM
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
        <h1>Operacion Elimina con MVC</h1>
        <%
            www.operaciones.Elimina e= new www.operaciones.Elimina();
    
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
