package com.gj.jjwt.service;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.SignatureException;
import io.jsonwebtoken.impl.crypto.MacProvider;
import java.security.Key;


class manageJWTTest {
	 

	public  static void main(String[] args){
	// We need a signing key, so we'll create one just for this example. Usually
	// the key would be read from your application configuration instead.
	
	Key key = MacProvider.generateKey();
	String compactJws = Jwts.builder()
	  .setSubject("Joe")
	  .signWith(SignatureAlgorithm.HS512, "ABCDF")
	  .compact();
	compareJWT(compactJws);
	//System.out.println(compactJws);
	//System.out.println(Jwts.parser().setSigningKey(key).parseClaimsJws(compactJws).getBody().getSubject());
	
	//assert Jwts.parser().setSigningKey(key).parseClaimsJws(compactJws).getBody().getSubject().equals("Joe");
	}
	
	public static void compareJWT(String compactJwscompactJws){

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





