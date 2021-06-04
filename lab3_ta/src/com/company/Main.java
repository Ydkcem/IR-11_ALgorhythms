package com.company;

import java.util.Scanner;
import java.util.Arrays;
import static java.lang.System.*;
import static java.util.stream.IntStream.*;

public class Main {
	public static boolean isPrime(final int number) {
		return java.util.stream.IntStream.rangeClosed(2, number / 2).anyMatch(i -> number % i == 0);
	}
	public static double getRandomIntegerBetweenRange(double min, double max) {
		double x = (int) (Math.random() * ((max - min) + 1)) + min;
		return x;
	}
	public static void main(String[] args) {
		Scanner k_var = new Scanner (System.in);
		double kk_var;
		kk_var = k_var.nextDouble();
		int [] massive = new int[30];
		for (int i = 0; i < 30; i++) {
			massive[i] = (int) getRandomIntegerBetweenRange (1, kk_var);
		}
		System.out.println (java.util.Arrays.toString(massive));
		int [] mass_2 = new int [30];
		int indx = 0;
		for (int j = 0; j < 30; j++) {
			if (isPrime(massive[j]) == true) {
				indx++;
			}
		}
		System.out.println("Кількість простих чисел - " + indx);
	}

}
