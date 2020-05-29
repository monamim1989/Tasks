// How to find Missing Integers in Given Array of Numbers with Duplicates in JAVA.

package Task1;

import java.util.Arrays;

public class Problem9 {

	public static void main(String[] args) {
		
		int num[]={9,6,6,4,5,7,0,1,3,3,12};
		// Sorting input array
        Arrays.sort(num);
        int i=1;

        System.out.println( "Missing Integers in Given Array are :");
        while ( i < num.length ) 
        {
            if ( (num[i] - num[i-1] != 0)&&(num[i] - num[i-1] != 1) ) {
            	for (int j = 1; j < (num[i] - num[i-1]); j++) {
            		System.out.println(num[i-1] + j);
            	}
            }
            i++;
        }
	}
}
