
import java.sql.Connection;
import java.sql.PreparedStatement;


public class Bitacora {
    static String todos = "SELECT * FROM bitacora ORDER BY folio DESC";
    String folio, tiempo, tipo, observaciones, infantesC, responsablesC, educadoresC;
    
    public Bitacora(){
        
    }
    public Bitacora(String folio, String tiempo, String tipo, String observaciones, String infantes_curpr, String responsables_curpr, String educadores_curpe) {
        this.folio = folio;
        this.tiempo = tiempo;
        this.tipo = tipo;
        this.observaciones = observaciones;
        this.infantesC = infantes_curpr;
        this.responsablesC = responsables_curpr;
        this.educadoresC = educadores_curpe;
    }
     public int insertar(Connection con){
        
        try {
            String sql = "INSERT INTO bitacora (tiempo, tipo, observaciones, infantes_curp, responsables_curpr, educadores_curpe) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, tiempo);
            ps.setString(2, tipo);
            ps.setString(3, observaciones);
            ps.setString(4, infantesC);
            ps.setString(5, responsablesC);
            ps.setString(6, educadoresC);
            return ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Errror:" +e.getLocalizedMessage());
           return 0;
        }
        
        
    }
          public int borrar(Connection  con){
            try {
                PreparedStatement ps = con.prepareStatement("DELETE FROM bitacora WHERE folio = ?");
                ps.setString(1, folio);
                return ps.executeUpdate();
                
            } catch (Exception e) {
                System.out.println("Error: "+e.getMessage());
                return 0;
            }
        
          

          }
            public int actualizar(Connection  con){
           
            try {
                String sql = "UPDATE bitacora SET tiempo = ?, tipo = ?, observaciones = ?, infantes_curp = ?, responsables_curpr = ?, educadores_curpe = ? WHERE folio = ?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, tiempo);
                ps.setString(2, tipo);
                ps.setString(3, observaciones);
                ps.setString(4, infantesC);
                ps.setString(5, responsablesC);
                ps.setString(6, educadoresC);
                ps.setString(7, folio);
                
               
                                
                return ps.executeUpdate();
                
            } catch (Exception e) {
                System.out.println("Error: "+e.getMessage());
                return 0;
            }
        }
}
