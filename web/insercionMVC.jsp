<%-- 
    Document   : insercionMVC
    Created on : 7/10/2022, 12:20:45 PM
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
        <h1>Resultado de la Insercion</h1>
        
        <%
            String titulo= request.getParameter("titulo");     
            String tipo= request.getParameter("tipo");     
            String precio= request.getParameter("precio");     
            String autor= request.getParameter("autor");     
            String genero= request.getParameter("genero");     
            String formato= request.getParameter("formato");     
            String tiempoEntrega= request.getParameter("tiempoEntrega");     
            String editorial= request.getParameter("editorial");     
            String numeroPaginas= request.getParameter("numeroPaginas"); 
            String imagen= request.getParameter("imagen"); 
    
        %>
    
        <%
        www.operaciones.Inserta i=new www.operaciones.Inserta();

        out.println(i.insercion(titulo, tipo, precio, 
            autor, genero, formato, tiempoEntrega, 
            editorial, numeroPaginas, imagen));
        %>   

    </body>
</html>
