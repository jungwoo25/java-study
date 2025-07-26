package 클래스1_문제;

import java.util.Arrays;

class Academy {
	int[] hakbun = {1001, 1002, 1003, 1004, 1005};
	int[] score  = {  92,   38,   87,  100,   11};
}

public class 클래스1_문제02_기본예제2 {
	public static void main(String[] args) {
		
		// 메모리 그림그리기
		int arr[] = new int[3];
		
		Academy ac = new Academy();
		
		arr = ac.score;
		arr[1] = 100;
		
		System.out.println(Arrays.toString(ac.score));
		
		Academy ac2 = ac;
		
		ac2.score[2] = 100;
		
		System.out.println(Arrays.toString(ac.score));
		
	}
}