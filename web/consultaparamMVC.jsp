<%-- 
    Document   : consultaparamMVC
    Created on : 10/10/2022, 12:24:24 PM
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
        <h1>Operacion de consulta parametrizada con MVC</h1>
        <form target="_SELF" method="POST" action="ejecutaparamMVC.jsp">
            <br>
            <b> Inserte la ctaegoria a buscar:
            <br>
            <input type="Text" name="criterio" size="20">
            <br>
            <input type="Submit" value="Buscar">
        </form>      
    </body>
</html>
