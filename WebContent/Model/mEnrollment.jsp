<%@ page import="com.gj.jjwt.service.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>



<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>

<%@ page import="org.apache.commons.io.FileUtils" %>

<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>

<%@ page import="com.oreilly.servlet.multipart.MultipartParser"%>
<%@ page import="com.oreilly.servlet.multipart.Part"%>
<%@ page import="com.oreilly.servlet.multipart.FilePart"%>





<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
	/*get parameter start*/


	 String cardId = request.getParameter("cardId"); 
     String passportID = request.getParameter("passportID");
     String title = request.getParameter("title"); 
     String fristName = request.getParameter("fristName");
     String lastName = request.getParameter("lastName"); 
     String gender = request.getParameter("gender");
     String nationality = request.getParameter("nationality"); 
     String dateOfBirth = request.getParameter("dateOfBirth");
     String religion = request.getParameter("religion"); 
     String address = request.getParameter("address");
     String active = request.getParameter("active"); 
     String createBy = request.getParameter("createBy"); 
     String action = request.getParameter("action"); 
     String profileID = request.getParameter("profileID"); 
     String pictureID = request.getParameter("pictureID"); 
     String pictureName = request.getParameter("pictureName"); 
     
     
     String fileSavePath_upload_dir;
     String fileSavePath_upload_user_dir;
     String fileSavePath_sec_storage_user_dir;
     String fileSavePath_upload_matching_dir;
     //String user_name = profileID;
     String matching_pic = "matching_picture";
     String user_name = "profile_picture";
     String sec_storage_images_path = "/home/kosit/Pictures/upload";
     String UPLOAD_DIRECTORY = "uploads";    
     String user_image_dir = user_name;

     File sourceFile;
     File destinationFile;    
     String resp = "";    
     int i = 1;
     int counter=0;    

     fileSavePath_upload_dir = getServletContext().getRealPath("/") + File.separator + UPLOAD_DIRECTORY;/*save uploaded files to a 'Upload' directory in the web app*/
     fileSavePath_upload_user_dir = fileSavePath_upload_dir + File.separator + user_image_dir;
     fileSavePath_upload_matching_dir = fileSavePath_upload_dir + File.separator + matching_pic;
     fileSavePath_sec_storage_user_dir = sec_storage_images_path + File.separator + user_name;
     
     
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
   
   if(action.equals("insert")){
	String  query="insert into BLACKLIST_PROFILE(";
			query+=" CARD_ID,PASSPORT_ID,TITLE,FIRST_NAME,LAST_NAME,GENDER,";
			query+=" NATIONALITY,DATE_OF_BIRTH,RELIGION,ADDRESS,CREATED_BY,";
			query+=" CREATED_DATE,UPDATED_BY,UPDATED_DATE,ACTIVE_FLAG";
			query+=" )VALUES(";
			query+=" '"+cardId+"','"+passportID+"','"+title+"','"+fristName+"','"+lastName+"','"+gender+"',";
			query+=" '"+nationality+"','"+dateOfBirth+"','"+religion+"','"+address+"','"+createBy+"',";
			query+=" '"+currentDateTime+"','"+createBy+"','"+currentDateTime+"','"+active+"'";
			query+=" )"; 
    jndi.queryDwh(query, token);
    out.println(jndi.getData());
    
    
   }else if(action.equals("update")){
	   
	   	String  query=" UPDATE BLACKLIST_PROFILE";
		query+=" SET CARD_ID = '"+cardId+"', PASSPORT_ID = '"+passportID+"', TITLE = '"+title+"', FIRST_NAME = '"+fristName+"', LAST_NAME = '"+lastName+"', GENDER = '"+gender+"',";
		query+=" NATIONALITY = '"+nationality+"', DATE_OF_BIRTH = '"+dateOfBirth+"', RELIGION = '"+religion+"', ADDRESS = '"+address+"', CREATED_BY = '"+createBy+"',";
		query+=" UPDATED_BY = '"+currentDateTime+"', UPDATED_DATE = '"+currentDateTime+"', ACTIVE_FLAG = '"+active+"'";
		query+=" WHERE  PROFILE_ID='"+profileID+"'"; 
		
		//out.println(query);
		 jndi.queryDwh(query, token);
		 out.println(jndi.getData());
	   
   }else if(action.equals("findOne")){
	   
	   String  query="SELECT * FROM BLACKLIST_PROFILE WHERE  PROFILE_ID='"+profileID+"'"; 
	   String columns="1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16";
	   jndi.selectByIndexDwh(query, columns ,token);
	   out.println(jndi.getData());
	   
   }else if(action.equals("delete")){
	   
	   
	   
	   String  query="DELETE FROM BLACKLIST_PROFILE WHERE PROFILE_ID='"+profileID+"'"; 
	   jndi.queryDwh(query, token);
	   out.println(jndi.getData());
	   
	   
   }else if(action.equals("deletePicture")){
	   
	   
	   
	   String  query="DELETE FROM BLACKLIST_PICTURE WHERE PROFILE_ID='"+profileID+"'"; 
	   
	   jndi.queryDwh(query, token);
	   out.println(jndi.getData());
	   
	   
   }else if(action.equals("deletePictureByItem")){
	   
	   
	   
	   String  query="DELETE FROM BLACKLIST_PICTURE WHERE PICTURE_ID='"+pictureID+"'"; 
	   
	   File f=new File(fileSavePath_upload_user_dir+"/"+pictureName);
	   //File f=new File("/home/kosit/Pictures/upload/abc1234567890/hqdefault.jpg");
	   f.delete();
	   
	   jndi.queryDwh(query, token);
	   out.println(jndi.getData());
	   
	   
   }else if(action.equals("selectAll")){
	   
	   String  query="SELECT * FROM BLACKLIST_PROFILE"; 
	   String columns="1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16";
	   jndi.selectByIndexDwh(query, columns ,token);
	   out.println(jndi.getData());
	   
   }else if(action.equals("getProfileID")){
	   
	   
	   String  query="SELECT * FROM BLACKLIST_PROFILE WHERE  CARD_ID='"+cardId+"' AND PASSPORT_ID='"+passportID+"'"; 
	   String columns="1";
	   jndi.selectByIndexDwh(query, columns ,token);
	   out.println(jndi.getData());
   }else if(action.equals("getBlackListPicture")){
	   
	   
	   String  query="select PATH,FILE_NAME,PICTURE_ID,PROFILE_ID from BLACKLIST_PICTURE WHERE PROFILE_ID = '"+profileID+"'"; 
	   String columns="1,2,3,4";
	   jndi.selectByIndexDwh(query, columns ,token);
	   out.println(jndi.getData());
   }
    

    
    
  
    
 

%>