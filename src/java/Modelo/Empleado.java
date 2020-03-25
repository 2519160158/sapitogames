
package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Empleado {
    private String nombre, apat, amat, edad, seguro, correo, contra;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApat() {
        return apat;
    }

    public void setApat(String apat) {
        this.apat = apat;
    }

    public String getAmat() {
        return amat;
    }

    public void setAmat(String amat) {
        this.amat = amat;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public String getSeguro() {
        return seguro;
    }

    public void setSeguro(String seguro) {
        this.seguro = seguro;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }
    
    public boolean addEmpleado(){
         try {
            Conexion con = new Conexion();
            final String QUERY = "insert into empleado(nombre,apat,amat,edad,seguro,correo,contra) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, nombre);
            ps.setString(2, apat);
            ps.setString(3, amat);
            ps.setString(4, edad);
            ps.setString(5, seguro);
            ps.setString(6, correo);
            ps.setString(7, contra);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }
    
    public void busquedapro() {

        try {
            final String QUERY = "select * from empleado where nombre=?";
            Conexion con = new Conexion();
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, nombre);
            ResultSet registro = ps.executeQuery();
            while (registro.next()) {
                apat = registro.getString("apat");
                amat = registro.getString("amat");
                edad = registro.getString("edad");
                seguro = registro.getString("seguro");
                correo = registro.getString("correo");
                contra = registro.getString("contra");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
