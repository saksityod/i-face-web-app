<%@ page import="com.gj.jjwt.service.*" %>
<%@ page import="java.security.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  //out.println(session.getAttribute("checkRole"));
 
    String username = request.getParameter("username"); 
    String password = request.getParameter("password");



  //Manage MD5 START

  	String passwordMD5="";
  	MessageDigest alg = MessageDigest.getInstance("MD5");
  	alg.reset(); 
  	alg.update(password.getBytes());
  	byte[] digest = alg.digest();
  	
  	StringBuffer hashedpasswd = new StringBuffer();
  	String hx;
  	for (int i=0;i<digest.length;i++){
  		hx =  Integer.toHexString(0xFF & digest[i]);
  		//0x03 is equal to 0x3, but we need 0x03 for our md5sum
  		if(hx.length() == 1){hx = "0" + hx;}
  		hashedpasswd.append(hx);
  	}
  	passwordMD5 = hashedpasswd.toString();
  	//out.println(passwordMD5);
  	//Manage MD5 END
   

	connectionJndi jndi = new connectionJndi();
	//username="admin";
	//password="5f4dcc3b5aa765d61d8327deb882cf99";
	jndi.authentication(username, passwordMD5);
	out.print(jndi.getData());
	
	
	/*
	if(username.equals("admin") && password.equals("password")){
    	out.print("{\"status\":\"200\",\"token\":\""+jndi.creaetJWT()+"\"}");
	}else{
		out.print("{\"status\":\"400\",\"errorMassage\":\"Username or Password is incorrect.\"}");
	}
	*/
    
    
  
    
 

%>