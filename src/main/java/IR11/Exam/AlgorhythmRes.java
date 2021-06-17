package IR11.Exam;

import java.util.LinkedList;
import java.util.List;
import java.util.Random;

public class AlgorhythmRes {
    public List<Float> args;
    public static List<Float> results;
    
    public AlgorhythmRes(){
        args = new LinkedList<Float>();
        results = new LinkedList<Float>();
    }
    
    public AlgorhythmRes(int length)
    {
        args = new LinkedList<Float>();
        results = new LinkedList<Float>();
        Random random = new Random();
        
        for (int i = 0; i < length; i++)
            args.add((float)random.nextInt(100));
    }
    
    public void setUpArguments(float[] args)
    {
        this.args.clear();
        for (int i = 0; i < args.length; i++)
            this.args.add(args[i]);
    }
    
    public String Function()
    {
        results.clear();
        int length = args.size();

        for (int i = 0; i < length; i++)
            results.add(workingAlgorhythm.Function(args.get(i)));
        
        return results.toString();
    }
    
    public String resArguments()
    {
        return args.toString();
    }
    
}
