// Write a Java Program to iterate HashMap using While and advance for loop.

package Task1;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class Problem3 {

	public static void main(String[] args) {
		
		Map<String,Integer> m1 = new HashMap<>();
		// Adding elements to HashMap
		m1.put("Red", 300);
		m1.put("Green", 185);
		m1.put("Blue", 250);
		m1.put("Black", 200);
		m1.put("Magenta", 127);
		m1.put("White", 200);
		
		// While loop
		System.out.println("Iterate HashMap using While Loop:");
        Iterator<Map.Entry<String,Integer>> iterator = m1.entrySet().iterator();
        while (iterator.hasNext()) {
             Map.Entry<String,Integer> e = iterator.next();
             System.out.println("Key: "+ e.getKey() + "; Value: " + e.getValue());
        } 
        
        // Advance for loop
        System.out.println("Iterate HashMap using advance For Loop:");
		for(Map.Entry<String,Integer> e:m1.entrySet()) {
        	System.out.println("Key: "+ e.getKey() + "; Value: " + e.getValue());
        }
	}
}
