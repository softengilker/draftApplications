package com.ilkerkonar.third;

import com.ilkerkonar.first.*;
import com.ilkerkonar.second.*;

public class Third {
   public static void main(String args[]) {
      System.out.println("Third printed");     

      First first = new First();
      System.out.println(first.getInfo());
      
      Second secondInstance = first.getSecondInstance();
      System.out.println(secondInstance.getInfo());
   }
}
