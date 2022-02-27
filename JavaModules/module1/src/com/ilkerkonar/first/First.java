package com.ilkerkonar.first;

import com.ilkerkonar.second.*;

public class First {
   public static void main(String args[]) {
      System.out.println("First printed");

      System.out.println("First module info: " + First.class.getModule());

      Second second = new Second();
      System.out.println(second.getInfo());
   }
   
   public String getInfo() {
	return "I am the first module.";
   }
   
   public Second getSecondInstance() {
   	return new Second();
   }
}
