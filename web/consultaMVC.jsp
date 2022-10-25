<%-- 
    Document   : consultaMVC
    Created on : 29/09/2022, 12:37:03 PM
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
        <h1>Operacion Consulta con MVC</h1>
        <%
            www.operaciones.Consulta c= new www.operaciones.Consulta();
            if(c.conectar()){
               out.println( c.consultar() );
            }
            else{
                out.print("No se puede realizar la consulta");
            }
        %>
        
        
        
    </body>
</html>
