package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Cliente {

    private String nombre, apellido, correo,contra;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

 

    public boolean addCliente() {
        try {
            Conexion con = new Conexion();
            final String QUERY = "insert into cliente(nombre,apellido,correo,contraseña) values(?,?,?,?)";
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, nombre);
            ps.setString(2, apellido);
            ps.setString(3, correo);
            ps.setString(4, contra);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void busquedapro() {

        try {
            final String QUERY = "select * from cliente where nombre=?";
            Conexion con = new Conexion();
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, nombre);
            ResultSet registro = ps.executeQuery();
            while (registro.next()) {
               
            
                contra = registro.getString("contra");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
