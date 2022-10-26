<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        %>    

        <%
            www.operaciones.ConsultaParametrizada cp = new www.operaciones.ConsultaParametrizada();
            if (cp.conectar()) {
                out.println(cp.consultar(titulo));
            } else {
                out.println("Nose pudo realizar la consulta");
            }
        %>
    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>