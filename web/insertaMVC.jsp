
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
            <input type="Text" size="39" name="titulo" id="titulo" required>
            <br>
            <br>
            <B> Tipo:  </b>
            <select name="tipo" id="tipo" required>
                <option value="">Seleccione</option>
                <option value="Libro">Libro</option>
                <option value="Periodico">Periodico</option>
                <option value="Revista">Revista</option>
            </select>
            <br>
            <br>
            <B> Precio:  </b>
            <input type="number" min="1" name="precio" id="precio" required>
            <br>
            <br>
            <B> Autor:  </b>
            <input type="Text" size="30" name="autor" id="autor" required>
            <br>
            <br>
            <B> Género:  </b>
            <input type="Text" size="28" name="genero" id="genero" required>
            <br>
            <br>
            <B> Formato:  </b>
            <select name="formato" id="formato" required>
                <option value="">Seleccione</option>
                <option value="Electronico">Electrónico</option>
                <option value="Impreso">Impreso</option>
            </select>
            <br>
            <br>
            <B> Tiempo de entrega:  </b>
            <input type="Text" size="20" name="tiempoEntrega" id="tiempoEntrega" required>
            <br>
            <br>
            <B> Editorial:  </b>
            <input type="Text" size="20" name="editorial" id="editorial" required>
            <br>
            <br>
            <B> Número de Páginas:  </b>
            <input type="number" min="1" name="numeroPaginas" id="numeroPaginas" required>
            <br>
            <br>
            <B> Imagen:  </b>
            <input type="Text" min="1" name="imagen" id="imagen" required>
            <br>
            <br>
            <input type="Submit" id="enviar" value="Insertar" >
        </form>
        <script src="js/formulario.js"></script>
    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>
