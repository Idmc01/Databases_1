package control;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import oracle.jdbc.OracleTypes;

/**
 *En este archivo las funciones fueron diseñadas para conseguir IDs de ciertas tablas.
 */
public class Consult {
    public static int getAnimalId(String p_animal){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getAnimalId(?)}");
            callableStatement.registerOutParameter(1, OracleTypes.INTEGER);
            callableStatement.setString(2, p_animal);
            callableStatement.execute();

            int idReturned = (int) callableStatement.getObject(1);
           
            callableStatement.close();
            connection.close();
            
            return idReturned;

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
            return -1;
        }
    }
    
    public static int getRaceId(String p_race){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getRaceId(?)}");
            callableStatement.registerOutParameter(1, OracleTypes.INTEGER);
            callableStatement.setString(2, p_race);
            callableStatement.execute();

            int idReturned = (int) callableStatement.getObject(1);
           
            callableStatement.close();
            connection.close();
            
            return idReturned;

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
            return -1;
        }
    }
    
    public static int getEaseId(String p_ease){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getEaseId(?)}");
            callableStatement.registerOutParameter(1, OracleTypes.INTEGER);
            callableStatement.setString(2, p_ease);
            callableStatement.execute();

            int idReturned = (int) callableStatement.getObject(1);
           
            callableStatement.close();
            connection.close();
            
            return idReturned;

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
            return -1;
        }
    }
    
    public static int getStatusId(String p_status){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getStatusId(?)}");
            callableStatement.registerOutParameter(1, OracleTypes.INTEGER);
            callableStatement.setString(2, p_status);
            callableStatement.execute();

            int idReturned = (int) callableStatement.getObject(1);
           
            callableStatement.close();
            connection.close();
            
            return idReturned;

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
            return -1;
        }
    }
    
    public static int getEnergyId(String p_energy){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getEnergyId(?)}");
            callableStatement.registerOutParameter(1, OracleTypes.INTEGER);
            callableStatement.setString(2, p_energy);
            callableStatement.execute();

            int idReturned = (int) callableStatement.getObject(1);
           
            callableStatement.close();
            connection.close();
            
            return idReturned;

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
            return -1;
        }
    }
    
    public static int getSeverityId(String p_severity){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getSeverityId(?)}");
            callableStatement.registerOutParameter(1, OracleTypes.INTEGER);
            callableStatement.setString(2, p_severity);
            callableStatement.execute();

            int idReturned = (int) callableStatement.getObject(1);
           
            callableStatement.close();
            connection.close();
            
            return idReturned;

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
            return -1;
        }
    }
    
    public static int getColorId(String p_color){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getColorId(?)}");
            callableStatement.registerOutParameter(1, OracleTypes.INTEGER);
            callableStatement.setString(2, p_color);
            callableStatement.execute();

            int idReturned = (int) callableStatement.getObject(1);
           
            callableStatement.close();
            connection.close();
            
            return idReturned;

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
            return -1;
        }
    }
    
    public static int getPersonId(int p_ced){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call GetPersonIdByCedula(?)}");
            callableStatement.registerOutParameter(1, OracleTypes.INTEGER);
            callableStatement.setInt(2, p_ced);
            callableStatement.execute();

            int idReturned = (int) callableStatement.getObject(1);
           
            callableStatement.close();
            connection.close();
            
            return idReturned;

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
            return -1;
        }
    }
    
    
    public static int getPetsXRescueId(int p_ced){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call GetPetsXRescue(?)}");
            callableStatement.registerOutParameter(1, OracleTypes.INTEGER);
            callableStatement.setInt(2, p_ced);
            callableStatement.execute();

            int idReturned = (int) callableStatement.getObject(1);
           
            callableStatement.close();
            connection.close();
            
            return idReturned;

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
            return -1;
        }
    }
    
}
