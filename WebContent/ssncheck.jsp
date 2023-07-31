<%@page import="util.ManagerDao"%>  

<%   
String ssn=request.getParameter("ssn");
int i=ManagerDao.ssnCheck(ssn);  
if(i>0){  
response.sendRedirect("adduser-success.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  