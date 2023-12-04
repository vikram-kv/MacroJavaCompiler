package SymbolTables;
import java.util.*;

public class ClassSymbolTable 
{
    public String className;
    public String parentClassName;
    public HashMap<String,String> varDecList;
    public HashMap<String,MethodSymbolTable> methodList;
    public ClassSymbolTable()
    {
       className = null;
       parentClassName = null;
       varDecList = new HashMap<String,String>();
       methodList = new HashMap<String,MethodSymbolTable>();
       varDecList.clear();
       methodList.clear();
    }
    public void insertClassVariable(String name,String type)
    {
       if(varDecList.get(name) == null)
       {
          varDecList.put(name,type);
       }
       else
       {
          PrintError.displayMessage("Error : Class Attribute Redeclaration. Failing!");
       }
    }
    public void insertClassMethod(MethodSymbolTable m)
    {
       String id = m.methodName;
       if(methodList.get(id) == null)
       {
          methodList.put(id,m);
       }
       else
       {
         PrintError.displayMessage("Error : Direct Method Overloading. Failing!");
       }
    }
    public void print()
    {
       System.out.println(className);
       System.out.println(parentClassName);
       System.out.println("#####class variables");
       for(String var: varDecList.keySet())
       {
         System.out.println(var + ":" + varDecList.get(var));
       }
       System.out.println("##### class methods");
       for(String met: methodList.keySet())
       {
         methodList.get(met).print();
       }
    }
    public HashSet<String> getPubProtMethods()
    {
       HashSet<String> res = new HashSet<String>();
       for(MethodSymbolTable m : methodList.values())
       {
          if(m.accessType != "private")
          {
             res.add(m.methodName);
          }
       }
       return res;
    }
    public boolean checkLegalType(HashSet<String> allowedTypes)
    {
       if(parentClassName !=null && !allowedTypes.contains(parentClassName))
       {
          return false;
       }
       for(String varType : varDecList.values())
       {
          if(!allowedTypes.contains(varType))
            return false;
       }
       for(MethodSymbolTable m : methodList.values())
       {
          if(!m.checkLegalType(allowedTypes))
            return false;
       }
       return true;
    }
 }