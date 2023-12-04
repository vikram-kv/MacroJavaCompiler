import syntaxtree.*;
import visitor.*;

public class A5 {
   public static void main(String [] args) {
      try {
         Node root = new MiniRAParser(System.in).Goal();
         FirstPass f = new FirstPass();
         root.accept(f,null);
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 

