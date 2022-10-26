
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<%@include file="menu.jsp"%>
<main id="main-content">
    <section>
        <header>
            <h1>Resultado de la Eliminacion</h1>
        </header>
        
        <%
            String item= request.getParameter("elemento");    
        %>
        
        <%
            www.operaciones.Elimina e = new www.operaciones.Elimina();
              out.println( e.eliminar(item) );
        %>        
   </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>

