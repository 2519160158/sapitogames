package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class regis {

    private String nombre, marca,descripcion,cantidad,precio;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

  
 

    public boolean addConsola() {
        try {
            Conexion con = new Conexion();
            final String QUERY = "insert into consolas(nombre,marca,descripcion,cantidad,precio) values(?,?,?,?,?)";
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, nombre);
            ps.setString(2, marca);
            ps.setString(3, descripcion);
            ps.setString(4, cantidad);
            ps.setString(5, precio);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}