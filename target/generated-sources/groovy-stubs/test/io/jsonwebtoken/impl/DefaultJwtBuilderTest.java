package io.jsonwebtoken.impl;

import java.lang.*;
import java.io.*;
import java.net.*;
import java.util.*;
import groovy.lang.*;
import groovy.util.*;

public class DefaultJwtBuilderTest
  extends java.lang.Object  implements
    groovy.lang.GroovyObject {
public  groovy.lang.MetaClass getMetaClass() { return (groovy.lang.MetaClass)null;}
public  void setMetaClass(groovy.lang.MetaClass mc) { }
public  java.lang.Object invokeMethod(java.lang.String method, java.lang.Object arguments) { return null;}
public  java.lang.Object getProperty(java.lang.String property) { return null;}
public  void setProperty(java.lang.String property, java.lang.Object value) { }
@org.junit.Test() public  void testSetHeader() { }
@org.junit.Test() public  void testSetHeaderFromMap() { }
@org.junit.Test() public  void testSetHeaderParams() { }
@org.junit.Test() public  void testSetHeaderParam() { }
@org.junit.Test() public  void testSetClaims() { }
@org.junit.Test() public  void testAddClaims() { }
@org.junit.Test() public  void testAddClaimsWithoutInitializing() { }
@org.junit.Test() public  void testClaim() { }
@org.junit.Test() public  void testExistingClaimsAndSetClaim() { }
@org.junit.Test() public  void testRemoveClaimBySettingNullValue() { }
@org.junit.Test() public  void testCompactWithoutBody() { }
@org.junit.Test() public  void testCompactWithoutPayloadOrClaims() { }
@org.junit.Test() public  void testCompactWithBothPayloadAndClaims() { }
@org.junit.Test() public  void testCompactWithBothKeyAndKeyBytes() { }
@org.junit.Test() public  void testCompactWithJwsHeader() { }
@org.junit.Test() public  void testBase64UrlEncodeError() { }
@org.junit.Test() public  void testCompactCompressionCodecJsonProcessingException() { }
@org.junit.Test() public  void testSignWithBytesWithoutHmac() { }
@org.junit.Test() public  void testSignWithBase64EncodedBytesWithoutHmac() { }
@org.junit.Test() public  void testSetHeaderParamsWithNullMap() { }
@org.junit.Test() public  void testSetHeaderParamsWithEmptyMap() { }
@org.junit.Test() public  void testSetIssuerWithNull() { }
@org.junit.Test() public  void testSetSubjectWithNull() { }
@org.junit.Test() public  void testSetAudienceWithNull() { }
@org.junit.Test() public  void testSetIdWithNull() { }
@org.junit.Test() public  void testClaimNullValue() { }
@org.junit.Test() public  void testSetNullExpirationWithNullClaims() { }
@org.junit.Test() public  void testSetNullNotBeforeWithNullClaims() { }
@org.junit.Test() public  void testSetNullIssuedAtWithNullClaims() { }
}
