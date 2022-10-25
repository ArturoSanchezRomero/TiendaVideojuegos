<%-- 
    Document   : verificarlogin
    Created on : 25/10/2022, 12:41:05 PM
    Author     : Arturo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inicio</h1>
        <%
            String usuario= request.getParameter("txtCorreoUsu");   
            String password= request.getParameter("password");  
            
            www.operaciones.ConsultaLogin c= new www.operaciones.ConsultaLogin();
            if(c.conectar()){
               out.println( c.verficarDatos(usuario, password) );
            }
            else{
                out.print("No se puede realizar la consulta");
            }
        %>
    </body>
</html>
