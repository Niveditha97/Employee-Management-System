<%@page import="util.DependentDao,java.util.Date,java.text.SimpleDateFormat"%>  
<jsp:useBean id="w" class="util.Dependent"></jsp:useBean> 
<jsp:setProperty property="*" name="w"/>

<%
    int i=DependentDao.Control(w);
    if(i>0){  
    response.sendRedirect("report.html");  
    }else{  
    response.sendRedirect("adddep-error.jsp");  
    }
%> 