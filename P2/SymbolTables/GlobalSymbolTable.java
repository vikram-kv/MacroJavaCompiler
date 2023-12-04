package SymbolTables;
import java.util.*;

public class GlobalSymbolTable {
    public HashMap<String,ClassSymbolTable> classList;
    public HashSet<String> allowedTypes;
    public GlobalSymbolTable()
    {
       classList = new HashMap<String,ClassSymbolTable>();
       classList.clear();
    }
    public void insertClass(ClassSymbolTable table)
    {
       String s = table.className;
       if(classList.get(s) == null)
       {
          classList.put(s, table);
       }
       else
       {
         PrintError.displayMessage("Error : Class Redeclaration. Failing!");
       }
    }
    public void print()
    {
       for(String key : classList.keySet())
       {
         classList.get(key).print();
       }
    }
    public void constructAllowedTypes()
    {
       allowedTypes = new HashSet<String>();
       allowedTypes.add("int");
       allowedTypes.add("int[]");
       allowedTypes.add("boolean");
       allowedTypes.addAll(classList.keySet());
    }
    public void checkLegalType()
    {
       constructAllowedTypes();
       boolean check = true;
       for(ClassSymbolTable c : classList.values())
       {
          if(!c.checkLegalType(allowedTypes))
          {
             check = false;
             break;
          }
       }
       if(!check)
       {
          PrintError.displayMessage("Error : Illegal Types. Failing!");
       }
    }
    public boolean cycleDFS(String name,HashMap<String,Boolean> visited)
    {
       String par = classList.get(name).parentClassName;
       if(par == null)
       {
          return false;
       }
       if(visited.get(par) == true)
       {
          return true;
       }
       else
       {
          visited.put(name,true);
          return cycleDFS(par, visited);
       }
    }
    public void noCyclesCheck()
    {
       HashSet<String> classSet = new HashSet<String> (classList.keySet());
       HashMap<String,Boolean> visited = new HashMap<String,Boolean>();
       for(String name : classSet)
       {
          for(String var : classSet)
          {
             visited.put(var,false);
          }
          if(!visited.get(name) && cycleDFS(name, visited))
          {
             PrintError.displayMessage("Error : Cyclic Inheritance Detected. Failing.");
          }
       }
    }
    public boolean subTypeOf(String desc,String ancr)
   {
      if(desc == ancr)
         return true;
      else if(classList.get(desc) == null || classList.get(ancr) == null)
         return false;
      String par = desc;
      while(par!=null)
      {
         if(par == ancr)
            return true;
         par = classList.get(par).parentClassName;
      }
      return false;
   }
    public String leastCommonAncestor(String type1,String type2)
    {
       if(type1 == type2)
       {
          return type1;
       }
       else if(classList.get(type1) == null || classList.get(type2) == null)
       {
          return null;
       }
       else 
       {
          ArrayList<String> p1,p2;
          p1 = new ArrayList<String>();
          String par = type1;
          while(par!=null)
          {
             p1.add(par);
             par = classList.get(par).parentClassName;
          }
          p2 = new ArrayList<String>();
          par = type2;
          while(par!=null)
          {
             p2.add(par);
             par = classList.get(par).parentClassName;
          }
          for(String v : p1)
          {
             if(p2.contains(v))
             {
                return v;
             }
          }
          return null;
       }
    }

    public void noOverloadingCheck()
    {
      for(String cname : classList.keySet())
      {
         if(!check(cname))
         {
            PrintError.displayMessage("Error : Overloading Check. Failing!");
         }
      }
    }
    public boolean check(String cname)
    {
       HashSet<String> cMethods = new HashSet<String>((classList.get(cname)).methodList.keySet());
       String par = classList.get(cname).parentClassName;
       HashSet<String> parPubProtMethods;
       while(par!=null)
       {
         parPubProtMethods = (classList.get(par)).getPubProtMethods();
         parPubProtMethods.retainAll(cMethods);
         if(!parPubProtMethods.isEmpty())
         {
            for(String s : parPubProtMethods)
            {
               if(!areEquivalent(classList.get(par).methodList.get(s),classList.get(cname).methodList.get(s)))
               {
                  return false;
               }
            }
         }
         par = classList.get(par).parentClassName;
       }
       return true;
    }
    public boolean areEquivalent(MethodSymbolTable m1,MethodSymbolTable m2)
    {
       if(m1.methodName != m2.methodName || m1.returnType != m2.returnType || m1.accessType != m2.accessType)
       {
          return false;
       }
       else
       {  if(m1.paramCount != m2.paramCount)
          {
             return false;
          }
          for(int i=1;i<=m1.paramCount;++i)
          {
             if(m1.paramTypes.get(i) != m2.paramTypes.get(i))
             {
                return false;
             }
          }
          return true;
       }
    }
    public MethodSymbolTable methodHelper(String curClass,String cName,String mName)
   {
      MethodSymbolTable m = null;
      String par = cName;
      while(par!=null)
      {
         if((classList.get(par)).methodList.get(mName)!=null)
         {
            m = (classList.get(par)).methodList.get(mName);
            break;
         }
         par = classList.get(par).parentClassName;
      }
      if(m == null)
      {
         return m;
      }
      else if(m.accessType == "public")
      {
         return m;
      }
      else if(m.accessType == "protected" && subTypeOf(curClass, par))
      {
         return m;
      }
      else if(m.accessType == "private" && par == curClass && par == cName)
      {
         return m;
      }
      return null;
   }
    public String findType(ClassSymbolTable c, MethodSymbolTable m, String id)
   {
      if(m!=null)
      {
         if(m.varDecList.get(id)!=null)
         {
            return m.varDecList.get(id);
         }
         else if(m.paramList.get(id)!=null)
         {
            return m.paramList.get(id);
         }
         else
         {
            String cur = c.className;
            while(cur!=null)
            {
               if((classList.get(cur)).varDecList.get(id)!=null)
               {
                  return (classList.get(cur)).varDecList.get(id);                   // cur_id
               }
               cur = classList.get(cur).parentClassName;
            }
            PrintError.displayMessage("Error : Undeclared Variable. Failing!");
            return null;    
         }
      }
      return null;
   }
 }
