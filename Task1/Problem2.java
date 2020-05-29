// Write a Java Program to count the number of words in a string using HashMap.

package Task1;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Problem2 {

	public static void main(String[] args) {
		
		Map<String,Integer> hm = new HashMap<>(); // HashMap to count words
		Scanner sc = new Scanner(System.in);
		System.out.println("Please enter input String : ");
		String input = sc.nextLine(); // Input String from keyboard (dynamic input)
		
		if ((input != null)&&(!input.isEmpty())) {
            String[] words = input.split(" ");// Words in the String
            for (int i = 0; i < words.length; i++) {
                if (hm.get(words[i]) == null) {
                    hm.put(words[i], 1);
                } else {
                    int new_value = hm.get(words[i]);
                    new_value++;
                    hm.put(words[i], new_value);
                }
            }
        }else {
        	System.out.println("The input String is Empty!!!"); // if input String is Empty
        }
		
		// Printing word counts in input String
		for (String key:hm.keySet()) {
			System.out.println("Word: " + key + " --> " + "Count: " + hm.get(key));
		}
		
		sc.close();
	}
}
