// Write a Java Program to iterate ArrayList using for-loop, while-loop, and advance for-loop.

package Task1;

import java.util.ArrayList;
import java.util.List;

public class Problem5 {

	public static void main(String[] args) {
		
		List<String> l = new ArrayList<>();
		// Adding elements to ArrayList
		l.add("India");
		l.add("USA");
		l.add("Korea");
		l.add("UK");
		l.add("China");
		
		// For loop
		System.out.println("Iterate ArrayList using For loop :");
		for (int i = 0; i < l.size(); i++) {
			System.out.println(l.get(i));
		}
		
		// While loop
		System.out.println("Iterate ArrayList using While loop :");
		int j = 0;
		while(j < l.size()) {
			System.out.println(l.get(j));
			j++;
		}
		
		// Advance For loop
		System.out.println("Iterate ArrayList using advance For loop :");
		for(String x:l) {
			System.out.println(x);
		}

	}

}
