import java.util.Scanner;

public class JPPN {

	// method to check number is prime or not
	static boolean isPrime(int num) {
		boolean flag = true;
		for (int i = 2; i <= (num / 2); i++) {
			if (num % i == 0) {
				flag = false;
				break;
			}
		}
		return flag;
	}

	public static void main(String[] args) {
		int n = 541;

		for (int loop = 2; loop <= n; loop++) {
			if (isPrime(loop) == true)
				System.out.print(loop + " ");
		}
	}
}