package com.ilkerkonar.newjavafeatures.java13;

public class Java13SwitchExpressions {
  public static void main(String[] args) {
    int param = 5;
    int result = switch (param) {
      case 5 -> {
        System.out.println("5 selected");
        yield 5;
      }
      case 4 -> {
        System.out.println("4 selected");
        yield 4;
      }
      default -> 0;
    };

    System.out.println("Result : " + result);
  }
}
