package io.jsonwebtoken;

import java.lang.*;
import java.io.*;
import java.net.*;
import java.util.*;
import groovy.lang.*;
import groovy.util.*;

public class JwtParserTest
  extends java.lang.Object  implements
    groovy.lang.GroovyObject {
public  groovy.lang.MetaClass getMetaClass() { return (groovy.lang.MetaClass)null;}
public  void setMetaClass(groovy.lang.MetaClass mc) { }
public  java.lang.Object invokeMethod(java.lang.String method, java.lang.Object arguments) { return null;}
public  java.lang.Object getProperty(java.lang.String property) { return null;}
public  void setProperty(java.lang.String property, java.lang.Object value) { }
protected static  byte[] randomKey() { return (byte[])null;}
@org.junit.Test() public  void testSetDuplicateSigningKeys() { }
@org.junit.Test() public  void testIsSignedWithNullArgument() { }
@org.junit.Test() public  void testIsSignedWithJunkArgument() { }
@org.junit.Test() public  void testParseWithJunkArgument() { }
@org.junit.Test() public  void testParseJwsWithBadAlgHeader() { }
@org.junit.Test() public  void testParseWithInvalidSignature() { }
@org.junit.Test() public  void testParsePlaintextJwsWithIncorrectAlg() { }
@org.junit.Test() public  void testParseWithBase64EncodedSigningKey() { }
@org.junit.Test() public  void testParseWithExpiredJwt() { }
@org.junit.Test() public  void testParseWithPrematureJwt() { }
@org.junit.Test() public  void testParseWithExpiredJwtWithinAllowedClockSkew() { }
@org.junit.Test() public  void testParseWithExpiredJwtNotWithinAllowedClockSkew() { }
@org.junit.Test() public  void testParseWithPrematureJwtWithinAllowedClockSkew() { }
@org.junit.Test() public  void testParseWithPrematureJwtNotWithinAllowedClockSkew() { }
@org.junit.Test() public  void testParsePlaintextJwt() { }
@org.junit.Test() public  void testParsePlaintextJwtWithClaimsJwt() { }
@org.junit.Test() public  void testParsePlaintextJwtWithPlaintextJws() { }
@org.junit.Test() public  void testParsePlaintextJwtWithClaimsJws() { }
@org.junit.Test() public  void testParseClaimsJwt() { }
@org.junit.Test() public  void testParseClaimsJwtWithPlaintextJwt() { }
@org.junit.Test() public  void testParseClaimsJwtWithPlaintextJws() { }
@org.junit.Test() public  void testParseClaimsJwtWithClaimsJws() { }
@org.junit.Test() public  void testParseClaimsJwtWithExpiredJwt() { }
@org.junit.Test() public  void testParseClaimsJwtWithPrematureJwt() { }
@org.junit.Test() public  void testParsePlaintextJws() { }
@org.junit.Test() public  void testParsePlaintextJwsWithPlaintextJwt() { }
@org.junit.Test() public  void testParsePlaintextJwsWithClaimsJwt() { }
@org.junit.Test() public  void testParsePlaintextJwsWithClaimsJws() { }
@org.junit.Test() public  void testParseClaimsJws() { }
@org.junit.Test() public  void testParseClaimsJwsWithExpiredJws() { }
@org.junit.Test() public  void testParseClaimsJwsWithPrematureJws() { }
@org.junit.Test() public  void testParseClaimsJwsWithPlaintextJwt() { }
@org.junit.Test() public  void testParseClaimsJwsWithClaimsJwt() { }
@org.junit.Test() public  void testParseClaimsJwsWithPlaintextJws() { }
@org.junit.Test() public  void testParseClaimsWithSigningKeyResolver() { }
@org.junit.Test() public  void testParseClaimsWithSigningKeyResolverInvalidKey() { }
@org.junit.Test() public  void testParseClaimsWithSigningKeyResolverAndKey() { }
@org.junit.Test() public  void testParseClaimsWithSigningKeyResolverAndKeyBytes() { }
@org.junit.Test() public  void testParseClaimsWithNullSigningKeyResolver() { }
@org.junit.Test() public  void testParseClaimsWithInvalidSigningKeyResolverAdapter() { }
@org.junit.Test() public  void testParseClaimsJwsWithNumericTypes() { }
@org.junit.Test() public  void testParsePlaintextJwsWithSigningKeyResolverAdapter() { }
@org.junit.Test() public  void testParsePlaintextJwsWithSigningKeyResolverInvalidKey() { }
@org.junit.Test() public  void testParsePlaintextJwsWithInvalidSigningKeyResolverAdapter() { }
@org.junit.Test() public  void testParseRequireDontAllowNullClaimName() { }
@org.junit.Test() public  void testParseRequireDontAllowEmptyClaimName() { }
@org.junit.Test() public  void testParseRequireDontAllowNullClaimValue() { }
@org.junit.Test() public  void testParseRequireGeneric_Success() { }
@org.junit.Test() public  void testParseRequireGeneric_Incorrect_Fail() { }
@org.junit.Test() public  void testParseRequireedGeneric_Missing_Fail() { }
@org.junit.Test() public  void testParseRequireIssuedAt_Success() { }
@org.junit.Test() public  void testParseRequireIssuedAt_Incorrect_Fail() { }
@org.junit.Test() public  void testParseRequireIssuedAt_Missing_Fail() { }
@org.junit.Test() public  void testParseRequireIssuer_Success() { }
@org.junit.Test() public  void testParseRequireIssuer_Incorrect_Fail() { }
@org.junit.Test() public  void testParseRequireIssuer_Missing_Fail() { }
@org.junit.Test() public  void testParseRequireAudience_Success() { }
@org.junit.Test() public  void testParseRequireAudience_Incorrect_Fail() { }
@org.junit.Test() public  void testParseRequireAudience_Missing_Fail() { }
@org.junit.Test() public  void testParseRequireSubject_Success() { }
@org.junit.Test() public  void testParseRequireSubject_Incorrect_Fail() { }
@org.junit.Test() public  void testParseRequireSubject_Missing_Fail() { }
@org.junit.Test() public  void testParseRequireId_Success() { }
@org.junit.Test() public  void testParseRequireId_Incorrect_Fail() { }
@org.junit.Test() public  void testParseRequireId_Missing_Fail() { }
@org.junit.Test() public  void testParseRequireExpiration_Success() { }
@org.junit.Test() public  void testParseRequireExpirationAt_Incorrect_Fail() { }
@org.junit.Test() public  void testParseRequireExpiration_Missing_Fail() { }
@org.junit.Test() public  void testParseRequireNotBefore_Success() { }
@org.junit.Test() public  void testParseRequireNotBefore_Incorrect_Fail() { }
@org.junit.Test() public  void testParseRequireNotBefore_Missing_Fail() { }
@org.junit.Test() public  void testParseRequireCustomDate_Success() { }
@org.junit.Test() public  void testParseRequireCustomDate_Incorrect_Fail() { }
@org.junit.Test() public  void testParseRequireCustomDate_Missing_Fail() { }
@org.junit.Test() public  void testParseClockManipulationWithFixedClock() { }
@org.junit.Test() public  void testParseClockManipulationWithNullClock() { }
@org.junit.Test() public  void testParseClockManipulationWithDefaultClock() { }
@org.junit.Test() public  void testParseMalformedJwt() { }
@org.junit.Test() public  void testNoHeaderNoSig() { }
@org.junit.Test() public  void testNoHeaderSig() { }
@org.junit.Test() public  void testBadHeaderSig() { }
}
