<%-- 
    Document   : consulta
    Created on : 24 oct 2022, 0:33:50
    Author     : Paty
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<%@include file="menu.jsp"%>
<main id="main-content">
    <section>
        <header>
            <header>
                <h3>Consulta</h3>
            </header>
            <form target="_SELF" method="POST" action="ejecutaparamMVC.jsp">
                <label>Tipo</label>
                <select name="cmbTipo" id="cmbTipo" required>
                    <option value="">Seleccione</option>
                    <option value="1">Libros</option>
                    <option value="2">Periodicos</option>
                    <option value="3">Revistas</option>
                </select>
                <label>Especifica el titulo</label>
                <input name="titulo" id="titulo" type="text" placeholder="Titulo" required/>
                <br/>
                <button type="submit">Buscar</button>
            </form>
        </header>
    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>
