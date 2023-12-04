package SymbolTables;

public class Attribute 
{
    public String msg;
    public int tempAddr;
    public String id;
    public Attribute()
    {
        msg = "";
        id = "";
        tempAddr = -1;
    }
    public Attribute(Attribute a)
    {
        this.msg = a.msg;
        this.tempAddr = a.tempAddr;
        this.id = a.id;
    }
}
