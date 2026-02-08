package com.ilkerkonar.newjavafeatures.java14;

public class Java14PatternMatchingForInstanceOf {

  public static void main(String[] args) {
    Object text = "asd";

    if (text instanceof String str) {
      System.out.println("This is a string!");
    }
  }
}
