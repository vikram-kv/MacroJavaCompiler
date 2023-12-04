package Helper;
//import java.util.*;

public class RegAllocation {
    public String vname;
    public String reg;
    public Integer spillLoc;
    public RegAllocation()
    {
        vname = reg = null;
        spillLoc = -1;
    }
    public RegAllocation(RegAllocation x)
    {
        this.vname = x.vname;
        this.reg = x.reg;
        this.spillLoc = x.spillLoc;
    }
}
