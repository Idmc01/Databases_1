package model;

import control.SysConexion;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import java.sql.SQLException;
import java.sql.CallableStatement;
import oracle.jdbc.OracleTypes;
/**
 *Funciones para rellenar los combo boxes
 */
public class FillComboBox {
    
   
    public void FillAnimals(JComboBox combo){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getAllAnimals}");
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet rs;
            rs = (ResultSet) callableStatement.getObject(1);
            while (rs.next()) {
                combo.addItem(rs.getString("animalName"));
            }
            rs.close();
            callableStatement.close();
            connection.close();

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
        }
    }   
    
    public void FillColor(JComboBox combo){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getAllColors}");
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet rs;
            rs = (ResultSet) callableStatement.getObject(1);
            while (rs.next()) {
                combo.addItem(rs.getString("colorDesc"));
            }
            rs.close();
            callableStatement.close();
            connection.close();

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
        }
    }
    
    public void FillCountry(JComboBox combo){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getAllCountries}");
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet rs;
            rs = (ResultSet) callableStatement.getObject(1);
            while (rs.next()) {
                combo.addItem(rs.getString("countryName"));
            }
            rs.close();
            callableStatement.close();
            connection.close();

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
        }
    }
    
    public void FillProvince(String selectedCountry, JComboBox combo){
        try{
            SysConexion con = new SysConexion();
           
            try (Connection connection = con.obtConexion()) {
               
                CallableStatement callableStatement1;
                callableStatement1 = connection.prepareCall("{ ? = call getCountryID(?) }");
                callableStatement1.registerOutParameter(1, OracleTypes.NUMBER);
                callableStatement1.setString(2, selectedCountry);
                callableStatement1.execute();
                int countryId = callableStatement1.getInt(1); 
                
               
                CallableStatement callableStatement2;
                callableStatement2 = connection.prepareCall("{ ? = call getProvincesByCountryID(?) }");
                callableStatement2.registerOutParameter(1, OracleTypes.CURSOR);
                callableStatement2.setInt(2, countryId);
                callableStatement2.execute();
                ResultSet rs;
                rs= (ResultSet) callableStatement2.getObject(1);
                
                while (rs.next()) {
                    combo.addItem(rs.getString("provinceName"));
                }
                
                rs.close();
                callableStatement1.close();
                callableStatement2.close();
            }

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
        }
    }
    
    
    public void FillCanton(String selectedProvince, JComboBox combo){
        try{
            SysConexion con = new SysConexion();
            
            try (Connection connection = con.obtConexion()) {
                CallableStatement callableStatement1;
                callableStatement1 = connection.prepareCall("{ ? = call getProvinceID(?) }");
                callableStatement1.registerOutParameter(1, OracleTypes.NUMBER);
                callableStatement1.setString(2, selectedProvince);
                callableStatement1.execute();
                int provinceId = callableStatement1.getInt(1); 
                
                CallableStatement callableStatement2;
                callableStatement2 = connection.prepareCall("{ ? = call getCantonesByProvinceID(?) }");
                callableStatement2.registerOutParameter(1, OracleTypes.CURSOR);
                callableStatement2.setInt(2, provinceId);
                callableStatement2.execute();
                ResultSet rs;
                rs = (ResultSet) callableStatement2.getObject(1);
                
                while (rs.next()) {
                    combo.addItem(rs.getString("CantonName"));
                }
                
                rs.close();
                callableStatement1.close();
                callableStatement2.close();
            }

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
        }
    }
    
    
    public void FillDistrict(String selectedCanton, JComboBox combo){
        try{
            SysConexion con = new SysConexion();
            
            try (Connection connection = con.obtConexion()) {
                CallableStatement callableStatement1;
                callableStatement1 = connection.prepareCall("{ ? = call getCantonID(?) }");
                callableStatement1.registerOutParameter(1, OracleTypes.NUMBER);
                callableStatement1.setString(2, selectedCanton);
                callableStatement1.execute();
                int cantonId = callableStatement1.getInt(1); 
                
                CallableStatement callableStatement2;
                callableStatement2 = connection.prepareCall("{ ? = call getDistrictsByCantonID(?) }");
                callableStatement2.registerOutParameter(1, OracleTypes.CURSOR);
                callableStatement2.setInt(2, cantonId);
                callableStatement2.execute();
                ResultSet rs;
                rs = (ResultSet) callableStatement2.getObject(1);
                
                while (rs.next()) {
                    combo.addItem(rs.getString("DistrictName"));
                }
                
                rs.close();
                callableStatement1.close();
                callableStatement2.close();
            }

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
        }
    }
    
    public void FillStatus(JComboBox combo){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getAllStatus}");
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet rs;
            rs = (ResultSet) callableStatement.getObject(1);
            while (rs.next()) {
                combo.addItem(rs.getString("StatusDesc"));
            }
            rs.close();
            callableStatement.close();
            connection.close();

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
        }
    }
    
    public void FillEase(JComboBox combo){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getAllEase}");
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet rs;
            rs = (ResultSet) callableStatement.getObject(1);
            while (rs.next()) {
                combo.addItem(rs.getString("easeDesc"));
            }
            rs.close();
            callableStatement.close();
            connection.close();

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
        }
    }  
    
    public void FillEnergy(JComboBox combo){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getAllEnergy}");
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet rs;
            rs = (ResultSet) callableStatement.getObject(1);
            while (rs.next()) {
                combo.addItem(rs.getString("energyDesc"));
            }
            rs.close();
            callableStatement.close();
            connection.close();

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
        }
    }  
    
    public void FillSeverity(JComboBox combo){
        try{
            SysConexion con = new SysConexion();

            Connection connection; 
            connection = con.obtConexion();
            CallableStatement callableStatement;
            callableStatement = connection.prepareCall("{? = call getAllSeverities}");
            callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
            callableStatement.execute();

            ResultSet rs;
            rs = (ResultSet) callableStatement.getObject(1);
            while (rs.next()) {
                combo.addItem(rs.getString("severityDesc"));
            }
            rs.close();
            callableStatement.close();
            connection.close();

        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, "error: " + e);
        }
    }  
}
