<%@ page import="com.gj.jjwt.service.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  //out.println(session.getAttribute("checkRole"));
 
    String instance_id = request.getParameter("instance_id"); 
    String checkRole = request.getParameter("checkRole");
    
    /*Authorization*/
    String Bearer =request.getHeader("Authorization");
    String token="";
    String[] BearerArray = Bearer.split(" ");
    if(BearerArray[0].equals("Bearer")){
	    if(BearerArray.length>1){
	    	 token =BearerArray[1];
	    }else{
	    	 token="";
	    }
    }else{
    	token="";
    }
   
 
   
	connectionJndi jndi = new connectionJndi();
	String  query="SELECT * FROM USERS"; 
    String columns="1,2";
    jndi.selectByIndexDwh(query, columns ,token);
    out.println(jndi.getData());
    
    //out.print(request.getHeader("Authorization"));
    //out.print(jndi.creaetJWT());
    
    
  
    
 

%>