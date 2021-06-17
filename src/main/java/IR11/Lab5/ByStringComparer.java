package IR11.Lab5;

import java.util.Comparator;

public class ByStringComparer implements Comparator<Model> {
    public int compare(Model a, Model b){
      return a.getStringField().compareTo(b.getStringField());
    }
}
