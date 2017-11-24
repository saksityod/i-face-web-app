<%@ page import="com.gj.jjwt.service.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  //out.println(session.getAttribute("checkRole"));


    
    /*Authorization*/
    String Bearer =request.getHeader("Authorization");
    String token="";
    String[] BearerArray = Bearer.split(" ");
    
    if(BearerArray[0].trim().equals("Bearer")){
    	if(BearerArray.length>1){
    	 token =BearerArray[1];
	    }else{
	    	 token="";
	    }
   
    }else{
    	token="";
    }
    
   
 
   
	connectionJndi jndi = new connectionJndi();
	String  query="insert into USERS values('username3','password3')"; 
    jndi.queryDwh(query, token);
    out.println(jndi.getData());
    
    //out.print(request.getHeader("Authorization"));
    //out.print(jndi.creaetJWT());
    
    
  
    
 

%>