/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package proyectobd;
import javax.swing.SwingUtilities;
import view.general.HomePage;
import control.SysConexion;
import java.sql.Connection;
import java.sql.SQLException;
/**
 *
 * @author mauri
 */
public class ProyectoBD {

    /**
     * @param args the command line arguments
     * @throws java.sql.SQLException
     */
    public static void main(String[] args) throws SQLException {
        SwingUtilities.invokeLater(() -> {
            HomePage homePage = new HomePage();
            homePage.setVisible(true);
        });
        
        
        //sysConexion con = new SysConexion();
        //con.obtConexion();
    }
    
    
    
}
