package IR11.Lab5;

import java.util.Comparator;

public class ByShortComparer implements Comparator<Model> {
    public int compare(Model a, Model b){
      return a.getShortField().compareTo(b.getShortField());
    }
}
