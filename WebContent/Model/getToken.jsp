<%@ page import="com.gj.jjwt.service.*" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  //out.println(session.getAttribute("checkRole"));
 
    String username = request.getParameter("username"); 
    String password = request.getParameter("password");



   

	connectionJndi jndi = new connectionJndi();
	 
	if(username.equals("admin") && password.equals("password")){
    	out.print("{\"status\":\"200\",\"token\":\""+jndi.creaetJWT()+"\"}");
	}else{
		out.print("{\"status\":\"400\",\"errorMassage\":\"can't create token\"}");
	}
    
    
  
    
 

%>