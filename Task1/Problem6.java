// Write a Java Program to find the duplicate characters in a string.

package Task1;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;

public class Problem6 {

	public static void main(String[] args) {
		
		Map<Character, Integer> map = new HashMap<Character, Integer>();
		Scanner sc = new Scanner(System.in);
		System.out.println("Please enter input String : ");
		String input = sc.nextLine(); // Input String from keyboard (dynamic input)
		char[] c = input.toCharArray(); // Converting String into array of characters
		
		// When input String is Empty
		if (input==null||input.isEmpty()) {
			System.out.println("The input String is Empty!!!");
			sc.close();
			return;
		}
		// Updating the HashMap with number of occurrences of characters in the String
		for (Character x : c) {  
            if (map.containsKey(x)) {  
                map.put(x, map.get(x) + 1);  
            } else {  
                map.put(x, 1);  
            }  
        }  
		// Printing duplicate characters
        Set<Character> keys = map.keySet(); 
        System.out.println("The duplicate characters in the input String are :");
        for (Character x : keys) {  
            if (map.get(x) > 1) {  
                System.out.println(x + "  occurs " + map.get(x) + " times");  
            }  
        }  
		sc.close();
	}
}
