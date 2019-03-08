package com.gj.jjwt.service;

import javax.naming.*;
import javax.sql.*;


import java.sql.*;
import org.json.JSONArray;
import org.json.JSONException;


import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.SignatureException;
import io.jsonwebtoken.impl.crypto.MacProvider;

 

import org.apache.log4j.Logger;
import java.sql.Connection;
import java.sql.DriverManager;


//test

public class connectionJndi {
	private static Logger logger=Logger.getLogger("connectionJndi");
	private static String secretKey="GOINGJESSE_KEY";

	 Object dataObject="";
	 String dataString="";
 
	
  public  String creaetJWT(){

		String compactJws = Jwts.builder()
		  .setSubject("success")
		  .signWith(SignatureAlgorithm.HS512, secretKey)
		  .compact();
		return compactJws;
  }
  
  
  public  void selectByIndexDwh(String query,String columns,String token) { 		
/*
	  Context initContext = new InitialContext();
	  Context envContext  = (Context)initContext.lookup("java:/comp/env");
	  DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
	  Connection conn = ds.getConnection();
*/
	  
	  dataObject="";
	    try{
	    	if(Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token).getBody().getSubject().equals("success")){
	    		
	    	
				      Context initContext = new InitialContext();
				      if(initContext == null ) 
				          throw new Exception("Boom - No Context");
				      Context envContext  = (Context)initContext.lookup("java:/comp/env");
				      DataSource ds = 
				            (DataSource)envContext.lookup(
				               "jdbc/jndiDB2");
			
				      if (ds != null) {
				        Connection conn = ds.getConnection();
				              
				        if(conn != null)  {
				        	dataObject="";
				            Statement stmt = conn.createStatement();
				            ResultSet rst = 
				                stmt.executeQuery(query);
				            String[] fieldSplit=columns.split(",");
				            
				            JSONArray obj_json = new JSONArray();
				            
				            	
				            while(rst.next()) {
				            	
				            	JSONArray sub_obj_json = new JSONArray();
				            	for(int i=0;i<fieldSplit.length;i++){
				            		
				            		sub_obj_json.put(rst.getString(Integer.parseInt(fieldSplit[i])));
				            		
				            	}
				            	obj_json.put(sub_obj_json);
			
				            }
				            dataObject=obj_json;
				            conn.close();
				        }
				      }
				        
	    	}else{
	    		
	    		dataObject="{\"status\":\"400\",\"errorMassage\":\"not token.\"}";
	    	}	      
	    }catch(Exception e) {
	    	dataObject="{\"status\":\"400\",\"errorMassage\":\"error\"}";	
	      e.printStackTrace();
	      logger.error("erorr"+e);
	    }
	 }
  
  

  public  void selectSingleValue(String query,String columns,String token) { 		
/*
	  Context initContext = new InitialContext();
	  Context envContext  = (Context)initContext.lookup("java:/comp/env");
	  DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
	  Connection conn = ds.getConnection();
*/
	  
	  dataString="";
	    try{
	    	if(Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token).getBody().getSubject().equals("success")){
	    		
	    	
				      Context initContext = new InitialContext();
				      if(initContext == null ) 
				          throw new Exception("Boom - No Context");
				      Context envContext  = (Context)initContext.lookup("java:/comp/env");
				      DataSource ds = 
				            (DataSource)envContext.lookup(
				               "jdbc/jndiDB2");
			
				      if (ds != null) {
				        Connection conn = ds.getConnection();
				              
				        if(conn != null)  {
				        	dataObject="";
				            Statement stmt = conn.createStatement();
				            ResultSet rst = 
				                stmt.executeQuery(query);
				            String[] fieldSplit=columns.split(",");
				            
				          
				            
				            	
				            while(rst.next()) {
				            	
				           
				            	for(int i=0;i<fieldSplit.length;i++){
				            		
				            		dataString=rst.getString(Integer.parseInt(fieldSplit[i]));
				            		
				            	}
				            	
			
				            }
				            
				            conn.close();
				        }
				      }
				        
	    	}else{
	    		
	    		dataObject="{\"status\":\"400\",\"errorMassage\":\"not token.\"}";
	    	}	      
	    }catch(Exception e) {
	    	dataObject="{\"status\":\"400\",\"errorMassage\":\"error\"}";	
	      e.printStackTrace();
	      logger.error("erorr"+e);
	    }
	 }
  
  public  void selectSingleValueNT(String query,String columns) { 		
/*
	  Context initContext = new InitialContext();
	  Context envContext  = (Context)initContext.lookup("java:/comp/env");
	  DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
	  Connection conn = ds.getConnection();
*/
	  
	  dataString="";
	    try{
	    
	    		
	    	
				      Context initContext = new InitialContext();
				      if(initContext == null ) 
				          throw new Exception("Boom - No Context");
				      Context envContext  = (Context)initContext.lookup("java:/comp/env");
				      DataSource ds = 
				            (DataSource)envContext.lookup(
				               "jdbc/jndiDB2");
			
				      if (ds != null) {
				        Connection conn = ds.getConnection();
				              
				        if(conn != null)  {
				        	dataObject="";
				            Statement stmt = conn.createStatement();
				            ResultSet rst = 
				                stmt.executeQuery(query);
				            String[] fieldSplit=columns.split(",");
				            
				          
				            
				            	
				            while(rst.next()) {
				            	
				           
				            	for(int i=0;i<fieldSplit.length;i++){
				            		
				            		dataString=rst.getString(Integer.parseInt(fieldSplit[i]));
				            		
				            	}
				            	
			
				            }
				            
				            conn.close();
				        }
				      }
				              
	    }catch(Exception e) {
	    	dataObject="{\"status\":\"400\",\"errorMassage\":\"error\"}";	
	      e.printStackTrace();
	      logger.error("erorr"+e);
	    }
	 }
  
  
  public void getSessesion(String token){
	  
	  try{
		  if(Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token).getBody().getSubject().equals("success")){
			  dataObject="{\"status\":\"200\",\"message\":\"success\"}";
		  }else{
			  dataObject="{\"status\":\"400\",\"errorMassage\":\"not token.\"}";	
		  }
		  
	  }catch(Exception e) {
		  dataObject="{\"status\":\"400\",\"errorMassage\":\"not token.\"}";
  	      //e.printStackTrace();
  	      logger.error("erorr"+e);
  	    }
  }
  public  void authentication(String username,String password) { 		
	  //dataObject="{\"status\":\"400\",\"errorMassage\":\"not token.\"}";
	  dataObject="";
	  	 
	  	    try{
	  	    		
	  	    	
	  				      Context initContext = new InitialContext();
	  				      if(initContext == null ) 
	  				          throw new Exception("Boom - No Context");
	  				      Context envContext  = (Context)initContext.lookup("java:/comp/env");
	  				      DataSource ds = 
	  				            (DataSource)envContext.lookup(
	  				               "jdbc/jndiDB2");
	  			
	  				      if (ds != null) {
	  				        Connection conn = ds.getConnection();
	  				              
	  				        if(conn != null)  {
	  				        	
	  				            Statement stmt = conn.createStatement();
	  				            ResultSet rst = 
	  				                stmt.executeQuery("select count(*) as numrows from iface_tech_db.USERS where username='"+username+"' and password='"+password+"'");
	  				         
	  				            String numrows="";
	  				            while(rst.next()) {
	  				            	
	  				            	numrows=rst.getString("numrows");
	  				            	
	  				            }
	  				            conn.close();
	  				          
	  				            if(numrows.equals("0")){
	  				            	System.out.print("{\"status\":\"400\",\"errorMassage\":\"Username or Password is incorrect.\"}");	
	  				            	dataObject="{\"status\":\"400\",\"errorMassage\":\"Username or Password is incorrect.\"}";
	  				            }else{
	  				            	
	  				            	String compactJws = Jwts.builder()
	  				            		  .setSubject("success")
	  				            		  .signWith(SignatureAlgorithm.HS512, secretKey)
	  				            		  .compact();
	  				            	System.out.print(compactJws);
	  				            	//dataObject=compactJws;
	  				            	dataObject="{\"status\":\"200\",\"token\":\""+compactJws+"\"}";
	  				            }
	  				           
	  				            
	  				            
	  				        }
	  				      }
	  				        
	  	    	      
	  	    }catch(Exception e) {
	  	    	
	  	      e.printStackTrace();
	  	      logger.error("erorr"+e);
	  	    }
	  	 
	  	  //System.out.print("{\"status\":\"400\",\"errorMassage\":\"login failed\"}");
	  	// dataObject="{\"status\":\"400\",\"errorMassage\":\"login failed\"}";
		
	  	  
}
 
  
  public void queryDwh(String query,String token){
	  try{
		  if(Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token).getBody().getSubject().equals("success")){
	    		
		      Context initContext = new InitialContext();
		      if(initContext == null ) 
		          throw new Exception("Boom - No Context");
		      Context envContext  = (Context)initContext.lookup("java:/comp/env");
		      DataSource ds = 
		            (DataSource)envContext.lookup(
		               "jdbc/jndiDB2");
	
		      if (ds != null) {
		        Connection conn = ds.getConnection();
		              
		        if(conn != null)  {
		        	dataObject="";
		            Statement stmt = conn.createStatement();
		            int rst=0;
		            try{
		            	 
		            	  rst = stmt.executeUpdate(query);
		            	  dataObject="[\"success\"]";
		            	  /*
		            	  if(rst>0) {
				            	System.out.println("ok");
				            	dataObject="[\"success\"]";
			
				            }else{
				            	System.out.println("error2");
				            	System.out.println(rst);
				            	dataObject="[\"notSuccess\"]";
				            	
				            }
				            */
		            }catch(Exception e){
		            	e.printStackTrace();
		            	System.out.println(e);
		            	dataObject=e;
		            	//System.out.println("insert error1");
		            }
		            conn.close();
		        }
		      }
		      
		  	}else{
	    		
	    		dataObject="{\"status\":\"400\",\"errorMassage\":\"not token.\"}";
	    	}
		  
	    }catch(Exception e) {
	      e.printStackTrace();
	      logger.error("erorr"+e);
	    }
		    
  }
 
  public void queryApp(String query){
	  try{
		
    		
	      Context initContext = new InitialContext();
	      if(initContext == null ) 
	          throw new Exception("Boom - No Context");
	      Context envContext  = (Context)initContext.lookup("java:/comp/env");
	      DataSource ds = 
	            (DataSource)envContext.lookup(
	               "jdbc/jndiDB2");

	      if (ds != null) {
	        Connection conn = ds.getConnection();
	              
	        if(conn != null)  {
	        	dataObject="";
	            Statement stmt = conn.createStatement();
	            int rst=0;
	            try{
	            	 
	            	  rst = stmt.executeUpdate(query);
	            	  dataObject="[\"success\"]";
	            	  /*
	            	  if(rst>0) {
			            	System.out.println("ok");
			            	dataObject="[\"success\"]";
		
			            }else{
			            	System.out.println("error2");
			            	System.out.println(rst);
			            	dataObject="[\"notSuccess\"]";
			            	
			            }
			            */
	            }catch(Exception e){
	            	e.printStackTrace();
	            	System.out.println(e);
	            	dataObject=e;
	            	//System.out.println("insert error1");
	            }
	            conn.close();
	        }
	      }
		      

		  
	    }catch(Exception e) {
	      e.printStackTrace();
	      logger.error("erorr"+e);
	    }
		    
  }


  
  
 public  String getDataString() { 
		//return "ABC";
		  return dataString;
		 }
 public  Object getData() { 
	//return "ABC";
	  return dataObject;
	 }

}
