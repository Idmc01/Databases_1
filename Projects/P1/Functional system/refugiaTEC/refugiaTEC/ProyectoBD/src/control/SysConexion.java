package control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


//este archivo es exclusivo para hacer la conexion a la base de datos
public class SysConexion {
    public Connection obtConexion(){
        
        try{
            String host = "jdbc:oracle:thin:@localhost:1521:DBTec";
            String user = "un";
            String password = "un";
        
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection con = DriverManager.getConnection(host, user, password);
            
            return (Connection) con;
            
        }catch (SQLException e){
            System.out.println(e);
            return null;
        }
        
    }
}
