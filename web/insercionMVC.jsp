
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<%@include file="menu.jsp"%>
<main id="main-content">
    <section>
        <header>
            <h1>Resultado de la Insercion</h1>
        </header>
        <%
            String titulo = request.getParameter("titulo");
            String tipo = request.getParameter("tipo");
            String precio = request.getParameter("precio");
            String autor = request.getParameter("autor");
            String genero = request.getParameter("genero");
            String formato = request.getParameter("formato");
            String tiempoEntrega = request.getParameter("tiempoEntrega");
            String editorial = request.getParameter("editorial");
            String numeroPaginas = request.getParameter("numeroPaginas");
            String imagen = request.getParameter("imagen");

        %>

        <%            
            www.operaciones.Inserta i = new www.operaciones.Inserta();

            out.println(i.insercion(titulo, tipo, precio,
                    autor, genero, formato, tiempoEntrega,
                    editorial, numeroPaginas, imagen));
        %>   

    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>   