package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConsultaP {

    private String nombre, marca, cantidad, correou;
    private int id_pedido;

    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

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

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getCorreou() {
        return correou;
    }

    public void setCorreou(String correou) {
        this.correou = correou;
    }

    public void buscarInformacion() {
        final String sql = "SELECT * FROM empleado;";

        try {
            Conexion c = new Conexion();
            PreparedStatement pst = c.obtenerConexion().prepareStatement(sql);
            pst.setInt(1, id_pedido);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                nombre = rs.getString(2);
                cantidad = rs.getString(3);
                correou = rs.getString(4);
                marca = rs.getString(5);

            } else {
                System.out.println("Error");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

    public boolean addEntrega() {
        try {
            Conexion con = new Conexion();
            final String QUERY = "insert into pedidos(nombre, marca, cantidad,correou) values(?,?,?,?)";
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, nombre);
            ps.setString(2, cantidad);
            ps.setString(3, correou);
            ps.setString(4, marca);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean busqueda() {

        boolean r = false;
        try {
            final String QUERY = "select * from pedidos where nombre= ?";
            Conexion con = new Conexion();
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, nombre);
            ResultSet registro = ps.executeQuery();
            while (registro.next()) {
                cantidad = registro.getString("cantidad");
                marca = registro.getString("marca");
                nombre = registro.getString("nombre");
                correou = registro.getString("correou");

            }
            r = true;
            return r;
        } catch (Exception e) {

            e.printStackTrace();

        }
        return r;
    }

    public static void main(String[] args) {
        ConsultaP p = new ConsultaP();
        System.out.println(p.busqueda());

    }

}
