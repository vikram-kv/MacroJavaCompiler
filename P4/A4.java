import syntaxtree.*;
import visitor.*;
import Helper.*;

public class A4 {
   public static void main(String [] args) {
      try {
         Node root = new microIRParser(System.in).Goal();
         ProcedureList plist = new ProcedureList();
         FirstPass f = new FirstPass(plist);
         root.accept(f,null);
         plist.process();
         //plist.print();
         SecondPass s = new SecondPass(plist);
         root.accept(s,null);
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 

