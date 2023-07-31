<%@page import="java.sql.*,util.DatabaseConnection,java.sql.Connection" %>

<%
    String ssn = request.getParameter("ssn");
    try {
    	Connection con;
		con = DatabaseConnection.initializeDatabase();
        PreparedStatement st = con.prepareStatement("select * from employee where ssn=?");
        PreparedStatement st1= con.prepareStatement("select * from works_on where essn=?");
        PreparedStatement st2=con.prepareStatement("select * from dependent where essn=?");
        st.setString(1, ssn); 
        st1.setString(1,ssn);
        st2.setString(1,ssn);
        ResultSet rs = st.executeQuery();
        ResultSet rs1= st1.executeQuery();
        ResultSet rs2= st2.executeQuery();
        ResultSetMetaData rsmd = rs.getMetaData(); 
        ResultSetMetaData rsmd1 = rs1.getMetaData();
        ResultSetMetaData rsmd2 = rs2.getMetaData();
        if (rs.next() && rs1.next() && rs2.next()) {
%>
<jsp:include page="lastbutone.jsp"/>
<%
    out.print("<center><h1>Report:</h1></center>");
    out.print("<b>Details of:</b> " + ssn + "");
    out.print("<br><h3>Employee details</h3><br><table width=25% border=1>");
    out.print("<tr>");
    out.print("<td>" + rsmd.getColumnName(1) + "</td>");
    out.print("<td>" + rs.getString(1) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(2) + "</td>");
    out.print("<td>" + rs.getString(2) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(3) + "</td>");
    out.print("<td>" + rs.getString(3) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(4) + "</td>");
    out.print("<td>" + rs.getString(4) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(5) + "</td>");
    out.print("<td>" + rs.getString(5) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(6) + "</td>");
    out.print("<td>" + rs.getString(6) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(7) + "</td>");
    out.print("<td>" + rs.getString(7) + "</td></tr>");
    out.println("</table><br>");
    out.print("<h3>Project</h3><br><table width=25% border=1>");
    out.print("<tr>");
    out.print("<tr><td>" + rsmd1.getColumnName(2) + "</td>");
    out.print("<td>" + rs1.getString(2) + "</td></tr>");
    out.print("<tr><td>" + rsmd1.getColumnName(3) + "</td>");
    out.print("<td>" + rs1.getString(3) + "</td></tr>");
    out.println("</table><br>"); 
    out.print("<h3>Dependent Details</h3><br><table width=25% border=1>");
    out.print("<tr>");
    out.print("<tr><td>" + rsmd2.getColumnName(2) + "</td>");
    out.print("<td>" + rs2.getString(2) + "</td></tr>");
    out.print("<tr><td>" + rsmd2.getColumnName(3) + "</td>");
    out.print("<td>" + rs2.getString(3) + "</td></tr>");
    out.print("<tr><td>" + rsmd2.getColumnName(4) + "</td>");
    out.print("<td>" + rs2.getString(4) + "</td></tr>");
    out.print("<tr><td>" + rsmd2.getColumnName(5) + "</td>");
    out.print("<td>" + rs2.getString(5) + "</td></tr>");
    out.println("</table><br>");
} else
{
    out.println("Employee Not Found!");
%>
<jsp:include page="lastbutone.jsp"/>
<%}
    } catch (Exception e) {
        System.out.println(e);
    }
%>

<button onclick="window.print()">Print this page</button>