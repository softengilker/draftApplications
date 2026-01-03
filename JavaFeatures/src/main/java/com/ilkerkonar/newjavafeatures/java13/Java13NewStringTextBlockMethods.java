package com.ilkerkonar.newjavafeatures.java13;

public class Java13NewStringTextBlockMethods {

  public static void main(String[] args) {
    String textBlock = """
        My name is %s,
          I am %d years old.
        """;
    System.out.println("Formatted : " + textBlock.formatted("ilker", 45));

    System.out.println("StripIndent : " + textBlock.stripIndent());

    String s = "Hello\\nWorld";
    System.out.println(s.translateEscapes());
  }
}
