/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package www.operaciones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author Arturo
 */
public class ConsultaParametrizada {

    Connection conn=null;
    Statement stat=null;
    ResultSet rs=null;

    public boolean conectar(){

        boolean b=false;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            b= true;
        }catch(Exception ex) {
            b=false;
            System.out.println("Fallo driver: "+ex);
        }
        return b;
    }
     
    public String  consultar(String titulo, String tipo){
    
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
            rs=stat.executeQuery("select * from lectura where Titulo LIKE '%"+titulo+"%' and Tipo = '"+tipo+"'");
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
            resultado+="<th> Número de páginas</th>";
            resultado+="<th> Imagen</th>";

        while (rs.next()){
            resultado+="<tr>";
            resultado+="<td>"+rs.getString("Id")+"</td>";
            resultado+="<td>"+rs.getString("Titulo")+"</td>";
            resultado+="<td>"+rs.getString("Tipo")+"</td>";
            resultado+="<td>"+rs.getFloat("Precio")+"</td>";
            resultado+="<td>"+rs.getString("Autor")+"</td>";
            resultado+="<td>"+rs.getString("Genero")+"</td>" ;
            resultado+="<td>"+rs.getString("Formato")+"</td>";
            resultado+="<td>"+rs.getString("TiempoEntrega")+"</td>";
            resultado+="<td>"+rs.getString("NumeroPaginas")+"</td>";
            resultado+="<td>"+rs.getString("Imagen")+"</td>";
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
    
    public String consultaMini(String titulo, String tipo){
    
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
            rs=stat.executeQuery("select * from lectura where Titulo LIKE '%"+titulo+"%' and Tipo = '"+tipo+"'");
            
            resultado+="<table border=1>";
            resultado+="<th> Id</th>";
            resultado+="<th> Titulo</th>";
            resultado+="<th> Precio</th>";
            resultado+="<th> Autor</th>";
            resultado+="<th> Género</th>";
            resultado+="<th> Ver más</th>";

        while (rs.next()){
            String item=rs.getString("Id");
            resultado+="<tr>";
            resultado+="<td>"+rs.getString("Id")+"</td>";
            resultado+="<td>"+rs.getString("Titulo")+"</td>";
            resultado+="<td>"+rs.getFloat("Precio")+"</td>";
            resultado+="<td>"+rs.getString("Autor")+"</td>";
            resultado+="<td>"+rs.getString("Genero")+"</td>" ;
            resultado+="<td>"+"<form target=_SELF method=POST action='consultaUnoDetalles.jsp'>"
                        + "<input type=Hidden name='elemento' value="+item+">"
                        + "<input type=Submit value='Detalles'>"
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
    
    public String consultaMiniLogin(String titulo, String tipo){
    
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
            rs=stat.executeQuery("select * from lectura where Titulo LIKE '%"+titulo+"%' and Tipo = '"+tipo+"'");
            
            resultado+="<table border=1>";
            resultado+="<th> Id</th>";
            resultado+="<th> Titulo</th>";
            resultado+="<th> Precio</th>";
            resultado+="<th> Autor</th>";
            resultado+="<th> Género</th>";
            resultado+="<th> Ver más</th>";

        while (rs.next()){
            String item=rs.getString("Id");
            resultado+="<tr>";
            resultado+="<td>"+rs.getString("Id")+"</td>";
            resultado+="<td>"+rs.getString("Titulo")+"</td>";
            resultado+="<td>"+rs.getFloat("Precio")+"</td>";
            resultado+="<td>"+rs.getString("Autor")+"</td>";
            resultado+="<td>"+rs.getString("Genero")+"</td>" ;
            resultado+="<td>"+"<form target=_SELF method=POST action='consultaUnoDetalles.jsp'>"
                        + "<input type=Hidden name='elemento' value="+item+">"
                        + "<input type=Submit value='Detalles'>"
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
}
