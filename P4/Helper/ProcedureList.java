package Helper;
import java.util.*;

public class ProcedureList {
    public HashMap<String,ProcData> procedures;
    public ProcedureList()
    {
        procedures = new HashMap<String,ProcData>();
    }

    public void process()
    {
        ProcData p;
        for(String pname : procedures.keySet())
        {
            p = procedures.get(pname);
            p.findRegisterAllocation();
            int max = 0;
            for(Integer i : p.calledProcArgs)
            {
                if(i>max)
                {
                    max = i;
                }
            }
            p.maxNoOfArgsInCall = max;
        }
    }

    public void print()
    {
        ProcData p;
        for(String pname : procedures.keySet())
        {
            p = procedures.get(pname);
            p.printData();
        }
    }
}
