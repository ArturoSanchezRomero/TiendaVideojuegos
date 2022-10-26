
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<%@include file="menu.jsp"%>
<main id="main-content">
    <section>
        <header>
            <h1>Operacion Elimina con MVC</h1>
        </header>

        <%
            www.operaciones.Elimina e = new www.operaciones.Elimina();

            if (e.conectar()) {
                out.println(e.consultar());
            } else {
                out.println("Error en la conexion");
            }
        %>
    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>
