
import java.sql.Connection;
import java.sql.PreparedStatement;


public class Educador {
    
    static String todos = "SELECT * FROM educadores ORDER BY nombree";
    static String curps = "SELECT curpe FROM educadores ORDER BY curpe";
    
    String curpe, nombree, sexoe, telefonoe, direccion, estado;

    public Educador(){
        
    }
    public Educador(String curpe, String nombree, String sexoe, String telefonoe,String direccion, String estado) {
        this.curpe = curpe;
        this.nombree = nombree;
        this.sexoe = sexoe;
        this.telefonoe = telefonoe;
        this.direccion = direccion;
        this.estado = estado;
    }
    
    public int insertar(Connection con){
        int resultado = 0;
        try {
            String sql = "INSERT INTO educadores (curpe, nombree, sexoe, telefonoe, direccion, estadoe) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, nombree);
            ps.setString(2, sexoe);
            ps.setString(3, telefonoe);
            ps.setString(4, direccion);
            ps.setString(5, estado);
            ps.setString(6, curpe);
            return ps.executeUpdate();
            
            
        } catch (Exception e) {
            System.out.println("Errror:" +e.getLocalizedMessage());
            return resultado;
        }
        
        
    }
    public int borrar(Connection  con){
            int resultado =0;
            try {
                String sql ="DELETE FROM educadores WHERE curpe =?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, curpe);
                return ps.executeUpdate();
                
            } catch (Exception e) {
                System.out.println("Error: "+e.getMessage());
                return resultado;
            }
        }
            public int actualizar(Connection  con){
            int resultado =0;
            try {
                String sql ="UPDATE educadores SET nombree = ?,  sexoe = ?,  telefonoe = ?,  direccion= ?,  estadoe =? WHERE curpe = ?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, nombree);
                ps.setString(2, sexoe);
                ps.setString(3, telefonoe);
                ps.setString(4, direccion);
                ps.setString(5, estado);
                ps.setString(6, curpe);
                                
                return ps.executeUpdate();
                
            } catch (Exception e) {
                System.out.println("Error: "+e.getMessage());
                return resultado;
            }
        }
    
}
