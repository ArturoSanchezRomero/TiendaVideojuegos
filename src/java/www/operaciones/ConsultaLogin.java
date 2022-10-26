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

    public String verficarDatos(String Usuario, String Password){
        String band="";
  
        try{
   
            String myDriver = "com.mysql.jdbc.Driver";
            String myUrl = "jdbc:mysql://localhost:3306/bibliotecadigital";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "");
           
            String query = "select * from lectura where Usuario = "+Usuario+" and Password="+Password;
            PreparedStatement preparedStmt = conn.prepareStatement(query);

            boolean b=preparedStmt.execute();
      
            if(b){
                band+="Hola";   
            }
            else{
                band+="No existe la cuenta";     
            }
      
            conn.close();
        }
        catch (Exception e){
            band+="Got an exception! ";
            band+=e.getMessage();
        }
        return band;
    }
}
