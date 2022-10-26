<%-- 
    Document   : actualizacion
    Created on : 7/10/2022, 10:22:41 AM
    Author     : Arturo
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="view/header.html"%>
<%@include file="menu.jsp"%>
<main id="main-content">
    <section>
        <header>
            <h1>Actualiza el producto</h1>
        </header>

        <%

            //Falta hacer la consulta
            Connection conn = null;
            Statement stat = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
            } catch (Exception ex) {
                out.println("Fallo driver: " + ex);
            }

            try {
                conn = DriverManager.getConnection("jdbc:mysql://localhost/", "root", "");

            } catch (SQLException se) {
                out.println("Mensaje: " + se.getMessage());
                out.println("Estado: " + se.getSQLState());
                out.println("Error: " + se.getErrorCode());
            }

            //Obtenemos los datos
            String item = request.getParameter("elemento");
            out.println("Elemento a actualizar :" + item + "<br>");

            try {
                stat = conn.createStatement();
                rs = stat.executeQuery("use bibliotecadigital;");
                rs = stat.executeQuery("select * from lectura where id= '" + item + "'");

                out.println("<form method='POST' target='_SELF' action='actualizacion.jsp'>");
                while (rs.next()) {
                    out.println("<input type=Hidden name='id' value=" + item + ">");
                    out.println("<br> <B> Titulo:  </b> <input type='Text' size='30' name='Titulo' value='" + rs.getString("Titulo") + "'>");
                    out.println("<br> <B> Tipo:  </b> <input type='Text' size='30' name='Tipo' value='" + rs.getString("Tipo") + "'>");
                    out.println("<br> <B> Precio:  </b> <input type='Text' size='10' name='Precio' value='" + rs.getFloat("Precio") + "'>");
                    out.println("<br> <B> Autor:  </b> <input type='Text' size='30' name='Autor' value='" + rs.getString("Autor") + "'>");
                    out.println("<br> <B> Genero:  </b> <input type='Text' size='30' name='Genero' value='" + rs.getString("Genero") + "'>");
                    out.println("<br> <B> Formato:  </b> <input type='Text' size='30' name='Formato' value='" + rs.getString("Formato") + "'>");
                    out.println("<br> <B> Tiempo de Entrega:  </b> <input type='Text' size='30' name='TiempoEntrega' value='" + rs.getString("TiempoEntrega") + "'>");
                    out.println("<br> <B> Editorial:  </b> <input type='Text' size='50' name='Editorial' value='" + rs.getString("Editorial") + "'>");
                    out.println("<br> <B> Rango de Edad:  </b> <input type='Text' size='10' name='NumeroPaginas' value='" + rs.getString("NumeroPaginas") + "'>");
                    out.println("<br> <B> Idioma:  </b> <input type='Text' size='20' name='Imagen' value='" + rs.getString("Imagen") + "'>");
                    out.println("<br> <input type='Submit' value='Actualizar'>");
                }
                out.println("</form>");

            } catch (SQLException se) {
                out.println("LMensaje: " + se.getMessage());
                out.println("LEstado: " + se.getSQLState());
                out.println("LError: " + se.getErrorCode());
            }

        %>
    </section>
</main>

<%@include file="view/lateral1.html"%>
<%@include file="view/lateral2.html"%>
<%@include file="view/footer.html"%>

