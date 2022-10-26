/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package www.operaciones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author Arturo
 */
public class Actualiza {
    Connection conn=null;
    Statement stat=null;
    ResultSet rs=null;

    public boolean conectar(){
        boolean b=false;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            b= true;
        } catch(Exception ex) {
            b=false;
            System.out.println("Fallo driver: "+ex);
        }
        return b;
    }

    public String consultar(){
    
        String resultado="";   
        try{
            conn=DriverManager.getConnection("jdbc:mysql://localhost/","root","");

        } catch (SQLException se){
            resultado+="Mensaje: "+se.getMessage();
            resultado+="Estado: "+se.getSQLState();
            resultado+="Error: "+se.getErrorCode();
        }

        try{
            stat=conn.createStatement();
            rs=stat.executeQuery("use bibliotecadigital;");
            rs=stat.executeQuery("select * from lectura");
            String datos;
            resultado+="<table border=1>";
            resultado+="<th> Id</th>";
            resultado+="<th> Titulo</th>";
            resultado+="<th> Tipo</th>";
            resultado+="<th> Precio</th>";
            resultado+="<th> Autor</th>";
            resultado+="<th> Género</th>";
            resultado+="<th> Formato</th>";
            resultado+="<th> Tiempo de entrega</th>";
            resultado+="<th> Editorial</th>";
            resultado+="<th> Número de páginas</th>";
            resultado+="<th> Imagen</th>";
            resultado+="<th> Operación</th>";

            while (rs.next()){
                resultado+="<tr>";

                String item=rs.getString("id");
                resultado+="<td>"+item+"</td>";
                resultado+="<td>"+rs.getString("Titulo")+"</td>";
                resultado+="<td>"+rs.getString("Tipo")+"</td>";
                resultado+="<td>"+rs.getFloat("Precio")+"</td>";
                resultado+="<td>"+rs.getString("Autor")+"</td>";
                resultado+="<td>"+rs.getString("Genero")+"</td>" ;
                resultado+="<td>"+rs.getString("Formato")+"</td>";
                resultado+="<td>"+rs.getString("TiempoEntrega")+"</td>";
                resultado+="<td>"+rs.getString("Editorial")+"</td>";
                resultado+="<td>"+rs.getString("NumeroPaginas")+"</td>";
                resultado+="<td>"+rs.getString("Imagen")+"</td>";
                resultado+="<td>"+"<form target=_SELF method=POST action='formularioactualiza.jsp'>"
                        + "<input type=Hidden name=elemento value="+item+">"
                        + "<input type=Submit value='Actualiza'>"
                        + "</form>"+"</td>";
                resultado+="</tr>";
            }

            resultado+="</table>";

        } catch (SQLException se){
            resultado+="LMensaje: "+se.getMessage();
            resultado+="LEstado: "+se.getSQLState();
            resultado+="LError: "+se.getErrorCode();
        }

        return resultado;
    }

    public String actualiza(String id, String titulo,String tipo,String precio,String autor, String genero, String formato, 
    String tiempoEntrega,String editorial, String numeroPaginas, String imagen){
        String band="";
  
        try{
   
            String myDriver = "com.mysql.jdbc.Driver";
            String myUrl = "jdbc:mysql://localhost:3306/bibliotecadigital";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "");
           
            Statement st = conn.createStatement();
            
            int valor= st.executeUpdate("UPDATE lectura "
                +"SET Titulo = '"+titulo+"', Tipo ='"+tipo+"', Precio = "+precio+", Autor ='"+autor+"', Genero ='"+genero+
                "', Formato ='"+formato+"', TiempoEntrega ='"+tiempoEntrega+"', Editorial ='"+editorial+"', NumeroPaginas ='"+numeroPaginas+"', Imagen ='"+imagen
                    +"' where id ='"+id+"' ");

      
            if(valor>0){
                band+="<br>Se inserto correctamente";   
            }
            else{
                band+="<br> No se inserto correctamente";     
            }
      
            conn.close();
        }
        catch (Exception e){
            band+="Got an exception! ";
            band+=e.getMessage();
        }
        return band;
    }
    
    public String formularioActualiza(String item){
        String resultado ="";
    //Falta hacer la consulta
            Connection conn = null;
            Statement stat = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
            } catch (Exception ex) {
                resultado +=("Fallo driver: " + ex);
            }

            try {
                conn = DriverManager.getConnection("jdbc:mysql://localhost/", "root", "");

            } catch (SQLException se) {
                resultado +=("Mensaje: " + se.getMessage());
                resultado +=("Estado: " + se.getSQLState());
                resultado +=("Error: " + se.getErrorCode());
            }
            
            try {
                stat = conn.createStatement();
                rs = stat.executeQuery("use bibliotecadigital;");
                rs = stat.executeQuery("select * from lectura where id= '" + item + "'");

                resultado +=("<form method='POST' target='_SELF' action='actualizacion.jsp'>");
                while (rs.next()) {
                    resultado +=("<input type=Hidden name='id' value=" + item + ">");
                    resultado +=("<br> <B> Titulo:  </b> <input type='Text' size='30' name='Titulo' value='" + rs.getString("Titulo") + "'>");
                    resultado +=("<br> <B> Tipo:  </b> <input type='Text' size='30' name='Tipo' value='" + rs.getString("Tipo") + "'>");
                    resultado +=("<br> <B> Precio:  </b> <input type='Text' size='10' name='Precio' value='" + rs.getFloat("Precio") + "'>");
                    resultado +=("<br> <B> Autor:  </b> <input type='Text' size='30' name='Autor' value='" + rs.getString("Autor") + "'>");
                    resultado +=("<br> <B> Genero:  </b> <input type='Text' size='30' name='Genero' value='" + rs.getString("Genero") + "'>");
                    resultado +=("<br> <B> Formato:  </b> <input type='Text' size='30' name='Formato' value='" + rs.getString("Formato") + "'>");
                    resultado +=("<br> <B> Tiempo de Entrega:  </b> <input type='Text' size='30' name='TiempoEntrega' value='" + rs.getString("TiempoEntrega") + "'>");
                    resultado +=("<br> <B> Editorial:  </b> <input type='Text' size='50' name='Editorial' value='" + rs.getString("Editorial") + "'>");
                    resultado +=("<br> <B> Rango de Edad:  </b> <input type='Text' size='10' name='NumeroPaginas' value='" + rs.getString("NumeroPaginas") + "'>");
                    resultado +=("<br> <B> Idioma:  </b> <input type='Text' size='20' name='Imagen' value='" + rs.getString("Imagen") + "'>");
                    resultado +=("<br> <input type='Submit' value='Actualizar'>");
                }
                resultado +=("</form>");

            } catch (SQLException se) {
                resultado +=("LMensaje: " + se.getMessage());
                resultado +=("LEstado: " + se.getSQLState());
                resultado +=("LError: " + se.getErrorCode());
            }
            
            return resultado;
    }
}
