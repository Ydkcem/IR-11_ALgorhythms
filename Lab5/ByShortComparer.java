/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package IR11.Lab5;

import java.util.Comparator;

/**
 *
 * @author Admin
 */
public class ByShortComparer implements Comparator<Model> {
    public int compare(Model a, Model b){
      return a.getShortField().compareTo(b.getShortField());
    }
}
