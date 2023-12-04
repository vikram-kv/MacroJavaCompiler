import syntaxtree.*;
import visitor.*;

public class Main {
   public static void main(String [] args) {
      try {
         Node root = new MiniRAParser(System.in).Goal();
         System.out.println("SUCCESSFULLY PARSED");
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 

