import java.sql.Connection;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public class FPrincipal extends javax.swing.JFrame {
    
    Conexion cnx = new Conexion();
    
    public FPrincipal() {
        initComponents();
        setTitle("Parte Principal");
        setSize(745, 600);
        setLocationRelativeTo(null);
        TQuery.setAutoCreateRowSorter(true);
        setLocationRelativeTo(null);
        setTitle("Tabla");
        if (cnx.conectar("127.0.0.1", "kindergarden", "root", "" )==1) {
            cnx.entablar(Infante.todos, TQuery);
        } else {
            JOptionPane.showMessageDialog(this, "No se puede conectar: ");
            System.exit(0);
        }
        
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jToolBar1 = new javax.swing.JToolBar();
        JInfantes = new javax.swing.JToggleButton();
        JEducadores = new javax.swing.JToggleButton();
        JTutores = new javax.swing.JToggleButton();
        JBitacora = new javax.swing.JToggleButton();
        jBBnuevoutton1 = new javax.swing.JButton();
        BEditar = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        TQuery = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jToolBar1.setRollover(true);

        buttonGroup1.add(JInfantes);
        JInfantes.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        JInfantes.setForeground(new java.awt.Color(204, 0, 0));
        JInfantes.setSelected(true);
        JInfantes.setText("Infantes");
        JInfantes.setFocusable(false);
        JInfantes.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        JInfantes.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        JInfantes.addActionListener(this::JInfantesActionPerformed);
        jToolBar1.add(JInfantes);

        buttonGroup1.add(JEducadores);
        JEducadores.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        JEducadores.setForeground(new java.awt.Color(204, 0, 0));
        JEducadores.setText("Educadores");
        JEducadores.setFocusable(false);
        JEducadores.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        JEducadores.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        JEducadores.addActionListener(this::JEducadoresActionPerformed);
        jToolBar1.add(JEducadores);

        buttonGroup1.add(JTutores);
        JTutores.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        JTutores.setForeground(new java.awt.Color(204, 0, 0));
        JTutores.setText("Tutores/Responsables");
        JTutores.setFocusable(false);
        JTutores.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        JTutores.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        JTutores.addActionListener(this::JTutoresActionPerformed);
        jToolBar1.add(JTutores);

        buttonGroup1.add(JBitacora);
        JBitacora.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        JBitacora.setForeground(new java.awt.Color(204, 0, 0));
        JBitacora.setText("Bitacora");
        JBitacora.setFocusable(false);
        JBitacora.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        JBitacora.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        JBitacora.addActionListener(this::JBitacoraActionPerformed);
        jToolBar1.add(JBitacora);

        jBBnuevoutton1.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jBBnuevoutton1.setForeground(new java.awt.Color(255, 0, 0));
        jBBnuevoutton1.setText("Nuevo");
        jBBnuevoutton1.setFocusable(false);
        jBBnuevoutton1.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        jBBnuevoutton1.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        jBBnuevoutton1.addActionListener(this::jBBnuevoutton1ActionPerformed);
        jToolBar1.add(jBBnuevoutton1);

        BEditar.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        BEditar.setForeground(new java.awt.Color(204, 0, 0));
        BEditar.setText("Editar");
        BEditar.setFocusable(false);
        BEditar.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        BEditar.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        BEditar.addActionListener(this::BEditarActionPerformed);
        jToolBar1.add(BEditar);

        getContentPane().add(jToolBar1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 710, 52));

        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        TQuery.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(TQuery);

        jPanel1.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 710, 530));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 58, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void JInfantesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_JInfantesActionPerformed
        cnx.entablar(Infante.todos, TQuery);
    }//GEN-LAST:event_JInfantesActionPerformed

    private void JEducadoresActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_JEducadoresActionPerformed
        cnx.entablar(Educador.todos, TQuery);
    }//GEN-LAST:event_JEducadoresActionPerformed

    private void JTutoresActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_JTutoresActionPerformed
        cnx.entablar(Responsable.todos, TQuery);
    }//GEN-LAST:event_JTutoresActionPerformed

    private void JBitacoraActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_JBitacoraActionPerformed
        cnx.entablar(Bitacora.todos, TQuery);
    }//GEN-LAST:event_JBitacoraActionPerformed

    private void jBBnuevoutton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jBBnuevoutton1ActionPerformed
        if (JInfantes.isSelected()) {
            JDInfantes di = new JDInfantes(this, true);
            di.ObtenerConexion(cnx); //con esto se pasa conexion
            di.setVisible(true);
            cnx.entablar(Infante.todos, TQuery);
        }else if (JEducadores.isSelected()) {
            JDEducadores di1 = new JDEducadores();
            di1.ObtenerConexion(cnx);
            di1.setVisible(true);
            cnx.entablar(Educador.todos, TQuery);
        }else if(JTutores.isSelected()){
            JDResponsables di2 = new JDResponsables();
            di2.ObtenerConexion(cnx);
            di2.setVisible(true);
            cnx.entablar(Responsable.todos, TQuery);
        }else if(JBitacora.isSelected()){
            JDBitacora di3 = new JDBitacora(this, true);
            di3.ObtenerConexion(cnx);
            di3.setVisible(true);
            cnx.entablar(Bitacora.todos, TQuery);
        }
    }//GEN-LAST:event_jBBnuevoutton1ActionPerformed

    private void BEditarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BEditarActionPerformed
        if (TQuery.getSelectedRow() < 0) {
            JOptionPane.showMessageDialog(this, "Primero Selecciona un renglon de la tabla");
            return;
        }
        if (JInfantes.isSelected()) {
            JDInfantes di = new JDInfantes(this, true);
            di.ObtenerConexion(cnx); //con esto se pasa conexion
            di.obtenerInfante(CrearInfante());
            di.setVisible(true);
            cnx.entablar(Infante.todos, TQuery);
        }else if (JEducadores.isSelected()) {
            JDEducadores di1 = new JDEducadores();
            di1.ObtenerConexion(cnx);
            di1.obtenerEducador(CrearEducador());
            di1.setVisible(true);
        }else if(JTutores.isSelected()){
            JDResponsables di2 = new JDResponsables();
            di2.obtenerResponsable(CrearResponsable());
            di2.ObtenerConexion(cnx);
            di2.setVisible(true);
        }else if(JBitacora.isSelected()){
            JDBitacora di3 = new JDBitacora(this, true);
            di3.obtenerBitacora(CrearBitacora());
            di3.ObtenerConexion(cnx);
            di3.setVisible(true);
        }
    }//GEN-LAST:event_BEditarActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ReflectiveOperationException | javax.swing.UnsupportedLookAndFeelException ex) {
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(() -> new FPrincipal().setVisible(true));
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BEditar;
    private javax.swing.JToggleButton JBitacora;
    private javax.swing.JToggleButton JEducadores;
    private javax.swing.JToggleButton JInfantes;
    private javax.swing.JToggleButton JTutores;
    private javax.swing.JTable TQuery;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JButton jBBnuevoutton1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JToolBar jToolBar1;
    // End of variables declaration//GEN-END:variables
public Infante CrearInfante(){
    DefaultTableModel modelo = (DefaultTableModel) TQuery.getModel();
    int ren = TQuery.getSelectedRow();
    Infante kid = new Infante();
    if (ren >=0) {
        kid.curp= modelo.getValueAt(ren, 0).toString();
        kid.nombre= modelo.getValueAt(ren, 1).toString();
        kid.sexo= modelo.getValueAt(ren, 2).toString();
        kid.fecha= modelo.getValueAt(ren, 3).toString();
        kid.estado= modelo.getValueAt(ren, 4).toString();
    } else {
        JOptionPane.showMessageDialog(this, "Selecciona un renglon de la tabla");
      }
    return kid;
    }

public Responsable CrearResponsable(){
    DefaultTableModel modelo = (DefaultTableModel) TQuery.getModel();
    int ren = TQuery.getSelectedRow();
    Responsable res = new Responsable();
    if (ren >=0) {
        res.curpr= modelo.getValueAt(ren, 0).toString();
        res.nombrer= modelo.getValueAt(ren, 1).toString();
        res.sexor= modelo.getValueAt(ren, 2).toString();
        res.parentesco= modelo.getValueAt(ren, 3).toString();
        res.estador= modelo.getValueAt(ren, 4).toString();
    } else {
        JOptionPane.showMessageDialog(this, "Selecciona un renglon de la tabla");
      }
    return res;
    }

public Educador CrearEducador(){
    DefaultTableModel modelo = (DefaultTableModel) TQuery.getModel();
    int ren = TQuery.getSelectedRow();
        Educador edu = new Educador();
    if (ren >=0) {
        edu.curpe= modelo.getValueAt(ren, 0).toString();
        edu.nombree= modelo.getValueAt(ren, 1).toString();
        edu.sexoe= modelo.getValueAt(ren, 2).toString();
        edu.telefonoe= modelo.getValueAt(ren, 3).toString();
        edu.direccion= modelo.getValueAt(ren, 4).toString();
        edu.estado= modelo.getValueAt(ren, 5).toString();
    } else {
        JOptionPane.showMessageDialog(this, "Selecciona un renglon de la tabla");
      }
    return edu;
    }

public Bitacora CrearBitacora(){
        DefaultTableModel modelo = (DefaultTableModel) TQuery.getModel();
    int ren = TQuery.getSelectedRow();
        Bitacora bit = new Bitacora();
    if (ren >=0) {
        bit.folio= modelo.getValueAt(ren, 0).toString();
        bit.tiempo= modelo.getValueAt(ren, 1).toString();
        bit.tipo= modelo.getValueAt(ren, 2).toString();
        bit.observaciones= modelo.getValueAt(ren, 3).toString();
        bit.infantesC= modelo.getValueAt(ren, 4).toString();
        bit.responsablesC= modelo.getValueAt(ren, 5).toString();
        bit.educadoresC= modelo.getValueAt(ren, 5).toString();
    } else {
        JOptionPane.showMessageDialog(this, "Selecciona un renglon de la tabla");
      }
    return bit;
}

}
