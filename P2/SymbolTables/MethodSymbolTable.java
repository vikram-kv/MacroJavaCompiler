package SymbolTables;
import java.util.*;

public class MethodSymbolTable {
    public String methodName;
    public String accessType;
    public int paramCount;
    public HashMap<String,String> paramList;
    public HashMap<Integer,String> paramTypes;
    public HashMap<String,String> varDecList;
    public String returnType;
    public MethodSymbolTable()
    {
       methodName = null;
       accessType = null;
       paramCount = 0;
       paramList = new HashMap<String,String>();
       varDecList = new HashMap<String,String>();
       paramTypes = new HashMap<Integer,String>();
       paramTypes.clear();
       paramList.clear();
       varDecList.clear();
       returnType = null;
    }
    public void insertParameter(String name,String type,int pos)
    {
        if(paramList.get(name) == null)
        {
            paramList.put(name,type);
            paramTypes.put(pos,type);
        }
        else
        {
            PrintError.displayMessage("Error : Method Parameter Redeclaration. Failing!");
        }
    }
    public void insertVariable(String name,String type)
    {
        if(varDecList.get(name) == null)
        {
            varDecList.put(name,type);
        }
        else
        {
            PrintError.displayMessage("Error : Method Variable Redeclaration. Failing!");
        }
    }
    public boolean checkLegalType(HashSet<String> allowedTypes)
    {
        if(!allowedTypes.contains(returnType))
            return false;
        for(String varType : varDecList.values())
        {
            if(!allowedTypes.contains(varType))
                return false;
        }
        for(String parType : paramList.values())
        {
            if(!allowedTypes.contains(parType))
                return false;
        }
        return true;
    }
    public void print()
    {
        System.out.println("###### new method");
        System.out.println(methodName);
        System.out.println(accessType);
        System.out.println(paramCount);
        System.out.println(returnType);
        System.out.println("###### method param with types");
        for(String p: paramList.keySet())
        {
           System.out.println(p + ":" + paramList.get(p));
        }
        System.out.println("###### method param numbers with types");
        for(int i = 0;i<paramCount;++i)
        {
           System.out.println((i+1) + paramTypes.get((Integer)(i+1)));
        }
        System.out.println("###### method variables");
        for(String p:  varDecList.keySet())
        {
            System.out.println(p + ":" + varDecList.get(p));
        }
    }
}