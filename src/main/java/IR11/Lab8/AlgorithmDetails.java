package IR11.Lab8;

public class AlgorithmDetails {
    private long _time;
    private int _substitutions;
    private int _comparisons;

    public AlgorithmDetails()
    {
        _substitutions = 0;
        _comparisons = 0;
    }
    
    public long getTime() {
        return _time;
    }

    public void setTime(long time) {
        _time = time;
    }

    public int getSubstitutions() {
        return _substitutions;
    }

    public void setSubstitutions(int substitutions) {
        _substitutions = substitutions;
    }

    public int getComparisons() {
        return _comparisons;
    }

    public void setComparisons(int comparisons) {
        _comparisons = comparisons;
    }


}
