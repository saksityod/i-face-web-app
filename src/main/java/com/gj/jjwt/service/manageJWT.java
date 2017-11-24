package com.gj.jjwt.service;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.SignatureException;
import io.jsonwebtoken.impl.crypto.MacProvider;
import java.security.Key;



public class manageJWT {
	
	//final static String secretKey="ABCDF";
	
	public static void main(String[] args) {
		
		//System.out.println(creaetJWT());
		connectionJndi jndi = new connectionJndi();
		jndi.authentication("test", "test");
		System.out.println(jndi.getData());
		
		
	}
	public static String creaetJWT(){

	String compactJws = Jwts.builder()
	  .setSubject("success")
	  .signWith(SignatureAlgorithm.HS512, "ABCDF")
	  .compact();
	return compactJws;
	}
	
	public static void checkJWT(String compactJwscompactJws){

		try {
			
			Key key = MacProvider.generateKey();
			//System.out.println(compactJwscompactJws);
		    System.out.println(Jwts.parser().setSigningKey("ABCDF").parseClaimsJws(compactJwscompactJws).getBody().getSubject());
		    //System.out.println("TEST3");
		    //OK, we can trust this JWT

		} 
		catch (SignatureException e) {
				System.out.println(e);
		    //don't trust the JWT!
		}
		
	}
	

}
