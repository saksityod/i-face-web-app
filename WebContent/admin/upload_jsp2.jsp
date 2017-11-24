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

<%  
    String fileSavePath_upload_dir;
    String fileSavePath_upload_user_dir;
    String fileSavePath_sec_storage_user_dir;
    String user_name = "abc1234567890";
    String sec_storage_images_path = "/home/kosit/Pictures/upload";
    String UPLOAD_DIRECTORY = "Uploads";    
    String user_image_dir = user_name;

    File sourceFile;
    File destinationFile;    
    String resp = "";    
    int i = 1;
    int counter=0;    

    fileSavePath_upload_dir = getServletContext().getRealPath("/") + File.separator + UPLOAD_DIRECTORY;/*save uploaded files to a 'Upload' directory in the web app*/
    fileSavePath_upload_user_dir = fileSavePath_upload_dir + File.separator + user_image_dir;
    fileSavePath_sec_storage_user_dir = sec_storage_images_path + File.separator + user_name;

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

    resp += "<br>Here is information about uploaded files.<br>";
    try
    {
        MultipartParser parser = new MultipartParser(request, 1024*1024*1024);  /* file limit size of 1GB*/
        Part _part;
        while ((_part = parser.readNextPart()) != null) 
        {
            if (_part.isFile()) 
            {
                FilePart fPart = (FilePart) _part;  // get some info about the file
                String name = fPart.getFileName();

                if (null != name) 
                {
                    long fileSize = fPart.writeTo(new File(fileSavePath_upload_user_dir));
                    resp += i++ + ". " + fPart.getFilePath() + "[" + fileSize / 1024 + " KB]<br>";

                    sourceFile = new File(fileSavePath_upload_user_dir+"/"+user_name+"_"+counter+".png");
                    counter++;
                }                 else 
                {
                    resp = "<br>The user did not upload a file for this part.";
                }
            }
        }// end while 
                }
    catch (java.io.IOException ioe)
    {
        out.println(ioe);
        resp = ioe.getMessage();
    }  
    out.println("<script>window.location='http://localhost:8081/IFACETech/admin/#/pages/enrollment'</script>");
%>