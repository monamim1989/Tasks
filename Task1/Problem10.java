// Write a Java Program to Find the Most Repeated Word in Text File

package Task1;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;

public class Problem10 {

	public static void main(String[] args)throws Exception {
		
		Map<String,Integer> hm = new HashMap<>(); // HashMap to count words
		BufferedReader br = new BufferedReader(new FileReader("D://input.txt"));
		String line = br.readLine();
		int count = 0;
		
		// If input File is Empty
		if (line == null) {
		    System.out.println("The input Text file is Empty");
		    br.close();
		    return;
		}
		
		// Updating HashMap with word counts
		while (line != null){
			String[] words = line.split("[\\s\\-,.;:!?()]+"); // delimiting by punctuation
			for (int i = 0; i < words.length; i++) {
                if (hm.get(words[i]) == null) {
                    hm.put(words[i], 1);
                } else {
                    int new_value = hm.get(words[i]);
                    new_value++;
                    hm.put(words[i], new_value);
                }
            }
            line = br.readLine();
		}
		
		// Finding maximum counts in HashMap
		for (String key:hm.keySet()) {
			if (hm.get(key) > count) {
				count = hm.get(key);
			}
		}
		
		// Printing the Most Repeated Word in input Text File
		for (String key:hm.keySet()) {
			if (hm.get(key) == count) {
				System.out.println("Most Repeated Word : " + key);
				System.out.println("Count : " + hm.get(key));
				System.out.println();
			}
		}
		br.close();
	}
}
