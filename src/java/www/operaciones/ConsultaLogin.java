/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
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
public class ConsultaLogin {
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

    public boolean verficarDatos(String Usuario, String Password){
        String resultado="";
        boolean b=false;
  
        try{
            String myDriver = "com.mysql.jdbc.Driver";
            String myUrl = "jdbc:mysql://localhost:3306/bibliotecadigital";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "");

            Statement st = conn.createStatement();

            // note that i'm leaving "date_created" out of this insert statement
            rs = st.executeQuery("select * from login where Usuario = '"+Usuario+"' and Password= '"+Password+"';");
            rs.next();
            if(rs.getRow()==1){
                resultado+="Valor encontrado";   
                b=true;
            }
            else{
                resultado+="Falso";    
            }
      
            conn.close();
        }
        catch (Exception e){
            resultado+="Got an exception! ";
            resultado+=e.getMessage();
        }
        return b;
    }
}
