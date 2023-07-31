package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

class Part1a{
public static void main(String[] args) {
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu","rkagital","cugleksi");
		java.sql.Statement smt=cn.createStatement();
		String a="select distinct e.lname,e.ssn from employee e,department d where d.dnumber=e.dno and d.dname='Research'";
		ResultSet rs=smt.executeQuery(a);
		if(rs.next()) {
			do {
				System.out.println(rs.getString(1)+","+rs.getString(2));
			}while(rs.next());
		
			}
		else {
			System.out.println("Record Not Found.");
			
		}
	cn.close();
	}
	catch(Exception e) {
		System.out.println(e);
	}
	}
}