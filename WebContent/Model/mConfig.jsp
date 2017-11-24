<%@ page import="com.gj.jjwt.service.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
	/*get parameter start*/
     String paramValue = request.getParameter("paramValue");
     String action = request.getParameter("action"); 
	/*get parameter end*/

    
    /*Authorization start*/
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
    /*Authorization end*/
   
   
   connectionJndi jndi = new connectionJndi();
   if(action.equals("updateProfilePicturePathText")){
	   
	 	
	   	String  query=" UPDATE PARAMETER_CONFIG";
		query+=" SET  PARAM_VALUE = '"+paramValue+"'";
		query+=" WHERE  PARAM_KEY='1'"; 
		
		
		 jndi.queryDwh(query, token);
		 out.println(jndi.getData());
	   
   }else if(action.equals("updateMatchingPicturePathText")){
	   
	 	
	   	String  query=" UPDATE PARAMETER_CONFIG";
		query+=" SET  PARAM_VALUE = '"+paramValue+"'";
		query+=" WHERE  PARAM_KEY='2'"; 
		
		
		 jndi.queryDwh(query, token);
		 out.println(jndi.getData());
	   
  }else if(action.equals("updateMatchingConfidenceText")){
	   
	 	
	   	String  query=" UPDATE PARAMETER_CONFIG";
		query+=" SET  PARAM_VALUE = '"+paramValue+"'";
		query+=" WHERE  PARAM_KEY='3'"; 
		
		
		 jndi.queryDwh(query, token);
		 out.println(jndi.getData());
	   
 }else if(action.equals("updateCameraIPText")){
	   
	 	
	   	String  query=" UPDATE PARAMETER_CONFIG";
		query+=" SET  PARAM_VALUE = '"+paramValue+"'";
		query+=" WHERE  PARAM_KEY='4'"; 
		
		
		 jndi.queryDwh(query, token);
		 out.println(jndi.getData());
	   
}else if(action.equals("selectAll")){
	   
	   String  query="SELECT * FROM PARAMETER_CONFIG"; 
	   String columns="1,2,3";
	   jndi.selectByIndexDwh(query, columns ,token);
	   out.println(jndi.getData());
	   
}else if(action.equals("updateUrlDb")){
	   
	 	
	   	String  query=" UPDATE PARAMETER_CONFIG";
		query+=" SET  PARAM_VALUE = '"+paramValue+"'";
		query+=" WHERE  PARAM_KEY='5'"; 
		
		
		 jndi.queryDwh(query, token);
		 out.println(jndi.getData());
	   
}else if(action.equals("updateUserDb")){
	   
 	
   	String  query=" UPDATE PARAMETER_CONFIG";
	query+=" SET  PARAM_VALUE = '"+paramValue+"'";
	query+=" WHERE  PARAM_KEY='6'"; 
	
	
	 jndi.queryDwh(query, token);
	 out.println(jndi.getData());
   
}else if(action.equals("updatePasswordDb")){
	   
 	
   	String  query=" UPDATE PARAMETER_CONFIG";
	query+=" SET  PARAM_VALUE = '"+paramValue+"'";
	query+=" WHERE  PARAM_KEY='7'"; 
	
	
	 jndi.queryDwh(query, token);
	 out.println(jndi.getData());
   
}
    

    
    
  
    
 

%>