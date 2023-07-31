<%@page import="util.ManagerDao,java.util.Date,java.text.SimpleDateFormat"%>  
<jsp:useBean id="u" class="util.Employee"></jsp:useBean> 
<jsp:setProperty property="*" name="u"/>

<%
    int i=ManagerDao.save(u);
    if(i>0){  
    response.sendRedirect("ProjectAddition.html");  
    }else{  
    response.sendRedirect("adduser-error.jsp");  
    }
%> 