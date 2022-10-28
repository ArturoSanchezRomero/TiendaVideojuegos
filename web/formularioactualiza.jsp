<%-- 
    Document   : actualizacion
    Created on : 7/10/2022, 10:22:41 AM
    Author     : Arturo
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<%@include file="menu.jsp"%>
<main id="main-content">
    <section>
        <header>
            <h1>Actualiza el producto</h1>
        </header>
        <%
            String item = request.getParameter("elemento");
            out.println("Elemento a actualizar :" + item + "<br>");

            www.operaciones.Actualiza i = new www.operaciones.Actualiza();

            out.println(i.formularioActualiza(item));

        %>
    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>

