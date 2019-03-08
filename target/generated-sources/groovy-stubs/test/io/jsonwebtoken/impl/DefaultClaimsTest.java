package io.jsonwebtoken.impl;

import java.lang.*;
import java.io.*;
import java.net.*;
import java.util.*;
import groovy.lang.*;
import groovy.util.*;

public class DefaultClaimsTest
  extends java.lang.Object  implements
    groovy.lang.GroovyObject {
public  groovy.lang.MetaClass getMetaClass() { return (groovy.lang.MetaClass)null;}
public  void setMetaClass(groovy.lang.MetaClass mc) { }
public  java.lang.Object invokeMethod(java.lang.String method, java.lang.Object arguments) { return null;}
public  java.lang.Object getProperty(java.lang.String property) { return null;}
public  void setProperty(java.lang.String property, java.lang.Object value) { }
public  io.jsonwebtoken.Claims getClaims() { return (io.jsonwebtoken.Claims)null;}
public  void setClaims(io.jsonwebtoken.Claims value) { }
@org.junit.Before() public  void setup() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_Null_Success() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_Exception() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_Integer_Success() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_Long_Success() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_LongWithInteger_Success() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_ShortWithInteger_Success() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_ShortWithBigInteger_Exception() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_ShortWithSmallInteger_Exception() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_ByteWithInteger_Success() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_ByteWithBigInteger_Exception() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_ByteWithSmallInteger_Exception() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_Date_Success() { }
@org.junit.Test() public  void testGetClaimWithRequiredType_DateWithLong_Success() { }
@org.junit.Test() public  void testGetClaimExpiration_Success() { }
@org.junit.Test() public  void testGetClaimIssuedAt_Success() { }
@org.junit.Test() public  void testGetClaimNotBefore_Success() { }
}
