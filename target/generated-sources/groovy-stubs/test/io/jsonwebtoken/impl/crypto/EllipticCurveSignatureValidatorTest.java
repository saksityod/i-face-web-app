package io.jsonwebtoken.impl.crypto;

import java.security.*;
import java.lang.*;
import java.io.*;
import java.net.*;
import java.util.*;
import groovy.lang.*;
import groovy.util.*;

public class EllipticCurveSignatureValidatorTest
  extends java.lang.Object  implements
    groovy.lang.GroovyObject {
public  groovy.lang.MetaClass getMetaClass() { return (groovy.lang.MetaClass)null;}
public  void setMetaClass(groovy.lang.MetaClass mc) { }
public  java.lang.Object invokeMethod(java.lang.String method, java.lang.Object arguments) { return null;}
public  java.lang.Object getProperty(java.lang.String property) { return null;}
public  void setProperty(java.lang.String property, java.lang.Object value) { }
@org.junit.Test() public  void testDoVerifyWithInvalidKeyException() { }
@org.junit.Test() public  void ecdsaSignatureComplianceTest() { }
@org.junit.Test() public  void legacySignatureCompatTest() { }
@org.junit.Test() public  void invalidAlgorithmTest() { }
@org.junit.Test() public  void invalidECDSASignatureFormatTest() { }
@org.junit.Test() public  void invalidDERSignatureToJoseFormatTest() { }
@org.junit.Test() public  void edgeCaseSignatureLengthTest() { }
@org.junit.Test() public  void edgeCaseSignatureToConcatLengthTest() { }
@org.junit.Test() public  void edgeCaseSignatureToConcatInvalidSignatureTest() { }
@org.junit.Test() public  void edgeCaseSignatureToConcatInvalidSignatureBranchTest() { }
@org.junit.Test() public  void edgeCaseSignatureToConcatInvalidSignatureBranch2Test() { }
@org.junit.Test() public  void verifySwarmTest() { }
}
