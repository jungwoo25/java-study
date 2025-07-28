package 예외처리;

import java.util.Scanner;

public class 예외처리_test문제 {
	public static void main(String[] args) {
		/*
	 	사용자에게 숫자를 입력 받아서 계속 더해나가는 프로그램을 만드세요.

		0을 입력하면 입력을 종료하고, 지금까지의 총합을 출력하세요.
		
		숫자가 아닌 문자를 입력하면
		"숫자만 입력하세요!"라는 메시지를 출력하고 다시 입력받으세요.
		
		try-catch를 사용하여 예외 처리를 꼭 포함하세요.
		 */
		Scanner scan = new Scanner(System.in);
		int total = 0;
		
		while(true) {
			try {
				System.out.print("숫자를 입력하세요 (0 입력시 종료):");
				int num = scan.nextInt();
				
				if(num == 0) {
					break;
				}
				total += num;
				
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("숫자만 입력하세요!");
				scan.next();
			}
		}
		System.out.println("총합 : " + total);
		scan.close();
	}
}
