package Helper;
import java.util.*;

public class UsageDefn {
    public ArrayList<String> uses;
    public ArrayList<String> defns;
    public ArrayList<String> targets;
    public ArrayList<Integer> scrs;
    public boolean jumpFlag;
    public UsageDefn()
    {
        uses = new ArrayList<String>();
        defns = new ArrayList<String>();
        targets = new ArrayList<String>();
        scrs = new ArrayList<Integer>();
        jumpFlag = false;
    }
}
