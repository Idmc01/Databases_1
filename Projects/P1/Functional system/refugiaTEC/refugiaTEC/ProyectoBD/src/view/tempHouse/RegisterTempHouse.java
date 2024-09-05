package view.tempHouse;

import control.SysConexion;
import control.Validation;
import static java.lang.Integer.parseInt;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import model.FillComboBox;
import oracle.jdbc.OracleTypes;


public class RegisterTempHouse extends javax.swing.JFrame {

 
    FillComboBox filling = new FillComboBox();
    public RegisterTempHouse() {
        initComponents();
        province.setVisible(false);
        okProvince.setVisible(false);
        labelProvince.setVisible(false);
        canton.setVisible(false);
        okCanton.setVisible(false);
        labelCanton.setVisible(false);
        district.setVisible(false);   
        labelDistrict.setVisible(false);
        
        filling.FillCountry(country);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jFileChooser1 = new javax.swing.JFileChooser();
        country = new javax.swing.JComboBox<>();
        province = new javax.swing.JComboBox<>();
        mount = new javax.swing.JTextField();
        username = new javax.swing.JTextField();
        passTH = new javax.swing.JPasswordField();
        canton = new javax.swing.JComboBox<>();
        district = new javax.swing.JComboBox<>();
        jLabel1 = new javax.swing.JLabel();
        okCountry = new javax.swing.JButton();
        okProvince = new javax.swing.JButton();
        okCanton = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        labelCountry = new javax.swing.JLabel();
        labelProvince = new javax.swing.JLabel();
        labelCanton = new javax.swing.JLabel();
        labelDistrict = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        username.setToolTipText("");

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel1.setText("Registro Casa Cuna");

        okCountry.setText("OK");
        okCountry.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                okCountryActionPerformed(evt);
            }
        });

        okProvince.setText("Ok");
        okProvince.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                okProvinceActionPerformed(evt);
            }
        });

        okCanton.setText("OK");
        okCanton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                okCantonActionPerformed(evt);
            }
        });

        jButton4.setBackground(new java.awt.Color(153, 255, 153));
        jButton4.setText("Registrar");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jLabel2.setText("Usuario:");

        jLabel3.setText("Contraseña");

        jLabel4.setText("Monto para ayuda");

        labelCountry.setText("País");

        labelProvince.setText("Provincia");

        labelCanton.setText("Cantón");

        labelDistrict.setText("Distrito");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(12, 12, 12)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel1)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(mount)
                                        .addGap(126, 126, 126))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(layout.createSequentialGroup()
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                                    .addComponent(jLabel2)
                                                    .addComponent(jLabel3))
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                    .addComponent(username, javax.swing.GroupLayout.DEFAULT_SIZE, 95, Short.MAX_VALUE)
                                                    .addComponent(passTH)))
                                            .addGroup(layout.createSequentialGroup()
                                                .addGap(52, 52, 52)
                                                .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                        .addGap(53, 53, 53)))
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(country, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(labelCountry)
                                            .addComponent(labelProvince))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(okCountry))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                            .addComponent(district, javax.swing.GroupLayout.Alignment.LEADING, 0, 100, Short.MAX_VALUE)
                                            .addComponent(canton, javax.swing.GroupLayout.Alignment.LEADING, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .addComponent(province, javax.swing.GroupLayout.Alignment.LEADING, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .addComponent(labelCanton, javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(labelDistrict, javax.swing.GroupLayout.Alignment.LEADING))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(okProvince)
                                            .addComponent(okCanton))))))
                        .addGap(32, 32, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addGap(0, 0, Short.MAX_VALUE))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(username, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2))
                        .addGap(3, 3, 3)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(passTH, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addComponent(labelCountry)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(country, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(okCountry))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(labelProvince)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(province, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(okProvince))
                        .addGap(14, 14, 14)
                        .addComponent(labelCanton)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel4, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(canton, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(okCanton)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(mount, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(labelDistrict))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(district, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 49, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(15, 15, 15))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void okCountryActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_okCountryActionPerformed
        filling.FillProvince((String) country.getSelectedItem(), province);
        province.setVisible(true);  
        okProvince.setVisible(true);
        labelProvince.setVisible(true);
    }//GEN-LAST:event_okCountryActionPerformed

    private void okProvinceActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_okProvinceActionPerformed
        filling.FillCanton((String) province.getSelectedItem(), canton);
        canton.setVisible(true);
        okCanton.setVisible(true);
        labelCanton.setVisible(true);
    }//GEN-LAST:event_okProvinceActionPerformed

    private void okCantonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_okCantonActionPerformed
        filling.FillDistrict((String) canton.getSelectedItem(), district);
        district.setVisible(true);
        labelDistrict.setVisible(true);
    }//GEN-LAST:event_okCantonActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        if (Validation.verifyPassword(passTH.getPassword())){
            try {
                
                SysConexion con = new SysConexion();

                Connection connection; 
                connection = con.obtConexion();
                
                CallableStatement callableStatementIdProvince;
                callableStatementIdProvince = connection.prepareCall("{ ? = call getCantonID(?) }");
                callableStatementIdProvince.registerOutParameter(1, OracleTypes.NUMBER);
                callableStatementIdProvince.setString(2, (String) canton.getSelectedItem());
                callableStatementIdProvince.execute();
                int cantonId = callableStatementIdProvince.getInt(1);
                callableStatementIdProvince.close();
                
                
                CallableStatement callableStatement1 = connection.prepareCall("{ ? = call getDistrictID(?, ?) }");
                callableStatement1.registerOutParameter(1, OracleTypes.NUMBER);
                callableStatement1.setString(2, (String) district.getSelectedItem());
                callableStatement1.setInt(3, cantonId);
                callableStatement1.execute();
                int distId = callableStatement1.getInt(1);
                callableStatement1.close();
                  
                
                CallableStatement callableStatement;
                callableStatement = connection.prepareCall("{call InsertTempHouse(?, ?, ?, ?)}");
                
                callableStatement.setInt(1, parseInt(mount.getText())); 
                callableStatement.setInt(2, distId);
                callableStatement.setString(3, username.getText());        
                char[] pass = passTH.getPassword();
                String fullPassword = new String(pass);
                callableStatement.setString(4, fullPassword);
                callableStatement.execute();

                callableStatement.close();
                connection.close();
                JOptionPane.showMessageDialog(null, "Nueva Casa Cuna aceptado y guardado!"); 
                
            } catch (SQLException e){
                JOptionPane.showMessageDialog(null, "error: " + e); 
            }
            
        } else {
            JOptionPane.showMessageDialog(null, "error: La contraseña no cumple los requisitos!"); 
        }
    }//GEN-LAST:event_jButton4ActionPerformed


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
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(RegisterTempHouse.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(RegisterTempHouse.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(RegisterTempHouse.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(RegisterTempHouse.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new RegisterTempHouse().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> canton;
    private javax.swing.JComboBox<String> country;
    private javax.swing.JComboBox<String> district;
    private javax.swing.JButton jButton4;
    private javax.swing.JFileChooser jFileChooser1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel labelCanton;
    private javax.swing.JLabel labelCountry;
    private javax.swing.JLabel labelDistrict;
    private javax.swing.JLabel labelProvince;
    private javax.swing.JTextField mount;
    private javax.swing.JButton okCanton;
    private javax.swing.JButton okCountry;
    private javax.swing.JButton okProvince;
    private javax.swing.JPasswordField passTH;
    private javax.swing.JComboBox<String> province;
    private javax.swing.JTextField username;
    // End of variables declaration//GEN-END:variables
}
