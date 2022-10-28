<%-- 
    Document   : index
    Created on : 23 oct 2022, 0:23:24
    Author     : Paty
--%>
<a href="Inserta.jsp"></a>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<!-- menu.html -->
            <nav id="main-nav">
                <h2> Menú </h2>
                <a href="index.jsp" class="menu" id="mnuInicio">Inicio</a>
            </nav> 
<!-- login.html -->
            <main id="main-content">
                <section>
                    <header>
                        <h3>Ingresar al Sistema</h3>
                    </header>
                    <script src="js/ctrlLogin.js"></script>
                    <form id="frmLogin" name="frmLogin" method="post" action="verificarlogin.jsp">
                        <label>Correo</label> 
                        <input type="email" id="txtCorreoUsu" name="txtCorreoUsu" placeholder="Gmail" required/>
                        <br/>
                        <br/>
                        <label>Contrase&ntilde;a</label> 
                        <input type="password" name="password" id="password" placeholder="Longitud de 9-11 caracteres" required/>
                        <br/>
                        <br/>
                        <input type="button" id="enviar" value="Ingresar"/>
                    </form>
                </section>
            </main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>