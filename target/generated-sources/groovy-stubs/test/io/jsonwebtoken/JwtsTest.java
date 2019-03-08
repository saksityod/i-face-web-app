package io.jsonwebtoken;

import java.lang.*;
import java.io.*;
import java.net.*;
import java.util.*;
import groovy.lang.*;
import groovy.util.*;

public class JwtsTest
  extends java.lang.Object  implements
    groovy.lang.GroovyObject {
public static  void testRsa(io.jsonwebtoken.SignatureAlgorithm alg, int keySize) { }
public static  void testRsa(io.jsonwebtoken.SignatureAlgorithm alg) { }
public static  void testEC(io.jsonwebtoken.SignatureAlgorithm alg) { }
public  groovy.lang.MetaClass getMetaClass() { return (groovy.lang.MetaClass)null;}
public  void setMetaClass(groovy.lang.MetaClass mc) { }
public  java.lang.Object invokeMethod(java.lang.String method, java.lang.Object arguments) { return null;}
public  java.lang.Object getProperty(java.lang.String property) { return null;}
public  void setProperty(java.lang.String property, java.lang.Object value) { }
@org.junit.Test() public  void testSubclass() { }
@org.junit.Test() public  void testHeaderWithNoArgs() { }
@org.junit.Test() public  void testHeaderWithMapArg() { }
@org.junit.Test() public  void testJwsHeaderWithNoArgs() { }
@org.junit.Test() public  void testJwsHeaderWithMapArg() { }
@org.junit.Test() public  void testClaims() { }
@org.junit.Test() public  void testClaimsWithMapArg() { }
@org.junit.Test() public  void testPlaintextJwtString() { }
@org.junit.Test() public  void testParsePlaintextToken() { }
@org.junit.Test(expected=java.lang.IllegalArgumentException.class) public  void testParseNull() { }
@org.junit.Test(expected=java.lang.IllegalArgumentException.class) public  void testParseEmptyString() { }
@org.junit.Test(expected=java.lang.IllegalArgumentException.class) public  void testParseWhitespaceString() { }
@org.junit.Test() public  void testParseWithNoPeriods() { }
@org.junit.Test() public  void testParseWithOnePeriodOnly() { }
@org.junit.Test() public  void testParseWithTwoPeriodsOnly() { }
@org.junit.Test() public  void testParseWithHeaderOnly() { }
@org.junit.Test() public  void testParseWithSignatureOnly() { }
@org.junit.Test() public  void testParseWithHeaderAndSignatureOnly() { }
@org.junit.Test() public  void testWithInvalidCompressionAlgorithm() { }
@org.junit.Test() public  void testConvenienceIssuer() { }
@org.junit.Test() public  void testConvenienceSubject() { }
@org.junit.Test() public  void testConvenienceAudience() { }
@org.junit.Test() public  void testConvenienceExpiration() { }
@org.junit.Test() public  void testConvenienceNotBefore() { }
@org.junit.Test() public  void testConvenienceIssuedAt() { }
@org.junit.Test() public  void testConvenienceId() { }
@org.junit.Test() public  void testUncompressedJwt() { }
@org.junit.Test() public  void testCompressedJwtWithDeflate() { }
@org.junit.Test() public  void testCompressedJwtWithGZIP() { }
@org.junit.Test() public  void testCompressedWithCustomResolver() { }
@org.junit.Test(expected=io.jsonwebtoken.CompressionException.class) public  void testCompressedJwtWithUnrecognizedHeader() { }
@org.junit.Test() public  void testCompressStringPayloadWithDeflate() { }
@org.junit.Test() public  void testHS256() { }
@org.junit.Test() public  void testHS384() { }
@org.junit.Test() public  void testHS512() { }
@org.junit.Test() public  void testRS256() { }
@org.junit.Test() public  void testRS384() { }
@org.junit.Test() public  void testRS512() { }
@org.junit.Test() public  void testPS256() { }
@org.junit.Test() public  void testPS384() { }
@org.junit.Test() public  void testPS512() { }
@org.junit.Test() public  void testRSA256WithPrivateKeyValidation() { }
@org.junit.Test() public  void testRSA384WithPrivateKeyValidation() { }
@org.junit.Test() public  void testRSA512WithPrivateKeyValidation() { }
@org.junit.Test() public  void testES256() { }
@org.junit.Test() public  void testES384() { }
@org.junit.Test() public  void testES512() { }
@org.junit.Test() public  void testES256WithPrivateKeyValidation() { }
@org.junit.Test() public  void testParseClaimsJwsWithUnsignedJwt() { }
@org.junit.Test() public  void testForgedTokenWithSwappedHeaderUsingNoneAlgorithm() { }
@org.junit.Test() public  void testParseForgedRsaPublicKeyAsHmacTokenVerifiedWithTheRsaPrivateKey() { }
@org.junit.Test() public  void testParseForgedRsaPublicKeyAsHmacTokenVerifiedWithTheRsaPublicKey() { }
@org.junit.Test() public  void testParseForgedEllipticCurvePublicKeyAsHmacToken() { }
public static  void testRsa(io.jsonwebtoken.SignatureAlgorithm alg, int keySize, boolean verifyWithPrivateKey) { }
public static  void testHmac(io.jsonwebtoken.SignatureAlgorithm alg) { }
public static  void testEC(io.jsonwebtoken.SignatureAlgorithm alg, boolean verifyWithPrivateKey) { }
}
