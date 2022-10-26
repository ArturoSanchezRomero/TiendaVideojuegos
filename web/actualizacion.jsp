<%-- 
    Document   : actualizacion2
    Created on : 7/10/2022, 10:34:29 AM
    Author     : Arturo
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<%@include file="menu.jsp"%>
<main id="main-content">
    <section>
        <header>
            <h1>Resultado de la Actualizacion</h1>
        </header>

        <%
            String id = request.getParameter("id");
            String titulo = request.getParameter("Titulo");
            String tipo = request.getParameter("Tipo");
            String precio = request.getParameter("Precio");
            String autor = request.getParameter("Autor");
            String genero = request.getParameter("Genero");
            String formato = request.getParameter("Formato");
            String tiempoEntrega = request.getParameter("TiempoEntrega");
            String editorial = request.getParameter("Editorial");
            String numeroPaginas = request.getParameter("NumeroPaginas");
            String imagen = request.getParameter("Imagen");

        %>

        <%            www.operaciones.Actualiza i = new www.operaciones.Actualiza();

            out.println(i.actualiza(id, titulo, tipo, precio,
                    autor, genero, formato, tiempoEntrega,
                    editorial, numeroPaginas, imagen));
        %>   

        <BR>
        <BR>
        <a  href="index.html" target="_SELF" > Volver a Index </a>
        <BR>

    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>