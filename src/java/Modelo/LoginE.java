package Modelo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class LoginE {
    private String correo, contra;

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
    public boolean entrar() {
        try {
            Conexion con = new Conexion();
            final String QUERY = "select * from admin where correo=? and contraseña=?";
            PreparedStatement ps = con.obtenerConexion().prepareStatement(QUERY);
            ps.setString(1, correo);
            ps.setString(2, contra);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
            return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    } 
}
