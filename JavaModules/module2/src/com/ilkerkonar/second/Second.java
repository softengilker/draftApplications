package com.ilkerkonar.second;

public class Second {
   public static void main(String args[]) {
      System.out.println("Second printed");
   }

   public String getInfo() {
      System.out.println("Second module info: " + Second.class.getModule());
      return "My name is Second";
   }
}
