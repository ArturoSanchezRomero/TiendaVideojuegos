<%-- 
    Document   : ejecutaparamMVC
    Created on : 10/10/2022, 12:29:41 PM
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
        <h1>Resultado de la consulta parametrizada</h1>
        <% 
           String titulo =request.getParameter("titulo");
           out.println("Tipo: "+titulo);
           String cmbTipo =request.getParameter("cmbTipo");
           out.println("Nombre: "+cmbTipo);
        %>    
    
        <%
            www.operaciones.ConsultaParametrizada cp= new www.operaciones.ConsultaParametrizada();
            if (cp.conectar()){
                out.println(cp.consultar(titulo, cmbTipo));
            }
            else{
               out.println("No se pudo realizar la consulta");  
            }
           %>

    </body>
</html>
