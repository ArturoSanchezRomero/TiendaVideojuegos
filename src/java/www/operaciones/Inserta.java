/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package www.operaciones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * @author Arturo
 */
public class Inserta {
    
    public String insercion(String titulo,String tipo,String precio,String autor, String genero, String formato, 
    String tiempoEntrega,String editorial, String numeroPaginas, String imagen){
        String resultado="";
        
        try{
            // create a mysql database connection
            String myDriver = "com.mysql.jdbc.Driver";
            String myUrl = "jdbc:mysql://localhost:3306/bibliotecadigital";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "");

            Statement st = conn.createStatement();

            // note that i'm leaving "date_created" out of this insert statement
            int valor= st.executeUpdate("INSERT INTO lectura (Titulo,Tipo, Precio,Autor,Genero,Formato,TiempoEntrega,Editorial,NumeroPaginas, Imagen) "
            +"VALUES ('"+titulo+"', '"+tipo+"',"+precio+" , '"+autor+"', '"+genero+"', '"+formato+"', '"+tiempoEntrega+"', '"+editorial+"', "+numeroPaginas
                    +", '"+imagen+"' )");
      
            if(valor>0){
                resultado+="<br>Se inserto correctamente";   
            }
            else{
                resultado+="<br> No se inserto correctamente";    
            }
     
        conn.close();
        }
        catch (Exception e){
            resultado+="Got an exception!";
            resultado+=e.getMessage();
        }

        return resultado;     
    }  
 
}
