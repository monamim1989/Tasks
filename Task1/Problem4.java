// Write a Java Program to find whether a string or number is palindrome or not.

package Task1;

import java.util.Scanner;

public class Problem4 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("Please enter input String : ");
		String input = sc.nextLine(); // Input String from keyboard (dynamic input)
		int left = 0, right = input.length() - 1; 
		
		// When input String is Empty
		if (input==null||input.isEmpty()) { 
			System.out.println("The input String/Number is Empty!!!");
			sc.close();
			return;
		}
		// Checking if String is a Palindrome
		while (left < right) {
			if (input.charAt(left) != input.charAt(right)) {
				System.out.println("The input String/Number is not a Palindrome");
				sc.close();
				return;
			}
			left++;
			right--;
		}
		System.out.println("The input String/Number is a Palindrome");
		sc.close();
	}
}
