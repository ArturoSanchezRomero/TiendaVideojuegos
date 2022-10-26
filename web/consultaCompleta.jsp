
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<%@include file="menu2.jsp"%>
<main id="main-content">
    <section>
        <header>
            <h1>Operacion Consulta con MVC</h1>
        </header>
        <%
            String item= request.getParameter("elemento");   
            
            www.operaciones.Consulta c = new www.operaciones.Consulta();
            if (c.conectar()) {
                out.println(c.consultaUno(item));
            } else {
                out.print("No se puede realizar la consulta");
            }
        %>
    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>


