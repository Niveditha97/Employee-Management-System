package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

public class ProjectDao {	
public static int enter(String ssn,List<String> projects,List<String> hours)
		{  
		    int status=0;  
		    int index=0;
		    int sum=0;
		    try{  
		    	Connection con;
				con = DatabaseConnection.initializeDatabase();
				for (String i : hours)  {
		            			if(i!=null) {
		            			sum = sum+Integer.parseInt(i);
		            			}
				}
				for (String i : projects)  {
					int j=index++;
		            			if(sum>40) {
		            				status=0;
		            			}else {
		            				PreparedStatement ps=con.prepareStatement(  
		            						"insert into works_on(ESSN,PNO,HOURS) values(?,?,?)");
		            				ps.setString(1,ssn); 
		            				ps.setString(2, i);
		            				ps.setString(3, hours.get(j));
		            				ps.executeUpdate();  
		            				status=+1;
		            			}
		        }
		    }catch(Exception e){e.printStackTrace();System.out.println(e);}  
		    return status;  
		}  
}
