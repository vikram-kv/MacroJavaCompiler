package Helper;
import java.util.*;

public class ProcData {
    public String fname;
    public int argcount;
    public int insncount;
    public ArrayList<UsageDefn> insnUDList;
    public HashMap<String,Integer> labelInsnMapping;
    public HashSet<String> allVariables;
    public ArrayList<LiveInOut> liveList;
    public HashMap<String,LiveRange> liveIntervals;
    public int noOfSpilledVars;
    public int maxNoOfArgsInCall;
    public HashSet<Integer> calledProcArgs;
    public HashMap<String,RegAllocation> varAllocation;
    public ArrayList<Integer> spilledCallArgs;
    public HashMap<String,Boolean> saveCalleeRegFlags;
    public int saveCalleeCount;

    public ProcData()
    {
        fname = null;
        insnUDList = null;
        allVariables = null;
        liveList = null;
        liveIntervals = null;
        argcount = noOfSpilledVars = maxNoOfArgsInCall = 0;
        calledProcArgs = new HashSet<Integer>();
        varAllocation = new HashMap<String,RegAllocation>();
        labelInsnMapping = null;
        spilledCallArgs = new ArrayList<Integer>();
        saveCalleeRegFlags = new HashMap<String,Boolean>(8);
        for(int i=0;i<8;++i)
        {
            saveCalleeRegFlags.put("s"+i,false);
        }
        saveCalleeCount = 0;
        insncount = 0;
    }

    public void findAllVariables()
    {
        insncount = insnUDList.size();
        HashSet<String> vars = new HashSet<String>();
        for(UsageDefn u : insnUDList)
        {
            vars.addAll(u.uses);
            vars.addAll(u.defns);
        }
        allVariables = vars;
        return ;
    }

    public void findSuccessors()
    {
        int index = 0;
        for(UsageDefn u : insnUDList)
        {
            if(u.targets.size() == 0)
            {
                u.scrs.add(index+1);
            }
            else
            {
                if(u.jumpFlag)
                {
                    String tgt = u.targets.get(0);
                    u.scrs.add(labelInsnMapping.get(tgt));
                }
                else
                {
                    String tgt = u.targets.get(0);
                    u.scrs.add(labelInsnMapping.get(tgt));
                    u.scrs.add(index+1);
                }
            }
            ++index;
        }
        UsageDefn lud = insnUDList.get(insnUDList.size()-1);
        lud.scrs.clear();
    }

    public void livenessAnalysis()
    {
        findSuccessors();

        ArrayList<LiveInOut> livelist = new ArrayList<LiveInOut>();
        for(int i = 0;i<insncount;++i)
        {
            livelist.add(new LiveInOut());
        }

        boolean stop = false;
        LiveInOut curSet;
        UsageDefn curUsageDefn;
        HashSet<Integer> curScrs;
        HashSet<String> oldInSet;
        HashSet<String> oldOutSet;
        HashSet<String> newInSet;
        HashSet<String> newOutSet;
        HashSet<String> diffSet;
        while(!stop)
        {
            stop = true;

            for(int i = insncount - 1;i>=0;--i)
            {
                curSet = livelist.get(i);
                curUsageDefn = insnUDList.get(i);

                //find old sets
                oldInSet = new HashSet<String>(curSet.inSet);
                oldOutSet = new HashSet<String>(curSet.outSet);

                //compute new out

                curScrs = new HashSet<Integer>(curUsageDefn.scrs);
                newOutSet = new HashSet<String>(oldOutSet);
                for(Integer s : curScrs)
                {
                    newOutSet.addAll(livelist.get(s).inSet);
                }
                newOutSet.addAll(curUsageDefn.defns);
                livelist.get(i).outSet = newOutSet;

                //compute new in

                newInSet = new HashSet<String>(oldInSet);
                newInSet.addAll(curUsageDefn.uses);
                diffSet = new HashSet<String>(newOutSet);
                diffSet.removeAll(curUsageDefn.defns);
                newInSet.addAll(diffSet);
                livelist.get(i).inSet = newInSet;

                if((!newInSet.equals(oldInSet)) || !(newOutSet.equals(oldOutSet)))
                {
                    stop = false;
                }
            }
        }
        this.liveList = livelist;
    }
    
    public void findLiveRanges()
    {
        findAllVariables();
        livenessAnalysis();
        int start, end;
        LiveRange range;
        liveIntervals = new HashMap<String,LiveRange>();
        for(String var : allVariables)
        {
            end = -1;
            for(int i = insncount - 1;i>=0;--i)
            {
                if(liveList.get(i).inSet.contains(var))
                {
                    end = 2*i;
                    break;
                }
                if(liveList.get(i).outSet.contains(var))
                {
                    end = 2*i+1;
                    break;
                }
            }
            start = -1;
            for(int i=0;i<insncount;++i)
            {
                if(liveList.get(i).inSet.contains(var))
                {
                    start = 2*i;
                    break;
                }
                if(liveList.get(i).outSet.contains(var))
                {
                    start = 2*i+1;
                    break;
                }
            }
            range = new LiveRange();
            range.vname = var;
            range.start = start;
            range.end = end;
            liveIntervals.put(var,range);
        }
    }

    public class StartComparator implements Comparator<LiveRange>
    {
        public int compare(LiveRange l, LiveRange r)
        {
            if(l.start == r.start)
            {
                return (l.end - r.end);
            }
            return l.start - r.start;
        }
    }

    public class EndComparator implements Comparator<LiveRange>
    {
        public int compare(LiveRange l,LiveRange r)
        {
            if(l.end == r.end)
            {
                return (l.start-r.start);
            }
            return (l.end-r.end);
        }
    }

    public void findRegisterAllocation()
    {
        findLiveRanges();
        ArrayList<LiveRange> active = new ArrayList<LiveRange>();
        ArrayList<LiveRange> intervals = new ArrayList<LiveRange>(liveIntervals.values());
        RegAllocation ra;
        int reg_count = 18;
        Stack<String> freeRegPool = new Stack<String>();
        Stack<String> spillStack = new Stack<String>();
        for(int i = 0;i <= 7;++i)
        {
            freeRegPool.push("s"+i);
        }
        for(int i = 0;i <= 9;++i)
        {
            freeRegPool.push("t"+i);
        }
        Collections.sort(intervals, new StartComparator());

        for(LiveRange l : intervals)
        {
            //expire old intervals
            while(true)
            {
                if(active.isEmpty() || active.get(0).end >= l.start)
                {
                    break;
                }
                freeRegPool.push(active.get(0).reg);
                active.remove(0);
            }

            if(active.size() == reg_count)
            {
                //spill at interval
                LiveRange lastinterval = active.get(active.size()-1);
                if(lastinterval.end > l.end)
                {
                    String rname = lastinterval.reg;
                    lastinterval.reg = null;
                    varAllocation.remove(lastinterval.vname);
                    spillStack.push(lastinterval.vname);
                    active.remove(active.size()-1);

                    l.reg = rname;
                    active.add(l);

                    ra = new RegAllocation();
                    ra.reg = rname;
                    ra.vname = l.vname;
                    ra.spillLoc = null;
                    varAllocation.put(ra.vname,ra);

                    Collections.sort(active,new EndComparator());
                }
                else
                {
                    spillStack.push(l.vname);
                }
            }
            else
            {
                String rname = freeRegPool.pop();
                l.reg = rname;
                active.add(l);

                ra = new RegAllocation();
                ra.reg = rname;
                ra.vname = l.vname;
                ra.spillLoc = -1;
                varAllocation.put(ra.vname,ra);

                if(rname.contains("s"))
                {
                    saveCalleeRegFlags.put(rname,true);
                }
                Collections.sort(active,new EndComparator());

            }
        }
        
        for(int i=4;i<argcount;++i)
        {
            String v = "TEMP "+i;
            int pos = spillStack.indexOf(v); 
            if(pos != -1)
            {
                spillStack.remove(pos);
                spilledCallArgs.add(i);
            }
        }

        int spillLoc = spillStack.size() - 1;
        for(String vname : spillStack)
        {
            ra = new RegAllocation();
            ra.vname = vname;
            ra.reg = null;
            ra.spillLoc = spillLoc;
            varAllocation.put(ra.vname,ra);
            --spillLoc;;
        }
        noOfSpilledVars = spillStack.size();
        
        for(Integer j : spilledCallArgs)
        {
            ra = new RegAllocation();
            ra.vname = "TEMP "+j;
            ra.reg = null;
            int extargs = argcount - 4;
            ra.spillLoc = -8 - extargs + j - 4;
            varAllocation.put(ra.vname, ra);
        }

        saveCalleeCount = 0;
        for(Boolean b : saveCalleeRegFlags.values())
        {
            if(b)
            {
                ++saveCalleeCount;
            }
        }
    }

    public void printData()
    {
        System.out.println("NAME == "+fname);
        System.out.println("ARG COUNT == "+argcount);
        System.out.println("INSN COUNT == "+insncount);
        System.out.println("Called procs == "+calledProcArgs.toString()+"%%");
        System.out.println("MaxCallArgs == "+maxNoOfArgsInCall);
        System.out.println("spilled args == "+spilledCallArgs.toString());
        System.out.println("Usage Definitions\n");
        for(int i=0;i<insnUDList.size();++i)
        {
            System.out.println(i+" ## DEFNS: "+ insnUDList.get(i).defns.toString()+ " USES:"+insnUDList.get(i).uses.toString() + " JUMPs: "+insnUDList.get(i).targets.toString());
        }
        System.out.println("\n\n");
        System.out.println("Label Insn Mappings: \n\n");
        for(String lbl : labelInsnMapping.keySet())
        {
            System.out.println(lbl+" --> "+labelInsnMapping.get(lbl).toString());
        }
        for(String v : varAllocation.keySet())
        {
            System.out.println("VAR : "+v);
            System.out.println("LIVE: "+liveIntervals.get(v).start+" "+liveIntervals.get(v).end);
            System.out.println( "ALLOC : "+(varAllocation.get(v)).reg);
        }
    }
}
