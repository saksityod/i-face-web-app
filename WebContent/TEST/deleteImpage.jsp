<%@ page import="java.sql.*" %>
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


<%@ page import="com.gj.jjwt.service.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>
   <%
   
   
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
   

   //File f=new File("c:\\Folder\\1.jpg");
   //File f=new File("/home/kosit/Pictures/upload/abc1234567890/hqdefault.jpg");
   File f=new File(fileSavePath_upload_user_dir+"/security.png");
  
   //f.delete();
   
    if(f.delete())
    out.println("Sucessfully deleted file");
    else
    out.println("Error in deleting file");
   
    
     %>