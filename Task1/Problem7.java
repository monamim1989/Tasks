// Write a Java Program to find the second highest number in an array.

package Task1;

public class Problem7 {

	public static void main(String[] args) {
		
		int[] a = {12,67,412,9,3,500,34,55,120,88};
		int temp;
		
		// Sorting array in ascending order
		for (int i = 0; i < a.length; i++) {
			for (int j = i+1; j < a.length; j++) {
				if (a[i] > a[j]) {
					temp = a[i];
					a[i] = a[j];
					a[j] = temp;
				}
			}
		}
		System.out.println("The second highest number in the array is "+a[a.length-2]);
	}
}
