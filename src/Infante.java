import java.sql.*;

public class Infante {
    
    static String todos = "SELECT * FROM infantes ORDER BY nombrei";
    static String curps = "SELECT curp FROM infantes ORDER BY curp";
    String curp, nombre, sexo, fecha, estado;

    

    public Infante(String curp, String nombre, String sexo, String fecha, String estado) {
        this.curp = curp;
        this.nombre = nombre;
        this.sexo = sexo;
        this.fecha = fecha;
        this.estado = estado;
    }
    
    public int insertar(Connection con){
        int resultado = 0;
        try {
            String sql = "INSERT INTO infantes VALUES(?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, curp);
            ps.setString(2, nombre);
            ps.setString(3, sexo);
            ps.setString(4, fecha);
            ps.setString(5, estado);
            return ps.executeUpdate();
            
            
        } catch (Exception e) {
            System.out.println("Errror:" +e.getLocalizedMessage());
            return resultado;
        }
        
        
    }
    public int borrar(Connection  con){
            int resultado =0;
            try {
                String sql ="DELETE FROM infantes WHERE curp =?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, curp);
                return ps.executeUpdate();
                
            } catch (Exception e) {
                System.out.println("Error: "+e.getMessage());
                return resultado;
            }
        }
            public int actualizar(Connection  con){
            int resultado =0;
            try {
                String sql ="UPDATE infantes SET nombrei = ?, sexo = ? fecha_nac = ?, estado = ? WHERE curp = ?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, nombre);
                ps.setString(2, sexo);
                ps.setString(3, fecha);
                ps.setString(4, estado);
                ps.setString(5, curp);
                                
                return ps.executeUpdate();
                
            } catch (Exception e) {
                System.out.println("Error: "+e.getMessage());
                return resultado;
            }
        }
   
}
