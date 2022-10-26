<%-- 
    Document   : actualizaMVC
    Created on : 29/09/2022, 12:39:28 PM
    Author     : giner
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
            <h1>Operacion Actualiza con MVC</h1>
        </header>
        <%
            www.operaciones.Actualiza e= new www.operaciones.Actualiza();
    
            if(e.conectar())
            {
              out.println(e.consultar());
            }
            else{
              out.println("Error en la conexion");
            }        
        %>
    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>
