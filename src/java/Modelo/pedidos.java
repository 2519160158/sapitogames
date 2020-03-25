package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class pedidos {

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

  

    private String nombre, cantidad, marca, correo;

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public boolean addEntrega() {
        try {
            Conexion con = new Conexion();
            final String QUERY = "insert into pedidos(nombre, marca, cantidad,correou) values(?,?,?,?)";
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, nombre);
            ps.setString(2, marca);
            ps.setString(3, cantidad );
            ps.setString(4, correo);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void busqueda() {
        try {
            final String QUERY = "select * from pedidos where nombre like '%?'";
            Conexion con = new Conexion();
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, nombre);
            ResultSet registro = ps.executeQuery();
            while (registro.next()) {
                cantidad = registro.getString("cantidad");
                marca = registro.getString("marca");
                nombre = registro.getString("nombre");
                correo = registro.getString("correo");
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
}


}
