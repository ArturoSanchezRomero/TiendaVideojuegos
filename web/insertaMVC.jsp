
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<%@include file="menu.jsp"%>

<main id="main-content">
    <script src="js/#"></script>
    <section>
        <header>
            <h3>Insertar un nuevo libro</h3>
        </header>
        
        <form id="formulario" name="formulario" method="POST" target="_SELF" action="insercionMVC.jsp">
            <BR>
            <B> Título:  </b>
            <input type="Text" size="30" name="titulo" id="titulo" required>
            <br>
            <B> Tipo:  </b>
            <select name="tipo" id="cmbTipo" required>
                <option value="">Seleccione</option>
                <option value="Libro">Libro</option>
                <option value="Periodico">Periodico</option>
                <option value="Revista">Revista</option>
            </select>
            <br>
            <B> Precio:  </b>
            <input type="number" min="1" name="precio" id="precio" required>
            <br>
            <B> Autor:  </b>
            <input type="Text" size="10" name="autor" id="autor" required>
            <br>
            <B> Género:  </b>
            <input type="Text" size="50" name="genero" id="genero" required>
            <br>
            <B> Formato:  </b>
            <select name="tipo" id="cmbTipo" required>
                <option value="">Seleccione</option>
                <option value="Electronico">Electrónico</option>
                <option value="Impreso">Impreso</option>
            </select>
            <br>
            <B> Tiempo de entrega:  </b>
            <input type="Text" size="30" name="tiempoEntrega" id="tiempoEntrega" required>
            <br>
            <B> Editorial:  </b>
            <input type="Text" size="10" name="editorial" id="editorial" required>
            <br>
            <B> Número de Páginas:  </b>
            <input type="number" min="1" name="numeroPaginas" id="numeroPaginas" required>
            <br>
            <B> Imagen:  </b>
            <input type="Text" min="1" name="imagen" id="imagen" required>
            <br>
            <input type="Submit" id="enviar" value="Insertar" >
        </form>
        <script src="js/formulario.js"></script>
    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>
