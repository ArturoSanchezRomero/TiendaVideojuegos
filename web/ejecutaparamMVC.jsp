<%@page contentType="text/html" pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@include file="view/header.html"%>
<%@include file="menu.jsp"%>
<main id="main-content">
    <section>
        <header>
            <h1>Resultado de la consulta parametrizada</h1>
        </header>

        <%
            String titulo = request.getParameter("titulo");
            out.println("Valor: " + titulo);
=======
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
>>>>>>> 81bc466ae950a04ca08b4828b64f3117554afa08
        %>    

        <%
<<<<<<< HEAD
            www.operaciones.ConsultaParametrizada cp = new www.operaciones.ConsultaParametrizada();
            if (cp.conectar()) {
                out.println(cp.consultar(titulo));
            } else {
                out.println("Nose pudo realizar la consulta");
            }
        %>
    </section>
</main>
=======
            www.operaciones.ConsultaParametrizada cp= new www.operaciones.ConsultaParametrizada();
            if (cp.conectar()){
                out.println(cp.consultar(titulo, cmbTipo));
            }
            else{
               out.println("No se pudo realizar la consulta");  
            }
           %>
>>>>>>> 81bc466ae950a04ca08b4828b64f3117554afa08

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>