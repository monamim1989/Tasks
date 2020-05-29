// Write a Java Program to reverse a string without using String inbuilt function reverse.

package Task1;

import java.util.Scanner;

public class Problem1 {

	public static void main(String[] args) {
		
		String reverse="";
		Scanner sc = new Scanner(System.in);
		System.out.println("Please enter input String : ");
		String input = sc.nextLine(); // Input String from keyboard (dynamic input)
		
		if (input==null||input.isEmpty()) {
			reverse="";
			System.out.println("The input String is Empty!!!");
			sc.close();
			return;
		}else {
			for (int i = input.length()-1; i >= 0; i--) {
				reverse += input.charAt(i);
			}
		}
		// Printing the reverse String
		System.out.println("The reverse of input String is : "+reverse);
		sc.close();
	}
}
