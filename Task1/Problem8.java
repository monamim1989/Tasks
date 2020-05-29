// Write a Java Program to remove all white spaces from a string without using replace.

package Task1;

import java.util.Scanner;

public class Problem8 {

	public static void main(String[] args) {
		
		String output = "";
		Scanner sc = new Scanner(System.in);
		System.out.println("Please enter input String : ");
		String input = sc.nextLine(); // Input String from keyboard (dynamic input)

		if (input==null||input.isEmpty()) {
			System.out.println("The input String is Empty!!!");
			sc.close();
			return;
		}else {
			for (int i = 0; i < input.length(); i++) {
		        if (input.charAt(i) != ' ') {
		            output += input.charAt(i);
		        }
		    }
		}
		System.out.println("The input String after removing all white spaces is :");
		System.out.println(output);
		sc.close();
	}
}
