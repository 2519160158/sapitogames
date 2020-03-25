
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    private String url ="jdbc:postgresql://localhost:5432/sapito";
    private Connection con;
    private String user ="postgres";
    private String passwd ="YOLOTL1934";
    

   
    public Connection obtenerConexion(){
        try{
             
        
            Class.forName("org.postgresql.Driver");
            System.out.println("Exito bebes");
            return con=DriverManager.getConnection(url,user,passwd);
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con=null;
    }
 
    }
    
