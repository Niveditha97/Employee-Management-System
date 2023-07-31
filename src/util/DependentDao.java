package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

public class DependentDao {	
public static int Control(Dependent w)
		{  
		    int status=0;  
		    try{  
		    	Connection con;
				con = DatabaseConnection.initializeDatabase();
		        PreparedStatement ps=con.prepareStatement(  
		"insert into DEPENDENT(ESSN,DEPENDENT_NAME,SEX,BDATE,RELATIONSHIP) values(?,?,?,?,?)");  
		        ps.setString(1,w.getEssn());  
		        ps.setString(2,w.getDependent_name());  
		        ps.setString(3,w.getSex());  
		        if(w.getBdate()==null) {
		        	ps.setDate(4,null);
		        } else   {
		        	SimpleDateFormat format = new SimpleDateFormat( "MM/dd/yyyy" );
			        java.util.Date myDate = format.parse(w.getBdate() );
			        ps.setDate(4,new java.sql.Date(myDate.getTime()));
		        }
		        ps.setString(5,w.getRelationship()); 
		        status=ps.executeUpdate();  
		    }catch(Exception e){e.printStackTrace();System.out.println(e);}  
		    return status;  
		}  
}