package io.jsonwebtoken;

import java.lang.*;
import java.io.*;
import java.net.*;
import java.util.*;
import groovy.lang.*;
import groovy.util.*;

public class SignatureAlgorithmTest
  extends java.lang.Object  implements
    groovy.lang.GroovyObject {
public  groovy.lang.MetaClass getMetaClass() { return (groovy.lang.MetaClass)null;}
public  void setMetaClass(groovy.lang.MetaClass mc) { }
public  java.lang.Object invokeMethod(java.lang.String method, java.lang.Object arguments) { return null;}
public  java.lang.Object getProperty(java.lang.String property) { return null;}
public  void setProperty(java.lang.String property, java.lang.Object value) { }
@org.junit.Test() public  void testNames() { }
@org.junit.Test(expected=io.jsonwebtoken.SignatureException.class) public  void testUnrecognizedAlgorithmName() { }
@org.junit.Test() public  void testIsHmac() { }
@org.junit.Test() public  void testHmacFamilyName() { }
@org.junit.Test() public  void testIsRsa() { }
@org.junit.Test() public  void testRsaFamilyName() { }
@org.junit.Test() public  void testIsEllipticCurve() { }
@org.junit.Test() public  void testEllipticCurveFamilyName() { }
@org.junit.Test() public  void testIsJdkStandard() { }
}
