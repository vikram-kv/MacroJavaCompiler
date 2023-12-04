import syntaxtree.*;
import visitor.*;
import SymbolTables.*;

public class A2 {
   public static void main(String [] args) {
      try {
         Node root = new MiniJavaParser(System.in).Goal();
         GlobalSymbolTable g = new GlobalSymbolTable();
         FirstPass v = new FirstPass();
         root.accept(v,g);
         g.checkLegalType(); 
         g.noCyclesCheck();
         g.noOverloadingCheck();  
         SecondPass w = new SecondPass();
         root.accept(w,g);
         System.out.println("Program type checked successfully");
      }
      catch (ParseException e) {
            PrintError.displayMessage(e.toString());
      }
   }
}
