<%@ page import="com.gj.jjwt.service.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
	/*get parameter start*/


	 String startDate = request.getParameter("startDate"); 
     String endDate = request.getParameter("endDate"); 
     String action = request.getParameter("action"); 
 
     /*
     out.println("cardId="+cardId+"<br>");
     out.println("passportID="+passportID+"<br>");
     out.println("title="+title+"<br>");
     out.println("fristName="+fristName+"<br>");
     out.println("lastName="+lastName+"<br>");
     out.println("gender="+gender+"<br>");
     out.println("nationality="+nationality+"<br>");
     out.println("dateOfBirth="+dateOfBirth+"<br>");
     out.println("religion="+religion+"<br>");
     out.println("address="+address+"<br>");
     out.println("active="+active+"<br>");
     */
    
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
    
	
	Calendar c = Calendar.getInstance();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String currentDateTime = df.format(c.getTime());
	
   
   connectionJndi jndi = new connectionJndi();
   
   if(action.equals("selectAll")){
	   
	   String  query="SELECT fm.TIME_MATCHING,fm.PATH_SOURCE AS 'MATCHING PATH',fm.FILE_SOURCE AS 'MATCHING FILE NAME',fm.PERCENT,";
	   query+=" bpic.PATH as 'BLACK LIST PATH',bpic.FILE_NAME as 'BLACK LIST FILE NAME',";
	   query+=" bp.TITLE,bp.FIRST_NAME,bp.LAST_NAME,bp.GENDER, bp.CARD_ID,bp.PASSPORT_ID,bp.NATIONALITY,bp.DATE_OF_BIRTH, bp.PROFILE_ID";
	   query+=" FROM iface_tech_db.FACE_MATCHING fm ";
	   query+=" left join  iface_tech_db.BLACKLIST_PICTURE bpic";
	   query+=" on fm.PICTURE_ID=bpic.PICTURE_ID ";
	   query+=" left join iface_tech_db.BLACKLIST_PROFILE bp";
	   query+=" on bpic.PROFILE_ID=bp.PROFILE_ID WHERE bp.ACTIVE_FLAG='1'";
	   query+=" order by fm.TIME_MATCHING DESC";
	   String columns="1,2,3,4,5,6,7,8,9,10,11,12,13,14,15";
	   
	   //out.println(query);
	   
	   jndi.selectByIndexDwh(query, columns ,token);
	   out.println(jndi.getData());
	   
   }else if(action.equals("selectByDate")){
	   
	   String  query="SELECT fm.TIME_MATCHING,fm.PATH_SOURCE AS 'MATCHING PATH',fm.FILE_SOURCE AS 'MATCHING FILE NAME',fm.PERCENT,";
	   query+=" bpic.PATH as 'BLACK LIST PATH',bpic.FILE_NAME as 'BLACK LIST FILE NAME',";
	   query+=" bp.TITLE,bp.FIRST_NAME,bp.LAST_NAME,bp.GENDER, bp.CARD_ID,bp.PASSPORT_ID,bp.NATIONALITY,bp.DATE_OF_BIRTH, bp.PROFILE_ID";
	   query+=" FROM iface_tech_db.FACE_MATCHING fm ";
	   query+=" left join  iface_tech_db.BLACKLIST_PICTURE bpic";
	   query+=" on fm.PICTURE_ID=bpic.PICTURE_ID ";
	   query+=" left join iface_tech_db.BLACKLIST_PROFILE bp";
	   query+=" on bpic.PROFILE_ID=bp.PROFILE_ID";
	   query+=" WHERE date(fm.TIME_MATCHING) BETWEEN str_to_date('"+startDate+"','%Y-%m-%d') AND str_to_date('"+endDate+"','%Y-%m-%d') AND bp.ACTIVE_FLAG='1'";
	   query+=" order by fm.TIME_MATCHING DESC";
	   String columns="1,2,3,4,5,6,7,8,9,10,11,12,13,14,15";
	   
	   jndi.selectByIndexDwh(query, columns ,token);
	   out.println(jndi.getData());
	   
   }
    
%>