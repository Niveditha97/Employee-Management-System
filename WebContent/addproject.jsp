<%@page import="util.ProjectDao,java.util.ArrayList,java.util.List"%>  
 
<%
String ssn=request.getParameter("essn");
String productx=request.getParameter("ProductX");
String producty=request.getParameter("ProductY");
String productz=request.getParameter("ProductZ");
String computerization=request.getParameter("Computerization");
String reorganization=request.getParameter("Reorganization");
String newbenefits=request.getParameter("Newbenefits");
String insertinputs=request.getParameter("insertinputs");
String insertinputs1=request.getParameter("insertinputs1");
String insertinputs2=request.getParameter("insertinputs2");
String insertinputs3=request.getParameter("insertinputs3");
String insertinputs4=request.getParameter("insertinputs4");
String insertinputs5=request.getParameter("insertinputs5");
List<String> projects = new ArrayList<>();
if(productx!=null) projects.add(productx);
if(producty!=null) projects.add(producty);
if(productz!=null) projects.add(productz);
if(computerization!=null) projects.add(computerization);
if(reorganization!=null) projects.add(reorganization);
if(newbenefits!=null) projects.add(newbenefits);

List<String> hours = new ArrayList<>();
if(insertinputs!=null) hours.add(insertinputs);
if(insertinputs1!=null) hours.add(insertinputs1);
if(insertinputs2!=null) hours.add(insertinputs2);
if(insertinputs3!=null) hours.add(insertinputs3);
if(insertinputs4!=null) hours.add(insertinputs4);
if(insertinputs5!=null) hours.add(insertinputs5);

    int i=ProjectDao.enter(ssn,projects,hours);
    if(i>0){  
    response.sendRedirect("report.html");  
    }else{  
    response.sendRedirect("addproj-error.jsp");  
    }
%> 