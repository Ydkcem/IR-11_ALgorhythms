/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package IR11.Lab3;

import java.util.Arrays;
import java.util.Random;

/**
 *
 * @author Dragon
 */
public class Calculator {
    private int arrayLength;
    private int lowerBorder;
    private int upperBorder;
    private int numberToSearch;
    private int[] array;
    
    public Calculator()
    {
        arrayLength = 100;
        lowerBorder = 0;
        upperBorder = 9;
        numberToSearch = 0;
        array = new int[arrayLength];
    }
    
    public Calculator(int[] arr)
    {
        array = arr;
    }
    
    public void InitArray()
    {
        Random rd = new Random();
        for (int i = 0; i < array.length; i++)
           array[i] = rd.nextInt(upperBorder + 1);
    }
    
    public int FindSequenceLength()
    {
        int lenMax = 0;
        int currentLen = 0;
        for (int i = 0; i < array.length; i++) {
            if(array[i] == numberToSearch)
                currentLen++;
            else
            {
                if(lenMax < currentLen)
                    lenMax = currentLen;
                currentLen = 0;
            }
        }
        return lenMax;
    }
    
    public String DisplayArray()
    {
        return Arrays.toString(array);
    }
}
