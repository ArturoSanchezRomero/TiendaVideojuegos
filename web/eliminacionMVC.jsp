<%-- 
    Document   : eliminacionMVC
    Created on : 7/10/2022, 12:40:57 PM
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
        <h1>Resultado de la Eliminacion</h1>
        <%
            String item= request.getParameter("elemento");    
        %>
        
        <%
            www.operaciones.Elimina e = new www.operaciones.Elimina();
              out.println( e.eliminar(item) );
        %>        
    </body>
</html>
