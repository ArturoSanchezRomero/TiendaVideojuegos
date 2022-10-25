<%-- 
    Document   : insertaMVC
    Created on : 29/09/2022, 12:38:17 PM
    Author     : giner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<%@include file="menu.jsp"%>

<main id="main-content">
    <script src="js/#"></script>
    <section>
        <header>
            <h3>Insertar</h3>
        </header>
        <script src="js/formulario.js"></script>
        <form id="formulario" name="formulario" method="POST" target="_SELF" action="insercionMVC.jsp">
            <BR>
            <B> Título:  </b>
            <input type="Text" size="30" name="titulo" id="titulo">
            <br>
            <B> Tipo:  </b>
            <input type="Text" size="30" name="tipo" id="tipo">
            <br>
            <B> Precio:  </b>
            <input type="number" min="1" name="precio" id="precio">
            <br>
            <B> Autor:  </b>
            <input type="Text" size="10" name="autor" id="autor">
            <br>
            <B> Género:  </b>
            <input type="Text" size="50" name="genero" id="genero">
            <br>
            <B> Formato:  </b>
            <input type="Text" size="50" name="formato" id="formato">
            <br>
            <B> Tiempo de entrega:  </b>
            <input type="Text" size="30" name="tiempoEntrega" id="tiempoEntrega">
            <br>
            <B> Editorial:  </b>
            <input type="Text" size="10" name="editorial" id="editorial">
            <br>
            <B> Número de Páginas:  </b>
            <input type="number" min="1" name="numeroPaginas" id="numeroPaginas">
            <br>
            <B> Imagen:  </b>
            <input type="Text" min="1" name="imagen" id="imagen">
            <br>
            <input type="Submit" id="enviar" value="Insertar" >
        </form>
    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>
