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
//String token = request.getParameter("token"); 
String profileID = request.getParameter("profileID"); 

String profilePicturePath = request.getParameter("profilePicturePath"); 
String createBy = request.getParameter("createBy"); 

/*
out.println(token);
out.println(profileID);
out.println(createBy);
*/

    String fileSavePath_upload_dir;
    String fileSavePath_upload_user_dir;
    String fileSavePath_sec_storage_user_dir;
    String fileSavePath_upload_matching_dir;
    //String user_name = profileID;
	
	connectionJndi jndi = new connectionJndi();
	String  query_config="SELECT * FROM PARAMETER_CONFIG WHERE PARAM_NAME='matching_picture_path'"; 
	String columns="3";

	jndi.selectSingleValueNT(query_config, columns);	
	

	String url = jndi.getDataString();
	url = url.substring(url.lastIndexOf("/") + 1, url.length());
  // out.println(url);
	
    String matching_pic = url;
    String user_name = url;
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

    
    /*sql management*/
  //  connectionJndi jndi = new connectionJndi();
	
	    
	    
	    Calendar c = Calendar.getInstance();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentDateTime = df.format(c.getTime());
		
		SimpleDateFormat df2 = new SimpleDateFormat("yyyyMMddHHmmss");
		String currentDateTime2 = df2.format(c.getTime());
		
	   /*sql management*/
	   
	   /*Authorization end*/

    if (!(new File(fileSavePath_upload_dir)).exists()) 
    {
        (new File(fileSavePath_upload_dir)).mkdir();    // creates the directory if it does not exist        
    }

    if (!(new File(fileSavePath_upload_user_dir)).exists()) 
    {
        (new File(fileSavePath_upload_user_dir)).mkdir();    // creates the directory if it does not exist        
    }

    if (!(new File(sec_storage_images_path)).exists()) 
    {
        (new File(sec_storage_images_path)).mkdir();    // creates the directory if it does not exist        
    }

    if (!(new File(fileSavePath_sec_storage_user_dir)).exists()) 
    {
        (new File(fileSavePath_sec_storage_user_dir)).mkdir();    // creates the directory if it does not exist        
    }

    if (!(new File(fileSavePath_upload_matching_dir)).exists()) 
    {
        (new File(fileSavePath_upload_matching_dir)).mkdir();    // creates the directory if it does not exist        
    }
    
    resp += "<br>Here is information about uploaded files.<br>";
    try
    {
    	//out.println("step1");
        MultipartParser parser = new MultipartParser(request, 1024*1024*1024);  /* file limit size of 1GB*/
        Part _part;
        while ((_part = parser.readNextPart()) != null) 
        {
        	
            if (_part.isFile()) 
            {
                FilePart fPart = (FilePart) _part;  // get some info about the file
                String name = fPart.getFileName();
                //out.println("step2="+name);
                if (null != name) 
                {
                	


                
                
                String pictureName=""+user_name+"_"+currentDateTime2+"_"+counter+".png";
              	String  query="INSERT INTO"; 
              			query+=" BLACKLIST_PICTURE(PROFILE_ID,NAME,PATH,FILE_NAME,CREATED_DATE,CREATED_BY,UPDATED_DATE,UPDATED_BY)";
              			query+=" VALUES('"+profileID+"','"+pictureName+"','"+profilePicturePath+"','"+pictureName+"','"+currentDateTime+"','"+createBy+"','"+currentDateTime+"','"+createBy+"')";
			  //  jndi.queryDwh(query, token);
			    //out.println(jndi.getData());
                	//c:\Program files\Tomcat\apache-tomcat-7.0.78\webapps\IFACETech\profile_picture
                	//profilePicturePath
                	fPart.writeTo(new File(fileSavePath_upload_user_dir+"/"+pictureName));
                    //long fileSize = fPart.writeTo(new File(fileSavePath_upload_user_dir));
                  
                    
                    //resp += i++ + ". " + fPart.getFilePath() + "[" + fileSize / 1024 + " KB]<br>";

                     //fPart.writeTo(new File(fileSavePath_upload_user_dir+"/"+user_name+"_"+counter+".png"));
                  	
                    //out.println("step32="+destinationFile);
                   out.println(pictureName);
                    counter++;
                }else{
                    resp = "<br>The user did not upload a file for this part.";
                }
            }
        }// end while 
                }
    catch (java.io.IOException ioe)
    {
        out.println(ioe);
        resp = ioe.getMessage();
        out.println(ioe.getMessage());
    }  
    
	//out.println("<script>window.location='/IFACETech/admin/#/pages/enrollment'</script>");
  
   // Delete file start
   
   /*
    File f=new File("c:\\Folder\\1.jpg");
    if(f.delete())
    out.println("Sucessfully deleted file");
    else
    out.println("Error in deleting file");
    */
   
%>
