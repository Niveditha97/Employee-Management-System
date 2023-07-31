package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;

public class ManagerDao {
	public static int ssnCheck(String ssn) throws ClassNotFoundException, SQLException {
		Connection con;
		con = DatabaseConnection.initializeDatabase();
		int i=0;
        Statement stmt=con.createStatement();   
        ResultSet rs=stmt.executeQuery("select * from department where mgrssn = '" + ssn + "'");
        if(rs.next())  {
        	i=+1;
        }
        else {
            i=0;
        }
		return i;
		
	}
	public static int save(Employee u){  
	    int status=0;  
	    try{  
	    	Connection con;
			con = DatabaseConnection.initializeDatabase();
	        PreparedStatement ps=con.prepareStatement(  
	"insert into employee(FNAME,MINIT,LNAME,SSN,BDATE, ADDRESS, SEX, SALARY, SUPERSSN, DNO,EMAIL) values(?,?,?,?,?,?,?,?,?,?,?)");  
	        ps.setString(1,u.getFname());  
	        ps.setString(2,u.getMinit());  
	        ps.setString(3,u.getLname());  
	        ps.setString(4,u.getSsn()); 
	        if(u.getTestDate()==null) {
	        	ps.setDate(5,null);
	        } else   {
	        	SimpleDateFormat format = new SimpleDateFormat( "MM/dd/yyyy" );
		        java.util.Date myDate = format.parse(u.getTestDate());
		        ps.setDate(5,new java.sql.Date(myDate.getTime()));
	        }
	        ps.setString(6,u.getAddress());  
	        ps.setString(7,u.getSex());  
	        ps.setLong(8,u.getSalary());  
	        ps.setString(9,u.getSuperssn());  
	        ps.setDouble(10,u.getDno());
	        ps.setString(11,u.getEmail());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){e.printStackTrace();System.out.println(e);}  
	    return status;  
	}  

}
