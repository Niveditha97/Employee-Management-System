package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException; 
  
// This class can be used to initialize the database connection 
public class DatabaseConnection { 
    public static Connection initializeDatabase() 
        throws SQLException, ClassNotFoundException 
    { 
    	Class.forName ("oracle.jdbc.OracleDriver");
    	 String dbURL = "jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=artemis.vsnet.gmu.edu)(PORT=1521)))(CONNECT_DATA=(SERVICE_NAME=vse18c.vsnet.gmu.edu)))";
         String strUserID = "rkagital";
         String strPassword = "cugleksi";
         Connection myConnection=DriverManager.getConnection(dbURL,strUserID,strPassword);
        return myConnection; 
    } 
} 