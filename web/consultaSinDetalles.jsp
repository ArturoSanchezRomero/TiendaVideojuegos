<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<%@include file="menuInicio.jsp"%>
<main id="main-content">
    <section>
        <header>
            <h1>Resultado de la consulta parametrizada</h1>
        </header>


        <% 
           String cmbTipo =request.getParameter("cmbTipo");
           out.println("Tipo: "+cmbTipo);
           String titulo =request.getParameter("titulo");
           out.println("Titulo: "+titulo);
        %>    

        <%
            www.operaciones.ConsultaParametrizada cp= new www.operaciones.ConsultaParametrizada();
            if (cp.conectar()){
                out.println(cp.consultaMini(titulo, cmbTipo));
            }
            else{
               out.println("No se pudo realizar la consulta");  
            }
           %>
    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>