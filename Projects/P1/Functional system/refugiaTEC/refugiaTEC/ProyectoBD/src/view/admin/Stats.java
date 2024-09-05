
package view.admin;

import control.SysConexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import oracle.jdbc.OracleTypes;


public class Stats extends javax.swing.JFrame {

    public Stats() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        seeSums = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        bar018 = new javax.swing.JProgressBar();
        var018 = new javax.swing.JLabel();
        bar1930 = new javax.swing.JProgressBar();
        var1930 = new javax.swing.JLabel();
        bar3045 = new javax.swing.JProgressBar();
        bar76 = new javax.swing.JProgressBar();
        bar6175 = new javax.swing.JProgressBar();
        bar4660 = new javax.swing.JProgressBar();
        var3045 = new javax.swing.JLabel();
        var4660 = new javax.swing.JLabel();
        var6175 = new javax.swing.JLabel();
        var76 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        seeSums.setText("Hombres");
        seeSums.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                seeSumsActionPerformed(evt);
            }
        });

        jLabel1.setText("0 - 18 años");

        jLabel2.setText("19 - 30 años");

        jLabel3.setText("30 - 45 años");

        jLabel4.setText("46 - 60 años");

        jLabel5.setText("61 - 75 años");

        jLabel6.setText("76+");

        jButton1.setText("Mujeres");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("Otros");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        var018.setText("-");

        var1930.setText("-");

        var3045.setText("-");

        var4660.setText("-");

        var6175.setText("-");

        var76.setText("-");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(seeSums)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton2)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel4)
                                    .addComponent(jLabel5)
                                    .addComponent(jLabel6))
                                .addGap(41, 41, 41)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(var76)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 39, Short.MAX_VALUE)
                                        .addComponent(bar76, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(var6175)
                                            .addComponent(var4660))
                                        .addGap(0, 0, Short.MAX_VALUE))))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel1)
                                    .addComponent(jLabel2)
                                    .addComponent(jLabel3))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(var3045)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(bar3045, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(var1930)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(bar1930, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(var018)
                                        .addGap(39, 39, 39)
                                        .addComponent(bar018, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE))))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(0, 0, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(bar6175, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(bar4660, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addGap(72, 72, 72))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(27, 27, 27)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(seeSums)
                    .addComponent(jButton1)
                    .addComponent(jButton2))
                .addGap(27, 27, 27)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(bar018, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(var018)))
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel2)
                        .addComponent(var1930))
                    .addComponent(bar1930, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 31, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel3)
                        .addComponent(var3045))
                    .addComponent(bar3045, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 26, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel4)
                        .addComponent(var4660))
                    .addComponent(bar4660, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(27, 27, 27)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel5)
                        .addComponent(var6175))
                    .addComponent(bar6175, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel6)
                    .addComponent(bar76, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(var76))
                .addContainerGap(25, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void seeSumsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_seeSumsActionPerformed
        try {
            SysConexion con = new SysConexion();
            Connection connection = con.obtConexion();
            CallableStatement callableStatement;

             callableStatement = connection.prepareCall("{call getAdoptantsPerAge(?, ?, ?, ?, ?, ?, ?)}");

            callableStatement.registerOutParameter(1, OracleTypes.INTEGER); // pCeroToEighteen
            callableStatement.registerOutParameter(2, OracleTypes.INTEGER); // pNineteenToThirty
            callableStatement.registerOutParameter(3, OracleTypes.INTEGER); // pThirtyOneToFourtyFive
            callableStatement.registerOutParameter(4, OracleTypes.INTEGER); // pFourtySixToSixty
            callableStatement.registerOutParameter(5, OracleTypes.INTEGER); // pSixtyOneToSeventyFive
            callableStatement.registerOutParameter(6, OracleTypes.INTEGER); // pSeventyFivePlus
            callableStatement.setString(7, "0"); 

            callableStatement.execute();
            
            int ceroToEighteen = callableStatement.getInt(1);
            int nineteenToThirty = callableStatement.getInt(2);
            int thirtyOneToFourtyFive = callableStatement.getInt(3);
            int fourtySixToSixty = callableStatement.getInt(4);
            int sixtyOneToSeventyFive = callableStatement.getInt(5);
            int seventyFivePlus = callableStatement.getInt(6);
    
            var018.setText(String.valueOf(ceroToEighteen));
            bar018.setValue(ceroToEighteen);
            var1930.setText(String.valueOf(nineteenToThirty));
            bar1930.setValue(nineteenToThirty);
            var3045.setText(String.valueOf(thirtyOneToFourtyFive));
            bar3045.setValue(thirtyOneToFourtyFive);
            var4660.setText(String.valueOf(fourtySixToSixty));
            bar4660.setValue(fourtySixToSixty);
            var6175.setText(String.valueOf(sixtyOneToSeventyFive));
            bar6175.setValue(sixtyOneToSeventyFive);
            var76.setText(String.valueOf(seventyFivePlus));
            bar76.setValue(seventyFivePlus);
            connection.close();
        } catch (SQLException ex) {
            ex.printStackTrace(); 
        }

    }//GEN-LAST:event_seeSumsActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        try {
            SysConexion con = new SysConexion();
            Connection connection = con.obtConexion();
            CallableStatement callableStatement;

             callableStatement = connection.prepareCall("{call getAdoptantsPerAge(?, ?, ?, ?, ?, ?, ?)}");

            callableStatement.registerOutParameter(1, OracleTypes.INTEGER); // pCeroToEighteen
            callableStatement.registerOutParameter(2, OracleTypes.INTEGER); // pNineteenToThirty
            callableStatement.registerOutParameter(3, OracleTypes.INTEGER); // pThirtyOneToFourtyFive
            callableStatement.registerOutParameter(4, OracleTypes.INTEGER); // pFourtySixToSixty
            callableStatement.registerOutParameter(5, OracleTypes.INTEGER); // pSixtyOneToSeventyFive
            callableStatement.registerOutParameter(6, OracleTypes.INTEGER); // pSeventyFivePlus
            callableStatement.setString(7, "1"); 

            callableStatement.execute();
            
            int ceroToEighteen = callableStatement.getInt(1);
            int nineteenToThirty = callableStatement.getInt(2);
            int thirtyOneToFourtyFive = callableStatement.getInt(3);
            int fourtySixToSixty = callableStatement.getInt(4);
            int sixtyOneToSeventyFive = callableStatement.getInt(5);
            int seventyFivePlus = callableStatement.getInt(6);
    
            var018.setText(String.valueOf(ceroToEighteen));
            bar018.setValue(ceroToEighteen);
            var1930.setText(String.valueOf(nineteenToThirty));
            bar1930.setValue(nineteenToThirty);
            var3045.setText(String.valueOf(thirtyOneToFourtyFive));
            bar3045.setValue(thirtyOneToFourtyFive);
            var4660.setText(String.valueOf(fourtySixToSixty));
            bar4660.setValue(fourtySixToSixty);
            var6175.setText(String.valueOf(sixtyOneToSeventyFive));
            bar6175.setValue(sixtyOneToSeventyFive);
            var76.setText(String.valueOf(seventyFivePlus));
            bar76.setValue(seventyFivePlus);
            connection.close();
        } catch (SQLException ex) {
            ex.printStackTrace(); 
        }

    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        try {
            SysConexion con = new SysConexion();
            Connection connection = con.obtConexion();
            CallableStatement callableStatement;

             callableStatement = connection.prepareCall("{call getAdoptantsPerAge(?, ?, ?, ?, ?, ?, ?)}");

            callableStatement.registerOutParameter(1, OracleTypes.INTEGER); // pCeroToEighteen
            callableStatement.registerOutParameter(2, OracleTypes.INTEGER); // pNineteenToThirty
            callableStatement.registerOutParameter(3, OracleTypes.INTEGER); // pThirtyOneToFourtyFive
            callableStatement.registerOutParameter(4, OracleTypes.INTEGER); // pFourtySixToSixty
            callableStatement.registerOutParameter(5, OracleTypes.INTEGER); // pSixtyOneToSeventyFive
            callableStatement.registerOutParameter(6, OracleTypes.INTEGER); // pSeventyFivePlus
            callableStatement.setString(7, "2"); 

            callableStatement.execute();
            
            int ceroToEighteen = callableStatement.getInt(1);
            int nineteenToThirty = callableStatement.getInt(2);
            int thirtyOneToFourtyFive = callableStatement.getInt(3);
            int fourtySixToSixty = callableStatement.getInt(4);
            int sixtyOneToSeventyFive = callableStatement.getInt(5);
            int seventyFivePlus = callableStatement.getInt(6);
    
            var018.setText(String.valueOf(ceroToEighteen));
            bar018.setValue(ceroToEighteen);
            var1930.setText(String.valueOf(nineteenToThirty));
            bar1930.setValue(nineteenToThirty);
            var3045.setText(String.valueOf(thirtyOneToFourtyFive));
            bar3045.setValue(thirtyOneToFourtyFive);
            var4660.setText(String.valueOf(fourtySixToSixty));
            bar4660.setValue(fourtySixToSixty);
            var6175.setText(String.valueOf(sixtyOneToSeventyFive));
            bar6175.setValue(sixtyOneToSeventyFive);
            var76.setText(String.valueOf(seventyFivePlus));
            bar76.setValue(seventyFivePlus);
            connection.close();
        } catch (SQLException ex) {
            ex.printStackTrace(); 
        }

    }//GEN-LAST:event_jButton2ActionPerformed

    public static void main(String args[]) {

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
            java.util.logging.Logger.getLogger(Stats.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Stats.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Stats.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Stats.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Stats().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JProgressBar bar018;
    private javax.swing.JProgressBar bar1930;
    private javax.swing.JProgressBar bar3045;
    private javax.swing.JProgressBar bar4660;
    private javax.swing.JProgressBar bar6175;
    private javax.swing.JProgressBar bar76;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JButton seeSums;
    private javax.swing.JLabel var018;
    private javax.swing.JLabel var1930;
    private javax.swing.JLabel var3045;
    private javax.swing.JLabel var4660;
    private javax.swing.JLabel var6175;
    private javax.swing.JLabel var76;
    // End of variables declaration//GEN-END:variables
}
