package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Producto {

    private String nombre, tipo, marca, funcion, elementos, concentracion;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getFuncion() {
        return funcion;
    }

    public void setFuncion(String funcion) {
        this.funcion = funcion;
    }

    public String getElementos() {
        return elementos;
    }

    public void setElementos(String elementos) {
        this.elementos = elementos;
    }

    public String getConcentracion() {
        return concentracion;
    }

    public void setConcentracion(String concentracion) {
        this.concentracion = concentracion;
    }

    public boolean addProducto() {
        try {
            Conexion con = new Conexion();
            final String QUERY = "insert into producto(nombre, tipo, marca, funcion, elementos, concentracion) values(?,?,?,?,?,?)";
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, nombre);
            ps.setString(2, tipo);
            ps.setString(3, marca);
            ps.setString(4, funcion);
            ps.setString(5, elementos);
            ps.setString(6, concentracion);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void busquedapro() {

        try {
            final String QUERY = "select * from producto where nombre like '%?'";
            Conexion con = new Conexion();
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, nombre);
            ResultSet registro = ps.executeQuery();
            while (registro.next()) {
                nombre = registro.getString("nombre");
                tipo = registro.getString("tipo");
                marca = registro.getString("marca");
                funcion = registro.getString("funcion");
                elementos = registro.getString("elementos");
                concentracion = registro.getString("concentracion");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
        public void busqueda() {

        try {
            final String QUERY = "select * from producto";
            Conexion con = new Conexion();
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ResultSet registro = ps.executeQuery();
            while (registro.next()) {
                nombre = registro.getString("nombre");
                tipo = registro.getString("tipo");
                marca = registro.getString("marca");
                funcion = registro.getString("funcion");
                elementos = registro.getString("elementos");
                concentracion = registro.getString("concentracion");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
